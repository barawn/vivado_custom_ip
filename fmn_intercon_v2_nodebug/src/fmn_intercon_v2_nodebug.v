//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Fri Apr 30 14:52:53 2021
//Host        : DESKTOP-ELJAE7D running 64-bit major release  (build 9200)
//Command     : generate_target fmn_intercon_v2_nodebug.bd
//Design      : fmn_intercon_v2_nodebug
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "fmn_intercon_v2_nodebug,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fmn_intercon_v2_nodebug,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "fmn_intercon_v2_nodebug.hwdef" *) 
module fmn_intercon_v2_nodebug
   (DM_AXI_araddr,
    DM_AXI_arburst,
    DM_AXI_arcache,
    DM_AXI_arid,
    DM_AXI_arlen,
    DM_AXI_arlock,
    DM_AXI_arprot,
    DM_AXI_arqos,
    DM_AXI_arready,
    DM_AXI_arsize,
    DM_AXI_arvalid,
    DM_AXI_awaddr,
    DM_AXI_awburst,
    DM_AXI_awcache,
    DM_AXI_awid,
    DM_AXI_awlen,
    DM_AXI_awlock,
    DM_AXI_awprot,
    DM_AXI_awqos,
    DM_AXI_awready,
    DM_AXI_awsize,
    DM_AXI_awvalid,
    DM_AXI_bid,
    DM_AXI_bready,
    DM_AXI_bresp,
    DM_AXI_bvalid,
    DM_AXI_rdata,
    DM_AXI_rid,
    DM_AXI_rlast,
    DM_AXI_rready,
    DM_AXI_rresp,
    DM_AXI_rvalid,
    DM_AXI_wdata,
    DM_AXI_wlast,
    DM_AXI_wready,
    DM_AXI_wstrb,
    DM_AXI_wvalid,
    MEM_AXI_araddr,
    MEM_AXI_arburst,
    MEM_AXI_arcache,
    MEM_AXI_arid,
    MEM_AXI_arlen,
    MEM_AXI_arlock,
    MEM_AXI_arprot,
    MEM_AXI_arqos,
    MEM_AXI_arready,
    MEM_AXI_arregion,
    MEM_AXI_arsize,
    MEM_AXI_arvalid,
    MEM_AXI_awaddr,
    MEM_AXI_awburst,
    MEM_AXI_awcache,
    MEM_AXI_awid,
    MEM_AXI_awlen,
    MEM_AXI_awlock,
    MEM_AXI_awprot,
    MEM_AXI_awqos,
    MEM_AXI_awready,
    MEM_AXI_awregion,
    MEM_AXI_awsize,
    MEM_AXI_awvalid,
    MEM_AXI_bid,
    MEM_AXI_bready,
    MEM_AXI_bresp,
    MEM_AXI_bvalid,
    MEM_AXI_rdata,
    MEM_AXI_rid,
    MEM_AXI_rlast,
    MEM_AXI_rready,
    MEM_AXI_rresp,
    MEM_AXI_rvalid,
    MEM_AXI_wdata,
    MEM_AXI_wlast,
    MEM_AXI_wready,
    MEM_AXI_wstrb,
    MEM_AXI_wvalid,
    SN_araddr,
    SN_arburst,
    SN_arcache,
    SN_arlen,
    SN_arprot,
    SN_arready,
    SN_arsize,
    SN_arvalid,
    SN_awaddr,
    SN_awburst,
    SN_awcache,
    SN_awlen,
    SN_awprot,
    SN_awready,
    SN_awsize,
    SN_awvalid,
    SN_bready,
    SN_bresp,
    SN_bvalid,
    SN_rdata,
    SN_rlast,
    SN_rready,
    SN_rresp,
    SN_rvalid,
    SN_wdata,
    SN_wlast,
    SN_wready,
    SN_wstrb,
    SN_wvalid,
    aclk_0,
    aresetn_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DM_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, DATA_WIDTH 512, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]DM_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI ARBURST" *) input [1:0]DM_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI ARCACHE" *) input [3:0]DM_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI ARID" *) input [3:0]DM_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI ARLEN" *) input [7:0]DM_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI ARLOCK" *) input [0:0]DM_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI ARPROT" *) input [2:0]DM_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI ARQOS" *) input [3:0]DM_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI ARREADY" *) output [0:0]DM_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI ARSIZE" *) input [2:0]DM_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI ARVALID" *) input [0:0]DM_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI AWADDR" *) input [31:0]DM_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI AWBURST" *) input [1:0]DM_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI AWCACHE" *) input [3:0]DM_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI AWID" *) input [3:0]DM_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI AWLEN" *) input [7:0]DM_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI AWLOCK" *) input [0:0]DM_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI AWPROT" *) input [2:0]DM_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI AWQOS" *) input [3:0]DM_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI AWREADY" *) output [0:0]DM_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI AWSIZE" *) input [2:0]DM_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI AWVALID" *) input [0:0]DM_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI BID" *) output [3:0]DM_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI BREADY" *) input [0:0]DM_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI BRESP" *) output [1:0]DM_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI BVALID" *) output [0:0]DM_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI RDATA" *) output [511:0]DM_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI RID" *) output [3:0]DM_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI RLAST" *) output [0:0]DM_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI RREADY" *) input [0:0]DM_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI RRESP" *) output [1:0]DM_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI RVALID" *) output [0:0]DM_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI WDATA" *) input [511:0]DM_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI WLAST" *) input [0:0]DM_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI WREADY" *) output [0:0]DM_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI WSTRB" *) input [63:0]DM_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 DM_AXI WVALID" *) input [0:0]DM_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MEM_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, DATA_WIDTH 512, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]MEM_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARBURST" *) output [1:0]MEM_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARCACHE" *) output [3:0]MEM_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARID" *) output [3:0]MEM_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARLEN" *) output [7:0]MEM_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARLOCK" *) output [0:0]MEM_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARPROT" *) output [2:0]MEM_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARQOS" *) output [3:0]MEM_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARREADY" *) input [0:0]MEM_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARREGION" *) output [3:0]MEM_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARSIZE" *) output [2:0]MEM_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARVALID" *) output [0:0]MEM_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWADDR" *) output [31:0]MEM_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWBURST" *) output [1:0]MEM_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWCACHE" *) output [3:0]MEM_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWID" *) output [3:0]MEM_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWLEN" *) output [7:0]MEM_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWLOCK" *) output [0:0]MEM_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWPROT" *) output [2:0]MEM_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWQOS" *) output [3:0]MEM_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWREADY" *) input [0:0]MEM_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWREGION" *) output [3:0]MEM_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWSIZE" *) output [2:0]MEM_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWVALID" *) output [0:0]MEM_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI BID" *) input [3:0]MEM_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI BREADY" *) output [0:0]MEM_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI BRESP" *) input [1:0]MEM_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI BVALID" *) input [0:0]MEM_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI RDATA" *) input [511:0]MEM_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI RID" *) input [3:0]MEM_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI RLAST" *) input [0:0]MEM_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI RREADY" *) output [0:0]MEM_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI RRESP" *) input [1:0]MEM_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI RVALID" *) input [0:0]MEM_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI WDATA" *) output [511:0]MEM_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI WLAST" *) output [0:0]MEM_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI WREADY" *) input [0:0]MEM_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI WSTRB" *) output [63:0]MEM_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI WVALID" *) output [0:0]MEM_AXI_wvalid;
  input [255:0]SN_araddr;
  input [15:0]SN_arburst;
  input [31:0]SN_arcache;
  input [63:0]SN_arlen;
  input [23:0]SN_arprot;
  output [7:0]SN_arready;
  input [23:0]SN_arsize;
  input [7:0]SN_arvalid;
  input [255:0]SN_awaddr;
  input [15:0]SN_awburst;
  input [31:0]SN_awcache;
  input [63:0]SN_awlen;
  input [23:0]SN_awprot;
  output [7:0]SN_awready;
  input [23:0]SN_awsize;
  input [7:0]SN_awvalid;
  input [7:0]SN_bready;
  output [15:0]SN_bresp;
  output [7:0]SN_bvalid;
  output [4095:0]SN_rdata;
  output [7:0]SN_rlast;
  input [7:0]SN_rready;
  output [15:0]SN_rresp;
  output [7:0]SN_rvalid;
  input [4095:0]SN_wdata;
  input [7:0]SN_wlast;
  output [7:0]SN_wready;
  input [511:0]SN_wstrb;
  input [7:0]SN_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_BUSIF MEM_AXI:DM_AXI, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input aclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn_0;

  wire [31:0]S08_AXI_0_1_ARADDR;
  wire [1:0]S08_AXI_0_1_ARBURST;
  wire [3:0]S08_AXI_0_1_ARCACHE;
  wire [3:0]S08_AXI_0_1_ARID;
  wire [7:0]S08_AXI_0_1_ARLEN;
  wire [0:0]S08_AXI_0_1_ARLOCK;
  wire [2:0]S08_AXI_0_1_ARPROT;
  wire [3:0]S08_AXI_0_1_ARQOS;
  wire [8:8]S08_AXI_0_1_ARREADY;
  wire [2:0]S08_AXI_0_1_ARSIZE;
  wire [0:0]S08_AXI_0_1_ARVALID;
  wire [31:0]S08_AXI_0_1_AWADDR;
  wire [1:0]S08_AXI_0_1_AWBURST;
  wire [3:0]S08_AXI_0_1_AWCACHE;
  wire [3:0]S08_AXI_0_1_AWID;
  wire [7:0]S08_AXI_0_1_AWLEN;
  wire [0:0]S08_AXI_0_1_AWLOCK;
  wire [2:0]S08_AXI_0_1_AWPROT;
  wire [3:0]S08_AXI_0_1_AWQOS;
  wire [8:8]S08_AXI_0_1_AWREADY;
  wire [2:0]S08_AXI_0_1_AWSIZE;
  wire [0:0]S08_AXI_0_1_AWVALID;
  wire [35:32]S08_AXI_0_1_BID;
  wire [0:0]S08_AXI_0_1_BREADY;
  wire [17:16]S08_AXI_0_1_BRESP;
  wire [8:8]S08_AXI_0_1_BVALID;
  wire [4607:4096]S08_AXI_0_1_RDATA;
  wire [35:32]S08_AXI_0_1_RID;
  wire [8:8]S08_AXI_0_1_RLAST;
  wire [0:0]S08_AXI_0_1_RREADY;
  wire [17:16]S08_AXI_0_1_RRESP;
  wire [8:8]S08_AXI_0_1_RVALID;
  wire [511:0]S08_AXI_0_1_WDATA;
  wire [0:0]S08_AXI_0_1_WLAST;
  wire [8:8]S08_AXI_0_1_WREADY;
  wire [63:0]S08_AXI_0_1_WSTRB;
  wire [0:0]S08_AXI_0_1_WVALID;
  wire [255:0]SN_araddr_0_1;
  wire [15:0]SN_arburst_0_1;
  wire [31:0]SN_arcache_0_1;
  wire [63:0]SN_arlen_0_1;
  wire [23:0]SN_arprot_0_1;
  wire [23:0]SN_arsize_0_1;
  wire [7:0]SN_arvalid_0_1;
  wire [255:0]SN_awaddr_0_1;
  wire [15:0]SN_awburst_0_1;
  wire [31:0]SN_awcache_0_1;
  wire [63:0]SN_awlen_0_1;
  wire [23:0]SN_awprot_0_1;
  wire [23:0]SN_awsize_0_1;
  wire [7:0]SN_awvalid_0_1;
  wire [7:0]SN_bready_0_1;
  wire [7:0]SN_rready_1_1;
  wire [4095:0]SN_wdata_0_1;
  wire [7:0]SN_wlast_0_1;
  wire [511:0]SN_wstrb_0_1;
  wire [7:0]SN_wvalid_0_1;
  wire aclk_0_1;
  wire aresetn_0_1;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [3:0]axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire [0:0]axi_interconnect_0_M00_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_ARREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [3:0]axi_interconnect_0_M00_AXI_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire [0:0]axi_interconnect_0_M00_AXI_AWREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_AWREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [3:0]axi_interconnect_0_M00_AXI_BID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire [0:0]axi_interconnect_0_M00_AXI_BVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [3:0]axi_interconnect_0_M00_AXI_RID;
  wire [0:0]axi_interconnect_0_M00_AXI_RLAST;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire [0:0]axi_interconnect_0_M00_AXI_RVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_WDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_WLAST;
  wire [0:0]axi_interconnect_0_M00_AXI_WREADY;
  wire [63:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]fmn_axi_collector_0_M0_ARADDR;
  wire [1:0]fmn_axi_collector_0_M0_ARBURST;
  wire [3:0]fmn_axi_collector_0_M0_ARCACHE;
  wire [7:0]fmn_axi_collector_0_M0_ARLEN;
  wire [2:0]fmn_axi_collector_0_M0_ARPROT;
  wire [0:0]fmn_axi_collector_0_M0_ARREADY;
  wire [2:0]fmn_axi_collector_0_M0_ARSIZE;
  wire fmn_axi_collector_0_M0_ARVALID;
  wire [31:0]fmn_axi_collector_0_M0_AWADDR;
  wire [1:0]fmn_axi_collector_0_M0_AWBURST;
  wire [3:0]fmn_axi_collector_0_M0_AWCACHE;
  wire [7:0]fmn_axi_collector_0_M0_AWLEN;
  wire [2:0]fmn_axi_collector_0_M0_AWPROT;
  wire [0:0]fmn_axi_collector_0_M0_AWREADY;
  wire [2:0]fmn_axi_collector_0_M0_AWSIZE;
  wire fmn_axi_collector_0_M0_AWVALID;
  wire fmn_axi_collector_0_M0_BREADY;
  wire [1:0]fmn_axi_collector_0_M0_BRESP;
  wire [0:0]fmn_axi_collector_0_M0_BVALID;
  wire [511:0]fmn_axi_collector_0_M0_RDATA;
  wire [0:0]fmn_axi_collector_0_M0_RLAST;
  wire fmn_axi_collector_0_M0_RREADY;
  wire [1:0]fmn_axi_collector_0_M0_RRESP;
  wire [0:0]fmn_axi_collector_0_M0_RVALID;
  wire [511:0]fmn_axi_collector_0_M0_WDATA;
  wire fmn_axi_collector_0_M0_WLAST;
  wire [0:0]fmn_axi_collector_0_M0_WREADY;
  wire [63:0]fmn_axi_collector_0_M0_WSTRB;
  wire fmn_axi_collector_0_M0_WVALID;
  wire [31:0]fmn_axi_collector_0_M1_ARADDR;
  wire [1:0]fmn_axi_collector_0_M1_ARBURST;
  wire [3:0]fmn_axi_collector_0_M1_ARCACHE;
  wire [7:0]fmn_axi_collector_0_M1_ARLEN;
  wire [2:0]fmn_axi_collector_0_M1_ARPROT;
  wire [1:1]fmn_axi_collector_0_M1_ARREADY;
  wire [2:0]fmn_axi_collector_0_M1_ARSIZE;
  wire fmn_axi_collector_0_M1_ARVALID;
  wire [31:0]fmn_axi_collector_0_M1_AWADDR;
  wire [1:0]fmn_axi_collector_0_M1_AWBURST;
  wire [3:0]fmn_axi_collector_0_M1_AWCACHE;
  wire [7:0]fmn_axi_collector_0_M1_AWLEN;
  wire [2:0]fmn_axi_collector_0_M1_AWPROT;
  wire [1:1]fmn_axi_collector_0_M1_AWREADY;
  wire [2:0]fmn_axi_collector_0_M1_AWSIZE;
  wire fmn_axi_collector_0_M1_AWVALID;
  wire fmn_axi_collector_0_M1_BREADY;
  wire [3:2]fmn_axi_collector_0_M1_BRESP;
  wire [1:1]fmn_axi_collector_0_M1_BVALID;
  wire [1023:512]fmn_axi_collector_0_M1_RDATA;
  wire [1:1]fmn_axi_collector_0_M1_RLAST;
  wire fmn_axi_collector_0_M1_RREADY;
  wire [3:2]fmn_axi_collector_0_M1_RRESP;
  wire [1:1]fmn_axi_collector_0_M1_RVALID;
  wire [511:0]fmn_axi_collector_0_M1_WDATA;
  wire fmn_axi_collector_0_M1_WLAST;
  wire [1:1]fmn_axi_collector_0_M1_WREADY;
  wire [63:0]fmn_axi_collector_0_M1_WSTRB;
  wire fmn_axi_collector_0_M1_WVALID;
  wire [31:0]fmn_axi_collector_0_M2_ARADDR;
  wire [1:0]fmn_axi_collector_0_M2_ARBURST;
  wire [3:0]fmn_axi_collector_0_M2_ARCACHE;
  wire [7:0]fmn_axi_collector_0_M2_ARLEN;
  wire [2:0]fmn_axi_collector_0_M2_ARPROT;
  wire [2:2]fmn_axi_collector_0_M2_ARREADY;
  wire [2:0]fmn_axi_collector_0_M2_ARSIZE;
  wire fmn_axi_collector_0_M2_ARVALID;
  wire [31:0]fmn_axi_collector_0_M2_AWADDR;
  wire [1:0]fmn_axi_collector_0_M2_AWBURST;
  wire [3:0]fmn_axi_collector_0_M2_AWCACHE;
  wire [7:0]fmn_axi_collector_0_M2_AWLEN;
  wire [2:0]fmn_axi_collector_0_M2_AWPROT;
  wire [2:2]fmn_axi_collector_0_M2_AWREADY;
  wire [2:0]fmn_axi_collector_0_M2_AWSIZE;
  wire fmn_axi_collector_0_M2_AWVALID;
  wire fmn_axi_collector_0_M2_BREADY;
  wire [5:4]fmn_axi_collector_0_M2_BRESP;
  wire [2:2]fmn_axi_collector_0_M2_BVALID;
  wire [1535:1024]fmn_axi_collector_0_M2_RDATA;
  wire [2:2]fmn_axi_collector_0_M2_RLAST;
  wire fmn_axi_collector_0_M2_RREADY;
  wire [5:4]fmn_axi_collector_0_M2_RRESP;
  wire [2:2]fmn_axi_collector_0_M2_RVALID;
  wire [511:0]fmn_axi_collector_0_M2_WDATA;
  wire fmn_axi_collector_0_M2_WLAST;
  wire [2:2]fmn_axi_collector_0_M2_WREADY;
  wire [63:0]fmn_axi_collector_0_M2_WSTRB;
  wire fmn_axi_collector_0_M2_WVALID;
  wire [31:0]fmn_axi_collector_0_M3_ARADDR;
  wire [1:0]fmn_axi_collector_0_M3_ARBURST;
  wire [3:0]fmn_axi_collector_0_M3_ARCACHE;
  wire [7:0]fmn_axi_collector_0_M3_ARLEN;
  wire [2:0]fmn_axi_collector_0_M3_ARPROT;
  wire [3:3]fmn_axi_collector_0_M3_ARREADY;
  wire [2:0]fmn_axi_collector_0_M3_ARSIZE;
  wire fmn_axi_collector_0_M3_ARVALID;
  wire [31:0]fmn_axi_collector_0_M3_AWADDR;
  wire [1:0]fmn_axi_collector_0_M3_AWBURST;
  wire [3:0]fmn_axi_collector_0_M3_AWCACHE;
  wire [7:0]fmn_axi_collector_0_M3_AWLEN;
  wire [2:0]fmn_axi_collector_0_M3_AWPROT;
  wire [3:3]fmn_axi_collector_0_M3_AWREADY;
  wire [2:0]fmn_axi_collector_0_M3_AWSIZE;
  wire fmn_axi_collector_0_M3_AWVALID;
  wire fmn_axi_collector_0_M3_BREADY;
  wire [7:6]fmn_axi_collector_0_M3_BRESP;
  wire [3:3]fmn_axi_collector_0_M3_BVALID;
  wire [2047:1536]fmn_axi_collector_0_M3_RDATA;
  wire [3:3]fmn_axi_collector_0_M3_RLAST;
  wire fmn_axi_collector_0_M3_RREADY;
  wire [7:6]fmn_axi_collector_0_M3_RRESP;
  wire [3:3]fmn_axi_collector_0_M3_RVALID;
  wire [511:0]fmn_axi_collector_0_M3_WDATA;
  wire fmn_axi_collector_0_M3_WLAST;
  wire [3:3]fmn_axi_collector_0_M3_WREADY;
  wire [63:0]fmn_axi_collector_0_M3_WSTRB;
  wire fmn_axi_collector_0_M3_WVALID;
  wire [31:0]fmn_axi_collector_0_M4_ARADDR;
  wire [1:0]fmn_axi_collector_0_M4_ARBURST;
  wire [3:0]fmn_axi_collector_0_M4_ARCACHE;
  wire [7:0]fmn_axi_collector_0_M4_ARLEN;
  wire [2:0]fmn_axi_collector_0_M4_ARPROT;
  wire [4:4]fmn_axi_collector_0_M4_ARREADY;
  wire [2:0]fmn_axi_collector_0_M4_ARSIZE;
  wire fmn_axi_collector_0_M4_ARVALID;
  wire [31:0]fmn_axi_collector_0_M4_AWADDR;
  wire [1:0]fmn_axi_collector_0_M4_AWBURST;
  wire [3:0]fmn_axi_collector_0_M4_AWCACHE;
  wire [7:0]fmn_axi_collector_0_M4_AWLEN;
  wire [2:0]fmn_axi_collector_0_M4_AWPROT;
  wire [4:4]fmn_axi_collector_0_M4_AWREADY;
  wire [2:0]fmn_axi_collector_0_M4_AWSIZE;
  wire fmn_axi_collector_0_M4_AWVALID;
  wire fmn_axi_collector_0_M4_BREADY;
  wire [9:8]fmn_axi_collector_0_M4_BRESP;
  wire [4:4]fmn_axi_collector_0_M4_BVALID;
  wire [2559:2048]fmn_axi_collector_0_M4_RDATA;
  wire [4:4]fmn_axi_collector_0_M4_RLAST;
  wire fmn_axi_collector_0_M4_RREADY;
  wire [9:8]fmn_axi_collector_0_M4_RRESP;
  wire [4:4]fmn_axi_collector_0_M4_RVALID;
  wire [511:0]fmn_axi_collector_0_M4_WDATA;
  wire fmn_axi_collector_0_M4_WLAST;
  wire [4:4]fmn_axi_collector_0_M4_WREADY;
  wire [63:0]fmn_axi_collector_0_M4_WSTRB;
  wire fmn_axi_collector_0_M4_WVALID;
  wire [31:0]fmn_axi_collector_0_M5_ARADDR;
  wire [1:0]fmn_axi_collector_0_M5_ARBURST;
  wire [3:0]fmn_axi_collector_0_M5_ARCACHE;
  wire [7:0]fmn_axi_collector_0_M5_ARLEN;
  wire [2:0]fmn_axi_collector_0_M5_ARPROT;
  wire [5:5]fmn_axi_collector_0_M5_ARREADY;
  wire [2:0]fmn_axi_collector_0_M5_ARSIZE;
  wire fmn_axi_collector_0_M5_ARVALID;
  wire [31:0]fmn_axi_collector_0_M5_AWADDR;
  wire [1:0]fmn_axi_collector_0_M5_AWBURST;
  wire [3:0]fmn_axi_collector_0_M5_AWCACHE;
  wire [7:0]fmn_axi_collector_0_M5_AWLEN;
  wire [2:0]fmn_axi_collector_0_M5_AWPROT;
  wire [5:5]fmn_axi_collector_0_M5_AWREADY;
  wire [2:0]fmn_axi_collector_0_M5_AWSIZE;
  wire fmn_axi_collector_0_M5_AWVALID;
  wire fmn_axi_collector_0_M5_BREADY;
  wire [11:10]fmn_axi_collector_0_M5_BRESP;
  wire [5:5]fmn_axi_collector_0_M5_BVALID;
  wire [3071:2560]fmn_axi_collector_0_M5_RDATA;
  wire [5:5]fmn_axi_collector_0_M5_RLAST;
  wire fmn_axi_collector_0_M5_RREADY;
  wire [11:10]fmn_axi_collector_0_M5_RRESP;
  wire [5:5]fmn_axi_collector_0_M5_RVALID;
  wire [511:0]fmn_axi_collector_0_M5_WDATA;
  wire fmn_axi_collector_0_M5_WLAST;
  wire [5:5]fmn_axi_collector_0_M5_WREADY;
  wire [63:0]fmn_axi_collector_0_M5_WSTRB;
  wire fmn_axi_collector_0_M5_WVALID;
  wire [31:0]fmn_axi_collector_0_M6_ARADDR;
  wire [1:0]fmn_axi_collector_0_M6_ARBURST;
  wire [3:0]fmn_axi_collector_0_M6_ARCACHE;
  wire [7:0]fmn_axi_collector_0_M6_ARLEN;
  wire [2:0]fmn_axi_collector_0_M6_ARPROT;
  wire [6:6]fmn_axi_collector_0_M6_ARREADY;
  wire [2:0]fmn_axi_collector_0_M6_ARSIZE;
  wire fmn_axi_collector_0_M6_ARVALID;
  wire [31:0]fmn_axi_collector_0_M6_AWADDR;
  wire [1:0]fmn_axi_collector_0_M6_AWBURST;
  wire [3:0]fmn_axi_collector_0_M6_AWCACHE;
  wire [7:0]fmn_axi_collector_0_M6_AWLEN;
  wire [2:0]fmn_axi_collector_0_M6_AWPROT;
  wire [6:6]fmn_axi_collector_0_M6_AWREADY;
  wire [2:0]fmn_axi_collector_0_M6_AWSIZE;
  wire fmn_axi_collector_0_M6_AWVALID;
  wire fmn_axi_collector_0_M6_BREADY;
  wire [13:12]fmn_axi_collector_0_M6_BRESP;
  wire [6:6]fmn_axi_collector_0_M6_BVALID;
  wire [3583:3072]fmn_axi_collector_0_M6_RDATA;
  wire [6:6]fmn_axi_collector_0_M6_RLAST;
  wire fmn_axi_collector_0_M6_RREADY;
  wire [13:12]fmn_axi_collector_0_M6_RRESP;
  wire [6:6]fmn_axi_collector_0_M6_RVALID;
  wire [511:0]fmn_axi_collector_0_M6_WDATA;
  wire fmn_axi_collector_0_M6_WLAST;
  wire [6:6]fmn_axi_collector_0_M6_WREADY;
  wire [63:0]fmn_axi_collector_0_M6_WSTRB;
  wire fmn_axi_collector_0_M6_WVALID;
  wire [31:0]fmn_axi_collector_0_M7_ARADDR;
  wire [1:0]fmn_axi_collector_0_M7_ARBURST;
  wire [3:0]fmn_axi_collector_0_M7_ARCACHE;
  wire [7:0]fmn_axi_collector_0_M7_ARLEN;
  wire [2:0]fmn_axi_collector_0_M7_ARPROT;
  wire [7:7]fmn_axi_collector_0_M7_ARREADY;
  wire [2:0]fmn_axi_collector_0_M7_ARSIZE;
  wire fmn_axi_collector_0_M7_ARVALID;
  wire [31:0]fmn_axi_collector_0_M7_AWADDR;
  wire [1:0]fmn_axi_collector_0_M7_AWBURST;
  wire [3:0]fmn_axi_collector_0_M7_AWCACHE;
  wire [7:0]fmn_axi_collector_0_M7_AWLEN;
  wire [2:0]fmn_axi_collector_0_M7_AWPROT;
  wire [7:7]fmn_axi_collector_0_M7_AWREADY;
  wire [2:0]fmn_axi_collector_0_M7_AWSIZE;
  wire fmn_axi_collector_0_M7_AWVALID;
  wire fmn_axi_collector_0_M7_BREADY;
  wire [15:14]fmn_axi_collector_0_M7_BRESP;
  wire [7:7]fmn_axi_collector_0_M7_BVALID;
  wire [4095:3584]fmn_axi_collector_0_M7_RDATA;
  wire [7:7]fmn_axi_collector_0_M7_RLAST;
  wire fmn_axi_collector_0_M7_RREADY;
  wire [15:14]fmn_axi_collector_0_M7_RRESP;
  wire [7:7]fmn_axi_collector_0_M7_RVALID;
  wire [511:0]fmn_axi_collector_0_M7_WDATA;
  wire fmn_axi_collector_0_M7_WLAST;
  wire [7:7]fmn_axi_collector_0_M7_WREADY;
  wire [63:0]fmn_axi_collector_0_M7_WSTRB;
  wire fmn_axi_collector_0_M7_WVALID;
  wire [7:0]fmn_axi_collector_0_SN_arready;
  wire [7:0]fmn_axi_collector_0_SN_awready;
  wire [15:0]fmn_axi_collector_0_SN_bresp;
  wire [7:0]fmn_axi_collector_0_SN_bvalid;
  wire [4095:0]fmn_axi_collector_0_SN_rdata;
  wire [7:0]fmn_axi_collector_0_SN_rlast;
  wire [15:0]fmn_axi_collector_0_SN_rresp;
  wire [7:0]fmn_axi_collector_0_SN_rvalid;
  wire [7:0]fmn_axi_collector_0_SN_wready;
  wire [35:0]NLW_axi_crossbar_0_s_axi_bid_UNCONNECTED;
  wire [35:0]NLW_axi_crossbar_0_s_axi_rid_UNCONNECTED;

  assign DM_AXI_arready[0] = S08_AXI_0_1_ARREADY;
  assign DM_AXI_awready[0] = S08_AXI_0_1_AWREADY;
  assign DM_AXI_bid[3:0] = S08_AXI_0_1_BID;
  assign DM_AXI_bresp[1:0] = S08_AXI_0_1_BRESP;
  assign DM_AXI_bvalid[0] = S08_AXI_0_1_BVALID;
  assign DM_AXI_rdata[511:0] = S08_AXI_0_1_RDATA;
  assign DM_AXI_rid[3:0] = S08_AXI_0_1_RID;
  assign DM_AXI_rlast[0] = S08_AXI_0_1_RLAST;
  assign DM_AXI_rresp[1:0] = S08_AXI_0_1_RRESP;
  assign DM_AXI_rvalid[0] = S08_AXI_0_1_RVALID;
  assign DM_AXI_wready[0] = S08_AXI_0_1_WREADY;
  assign MEM_AXI_araddr[31:0] = axi_interconnect_0_M00_AXI_ARADDR;
  assign MEM_AXI_arburst[1:0] = axi_interconnect_0_M00_AXI_ARBURST;
  assign MEM_AXI_arcache[3:0] = axi_interconnect_0_M00_AXI_ARCACHE;
  assign MEM_AXI_arid[3:0] = axi_interconnect_0_M00_AXI_ARID;
  assign MEM_AXI_arlen[7:0] = axi_interconnect_0_M00_AXI_ARLEN;
  assign MEM_AXI_arlock[0] = axi_interconnect_0_M00_AXI_ARLOCK;
  assign MEM_AXI_arprot[2:0] = axi_interconnect_0_M00_AXI_ARPROT;
  assign MEM_AXI_arqos[3:0] = axi_interconnect_0_M00_AXI_ARQOS;
  assign MEM_AXI_arregion[3:0] = axi_interconnect_0_M00_AXI_ARREGION;
  assign MEM_AXI_arsize[2:0] = axi_interconnect_0_M00_AXI_ARSIZE;
  assign MEM_AXI_arvalid[0] = axi_interconnect_0_M00_AXI_ARVALID;
  assign MEM_AXI_awaddr[31:0] = axi_interconnect_0_M00_AXI_AWADDR;
  assign MEM_AXI_awburst[1:0] = axi_interconnect_0_M00_AXI_AWBURST;
  assign MEM_AXI_awcache[3:0] = axi_interconnect_0_M00_AXI_AWCACHE;
  assign MEM_AXI_awid[3:0] = axi_interconnect_0_M00_AXI_AWID;
  assign MEM_AXI_awlen[7:0] = axi_interconnect_0_M00_AXI_AWLEN;
  assign MEM_AXI_awlock[0] = axi_interconnect_0_M00_AXI_AWLOCK;
  assign MEM_AXI_awprot[2:0] = axi_interconnect_0_M00_AXI_AWPROT;
  assign MEM_AXI_awqos[3:0] = axi_interconnect_0_M00_AXI_AWQOS;
  assign MEM_AXI_awregion[3:0] = axi_interconnect_0_M00_AXI_AWREGION;
  assign MEM_AXI_awsize[2:0] = axi_interconnect_0_M00_AXI_AWSIZE;
  assign MEM_AXI_awvalid[0] = axi_interconnect_0_M00_AXI_AWVALID;
  assign MEM_AXI_bready[0] = axi_interconnect_0_M00_AXI_BREADY;
  assign MEM_AXI_rready[0] = axi_interconnect_0_M00_AXI_RREADY;
  assign MEM_AXI_wdata[511:0] = axi_interconnect_0_M00_AXI_WDATA;
  assign MEM_AXI_wlast[0] = axi_interconnect_0_M00_AXI_WLAST;
  assign MEM_AXI_wstrb[63:0] = axi_interconnect_0_M00_AXI_WSTRB;
  assign MEM_AXI_wvalid[0] = axi_interconnect_0_M00_AXI_WVALID;
  assign S08_AXI_0_1_ARADDR = DM_AXI_araddr[31:0];
  assign S08_AXI_0_1_ARBURST = DM_AXI_arburst[1:0];
  assign S08_AXI_0_1_ARCACHE = DM_AXI_arcache[3:0];
  assign S08_AXI_0_1_ARID = DM_AXI_arid[3:0];
  assign S08_AXI_0_1_ARLEN = DM_AXI_arlen[7:0];
  assign S08_AXI_0_1_ARLOCK = DM_AXI_arlock[0];
  assign S08_AXI_0_1_ARPROT = DM_AXI_arprot[2:0];
  assign S08_AXI_0_1_ARQOS = DM_AXI_arqos[3:0];
  assign S08_AXI_0_1_ARSIZE = DM_AXI_arsize[2:0];
  assign S08_AXI_0_1_ARVALID = DM_AXI_arvalid[0];
  assign S08_AXI_0_1_AWADDR = DM_AXI_awaddr[31:0];
  assign S08_AXI_0_1_AWBURST = DM_AXI_awburst[1:0];
  assign S08_AXI_0_1_AWCACHE = DM_AXI_awcache[3:0];
  assign S08_AXI_0_1_AWID = DM_AXI_awid[3:0];
  assign S08_AXI_0_1_AWLEN = DM_AXI_awlen[7:0];
  assign S08_AXI_0_1_AWLOCK = DM_AXI_awlock[0];
  assign S08_AXI_0_1_AWPROT = DM_AXI_awprot[2:0];
  assign S08_AXI_0_1_AWQOS = DM_AXI_awqos[3:0];
  assign S08_AXI_0_1_AWSIZE = DM_AXI_awsize[2:0];
  assign S08_AXI_0_1_AWVALID = DM_AXI_awvalid[0];
  assign S08_AXI_0_1_BREADY = DM_AXI_bready[0];
  assign S08_AXI_0_1_RREADY = DM_AXI_rready[0];
  assign S08_AXI_0_1_WDATA = DM_AXI_wdata[511:0];
  assign S08_AXI_0_1_WLAST = DM_AXI_wlast[0];
  assign S08_AXI_0_1_WSTRB = DM_AXI_wstrb[63:0];
  assign S08_AXI_0_1_WVALID = DM_AXI_wvalid[0];
  assign SN_araddr_0_1 = SN_araddr[255:0];
  assign SN_arburst_0_1 = SN_arburst[15:0];
  assign SN_arcache_0_1 = SN_arcache[31:0];
  assign SN_arlen_0_1 = SN_arlen[63:0];
  assign SN_arprot_0_1 = SN_arprot[23:0];
  assign SN_arready[7:0] = fmn_axi_collector_0_SN_arready;
  assign SN_arsize_0_1 = SN_arsize[23:0];
  assign SN_arvalid_0_1 = SN_arvalid[7:0];
  assign SN_awaddr_0_1 = SN_awaddr[255:0];
  assign SN_awburst_0_1 = SN_awburst[15:0];
  assign SN_awcache_0_1 = SN_awcache[31:0];
  assign SN_awlen_0_1 = SN_awlen[63:0];
  assign SN_awprot_0_1 = SN_awprot[23:0];
  assign SN_awready[7:0] = fmn_axi_collector_0_SN_awready;
  assign SN_awsize_0_1 = SN_awsize[23:0];
  assign SN_awvalid_0_1 = SN_awvalid[7:0];
  assign SN_bready_0_1 = SN_bready[7:0];
  assign SN_bresp[15:0] = fmn_axi_collector_0_SN_bresp;
  assign SN_bvalid[7:0] = fmn_axi_collector_0_SN_bvalid;
  assign SN_rdata[4095:0] = fmn_axi_collector_0_SN_rdata;
  assign SN_rlast[7:0] = fmn_axi_collector_0_SN_rlast;
  assign SN_rready_1_1 = SN_rready[7:0];
  assign SN_rresp[15:0] = fmn_axi_collector_0_SN_rresp;
  assign SN_rvalid[7:0] = fmn_axi_collector_0_SN_rvalid;
  assign SN_wdata_0_1 = SN_wdata[4095:0];
  assign SN_wlast_0_1 = SN_wlast[7:0];
  assign SN_wready[7:0] = fmn_axi_collector_0_SN_wready;
  assign SN_wstrb_0_1 = SN_wstrb[511:0];
  assign SN_wvalid_0_1 = SN_wvalid[7:0];
  assign aclk_0_1 = aclk_0;
  assign aresetn_0_1 = aresetn_0;
  assign axi_interconnect_0_M00_AXI_ARREADY = MEM_AXI_arready[0];
  assign axi_interconnect_0_M00_AXI_AWREADY = MEM_AXI_awready[0];
  assign axi_interconnect_0_M00_AXI_BID = MEM_AXI_bid[3:0];
  assign axi_interconnect_0_M00_AXI_BRESP = MEM_AXI_bresp[1:0];
  assign axi_interconnect_0_M00_AXI_BVALID = MEM_AXI_bvalid[0];
  assign axi_interconnect_0_M00_AXI_RDATA = MEM_AXI_rdata[511:0];
  assign axi_interconnect_0_M00_AXI_RID = MEM_AXI_rid[3:0];
  assign axi_interconnect_0_M00_AXI_RLAST = MEM_AXI_rlast[0];
  assign axi_interconnect_0_M00_AXI_RRESP = MEM_AXI_rresp[1:0];
  assign axi_interconnect_0_M00_AXI_RVALID = MEM_AXI_rvalid[0];
  assign axi_interconnect_0_M00_AXI_WREADY = MEM_AXI_wready[0];
  fmn_intercon_v2_nodebug_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(aclk_0_1),
        .aresetn(aresetn_0_1),
        .m_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .m_axi_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .m_axi_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .m_axi_arid(axi_interconnect_0_M00_AXI_ARID),
        .m_axi_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .m_axi_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .m_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .m_axi_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .m_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .m_axi_arregion(axi_interconnect_0_M00_AXI_ARREGION),
        .m_axi_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .m_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .m_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .m_axi_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .m_axi_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .m_axi_awid(axi_interconnect_0_M00_AXI_AWID),
        .m_axi_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .m_axi_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .m_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .m_axi_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .m_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .m_axi_awregion(axi_interconnect_0_M00_AXI_AWREGION),
        .m_axi_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .m_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .m_axi_bid(axi_interconnect_0_M00_AXI_BID),
        .m_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .m_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .m_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .m_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .m_axi_rid(axi_interconnect_0_M00_AXI_RID),
        .m_axi_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .m_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .m_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .m_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .m_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .m_axi_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .m_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .m_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .m_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .s_axi_araddr({S08_AXI_0_1_ARADDR,fmn_axi_collector_0_M7_ARADDR,fmn_axi_collector_0_M6_ARADDR,fmn_axi_collector_0_M5_ARADDR,fmn_axi_collector_0_M4_ARADDR,fmn_axi_collector_0_M3_ARADDR,fmn_axi_collector_0_M2_ARADDR,fmn_axi_collector_0_M1_ARADDR,fmn_axi_collector_0_M0_ARADDR}),
        .s_axi_arburst({S08_AXI_0_1_ARBURST,fmn_axi_collector_0_M7_ARBURST,fmn_axi_collector_0_M6_ARBURST,fmn_axi_collector_0_M5_ARBURST,fmn_axi_collector_0_M4_ARBURST,fmn_axi_collector_0_M3_ARBURST,fmn_axi_collector_0_M2_ARBURST,fmn_axi_collector_0_M1_ARBURST,fmn_axi_collector_0_M0_ARBURST}),
        .s_axi_arcache({S08_AXI_0_1_ARCACHE,fmn_axi_collector_0_M7_ARCACHE,fmn_axi_collector_0_M6_ARCACHE,fmn_axi_collector_0_M5_ARCACHE,fmn_axi_collector_0_M4_ARCACHE,fmn_axi_collector_0_M3_ARCACHE,fmn_axi_collector_0_M2_ARCACHE,fmn_axi_collector_0_M1_ARCACHE,fmn_axi_collector_0_M0_ARCACHE}),
        .s_axi_arid({S08_AXI_0_1_ARID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({S08_AXI_0_1_ARLEN,fmn_axi_collector_0_M7_ARLEN,fmn_axi_collector_0_M6_ARLEN,fmn_axi_collector_0_M5_ARLEN,fmn_axi_collector_0_M4_ARLEN,fmn_axi_collector_0_M3_ARLEN,fmn_axi_collector_0_M2_ARLEN,fmn_axi_collector_0_M1_ARLEN,fmn_axi_collector_0_M0_ARLEN}),
        .s_axi_arlock({S08_AXI_0_1_ARLOCK,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arprot({S08_AXI_0_1_ARPROT,fmn_axi_collector_0_M7_ARPROT,fmn_axi_collector_0_M6_ARPROT,fmn_axi_collector_0_M5_ARPROT,fmn_axi_collector_0_M4_ARPROT,fmn_axi_collector_0_M3_ARPROT,fmn_axi_collector_0_M2_ARPROT,fmn_axi_collector_0_M1_ARPROT,fmn_axi_collector_0_M0_ARPROT}),
        .s_axi_arqos({S08_AXI_0_1_ARQOS,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready({S08_AXI_0_1_ARREADY,fmn_axi_collector_0_M7_ARREADY,fmn_axi_collector_0_M6_ARREADY,fmn_axi_collector_0_M5_ARREADY,fmn_axi_collector_0_M4_ARREADY,fmn_axi_collector_0_M3_ARREADY,fmn_axi_collector_0_M2_ARREADY,fmn_axi_collector_0_M1_ARREADY,fmn_axi_collector_0_M0_ARREADY}),
        .s_axi_arsize({S08_AXI_0_1_ARSIZE,fmn_axi_collector_0_M7_ARSIZE,fmn_axi_collector_0_M6_ARSIZE,fmn_axi_collector_0_M5_ARSIZE,fmn_axi_collector_0_M4_ARSIZE,fmn_axi_collector_0_M3_ARSIZE,fmn_axi_collector_0_M2_ARSIZE,fmn_axi_collector_0_M1_ARSIZE,fmn_axi_collector_0_M0_ARSIZE}),
        .s_axi_arvalid({S08_AXI_0_1_ARVALID,fmn_axi_collector_0_M7_ARVALID,fmn_axi_collector_0_M6_ARVALID,fmn_axi_collector_0_M5_ARVALID,fmn_axi_collector_0_M4_ARVALID,fmn_axi_collector_0_M3_ARVALID,fmn_axi_collector_0_M2_ARVALID,fmn_axi_collector_0_M1_ARVALID,fmn_axi_collector_0_M0_ARVALID}),
        .s_axi_awaddr({S08_AXI_0_1_AWADDR,fmn_axi_collector_0_M7_AWADDR,fmn_axi_collector_0_M6_AWADDR,fmn_axi_collector_0_M5_AWADDR,fmn_axi_collector_0_M4_AWADDR,fmn_axi_collector_0_M3_AWADDR,fmn_axi_collector_0_M2_AWADDR,fmn_axi_collector_0_M1_AWADDR,fmn_axi_collector_0_M0_AWADDR}),
        .s_axi_awburst({S08_AXI_0_1_AWBURST,fmn_axi_collector_0_M7_AWBURST,fmn_axi_collector_0_M6_AWBURST,fmn_axi_collector_0_M5_AWBURST,fmn_axi_collector_0_M4_AWBURST,fmn_axi_collector_0_M3_AWBURST,fmn_axi_collector_0_M2_AWBURST,fmn_axi_collector_0_M1_AWBURST,fmn_axi_collector_0_M0_AWBURST}),
        .s_axi_awcache({S08_AXI_0_1_AWCACHE,fmn_axi_collector_0_M7_AWCACHE,fmn_axi_collector_0_M6_AWCACHE,fmn_axi_collector_0_M5_AWCACHE,fmn_axi_collector_0_M4_AWCACHE,fmn_axi_collector_0_M3_AWCACHE,fmn_axi_collector_0_M2_AWCACHE,fmn_axi_collector_0_M1_AWCACHE,fmn_axi_collector_0_M0_AWCACHE}),
        .s_axi_awid({S08_AXI_0_1_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({S08_AXI_0_1_AWLEN,fmn_axi_collector_0_M7_AWLEN,fmn_axi_collector_0_M6_AWLEN,fmn_axi_collector_0_M5_AWLEN,fmn_axi_collector_0_M4_AWLEN,fmn_axi_collector_0_M3_AWLEN,fmn_axi_collector_0_M2_AWLEN,fmn_axi_collector_0_M1_AWLEN,fmn_axi_collector_0_M0_AWLEN}),
        .s_axi_awlock({S08_AXI_0_1_AWLOCK,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awprot({S08_AXI_0_1_AWPROT,fmn_axi_collector_0_M7_AWPROT,fmn_axi_collector_0_M6_AWPROT,fmn_axi_collector_0_M5_AWPROT,fmn_axi_collector_0_M4_AWPROT,fmn_axi_collector_0_M3_AWPROT,fmn_axi_collector_0_M2_AWPROT,fmn_axi_collector_0_M1_AWPROT,fmn_axi_collector_0_M0_AWPROT}),
        .s_axi_awqos({S08_AXI_0_1_AWQOS,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({S08_AXI_0_1_AWREADY,fmn_axi_collector_0_M7_AWREADY,fmn_axi_collector_0_M6_AWREADY,fmn_axi_collector_0_M5_AWREADY,fmn_axi_collector_0_M4_AWREADY,fmn_axi_collector_0_M3_AWREADY,fmn_axi_collector_0_M2_AWREADY,fmn_axi_collector_0_M1_AWREADY,fmn_axi_collector_0_M0_AWREADY}),
        .s_axi_awsize({S08_AXI_0_1_AWSIZE,fmn_axi_collector_0_M7_AWSIZE,fmn_axi_collector_0_M6_AWSIZE,fmn_axi_collector_0_M5_AWSIZE,fmn_axi_collector_0_M4_AWSIZE,fmn_axi_collector_0_M3_AWSIZE,fmn_axi_collector_0_M2_AWSIZE,fmn_axi_collector_0_M1_AWSIZE,fmn_axi_collector_0_M0_AWSIZE}),
        .s_axi_awvalid({S08_AXI_0_1_AWVALID,fmn_axi_collector_0_M7_AWVALID,fmn_axi_collector_0_M6_AWVALID,fmn_axi_collector_0_M5_AWVALID,fmn_axi_collector_0_M4_AWVALID,fmn_axi_collector_0_M3_AWVALID,fmn_axi_collector_0_M2_AWVALID,fmn_axi_collector_0_M1_AWVALID,fmn_axi_collector_0_M0_AWVALID}),
        .s_axi_bid({S08_AXI_0_1_BID,NLW_axi_crossbar_0_s_axi_bid_UNCONNECTED[31:0]}),
        .s_axi_bready({S08_AXI_0_1_BREADY,fmn_axi_collector_0_M7_BREADY,fmn_axi_collector_0_M6_BREADY,fmn_axi_collector_0_M5_BREADY,fmn_axi_collector_0_M4_BREADY,fmn_axi_collector_0_M3_BREADY,fmn_axi_collector_0_M2_BREADY,fmn_axi_collector_0_M1_BREADY,fmn_axi_collector_0_M0_BREADY}),
        .s_axi_bresp({S08_AXI_0_1_BRESP,fmn_axi_collector_0_M7_BRESP,fmn_axi_collector_0_M6_BRESP,fmn_axi_collector_0_M5_BRESP,fmn_axi_collector_0_M4_BRESP,fmn_axi_collector_0_M3_BRESP,fmn_axi_collector_0_M2_BRESP,fmn_axi_collector_0_M1_BRESP,fmn_axi_collector_0_M0_BRESP}),
        .s_axi_bvalid({S08_AXI_0_1_BVALID,fmn_axi_collector_0_M7_BVALID,fmn_axi_collector_0_M6_BVALID,fmn_axi_collector_0_M5_BVALID,fmn_axi_collector_0_M4_BVALID,fmn_axi_collector_0_M3_BVALID,fmn_axi_collector_0_M2_BVALID,fmn_axi_collector_0_M1_BVALID,fmn_axi_collector_0_M0_BVALID}),
        .s_axi_rdata({S08_AXI_0_1_RDATA,fmn_axi_collector_0_M7_RDATA,fmn_axi_collector_0_M6_RDATA,fmn_axi_collector_0_M5_RDATA,fmn_axi_collector_0_M4_RDATA,fmn_axi_collector_0_M3_RDATA,fmn_axi_collector_0_M2_RDATA,fmn_axi_collector_0_M1_RDATA,fmn_axi_collector_0_M0_RDATA}),
        .s_axi_rid({S08_AXI_0_1_RID,NLW_axi_crossbar_0_s_axi_rid_UNCONNECTED[31:0]}),
        .s_axi_rlast({S08_AXI_0_1_RLAST,fmn_axi_collector_0_M7_RLAST,fmn_axi_collector_0_M6_RLAST,fmn_axi_collector_0_M5_RLAST,fmn_axi_collector_0_M4_RLAST,fmn_axi_collector_0_M3_RLAST,fmn_axi_collector_0_M2_RLAST,fmn_axi_collector_0_M1_RLAST,fmn_axi_collector_0_M0_RLAST}),
        .s_axi_rready({S08_AXI_0_1_RREADY,fmn_axi_collector_0_M7_RREADY,fmn_axi_collector_0_M6_RREADY,fmn_axi_collector_0_M5_RREADY,fmn_axi_collector_0_M4_RREADY,fmn_axi_collector_0_M3_RREADY,fmn_axi_collector_0_M2_RREADY,fmn_axi_collector_0_M1_RREADY,fmn_axi_collector_0_M0_RREADY}),
        .s_axi_rresp({S08_AXI_0_1_RRESP,fmn_axi_collector_0_M7_RRESP,fmn_axi_collector_0_M6_RRESP,fmn_axi_collector_0_M5_RRESP,fmn_axi_collector_0_M4_RRESP,fmn_axi_collector_0_M3_RRESP,fmn_axi_collector_0_M2_RRESP,fmn_axi_collector_0_M1_RRESP,fmn_axi_collector_0_M0_RRESP}),
        .s_axi_rvalid({S08_AXI_0_1_RVALID,fmn_axi_collector_0_M7_RVALID,fmn_axi_collector_0_M6_RVALID,fmn_axi_collector_0_M5_RVALID,fmn_axi_collector_0_M4_RVALID,fmn_axi_collector_0_M3_RVALID,fmn_axi_collector_0_M2_RVALID,fmn_axi_collector_0_M1_RVALID,fmn_axi_collector_0_M0_RVALID}),
        .s_axi_wdata({S08_AXI_0_1_WDATA,fmn_axi_collector_0_M7_WDATA,fmn_axi_collector_0_M6_WDATA,fmn_axi_collector_0_M5_WDATA,fmn_axi_collector_0_M4_WDATA,fmn_axi_collector_0_M3_WDATA,fmn_axi_collector_0_M2_WDATA,fmn_axi_collector_0_M1_WDATA,fmn_axi_collector_0_M0_WDATA}),
        .s_axi_wlast({S08_AXI_0_1_WLAST,fmn_axi_collector_0_M7_WLAST,fmn_axi_collector_0_M6_WLAST,fmn_axi_collector_0_M5_WLAST,fmn_axi_collector_0_M4_WLAST,fmn_axi_collector_0_M3_WLAST,fmn_axi_collector_0_M2_WLAST,fmn_axi_collector_0_M1_WLAST,fmn_axi_collector_0_M0_WLAST}),
        .s_axi_wready({S08_AXI_0_1_WREADY,fmn_axi_collector_0_M7_WREADY,fmn_axi_collector_0_M6_WREADY,fmn_axi_collector_0_M5_WREADY,fmn_axi_collector_0_M4_WREADY,fmn_axi_collector_0_M3_WREADY,fmn_axi_collector_0_M2_WREADY,fmn_axi_collector_0_M1_WREADY,fmn_axi_collector_0_M0_WREADY}),
        .s_axi_wstrb({S08_AXI_0_1_WSTRB,fmn_axi_collector_0_M7_WSTRB,fmn_axi_collector_0_M6_WSTRB,fmn_axi_collector_0_M5_WSTRB,fmn_axi_collector_0_M4_WSTRB,fmn_axi_collector_0_M3_WSTRB,fmn_axi_collector_0_M2_WSTRB,fmn_axi_collector_0_M1_WSTRB,fmn_axi_collector_0_M0_WSTRB}),
        .s_axi_wvalid({S08_AXI_0_1_WVALID,fmn_axi_collector_0_M7_WVALID,fmn_axi_collector_0_M6_WVALID,fmn_axi_collector_0_M5_WVALID,fmn_axi_collector_0_M4_WVALID,fmn_axi_collector_0_M3_WVALID,fmn_axi_collector_0_M2_WVALID,fmn_axi_collector_0_M1_WVALID,fmn_axi_collector_0_M0_WVALID}));
  fmn_intercon_v2_nodebug_fmn_axi_collector_0_0 fmn_axi_collector_0
       (.M0_araddr(fmn_axi_collector_0_M0_ARADDR),
        .M0_arburst(fmn_axi_collector_0_M0_ARBURST),
        .M0_arcache(fmn_axi_collector_0_M0_ARCACHE),
        .M0_arlen(fmn_axi_collector_0_M0_ARLEN),
        .M0_arprot(fmn_axi_collector_0_M0_ARPROT),
        .M0_arready(fmn_axi_collector_0_M0_ARREADY),
        .M0_arsize(fmn_axi_collector_0_M0_ARSIZE),
        .M0_arvalid(fmn_axi_collector_0_M0_ARVALID),
        .M0_awaddr(fmn_axi_collector_0_M0_AWADDR),
        .M0_awburst(fmn_axi_collector_0_M0_AWBURST),
        .M0_awcache(fmn_axi_collector_0_M0_AWCACHE),
        .M0_awlen(fmn_axi_collector_0_M0_AWLEN),
        .M0_awprot(fmn_axi_collector_0_M0_AWPROT),
        .M0_awready(fmn_axi_collector_0_M0_AWREADY),
        .M0_awsize(fmn_axi_collector_0_M0_AWSIZE),
        .M0_awvalid(fmn_axi_collector_0_M0_AWVALID),
        .M0_bready(fmn_axi_collector_0_M0_BREADY),
        .M0_bresp(fmn_axi_collector_0_M0_BRESP),
        .M0_bvalid(fmn_axi_collector_0_M0_BVALID),
        .M0_rdata(fmn_axi_collector_0_M0_RDATA),
        .M0_rlast(fmn_axi_collector_0_M0_RLAST),
        .M0_rready(fmn_axi_collector_0_M0_RREADY),
        .M0_rresp(fmn_axi_collector_0_M0_RRESP),
        .M0_rvalid(fmn_axi_collector_0_M0_RVALID),
        .M0_wdata(fmn_axi_collector_0_M0_WDATA),
        .M0_wlast(fmn_axi_collector_0_M0_WLAST),
        .M0_wready(fmn_axi_collector_0_M0_WREADY),
        .M0_wstrb(fmn_axi_collector_0_M0_WSTRB),
        .M0_wvalid(fmn_axi_collector_0_M0_WVALID),
        .M1_araddr(fmn_axi_collector_0_M1_ARADDR),
        .M1_arburst(fmn_axi_collector_0_M1_ARBURST),
        .M1_arcache(fmn_axi_collector_0_M1_ARCACHE),
        .M1_arlen(fmn_axi_collector_0_M1_ARLEN),
        .M1_arprot(fmn_axi_collector_0_M1_ARPROT),
        .M1_arready(fmn_axi_collector_0_M1_ARREADY),
        .M1_arsize(fmn_axi_collector_0_M1_ARSIZE),
        .M1_arvalid(fmn_axi_collector_0_M1_ARVALID),
        .M1_awaddr(fmn_axi_collector_0_M1_AWADDR),
        .M1_awburst(fmn_axi_collector_0_M1_AWBURST),
        .M1_awcache(fmn_axi_collector_0_M1_AWCACHE),
        .M1_awlen(fmn_axi_collector_0_M1_AWLEN),
        .M1_awprot(fmn_axi_collector_0_M1_AWPROT),
        .M1_awready(fmn_axi_collector_0_M1_AWREADY),
        .M1_awsize(fmn_axi_collector_0_M1_AWSIZE),
        .M1_awvalid(fmn_axi_collector_0_M1_AWVALID),
        .M1_bready(fmn_axi_collector_0_M1_BREADY),
        .M1_bresp(fmn_axi_collector_0_M1_BRESP),
        .M1_bvalid(fmn_axi_collector_0_M1_BVALID),
        .M1_rdata(fmn_axi_collector_0_M1_RDATA),
        .M1_rlast(fmn_axi_collector_0_M1_RLAST),
        .M1_rready(fmn_axi_collector_0_M1_RREADY),
        .M1_rresp(fmn_axi_collector_0_M1_RRESP),
        .M1_rvalid(fmn_axi_collector_0_M1_RVALID),
        .M1_wdata(fmn_axi_collector_0_M1_WDATA),
        .M1_wlast(fmn_axi_collector_0_M1_WLAST),
        .M1_wready(fmn_axi_collector_0_M1_WREADY),
        .M1_wstrb(fmn_axi_collector_0_M1_WSTRB),
        .M1_wvalid(fmn_axi_collector_0_M1_WVALID),
        .M2_araddr(fmn_axi_collector_0_M2_ARADDR),
        .M2_arburst(fmn_axi_collector_0_M2_ARBURST),
        .M2_arcache(fmn_axi_collector_0_M2_ARCACHE),
        .M2_arlen(fmn_axi_collector_0_M2_ARLEN),
        .M2_arprot(fmn_axi_collector_0_M2_ARPROT),
        .M2_arready(fmn_axi_collector_0_M2_ARREADY),
        .M2_arsize(fmn_axi_collector_0_M2_ARSIZE),
        .M2_arvalid(fmn_axi_collector_0_M2_ARVALID),
        .M2_awaddr(fmn_axi_collector_0_M2_AWADDR),
        .M2_awburst(fmn_axi_collector_0_M2_AWBURST),
        .M2_awcache(fmn_axi_collector_0_M2_AWCACHE),
        .M2_awlen(fmn_axi_collector_0_M2_AWLEN),
        .M2_awprot(fmn_axi_collector_0_M2_AWPROT),
        .M2_awready(fmn_axi_collector_0_M2_AWREADY),
        .M2_awsize(fmn_axi_collector_0_M2_AWSIZE),
        .M2_awvalid(fmn_axi_collector_0_M2_AWVALID),
        .M2_bready(fmn_axi_collector_0_M2_BREADY),
        .M2_bresp(fmn_axi_collector_0_M2_BRESP),
        .M2_bvalid(fmn_axi_collector_0_M2_BVALID),
        .M2_rdata(fmn_axi_collector_0_M2_RDATA),
        .M2_rlast(fmn_axi_collector_0_M2_RLAST),
        .M2_rready(fmn_axi_collector_0_M2_RREADY),
        .M2_rresp(fmn_axi_collector_0_M2_RRESP),
        .M2_rvalid(fmn_axi_collector_0_M2_RVALID),
        .M2_wdata(fmn_axi_collector_0_M2_WDATA),
        .M2_wlast(fmn_axi_collector_0_M2_WLAST),
        .M2_wready(fmn_axi_collector_0_M2_WREADY),
        .M2_wstrb(fmn_axi_collector_0_M2_WSTRB),
        .M2_wvalid(fmn_axi_collector_0_M2_WVALID),
        .M3_araddr(fmn_axi_collector_0_M3_ARADDR),
        .M3_arburst(fmn_axi_collector_0_M3_ARBURST),
        .M3_arcache(fmn_axi_collector_0_M3_ARCACHE),
        .M3_arlen(fmn_axi_collector_0_M3_ARLEN),
        .M3_arprot(fmn_axi_collector_0_M3_ARPROT),
        .M3_arready(fmn_axi_collector_0_M3_ARREADY),
        .M3_arsize(fmn_axi_collector_0_M3_ARSIZE),
        .M3_arvalid(fmn_axi_collector_0_M3_ARVALID),
        .M3_awaddr(fmn_axi_collector_0_M3_AWADDR),
        .M3_awburst(fmn_axi_collector_0_M3_AWBURST),
        .M3_awcache(fmn_axi_collector_0_M3_AWCACHE),
        .M3_awlen(fmn_axi_collector_0_M3_AWLEN),
        .M3_awprot(fmn_axi_collector_0_M3_AWPROT),
        .M3_awready(fmn_axi_collector_0_M3_AWREADY),
        .M3_awsize(fmn_axi_collector_0_M3_AWSIZE),
        .M3_awvalid(fmn_axi_collector_0_M3_AWVALID),
        .M3_bready(fmn_axi_collector_0_M3_BREADY),
        .M3_bresp(fmn_axi_collector_0_M3_BRESP),
        .M3_bvalid(fmn_axi_collector_0_M3_BVALID),
        .M3_rdata(fmn_axi_collector_0_M3_RDATA),
        .M3_rlast(fmn_axi_collector_0_M3_RLAST),
        .M3_rready(fmn_axi_collector_0_M3_RREADY),
        .M3_rresp(fmn_axi_collector_0_M3_RRESP),
        .M3_rvalid(fmn_axi_collector_0_M3_RVALID),
        .M3_wdata(fmn_axi_collector_0_M3_WDATA),
        .M3_wlast(fmn_axi_collector_0_M3_WLAST),
        .M3_wready(fmn_axi_collector_0_M3_WREADY),
        .M3_wstrb(fmn_axi_collector_0_M3_WSTRB),
        .M3_wvalid(fmn_axi_collector_0_M3_WVALID),
        .M4_araddr(fmn_axi_collector_0_M4_ARADDR),
        .M4_arburst(fmn_axi_collector_0_M4_ARBURST),
        .M4_arcache(fmn_axi_collector_0_M4_ARCACHE),
        .M4_arlen(fmn_axi_collector_0_M4_ARLEN),
        .M4_arprot(fmn_axi_collector_0_M4_ARPROT),
        .M4_arready(fmn_axi_collector_0_M4_ARREADY),
        .M4_arsize(fmn_axi_collector_0_M4_ARSIZE),
        .M4_arvalid(fmn_axi_collector_0_M4_ARVALID),
        .M4_awaddr(fmn_axi_collector_0_M4_AWADDR),
        .M4_awburst(fmn_axi_collector_0_M4_AWBURST),
        .M4_awcache(fmn_axi_collector_0_M4_AWCACHE),
        .M4_awlen(fmn_axi_collector_0_M4_AWLEN),
        .M4_awprot(fmn_axi_collector_0_M4_AWPROT),
        .M4_awready(fmn_axi_collector_0_M4_AWREADY),
        .M4_awsize(fmn_axi_collector_0_M4_AWSIZE),
        .M4_awvalid(fmn_axi_collector_0_M4_AWVALID),
        .M4_bready(fmn_axi_collector_0_M4_BREADY),
        .M4_bresp(fmn_axi_collector_0_M4_BRESP),
        .M4_bvalid(fmn_axi_collector_0_M4_BVALID),
        .M4_rdata(fmn_axi_collector_0_M4_RDATA),
        .M4_rlast(fmn_axi_collector_0_M4_RLAST),
        .M4_rready(fmn_axi_collector_0_M4_RREADY),
        .M4_rresp(fmn_axi_collector_0_M4_RRESP),
        .M4_rvalid(fmn_axi_collector_0_M4_RVALID),
        .M4_wdata(fmn_axi_collector_0_M4_WDATA),
        .M4_wlast(fmn_axi_collector_0_M4_WLAST),
        .M4_wready(fmn_axi_collector_0_M4_WREADY),
        .M4_wstrb(fmn_axi_collector_0_M4_WSTRB),
        .M4_wvalid(fmn_axi_collector_0_M4_WVALID),
        .M5_araddr(fmn_axi_collector_0_M5_ARADDR),
        .M5_arburst(fmn_axi_collector_0_M5_ARBURST),
        .M5_arcache(fmn_axi_collector_0_M5_ARCACHE),
        .M5_arlen(fmn_axi_collector_0_M5_ARLEN),
        .M5_arprot(fmn_axi_collector_0_M5_ARPROT),
        .M5_arready(fmn_axi_collector_0_M5_ARREADY),
        .M5_arsize(fmn_axi_collector_0_M5_ARSIZE),
        .M5_arvalid(fmn_axi_collector_0_M5_ARVALID),
        .M5_awaddr(fmn_axi_collector_0_M5_AWADDR),
        .M5_awburst(fmn_axi_collector_0_M5_AWBURST),
        .M5_awcache(fmn_axi_collector_0_M5_AWCACHE),
        .M5_awlen(fmn_axi_collector_0_M5_AWLEN),
        .M5_awprot(fmn_axi_collector_0_M5_AWPROT),
        .M5_awready(fmn_axi_collector_0_M5_AWREADY),
        .M5_awsize(fmn_axi_collector_0_M5_AWSIZE),
        .M5_awvalid(fmn_axi_collector_0_M5_AWVALID),
        .M5_bready(fmn_axi_collector_0_M5_BREADY),
        .M5_bresp(fmn_axi_collector_0_M5_BRESP),
        .M5_bvalid(fmn_axi_collector_0_M5_BVALID),
        .M5_rdata(fmn_axi_collector_0_M5_RDATA),
        .M5_rlast(fmn_axi_collector_0_M5_RLAST),
        .M5_rready(fmn_axi_collector_0_M5_RREADY),
        .M5_rresp(fmn_axi_collector_0_M5_RRESP),
        .M5_rvalid(fmn_axi_collector_0_M5_RVALID),
        .M5_wdata(fmn_axi_collector_0_M5_WDATA),
        .M5_wlast(fmn_axi_collector_0_M5_WLAST),
        .M5_wready(fmn_axi_collector_0_M5_WREADY),
        .M5_wstrb(fmn_axi_collector_0_M5_WSTRB),
        .M5_wvalid(fmn_axi_collector_0_M5_WVALID),
        .M6_araddr(fmn_axi_collector_0_M6_ARADDR),
        .M6_arburst(fmn_axi_collector_0_M6_ARBURST),
        .M6_arcache(fmn_axi_collector_0_M6_ARCACHE),
        .M6_arlen(fmn_axi_collector_0_M6_ARLEN),
        .M6_arprot(fmn_axi_collector_0_M6_ARPROT),
        .M6_arready(fmn_axi_collector_0_M6_ARREADY),
        .M6_arsize(fmn_axi_collector_0_M6_ARSIZE),
        .M6_arvalid(fmn_axi_collector_0_M6_ARVALID),
        .M6_awaddr(fmn_axi_collector_0_M6_AWADDR),
        .M6_awburst(fmn_axi_collector_0_M6_AWBURST),
        .M6_awcache(fmn_axi_collector_0_M6_AWCACHE),
        .M6_awlen(fmn_axi_collector_0_M6_AWLEN),
        .M6_awprot(fmn_axi_collector_0_M6_AWPROT),
        .M6_awready(fmn_axi_collector_0_M6_AWREADY),
        .M6_awsize(fmn_axi_collector_0_M6_AWSIZE),
        .M6_awvalid(fmn_axi_collector_0_M6_AWVALID),
        .M6_bready(fmn_axi_collector_0_M6_BREADY),
        .M6_bresp(fmn_axi_collector_0_M6_BRESP),
        .M6_bvalid(fmn_axi_collector_0_M6_BVALID),
        .M6_rdata(fmn_axi_collector_0_M6_RDATA),
        .M6_rlast(fmn_axi_collector_0_M6_RLAST),
        .M6_rready(fmn_axi_collector_0_M6_RREADY),
        .M6_rresp(fmn_axi_collector_0_M6_RRESP),
        .M6_rvalid(fmn_axi_collector_0_M6_RVALID),
        .M6_wdata(fmn_axi_collector_0_M6_WDATA),
        .M6_wlast(fmn_axi_collector_0_M6_WLAST),
        .M6_wready(fmn_axi_collector_0_M6_WREADY),
        .M6_wstrb(fmn_axi_collector_0_M6_WSTRB),
        .M6_wvalid(fmn_axi_collector_0_M6_WVALID),
        .M7_araddr(fmn_axi_collector_0_M7_ARADDR),
        .M7_arburst(fmn_axi_collector_0_M7_ARBURST),
        .M7_arcache(fmn_axi_collector_0_M7_ARCACHE),
        .M7_arlen(fmn_axi_collector_0_M7_ARLEN),
        .M7_arprot(fmn_axi_collector_0_M7_ARPROT),
        .M7_arready(fmn_axi_collector_0_M7_ARREADY),
        .M7_arsize(fmn_axi_collector_0_M7_ARSIZE),
        .M7_arvalid(fmn_axi_collector_0_M7_ARVALID),
        .M7_awaddr(fmn_axi_collector_0_M7_AWADDR),
        .M7_awburst(fmn_axi_collector_0_M7_AWBURST),
        .M7_awcache(fmn_axi_collector_0_M7_AWCACHE),
        .M7_awlen(fmn_axi_collector_0_M7_AWLEN),
        .M7_awprot(fmn_axi_collector_0_M7_AWPROT),
        .M7_awready(fmn_axi_collector_0_M7_AWREADY),
        .M7_awsize(fmn_axi_collector_0_M7_AWSIZE),
        .M7_awvalid(fmn_axi_collector_0_M7_AWVALID),
        .M7_bready(fmn_axi_collector_0_M7_BREADY),
        .M7_bresp(fmn_axi_collector_0_M7_BRESP),
        .M7_bvalid(fmn_axi_collector_0_M7_BVALID),
        .M7_rdata(fmn_axi_collector_0_M7_RDATA),
        .M7_rlast(fmn_axi_collector_0_M7_RLAST),
        .M7_rready(fmn_axi_collector_0_M7_RREADY),
        .M7_rresp(fmn_axi_collector_0_M7_RRESP),
        .M7_rvalid(fmn_axi_collector_0_M7_RVALID),
        .M7_wdata(fmn_axi_collector_0_M7_WDATA),
        .M7_wlast(fmn_axi_collector_0_M7_WLAST),
        .M7_wready(fmn_axi_collector_0_M7_WREADY),
        .M7_wstrb(fmn_axi_collector_0_M7_WSTRB),
        .M7_wvalid(fmn_axi_collector_0_M7_WVALID),
        .SN_araddr(SN_araddr_0_1),
        .SN_arburst(SN_arburst_0_1),
        .SN_arcache(SN_arcache_0_1),
        .SN_arlen(SN_arlen_0_1),
        .SN_arprot(SN_arprot_0_1),
        .SN_arready(fmn_axi_collector_0_SN_arready),
        .SN_arsize(SN_arsize_0_1),
        .SN_arvalid(SN_arvalid_0_1),
        .SN_awaddr(SN_awaddr_0_1),
        .SN_awburst(SN_awburst_0_1),
        .SN_awcache(SN_awcache_0_1),
        .SN_awlen(SN_awlen_0_1),
        .SN_awprot(SN_awprot_0_1),
        .SN_awready(fmn_axi_collector_0_SN_awready),
        .SN_awsize(SN_awsize_0_1),
        .SN_awvalid(SN_awvalid_0_1),
        .SN_bready(SN_bready_0_1),
        .SN_bresp(fmn_axi_collector_0_SN_bresp),
        .SN_bvalid(fmn_axi_collector_0_SN_bvalid),
        .SN_rdata(fmn_axi_collector_0_SN_rdata),
        .SN_rlast(fmn_axi_collector_0_SN_rlast),
        .SN_rready(SN_rready_1_1),
        .SN_rresp(fmn_axi_collector_0_SN_rresp),
        .SN_rvalid(fmn_axi_collector_0_SN_rvalid),
        .SN_wdata(SN_wdata_0_1),
        .SN_wlast(SN_wlast_0_1),
        .SN_wready(fmn_axi_collector_0_SN_wready),
        .SN_wstrb(SN_wstrb_0_1),
        .SN_wvalid(SN_wvalid_0_1),
        .aclk(aclk_0_1),
        .aresetn(aresetn_0_1));
endmodule
