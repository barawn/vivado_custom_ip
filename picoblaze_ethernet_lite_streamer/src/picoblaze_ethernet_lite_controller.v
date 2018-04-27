`timescale 1ns / 1ps
`include "axi_macros.vh"

module picoblaze_ethernet_lite_controller #(
    parameter C_AXI_ADDR_WIDTH = 13,
    parameter C_AXI_DATA_WIDTH = 32
    )(
    input m_axi_aclk,
    input m_axi_aresetn,
    
    // AXI4-Lite master connection.
    output m_axi_awvalid,
    input m_axi_awready,
    output [C_AXI_ADDR_WIDTH-1:0] m_axi_awaddr,    
    output m_axi_wvalid,
    input m_axi_wready,
    output [C_AXI_DATA_WIDTH-1:0] m_axi_wdata,
    output [(C_AXI_DATA_WIDTH/8)-1:0] m_axi_wstrb,
    output m_axi_bready,
    input m_axi_bvalid,
    input [1:0] m_axi_bresp,    
    output m_axi_arvalid,
    input m_axi_arready,
    output [C_AXI_ADDR_WIDTH-1:0] m_axi_araddr,    
    output m_axi_rready,
    input m_axi_rvalid,
    input [C_AXI_DATA_WIDTH-1:0] m_axi_rdata,
    input [1:0] m_axi_rresp,
    // DataMover S2MM command connection.
    output [71:0] m_axis_s2mm_cmd_tdata,
    input m_axis_s2mm_cmd_tready,
    output m_axis_s2mm_cmd_tvalid,
    // DataMover S2MM status connection.
    input [31:0] s_axis_s2mm_sts_tdata,
    output s_axis_s2mm_sts_tready,
    input s_axis_s2mm_sts_tvalid,
    // DataMover S2MM connection. Needed so we can see when a transfer
    // begins/ends. For connection purposes, we just make it complete,
    // and then *pass it out again*.
    output [7:0] m_axis_s2mm_tdata,
    input m_axis_s2mm_tready,
    output m_axis_s2mm_tvalid,
    output m_axis_s2mm_tlast,
    output [0:0] m_axis_s2mm_tkeep,
    // *Input* S2MM connection.
    input [7:0] s_axis_s2mm_tdata,
    output s_axis_s2mm_tready,
    input s_axis_s2mm_tvalid,
    input s_axis_s2mm_tlast,    
    // DataMover MM2S command connection
    output [71:0] m_axis_mm2s_cmd_tdata,
    input m_axis_mm2s_cmd_tready,
    output m_axis_mm2s_cmd_tvalid,
    // DataMover MM2S status connection
    input [7:0] s_axis_mm2s_sts_tdata,
    output s_axis_mm2s_sts_tready,
    input s_axis_mm2s_sts_tvalid,
    
    input [47:0] mac_address
    );

    // ditch tkeep
    assign m_axis_s2mm_tkeep = 1'b1;

    // PicoBlaze definitions.
    wire [7:0] out_port;
    wire [7:0] in_port;
    wire [7:0] port_id;
    wire write_strobe;
    wire k_write_strobe;
    wire read_strobe;
    wire [17:0] instruction;
    wire [11:0] address;
    wire bram_enable;
    wire interrupt = 0;    

    // For ILA. ILA needs 8+8+12+2 = 30.
//    wire [7:0] inout_port = (read_strobe) ? in_port : out_port;
    
//    picoblaze_ila u_ila(.clk(m_axi_aclk),.probe0(port_id),.probe1(inout_port),.probe2(address),.probe3(write_strobe),.probe4(read_strobe));

    // These have to match the IP configurations.
    localparam [7:0] AXI4LITE_BASE_ADDRESS = 8'h00;
    localparam [7:0] DATAMOVER_BASE_ADDRESS = 8'h20;
    localparam [7:0] MAC_BASE_ADDRESS = 8'h40;
    
    //% Output from AXI4-Lite bridge.
    wire [7:0] axi4lite_bridge_in_port;
    wire axi4lite_bridge_port_access = ({port_id[7:5],5'h00} == AXI4LITE_BASE_ADDRESS);
    //% Output from Datamover bridge.
    wire [7:0] datamover_in_port;
    wire datamover_port_access = ({port_id[7:5],5'h00} == DATAMOVER_BASE_ADDRESS);

    wire [7:0] mac_address_data[7:0];
    generate
        genvar m;
        for (m=0;m<8;m=m+1) begin : MAC_LOOP
            assign mac_address_data[m] = mac_address[(m%6)*8 +: 8];
        end
    endgenerate
    wire mac_address_port_access = ({port_id[7:5],5'h00} == MAC_BASE_ADDRESS);
    wire [7:0] mac_in_port = mac_address_data[port_id[2:0]];
    
    assign in_port = (mac_address_port_access) ? mac_in_port : ((datamover_port_access) ? datamover_in_port : axi4lite_bridge_in_port);
    
    //% PicoBlaze.
    kcpsm6 u_picoblaze(.address(address),
                       .instruction(instruction),
                       .bram_enable(bram_enable),
                       .in_port(in_port),
                       .out_port(out_port),
                       .port_id(port_id),
                       .k_write_strobe(k_write_strobe),
                       .write_strobe(write_strobe),
                       .read_strobe(read_strobe),
                       .interrupt(interrupt),
                       .sleep(1'b0),
                       .reset(!m_axi_aresetn),
                       .clk(m_axi_aclk));

    picoblaze_ethernet_lite_rom u_rom(.address(address),.instruction(instruction),.enable(bram_enable),.clk(m_axi_aclk));


    //% AXI4-Lite bridge. The bridge eats up the constant port space, so it gets the k_write_strobe.
    //% We need to redefine the port_id it gets, though, to use k_write_strobe - we need to strip off the top 4 bits
    //% in that case and set them to 0.
    wire [7:0] bridge_port_id;
    assign bridge_port_id[7:4] = (k_write_strobe) ? 4'h0 : port_id[7:4];
    assign bridge_port_id[3:0] = port_id[3:0];
    axi4lite_pb_bridge_0 u_bridge(.port_id(bridge_port_id),
                 .in_port(axi4lite_bridge_in_port),
                 .out_port(out_port),
                 .write_strobe(write_strobe || k_write_strobe),
                 .read_strobe(read_strobe),
                 .m_axi_aclk(m_axi_aclk),
                 .m_axi_aresetn(m_axi_aresetn),
                 `AXI4LITE_CONNECT(m_axi, m_axi));
    //% DataMover controller
    picoblaze_datamover_bridge #(.C_BASE_ADDRESS(DATAMOVER_BASE_ADDRESS))
        u_datamover(
                    .clk(m_axi_aclk),
                    .resetn(m_axi_aresetn),
                    .port_id(port_id),
                    .in_port(datamover_in_port),
                    .out_port(out_port),
                    .write_strobe(write_strobe),
                    .read_strobe(read_strobe),
                    `AXI4S_CONNECT(m_axis_s2mm, m_axis_s2mm),
                    `AXI4S_CONNECT(s_axis_s2mm, s_axis_s2mm),
                    `AXI4S_CONNECT_NO_FRAMING(m_axis_mm2s_cmd, m_axis_mm2s_cmd),
                    `AXI4S_CONNECT_NO_FRAMING(s_axis_mm2s_sts, s_axis_mm2s_sts),
                    `AXI4S_CONNECT_NO_FRAMING(m_axis_s2mm_cmd, m_axis_s2mm_cmd),
                    `AXI4S_CONNECT_NO_FRAMING(s_axis_s2mm_sts, s_axis_s2mm_sts)
                    );    
endmodule
