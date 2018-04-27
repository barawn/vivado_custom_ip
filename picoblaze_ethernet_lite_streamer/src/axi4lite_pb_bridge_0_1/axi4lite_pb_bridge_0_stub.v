// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Apr 24 10:16:23 2018
// Host        : PHY-NC188089 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               v:/osu_ip/picoblaze_ethernet_lite_streamer/src/axi4lite_pb_bridge_0_1/axi4lite_pb_bridge_0_stub.v
// Design      : axi4lite_pb_bridge_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi4lite_pb_bridge,Vivado 2018.1" *)
module axi4lite_pb_bridge_0(port_id, write_strobe, read_strobe, out_port, 
  in_port, m_axi_aclk, m_axi_aresetn, m_axi_awaddr, m_axi_awvalid, m_axi_awready, m_axi_wdata, 
  m_axi_wvalid, m_axi_wready, m_axi_wstrb, m_axi_bresp, m_axi_bvalid, m_axi_bready, 
  m_axi_araddr, m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rresp, m_axi_rvalid, 
  m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="port_id[7:0],write_strobe,read_strobe,out_port[7:0],in_port[7:0],m_axi_aclk,m_axi_aresetn,m_axi_awaddr[12:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[31:0],m_axi_wvalid,m_axi_wready,m_axi_wstrb[3:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_araddr[12:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rvalid,m_axi_rready" */;
  input [7:0]port_id;
  input write_strobe;
  input read_strobe;
  input [7:0]out_port;
  output [7:0]in_port;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [12:0]m_axi_awaddr;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output m_axi_wvalid;
  input m_axi_wready;
  output [3:0]m_axi_wstrb;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [12:0]m_axi_araddr;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;
endmodule
