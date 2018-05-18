`timescale 1ns / 1ps

//% @brief Module for connecting a PicoBlaze to an AXI4-Lite bus.
//%
//% This bridge eats up 32 registers, so one of the parameters is an 8-bit base address which
//% represents the *top* 3 bits. Inside that space, the registers are:
//% BASE_ADDR + 0x00: CONTROL[7:0]
//% BASE_ADDR + 0x01 to BASE_ADDR + 0x07: read only shadow of 0x08 to 0x0F
//% BASE_ADDR + 0x08 to BASE_ADDR + 0x0B: data[31:0] (little endian: 0x00 = data[7:0])
//% BASE_ADDR + 0x0C to BASE_ADDR + 0x0F: addr[31:0] (little endian: 0x00 = addr[7:0]). Unused bits read back 0.
//% BASE_ADDR + 0x10 to BASE_ADDR + 0x17: read only shadow of 0x00 to 0x07
//% BASE_ADDR + 0x18 to BASE_ADDR + 0x1B: data[63:32] if DATA_WIDTH=64, otherwise read only shadow of data[31:00]
//% BASE_ADDR + 0x1C to BASE_ADDR + 0x1F: addr[63:32] if ADDR_WIDTH>32, otherwise read only shadow of addr[31:00]
//% 
//% Note that if the address and data spaces are both 32-bits or less, only 16 ports are required and k_write_strobe can be used.
//%
//% NOTE: C_BASE_ADDRESS MUST BE ALIGNED ON A 32-BYTE BOUNDARY. This is enforced in the configuration GUI:
//% i.e. only 0x20/40/60/80/A0/C0/E0 are allowed! This is still true even for address/data spaces 32-bits or less.
//%
//% CONTROL[7:0]:
//%        CONTROL[0]   = AXI_BEGIN    : Set to 1 to initiate an AXI transaction.
//%        CONTROL[1]   = AXI_WNR      : Set to 1 for a write transaction. Otherwise read.
//%        CONTROL[2]   = AXI_ACTIVE   : Indicates an AXI access is still ongoing.
//%        CONTROL[3]   = AXI_DONE     : This bit is set when the AXI transaction completes. Cleared when AXI_BEGIN is set.
//%        CONTROL[5:4] = AXI_RESP     : Contains the RESP[1:0] to the last transaction (either RRESP or BRESP depending on AXI_WNR).
//%
//% This module is currently synchronous. Wouldn't be too hard to make it asynchronous, just no need right now.
module axi4lite_pb_bridge #(parameter C_ADDRESS_WIDTH=32, parameter C_DATA_WIDTH=32, parameter C_BASE_ADDRESS = 8'h00)(
        // PicoBlaze interface.
        input [7:0] port_id,
        input k_write_strobe,
        input write_strobe,
        input read_strobe,
        input [7:0] out_port,
        output [7:0] in_port,
        // AXI4-Lite interface
        input m_axi_aclk,
        input m_axi_aresetn,
        
        output [C_ADDRESS_WIDTH-1:0] m_axi_awaddr,
        output m_axi_awvalid,
        input m_axi_awready,
        
        output [C_DATA_WIDTH-1:0] m_axi_wdata,
        output m_axi_wvalid,
        input m_axi_wready,
        output [(C_DATA_WIDTH/8)-1:0] m_axi_wstrb,
        
        input [1:0] m_axi_bresp,
        input m_axi_bvalid,
        output m_axi_bready,
        
        output [C_ADDRESS_WIDTH-1:0] m_axi_araddr,
        output m_axi_arvalid,
        input m_axi_arready,
        
        input [C_DATA_WIDTH-1:0] m_axi_rdata,
        input [1:0] m_axi_rresp,
        input m_axi_rvalid,
        output m_axi_rready        
    );
    
    // AXI control register.
    reg axi_begin = 0;
    reg axi_wnr = 0;
    reg axi_done = 0;
    reg axi_active = 0;
    reg [1:0] axi_resp = {2{1'b0}};
    wire [7:0] AXI_CONTROL = { {2{1'b0}}, axi_resp, axi_done, axi_active, axi_wnr, axi_begin };

    // AXI output signals.
    reg axi_arvalid = 0;
    reg axi_rready = 0;
    reg axi_awvalid = 0;
    reg axi_wvalid = 0;
    reg axi_bready = 0;    

    // AXI storage registers. Expanded versions are just expanded out to 64 bits regardless of length.
    reg [C_DATA_WIDTH-1:0] axi_data = {C_DATA_WIDTH{1'b0}};
    wire [63:0] axi_data_expanded = { {(64-C_DATA_WIDTH){1'b0}}, axi_data};
    reg [C_ADDRESS_WIDTH-1:0] axi_address = {C_ADDRESS_WIDTH{1'b0}};
    wire [63:0] axi_address_expanded = { {(64-C_ADDRESS_WIDTH){1'b0}}, axi_address};

    // ceil(C_DATA_WIDTH/8)
    localparam N_DATA_BYTES = (C_DATA_WIDTH/8) + (((C_DATA_WIDTH % 8) == 0) ? 0 : 1 );
    // ceil(C_ADDRESS_WIDTH/8). if ADDRESS_WIDTH=13, C_ADDRESS_WIDTH/8 = 1, C_ADDRESS_WIDTH % 8 = 5, so N_ADDRESS_BYTES = 2
    // if C_ADDRESS_WIDTH=16, C_ADDRESS_WIDTH/8 = 2, C_ADDRESS_WIDTH % 8 = 0, so N_ADDRESS_BYTES=2
    localparam N_ADDRESS_BYTES = (C_ADDRESS_WIDTH/8) + (((C_ADDRESS_WIDTH % 8) == 0) ? 0 : 1);
    // Port select for data bytes (AND with axi_pb_write)
    reg [N_DATA_BYTES-1:0] axi_data_waccess = {N_DATA_BYTES{1'b0}};
    // k_write_strobe port select
    reg [N_DATA_BYTES-1:0] axi_data_kwaccess = {N_DATA_BYTES{1'b0}};
    // Port select for address bytes (AND with axi_pb_write)    
    reg [N_ADDRESS_BYTES-1:0] axi_address_waccess = {N_ADDRESS_BYTES{1'b0}};
    // k_write_strobe port select
    reg [N_ADDRESS_BYTES-1:0] axi_address_kwaccess = {N_ADDRESS_BYTES{1'b0}};

    wire [N_DATA_BYTES-1:0] axi_data_write_access;
    wire [N_ADDRESS_BYTES-1:0] axi_address_write_access;

    // Port select for control register (AND with axi_pb_write)
    reg axi_control_waccess = 0;
    // Port select for k_write_strobe. So the proper qualifier is (axi_control_waccess && axi_port_access && axi_write_strobe) || (axi_control_kwaccess && k_write_strobe)
    reg axi_control_kwaccess = 0;
    // AXI port access. This is for the full decode.    
    reg axi_port_access = 0;
    // AXI control port access.
    wire axi_control_write_access = (axi_control_waccess && axi_port_access && write_strobe) || (axi_control_kwaccess && k_write_strobe);    

    
    // So on the clock cycle before write_strobe/k_write_strobe,
    // the port gets decoded, and axi_port_access goes high if needed,
    // and axi_data_waccess/axi_address_waccess/axi_control_waccess go high.
    // Then on the next clock, if it's write_strobe, it gets anded with axi_port_access, and if it's k_write_strobe there's no and.
    // So we still have to pass through a LUT, but it shouldn't be as bad, I think.

    wire [4:0] axi_port_id = port_id[4:0];
    
    wire [7:0] picoblaze_register_map[31:0];
    
    always @(posedge m_axi_aclk) begin
        // Port decodes
        axi_port_access <= (port_id[7:5] == C_BASE_ADDRESS[7:5]);
        axi_control_waccess <= (axi_port_id == 5'h00);
        axi_control_kwaccess <= (axi_port_id[3:0] == 4'h0);

        // Begin read address transaction when axi_begin && !axi_wnr.
        // Assert ARVALID and wait for ARREADY.
        if (!m_axi_aresetn) axi_arvalid <= 0;
        else if (axi_arvalid && m_axi_arready) axi_arvalid <= 0;
        else if (axi_begin && !axi_wnr) axi_arvalid <= 1;
        // Begin write address transaction when axi_begin && axi_wnr.
        // Assert AWVALID and wait for AWREADY.
        if (!m_axi_aresetn) axi_awvalid <= 0;
        else if (axi_awvalid && m_axi_awready) axi_awvalid <= 0;
        else if (axi_begin && axi_wnr) axi_awvalid <= 1;
        // Assert RREADY at txn start and wait for RVALID.
        if (!m_axi_aresetn) axi_rready <= 0;
        else if (axi_rready && m_axi_rvalid) axi_rready <= 0;
        else if (axi_begin && !axi_wnr) axi_rready <= 1;
        // Assert WVALID at txn start and wait for WREADY.
        if (!m_axi_aresetn) axi_wvalid <= 0;
        else if (axi_wvalid && m_axi_wready) axi_wvalid <= 0;
        else if (axi_begin && axi_wnr) axi_wvalid <= 1;
        // Assert BREADY at txn start and wait for BVALID.
        if (!m_axi_aresetn) axi_bready <= 0;
        else if (axi_bready && m_axi_bvalid) axi_bready <= 0;
        else if (axi_begin && axi_wnr) axi_bready <= 1;
        
        // Begin when bit 0 gets asserted.
        // It's software's job to make sure axi_begin never gets set again until axi_done goes high.
        if (!m_axi_aresetn) axi_begin <= 0;
        else axi_begin <= out_port[0] && axi_control_write_access;
        
        if (!m_axi_aresetn) axi_active <= 0;
        else if (out_port[0] && axi_control_write_access) axi_active <= 1;
        else if (axi_rready && m_axi_rvalid) axi_active <= 0;
        else if (axi_bready && m_axi_bvalid) axi_active <= 0;
        
        if (!m_axi_aresetn) axi_wnr <= 0;
        else if (axi_control_write_access) axi_wnr <= out_port[1];
        
        // Finish when rready & rvalid go high, or when bready && bvalid go high.
        if (!m_axi_aresetn) axi_done <= 0;
        else if (axi_control_write_access) axi_done <= !out_port[0];
        else if (axi_rready && m_axi_rvalid) axi_done <= 1;
        else if (axi_bready && m_axi_bvalid) axi_done <= 1;
        
        if (axi_rready && m_axi_rvalid) axi_resp <= m_axi_rresp;
        else if (axi_bready && m_axi_bvalid) axi_resp <= m_axi_bresp;
    end        

    generate
        genvar da_iter, aa_iter, d_iter, a_iter;
        // Generate the individual data byte write strobes.
        // We can take 1 clock cycle for this.
        for (da_iter=0;da_iter<N_DATA_BYTES;da_iter=da_iter+1) begin : DAL
            always @(posedge m_axi_aclk) begin : DAL_LOGIC
                // The addressing goes 8/9/10/11 -> 24/25/26/27, or 01000->01011 then 11000->11011.
                // So remap by requiring axi_port_id[3:2]==2'b10,
                // and requiring ({axi_port_id[4],axi_port_id[1:0]} == d_iter/8)
                axi_data_waccess[da_iter] <= ((axi_port_id[3:2]==2'b10) && ({axi_port_id[4],axi_port_id[1:0]} == da_iter));                
            end
            if (da_iter<4) begin : LOW_DWORD_KWACCESS
                always @(posedge m_axi_aclk) begin : KDAL_LOGIC
                    axi_data_kwaccess[da_iter] <= ((axi_port_id[3:2]==2'b10) && (axi_port_id[1:0] == da_iter));
                end
            end else begin : HIGH_DWORD_KWACCESS
                always @(posedge m_axi_aclk) begin : KDAL_LOGIC
                    axi_data_kwaccess[da_iter] <= 0;
                end
            end            
            assign axi_data_write_access[da_iter] = (axi_data_waccess[da_iter] && write_strobe) || (axi_data_kwaccess[da_iter] && k_write_strobe);
        end
        // Generate the individual address byte write strobes.
        // We can take 1 clock cycle for this.
        for (aa_iter=0;aa_iter<N_ADDRESS_BYTES;aa_iter=aa_iter+1) begin : AAL
            always @(posedge m_axi_aclk) begin : AAL_LOGIC
                // Remap as before, by requiring axi_port_id[3:2]==2'b11 now.
                axi_address_waccess[aa_iter] <= ((axi_port_id[3:2]==2'b11) && ({axi_port_id[4],axi_port_id[1:0]} == aa_iter));
            end
            if (aa_iter<4) begin : LOW_DWORD_KWACCESS
                always @(posedge m_axi_aclk) begin : KAAL_LOGIC
                    axi_address_kwaccess[aa_iter] <= ((axi_port_id[3:2]==2'b11) && (axi_port_id[1:0] == aa_iter));
                end
            end else begin : HIGH_DWORD_KWACCESS
                always @(posedge m_axi_aclk) begin : KAAL_LOGIC
                    axi_address_kwaccess[aa_iter] <= 0;
                end
            end
            assign axi_address_write_access[aa_iter] = (axi_address_waccess[aa_iter] && axi_port_access && write_strobe) || (axi_address_kwaccess[aa_iter] && k_write_strobe);
        end
        
        for (d_iter=0;d_iter<C_DATA_WIDTH;d_iter=d_iter+1) begin : DL
            always @(posedge m_axi_aclk) begin : DL_LOGIC
                if (axi_rready && m_axi_rvalid) axi_data[d_iter] <= m_axi_rdata[d_iter];
                else if (axi_data_write_access[d_iter/8]) axi_data[d_iter] <= out_port[d_iter % 8];
            end
        end
        for (a_iter=0;a_iter<C_ADDRESS_WIDTH;a_iter=a_iter+1) begin : AL
            always @(posedge m_axi_aclk) begin : AL_LOGIC
                // Remap as before, by requiring axi_port_id[3:2]==2'b11.
                if (axi_address_write_access[a_iter/8])
                    axi_address[a_iter] <= out_port[a_iter % 8];
            end
        end

        genvar reg_iter, spare_iter;
        //% Control register (and its shadow).
        assign picoblaze_register_map[0] = AXI_CONTROL;
        assign picoblaze_register_map[16] = AXI_CONTROL;
        //% Spare space (shadow).
        for (spare_iter=1;spare_iter<8;spare_iter=spare_iter+1) begin : SL
            //% 0x01-0x07 shadow 0x08-0x0F
            assign picoblaze_register_map[spare_iter] = picoblaze_register_map[spare_iter+8];
            //% 0x11-0x17 shadow 0x08-0x0F
            assign picoblaze_register_map[spare_iter+16] = picoblaze_register_map[spare_iter+8];
        end    
        //% Data/address registers.
        for (reg_iter=8;reg_iter<12;reg_iter=reg_iter+1) begin : RL
            //% 32-bits and under 0x08-0x0F
            assign picoblaze_register_map[reg_iter] = axi_data_expanded[(reg_iter-8)*8 +: 8];
            assign picoblaze_register_map[reg_iter+4] = axi_address_expanded[(reg_iter-8)*8 +: 8];
            //% 64-bit expansion, or shadow 0x18-0x1F
            assign picoblaze_register_map[reg_iter+16] = (C_DATA_WIDTH>32) ? 
                axi_data_expanded[(reg_iter-8+4)*8 +: 8] : axi_data_expanded[(reg_iter-8)*8 +: 8];
            assign picoblaze_register_map[reg_iter+20] = (C_ADDRESS_WIDTH>32) ? 
                axi_address_expanded[(reg_iter-8+4)*8 +: 8] : axi_address_expanded[(reg_iter-8)*8 +: 8];
        end
    endgenerate

    assign in_port = picoblaze_register_map[axi_port_id];

    assign m_axi_arvalid = axi_arvalid;
    assign m_axi_araddr = axi_address;
    assign m_axi_awvalid = axi_awvalid;
    assign m_axi_awaddr = axi_address;
    assign m_axi_wvalid = axi_wvalid;
    assign m_axi_wdata = axi_data;
    assign m_axi_rready = axi_rready;
    assign m_axi_bready = axi_bready;
    assign m_axi_wstrb = 4'hF;
            
endmodule