//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Thu Apr 19 16:03:54 2018
//Host        : PHY-NC188089 running 64-bit major release  (build 9200)
//Command     : generate_target axi_ethernet_streamer.bd
//Design      : axi_ethernet_streamer
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "axi_ethernet_streamer,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=axi_ethernet_streamer,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=8,numNonXlnxBlks=1,numHierBlks=5,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=8,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "axi_ethernet_streamer.hwdef" *) 
module axi_ethernet_streamer
   (clk100,
    locked,
    m_axis_eth_rx_tdata,
    m_axis_eth_rx_tkeep,
    m_axis_eth_rx_tlast,
    m_axis_eth_rx_tready,
    m_axis_eth_rx_tvalid,
    mac_address,
    mdio_mdc,
    mdio_mdio_i,
    mdio_mdio_o,
    mdio_mdio_t,
    mii_col,
    mii_crs,
    mii_rst_n,
    mii_rx_clk,
    mii_rx_dv,
    mii_rx_er,
    mii_rxd,
    mii_tx_clk,
    mii_tx_en,
    mii_txd,
    reset_out,
    resetn,
    s_axis_eth_tx_tdata,
    s_axis_eth_tx_tlast,
    s_axis_eth_tx_tready,
    s_axis_eth_tx_tvalid);
  input clk100;
  input locked;
  output [7:0]m_axis_eth_rx_tdata;
  output [0:0]m_axis_eth_rx_tkeep;
  output m_axis_eth_rx_tlast;
  input m_axis_eth_rx_tready;
  output m_axis_eth_rx_tvalid;
  input [47:0]mac_address;
  output mdio_mdc;
  input mdio_mdio_i;
  output mdio_mdio_o;
  output mdio_mdio_t;
  input mii_col;
  input mii_crs;
  output mii_rst_n;
  input mii_rx_clk;
  input mii_rx_dv;
  input mii_rx_er;
  input [3:0]mii_rxd;
  input mii_tx_clk;
  output mii_tx_en;
  output [3:0]mii_txd;
  output [0:0]reset_out;
  input resetn;
  input [7:0]s_axis_eth_tx_tdata;
  input s_axis_eth_tx_tlast;
  output s_axis_eth_tx_tready;
  input s_axis_eth_tx_tvalid;

  wire [7:0]axi_datamover_0_M_AXIS_MM2S_STS_TDATA;
  wire axi_datamover_0_M_AXIS_MM2S_STS_TREADY;
  wire axi_datamover_0_M_AXIS_MM2S_STS_TVALID;
  (* CONN_BUS_INFO = "axi_datamover_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [7:0]axi_datamover_0_M_AXIS_MM2S_TDATA;
  (* CONN_BUS_INFO = "axi_datamover_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [0:0]axi_datamover_0_M_AXIS_MM2S_TKEEP;
  (* CONN_BUS_INFO = "axi_datamover_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire axi_datamover_0_M_AXIS_MM2S_TLAST;
  (* CONN_BUS_INFO = "axi_datamover_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire axi_datamover_0_M_AXIS_MM2S_TREADY;
  (* CONN_BUS_INFO = "axi_datamover_0_M_AXIS_MM2S xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire axi_datamover_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_datamover_0_M_AXIS_S2MM_STS_TDATA;
  wire axi_datamover_0_M_AXIS_S2MM_STS_TREADY;
  wire axi_datamover_0_M_AXIS_S2MM_STS_TVALID;
  wire [31:0]axi_datamover_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_datamover_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_datamover_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_datamover_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_datamover_0_M_AXI_MM2S_ARPROT;
  wire axi_datamover_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_datamover_0_M_AXI_MM2S_ARSIZE;
  wire [3:0]axi_datamover_0_M_AXI_MM2S_ARUSER;
  wire axi_datamover_0_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_datamover_0_M_AXI_MM2S_RDATA;
  wire axi_datamover_0_M_AXI_MM2S_RLAST;
  wire axi_datamover_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_datamover_0_M_AXI_MM2S_RRESP;
  wire axi_datamover_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_datamover_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_datamover_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_datamover_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_datamover_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_datamover_0_M_AXI_S2MM_AWPROT;
  wire axi_datamover_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_datamover_0_M_AXI_S2MM_AWSIZE;
  wire [3:0]axi_datamover_0_M_AXI_S2MM_AWUSER;
  wire axi_datamover_0_M_AXI_S2MM_AWVALID;
  wire axi_datamover_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_datamover_0_M_AXI_S2MM_BRESP;
  wire axi_datamover_0_M_AXI_S2MM_BVALID;
  wire [31:0]axi_datamover_0_M_AXI_S2MM_WDATA;
  wire axi_datamover_0_M_AXI_S2MM_WLAST;
  wire axi_datamover_0_M_AXI_S2MM_WREADY;
  wire [3:0]axi_datamover_0_M_AXI_S2MM_WSTRB;
  wire axi_datamover_0_M_AXI_S2MM_WVALID;
  wire axi_ethernetlite_0_MDIO_MDC;
  wire axi_ethernetlite_0_MDIO_MDIO_I;
  wire axi_ethernetlite_0_MDIO_MDIO_O;
  wire axi_ethernetlite_0_MDIO_MDIO_T;
  wire axi_ethernetlite_0_MII_COL;
  wire axi_ethernetlite_0_MII_CRS;
  wire axi_ethernetlite_0_MII_RST_N;
  wire [3:0]axi_ethernetlite_0_MII_RXD;
  wire axi_ethernetlite_0_MII_RX_CLK;
  wire axi_ethernetlite_0_MII_RX_DV;
  wire axi_ethernetlite_0_MII_RX_ER;
  wire [3:0]axi_ethernetlite_0_MII_TXD;
  wire axi_ethernetlite_0_MII_TX_CLK;
  wire axi_ethernetlite_0_MII_TX_EN;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_ARREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_ARVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_AWREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_AWVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_BREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_BVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_RLAST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_RREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_RVALID;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_WLAST;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_WREADY;
  (* CONN_BUS_INFO = "axi_interconnect_0_M00_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire axi_interconnect_0_M00_AXI_WVALID;
  wire [12:0]axi_protocol_converter_0_M_AXI_ARADDR;
  wire [1:0]axi_protocol_converter_0_M_AXI_ARBURST;
  wire [3:0]axi_protocol_converter_0_M_AXI_ARCACHE;
  wire [7:0]axi_protocol_converter_0_M_AXI_ARLEN;
  wire [0:0]axi_protocol_converter_0_M_AXI_ARLOCK;
  wire [2:0]axi_protocol_converter_0_M_AXI_ARPROT;
  wire [3:0]axi_protocol_converter_0_M_AXI_ARQOS;
  wire axi_protocol_converter_0_M_AXI_ARREADY;
  wire [2:0]axi_protocol_converter_0_M_AXI_ARSIZE;
  wire axi_protocol_converter_0_M_AXI_ARVALID;
  wire [12:0]axi_protocol_converter_0_M_AXI_AWADDR;
  wire [1:0]axi_protocol_converter_0_M_AXI_AWBURST;
  wire [3:0]axi_protocol_converter_0_M_AXI_AWCACHE;
  wire [7:0]axi_protocol_converter_0_M_AXI_AWLEN;
  wire [0:0]axi_protocol_converter_0_M_AXI_AWLOCK;
  wire [2:0]axi_protocol_converter_0_M_AXI_AWPROT;
  wire [3:0]axi_protocol_converter_0_M_AXI_AWQOS;
  wire axi_protocol_converter_0_M_AXI_AWREADY;
  wire [2:0]axi_protocol_converter_0_M_AXI_AWSIZE;
  wire axi_protocol_converter_0_M_AXI_AWVALID;
  wire axi_protocol_converter_0_M_AXI_BREADY;
  wire [1:0]axi_protocol_converter_0_M_AXI_BRESP;
  wire axi_protocol_converter_0_M_AXI_BVALID;
  wire [31:0]axi_protocol_converter_0_M_AXI_RDATA;
  wire axi_protocol_converter_0_M_AXI_RLAST;
  wire axi_protocol_converter_0_M_AXI_RREADY;
  wire [1:0]axi_protocol_converter_0_M_AXI_RRESP;
  wire axi_protocol_converter_0_M_AXI_RVALID;
  wire [31:0]axi_protocol_converter_0_M_AXI_WDATA;
  wire axi_protocol_converter_0_M_AXI_WLAST;
  wire axi_protocol_converter_0_M_AXI_WREADY;
  wire [3:0]axi_protocol_converter_0_M_AXI_WSTRB;
  wire axi_protocol_converter_0_M_AXI_WVALID;
  wire clk100_1;
  wire dcm_locked_1;
  wire [47:0]mac_address_1;
  wire [12:0]picoblaze_ethernet_lite_controller_0_m_axi_ARADDR;
  wire picoblaze_ethernet_lite_controller_0_m_axi_ARREADY;
  wire picoblaze_ethernet_lite_controller_0_m_axi_ARVALID;
  wire [12:0]picoblaze_ethernet_lite_controller_0_m_axi_AWADDR;
  wire picoblaze_ethernet_lite_controller_0_m_axi_AWREADY;
  wire picoblaze_ethernet_lite_controller_0_m_axi_AWVALID;
  wire picoblaze_ethernet_lite_controller_0_m_axi_BREADY;
  wire [1:0]picoblaze_ethernet_lite_controller_0_m_axi_BRESP;
  wire picoblaze_ethernet_lite_controller_0_m_axi_BVALID;
  wire [31:0]picoblaze_ethernet_lite_controller_0_m_axi_RDATA;
  wire picoblaze_ethernet_lite_controller_0_m_axi_RREADY;
  wire [1:0]picoblaze_ethernet_lite_controller_0_m_axi_RRESP;
  wire picoblaze_ethernet_lite_controller_0_m_axi_RVALID;
  wire [31:0]picoblaze_ethernet_lite_controller_0_m_axi_WDATA;
  wire picoblaze_ethernet_lite_controller_0_m_axi_WREADY;
  wire [3:0]picoblaze_ethernet_lite_controller_0_m_axi_WSTRB;
  wire picoblaze_ethernet_lite_controller_0_m_axi_WVALID;
  wire [71:0]picoblaze_ethernet_lite_controller_0_m_axis_mm2s_cmd_TDATA;
  wire picoblaze_ethernet_lite_controller_0_m_axis_mm2s_cmd_TREADY;
  wire picoblaze_ethernet_lite_controller_0_m_axis_mm2s_cmd_TVALID;
  (* CONN_BUS_INFO = "picoblaze_ethernet_lite_controller_0_m_axis_s2mm xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [7:0]picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TDATA;
  (* CONN_BUS_INFO = "picoblaze_ethernet_lite_controller_0_m_axis_s2mm xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [0:0]picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TKEEP;
  (* CONN_BUS_INFO = "picoblaze_ethernet_lite_controller_0_m_axis_s2mm xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TLAST;
  (* CONN_BUS_INFO = "picoblaze_ethernet_lite_controller_0_m_axis_s2mm xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TREADY;
  (* CONN_BUS_INFO = "picoblaze_ethernet_lite_controller_0_m_axis_s2mm xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TVALID;
  wire [71:0]picoblaze_ethernet_lite_controller_0_m_axis_s2mm_cmd_TDATA;
  wire picoblaze_ethernet_lite_controller_0_m_axis_s2mm_cmd_TREADY;
  wire picoblaze_ethernet_lite_controller_0_m_axis_s2mm_cmd_TVALID;
  wire resetn_1;
  wire [0:0]rst_clk100_100M_interconnect_aresetn;
  wire [0:0]rst_clk100_100M_peripheral_aresetn;
  wire [7:0]s_axis_s2mm_1_TDATA;
  wire s_axis_s2mm_1_TLAST;
  wire s_axis_s2mm_1_TREADY;
  wire s_axis_s2mm_1_TVALID;
  wire [0:0]u_rst_peripheral_reset;
  wire [3:0]xlconstant_0_dout;

  assign axi_datamover_0_M_AXIS_MM2S_TREADY = m_axis_eth_rx_tready;
  assign axi_ethernetlite_0_MDIO_MDIO_I = mdio_mdio_i;
  assign axi_ethernetlite_0_MII_COL = mii_col;
  assign axi_ethernetlite_0_MII_CRS = mii_crs;
  assign axi_ethernetlite_0_MII_RXD = mii_rxd[3:0];
  assign axi_ethernetlite_0_MII_RX_CLK = mii_rx_clk;
  assign axi_ethernetlite_0_MII_RX_DV = mii_rx_dv;
  assign axi_ethernetlite_0_MII_RX_ER = mii_rx_er;
  assign axi_ethernetlite_0_MII_TX_CLK = mii_tx_clk;
  assign clk100_1 = clk100;
  assign dcm_locked_1 = locked;
  assign m_axis_eth_rx_tdata[7:0] = axi_datamover_0_M_AXIS_MM2S_TDATA;
  assign m_axis_eth_rx_tkeep[0] = axi_datamover_0_M_AXIS_MM2S_TKEEP;
  assign m_axis_eth_rx_tlast = axi_datamover_0_M_AXIS_MM2S_TLAST;
  assign m_axis_eth_rx_tvalid = axi_datamover_0_M_AXIS_MM2S_TVALID;
  assign mac_address_1 = mac_address[47:0];
  assign mdio_mdc = axi_ethernetlite_0_MDIO_MDC;
  assign mdio_mdio_o = axi_ethernetlite_0_MDIO_MDIO_O;
  assign mdio_mdio_t = axi_ethernetlite_0_MDIO_MDIO_T;
  assign mii_rst_n = axi_ethernetlite_0_MII_RST_N;
  assign mii_tx_en = axi_ethernetlite_0_MII_TX_EN;
  assign mii_txd[3:0] = axi_ethernetlite_0_MII_TXD;
  assign reset_out[0] = u_rst_peripheral_reset;
  assign resetn_1 = resetn;
  assign s_axis_eth_tx_tready = s_axis_s2mm_1_TREADY;
  assign s_axis_s2mm_1_TDATA = s_axis_eth_tx_tdata[7:0];
  assign s_axis_s2mm_1_TLAST = s_axis_eth_tx_tlast;
  assign s_axis_s2mm_1_TVALID = s_axis_eth_tx_tvalid;
  axi_ethernet_streamer_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR[12:0]),
        .SLOT_0_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .SLOT_0_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .SLOT_0_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .SLOT_0_AXI_arprot({1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .SLOT_0_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .SLOT_0_AXI_aruser({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR[12:0]),
        .SLOT_0_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .SLOT_0_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .SLOT_0_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .SLOT_0_AXI_awprot({1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .SLOT_0_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .SLOT_0_AXI_awuser({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .SLOT_0_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .SLOT_0_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .SLOT_0_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .SLOT_0_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .SLOT_0_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .SLOT_0_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .SLOT_0_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .SLOT_0_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .SLOT_0_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .SLOT_0_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .SLOT_0_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .SLOT_0_AXI_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .SLOT_1_AXIS_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TDATA}),
        .SLOT_1_AXIS_tkeep({1'b0,1'b0,1'b0,picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TKEEP}),
        .SLOT_1_AXIS_tlast(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TLAST),
        .SLOT_1_AXIS_tready(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TREADY),
        .SLOT_1_AXIS_tvalid(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TVALID),
        .SLOT_2_AXIS_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_datamover_0_M_AXIS_MM2S_TDATA}),
        .SLOT_2_AXIS_tkeep({1'b0,1'b0,1'b0,axi_datamover_0_M_AXIS_MM2S_TKEEP}),
        .SLOT_2_AXIS_tlast(axi_datamover_0_M_AXIS_MM2S_TLAST),
        .SLOT_2_AXIS_tready(axi_datamover_0_M_AXIS_MM2S_TREADY),
        .SLOT_2_AXIS_tvalid(axi_datamover_0_M_AXIS_MM2S_TVALID),
        .clk(clk100_1),
        .resetn(rst_clk100_100M_interconnect_aresetn));
  axi_ethernet_streamer_xlconstant_0_0 tie
       (.dout(xlconstant_0_dout));
  axi_ethernet_streamer_axi_protocol_converter_0_0 u_conv
       (.aclk(clk100_1),
        .aresetn(rst_clk100_100M_interconnect_aresetn),
        .m_axi_araddr(axi_protocol_converter_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_protocol_converter_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_protocol_converter_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_protocol_converter_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_protocol_converter_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_protocol_converter_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_protocol_converter_0_M_AXI_ARQOS),
        .m_axi_arready(axi_protocol_converter_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_protocol_converter_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_protocol_converter_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_protocol_converter_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_protocol_converter_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_protocol_converter_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_protocol_converter_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_protocol_converter_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_protocol_converter_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_protocol_converter_0_M_AXI_AWQOS),
        .m_axi_awready(axi_protocol_converter_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_protocol_converter_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_protocol_converter_0_M_AXI_AWVALID),
        .m_axi_bready(axi_protocol_converter_0_M_AXI_BREADY),
        .m_axi_bresp(axi_protocol_converter_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_protocol_converter_0_M_AXI_BVALID),
        .m_axi_rdata(axi_protocol_converter_0_M_AXI_RDATA),
        .m_axi_rlast(axi_protocol_converter_0_M_AXI_RLAST),
        .m_axi_rready(axi_protocol_converter_0_M_AXI_RREADY),
        .m_axi_rresp(axi_protocol_converter_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_protocol_converter_0_M_AXI_RVALID),
        .m_axi_wdata(axi_protocol_converter_0_M_AXI_WDATA),
        .m_axi_wlast(axi_protocol_converter_0_M_AXI_WLAST),
        .m_axi_wready(axi_protocol_converter_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_protocol_converter_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_protocol_converter_0_M_AXI_WVALID),
        .s_axi_araddr(picoblaze_ethernet_lite_controller_0_m_axi_ARADDR),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(picoblaze_ethernet_lite_controller_0_m_axi_ARREADY),
        .s_axi_arvalid(picoblaze_ethernet_lite_controller_0_m_axi_ARVALID),
        .s_axi_awaddr(picoblaze_ethernet_lite_controller_0_m_axi_AWADDR),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(picoblaze_ethernet_lite_controller_0_m_axi_AWREADY),
        .s_axi_awvalid(picoblaze_ethernet_lite_controller_0_m_axi_AWVALID),
        .s_axi_bready(picoblaze_ethernet_lite_controller_0_m_axi_BREADY),
        .s_axi_bresp(picoblaze_ethernet_lite_controller_0_m_axi_BRESP),
        .s_axi_bvalid(picoblaze_ethernet_lite_controller_0_m_axi_BVALID),
        .s_axi_rdata(picoblaze_ethernet_lite_controller_0_m_axi_RDATA),
        .s_axi_rready(picoblaze_ethernet_lite_controller_0_m_axi_RREADY),
        .s_axi_rresp(picoblaze_ethernet_lite_controller_0_m_axi_RRESP),
        .s_axi_rvalid(picoblaze_ethernet_lite_controller_0_m_axi_RVALID),
        .s_axi_wdata(picoblaze_ethernet_lite_controller_0_m_axi_WDATA),
        .s_axi_wready(picoblaze_ethernet_lite_controller_0_m_axi_WREADY),
        .s_axi_wstrb(picoblaze_ethernet_lite_controller_0_m_axi_WSTRB),
        .s_axi_wvalid(picoblaze_ethernet_lite_controller_0_m_axi_WVALID));
  axi_ethernet_streamer_axi_datamover_0_0 u_dm
       (.m_axi_mm2s_aclk(clk100_1),
        .m_axi_mm2s_araddr(axi_datamover_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_datamover_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_datamover_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_aresetn(rst_clk100_100M_peripheral_aresetn),
        .m_axi_mm2s_arlen(axi_datamover_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_datamover_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_datamover_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_datamover_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_aruser(axi_datamover_0_M_AXI_MM2S_ARUSER),
        .m_axi_mm2s_arvalid(axi_datamover_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_datamover_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_datamover_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_datamover_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_datamover_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_datamover_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(clk100_1),
        .m_axi_s2mm_aresetn(rst_clk100_100M_peripheral_aresetn),
        .m_axi_s2mm_awaddr(axi_datamover_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_datamover_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_datamover_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_datamover_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_datamover_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_datamover_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_datamover_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awuser(axi_datamover_0_M_AXI_S2MM_AWUSER),
        .m_axi_s2mm_awvalid(axi_datamover_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_datamover_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_datamover_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_datamover_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_datamover_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_datamover_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_datamover_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_datamover_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_datamover_0_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_cmdsts_aclk(clk100_1),
        .m_axis_mm2s_cmdsts_aresetn(rst_clk100_100M_peripheral_aresetn),
        .m_axis_mm2s_sts_tdata(axi_datamover_0_M_AXIS_MM2S_STS_TDATA),
        .m_axis_mm2s_sts_tready(axi_datamover_0_M_AXIS_MM2S_STS_TREADY),
        .m_axis_mm2s_sts_tvalid(axi_datamover_0_M_AXIS_MM2S_STS_TVALID),
        .m_axis_mm2s_tdata(axi_datamover_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_datamover_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_datamover_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_datamover_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_datamover_0_M_AXIS_MM2S_TVALID),
        .m_axis_s2mm_cmdsts_aresetn(rst_clk100_100M_peripheral_aresetn),
        .m_axis_s2mm_cmdsts_awclk(clk100_1),
        .m_axis_s2mm_sts_tdata(axi_datamover_0_M_AXIS_S2MM_STS_TDATA),
        .m_axis_s2mm_sts_tready(axi_datamover_0_M_AXIS_S2MM_STS_TREADY),
        .m_axis_s2mm_sts_tvalid(axi_datamover_0_M_AXIS_S2MM_STS_TVALID),
        .s_axis_mm2s_cmd_tdata(picoblaze_ethernet_lite_controller_0_m_axis_mm2s_cmd_TDATA),
        .s_axis_mm2s_cmd_tready(picoblaze_ethernet_lite_controller_0_m_axis_mm2s_cmd_TREADY),
        .s_axis_mm2s_cmd_tvalid(picoblaze_ethernet_lite_controller_0_m_axis_mm2s_cmd_TVALID),
        .s_axis_s2mm_cmd_tdata(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_cmd_TDATA),
        .s_axis_s2mm_cmd_tready(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_cmd_TREADY),
        .s_axis_s2mm_cmd_tvalid(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_cmd_TVALID),
        .s_axis_s2mm_tdata(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TDATA),
        .s_axis_s2mm_tkeep(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TKEEP),
        .s_axis_s2mm_tlast(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TLAST),
        .s_axis_s2mm_tready(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TREADY),
        .s_axis_s2mm_tvalid(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TVALID));
  axi_ethernet_streamer_axi_ethernetlite_0_0 u_eth
       (.phy_col(axi_ethernetlite_0_MII_COL),
        .phy_crs(axi_ethernetlite_0_MII_CRS),
        .phy_dv(axi_ethernetlite_0_MII_RX_DV),
        .phy_mdc(axi_ethernetlite_0_MDIO_MDC),
        .phy_mdio_i(axi_ethernetlite_0_MDIO_MDIO_I),
        .phy_mdio_o(axi_ethernetlite_0_MDIO_MDIO_O),
        .phy_mdio_t(axi_ethernetlite_0_MDIO_MDIO_T),
        .phy_rst_n(axi_ethernetlite_0_MII_RST_N),
        .phy_rx_clk(axi_ethernetlite_0_MII_RX_CLK),
        .phy_rx_data(axi_ethernetlite_0_MII_RXD),
        .phy_rx_er(axi_ethernetlite_0_MII_RX_ER),
        .phy_tx_clk(axi_ethernetlite_0_MII_TX_CLK),
        .phy_tx_data(axi_ethernetlite_0_MII_TXD),
        .phy_tx_en(axi_ethernetlite_0_MII_TX_EN),
        .s_axi_aclk(clk100_1),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[12:0]),
        .s_axi_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .s_axi_aresetn(rst_clk100_100M_peripheral_aresetn),
        .s_axi_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[12:0]),
        .s_axi_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(xlconstant_0_dout),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  axi_ethernet_streamer_picoblaze_ethernet_lite_controller_0_0 u_pb
       (.m_axi_aclk(clk100_1),
        .m_axi_araddr(picoblaze_ethernet_lite_controller_0_m_axi_ARADDR),
        .m_axi_aresetn(rst_clk100_100M_peripheral_aresetn),
        .m_axi_arready(picoblaze_ethernet_lite_controller_0_m_axi_ARREADY),
        .m_axi_arvalid(picoblaze_ethernet_lite_controller_0_m_axi_ARVALID),
        .m_axi_awaddr(picoblaze_ethernet_lite_controller_0_m_axi_AWADDR),
        .m_axi_awready(picoblaze_ethernet_lite_controller_0_m_axi_AWREADY),
        .m_axi_awvalid(picoblaze_ethernet_lite_controller_0_m_axi_AWVALID),
        .m_axi_bready(picoblaze_ethernet_lite_controller_0_m_axi_BREADY),
        .m_axi_bresp(picoblaze_ethernet_lite_controller_0_m_axi_BRESP),
        .m_axi_bvalid(picoblaze_ethernet_lite_controller_0_m_axi_BVALID),
        .m_axi_rdata(picoblaze_ethernet_lite_controller_0_m_axi_RDATA),
        .m_axi_rready(picoblaze_ethernet_lite_controller_0_m_axi_RREADY),
        .m_axi_rresp(picoblaze_ethernet_lite_controller_0_m_axi_RRESP),
        .m_axi_rvalid(picoblaze_ethernet_lite_controller_0_m_axi_RVALID),
        .m_axi_wdata(picoblaze_ethernet_lite_controller_0_m_axi_WDATA),
        .m_axi_wready(picoblaze_ethernet_lite_controller_0_m_axi_WREADY),
        .m_axi_wstrb(picoblaze_ethernet_lite_controller_0_m_axi_WSTRB),
        .m_axi_wvalid(picoblaze_ethernet_lite_controller_0_m_axi_WVALID),
        .m_axis_mm2s_cmd_tdata(picoblaze_ethernet_lite_controller_0_m_axis_mm2s_cmd_TDATA),
        .m_axis_mm2s_cmd_tready(picoblaze_ethernet_lite_controller_0_m_axis_mm2s_cmd_TREADY),
        .m_axis_mm2s_cmd_tvalid(picoblaze_ethernet_lite_controller_0_m_axis_mm2s_cmd_TVALID),
        .m_axis_s2mm_cmd_tdata(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_cmd_TDATA),
        .m_axis_s2mm_cmd_tready(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_cmd_TREADY),
        .m_axis_s2mm_cmd_tvalid(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_cmd_TVALID),
        .m_axis_s2mm_tdata(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TDATA),
        .m_axis_s2mm_tkeep(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TKEEP),
        .m_axis_s2mm_tlast(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TLAST),
        .m_axis_s2mm_tready(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TREADY),
        .m_axis_s2mm_tvalid(picoblaze_ethernet_lite_controller_0_m_axis_s2mm_TVALID),
        .mac_address(mac_address_1),
        .s_axis_mm2s_sts_tdata(axi_datamover_0_M_AXIS_MM2S_STS_TDATA),
        .s_axis_mm2s_sts_tready(axi_datamover_0_M_AXIS_MM2S_STS_TREADY),
        .s_axis_mm2s_sts_tvalid(axi_datamover_0_M_AXIS_MM2S_STS_TVALID),
        .s_axis_s2mm_sts_tdata(axi_datamover_0_M_AXIS_S2MM_STS_TDATA),
        .s_axis_s2mm_sts_tready(axi_datamover_0_M_AXIS_S2MM_STS_TREADY),
        .s_axis_s2mm_sts_tvalid(axi_datamover_0_M_AXIS_S2MM_STS_TVALID),
        .s_axis_s2mm_tdata(s_axis_s2mm_1_TDATA),
        .s_axis_s2mm_tlast(s_axis_s2mm_1_TLAST),
        .s_axis_s2mm_tready(s_axis_s2mm_1_TREADY),
        .s_axis_s2mm_tvalid(s_axis_s2mm_1_TVALID));
  axi_ethernet_streamer_rst_clk100_100M_0 u_rst
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(resetn_1),
        .interconnect_aresetn(rst_clk100_100M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk100_100M_peripheral_aresetn),
        .peripheral_reset(u_rst_peripheral_reset),
        .slowest_sync_clk(clk100_1));
  axi_ethernet_streamer_axi_interconnect_0_0 u_xbar
       (.ACLK(clk100_1),
        .ARESETN(rst_clk100_100M_interconnect_aresetn),
        .M00_ACLK(clk100_1),
        .M00_ARESETN(rst_clk100_100M_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(clk100_1),
        .S00_ARESETN(rst_clk100_100M_peripheral_aresetn),
        .S00_AXI_araddr(axi_datamover_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_datamover_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_datamover_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_datamover_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arprot(axi_datamover_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arready(axi_datamover_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_datamover_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_aruser(axi_datamover_0_M_AXI_MM2S_ARUSER),
        .S00_AXI_arvalid(axi_datamover_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_datamover_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_datamover_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_datamover_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_datamover_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_datamover_0_M_AXI_MM2S_RVALID),
        .S01_ACLK(clk100_1),
        .S01_ARESETN(rst_clk100_100M_peripheral_aresetn),
        .S01_AXI_awaddr(axi_datamover_0_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_datamover_0_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_datamover_0_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_datamover_0_M_AXI_S2MM_AWLEN),
        .S01_AXI_awprot(axi_datamover_0_M_AXI_S2MM_AWPROT),
        .S01_AXI_awready(axi_datamover_0_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_datamover_0_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awuser(axi_datamover_0_M_AXI_S2MM_AWUSER),
        .S01_AXI_awvalid(axi_datamover_0_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_datamover_0_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_datamover_0_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_datamover_0_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_datamover_0_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_datamover_0_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_datamover_0_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_datamover_0_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_datamover_0_M_AXI_S2MM_WVALID),
        .S02_ACLK(clk100_1),
        .S02_ARESETN(rst_clk100_100M_peripheral_aresetn),
        .S02_AXI_araddr(axi_protocol_converter_0_M_AXI_ARADDR),
        .S02_AXI_arburst(axi_protocol_converter_0_M_AXI_ARBURST),
        .S02_AXI_arcache(axi_protocol_converter_0_M_AXI_ARCACHE),
        .S02_AXI_arlen(axi_protocol_converter_0_M_AXI_ARLEN),
        .S02_AXI_arlock(axi_protocol_converter_0_M_AXI_ARLOCK),
        .S02_AXI_arprot(axi_protocol_converter_0_M_AXI_ARPROT),
        .S02_AXI_arqos(axi_protocol_converter_0_M_AXI_ARQOS),
        .S02_AXI_arready(axi_protocol_converter_0_M_AXI_ARREADY),
        .S02_AXI_arsize(axi_protocol_converter_0_M_AXI_ARSIZE),
        .S02_AXI_arvalid(axi_protocol_converter_0_M_AXI_ARVALID),
        .S02_AXI_awaddr(axi_protocol_converter_0_M_AXI_AWADDR),
        .S02_AXI_awburst(axi_protocol_converter_0_M_AXI_AWBURST),
        .S02_AXI_awcache(axi_protocol_converter_0_M_AXI_AWCACHE),
        .S02_AXI_awlen(axi_protocol_converter_0_M_AXI_AWLEN),
        .S02_AXI_awlock(axi_protocol_converter_0_M_AXI_AWLOCK),
        .S02_AXI_awprot(axi_protocol_converter_0_M_AXI_AWPROT),
        .S02_AXI_awqos(axi_protocol_converter_0_M_AXI_AWQOS),
        .S02_AXI_awready(axi_protocol_converter_0_M_AXI_AWREADY),
        .S02_AXI_awsize(axi_protocol_converter_0_M_AXI_AWSIZE),
        .S02_AXI_awvalid(axi_protocol_converter_0_M_AXI_AWVALID),
        .S02_AXI_bready(axi_protocol_converter_0_M_AXI_BREADY),
        .S02_AXI_bresp(axi_protocol_converter_0_M_AXI_BRESP),
        .S02_AXI_bvalid(axi_protocol_converter_0_M_AXI_BVALID),
        .S02_AXI_rdata(axi_protocol_converter_0_M_AXI_RDATA),
        .S02_AXI_rlast(axi_protocol_converter_0_M_AXI_RLAST),
        .S02_AXI_rready(axi_protocol_converter_0_M_AXI_RREADY),
        .S02_AXI_rresp(axi_protocol_converter_0_M_AXI_RRESP),
        .S02_AXI_rvalid(axi_protocol_converter_0_M_AXI_RVALID),
        .S02_AXI_wdata(axi_protocol_converter_0_M_AXI_WDATA),
        .S02_AXI_wlast(axi_protocol_converter_0_M_AXI_WLAST),
        .S02_AXI_wready(axi_protocol_converter_0_M_AXI_WREADY),
        .S02_AXI_wstrb(axi_protocol_converter_0_M_AXI_WSTRB),
        .S02_AXI_wvalid(axi_protocol_converter_0_M_AXI_WVALID));
endmodule

module axi_ethernet_streamer_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awuser,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [3:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [3:0]S01_AXI_awuser;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [12:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [0:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [12:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [0:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [31:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire [31:0]m00_couplers_to_u_xbar_ARADDR;
  wire [1:0]m00_couplers_to_u_xbar_ARBURST;
  wire [3:0]m00_couplers_to_u_xbar_ARCACHE;
  wire [7:0]m00_couplers_to_u_xbar_ARLEN;
  wire m00_couplers_to_u_xbar_ARREADY;
  wire [2:0]m00_couplers_to_u_xbar_ARSIZE;
  wire m00_couplers_to_u_xbar_ARVALID;
  wire [31:0]m00_couplers_to_u_xbar_AWADDR;
  wire [1:0]m00_couplers_to_u_xbar_AWBURST;
  wire [3:0]m00_couplers_to_u_xbar_AWCACHE;
  wire [7:0]m00_couplers_to_u_xbar_AWLEN;
  wire m00_couplers_to_u_xbar_AWREADY;
  wire [2:0]m00_couplers_to_u_xbar_AWSIZE;
  wire m00_couplers_to_u_xbar_AWVALID;
  wire m00_couplers_to_u_xbar_BREADY;
  wire [1:0]m00_couplers_to_u_xbar_BRESP;
  wire m00_couplers_to_u_xbar_BVALID;
  wire [31:0]m00_couplers_to_u_xbar_RDATA;
  wire m00_couplers_to_u_xbar_RLAST;
  wire m00_couplers_to_u_xbar_RREADY;
  wire [1:0]m00_couplers_to_u_xbar_RRESP;
  wire m00_couplers_to_u_xbar_RVALID;
  wire [31:0]m00_couplers_to_u_xbar_WDATA;
  wire m00_couplers_to_u_xbar_WLAST;
  wire m00_couplers_to_u_xbar_WREADY;
  wire [3:0]m00_couplers_to_u_xbar_WSTRB;
  wire m00_couplers_to_u_xbar_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [3:0]s00_couplers_to_xbar_ARUSER;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire [3:0]s01_couplers_to_xbar_AWUSER;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [12:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [12:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [95:64]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [3:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire u_xbar_ACLK_net;
  wire u_xbar_ARESETN_net;
  wire [31:0]u_xbar_to_s00_couplers_ARADDR;
  wire [1:0]u_xbar_to_s00_couplers_ARBURST;
  wire [3:0]u_xbar_to_s00_couplers_ARCACHE;
  wire [7:0]u_xbar_to_s00_couplers_ARLEN;
  wire [2:0]u_xbar_to_s00_couplers_ARPROT;
  wire u_xbar_to_s00_couplers_ARREADY;
  wire [2:0]u_xbar_to_s00_couplers_ARSIZE;
  wire [3:0]u_xbar_to_s00_couplers_ARUSER;
  wire u_xbar_to_s00_couplers_ARVALID;
  wire [31:0]u_xbar_to_s00_couplers_RDATA;
  wire u_xbar_to_s00_couplers_RLAST;
  wire u_xbar_to_s00_couplers_RREADY;
  wire [1:0]u_xbar_to_s00_couplers_RRESP;
  wire u_xbar_to_s00_couplers_RVALID;
  wire [31:0]u_xbar_to_s01_couplers_AWADDR;
  wire [1:0]u_xbar_to_s01_couplers_AWBURST;
  wire [3:0]u_xbar_to_s01_couplers_AWCACHE;
  wire [7:0]u_xbar_to_s01_couplers_AWLEN;
  wire [2:0]u_xbar_to_s01_couplers_AWPROT;
  wire u_xbar_to_s01_couplers_AWREADY;
  wire [2:0]u_xbar_to_s01_couplers_AWSIZE;
  wire [3:0]u_xbar_to_s01_couplers_AWUSER;
  wire u_xbar_to_s01_couplers_AWVALID;
  wire u_xbar_to_s01_couplers_BREADY;
  wire [1:0]u_xbar_to_s01_couplers_BRESP;
  wire u_xbar_to_s01_couplers_BVALID;
  wire [31:0]u_xbar_to_s01_couplers_WDATA;
  wire u_xbar_to_s01_couplers_WLAST;
  wire u_xbar_to_s01_couplers_WREADY;
  wire [3:0]u_xbar_to_s01_couplers_WSTRB;
  wire u_xbar_to_s01_couplers_WVALID;
  wire [12:0]u_xbar_to_s02_couplers_ARADDR;
  wire [1:0]u_xbar_to_s02_couplers_ARBURST;
  wire [3:0]u_xbar_to_s02_couplers_ARCACHE;
  wire [7:0]u_xbar_to_s02_couplers_ARLEN;
  wire [0:0]u_xbar_to_s02_couplers_ARLOCK;
  wire [2:0]u_xbar_to_s02_couplers_ARPROT;
  wire [3:0]u_xbar_to_s02_couplers_ARQOS;
  wire u_xbar_to_s02_couplers_ARREADY;
  wire [2:0]u_xbar_to_s02_couplers_ARSIZE;
  wire u_xbar_to_s02_couplers_ARVALID;
  wire [12:0]u_xbar_to_s02_couplers_AWADDR;
  wire [1:0]u_xbar_to_s02_couplers_AWBURST;
  wire [3:0]u_xbar_to_s02_couplers_AWCACHE;
  wire [7:0]u_xbar_to_s02_couplers_AWLEN;
  wire [0:0]u_xbar_to_s02_couplers_AWLOCK;
  wire [2:0]u_xbar_to_s02_couplers_AWPROT;
  wire [3:0]u_xbar_to_s02_couplers_AWQOS;
  wire u_xbar_to_s02_couplers_AWREADY;
  wire [2:0]u_xbar_to_s02_couplers_AWSIZE;
  wire u_xbar_to_s02_couplers_AWVALID;
  wire u_xbar_to_s02_couplers_BREADY;
  wire [1:0]u_xbar_to_s02_couplers_BRESP;
  wire u_xbar_to_s02_couplers_BVALID;
  wire [31:0]u_xbar_to_s02_couplers_RDATA;
  wire u_xbar_to_s02_couplers_RLAST;
  wire u_xbar_to_s02_couplers_RREADY;
  wire [1:0]u_xbar_to_s02_couplers_RRESP;
  wire u_xbar_to_s02_couplers_RVALID;
  wire [31:0]u_xbar_to_s02_couplers_WDATA;
  wire u_xbar_to_s02_couplers_WLAST;
  wire u_xbar_to_s02_couplers_WREADY;
  wire [3:0]u_xbar_to_s02_couplers_WSTRB;
  wire u_xbar_to_s02_couplers_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [2:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [95:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_u_xbar_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_u_xbar_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_u_xbar_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_u_xbar_ARLEN;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_u_xbar_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_u_xbar_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_u_xbar_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_u_xbar_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_u_xbar_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_u_xbar_AWLEN;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_u_xbar_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_u_xbar_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_u_xbar_BREADY;
  assign M00_AXI_rready = m00_couplers_to_u_xbar_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_u_xbar_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_u_xbar_WLAST;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_u_xbar_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_u_xbar_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = u_xbar_to_s00_couplers_ARREADY;
  assign S00_AXI_rdata[31:0] = u_xbar_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = u_xbar_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = u_xbar_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = u_xbar_to_s00_couplers_RVALID;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_awready = u_xbar_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = u_xbar_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = u_xbar_to_s01_couplers_BVALID;
  assign S01_AXI_wready = u_xbar_to_s01_couplers_WREADY;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready = u_xbar_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = u_xbar_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = u_xbar_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = u_xbar_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[31:0] = u_xbar_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = u_xbar_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = u_xbar_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = u_xbar_to_s02_couplers_RVALID;
  assign S02_AXI_wready = u_xbar_to_s02_couplers_WREADY;
  assign m00_couplers_to_u_xbar_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_u_xbar_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_u_xbar_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_u_xbar_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_u_xbar_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_u_xbar_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_u_xbar_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_u_xbar_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_u_xbar_WREADY = M00_AXI_wready;
  assign u_xbar_ACLK_net = ACLK;
  assign u_xbar_ARESETN_net = ARESETN;
  assign u_xbar_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign u_xbar_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign u_xbar_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign u_xbar_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign u_xbar_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign u_xbar_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign u_xbar_to_s00_couplers_ARUSER = S00_AXI_aruser[3:0];
  assign u_xbar_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign u_xbar_to_s00_couplers_RREADY = S00_AXI_rready;
  assign u_xbar_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign u_xbar_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign u_xbar_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign u_xbar_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign u_xbar_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign u_xbar_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign u_xbar_to_s01_couplers_AWUSER = S01_AXI_awuser[3:0];
  assign u_xbar_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign u_xbar_to_s01_couplers_BREADY = S01_AXI_bready;
  assign u_xbar_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign u_xbar_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign u_xbar_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign u_xbar_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign u_xbar_to_s02_couplers_ARADDR = S02_AXI_araddr[12:0];
  assign u_xbar_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign u_xbar_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign u_xbar_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign u_xbar_to_s02_couplers_ARLOCK = S02_AXI_arlock[0];
  assign u_xbar_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign u_xbar_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign u_xbar_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign u_xbar_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign u_xbar_to_s02_couplers_AWADDR = S02_AXI_awaddr[12:0];
  assign u_xbar_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign u_xbar_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign u_xbar_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign u_xbar_to_s02_couplers_AWLOCK = S02_AXI_awlock[0];
  assign u_xbar_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign u_xbar_to_s02_couplers_AWQOS = S02_AXI_awqos[3:0];
  assign u_xbar_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign u_xbar_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign u_xbar_to_s02_couplers_BREADY = S02_AXI_bready;
  assign u_xbar_to_s02_couplers_RREADY = S02_AXI_rready;
  assign u_xbar_to_s02_couplers_WDATA = S02_AXI_wdata[31:0];
  assign u_xbar_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign u_xbar_to_s02_couplers_WSTRB = S02_AXI_wstrb[3:0];
  assign u_xbar_to_s02_couplers_WVALID = S02_AXI_wvalid;
  m00_couplers_imp_1A9Z7A8 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_u_xbar_ARADDR),
        .M_AXI_arburst(m00_couplers_to_u_xbar_ARBURST),
        .M_AXI_arcache(m00_couplers_to_u_xbar_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_u_xbar_ARLEN),
        .M_AXI_arready(m00_couplers_to_u_xbar_ARREADY),
        .M_AXI_arsize(m00_couplers_to_u_xbar_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_u_xbar_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_u_xbar_AWADDR),
        .M_AXI_awburst(m00_couplers_to_u_xbar_AWBURST),
        .M_AXI_awcache(m00_couplers_to_u_xbar_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_u_xbar_AWLEN),
        .M_AXI_awready(m00_couplers_to_u_xbar_AWREADY),
        .M_AXI_awsize(m00_couplers_to_u_xbar_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_u_xbar_AWVALID),
        .M_AXI_bready(m00_couplers_to_u_xbar_BREADY),
        .M_AXI_bresp(m00_couplers_to_u_xbar_BRESP),
        .M_AXI_bvalid(m00_couplers_to_u_xbar_BVALID),
        .M_AXI_rdata(m00_couplers_to_u_xbar_RDATA),
        .M_AXI_rlast(m00_couplers_to_u_xbar_RLAST),
        .M_AXI_rready(m00_couplers_to_u_xbar_RREADY),
        .M_AXI_rresp(m00_couplers_to_u_xbar_RRESP),
        .M_AXI_rvalid(m00_couplers_to_u_xbar_RVALID),
        .M_AXI_wdata(m00_couplers_to_u_xbar_WDATA),
        .M_AXI_wlast(m00_couplers_to_u_xbar_WLAST),
        .M_AXI_wready(m00_couplers_to_u_xbar_WREADY),
        .M_AXI_wstrb(m00_couplers_to_u_xbar_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_u_xbar_WVALID),
        .S_ACLK(u_xbar_ACLK_net),
        .S_ARESETN(u_xbar_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_19ZZ2ZL s00_couplers
       (.M_ACLK(u_xbar_ACLK_net),
        .M_ARESETN(u_xbar_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(u_xbar_to_s00_couplers_ARADDR),
        .S_AXI_arburst(u_xbar_to_s00_couplers_ARBURST),
        .S_AXI_arcache(u_xbar_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(u_xbar_to_s00_couplers_ARLEN),
        .S_AXI_arprot(u_xbar_to_s00_couplers_ARPROT),
        .S_AXI_arready(u_xbar_to_s00_couplers_ARREADY),
        .S_AXI_arsize(u_xbar_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(u_xbar_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(u_xbar_to_s00_couplers_ARVALID),
        .S_AXI_rdata(u_xbar_to_s00_couplers_RDATA),
        .S_AXI_rlast(u_xbar_to_s00_couplers_RLAST),
        .S_AXI_rready(u_xbar_to_s00_couplers_RREADY),
        .S_AXI_rresp(u_xbar_to_s00_couplers_RRESP),
        .S_AXI_rvalid(u_xbar_to_s00_couplers_RVALID));
  s01_couplers_imp_1BHWW8G s01_couplers
       (.M_ACLK(u_xbar_ACLK_net),
        .M_ARESETN(u_xbar_ARESETN_net),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s01_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_awaddr(u_xbar_to_s01_couplers_AWADDR),
        .S_AXI_awburst(u_xbar_to_s01_couplers_AWBURST),
        .S_AXI_awcache(u_xbar_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(u_xbar_to_s01_couplers_AWLEN),
        .S_AXI_awprot(u_xbar_to_s01_couplers_AWPROT),
        .S_AXI_awready(u_xbar_to_s01_couplers_AWREADY),
        .S_AXI_awsize(u_xbar_to_s01_couplers_AWSIZE),
        .S_AXI_awuser(u_xbar_to_s01_couplers_AWUSER),
        .S_AXI_awvalid(u_xbar_to_s01_couplers_AWVALID),
        .S_AXI_bready(u_xbar_to_s01_couplers_BREADY),
        .S_AXI_bresp(u_xbar_to_s01_couplers_BRESP),
        .S_AXI_bvalid(u_xbar_to_s01_couplers_BVALID),
        .S_AXI_wdata(u_xbar_to_s01_couplers_WDATA),
        .S_AXI_wlast(u_xbar_to_s01_couplers_WLAST),
        .S_AXI_wready(u_xbar_to_s01_couplers_WREADY),
        .S_AXI_wstrb(u_xbar_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(u_xbar_to_s01_couplers_WVALID));
  s02_couplers_imp_1F274N7 s02_couplers
       (.M_ACLK(u_xbar_ACLK_net),
        .M_ARESETN(u_xbar_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(u_xbar_to_s02_couplers_ARADDR),
        .S_AXI_arburst(u_xbar_to_s02_couplers_ARBURST),
        .S_AXI_arcache(u_xbar_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(u_xbar_to_s02_couplers_ARLEN),
        .S_AXI_arlock(u_xbar_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(u_xbar_to_s02_couplers_ARPROT),
        .S_AXI_arqos(u_xbar_to_s02_couplers_ARQOS),
        .S_AXI_arready(u_xbar_to_s02_couplers_ARREADY),
        .S_AXI_arsize(u_xbar_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(u_xbar_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(u_xbar_to_s02_couplers_AWADDR),
        .S_AXI_awburst(u_xbar_to_s02_couplers_AWBURST),
        .S_AXI_awcache(u_xbar_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(u_xbar_to_s02_couplers_AWLEN),
        .S_AXI_awlock(u_xbar_to_s02_couplers_AWLOCK),
        .S_AXI_awprot(u_xbar_to_s02_couplers_AWPROT),
        .S_AXI_awqos(u_xbar_to_s02_couplers_AWQOS),
        .S_AXI_awready(u_xbar_to_s02_couplers_AWREADY),
        .S_AXI_awsize(u_xbar_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(u_xbar_to_s02_couplers_AWVALID),
        .S_AXI_bready(u_xbar_to_s02_couplers_BREADY),
        .S_AXI_bresp(u_xbar_to_s02_couplers_BRESP),
        .S_AXI_bvalid(u_xbar_to_s02_couplers_BVALID),
        .S_AXI_rdata(u_xbar_to_s02_couplers_RDATA),
        .S_AXI_rlast(u_xbar_to_s02_couplers_RLAST),
        .S_AXI_rready(u_xbar_to_s02_couplers_RREADY),
        .S_AXI_rresp(u_xbar_to_s02_couplers_RRESP),
        .S_AXI_rvalid(u_xbar_to_s02_couplers_RVALID),
        .S_AXI_wdata(u_xbar_to_s02_couplers_WDATA),
        .S_AXI_wlast(u_xbar_to_s02_couplers_WLAST),
        .S_AXI_wready(u_xbar_to_s02_couplers_WREADY),
        .S_AXI_wstrb(u_xbar_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(u_xbar_to_s02_couplers_WVALID));
  axi_ethernet_streamer_xbar_0 xbar
       (.aclk(u_xbar_ACLK_net),
        .aresetn(u_xbar_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s02_couplers_to_xbar_ARBURST,1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s02_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s02_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s02_couplers_to_xbar_ARLOCK,1'b0,1'b0}),
        .s_axi_arprot({s02_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s02_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready({s02_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[1],s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s02_couplers_to_xbar_ARSIZE,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARUSER}),
        .s_axi_arvalid({s02_couplers_to_xbar_ARVALID,1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWADDR,s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,1'b0,1'b0}),
        .s_axi_awcache({s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({s02_couplers_to_xbar_AWLOCK,1'b0,1'b0}),
        .s_axi_awprot({s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({s02_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[0]}),
        .s_axi_awsize({s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,1'b0,1'b0,1'b0}),
        .s_axi_awuser({1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWUSER,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awvalid({s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,1'b0}),
        .s_axi_bready({s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[0]}),
        .s_axi_rdata({s02_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[63:32],s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s02_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[1],s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s02_couplers_to_xbar_RREADY,1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s02_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[3:2],s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s02_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[1],s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,1'b1}),
        .s_axi_wready({s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[0]}),
        .s_axi_wstrb({s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,1'b0}));
endmodule

module m00_couplers_imp_1A9Z7A8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RLAST;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WLAST;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rlast = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_19ZZ2ZL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [3:0]M_AXI_aruser;
  output M_AXI_arvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [3:0]S_AXI_aruser;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [1:0]s00_couplers_to_s00_couplers_ARBURST;
  wire [3:0]s00_couplers_to_s00_couplers_ARCACHE;
  wire [7:0]s00_couplers_to_s00_couplers_ARLEN;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire [2:0]s00_couplers_to_s00_couplers_ARSIZE;
  wire [3:0]s00_couplers_to_s00_couplers_ARUSER;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[3:0] = s00_couplers_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_couplers_ARUSER = S_AXI_aruser[3:0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
endmodule

module s01_couplers_imp_1BHWW8G
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [3:0]M_AXI_awuser;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [3:0]S_AXI_awuser;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s01_couplers_to_s01_couplers_AWADDR;
  wire [1:0]s01_couplers_to_s01_couplers_AWBURST;
  wire [3:0]s01_couplers_to_s01_couplers_AWCACHE;
  wire [7:0]s01_couplers_to_s01_couplers_AWLEN;
  wire [2:0]s01_couplers_to_s01_couplers_AWPROT;
  wire s01_couplers_to_s01_couplers_AWREADY;
  wire [2:0]s01_couplers_to_s01_couplers_AWSIZE;
  wire [3:0]s01_couplers_to_s01_couplers_AWUSER;
  wire s01_couplers_to_s01_couplers_AWVALID;
  wire s01_couplers_to_s01_couplers_BREADY;
  wire [1:0]s01_couplers_to_s01_couplers_BRESP;
  wire s01_couplers_to_s01_couplers_BVALID;
  wire [31:0]s01_couplers_to_s01_couplers_WDATA;
  wire s01_couplers_to_s01_couplers_WLAST;
  wire s01_couplers_to_s01_couplers_WREADY;
  wire [3:0]s01_couplers_to_s01_couplers_WSTRB;
  wire s01_couplers_to_s01_couplers_WVALID;

  assign M_AXI_awaddr[31:0] = s01_couplers_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_couplers_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_couplers_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s01_couplers_to_s01_couplers_AWLEN;
  assign M_AXI_awprot[2:0] = s01_couplers_to_s01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = s01_couplers_to_s01_couplers_AWSIZE;
  assign M_AXI_awuser[3:0] = s01_couplers_to_s01_couplers_AWUSER;
  assign M_AXI_awvalid = s01_couplers_to_s01_couplers_AWVALID;
  assign M_AXI_bready = s01_couplers_to_s01_couplers_BREADY;
  assign M_AXI_wdata[31:0] = s01_couplers_to_s01_couplers_WDATA;
  assign M_AXI_wlast = s01_couplers_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s01_couplers_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = s01_couplers_to_s01_couplers_WVALID;
  assign S_AXI_awready = s01_couplers_to_s01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_couplers_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_couplers_BVALID;
  assign S_AXI_wready = s01_couplers_to_s01_couplers_WREADY;
  assign s01_couplers_to_s01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_couplers_AWREADY = M_AXI_awready;
  assign s01_couplers_to_s01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_couplers_AWUSER = S_AXI_awuser[3:0];
  assign s01_couplers_to_s01_couplers_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_couplers_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_couplers_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign s01_couplers_to_s01_couplers_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_couplers_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_s01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_couplers_WVALID = S_AXI_wvalid;
endmodule

module s02_couplers_imp_1F274N7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [12:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [12:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [12:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [12:0]s02_couplers_to_s02_couplers_ARADDR;
  wire [1:0]s02_couplers_to_s02_couplers_ARBURST;
  wire [3:0]s02_couplers_to_s02_couplers_ARCACHE;
  wire [7:0]s02_couplers_to_s02_couplers_ARLEN;
  wire [0:0]s02_couplers_to_s02_couplers_ARLOCK;
  wire [2:0]s02_couplers_to_s02_couplers_ARPROT;
  wire [3:0]s02_couplers_to_s02_couplers_ARQOS;
  wire s02_couplers_to_s02_couplers_ARREADY;
  wire [2:0]s02_couplers_to_s02_couplers_ARSIZE;
  wire s02_couplers_to_s02_couplers_ARVALID;
  wire [12:0]s02_couplers_to_s02_couplers_AWADDR;
  wire [1:0]s02_couplers_to_s02_couplers_AWBURST;
  wire [3:0]s02_couplers_to_s02_couplers_AWCACHE;
  wire [7:0]s02_couplers_to_s02_couplers_AWLEN;
  wire [0:0]s02_couplers_to_s02_couplers_AWLOCK;
  wire [2:0]s02_couplers_to_s02_couplers_AWPROT;
  wire [3:0]s02_couplers_to_s02_couplers_AWQOS;
  wire s02_couplers_to_s02_couplers_AWREADY;
  wire [2:0]s02_couplers_to_s02_couplers_AWSIZE;
  wire s02_couplers_to_s02_couplers_AWVALID;
  wire s02_couplers_to_s02_couplers_BREADY;
  wire [1:0]s02_couplers_to_s02_couplers_BRESP;
  wire s02_couplers_to_s02_couplers_BVALID;
  wire [31:0]s02_couplers_to_s02_couplers_RDATA;
  wire s02_couplers_to_s02_couplers_RLAST;
  wire s02_couplers_to_s02_couplers_RREADY;
  wire [1:0]s02_couplers_to_s02_couplers_RRESP;
  wire s02_couplers_to_s02_couplers_RVALID;
  wire [31:0]s02_couplers_to_s02_couplers_WDATA;
  wire s02_couplers_to_s02_couplers_WLAST;
  wire s02_couplers_to_s02_couplers_WREADY;
  wire [3:0]s02_couplers_to_s02_couplers_WSTRB;
  wire s02_couplers_to_s02_couplers_WVALID;

  assign M_AXI_araddr[12:0] = s02_couplers_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s02_couplers_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s02_couplers_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s02_couplers_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = s02_couplers_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s02_couplers_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s02_couplers_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s02_couplers_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = s02_couplers_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = s02_couplers_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s02_couplers_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s02_couplers_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s02_couplers_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = s02_couplers_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s02_couplers_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s02_couplers_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s02_couplers_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = s02_couplers_to_s02_couplers_AWVALID;
  assign M_AXI_bready = s02_couplers_to_s02_couplers_BREADY;
  assign M_AXI_rready = s02_couplers_to_s02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s02_couplers_to_s02_couplers_WDATA;
  assign M_AXI_wlast = s02_couplers_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s02_couplers_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = s02_couplers_to_s02_couplers_WVALID;
  assign S_AXI_arready = s02_couplers_to_s02_couplers_ARREADY;
  assign S_AXI_awready = s02_couplers_to_s02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_s02_couplers_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_s02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s02_couplers_to_s02_couplers_RDATA;
  assign S_AXI_rlast = s02_couplers_to_s02_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_s02_couplers_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_s02_couplers_RVALID;
  assign S_AXI_wready = s02_couplers_to_s02_couplers_WREADY;
  assign s02_couplers_to_s02_couplers_ARADDR = S_AXI_araddr[12:0];
  assign s02_couplers_to_s02_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_s02_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_s02_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_couplers_ARLOCK = S_AXI_arlock[0];
  assign s02_couplers_to_s02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_s02_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_s02_couplers_ARREADY = M_AXI_arready;
  assign s02_couplers_to_s02_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_s02_couplers_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_couplers_AWADDR = S_AXI_awaddr[12:0];
  assign s02_couplers_to_s02_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_s02_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_s02_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_s02_couplers_AWLOCK = S_AXI_awlock[0];
  assign s02_couplers_to_s02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_s02_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_s02_couplers_AWREADY = M_AXI_awready;
  assign s02_couplers_to_s02_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_s02_couplers_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_s02_couplers_BREADY = S_AXI_bready;
  assign s02_couplers_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign s02_couplers_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign s02_couplers_to_s02_couplers_RDATA = M_AXI_rdata[31:0];
  assign s02_couplers_to_s02_couplers_RLAST = M_AXI_rlast;
  assign s02_couplers_to_s02_couplers_RREADY = S_AXI_rready;
  assign s02_couplers_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign s02_couplers_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign s02_couplers_to_s02_couplers_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_s02_couplers_WLAST = S_AXI_wlast;
  assign s02_couplers_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_s02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_s02_couplers_WVALID = S_AXI_wvalid;
endmodule
