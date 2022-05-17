// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:fmn_axi_collector:1.0
// IP Revision: 1

(* X_CORE_INFO = "fmn_axi_collector,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "fmn_intercon_v2_nodebug_fmn_axi_collector_0_0,fmn_axi_collector,{}" *)
(* CORE_GENERATION_INFO = "fmn_intercon_v2_nodebug_fmn_axi_collector_0_0,fmn_axi_collector,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=fmn_axi_collector,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module fmn_intercon_v2_nodebug_fmn_axi_collector_0_0 (
  aclk,
  aresetn,
  SN_arready,
  SN_araddr,
  SN_arburst,
  SN_arcache,
  SN_arlen,
  SN_arprot,
  SN_arsize,
  SN_arvalid,
  SN_awready,
  SN_awaddr,
  SN_awburst,
  SN_awcache,
  SN_awlen,
  SN_awprot,
  SN_awsize,
  SN_awvalid,
  SN_bready,
  SN_bresp,
  SN_bvalid,
  SN_rready,
  SN_rdata,
  SN_rresp,
  SN_rlast,
  SN_rvalid,
  SN_wready,
  SN_wdata,
  SN_wlast,
  SN_wstrb,
  SN_wvalid,
  M0_arready,
  M0_araddr,
  M0_arburst,
  M0_arcache,
  M0_arlen,
  M0_arprot,
  M0_arsize,
  M0_arvalid,
  M0_awready,
  M0_awaddr,
  M0_awburst,
  M0_awcache,
  M0_awlen,
  M0_awprot,
  M0_awsize,
  M0_awvalid,
  M0_bready,
  M0_bresp,
  M0_bvalid,
  M0_rready,
  M0_rdata,
  M0_rresp,
  M0_rlast,
  M0_rvalid,
  M0_wready,
  M0_wdata,
  M0_wlast,
  M0_wstrb,
  M0_wvalid,
  M1_arready,
  M1_araddr,
  M1_arburst,
  M1_arcache,
  M1_arlen,
  M1_arprot,
  M1_arsize,
  M1_arvalid,
  M1_awready,
  M1_awaddr,
  M1_awburst,
  M1_awcache,
  M1_awlen,
  M1_awprot,
  M1_awsize,
  M1_awvalid,
  M1_bready,
  M1_bresp,
  M1_bvalid,
  M1_rready,
  M1_rdata,
  M1_rresp,
  M1_rlast,
  M1_rvalid,
  M1_wready,
  M1_wdata,
  M1_wlast,
  M1_wstrb,
  M1_wvalid,
  M2_arready,
  M2_araddr,
  M2_arburst,
  M2_arcache,
  M2_arlen,
  M2_arprot,
  M2_arsize,
  M2_arvalid,
  M2_awready,
  M2_awaddr,
  M2_awburst,
  M2_awcache,
  M2_awlen,
  M2_awprot,
  M2_awsize,
  M2_awvalid,
  M2_bready,
  M2_bresp,
  M2_bvalid,
  M2_rready,
  M2_rdata,
  M2_rresp,
  M2_rlast,
  M2_rvalid,
  M2_wready,
  M2_wdata,
  M2_wlast,
  M2_wstrb,
  M2_wvalid,
  M3_arready,
  M3_araddr,
  M3_arburst,
  M3_arcache,
  M3_arlen,
  M3_arprot,
  M3_arsize,
  M3_arvalid,
  M3_awready,
  M3_awaddr,
  M3_awburst,
  M3_awcache,
  M3_awlen,
  M3_awprot,
  M3_awsize,
  M3_awvalid,
  M3_bready,
  M3_bresp,
  M3_bvalid,
  M3_rready,
  M3_rdata,
  M3_rresp,
  M3_rlast,
  M3_rvalid,
  M3_wready,
  M3_wdata,
  M3_wlast,
  M3_wstrb,
  M3_wvalid,
  M4_arready,
  M4_araddr,
  M4_arburst,
  M4_arcache,
  M4_arlen,
  M4_arprot,
  M4_arsize,
  M4_arvalid,
  M4_awready,
  M4_awaddr,
  M4_awburst,
  M4_awcache,
  M4_awlen,
  M4_awprot,
  M4_awsize,
  M4_awvalid,
  M4_bready,
  M4_bresp,
  M4_bvalid,
  M4_rready,
  M4_rdata,
  M4_rresp,
  M4_rlast,
  M4_rvalid,
  M4_wready,
  M4_wdata,
  M4_wlast,
  M4_wstrb,
  M4_wvalid,
  M5_arready,
  M5_araddr,
  M5_arburst,
  M5_arcache,
  M5_arlen,
  M5_arprot,
  M5_arsize,
  M5_arvalid,
  M5_awready,
  M5_awaddr,
  M5_awburst,
  M5_awcache,
  M5_awlen,
  M5_awprot,
  M5_awsize,
  M5_awvalid,
  M5_bready,
  M5_bresp,
  M5_bvalid,
  M5_rready,
  M5_rdata,
  M5_rresp,
  M5_rlast,
  M5_rvalid,
  M5_wready,
  M5_wdata,
  M5_wlast,
  M5_wstrb,
  M5_wvalid,
  M6_arready,
  M6_araddr,
  M6_arburst,
  M6_arcache,
  M6_arlen,
  M6_arprot,
  M6_arsize,
  M6_arvalid,
  M6_awready,
  M6_awaddr,
  M6_awburst,
  M6_awcache,
  M6_awlen,
  M6_awprot,
  M6_awsize,
  M6_awvalid,
  M6_bready,
  M6_bresp,
  M6_bvalid,
  M6_rready,
  M6_rdata,
  M6_rresp,
  M6_rlast,
  M6_rvalid,
  M6_wready,
  M6_wdata,
  M6_wlast,
  M6_wstrb,
  M6_wvalid,
  M7_arready,
  M7_araddr,
  M7_arburst,
  M7_arcache,
  M7_arlen,
  M7_arprot,
  M7_arsize,
  M7_arvalid,
  M7_awready,
  M7_awaddr,
  M7_awburst,
  M7_awcache,
  M7_awlen,
  M7_awprot,
  M7_awsize,
  M7_awvalid,
  M7_bready,
  M7_bresp,
  M7_bvalid,
  M7_rready,
  M7_rdata,
  M7_rresp,
  M7_rlast,
  M7_rvalid,
  M7_wready,
  M7_wdata,
  M7_wlast,
  M7_wstrb,
  M7_wvalid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M0:M1:M2:M3:M4:M5:M6:M7:SN, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN ARREADY" *)
output wire [7 : 0] SN_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN ARADDR" *)
input wire [255 : 0] SN_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN ARBURST" *)
input wire [15 : 0] SN_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN ARCACHE" *)
input wire [31 : 0] SN_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN ARLEN" *)
input wire [63 : 0] SN_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN ARPROT" *)
input wire [23 : 0] SN_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN ARSIZE" *)
input wire [23 : 0] SN_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN ARVALID" *)
input wire [7 : 0] SN_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN AWREADY" *)
output wire [7 : 0] SN_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN AWADDR" *)
input wire [255 : 0] SN_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN AWBURST" *)
input wire [15 : 0] SN_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN AWCACHE" *)
input wire [31 : 0] SN_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN AWLEN" *)
input wire [63 : 0] SN_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN AWPROT" *)
input wire [23 : 0] SN_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN AWSIZE" *)
input wire [23 : 0] SN_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN AWVALID" *)
input wire [7 : 0] SN_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN BREADY" *)
input wire [7 : 0] SN_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN BRESP" *)
output wire [15 : 0] SN_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN BVALID" *)
output wire [7 : 0] SN_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN RREADY" *)
input wire [7 : 0] SN_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN RDATA" *)
output wire [4095 : 0] SN_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN RRESP" *)
output wire [15 : 0] SN_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN RLAST" *)
output wire [7 : 0] SN_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN RVALID" *)
output wire [7 : 0] SN_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN WREADY" *)
output wire [7 : 0] SN_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN WDATA" *)
input wire [4095 : 0] SN_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN WLAST" *)
input wire [7 : 0] SN_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN WSTRB" *)
input wire [511 : 0] SN_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SN, DATA_WIDTH 4096, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 256, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RU\
SER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SN WVALID" *)
input wire [7 : 0] SN_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 ARREADY" *)
input wire M0_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 ARADDR" *)
output wire [31 : 0] M0_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 ARBURST" *)
output wire [1 : 0] M0_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 ARCACHE" *)
output wire [3 : 0] M0_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 ARLEN" *)
output wire [7 : 0] M0_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 ARPROT" *)
output wire [2 : 0] M0_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 ARSIZE" *)
output wire [2 : 0] M0_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 ARVALID" *)
output wire M0_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 AWREADY" *)
input wire M0_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 AWADDR" *)
output wire [31 : 0] M0_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 AWBURST" *)
output wire [1 : 0] M0_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 AWCACHE" *)
output wire [3 : 0] M0_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 AWLEN" *)
output wire [7 : 0] M0_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 AWPROT" *)
output wire [2 : 0] M0_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 AWSIZE" *)
output wire [2 : 0] M0_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 AWVALID" *)
output wire M0_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 BREADY" *)
output wire M0_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 BRESP" *)
input wire [1 : 0] M0_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 BVALID" *)
input wire M0_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 RREADY" *)
output wire M0_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 RDATA" *)
input wire [511 : 0] M0_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 RRESP" *)
input wire [1 : 0] M0_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 RLAST" *)
input wire M0_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 RVALID" *)
input wire M0_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 WREADY" *)
input wire M0_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 WDATA" *)
output wire [511 : 0] M0_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 WLAST" *)
output wire M0_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 WSTRB" *)
output wire [63 : 0] M0_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M0, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0 WVALID" *)
output wire M0_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 ARREADY" *)
input wire M1_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 ARADDR" *)
output wire [31 : 0] M1_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 ARBURST" *)
output wire [1 : 0] M1_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 ARCACHE" *)
output wire [3 : 0] M1_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 ARLEN" *)
output wire [7 : 0] M1_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 ARPROT" *)
output wire [2 : 0] M1_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 ARSIZE" *)
output wire [2 : 0] M1_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 ARVALID" *)
output wire M1_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 AWREADY" *)
input wire M1_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 AWADDR" *)
output wire [31 : 0] M1_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 AWBURST" *)
output wire [1 : 0] M1_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 AWCACHE" *)
output wire [3 : 0] M1_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 AWLEN" *)
output wire [7 : 0] M1_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 AWPROT" *)
output wire [2 : 0] M1_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 AWSIZE" *)
output wire [2 : 0] M1_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 AWVALID" *)
output wire M1_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 BREADY" *)
output wire M1_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 BRESP" *)
input wire [1 : 0] M1_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 BVALID" *)
input wire M1_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 RREADY" *)
output wire M1_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 RDATA" *)
input wire [511 : 0] M1_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 RRESP" *)
input wire [1 : 0] M1_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 RLAST" *)
input wire M1_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 RVALID" *)
input wire M1_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 WREADY" *)
input wire M1_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 WDATA" *)
output wire [511 : 0] M1_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 WLAST" *)
output wire M1_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 WSTRB" *)
output wire [63 : 0] M1_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M1, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M1 WVALID" *)
output wire M1_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 ARREADY" *)
input wire M2_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 ARADDR" *)
output wire [31 : 0] M2_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 ARBURST" *)
output wire [1 : 0] M2_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 ARCACHE" *)
output wire [3 : 0] M2_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 ARLEN" *)
output wire [7 : 0] M2_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 ARPROT" *)
output wire [2 : 0] M2_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 ARSIZE" *)
output wire [2 : 0] M2_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 ARVALID" *)
output wire M2_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 AWREADY" *)
input wire M2_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 AWADDR" *)
output wire [31 : 0] M2_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 AWBURST" *)
output wire [1 : 0] M2_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 AWCACHE" *)
output wire [3 : 0] M2_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 AWLEN" *)
output wire [7 : 0] M2_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 AWPROT" *)
output wire [2 : 0] M2_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 AWSIZE" *)
output wire [2 : 0] M2_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 AWVALID" *)
output wire M2_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 BREADY" *)
output wire M2_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 BRESP" *)
input wire [1 : 0] M2_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 BVALID" *)
input wire M2_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 RREADY" *)
output wire M2_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 RDATA" *)
input wire [511 : 0] M2_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 RRESP" *)
input wire [1 : 0] M2_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 RLAST" *)
input wire M2_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 RVALID" *)
input wire M2_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 WREADY" *)
input wire M2_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 WDATA" *)
output wire [511 : 0] M2_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 WLAST" *)
output wire M2_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 WSTRB" *)
output wire [63 : 0] M2_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M2, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M2 WVALID" *)
output wire M2_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 ARREADY" *)
input wire M3_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 ARADDR" *)
output wire [31 : 0] M3_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 ARBURST" *)
output wire [1 : 0] M3_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 ARCACHE" *)
output wire [3 : 0] M3_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 ARLEN" *)
output wire [7 : 0] M3_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 ARPROT" *)
output wire [2 : 0] M3_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 ARSIZE" *)
output wire [2 : 0] M3_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 ARVALID" *)
output wire M3_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 AWREADY" *)
input wire M3_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 AWADDR" *)
output wire [31 : 0] M3_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 AWBURST" *)
output wire [1 : 0] M3_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 AWCACHE" *)
output wire [3 : 0] M3_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 AWLEN" *)
output wire [7 : 0] M3_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 AWPROT" *)
output wire [2 : 0] M3_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 AWSIZE" *)
output wire [2 : 0] M3_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 AWVALID" *)
output wire M3_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 BREADY" *)
output wire M3_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 BRESP" *)
input wire [1 : 0] M3_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 BVALID" *)
input wire M3_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 RREADY" *)
output wire M3_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 RDATA" *)
input wire [511 : 0] M3_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 RRESP" *)
input wire [1 : 0] M3_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 RLAST" *)
input wire M3_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 RVALID" *)
input wire M3_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 WREADY" *)
input wire M3_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 WDATA" *)
output wire [511 : 0] M3_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 WLAST" *)
output wire M3_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 WSTRB" *)
output wire [63 : 0] M3_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M3, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M3 WVALID" *)
output wire M3_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 ARREADY" *)
input wire M4_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 ARADDR" *)
output wire [31 : 0] M4_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 ARBURST" *)
output wire [1 : 0] M4_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 ARCACHE" *)
output wire [3 : 0] M4_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 ARLEN" *)
output wire [7 : 0] M4_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 ARPROT" *)
output wire [2 : 0] M4_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 ARSIZE" *)
output wire [2 : 0] M4_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 ARVALID" *)
output wire M4_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 AWREADY" *)
input wire M4_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 AWADDR" *)
output wire [31 : 0] M4_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 AWBURST" *)
output wire [1 : 0] M4_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 AWCACHE" *)
output wire [3 : 0] M4_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 AWLEN" *)
output wire [7 : 0] M4_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 AWPROT" *)
output wire [2 : 0] M4_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 AWSIZE" *)
output wire [2 : 0] M4_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 AWVALID" *)
output wire M4_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 BREADY" *)
output wire M4_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 BRESP" *)
input wire [1 : 0] M4_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 BVALID" *)
input wire M4_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 RREADY" *)
output wire M4_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 RDATA" *)
input wire [511 : 0] M4_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 RRESP" *)
input wire [1 : 0] M4_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 RLAST" *)
input wire M4_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 RVALID" *)
input wire M4_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 WREADY" *)
input wire M4_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 WDATA" *)
output wire [511 : 0] M4_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 WLAST" *)
output wire M4_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 WSTRB" *)
output wire [63 : 0] M4_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M4, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M4 WVALID" *)
output wire M4_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 ARREADY" *)
input wire M5_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 ARADDR" *)
output wire [31 : 0] M5_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 ARBURST" *)
output wire [1 : 0] M5_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 ARCACHE" *)
output wire [3 : 0] M5_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 ARLEN" *)
output wire [7 : 0] M5_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 ARPROT" *)
output wire [2 : 0] M5_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 ARSIZE" *)
output wire [2 : 0] M5_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 ARVALID" *)
output wire M5_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 AWREADY" *)
input wire M5_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 AWADDR" *)
output wire [31 : 0] M5_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 AWBURST" *)
output wire [1 : 0] M5_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 AWCACHE" *)
output wire [3 : 0] M5_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 AWLEN" *)
output wire [7 : 0] M5_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 AWPROT" *)
output wire [2 : 0] M5_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 AWSIZE" *)
output wire [2 : 0] M5_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 AWVALID" *)
output wire M5_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 BREADY" *)
output wire M5_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 BRESP" *)
input wire [1 : 0] M5_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 BVALID" *)
input wire M5_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 RREADY" *)
output wire M5_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 RDATA" *)
input wire [511 : 0] M5_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 RRESP" *)
input wire [1 : 0] M5_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 RLAST" *)
input wire M5_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 RVALID" *)
input wire M5_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 WREADY" *)
input wire M5_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 WDATA" *)
output wire [511 : 0] M5_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 WLAST" *)
output wire M5_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 WSTRB" *)
output wire [63 : 0] M5_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M5, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M5 WVALID" *)
output wire M5_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 ARREADY" *)
input wire M6_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 ARADDR" *)
output wire [31 : 0] M6_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 ARBURST" *)
output wire [1 : 0] M6_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 ARCACHE" *)
output wire [3 : 0] M6_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 ARLEN" *)
output wire [7 : 0] M6_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 ARPROT" *)
output wire [2 : 0] M6_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 ARSIZE" *)
output wire [2 : 0] M6_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 ARVALID" *)
output wire M6_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 AWREADY" *)
input wire M6_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 AWADDR" *)
output wire [31 : 0] M6_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 AWBURST" *)
output wire [1 : 0] M6_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 AWCACHE" *)
output wire [3 : 0] M6_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 AWLEN" *)
output wire [7 : 0] M6_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 AWPROT" *)
output wire [2 : 0] M6_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 AWSIZE" *)
output wire [2 : 0] M6_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 AWVALID" *)
output wire M6_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 BREADY" *)
output wire M6_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 BRESP" *)
input wire [1 : 0] M6_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 BVALID" *)
input wire M6_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 RREADY" *)
output wire M6_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 RDATA" *)
input wire [511 : 0] M6_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 RRESP" *)
input wire [1 : 0] M6_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 RLAST" *)
input wire M6_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 RVALID" *)
input wire M6_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 WREADY" *)
input wire M6_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 WDATA" *)
output wire [511 : 0] M6_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 WLAST" *)
output wire M6_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 WSTRB" *)
output wire [63 : 0] M6_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M6, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M6 WVALID" *)
output wire M6_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 ARREADY" *)
input wire M7_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 ARADDR" *)
output wire [31 : 0] M7_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 ARBURST" *)
output wire [1 : 0] M7_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 ARCACHE" *)
output wire [3 : 0] M7_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 ARLEN" *)
output wire [7 : 0] M7_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 ARPROT" *)
output wire [2 : 0] M7_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 ARSIZE" *)
output wire [2 : 0] M7_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 ARVALID" *)
output wire M7_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 AWREADY" *)
input wire M7_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 AWADDR" *)
output wire [31 : 0] M7_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 AWBURST" *)
output wire [1 : 0] M7_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 AWCACHE" *)
output wire [3 : 0] M7_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 AWLEN" *)
output wire [7 : 0] M7_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 AWPROT" *)
output wire [2 : 0] M7_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 AWSIZE" *)
output wire [2 : 0] M7_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 AWVALID" *)
output wire M7_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 BREADY" *)
output wire M7_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 BRESP" *)
input wire [1 : 0] M7_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 BVALID" *)
input wire M7_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 RREADY" *)
output wire M7_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 RDATA" *)
input wire [511 : 0] M7_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 RRESP" *)
input wire [1 : 0] M7_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 RLAST" *)
input wire M7_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 RVALID" *)
input wire M7_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 WREADY" *)
input wire M7_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 WDATA" *)
output wire [511 : 0] M7_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 WLAST" *)
output wire M7_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 WSTRB" *)
output wire [63 : 0] M7_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M7, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN fmn_intercon_v2_nodebug_aclk_0, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M7 WVALID" *)
output wire M7_wvalid;

  fmn_axi_collector inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .SN_arready(SN_arready),
    .SN_araddr(SN_araddr),
    .SN_arburst(SN_arburst),
    .SN_arcache(SN_arcache),
    .SN_arlen(SN_arlen),
    .SN_arprot(SN_arprot),
    .SN_arsize(SN_arsize),
    .SN_arvalid(SN_arvalid),
    .SN_awready(SN_awready),
    .SN_awaddr(SN_awaddr),
    .SN_awburst(SN_awburst),
    .SN_awcache(SN_awcache),
    .SN_awlen(SN_awlen),
    .SN_awprot(SN_awprot),
    .SN_awsize(SN_awsize),
    .SN_awvalid(SN_awvalid),
    .SN_bready(SN_bready),
    .SN_bresp(SN_bresp),
    .SN_bvalid(SN_bvalid),
    .SN_rready(SN_rready),
    .SN_rdata(SN_rdata),
    .SN_rresp(SN_rresp),
    .SN_rlast(SN_rlast),
    .SN_rvalid(SN_rvalid),
    .SN_wready(SN_wready),
    .SN_wdata(SN_wdata),
    .SN_wlast(SN_wlast),
    .SN_wstrb(SN_wstrb),
    .SN_wvalid(SN_wvalid),
    .M0_arready(M0_arready),
    .M0_araddr(M0_araddr),
    .M0_arburst(M0_arburst),
    .M0_arcache(M0_arcache),
    .M0_arlen(M0_arlen),
    .M0_arprot(M0_arprot),
    .M0_arsize(M0_arsize),
    .M0_arvalid(M0_arvalid),
    .M0_awready(M0_awready),
    .M0_awaddr(M0_awaddr),
    .M0_awburst(M0_awburst),
    .M0_awcache(M0_awcache),
    .M0_awlen(M0_awlen),
    .M0_awprot(M0_awprot),
    .M0_awsize(M0_awsize),
    .M0_awvalid(M0_awvalid),
    .M0_bready(M0_bready),
    .M0_bresp(M0_bresp),
    .M0_bvalid(M0_bvalid),
    .M0_rready(M0_rready),
    .M0_rdata(M0_rdata),
    .M0_rresp(M0_rresp),
    .M0_rlast(M0_rlast),
    .M0_rvalid(M0_rvalid),
    .M0_wready(M0_wready),
    .M0_wdata(M0_wdata),
    .M0_wlast(M0_wlast),
    .M0_wstrb(M0_wstrb),
    .M0_wvalid(M0_wvalid),
    .M1_arready(M1_arready),
    .M1_araddr(M1_araddr),
    .M1_arburst(M1_arburst),
    .M1_arcache(M1_arcache),
    .M1_arlen(M1_arlen),
    .M1_arprot(M1_arprot),
    .M1_arsize(M1_arsize),
    .M1_arvalid(M1_arvalid),
    .M1_awready(M1_awready),
    .M1_awaddr(M1_awaddr),
    .M1_awburst(M1_awburst),
    .M1_awcache(M1_awcache),
    .M1_awlen(M1_awlen),
    .M1_awprot(M1_awprot),
    .M1_awsize(M1_awsize),
    .M1_awvalid(M1_awvalid),
    .M1_bready(M1_bready),
    .M1_bresp(M1_bresp),
    .M1_bvalid(M1_bvalid),
    .M1_rready(M1_rready),
    .M1_rdata(M1_rdata),
    .M1_rresp(M1_rresp),
    .M1_rlast(M1_rlast),
    .M1_rvalid(M1_rvalid),
    .M1_wready(M1_wready),
    .M1_wdata(M1_wdata),
    .M1_wlast(M1_wlast),
    .M1_wstrb(M1_wstrb),
    .M1_wvalid(M1_wvalid),
    .M2_arready(M2_arready),
    .M2_araddr(M2_araddr),
    .M2_arburst(M2_arburst),
    .M2_arcache(M2_arcache),
    .M2_arlen(M2_arlen),
    .M2_arprot(M2_arprot),
    .M2_arsize(M2_arsize),
    .M2_arvalid(M2_arvalid),
    .M2_awready(M2_awready),
    .M2_awaddr(M2_awaddr),
    .M2_awburst(M2_awburst),
    .M2_awcache(M2_awcache),
    .M2_awlen(M2_awlen),
    .M2_awprot(M2_awprot),
    .M2_awsize(M2_awsize),
    .M2_awvalid(M2_awvalid),
    .M2_bready(M2_bready),
    .M2_bresp(M2_bresp),
    .M2_bvalid(M2_bvalid),
    .M2_rready(M2_rready),
    .M2_rdata(M2_rdata),
    .M2_rresp(M2_rresp),
    .M2_rlast(M2_rlast),
    .M2_rvalid(M2_rvalid),
    .M2_wready(M2_wready),
    .M2_wdata(M2_wdata),
    .M2_wlast(M2_wlast),
    .M2_wstrb(M2_wstrb),
    .M2_wvalid(M2_wvalid),
    .M3_arready(M3_arready),
    .M3_araddr(M3_araddr),
    .M3_arburst(M3_arburst),
    .M3_arcache(M3_arcache),
    .M3_arlen(M3_arlen),
    .M3_arprot(M3_arprot),
    .M3_arsize(M3_arsize),
    .M3_arvalid(M3_arvalid),
    .M3_awready(M3_awready),
    .M3_awaddr(M3_awaddr),
    .M3_awburst(M3_awburst),
    .M3_awcache(M3_awcache),
    .M3_awlen(M3_awlen),
    .M3_awprot(M3_awprot),
    .M3_awsize(M3_awsize),
    .M3_awvalid(M3_awvalid),
    .M3_bready(M3_bready),
    .M3_bresp(M3_bresp),
    .M3_bvalid(M3_bvalid),
    .M3_rready(M3_rready),
    .M3_rdata(M3_rdata),
    .M3_rresp(M3_rresp),
    .M3_rlast(M3_rlast),
    .M3_rvalid(M3_rvalid),
    .M3_wready(M3_wready),
    .M3_wdata(M3_wdata),
    .M3_wlast(M3_wlast),
    .M3_wstrb(M3_wstrb),
    .M3_wvalid(M3_wvalid),
    .M4_arready(M4_arready),
    .M4_araddr(M4_araddr),
    .M4_arburst(M4_arburst),
    .M4_arcache(M4_arcache),
    .M4_arlen(M4_arlen),
    .M4_arprot(M4_arprot),
    .M4_arsize(M4_arsize),
    .M4_arvalid(M4_arvalid),
    .M4_awready(M4_awready),
    .M4_awaddr(M4_awaddr),
    .M4_awburst(M4_awburst),
    .M4_awcache(M4_awcache),
    .M4_awlen(M4_awlen),
    .M4_awprot(M4_awprot),
    .M4_awsize(M4_awsize),
    .M4_awvalid(M4_awvalid),
    .M4_bready(M4_bready),
    .M4_bresp(M4_bresp),
    .M4_bvalid(M4_bvalid),
    .M4_rready(M4_rready),
    .M4_rdata(M4_rdata),
    .M4_rresp(M4_rresp),
    .M4_rlast(M4_rlast),
    .M4_rvalid(M4_rvalid),
    .M4_wready(M4_wready),
    .M4_wdata(M4_wdata),
    .M4_wlast(M4_wlast),
    .M4_wstrb(M4_wstrb),
    .M4_wvalid(M4_wvalid),
    .M5_arready(M5_arready),
    .M5_araddr(M5_araddr),
    .M5_arburst(M5_arburst),
    .M5_arcache(M5_arcache),
    .M5_arlen(M5_arlen),
    .M5_arprot(M5_arprot),
    .M5_arsize(M5_arsize),
    .M5_arvalid(M5_arvalid),
    .M5_awready(M5_awready),
    .M5_awaddr(M5_awaddr),
    .M5_awburst(M5_awburst),
    .M5_awcache(M5_awcache),
    .M5_awlen(M5_awlen),
    .M5_awprot(M5_awprot),
    .M5_awsize(M5_awsize),
    .M5_awvalid(M5_awvalid),
    .M5_bready(M5_bready),
    .M5_bresp(M5_bresp),
    .M5_bvalid(M5_bvalid),
    .M5_rready(M5_rready),
    .M5_rdata(M5_rdata),
    .M5_rresp(M5_rresp),
    .M5_rlast(M5_rlast),
    .M5_rvalid(M5_rvalid),
    .M5_wready(M5_wready),
    .M5_wdata(M5_wdata),
    .M5_wlast(M5_wlast),
    .M5_wstrb(M5_wstrb),
    .M5_wvalid(M5_wvalid),
    .M6_arready(M6_arready),
    .M6_araddr(M6_araddr),
    .M6_arburst(M6_arburst),
    .M6_arcache(M6_arcache),
    .M6_arlen(M6_arlen),
    .M6_arprot(M6_arprot),
    .M6_arsize(M6_arsize),
    .M6_arvalid(M6_arvalid),
    .M6_awready(M6_awready),
    .M6_awaddr(M6_awaddr),
    .M6_awburst(M6_awburst),
    .M6_awcache(M6_awcache),
    .M6_awlen(M6_awlen),
    .M6_awprot(M6_awprot),
    .M6_awsize(M6_awsize),
    .M6_awvalid(M6_awvalid),
    .M6_bready(M6_bready),
    .M6_bresp(M6_bresp),
    .M6_bvalid(M6_bvalid),
    .M6_rready(M6_rready),
    .M6_rdata(M6_rdata),
    .M6_rresp(M6_rresp),
    .M6_rlast(M6_rlast),
    .M6_rvalid(M6_rvalid),
    .M6_wready(M6_wready),
    .M6_wdata(M6_wdata),
    .M6_wlast(M6_wlast),
    .M6_wstrb(M6_wstrb),
    .M6_wvalid(M6_wvalid),
    .M7_arready(M7_arready),
    .M7_araddr(M7_araddr),
    .M7_arburst(M7_arburst),
    .M7_arcache(M7_arcache),
    .M7_arlen(M7_arlen),
    .M7_arprot(M7_arprot),
    .M7_arsize(M7_arsize),
    .M7_arvalid(M7_arvalid),
    .M7_awready(M7_awready),
    .M7_awaddr(M7_awaddr),
    .M7_awburst(M7_awburst),
    .M7_awcache(M7_awcache),
    .M7_awlen(M7_awlen),
    .M7_awprot(M7_awprot),
    .M7_awsize(M7_awsize),
    .M7_awvalid(M7_awvalid),
    .M7_bready(M7_bready),
    .M7_bresp(M7_bresp),
    .M7_bvalid(M7_bvalid),
    .M7_rready(M7_rready),
    .M7_rdata(M7_rdata),
    .M7_rresp(M7_rresp),
    .M7_rlast(M7_rlast),
    .M7_rvalid(M7_rvalid),
    .M7_wready(M7_wready),
    .M7_wdata(M7_wdata),
    .M7_wlast(M7_wlast),
    .M7_wstrb(M7_wstrb),
    .M7_wvalid(M7_wvalid)
  );
endmodule
