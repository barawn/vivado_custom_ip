`timescale 1ns / 1ps
//% Bridge to allow a serial interface to interface to the AXI Stream-to-Memory Mapped IP.
//% 
//% The axi-mm2s IP uses 5 multiplexed streams (TID0-4) to map the AXI channels.
//% Since we only have 1, the first byte received is the stream identifier.
//% To synchronize communication, the other serial device should send enough 0xFF characters
//% to push the system back into reset (this is max(ADDR_BYTES+5,DATA_BYTES+2+(DATA_BYTES==8)).
//% Then wait enough time for the data to be received, and empty the serial buffer.
//% Next send 0x5 (SYNC stream), and you should receive back 0x6 (SYNC_ACK stream).
//% After this you're synchronized and can begin communication.
//% After the TID byte the data must be encapsulated as in the axi-mm2s-mapper (PG102).
module serial_axis_bridge(
        input clk_i,
        input rst_i,
        input serial_rx_i,
        output serial_tx_o,
        // main system reset: not the same as the local AXI reset
        output SYS_RESET,
        // local AXI reset. This just resets this AXI link
        output ARESETN,
        output [7:0] M_AXIS_TDATA,
        output M_AXIS_TVALID,
        input M_AXIS_TREADY,
        output [0:0] M_AXIS_TKEEP,
        output M_AXIS_TLAST,
        output [2:0] M_AXIS_TID,
        
        input [7:0] S_AXIS_TDATA,
        input S_AXIS_TVALID,
        output S_AXIS_TREADY,
        input [0:0] S_AXIS_TKEEP,
        input S_AXIS_TLAST,
        input [2:0] S_AXIS_TID,
        
        output [1:0] led_debug_o
    );
    
    //% Number of bytes in the address field (max 4).
    parameter C_ADDR_BYTES = 2;
    //% Number of data bytes (max 8).
    parameter C_DATA_BYTES = 4;
    //% Number of bits in the baud rate generator.
    parameter C_BAUD_RATE_NBITS = 13;
    //% Addend value in the baud rate generator.
    parameter C_BAUD_RATE_ADDEND = 151;
    //% Determine if ILA is instantiated.
    parameter C_DEBUG = "TRUE";

    //% TID 0: B-channel
    localparam  [7:0]   TID_B = 8'h0;
    //% TID 1: AW-channel
    localparam  [7:0]   TID_AW = 8'h1;
    //% TID 2: AR-channel
    localparam  [7:0]   TID_AR = 8'h2;
    //% TID 3: R-channel
    localparam  [7:0]   TID_R = 8'h3;
    //% TID 4: W-channel
    localparam  [7:0]   TID_W = 8'h4;
    //% TID 5: sync request
    localparam  [7:0]   SYNC_REQUEST = 8'h5;
    //% TID 6: sync response
    localparam  [7:0]   SYNC_RESPONSE = 8'h6;
    //% TID 0x52 ('R'): ARESETN request
    localparam  [7:0]   SYS_RESET_REQUEST = 8'h52;

    //% TID1/2 have ADDR_BYTES + 4 additional bytes. 
    localparam TID12_SIZE = C_ADDR_BYTES + 4;
    //% TID4 has DATA_BYTES + 1 additional byte + 1 more if it's 8 bytes wide
    localparam TID4_SIZE = C_DATA_BYTES + 1 + ((C_DATA_BYTES == 8) ? 1 : 0);
        
    //% Clock enable at 16x baud rate
    wire en_16_x_baud;
    //% Transmitting data.
    wire [7:0] serial_txd;
    //% Write transmitting data.
    wire serial_write;
    //% Serial buffer is full
    wire serial_txbuffer_full;
    //% Serial buffer has some data
    wire serial_txbuffer_not_empty;
    //% Read received data.
    wire serial_read;
    //% Reset receive serial buffer
    wire serial_rxbuffer_reset = rst_i;
    //% Reset transmit serial buffer (slaved off of the receive FSM)
    wire serial_txbuffer_reset;
    //% Serial received data.
    wire [7:0] serial_rxd;
    //% Serial receive buffer has data.
    wire serial_rxbuffer_not_empty;

    // We need 2 state machines, one that handles incoming data, and one that handles
    // outgoing data. There's only two communication paths between the two,
    // when the RX FSM signals a reset and when a sync request is received.

    // Inter-FSM communication
    //% Reset is a sys reset
    reg     sys_resetting = 0;
    //% Set high when RX FSM is resetting
    reg     resetting = 0;
    //% Set high when TX FSM has completed reset
    reg     reset_ack = 0;
    //% Set high when a sync request TID has been received, cleared when TX FSM has sent sync.
    reg     sync_request = 0;
    
    //% Number of bits in the RX FSM vector
    localparam RX_FSM_BITS = 2;
    //% RX FSM reset state
    localparam [RX_FSM_BITS-1:0] RX_RESET = 0;
    //% RX FSM idle
    localparam [RX_FSM_BITS-1:0] RX_IDLE = 1;
    //% RX FSM receiving TID
    localparam [RX_FSM_BITS-1:0] RX_TID = 2;
    //% RX FSM receiving stream
    localparam [RX_FSM_BITS-1:0] RX_STREAM = 3;
    //% RX state vector
    reg [RX_FSM_BITS-1:0] rx_state = RX_RESET;
    //% RX general purpose counter
    reg [3:0] rx_counter = {4{1'b0}};
    //% RX TID storage
    reg [3:0] rx_tid = {4{1'b0}};

    // Transmitting side logic is much easier, as it doesn't need to know anything to multiplex.
    localparam TX_FSM_BITS = 2;
    //% TX FSM reset state
    localparam [TX_FSM_BITS-1:0] TX_RESET = 0;
    //% TX FSM idle
    localparam [TX_FSM_BITS-1:0] TX_IDLE = 1;
    //% TX FSM has seen sync request or a S_AXIS_TVALID, and is writing out TID
    localparam [TX_FSM_BITS-1:0] TX_TID = 2;
    //% TX FSM is writing out an AXI-Stream
    localparam [TX_FSM_BITS-1:0] TX_STREAM = 3;
    reg [TX_FSM_BITS-1:0] tx_state = TX_RESET;

    //% Indicates that the demultiplexed stream is now complete (this is TLAST).
    wire stream_complete = (((rx_tid == TID_AW || rx_tid == TID_AR) && (rx_counter == TID12_SIZE-1)) ||
                             (rx_tid == TID_W) && (rx_counter == TID4_SIZE-1)) && serial_rxbuffer_not_empty;
    //% Indicates that the stream is OK to be forwarded (this is TVALID).
    wire stream_ok = ((stream_complete && serial_rxd != 8'hFF) || (!stream_complete && serial_rxbuffer_not_empty)) && (rx_state == RX_STREAM);
    //% Indicates that the TID is a stream type
    wire tid_stream = (serial_rxd == TID_AW || serial_rxd == TID_AR || serial_rxd == TID_W);
    //% Indicates that the TID is a sync type
    wire tid_sync = (serial_rxd == SYNC_REQUEST);
    //% Indicates that the TID is a reset type
    wire tid_reset = (serial_rxd == SYS_RESET_REQUEST);

    assign serial_read = (rx_state == RX_TID) || (rx_state == RX_STREAM && serial_rxbuffer_not_empty && M_AXIS_TREADY);

    //% Logic for the receiving side.
    always @(posedge clk_i) begin : RX_LOGIC
        // serial_read goes high in RX_STREAM when buffer_data_present is asserted. This will tick
        // the counter up by 1. So we complete when rx_counter is equal to the TID size - 1 and
        // data is available.
        if (rx_state == RX_STREAM) begin
            if (serial_read) rx_counter <= rx_counter + 1;
        end else rx_counter <= {4{1'b0}};
        
        case (rx_state)
            RX_RESET: if (resetting && reset_ack) rx_state <= RX_IDLE;
            RX_IDLE: if (serial_rxbuffer_not_empty && !sync_request) rx_state <= RX_TID;
            // TID 1/2/4 are normal streams. TID 5 sets the sync_request and goes back to IDLE,
            // waiting for it to complete. Anything else resets us.
            RX_TID: if (tid_stream) rx_state <= RX_STREAM;
                    else if (tid_sync) rx_state <= RX_IDLE;
                    else if (tid_reset) rx_state <= RX_RESET;
                    else rx_state <= RX_RESET;
            // Streaming data in.
            RX_STREAM: if (stream_complete) begin
                            if (stream_ok) rx_state <= RX_IDLE;
                            else rx_state <= RX_RESET;
                       end
        endcase
        
        if (rx_state == RX_TID) rx_tid <= serial_rxd;
    end

    always @(posedge clk_i) begin : RESET_SYNC_LOGIC
        if (rx_state == RX_TID && tid_sync) sync_request <= 1;
        else if (tx_state == TX_TID && sync_request && !serial_txbuffer_full) // fix this, terminate properly
            sync_request <= 0;
        
        if (rx_state == RX_RESET) resetting <= 1;
        else resetting <= 0;

        if (tid_reset && rx_state == RX_TID) sys_resetting <= 1;
        else if (rx_state == RX_IDLE) sys_resetting <= 0;
        
        if (rx_state == RX_RESET && !resetting) reset_ack <= 0;
        else reset_ack <= (tx_state == TX_RESET);
    end
        
    always @(posedge clk_i) begin : TX_LOGIC
        if (resetting) tx_state <= TX_RESET;
        else case (tx_state)
            TX_RESET: tx_state <= TX_IDLE;
            TX_IDLE: if (sync_request || S_AXIS_TVALID) tx_state <= TX_TID;
            TX_TID: if (sync_request && !serial_txbuffer_full) tx_state <= TX_IDLE;
                    else if (!serial_txbuffer_full) tx_state <= TX_STREAM;
            TX_STREAM: if (S_AXIS_TVALID && S_AXIS_TLAST && !serial_txbuffer_full) tx_state <= TX_IDLE;
        endcase
    end
    
    assign serial_txd = (tx_state == TX_TID) ? ((sync_request) ? 8'h6 : S_AXIS_TID) : S_AXIS_TDATA;
    assign serial_write = (tx_state == TX_TID && !serial_txbuffer_full) ||
                          (tx_state == TX_STREAM && !serial_txbuffer_full && S_AXIS_TVALID);
    assign S_AXIS_TREADY = (tx_state == TX_STREAM && !serial_txbuffer_full);                          
    // flag
    assign ARESETN = !(tx_state == TX_RESET);
    // this is a flag
    assign SYS_RESET = (tx_state == TX_RESET) && sys_resetting;
    assign serial_txbuffer_reset = (tx_state == TX_RESET);        

    // base clock = 100 MHz, baud rate = 115200, 16x baud = 1,843,200
    // 8192/(100,000,000/1,843,200) is ~151 (to <<1% precision)

    //% Generate 16x baud rate clock enable. (2^13/151 is within 1% of (100E6/(115200*16)).
    baud_rate_generator #(.NBITS(C_BAUD_RATE_NBITS), .ADD(C_BAUD_RATE_ADDEND)) u_baud(.clk_i(clk_i),.rst_i(rst_i),.baud_o(en_16_x_baud));

    //% UART transmitter.
    uart_tx6 u_transmitter(.clk(clk_i),.en_16_x_baud(en_16_x_baud),.serial_out(serial_tx_o),
                           .data_in(serial_txd),.buffer_write(serial_write),
                           .buffer_full(serial_txbuffer_full),.buffer_data_present(serial_txbuffer_not_empty));

    //% UART receiver.
    uart_rx6 u_receiver(.clk(clk_i),.en_16_x_baud(en_16_x_baud),.serial_in(serial_rx_i),
                        .data_out(serial_rxd),.buffer_read(serial_read),.buffer_reset(serial_rxbuffer_reset),
                        .buffer_data_present(serial_rxbuffer_not_empty));

    generate
        if (C_DEBUG == "TRUE") begin : DBG_ILA
            ila_1 u_ila(.clk(clk_i),.probe0(M_AXIS_TDATA),.probe1(M_AXIS_TVALID),.probe2(M_AXIS_TID),.probe3(M_AXIS_TLAST),.probe4(rx_state),.probe5(serial_rxbuffer_not_empty),
                        .probe6(serial_rx_i),.probe7(en_16_x_baud));
        end
    endgenerate

    assign M_AXIS_TDATA = serial_rxd;
    assign M_AXIS_TVALID = stream_ok;
    assign M_AXIS_TKEEP = 1'b1;
    assign M_AXIS_TID = rx_tid;
    assign M_AXIS_TLAST = stream_complete;
        
endmodule
