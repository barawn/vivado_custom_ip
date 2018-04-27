// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Apr 24 10:09:05 2018
// Host        : PHY-NC188089 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               v:/osu_ip/picoblaze_ethernet_lite_streamer/src/axi4lite_pb_bridge_0/axi4lite_pb_bridge_0_sim_netlist.v
// Design      : axi4lite_pb_bridge_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi4lite_pb_bridge_0,axi4lite_pb_bridge,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi4lite_pb_bridge,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module axi4lite_pb_bridge_0
   (port_id,
    write_strobe,
    read_strobe,
    out_port,
    in_port,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_wstrb,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input [7:0]port_id;
  input write_strobe;
  input read_strobe;
  input [7:0]out_port;
  output [7:0]in_port;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_aclk, ASSOCIATED_BUSIF m_axi, ASSOCIATED_RESET m_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000" *) input m_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_aresetn, POLARITY ACTIVE_LOW" *) input m_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *) output [12:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *) output [12:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output m_axi_rready;

  wire \<const1> ;
  wire [7:0]in_port;
  wire \in_port[5]_INST_0_i_2_n_0 ;
  wire \in_port[5]_INST_0_i_3_n_0 ;
  wire \in_port[7]_INST_0_i_4_n_0 ;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [12:0]m_axi_awaddr;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [7:0]out_port;
  wire [7:0]port_id;
  wire write_strobe;

  assign m_axi_araddr[12:0] = m_axi_awaddr;
  assign m_axi_wstrb[3] = \<const1> ;
  assign m_axi_wstrb[2] = \<const1> ;
  assign m_axi_wstrb[1] = \<const1> ;
  assign m_axi_wstrb[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \in_port[5]_INST_0_i_2 
       (.I0(port_id[0]),
        .I1(port_id[3]),
        .I2(port_id[1]),
        .O(\in_port[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000000D)) 
    \in_port[5]_INST_0_i_3 
       (.I0(port_id[4]),
        .I1(port_id[2]),
        .I2(port_id[0]),
        .I3(port_id[1]),
        .I4(port_id[3]),
        .O(\in_port[5]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \in_port[7]_INST_0_i_4 
       (.I0(port_id[3]),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .O(\in_port[7]_INST_0_i_4_n_0 ));
  axi4lite_pb_bridge_0_axi4lite_pb_bridge inst
       (.in_port(in_port),
        .m_axi_aclk(m_axi_aclk),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .out_port(out_port),
        .port_id(port_id),
        .port_id_0_sp_1(\in_port[7]_INST_0_i_4_n_0 ),
        .port_id_1_sp_1(\in_port[5]_INST_0_i_2_n_0 ),
        .port_id_3_sp_1(\in_port[5]_INST_0_i_3_n_0 ),
        .write_strobe(write_strobe));
endmodule

(* ORIG_REF_NAME = "axi4lite_pb_bridge" *) 
module axi4lite_pb_bridge_0_axi4lite_pb_bridge
   (m_axi_awaddr,
    m_axi_wdata,
    m_axi_rready,
    m_axi_bready,
    m_axi_awvalid,
    m_axi_wvalid,
    m_axi_arvalid,
    in_port,
    out_port,
    m_axi_aclk,
    port_id_1_sp_1,
    port_id,
    port_id_3_sp_1,
    port_id_0_sp_1,
    write_strobe,
    m_axi_rvalid,
    m_axi_aresetn,
    m_axi_arready,
    m_axi_bvalid,
    m_axi_rdata,
    m_axi_wready,
    m_axi_awready,
    m_axi_bresp,
    m_axi_rresp);
  output [12:0]m_axi_awaddr;
  output [31:0]m_axi_wdata;
  output m_axi_rready;
  output m_axi_bready;
  output m_axi_awvalid;
  output m_axi_wvalid;
  output m_axi_arvalid;
  output [7:0]in_port;
  input [7:0]out_port;
  input m_axi_aclk;
  input port_id_1_sp_1;
  input [7:0]port_id;
  input port_id_3_sp_1;
  input port_id_0_sp_1;
  input write_strobe;
  input m_axi_rvalid;
  input m_axi_aresetn;
  input m_axi_arready;
  input m_axi_bvalid;
  input [31:0]m_axi_rdata;
  input m_axi_wready;
  input m_axi_awready;
  input [1:0]m_axi_bresp;
  input [1:0]m_axi_rresp;

  wire \AL[12].axi_address[12]_i_2_n_0 ;
  wire \DL[0].axi_data[0]_i_1_n_0 ;
  wire \DL[10].axi_data[10]_i_1_n_0 ;
  wire \DL[11].axi_data[11]_i_1_n_0 ;
  wire \DL[12].axi_data[12]_i_1_n_0 ;
  wire \DL[13].axi_data[13]_i_1_n_0 ;
  wire \DL[14].axi_data[14]_i_1_n_0 ;
  wire \DL[15].axi_data[15]_i_1_n_0 ;
  wire \DL[15].axi_data[15]_i_2_n_0 ;
  wire \DL[16].axi_data[16]_i_1_n_0 ;
  wire \DL[17].axi_data[17]_i_1_n_0 ;
  wire \DL[18].axi_data[18]_i_1_n_0 ;
  wire \DL[19].axi_data[19]_i_1_n_0 ;
  wire \DL[1].axi_data[1]_i_1_n_0 ;
  wire \DL[20].axi_data[20]_i_1_n_0 ;
  wire \DL[21].axi_data[21]_i_1_n_0 ;
  wire \DL[22].axi_data[22]_i_1_n_0 ;
  wire \DL[23].axi_data[23]_i_1_n_0 ;
  wire \DL[23].axi_data[23]_i_2_n_0 ;
  wire \DL[24].axi_data[24]_i_1_n_0 ;
  wire \DL[25].axi_data[25]_i_1_n_0 ;
  wire \DL[26].axi_data[26]_i_1_n_0 ;
  wire \DL[27].axi_data[27]_i_1_n_0 ;
  wire \DL[28].axi_data[28]_i_1_n_0 ;
  wire \DL[29].axi_data[29]_i_1_n_0 ;
  wire \DL[2].axi_data[2]_i_1_n_0 ;
  wire \DL[30].axi_data[30]_i_1_n_0 ;
  wire \DL[31].axi_data[31]_i_1_n_0 ;
  wire \DL[31].axi_data[31]_i_2_n_0 ;
  wire \DL[3].axi_data[3]_i_1_n_0 ;
  wire \DL[4].axi_data[4]_i_1_n_0 ;
  wire \DL[5].axi_data[5]_i_1_n_0 ;
  wire \DL[6].axi_data[6]_i_1_n_0 ;
  wire \DL[7].axi_data[7]_i_2_n_0 ;
  wire \DL[8].axi_data[8]_i_1_n_0 ;
  wire \DL[9].axi_data[9]_i_1_n_0 ;
  wire axi_active;
  wire axi_active_i_1_n_0;
  wire axi_arvalid_i_1_n_0;
  wire axi_awvalid_i_1_n_0;
  wire axi_begin0;
  wire axi_begin_i_3_n_0;
  wire axi_bready_i_1_n_0;
  wire axi_data;
  wire axi_done;
  wire axi_done_i_1_n_0;
  wire axi_done_i_2_n_0;
  wire axi_done_i_3_n_0;
  wire \axi_resp[0]_i_1_n_0 ;
  wire \axi_resp[1]_i_1_n_0 ;
  wire \axi_resp[1]_i_2_n_0 ;
  wire \axi_resp_reg_n_0_[0] ;
  wire \axi_resp_reg_n_0_[1] ;
  wire axi_rready_i_1_n_0;
  wire axi_wnr_i_1_n_0;
  wire axi_wvalid_i_1_n_0;
  wire [7:0]in_port;
  wire \in_port[0]_INST_0_i_1_n_0 ;
  wire \in_port[0]_INST_0_i_2_n_0 ;
  wire \in_port[0]_INST_0_i_3_n_0 ;
  wire \in_port[0]_INST_0_i_4_n_0 ;
  wire \in_port[1]_INST_0_i_1_n_0 ;
  wire \in_port[1]_INST_0_i_2_n_0 ;
  wire \in_port[1]_INST_0_i_3_n_0 ;
  wire \in_port[1]_INST_0_i_4_n_0 ;
  wire \in_port[2]_INST_0_i_1_n_0 ;
  wire \in_port[2]_INST_0_i_2_n_0 ;
  wire \in_port[2]_INST_0_i_3_n_0 ;
  wire \in_port[2]_INST_0_i_4_n_0 ;
  wire \in_port[3]_INST_0_i_1_n_0 ;
  wire \in_port[3]_INST_0_i_2_n_0 ;
  wire \in_port[3]_INST_0_i_3_n_0 ;
  wire \in_port[3]_INST_0_i_4_n_0 ;
  wire \in_port[4]_INST_0_i_1_n_0 ;
  wire \in_port[4]_INST_0_i_2_n_0 ;
  wire \in_port[4]_INST_0_i_3_n_0 ;
  wire \in_port[4]_INST_0_i_4_n_0 ;
  wire \in_port[5]_INST_0_i_1_n_0 ;
  wire \in_port[5]_INST_0_i_4_n_0 ;
  wire \in_port[6]_INST_0_i_1_n_0 ;
  wire \in_port[6]_INST_0_i_2_n_0 ;
  wire \in_port[6]_INST_0_i_3_n_0 ;
  wire \in_port[6]_INST_0_i_4_n_0 ;
  wire \in_port[7]_INST_0_i_1_n_0 ;
  wire \in_port[7]_INST_0_i_2_n_0 ;
  wire \in_port[7]_INST_0_i_3_n_0 ;
  wire \in_port[7]_INST_0_i_5_n_0 ;
  wire m_axi_aclk;
  wire m_axi_aresetn;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [12:0]m_axi_awaddr;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [7:0]out_port;
  wire p_0_in;
  wire p_4_out;
  wire p_9_out;
  wire [1:0]\picoblaze_register_map[16]_0 ;
  wire [7:0]port_id;
  wire port_id_0_sn_1;
  wire port_id_1_sn_1;
  wire port_id_3_sn_1;
  wire write_strobe;

  assign port_id_0_sn_1 = port_id_0_sp_1;
  assign port_id_1_sn_1 = port_id_1_sp_1;
  assign port_id_3_sn_1 = port_id_3_sp_1;
  FDRE #(
    .INIT(1'b0)) 
    \AL[0].axi_address_reg[0] 
       (.C(m_axi_aclk),
        .CE(p_9_out),
        .D(out_port[0]),
        .Q(m_axi_awaddr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AL[10].axi_address_reg[10] 
       (.C(m_axi_aclk),
        .CE(p_4_out),
        .D(out_port[2]),
        .Q(m_axi_awaddr[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AL[11].axi_address_reg[11] 
       (.C(m_axi_aclk),
        .CE(p_4_out),
        .D(out_port[3]),
        .Q(m_axi_awaddr[11]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \AL[12].axi_address[12]_i_1 
       (.I0(\AL[12].axi_address[12]_i_2_n_0 ),
        .I1(port_id[0]),
        .I2(port_id[3]),
        .I3(port_id[1]),
        .O(p_4_out));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \AL[12].axi_address[12]_i_2 
       (.I0(port_id[4]),
        .I1(port_id[2]),
        .I2(port_id[6]),
        .I3(port_id[7]),
        .I4(port_id[5]),
        .I5(write_strobe),
        .O(\AL[12].axi_address[12]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \AL[12].axi_address_reg[12] 
       (.C(m_axi_aclk),
        .CE(p_4_out),
        .D(out_port[4]),
        .Q(m_axi_awaddr[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AL[1].axi_address_reg[1] 
       (.C(m_axi_aclk),
        .CE(p_9_out),
        .D(out_port[1]),
        .Q(m_axi_awaddr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AL[2].axi_address_reg[2] 
       (.C(m_axi_aclk),
        .CE(p_9_out),
        .D(out_port[2]),
        .Q(m_axi_awaddr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AL[3].axi_address_reg[3] 
       (.C(m_axi_aclk),
        .CE(p_9_out),
        .D(out_port[3]),
        .Q(m_axi_awaddr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AL[4].axi_address_reg[4] 
       (.C(m_axi_aclk),
        .CE(p_9_out),
        .D(out_port[4]),
        .Q(m_axi_awaddr[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AL[5].axi_address_reg[5] 
       (.C(m_axi_aclk),
        .CE(p_9_out),
        .D(out_port[5]),
        .Q(m_axi_awaddr[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AL[6].axi_address_reg[6] 
       (.C(m_axi_aclk),
        .CE(p_9_out),
        .D(out_port[6]),
        .Q(m_axi_awaddr[6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0020)) 
    \AL[7].axi_address[7]_i_1 
       (.I0(\AL[12].axi_address[12]_i_2_n_0 ),
        .I1(port_id[0]),
        .I2(port_id[3]),
        .I3(port_id[1]),
        .O(p_9_out));
  FDRE #(
    .INIT(1'b0)) 
    \AL[7].axi_address_reg[7] 
       (.C(m_axi_aclk),
        .CE(p_9_out),
        .D(out_port[7]),
        .Q(m_axi_awaddr[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AL[8].axi_address_reg[8] 
       (.C(m_axi_aclk),
        .CE(p_4_out),
        .D(out_port[0]),
        .Q(m_axi_awaddr[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AL[9].axi_address_reg[9] 
       (.C(m_axi_aclk),
        .CE(p_4_out),
        .D(out_port[1]),
        .Q(m_axi_awaddr[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[0].axi_data[0]_i_1 
       (.I0(m_axi_rdata[0]),
        .I1(out_port[0]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[0].axi_data[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[0].axi_data_reg[0] 
       (.C(m_axi_aclk),
        .CE(axi_data),
        .D(\DL[0].axi_data[0]_i_1_n_0 ),
        .Q(m_axi_wdata[0]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[10].axi_data[10]_i_1 
       (.I0(m_axi_rdata[10]),
        .I1(out_port[2]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[10].axi_data[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[10].axi_data_reg[10] 
       (.C(m_axi_aclk),
        .CE(\DL[15].axi_data[15]_i_1_n_0 ),
        .D(\DL[10].axi_data[10]_i_1_n_0 ),
        .Q(m_axi_wdata[10]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[11].axi_data[11]_i_1 
       (.I0(m_axi_rdata[11]),
        .I1(out_port[3]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[11].axi_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[11].axi_data_reg[11] 
       (.C(m_axi_aclk),
        .CE(\DL[15].axi_data[15]_i_1_n_0 ),
        .D(\DL[11].axi_data[11]_i_1_n_0 ),
        .Q(m_axi_wdata[11]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[12].axi_data[12]_i_1 
       (.I0(m_axi_rdata[12]),
        .I1(out_port[4]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[12].axi_data[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[12].axi_data_reg[12] 
       (.C(m_axi_aclk),
        .CE(\DL[15].axi_data[15]_i_1_n_0 ),
        .D(\DL[12].axi_data[12]_i_1_n_0 ),
        .Q(m_axi_wdata[12]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[13].axi_data[13]_i_1 
       (.I0(m_axi_rdata[13]),
        .I1(out_port[5]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[13].axi_data[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[13].axi_data_reg[13] 
       (.C(m_axi_aclk),
        .CE(\DL[15].axi_data[15]_i_1_n_0 ),
        .D(\DL[13].axi_data[13]_i_1_n_0 ),
        .Q(m_axi_wdata[13]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[14].axi_data[14]_i_1 
       (.I0(m_axi_rdata[14]),
        .I1(out_port[6]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[14].axi_data[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[14].axi_data_reg[14] 
       (.C(m_axi_aclk),
        .CE(\DL[15].axi_data[15]_i_1_n_0 ),
        .D(\DL[14].axi_data[14]_i_1_n_0 ),
        .Q(m_axi_wdata[14]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF020002000200)) 
    \DL[15].axi_data[15]_i_1 
       (.I0(port_id[0]),
        .I1(port_id[3]),
        .I2(port_id[1]),
        .I3(\AL[12].axi_address[12]_i_2_n_0 ),
        .I4(m_axi_rready),
        .I5(m_axi_rvalid),
        .O(\DL[15].axi_data[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[15].axi_data[15]_i_2 
       (.I0(m_axi_rdata[15]),
        .I1(out_port[7]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[15].axi_data[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[15].axi_data_reg[15] 
       (.C(m_axi_aclk),
        .CE(\DL[15].axi_data[15]_i_1_n_0 ),
        .D(\DL[15].axi_data[15]_i_2_n_0 ),
        .Q(m_axi_wdata[15]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[16].axi_data[16]_i_1 
       (.I0(m_axi_rdata[16]),
        .I1(out_port[0]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[16].axi_data[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[16].axi_data_reg[16] 
       (.C(m_axi_aclk),
        .CE(\DL[23].axi_data[23]_i_1_n_0 ),
        .D(\DL[16].axi_data[16]_i_1_n_0 ),
        .Q(m_axi_wdata[16]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[17].axi_data[17]_i_1 
       (.I0(m_axi_rdata[17]),
        .I1(out_port[1]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[17].axi_data[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[17].axi_data_reg[17] 
       (.C(m_axi_aclk),
        .CE(\DL[23].axi_data[23]_i_1_n_0 ),
        .D(\DL[17].axi_data[17]_i_1_n_0 ),
        .Q(m_axi_wdata[17]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[18].axi_data[18]_i_1 
       (.I0(m_axi_rdata[18]),
        .I1(out_port[2]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[18].axi_data[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[18].axi_data_reg[18] 
       (.C(m_axi_aclk),
        .CE(\DL[23].axi_data[23]_i_1_n_0 ),
        .D(\DL[18].axi_data[18]_i_1_n_0 ),
        .Q(m_axi_wdata[18]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[19].axi_data[19]_i_1 
       (.I0(m_axi_rdata[19]),
        .I1(out_port[3]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[19].axi_data[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[19].axi_data_reg[19] 
       (.C(m_axi_aclk),
        .CE(\DL[23].axi_data[23]_i_1_n_0 ),
        .D(\DL[19].axi_data[19]_i_1_n_0 ),
        .Q(m_axi_wdata[19]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[1].axi_data[1]_i_1 
       (.I0(m_axi_rdata[1]),
        .I1(out_port[1]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[1].axi_data[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[1].axi_data_reg[1] 
       (.C(m_axi_aclk),
        .CE(axi_data),
        .D(\DL[1].axi_data[1]_i_1_n_0 ),
        .Q(m_axi_wdata[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[20].axi_data[20]_i_1 
       (.I0(m_axi_rdata[20]),
        .I1(out_port[4]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[20].axi_data[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[20].axi_data_reg[20] 
       (.C(m_axi_aclk),
        .CE(\DL[23].axi_data[23]_i_1_n_0 ),
        .D(\DL[20].axi_data[20]_i_1_n_0 ),
        .Q(m_axi_wdata[20]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[21].axi_data[21]_i_1 
       (.I0(m_axi_rdata[21]),
        .I1(out_port[5]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[21].axi_data[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[21].axi_data_reg[21] 
       (.C(m_axi_aclk),
        .CE(\DL[23].axi_data[23]_i_1_n_0 ),
        .D(\DL[21].axi_data[21]_i_1_n_0 ),
        .Q(m_axi_wdata[21]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[22].axi_data[22]_i_1 
       (.I0(m_axi_rdata[22]),
        .I1(out_port[6]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[22].axi_data[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[22].axi_data_reg[22] 
       (.C(m_axi_aclk),
        .CE(\DL[23].axi_data[23]_i_1_n_0 ),
        .D(\DL[22].axi_data[22]_i_1_n_0 ),
        .Q(m_axi_wdata[22]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF040004000400)) 
    \DL[23].axi_data[23]_i_1 
       (.I0(port_id[3]),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .I3(\AL[12].axi_address[12]_i_2_n_0 ),
        .I4(m_axi_rready),
        .I5(m_axi_rvalid),
        .O(\DL[23].axi_data[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[23].axi_data[23]_i_2 
       (.I0(m_axi_rdata[23]),
        .I1(out_port[7]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[23].axi_data[23]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[23].axi_data_reg[23] 
       (.C(m_axi_aclk),
        .CE(\DL[23].axi_data[23]_i_1_n_0 ),
        .D(\DL[23].axi_data[23]_i_2_n_0 ),
        .Q(m_axi_wdata[23]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[24].axi_data[24]_i_1 
       (.I0(m_axi_rdata[24]),
        .I1(out_port[0]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[24].axi_data[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[24].axi_data_reg[24] 
       (.C(m_axi_aclk),
        .CE(\DL[31].axi_data[31]_i_1_n_0 ),
        .D(\DL[24].axi_data[24]_i_1_n_0 ),
        .Q(m_axi_wdata[24]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[25].axi_data[25]_i_1 
       (.I0(m_axi_rdata[25]),
        .I1(out_port[1]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[25].axi_data[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[25].axi_data_reg[25] 
       (.C(m_axi_aclk),
        .CE(\DL[31].axi_data[31]_i_1_n_0 ),
        .D(\DL[25].axi_data[25]_i_1_n_0 ),
        .Q(m_axi_wdata[25]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[26].axi_data[26]_i_1 
       (.I0(m_axi_rdata[26]),
        .I1(out_port[2]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[26].axi_data[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[26].axi_data_reg[26] 
       (.C(m_axi_aclk),
        .CE(\DL[31].axi_data[31]_i_1_n_0 ),
        .D(\DL[26].axi_data[26]_i_1_n_0 ),
        .Q(m_axi_wdata[26]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[27].axi_data[27]_i_1 
       (.I0(m_axi_rdata[27]),
        .I1(out_port[3]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[27].axi_data[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[27].axi_data_reg[27] 
       (.C(m_axi_aclk),
        .CE(\DL[31].axi_data[31]_i_1_n_0 ),
        .D(\DL[27].axi_data[27]_i_1_n_0 ),
        .Q(m_axi_wdata[27]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[28].axi_data[28]_i_1 
       (.I0(m_axi_rdata[28]),
        .I1(out_port[4]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[28].axi_data[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[28].axi_data_reg[28] 
       (.C(m_axi_aclk),
        .CE(\DL[31].axi_data[31]_i_1_n_0 ),
        .D(\DL[28].axi_data[28]_i_1_n_0 ),
        .Q(m_axi_wdata[28]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[29].axi_data[29]_i_1 
       (.I0(m_axi_rdata[29]),
        .I1(out_port[5]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[29].axi_data[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[29].axi_data_reg[29] 
       (.C(m_axi_aclk),
        .CE(\DL[31].axi_data[31]_i_1_n_0 ),
        .D(\DL[29].axi_data[29]_i_1_n_0 ),
        .Q(m_axi_wdata[29]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[2].axi_data[2]_i_1 
       (.I0(m_axi_rdata[2]),
        .I1(out_port[2]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[2].axi_data[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[2].axi_data_reg[2] 
       (.C(m_axi_aclk),
        .CE(axi_data),
        .D(\DL[2].axi_data[2]_i_1_n_0 ),
        .Q(m_axi_wdata[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[30].axi_data[30]_i_1 
       (.I0(m_axi_rdata[30]),
        .I1(out_port[6]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[30].axi_data[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[30].axi_data_reg[30] 
       (.C(m_axi_aclk),
        .CE(\DL[31].axi_data[31]_i_1_n_0 ),
        .D(\DL[30].axi_data[30]_i_1_n_0 ),
        .Q(m_axi_wdata[30]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \DL[31].axi_data[31]_i_1 
       (.I0(port_id[3]),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .I3(\AL[12].axi_address[12]_i_2_n_0 ),
        .I4(m_axi_rready),
        .I5(m_axi_rvalid),
        .O(\DL[31].axi_data[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[31].axi_data[31]_i_2 
       (.I0(m_axi_rdata[31]),
        .I1(out_port[7]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[31].axi_data[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[31].axi_data_reg[31] 
       (.C(m_axi_aclk),
        .CE(\DL[31].axi_data[31]_i_1_n_0 ),
        .D(\DL[31].axi_data[31]_i_2_n_0 ),
        .Q(m_axi_wdata[31]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[3].axi_data[3]_i_1 
       (.I0(m_axi_rdata[3]),
        .I1(out_port[3]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[3].axi_data[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[3].axi_data_reg[3] 
       (.C(m_axi_aclk),
        .CE(axi_data),
        .D(\DL[3].axi_data[3]_i_1_n_0 ),
        .Q(m_axi_wdata[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[4].axi_data[4]_i_1 
       (.I0(m_axi_rdata[4]),
        .I1(out_port[4]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[4].axi_data[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[4].axi_data_reg[4] 
       (.C(m_axi_aclk),
        .CE(axi_data),
        .D(\DL[4].axi_data[4]_i_1_n_0 ),
        .Q(m_axi_wdata[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[5].axi_data[5]_i_1 
       (.I0(m_axi_rdata[5]),
        .I1(out_port[5]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[5].axi_data[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[5].axi_data_reg[5] 
       (.C(m_axi_aclk),
        .CE(axi_data),
        .D(\DL[5].axi_data[5]_i_1_n_0 ),
        .Q(m_axi_wdata[5]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[6].axi_data[6]_i_1 
       (.I0(m_axi_rdata[6]),
        .I1(out_port[6]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[6].axi_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[6].axi_data_reg[6] 
       (.C(m_axi_aclk),
        .CE(axi_data),
        .D(\DL[6].axi_data[6]_i_1_n_0 ),
        .Q(m_axi_wdata[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF010001000100)) 
    \DL[7].axi_data[7]_i_1 
       (.I0(port_id[3]),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .I3(\AL[12].axi_address[12]_i_2_n_0 ),
        .I4(m_axi_rready),
        .I5(m_axi_rvalid),
        .O(axi_data));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[7].axi_data[7]_i_2 
       (.I0(m_axi_rdata[7]),
        .I1(out_port[7]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[7].axi_data[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[7].axi_data_reg[7] 
       (.C(m_axi_aclk),
        .CE(axi_data),
        .D(\DL[7].axi_data[7]_i_2_n_0 ),
        .Q(m_axi_wdata[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[8].axi_data[8]_i_1 
       (.I0(m_axi_rdata[8]),
        .I1(out_port[0]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[8].axi_data[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[8].axi_data_reg[8] 
       (.C(m_axi_aclk),
        .CE(\DL[15].axi_data[15]_i_1_n_0 ),
        .D(\DL[8].axi_data[8]_i_1_n_0 ),
        .Q(m_axi_wdata[8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hACCC)) 
    \DL[9].axi_data[9]_i_1 
       (.I0(m_axi_rdata[9]),
        .I1(out_port[1]),
        .I2(m_axi_rvalid),
        .I3(m_axi_rready),
        .O(\DL[9].axi_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DL[9].axi_data_reg[9] 
       (.C(m_axi_aclk),
        .CE(\DL[15].axi_data[15]_i_1_n_0 ),
        .D(\DL[9].axi_data[9]_i_1_n_0 ),
        .Q(m_axi_wdata[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    axi_active_i_1
       (.I0(axi_begin_i_3_n_0),
        .I1(axi_done_i_3_n_0),
        .I2(out_port[0]),
        .I3(axi_done_i_2_n_0),
        .I4(axi_active),
        .O(axi_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_active_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(axi_active_i_1_n_0),
        .Q(axi_active),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h0020AA20)) 
    axi_arvalid_i_1
       (.I0(m_axi_aresetn),
        .I1(\picoblaze_register_map[16]_0 [1]),
        .I2(\picoblaze_register_map[16]_0 [0]),
        .I3(m_axi_arvalid),
        .I4(m_axi_arready),
        .O(axi_arvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arvalid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(m_axi_arvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0080AA80)) 
    axi_awvalid_i_1
       (.I0(m_axi_aresetn),
        .I1(\picoblaze_register_map[16]_0 [0]),
        .I2(\picoblaze_register_map[16]_0 [1]),
        .I3(m_axi_awvalid),
        .I4(m_axi_awready),
        .O(axi_awvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awvalid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(axi_awvalid_i_1_n_0),
        .Q(m_axi_awvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_begin_i_1
       (.I0(m_axi_aresetn),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    axi_begin_i_2
       (.I0(out_port[0]),
        .I1(write_strobe),
        .I2(port_id[5]),
        .I3(port_id[7]),
        .I4(port_id[6]),
        .I5(axi_begin_i_3_n_0),
        .O(axi_begin0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    axi_begin_i_3
       (.I0(port_id[0]),
        .I1(port_id[1]),
        .I2(port_id[3]),
        .I3(port_id[4]),
        .I4(port_id[2]),
        .O(axi_begin_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_begin_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(axi_begin0),
        .Q(\picoblaze_register_map[16]_0 [0]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h0080AA80)) 
    axi_bready_i_1
       (.I0(m_axi_aresetn),
        .I1(\picoblaze_register_map[16]_0 [0]),
        .I2(\picoblaze_register_map[16]_0 [1]),
        .I3(m_axi_bready),
        .I4(m_axi_bvalid),
        .O(axi_bready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bready_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(axi_bready_i_1_n_0),
        .Q(m_axi_bready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF5CCC5)) 
    axi_done_i_1
       (.I0(out_port[0]),
        .I1(axi_done_i_2_n_0),
        .I2(axi_done_i_3_n_0),
        .I3(axi_begin_i_3_n_0),
        .I4(axi_done),
        .O(axi_done_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    axi_done_i_2
       (.I0(m_axi_bready),
        .I1(m_axi_bvalid),
        .I2(m_axi_rready),
        .I3(m_axi_rvalid),
        .O(axi_done_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    axi_done_i_3
       (.I0(write_strobe),
        .I1(port_id[5]),
        .I2(port_id[7]),
        .I3(port_id[6]),
        .O(axi_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_done_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(axi_done_i_1_n_0),
        .Q(axi_done),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAFFFCCCCA000CCCC)) 
    \axi_resp[0]_i_1 
       (.I0(m_axi_bresp[0]),
        .I1(m_axi_rresp[0]),
        .I2(m_axi_bready),
        .I3(m_axi_bvalid),
        .I4(\axi_resp[1]_i_2_n_0 ),
        .I5(\axi_resp_reg_n_0_[0] ),
        .O(\axi_resp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFCCCCA000CCCC)) 
    \axi_resp[1]_i_1 
       (.I0(m_axi_bresp[1]),
        .I1(m_axi_rresp[1]),
        .I2(m_axi_bready),
        .I3(m_axi_bvalid),
        .I4(\axi_resp[1]_i_2_n_0 ),
        .I5(\axi_resp_reg_n_0_[1] ),
        .O(\axi_resp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \axi_resp[1]_i_2 
       (.I0(m_axi_rvalid),
        .I1(m_axi_rready),
        .O(\axi_resp[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_resp_reg[0] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\axi_resp[0]_i_1_n_0 ),
        .Q(\axi_resp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_resp_reg[1] 
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(\axi_resp[1]_i_1_n_0 ),
        .Q(\axi_resp_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0020AA20)) 
    axi_rready_i_1
       (.I0(m_axi_aresetn),
        .I1(\picoblaze_register_map[16]_0 [1]),
        .I2(\picoblaze_register_map[16]_0 [0]),
        .I3(m_axi_rready),
        .I4(m_axi_rvalid),
        .O(axi_rready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rready_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(m_axi_rready),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hABA8)) 
    axi_wnr_i_1
       (.I0(\picoblaze_register_map[16]_0 [1]),
        .I1(axi_begin_i_3_n_0),
        .I2(axi_done_i_3_n_0),
        .I3(out_port[1]),
        .O(axi_wnr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wnr_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(axi_wnr_i_1_n_0),
        .Q(\picoblaze_register_map[16]_0 [1]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h0080AA80)) 
    axi_wvalid_i_1
       (.I0(m_axi_aresetn),
        .I1(\picoblaze_register_map[16]_0 [0]),
        .I2(\picoblaze_register_map[16]_0 [1]),
        .I3(m_axi_wvalid),
        .I4(m_axi_wready),
        .O(axi_wvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wvalid_reg
       (.C(m_axi_aclk),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(m_axi_wvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \in_port[0]_INST_0 
       (.I0(\in_port[0]_INST_0_i_1_n_0 ),
        .I1(\in_port[0]_INST_0_i_2_n_0 ),
        .I2(m_axi_wdata[8]),
        .I3(port_id_1_sn_1),
        .I4(\in_port[0]_INST_0_i_3_n_0 ),
        .I5(\in_port[0]_INST_0_i_4_n_0 ),
        .O(in_port[0]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \in_port[0]_INST_0_i_1 
       (.I0(\picoblaze_register_map[16]_0 [0]),
        .I1(port_id[2]),
        .I2(port_id[4]),
        .I3(port_id[3]),
        .I4(port_id[1]),
        .I5(port_id[0]),
        .O(\in_port[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100010100000000)) 
    \in_port[0]_INST_0_i_2 
       (.I0(port_id[3]),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .I3(port_id[2]),
        .I4(port_id[4]),
        .I5(m_axi_wdata[0]),
        .O(\in_port[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC0000F0AA00)) 
    \in_port[0]_INST_0_i_3 
       (.I0(m_axi_wdata[16]),
        .I1(m_axi_wdata[24]),
        .I2(m_axi_awaddr[0]),
        .I3(port_id[1]),
        .I4(port_id[3]),
        .I5(port_id[0]),
        .O(\in_port[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \in_port[0]_INST_0_i_4 
       (.I0(port_id[0]),
        .I1(port_id[3]),
        .I2(port_id[1]),
        .I3(m_axi_awaddr[8]),
        .O(\in_port[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \in_port[1]_INST_0 
       (.I0(\in_port[1]_INST_0_i_1_n_0 ),
        .I1(\in_port[1]_INST_0_i_2_n_0 ),
        .I2(m_axi_wdata[9]),
        .I3(port_id_1_sn_1),
        .I4(\in_port[1]_INST_0_i_3_n_0 ),
        .I5(\in_port[1]_INST_0_i_4_n_0 ),
        .O(in_port[1]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \in_port[1]_INST_0_i_1 
       (.I0(\picoblaze_register_map[16]_0 [1]),
        .I1(port_id[2]),
        .I2(port_id[4]),
        .I3(port_id[3]),
        .I4(port_id[1]),
        .I5(port_id[0]),
        .O(\in_port[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100010100000000)) 
    \in_port[1]_INST_0_i_2 
       (.I0(port_id[3]),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .I3(port_id[2]),
        .I4(port_id[4]),
        .I5(m_axi_wdata[1]),
        .O(\in_port[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC0000F0AA00)) 
    \in_port[1]_INST_0_i_3 
       (.I0(m_axi_wdata[17]),
        .I1(m_axi_wdata[25]),
        .I2(m_axi_awaddr[1]),
        .I3(port_id[1]),
        .I4(port_id[3]),
        .I5(port_id[0]),
        .O(\in_port[1]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \in_port[1]_INST_0_i_4 
       (.I0(port_id[0]),
        .I1(port_id[3]),
        .I2(port_id[1]),
        .I3(m_axi_awaddr[9]),
        .O(\in_port[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \in_port[2]_INST_0 
       (.I0(\in_port[2]_INST_0_i_1_n_0 ),
        .I1(\in_port[2]_INST_0_i_2_n_0 ),
        .I2(m_axi_wdata[10]),
        .I3(port_id_1_sn_1),
        .I4(\in_port[2]_INST_0_i_3_n_0 ),
        .I5(\in_port[2]_INST_0_i_4_n_0 ),
        .O(in_port[2]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \in_port[2]_INST_0_i_1 
       (.I0(axi_active),
        .I1(port_id[2]),
        .I2(port_id[4]),
        .I3(port_id[3]),
        .I4(port_id[1]),
        .I5(port_id[0]),
        .O(\in_port[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100010100000000)) 
    \in_port[2]_INST_0_i_2 
       (.I0(port_id[3]),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .I3(port_id[2]),
        .I4(port_id[4]),
        .I5(m_axi_wdata[2]),
        .O(\in_port[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC0000F0AA00)) 
    \in_port[2]_INST_0_i_3 
       (.I0(m_axi_wdata[18]),
        .I1(m_axi_wdata[26]),
        .I2(m_axi_awaddr[2]),
        .I3(port_id[1]),
        .I4(port_id[3]),
        .I5(port_id[0]),
        .O(\in_port[2]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \in_port[2]_INST_0_i_4 
       (.I0(port_id[0]),
        .I1(port_id[3]),
        .I2(port_id[1]),
        .I3(m_axi_awaddr[10]),
        .O(\in_port[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \in_port[3]_INST_0 
       (.I0(\in_port[3]_INST_0_i_1_n_0 ),
        .I1(\in_port[3]_INST_0_i_2_n_0 ),
        .I2(m_axi_wdata[11]),
        .I3(port_id_1_sn_1),
        .I4(\in_port[3]_INST_0_i_3_n_0 ),
        .I5(\in_port[3]_INST_0_i_4_n_0 ),
        .O(in_port[3]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \in_port[3]_INST_0_i_1 
       (.I0(axi_done),
        .I1(port_id[2]),
        .I2(port_id[4]),
        .I3(port_id[3]),
        .I4(port_id[1]),
        .I5(port_id[0]),
        .O(\in_port[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100010100000000)) 
    \in_port[3]_INST_0_i_2 
       (.I0(port_id[3]),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .I3(port_id[2]),
        .I4(port_id[4]),
        .I5(m_axi_wdata[3]),
        .O(\in_port[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC0000F0AA00)) 
    \in_port[3]_INST_0_i_3 
       (.I0(m_axi_wdata[19]),
        .I1(m_axi_wdata[27]),
        .I2(m_axi_awaddr[3]),
        .I3(port_id[1]),
        .I4(port_id[3]),
        .I5(port_id[0]),
        .O(\in_port[3]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \in_port[3]_INST_0_i_4 
       (.I0(port_id[0]),
        .I1(port_id[3]),
        .I2(port_id[1]),
        .I3(m_axi_awaddr[11]),
        .O(\in_port[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \in_port[4]_INST_0 
       (.I0(\in_port[4]_INST_0_i_1_n_0 ),
        .I1(\in_port[4]_INST_0_i_2_n_0 ),
        .I2(m_axi_wdata[12]),
        .I3(port_id_1_sn_1),
        .I4(\in_port[4]_INST_0_i_3_n_0 ),
        .I5(\in_port[4]_INST_0_i_4_n_0 ),
        .O(in_port[4]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \in_port[4]_INST_0_i_1 
       (.I0(\axi_resp_reg_n_0_[0] ),
        .I1(port_id[2]),
        .I2(port_id[4]),
        .I3(port_id[3]),
        .I4(port_id[1]),
        .I5(port_id[0]),
        .O(\in_port[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100010100000000)) 
    \in_port[4]_INST_0_i_2 
       (.I0(port_id[3]),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .I3(port_id[2]),
        .I4(port_id[4]),
        .I5(m_axi_wdata[4]),
        .O(\in_port[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000CC0000F0AA00)) 
    \in_port[4]_INST_0_i_3 
       (.I0(m_axi_wdata[20]),
        .I1(m_axi_wdata[28]),
        .I2(m_axi_awaddr[4]),
        .I3(port_id[1]),
        .I4(port_id[3]),
        .I5(port_id[0]),
        .O(\in_port[4]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \in_port[4]_INST_0_i_4 
       (.I0(port_id[0]),
        .I1(port_id[3]),
        .I2(port_id[1]),
        .I3(m_axi_awaddr[12]),
        .O(\in_port[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \in_port[5]_INST_0 
       (.I0(\in_port[5]_INST_0_i_1_n_0 ),
        .I1(port_id_1_sn_1),
        .I2(m_axi_wdata[13]),
        .I3(m_axi_wdata[5]),
        .I4(port_id_3_sn_1),
        .I5(\in_port[5]_INST_0_i_4_n_0 ),
        .O(in_port[5]));
  LUT6 #(
    .INIT(64'h0000CC0000F0AA00)) 
    \in_port[5]_INST_0_i_1 
       (.I0(m_axi_wdata[21]),
        .I1(m_axi_wdata[29]),
        .I2(m_axi_awaddr[5]),
        .I3(port_id[1]),
        .I4(port_id[3]),
        .I5(port_id[0]),
        .O(\in_port[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \in_port[5]_INST_0_i_4 
       (.I0(\axi_resp_reg_n_0_[1] ),
        .I1(port_id[2]),
        .I2(port_id[4]),
        .I3(port_id[3]),
        .I4(port_id[1]),
        .I5(port_id[0]),
        .O(\in_port[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \in_port[6]_INST_0 
       (.I0(\in_port[6]_INST_0_i_1_n_0 ),
        .I1(\in_port[6]_INST_0_i_2_n_0 ),
        .I2(\in_port[6]_INST_0_i_3_n_0 ),
        .I3(port_id_0_sn_1),
        .I4(m_axi_wdata[30]),
        .I5(\in_port[6]_INST_0_i_4_n_0 ),
        .O(in_port[6]));
  LUT6 #(
    .INIT(64'h0100010100000000)) 
    \in_port[6]_INST_0_i_1 
       (.I0(port_id[3]),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .I3(port_id[2]),
        .I4(port_id[4]),
        .I5(m_axi_wdata[6]),
        .O(\in_port[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \in_port[6]_INST_0_i_2 
       (.I0(port_id[1]),
        .I1(port_id[3]),
        .I2(port_id[0]),
        .I3(m_axi_wdata[14]),
        .O(\in_port[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \in_port[6]_INST_0_i_3 
       (.I0(port_id[0]),
        .I1(port_id[1]),
        .I2(port_id[3]),
        .I3(m_axi_wdata[22]),
        .O(\in_port[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \in_port[6]_INST_0_i_4 
       (.I0(port_id[0]),
        .I1(port_id[3]),
        .I2(port_id[1]),
        .I3(m_axi_awaddr[6]),
        .O(\in_port[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \in_port[7]_INST_0 
       (.I0(\in_port[7]_INST_0_i_1_n_0 ),
        .I1(\in_port[7]_INST_0_i_2_n_0 ),
        .I2(\in_port[7]_INST_0_i_3_n_0 ),
        .I3(port_id_0_sn_1),
        .I4(m_axi_wdata[31]),
        .I5(\in_port[7]_INST_0_i_5_n_0 ),
        .O(in_port[7]));
  LUT6 #(
    .INIT(64'h0100010100000000)) 
    \in_port[7]_INST_0_i_1 
       (.I0(port_id[3]),
        .I1(port_id[1]),
        .I2(port_id[0]),
        .I3(port_id[2]),
        .I4(port_id[4]),
        .I5(m_axi_wdata[7]),
        .O(\in_port[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \in_port[7]_INST_0_i_2 
       (.I0(port_id[1]),
        .I1(port_id[3]),
        .I2(port_id[0]),
        .I3(m_axi_wdata[15]),
        .O(\in_port[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \in_port[7]_INST_0_i_3 
       (.I0(port_id[0]),
        .I1(port_id[1]),
        .I2(port_id[3]),
        .I3(m_axi_wdata[23]),
        .O(\in_port[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \in_port[7]_INST_0_i_5 
       (.I0(port_id[0]),
        .I1(port_id[3]),
        .I2(port_id[1]),
        .I3(m_axi_awaddr[7]),
        .O(\in_port[7]_INST_0_i_5_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
