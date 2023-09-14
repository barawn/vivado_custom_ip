//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Fri Aug 14 10:59:14 2020
//Host        : DESKTOP-ELJAE7D running 64-bit major release  (build 9200)
//Command     : generate_target frame_memory_buffer.bd
//Design      : frame_memory_buffer
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "frame_memory_buffer,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=frame_memory_buffer,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=44,numReposBlks=44,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_clkrst_cnt=31,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "frame_memory_buffer.hwdef" *) 
module frame_memory_buffer
   (MEM_AXI_araddr,
    MEM_AXI_arburst,
    MEM_AXI_arcache,
    MEM_AXI_arid,
    MEM_AXI_arlen,
    MEM_AXI_arprot,
    MEM_AXI_arready,
    MEM_AXI_arsize,
    MEM_AXI_aruser,
    MEM_AXI_arvalid,
    MEM_AXI_awaddr,
    MEM_AXI_awburst,
    MEM_AXI_awcache,
    MEM_AXI_awid,
    MEM_AXI_awlen,
    MEM_AXI_awprot,
    MEM_AXI_awready,
    MEM_AXI_awsize,
    MEM_AXI_awuser,
    MEM_AXI_awvalid,
    MEM_AXI_bready,
    MEM_AXI_bresp,
    MEM_AXI_bvalid,
    MEM_AXI_rdata,
    MEM_AXI_rlast,
    MEM_AXI_rready,
    MEM_AXI_rresp,
    MEM_AXI_rvalid,
    MEM_AXI_wdata,
    MEM_AXI_wlast,
    MEM_AXI_wready,
    MEM_AXI_wstrb,
    MEM_AXI_wvalid,
    MM2S_CMD_tdata,
    MM2S_CMD_tready,
    MM2S_CMD_tvalid,
    M_COMPLETE_AXIS_tdata,
    M_COMPLETE_AXIS_tready,
    M_COMPLETE_AXIS_tvalid,
    M_DONE_AXIS_tdata,
    M_DONE_AXIS_tready,
    M_DONE_AXIS_tvalid,
    M_OUTSTREAM_AXIS_tdata,
    M_OUTSTREAM_AXIS_tkeep,
    M_OUTSTREAM_AXIS_tlast,
    M_OUTSTREAM_AXIS_tready,
    M_OUTSTREAM_AXIS_tvalid,
    S2MM_CMD_tdata,
    S2MM_CMD_tready,
    S2MM_CMD_tvalid,
    S_INSTREAM_AXIS_tdata,
    S_INSTREAM_AXIS_tkeep,
    S_INSTREAM_AXIS_tlast,
    S_INSTREAM_AXIS_tready,
    S_INSTREAM_AXIS_tuser,
    S_INSTREAM_AXIS_tvalid,
    aresetn,
    buffer_size_0,
    clk_100MHz,
    high_address_0,
    mm2s_err,
    mm2s_read_done_flag,
    mm2s_read_flag,
    reset_rtl_0,
    s2mm_err,
    s2mm_write_done_flag,
    s2mm_write_flag);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MEM_AXI, ADDR_WIDTH 33, ARUSER_WIDTH 4, AWUSER_WIDTH 4, BUSER_WIDTH 0, CLK_DOMAIN frame_memory_buffer_clk_100MHz, DATA_WIDTH 512, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 64, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]MEM_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARBURST" *) output [1:0]MEM_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARCACHE" *) output [3:0]MEM_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARID" *) output [3:0]MEM_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARLEN" *) output [7:0]MEM_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARPROT" *) output [2:0]MEM_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARREADY" *) input MEM_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARSIZE" *) output [2:0]MEM_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARUSER" *) output [3:0]MEM_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI ARVALID" *) output MEM_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWADDR" *) output [31:0]MEM_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWBURST" *) output [1:0]MEM_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWCACHE" *) output [3:0]MEM_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWID" *) output [3:0]MEM_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWLEN" *) output [7:0]MEM_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWPROT" *) output [2:0]MEM_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWREADY" *) input MEM_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWSIZE" *) output [2:0]MEM_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWUSER" *) output [3:0]MEM_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI AWVALID" *) output MEM_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI BREADY" *) output MEM_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI BRESP" *) input [1:0]MEM_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI BVALID" *) input MEM_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI RDATA" *) input [511:0]MEM_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI RLAST" *) input MEM_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI RREADY" *) output MEM_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI RRESP" *) input [1:0]MEM_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI RVALID" *) input MEM_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI WDATA" *) output [511:0]MEM_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI WLAST" *) output MEM_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI WREADY" *) input MEM_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI WSTRB" *) output [63:0]MEM_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MEM_AXI WVALID" *) output MEM_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MM2S_CMD " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MM2S_CMD, CLK_DOMAIN frame_memory_buffer_clk_100MHz, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [71:0]MM2S_CMD_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MM2S_CMD " *) input [0:0]MM2S_CMD_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 MM2S_CMD " *) output [0:0]MM2S_CMD_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_COMPLETE_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_COMPLETE_AXIS, CLK_DOMAIN frame_memory_buffer_clk_100MHz, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 7, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [55:0]M_COMPLETE_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_COMPLETE_AXIS TREADY" *) input [0:0]M_COMPLETE_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_COMPLETE_AXIS TVALID" *) output [0:0]M_COMPLETE_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_DONE_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_DONE_AXIS, CLK_DOMAIN frame_memory_buffer_clk_100MHz, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M_DONE_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_DONE_AXIS TREADY" *) input [0:0]M_DONE_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_DONE_AXIS TVALID" *) output [0:0]M_DONE_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_OUTSTREAM_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_OUTSTREAM_AXIS, CLK_DOMAIN frame_memory_buffer_clk_100MHz, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [511:0]M_OUTSTREAM_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_OUTSTREAM_AXIS TKEEP" *) output [63:0]M_OUTSTREAM_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_OUTSTREAM_AXIS TLAST" *) output M_OUTSTREAM_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_OUTSTREAM_AXIS TREADY" *) input M_OUTSTREAM_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_OUTSTREAM_AXIS TVALID" *) output M_OUTSTREAM_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S2MM_CMD " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S2MM_CMD, CLK_DOMAIN frame_memory_buffer_clk_100MHz, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [71:0]S2MM_CMD_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S2MM_CMD " *) input [0:0]S2MM_CMD_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S2MM_CMD " *) output [0:0]S2MM_CMD_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_INSTREAM_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_INSTREAM_AXIS, CLK_DOMAIN frame_memory_buffer_clk_100MHz, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 3" *) input [511:0]S_INSTREAM_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_INSTREAM_AXIS TKEEP" *) input [63:0]S_INSTREAM_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_INSTREAM_AXIS TLAST" *) input S_INSTREAM_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_INSTREAM_AXIS TREADY" *) output S_INSTREAM_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_INSTREAM_AXIS TUSER" *) input [2:0]S_INSTREAM_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_INSTREAM_AXIS TVALID" *) input S_INSTREAM_AXIS_tvalid;
  output [0:0]aresetn;
  input [2:0]buffer_size_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_BUSIF MEM_AXI:M_COMPLETE_AXIS:M_DONE_AXIS:S_INSTREAM_AXIS:M_OUTSTREAM_AXIS:S2MM_CMD:MM2S_CMD, CLK_DOMAIN frame_memory_buffer_clk_100MHz, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_100MHz;
  input [7:0]high_address_0;
  output mm2s_err;
  output mm2s_read_done_flag;
  output mm2s_read_flag;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl_0;
  output s2mm_err;
  output s2mm_write_done_flag;
  output s2mm_write_flag;

  wire [511:0]S_INSTREAM_AXIS_1_TDATA;
  wire [63:0]S_INSTREAM_AXIS_1_TKEEP;
  wire S_INSTREAM_AXIS_1_TLAST;
  wire S_INSTREAM_AXIS_1_TREADY;
  wire [2:0]S_INSTREAM_AXIS_1_TUSER;
  wire S_INSTREAM_AXIS_1_TVALID;
  wire [7:0]axi_datamover_0_M_AXIS_MM2S_STS_TDATA;
  wire [7:7]axi_datamover_0_M_AXIS_MM2S_STS_TREADY;
  wire axi_datamover_0_M_AXIS_MM2S_STS_TVALID;
  wire [511:0]axi_datamover_0_M_AXIS_MM2S_TDATA;
  wire [63:0]axi_datamover_0_M_AXIS_MM2S_TKEEP;
  wire axi_datamover_0_M_AXIS_MM2S_TLAST;
  wire axi_datamover_0_M_AXIS_MM2S_TREADY;
  wire axi_datamover_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_datamover_0_M_AXIS_S2MM_STS_TDATA;
  wire axi_datamover_0_M_AXIS_S2MM_STS_TREADY;
  wire axi_datamover_0_M_AXIS_S2MM_STS_TVALID;
  wire [31:0]axi_datamover_0_M_AXI_ARADDR;
  wire [1:0]axi_datamover_0_M_AXI_ARBURST;
  wire [3:0]axi_datamover_0_M_AXI_ARCACHE;
  wire [3:0]axi_datamover_0_M_AXI_ARID;
  wire [7:0]axi_datamover_0_M_AXI_ARLEN;
  wire [2:0]axi_datamover_0_M_AXI_ARPROT;
  wire axi_datamover_0_M_AXI_ARREADY;
  wire [2:0]axi_datamover_0_M_AXI_ARSIZE;
  wire [3:0]axi_datamover_0_M_AXI_ARUSER;
  wire axi_datamover_0_M_AXI_ARVALID;
  wire [31:0]axi_datamover_0_M_AXI_AWADDR;
  wire [1:0]axi_datamover_0_M_AXI_AWBURST;
  wire [3:0]axi_datamover_0_M_AXI_AWCACHE;
  wire [3:0]axi_datamover_0_M_AXI_AWID;
  wire [7:0]axi_datamover_0_M_AXI_AWLEN;
  wire [2:0]axi_datamover_0_M_AXI_AWPROT;
  wire axi_datamover_0_M_AXI_AWREADY;
  wire [2:0]axi_datamover_0_M_AXI_AWSIZE;
  wire [3:0]axi_datamover_0_M_AXI_AWUSER;
  wire axi_datamover_0_M_AXI_AWVALID;
  wire axi_datamover_0_M_AXI_BREADY;
  wire [1:0]axi_datamover_0_M_AXI_BRESP;
  wire axi_datamover_0_M_AXI_BVALID;
  wire [511:0]axi_datamover_0_M_AXI_RDATA;
  wire axi_datamover_0_M_AXI_RLAST;
  wire axi_datamover_0_M_AXI_RREADY;
  wire [1:0]axi_datamover_0_M_AXI_RRESP;
  wire axi_datamover_0_M_AXI_RVALID;
  wire [511:0]axi_datamover_0_M_AXI_WDATA;
  wire axi_datamover_0_M_AXI_WLAST;
  wire axi_datamover_0_M_AXI_WREADY;
  wire [63:0]axi_datamover_0_M_AXI_WSTRB;
  wire axi_datamover_0_M_AXI_WVALID;
  wire axi_datamover_0_mm2s_addr_req_posted;
  wire axi_datamover_0_mm2s_err;
  wire axi_datamover_0_mm2s_rd_xfer_cmplt;
  wire axi_datamover_0_s2mm_addr_req_posted;
  wire axi_datamover_0_s2mm_err;
  wire axi_datamover_0_s2mm_wr_xfer_cmplt;
  wire [15:0]axis_broadcaster_0_M00_AXIS_TDATA;
  wire axis_broadcaster_0_M00_AXIS_TREADY;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TVALID;
  wire [31:16]axis_broadcaster_0_M01_AXIS_TDATA;
  wire axis_broadcaster_0_M01_AXIS_TREADY;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TVALID;
  wire [511:0]axis_broadcaster_1_M00_AXIS1_TDATA;
  wire [0:0]axis_broadcaster_1_M00_AXIS1_TLAST;
  wire axis_broadcaster_1_M00_AXIS1_TREADY;
  wire [2:0]axis_broadcaster_1_M00_AXIS1_TUSER;
  wire [0:0]axis_broadcaster_1_M00_AXIS1_TVALID;
  wire [7:0]axis_broadcaster_1_M00_AXIS_TDATA;
  wire [0:0]axis_broadcaster_1_M00_AXIS_TREADY;
  wire [0:0]axis_broadcaster_1_M00_AXIS_TVALID;
  wire [15:8]axis_broadcaster_1_M01_AXIS1_TDATA;
  wire [1:1]axis_broadcaster_1_M01_AXIS1_TREADY;
  wire [1:1]axis_broadcaster_1_M01_AXIS1_TVALID;
  wire [1023:512]axis_broadcaster_1_M01_AXIS_TDATA;
  wire [127:64]axis_broadcaster_1_M01_AXIS_TKEEP;
  wire [1:1]axis_broadcaster_1_M01_AXIS_TLAST;
  wire axis_broadcaster_1_M01_AXIS_TREADY;
  wire [1:1]axis_broadcaster_1_M01_AXIS_TVALID;
  wire [23:16]axis_broadcaster_1_M02_AXIS_TDATA;
  wire [2:2]axis_broadcaster_1_M02_AXIS_TREADY;
  wire [2:2]axis_broadcaster_1_M02_AXIS_TVALID;
  wire [47:40]axis_broadcaster_2_M05_AXIS_TDATA;
  wire axis_broadcaster_2_M05_AXIS_TREADY;
  wire [5:5]axis_broadcaster_2_M05_AXIS_TVALID;
  wire [7:0]axis_broadcaster_3_M00_AXIS_TDATA;
  wire [3:3]axis_broadcaster_3_M00_AXIS_TREADY;
  wire [0:0]axis_broadcaster_3_M00_AXIS_TVALID;
  wire [15:8]axis_broadcaster_3_M01_AXIS_TDATA;
  wire [4:4]axis_broadcaster_3_M01_AXIS_TREADY;
  wire [1:1]axis_broadcaster_3_M01_AXIS_TVALID;
  wire [55:0]axis_broadcaster_4_M00_AXIS_TDATA;
  wire [0:0]axis_broadcaster_4_M00_AXIS_TREADY;
  wire [0:0]axis_broadcaster_4_M00_AXIS_TVALID;
  wire [111:56]axis_broadcaster_4_M01_AXIS_TDATA;
  wire axis_broadcaster_4_M01_AXIS_TREADY;
  wire [1:1]axis_broadcaster_4_M01_AXIS_TVALID;
  wire [7:0]axis_broadcaster_5_M00_AXIS_TDATA;
  wire [0:0]axis_broadcaster_5_M00_AXIS_TREADY;
  wire [0:0]axis_broadcaster_5_M00_AXIS_TVALID;
  wire [15:8]axis_broadcaster_5_M01_AXIS_TDATA;
  wire [1:1]axis_broadcaster_5_M01_AXIS_TREADY;
  wire [1:1]axis_broadcaster_5_M01_AXIS_TVALID;
  wire [23:16]axis_broadcaster_5_M02_AXIS_TDATA;
  wire [2:2]axis_broadcaster_5_M02_AXIS_TREADY;
  wire [2:2]axis_broadcaster_5_M02_AXIS_TVALID;
  wire [31:24]axis_broadcaster_5_M03_AXIS_TDATA;
  wire [3:3]axis_broadcaster_5_M03_AXIS_TREADY;
  wire [3:3]axis_broadcaster_5_M03_AXIS_TVALID;
  wire [39:32]axis_broadcaster_5_M04_AXIS_TDATA;
  wire [4:4]axis_broadcaster_5_M04_AXIS_TREADY;
  wire [4:4]axis_broadcaster_5_M04_AXIS_TVALID;
  wire [47:40]axis_broadcaster_5_M05_AXIS_TDATA;
  wire [5:5]axis_broadcaster_5_M05_AXIS_TREADY;
  wire [5:5]axis_broadcaster_5_M05_AXIS_TVALID;
  wire [7:0]axis_broadcaster_7_M00_AXIS_TDATA;
  wire [0:0]axis_broadcaster_7_M00_AXIS_TREADY;
  wire [0:0]axis_broadcaster_7_M00_AXIS_TVALID;
  wire [15:8]axis_broadcaster_7_M01_AXIS_TDATA;
  wire [1:1]axis_broadcaster_7_M01_AXIS_TREADY;
  wire [1:1]axis_broadcaster_7_M01_AXIS_TVALID;
  wire [23:16]axis_broadcaster_7_M02_AXIS_TDATA;
  wire [2:2]axis_broadcaster_7_M02_AXIS_TREADY;
  wire [2:2]axis_broadcaster_7_M02_AXIS_TVALID;
  wire [31:24]axis_broadcaster_7_M03_AXIS_TDATA;
  wire [3:3]axis_broadcaster_7_M03_AXIS_TREADY;
  wire [3:3]axis_broadcaster_7_M03_AXIS_TVALID;
  wire [39:32]axis_broadcaster_7_M04_AXIS_TDATA;
  wire [4:4]axis_broadcaster_7_M04_AXIS_TREADY;
  wire [4:4]axis_broadcaster_7_M04_AXIS_TVALID;
  wire [47:40]axis_broadcaster_7_M05_AXIS_TDATA;
  wire [5:5]axis_broadcaster_7_M05_AXIS_TREADY;
  wire [5:5]axis_broadcaster_7_M05_AXIS_TVALID;
  wire [55:48]axis_broadcaster_7_M06_AXIS_TDATA;
  wire [6:6]axis_broadcaster_7_M06_AXIS_TREADY;
  wire [6:6]axis_broadcaster_7_M06_AXIS_TVALID;
  wire [63:0]axis_broadcaster_8_M00_AXIS_TDATA;
  wire [0:0]axis_broadcaster_8_M00_AXIS_TREADY;
  wire [0:0]axis_broadcaster_8_M00_AXIS_TVALID;
  wire [127:64]axis_broadcaster_8_M01_AXIS_TDATA;
  wire axis_broadcaster_8_M01_AXIS_TREADY;
  wire [1:1]axis_broadcaster_8_M01_AXIS_TVALID;
  wire [55:0]axis_combiner_0_M_AXIS1_TDATA;
  wire axis_combiner_0_M_AXIS1_TREADY;
  wire axis_combiner_0_M_AXIS1_TVALID;
  wire [15:0]axis_data_fifo_0_M_AXIS_TDATA;
  wire axis_data_fifo_0_M_AXIS_TREADY;
  wire axis_data_fifo_0_M_AXIS_TVALID;
  wire [47:0]axis_data_fifo_1_M_AXIS1_TDATA;
  wire axis_data_fifo_1_M_AXIS1_TREADY;
  wire axis_data_fifo_1_M_AXIS1_TVALID;
  wire [55:0]axis_data_fifo_1_M_AXIS_TDATA;
  wire axis_data_fifo_1_M_AXIS_TREADY;
  wire axis_data_fifo_1_M_AXIS_TVALID;
  wire [71:0]axis_register_slice_0_M_AXIS1_TDATA;
  wire axis_register_slice_0_M_AXIS1_TREADY;
  wire axis_register_slice_0_M_AXIS1_TVALID;
  wire [15:0]axis_register_slice_0_M_AXIS2_TDATA;
  wire axis_register_slice_0_M_AXIS2_TREADY;
  wire axis_register_slice_0_M_AXIS2_TVALID;
  wire [15:0]axis_register_slice_0_M_AXIS_TDATA;
  wire axis_register_slice_0_M_AXIS_TREADY;
  wire axis_register_slice_0_M_AXIS_TVALID;
  wire [15:0]axis_subset_converter_1_M_AXIS_TDATA;
  wire [0:0]axis_subset_converter_1_M_AXIS_TREADY;
  wire axis_subset_converter_1_M_AXIS_TVALID;
  wire [2:0]buffer_size_0_1;
  wire clk_100MHz_1;
  wire [47:0]complete_address_broadcast_M00_AXIS_TDATA;
  wire complete_address_broadcast_M00_AXIS_TREADY;
  wire [0:0]complete_address_broadcast_M00_AXIS_TVALID;
  wire [95:48]complete_address_broadcast_M01_AXIS_TDATA;
  wire complete_address_broadcast_M01_AXIS_TREADY;
  wire [1:1]complete_address_broadcast_M01_AXIS_TVALID;
  wire [15:0]complete_address_combiner_M_AXIS_TDATA;
  wire complete_address_combiner_M_AXIS_TREADY;
  wire complete_address_combiner_M_AXIS_TVALID;
  wire [47:0]complete_address_storage_slice_M_AXIS_TDATA;
  wire complete_address_storage_slice_M_AXIS_TREADY;
  wire complete_address_storage_slice_M_AXIS_TVALID;
  wire [7:0]complete_addrlength_err_split_M00_AXIS_TDATA;
  wire [0:0]complete_addrlength_err_split_M00_AXIS_TREADY;
  wire [0:0]complete_addrlength_err_split_M00_AXIS_TVALID;
  wire [15:8]complete_addrlength_err_split_M01_AXIS_TDATA;
  wire [1:1]complete_addrlength_err_split_M01_AXIS_TREADY;
  wire [1:1]complete_addrlength_err_split_M01_AXIS_TVALID;
  wire [23:16]complete_addrlength_err_split_M02_AXIS_TDATA;
  wire [2:2]complete_addrlength_err_split_M02_AXIS_TREADY;
  wire [2:2]complete_addrlength_err_split_M02_AXIS_TVALID;
  wire [31:24]complete_addrlength_err_split_M03_AXIS_TDATA;
  wire [0:0]complete_addrlength_err_split_M03_AXIS_TREADY;
  wire [3:3]complete_addrlength_err_split_M03_AXIS_TVALID;
  wire [39:32]complete_addrlength_err_split_M04_AXIS_TDATA;
  wire [1:1]complete_addrlength_err_split_M04_AXIS_TREADY;
  wire [4:4]complete_addrlength_err_split_M04_AXIS_TVALID;
  wire [47:0]complete_prefifo_M_AXIS_TDATA;
  wire complete_prefifo_M_AXIS_TREADY;
  wire complete_prefifo_M_AXIS_TVALID;
  wire [3:0]const_GND4_dout;
  wire [0:0]const_GND_dout;
  wire [0:0]const_VCC_dout;
  wire [63:0]done_addrlengtherrstat_combiner_M_AXIS_TDATA;
  wire done_addrlengtherrstat_combiner_M_AXIS_TREADY;
  wire done_addrlengtherrstat_combiner_M_AXIS_TVALID;
  wire [63:0]done_slice_M_AXIS_TDATA;
  wire done_slice_M_AXIS_TREADY;
  wire done_slice_M_AXIS_TVALID;
  wire [7:0]error_track_fifo_M_AXIS_TDATA;
  wire [5:5]error_track_fifo_M_AXIS_TREADY;
  wire error_track_fifo_M_AXIS_TVALID;
  wire [15:0]frame_address_reset_0_m_axis_TDATA;
  wire [1:1]frame_address_reset_0_m_axis_TREADY;
  wire frame_address_reset_0_m_axis_TVALID;
  wire [1:0]frame_address_reset_0_m_req_suppress;
  wire [7:0]high_address_0_1;
  wire [23:0]mm2s_address_builder_m_axis_TDATA;
  wire mm2s_address_builder_m_axis_TREADY;
  wire mm2s_address_builder_m_axis_TVALID;
  wire [7:0]mm2s_address_prelength_split_M00_AXIS_TDATA;
  wire [3:3]mm2s_address_prelength_split_M00_AXIS_TREADY;
  wire [0:0]mm2s_address_prelength_split_M00_AXIS_TVALID;
  wire [15:8]mm2s_address_prelength_split_M01_AXIS_TDATA;
  wire [4:4]mm2s_address_prelength_split_M01_AXIS_TREADY;
  wire [1:1]mm2s_address_prelength_split_M01_AXIS_TVALID;
  wire [23:16]mm2s_address_prelength_split_M02_AXIS_TDATA;
  wire [5:5]mm2s_address_prelength_split_M02_AXIS_TREADY;
  wire [2:2]mm2s_address_prelength_split_M02_AXIS_TVALID;
  wire [47:0]mm2s_addrlength_combiner_M_AXIS_TDATA;
  wire mm2s_addrlength_combiner_M_AXIS_TREADY;
  wire mm2s_addrlength_combiner_M_AXIS_TVALID;
  wire [71:0]mm2s_cmd_broadcaster_M00_AXIS_TDATA;
  wire mm2s_cmd_broadcaster_M00_AXIS_TREADY;
  wire [0:0]mm2s_cmd_broadcaster_M00_AXIS_TVALID;
  wire [143:72]mm2s_cmd_broadcaster_M01_AXIS_TDATA;
  wire [0:0]mm2s_cmd_broadcaster_M01_AXIS_TREADY;
  wire [1:1]mm2s_cmd_broadcaster_M01_AXIS_TVALID;
  wire [71:0]mm2s_cmd_former_M_AXIS_TDATA;
  wire mm2s_cmd_former_M_AXIS_TREADY;
  wire mm2s_cmd_former_M_AXIS_TVALID;
  wire [71:0]mm2s_cmd_slice_M_AXIS_TDATA;
  wire mm2s_cmd_slice_M_AXIS_TREADY;
  wire mm2s_cmd_slice_M_AXIS_TVALID;
  wire [7:0]mm2s_err_fifo_M_AXIS_TDATA;
  wire [6:6]mm2s_err_fifo_M_AXIS_TREADY;
  wire mm2s_err_fifo_M_AXIS_TVALID;
  wire [15:0]next_address_switch_M00_AXIS_TDATA;
  wire next_address_switch_M00_AXIS_TREADY;
  wire [0:0]next_address_switch_M00_AXIS_TVALID;
  wire reset_rtl_0_1;
  wire [0:0]rst_clk_100MHz_100M_peripheral_aresetn;
  wire [15:0]s2mm_addr_storage_M_AXIS_TDATA;
  wire s2mm_addr_storage_M_AXIS_TREADY;
  wire s2mm_addr_storage_M_AXIS_TVALID;
  wire [71:0]s2mm_cmd_broadcaster_M00_AXIS_TDATA;
  wire s2mm_cmd_broadcaster_M00_AXIS_TREADY;
  wire [0:0]s2mm_cmd_broadcaster_M00_AXIS_TVALID;
  wire [143:72]s2mm_cmd_broadcaster_M01_AXIS_TDATA;
  wire [0:0]s2mm_cmd_broadcaster_M01_AXIS_TREADY;
  wire [1:1]s2mm_cmd_broadcaster_M01_AXIS_TVALID;
  wire [71:0]s2mm_cmd_former_M_AXIS_TDATA;
  wire s2mm_cmd_former_M_AXIS_TREADY;
  wire s2mm_cmd_former_M_AXIS_TVALID;
  wire [47:0]s2mm_complete_combiner_M_AXIS_TDATA;
  wire s2mm_complete_combiner_M_AXIS_TREADY;
  wire s2mm_complete_combiner_M_AXIS_TVALID;
  wire [23:0]source_address_build_0_m_axis_TDATA;
  wire source_address_build_0_m_axis_TREADY;
  wire source_address_build_0_m_axis_TVALID;
  wire [7:0]stream_error_tracker_0_m_axis_TDATA;
  wire stream_error_tracker_0_m_axis_TREADY;
  wire stream_error_tracker_0_m_axis_TVALID;
  wire [127:0]NLW_axis_broadcaster_1_m_axis_tkeep_UNCONNECTED;

  assign MEM_AXI_araddr[31:0] = axi_datamover_0_M_AXI_ARADDR;
  assign MEM_AXI_arburst[1:0] = axi_datamover_0_M_AXI_ARBURST;
  assign MEM_AXI_arcache[3:0] = axi_datamover_0_M_AXI_ARCACHE;
  assign MEM_AXI_arid[3:0] = axi_datamover_0_M_AXI_ARID;
  assign MEM_AXI_arlen[7:0] = axi_datamover_0_M_AXI_ARLEN;
  assign MEM_AXI_arprot[2:0] = axi_datamover_0_M_AXI_ARPROT;
  assign MEM_AXI_arsize[2:0] = axi_datamover_0_M_AXI_ARSIZE;
  assign MEM_AXI_aruser[3:0] = axi_datamover_0_M_AXI_ARUSER;
  assign MEM_AXI_arvalid = axi_datamover_0_M_AXI_ARVALID;
  assign MEM_AXI_awaddr[31:0] = axi_datamover_0_M_AXI_AWADDR;
  assign MEM_AXI_awburst[1:0] = axi_datamover_0_M_AXI_AWBURST;
  assign MEM_AXI_awcache[3:0] = axi_datamover_0_M_AXI_AWCACHE;
  assign MEM_AXI_awid[3:0] = axi_datamover_0_M_AXI_AWID;
  assign MEM_AXI_awlen[7:0] = axi_datamover_0_M_AXI_AWLEN;
  assign MEM_AXI_awprot[2:0] = axi_datamover_0_M_AXI_AWPROT;
  assign MEM_AXI_awsize[2:0] = axi_datamover_0_M_AXI_AWSIZE;
  assign MEM_AXI_awuser[3:0] = axi_datamover_0_M_AXI_AWUSER;
  assign MEM_AXI_awvalid = axi_datamover_0_M_AXI_AWVALID;
  assign MEM_AXI_bready = axi_datamover_0_M_AXI_BREADY;
  assign MEM_AXI_rready = axi_datamover_0_M_AXI_RREADY;
  assign MEM_AXI_wdata[511:0] = axi_datamover_0_M_AXI_WDATA;
  assign MEM_AXI_wlast = axi_datamover_0_M_AXI_WLAST;
  assign MEM_AXI_wstrb[63:0] = axi_datamover_0_M_AXI_WSTRB;
  assign MEM_AXI_wvalid = axi_datamover_0_M_AXI_WVALID;
  assign MM2S_CMD_tdata[71:0] = mm2s_cmd_broadcaster_M01_AXIS_TDATA;
  assign MM2S_CMD_tvalid[0] = mm2s_cmd_broadcaster_M01_AXIS_TVALID;
  assign M_COMPLETE_AXIS_tdata[55:0] = axis_broadcaster_4_M00_AXIS_TDATA;
  assign M_COMPLETE_AXIS_tvalid[0] = axis_broadcaster_4_M00_AXIS_TVALID;
  assign M_DONE_AXIS_tdata[63:0] = axis_broadcaster_8_M00_AXIS_TDATA;
  assign M_DONE_AXIS_tvalid[0] = axis_broadcaster_8_M00_AXIS_TVALID;
  assign M_OUTSTREAM_AXIS_tdata[511:0] = axi_datamover_0_M_AXIS_MM2S_TDATA;
  assign M_OUTSTREAM_AXIS_tkeep[63:0] = axi_datamover_0_M_AXIS_MM2S_TKEEP;
  assign M_OUTSTREAM_AXIS_tlast = axi_datamover_0_M_AXIS_MM2S_TLAST;
  assign M_OUTSTREAM_AXIS_tvalid = axi_datamover_0_M_AXIS_MM2S_TVALID;
  assign S2MM_CMD_tdata[71:0] = s2mm_cmd_broadcaster_M01_AXIS_TDATA;
  assign S2MM_CMD_tvalid[0] = s2mm_cmd_broadcaster_M01_AXIS_TVALID;
  assign S_INSTREAM_AXIS_1_TDATA = S_INSTREAM_AXIS_tdata[511:0];
  assign S_INSTREAM_AXIS_1_TKEEP = S_INSTREAM_AXIS_tkeep[63:0];
  assign S_INSTREAM_AXIS_1_TLAST = S_INSTREAM_AXIS_tlast;
  assign S_INSTREAM_AXIS_1_TUSER = S_INSTREAM_AXIS_tuser[2:0];
  assign S_INSTREAM_AXIS_1_TVALID = S_INSTREAM_AXIS_tvalid;
  assign S_INSTREAM_AXIS_tready = S_INSTREAM_AXIS_1_TREADY;
  assign aresetn[0] = rst_clk_100MHz_100M_peripheral_aresetn;
  assign axi_datamover_0_M_AXIS_MM2S_TREADY = M_OUTSTREAM_AXIS_tready;
  assign axi_datamover_0_M_AXI_ARREADY = MEM_AXI_arready;
  assign axi_datamover_0_M_AXI_AWREADY = MEM_AXI_awready;
  assign axi_datamover_0_M_AXI_BRESP = MEM_AXI_bresp[1:0];
  assign axi_datamover_0_M_AXI_BVALID = MEM_AXI_bvalid;
  assign axi_datamover_0_M_AXI_RDATA = MEM_AXI_rdata[511:0];
  assign axi_datamover_0_M_AXI_RLAST = MEM_AXI_rlast;
  assign axi_datamover_0_M_AXI_RRESP = MEM_AXI_rresp[1:0];
  assign axi_datamover_0_M_AXI_RVALID = MEM_AXI_rvalid;
  assign axi_datamover_0_M_AXI_WREADY = MEM_AXI_wready;
  assign axis_broadcaster_4_M00_AXIS_TREADY = M_COMPLETE_AXIS_tready[0];
  assign axis_broadcaster_8_M00_AXIS_TREADY = M_DONE_AXIS_tready[0];
  assign buffer_size_0_1 = buffer_size_0[2:0];
  assign clk_100MHz_1 = clk_100MHz;
  assign high_address_0_1 = high_address_0[7:0];
  assign mm2s_cmd_broadcaster_M01_AXIS_TREADY = MM2S_CMD_tready[0];
  assign mm2s_err = axi_datamover_0_mm2s_err;
  assign mm2s_read_done_flag = axi_datamover_0_mm2s_rd_xfer_cmplt;
  assign mm2s_read_flag = axi_datamover_0_mm2s_addr_req_posted;
  assign reset_rtl_0_1 = reset_rtl_0;
  assign s2mm_cmd_broadcaster_M01_AXIS_TREADY = S2MM_CMD_tready[0];
  assign s2mm_err = axi_datamover_0_s2mm_err;
  assign s2mm_write_done_flag = axi_datamover_0_s2mm_wr_xfer_cmplt;
  assign s2mm_write_flag = axi_datamover_0_s2mm_addr_req_posted;
  frame_memory_buffer_axi_datamover_0_0 axi_datamover_0
       (.m_axi_mm2s_aclk(clk_100MHz_1),
        .m_axi_mm2s_araddr(axi_datamover_0_M_AXI_ARADDR),
        .m_axi_mm2s_arburst(axi_datamover_0_M_AXI_ARBURST),
        .m_axi_mm2s_arcache(axi_datamover_0_M_AXI_ARCACHE),
        .m_axi_mm2s_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axi_mm2s_arid(axi_datamover_0_M_AXI_ARID),
        .m_axi_mm2s_arlen(axi_datamover_0_M_AXI_ARLEN),
        .m_axi_mm2s_arprot(axi_datamover_0_M_AXI_ARPROT),
        .m_axi_mm2s_arready(axi_datamover_0_M_AXI_ARREADY),
        .m_axi_mm2s_arsize(axi_datamover_0_M_AXI_ARSIZE),
        .m_axi_mm2s_aruser(axi_datamover_0_M_AXI_ARUSER),
        .m_axi_mm2s_arvalid(axi_datamover_0_M_AXI_ARVALID),
        .m_axi_mm2s_rdata(axi_datamover_0_M_AXI_RDATA),
        .m_axi_mm2s_rlast(axi_datamover_0_M_AXI_RLAST),
        .m_axi_mm2s_rready(axi_datamover_0_M_AXI_RREADY),
        .m_axi_mm2s_rresp(axi_datamover_0_M_AXI_RRESP),
        .m_axi_mm2s_rvalid(axi_datamover_0_M_AXI_RVALID),
        .m_axi_s2mm_aclk(clk_100MHz_1),
        .m_axi_s2mm_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axi_s2mm_awaddr(axi_datamover_0_M_AXI_AWADDR),
        .m_axi_s2mm_awburst(axi_datamover_0_M_AXI_AWBURST),
        .m_axi_s2mm_awcache(axi_datamover_0_M_AXI_AWCACHE),
        .m_axi_s2mm_awid(axi_datamover_0_M_AXI_AWID),
        .m_axi_s2mm_awlen(axi_datamover_0_M_AXI_AWLEN),
        .m_axi_s2mm_awprot(axi_datamover_0_M_AXI_AWPROT),
        .m_axi_s2mm_awready(axi_datamover_0_M_AXI_AWREADY),
        .m_axi_s2mm_awsize(axi_datamover_0_M_AXI_AWSIZE),
        .m_axi_s2mm_awuser(axi_datamover_0_M_AXI_AWUSER),
        .m_axi_s2mm_awvalid(axi_datamover_0_M_AXI_AWVALID),
        .m_axi_s2mm_bready(axi_datamover_0_M_AXI_BREADY),
        .m_axi_s2mm_bresp(axi_datamover_0_M_AXI_BRESP),
        .m_axi_s2mm_bvalid(axi_datamover_0_M_AXI_BVALID),
        .m_axi_s2mm_wdata(axi_datamover_0_M_AXI_WDATA),
        .m_axi_s2mm_wlast(axi_datamover_0_M_AXI_WLAST),
        .m_axi_s2mm_wready(axi_datamover_0_M_AXI_WREADY),
        .m_axi_s2mm_wstrb(axi_datamover_0_M_AXI_WSTRB),
        .m_axi_s2mm_wvalid(axi_datamover_0_M_AXI_WVALID),
        .m_axis_mm2s_cmdsts_aclk(clk_100MHz_1),
        .m_axis_mm2s_cmdsts_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_mm2s_sts_tdata(axi_datamover_0_M_AXIS_MM2S_STS_TDATA),
        .m_axis_mm2s_sts_tready(axi_datamover_0_M_AXIS_MM2S_STS_TREADY),
        .m_axis_mm2s_sts_tvalid(axi_datamover_0_M_AXIS_MM2S_STS_TVALID),
        .m_axis_mm2s_tdata(axi_datamover_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_datamover_0_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_datamover_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_datamover_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_datamover_0_M_AXIS_MM2S_TVALID),
        .m_axis_s2mm_cmdsts_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_s2mm_cmdsts_awclk(clk_100MHz_1),
        .m_axis_s2mm_sts_tdata(axi_datamover_0_M_AXIS_S2MM_STS_TDATA),
        .m_axis_s2mm_sts_tready(axi_datamover_0_M_AXIS_S2MM_STS_TREADY),
        .m_axis_s2mm_sts_tvalid(axi_datamover_0_M_AXIS_S2MM_STS_TVALID),
        .mm2s_addr_req_posted(axi_datamover_0_mm2s_addr_req_posted),
        .mm2s_allow_addr_req(const_VCC_dout),
        .mm2s_dbg_sel(const_GND4_dout),
        .mm2s_err(axi_datamover_0_mm2s_err),
        .mm2s_halt(const_GND_dout),
        .mm2s_rd_xfer_cmplt(axi_datamover_0_mm2s_rd_xfer_cmplt),
        .s2mm_addr_req_posted(axi_datamover_0_s2mm_addr_req_posted),
        .s2mm_allow_addr_req(const_VCC_dout),
        .s2mm_dbg_sel(const_GND4_dout),
        .s2mm_err(axi_datamover_0_s2mm_err),
        .s2mm_halt(const_GND_dout),
        .s2mm_wr_xfer_cmplt(axi_datamover_0_s2mm_wr_xfer_cmplt),
        .s_axis_mm2s_cmd_tdata(mm2s_cmd_slice_M_AXIS_TDATA),
        .s_axis_mm2s_cmd_tready(mm2s_cmd_slice_M_AXIS_TREADY),
        .s_axis_mm2s_cmd_tvalid(mm2s_cmd_slice_M_AXIS_TVALID),
        .s_axis_s2mm_cmd_tdata(axis_register_slice_0_M_AXIS1_TDATA),
        .s_axis_s2mm_cmd_tready(axis_register_slice_0_M_AXIS1_TREADY),
        .s_axis_s2mm_cmd_tvalid(axis_register_slice_0_M_AXIS1_TVALID),
        .s_axis_s2mm_tdata(axis_broadcaster_1_M01_AXIS_TDATA),
        .s_axis_s2mm_tkeep(axis_broadcaster_1_M01_AXIS_TKEEP),
        .s_axis_s2mm_tlast(axis_broadcaster_1_M01_AXIS_TLAST),
        .s_axis_s2mm_tready(axis_broadcaster_1_M01_AXIS_TREADY),
        .s_axis_s2mm_tvalid(axis_broadcaster_1_M01_AXIS_TVALID));
  frame_memory_buffer_axis_broadcaster_1_3 axis_broadcaster_1
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_1_M01_AXIS_TDATA,axis_broadcaster_1_M00_AXIS1_TDATA}),
        .m_axis_tkeep({axis_broadcaster_1_M01_AXIS_TKEEP,NLW_axis_broadcaster_1_m_axis_tkeep_UNCONNECTED[63:0]}),
        .m_axis_tlast({axis_broadcaster_1_M01_AXIS_TLAST,axis_broadcaster_1_M00_AXIS1_TLAST}),
        .m_axis_tready({axis_broadcaster_1_M01_AXIS_TREADY,axis_broadcaster_1_M00_AXIS1_TREADY}),
        .m_axis_tuser(axis_broadcaster_1_M00_AXIS1_TUSER),
        .m_axis_tvalid({axis_broadcaster_1_M01_AXIS_TVALID,axis_broadcaster_1_M00_AXIS1_TVALID}),
        .s_axis_tdata(S_INSTREAM_AXIS_1_TDATA),
        .s_axis_tkeep(S_INSTREAM_AXIS_1_TKEEP),
        .s_axis_tlast(S_INSTREAM_AXIS_1_TLAST),
        .s_axis_tready(S_INSTREAM_AXIS_1_TREADY),
        .s_axis_tuser(S_INSTREAM_AXIS_1_TUSER),
        .s_axis_tvalid(S_INSTREAM_AXIS_1_TVALID));
  frame_memory_buffer_axis_broadcaster_4_1 complete_address_breakdown
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_5_M05_AXIS_TDATA,axis_broadcaster_5_M04_AXIS_TDATA,axis_broadcaster_5_M03_AXIS_TDATA,axis_broadcaster_5_M02_AXIS_TDATA,axis_broadcaster_5_M01_AXIS_TDATA,axis_broadcaster_5_M00_AXIS_TDATA}),
        .m_axis_tready({axis_broadcaster_5_M05_AXIS_TREADY,axis_broadcaster_5_M04_AXIS_TREADY,axis_broadcaster_5_M03_AXIS_TREADY,axis_broadcaster_5_M02_AXIS_TREADY,axis_broadcaster_5_M01_AXIS_TREADY,axis_broadcaster_5_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_broadcaster_5_M05_AXIS_TVALID,axis_broadcaster_5_M04_AXIS_TVALID,axis_broadcaster_5_M03_AXIS_TVALID,axis_broadcaster_5_M02_AXIS_TVALID,axis_broadcaster_5_M01_AXIS_TVALID,axis_broadcaster_5_M00_AXIS_TVALID}),
        .s_axis_tdata(complete_address_storage_slice_M_AXIS_TDATA),
        .s_axis_tready(complete_address_storage_slice_M_AXIS_TREADY),
        .s_axis_tvalid(complete_address_storage_slice_M_AXIS_TVALID));
  frame_memory_buffer_axis_broadcaster_2_2 complete_address_broadcast
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({complete_address_broadcast_M01_AXIS_TDATA,complete_address_broadcast_M00_AXIS_TDATA}),
        .m_axis_tready({complete_address_broadcast_M01_AXIS_TREADY,complete_address_broadcast_M00_AXIS_TREADY}),
        .m_axis_tvalid({complete_address_broadcast_M01_AXIS_TVALID,complete_address_broadcast_M00_AXIS_TVALID}),
        .s_axis_tdata(mm2s_addrlength_combiner_M_AXIS_TDATA),
        .s_axis_tready(mm2s_addrlength_combiner_M_AXIS_TREADY),
        .s_axis_tvalid(mm2s_addrlength_combiner_M_AXIS_TVALID));
  frame_memory_buffer_axis_combiner_0_8 complete_address_combiner
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(complete_address_combiner_M_AXIS_TDATA),
        .m_axis_tready(complete_address_combiner_M_AXIS_TREADY),
        .m_axis_tvalid(complete_address_combiner_M_AXIS_TVALID),
        .s_axis_tdata({complete_addrlength_err_split_M04_AXIS_TDATA,complete_addrlength_err_split_M03_AXIS_TDATA}),
        .s_axis_tready({complete_addrlength_err_split_M04_AXIS_TREADY,complete_addrlength_err_split_M03_AXIS_TREADY}),
        .s_axis_tvalid({complete_addrlength_err_split_M04_AXIS_TVALID,complete_addrlength_err_split_M03_AXIS_TVALID}));
  frame_memory_buffer_axis_register_slice_0_1 complete_address_slice
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .m_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata(complete_address_combiner_M_AXIS_TDATA),
        .s_axis_tready(complete_address_combiner_M_AXIS_TREADY),
        .s_axis_tvalid(complete_address_combiner_M_AXIS_TVALID));
  frame_memory_buffer_axis_register_slice_0_4 complete_address_storage_slice
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(complete_address_storage_slice_M_AXIS_TDATA),
        .m_axis_tready(complete_address_storage_slice_M_AXIS_TREADY),
        .m_axis_tvalid(complete_address_storage_slice_M_AXIS_TVALID),
        .s_axis_tdata(complete_address_broadcast_M01_AXIS_TDATA),
        .s_axis_tready(complete_address_broadcast_M01_AXIS_TREADY),
        .s_axis_tvalid(complete_address_broadcast_M01_AXIS_TVALID));
  frame_memory_buffer_axis_broadcaster_1_2 complete_addrlength_err_split
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_2_M05_AXIS_TDATA,complete_addrlength_err_split_M04_AXIS_TDATA,complete_addrlength_err_split_M03_AXIS_TDATA,complete_addrlength_err_split_M02_AXIS_TDATA,complete_addrlength_err_split_M01_AXIS_TDATA,complete_addrlength_err_split_M00_AXIS_TDATA}),
        .m_axis_tready({axis_broadcaster_2_M05_AXIS_TREADY,complete_addrlength_err_split_M04_AXIS_TREADY,complete_addrlength_err_split_M03_AXIS_TREADY,complete_addrlength_err_split_M02_AXIS_TREADY,complete_addrlength_err_split_M01_AXIS_TREADY,complete_addrlength_err_split_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_broadcaster_2_M05_AXIS_TVALID,complete_addrlength_err_split_M04_AXIS_TVALID,complete_addrlength_err_split_M03_AXIS_TVALID,complete_addrlength_err_split_M02_AXIS_TVALID,complete_addrlength_err_split_M01_AXIS_TVALID,complete_addrlength_err_split_M00_AXIS_TVALID}),
        .s_axis_tdata(axis_data_fifo_1_M_AXIS1_TDATA),
        .s_axis_tready(axis_data_fifo_1_M_AXIS1_TREADY),
        .s_axis_tvalid(axis_data_fifo_1_M_AXIS1_TVALID));
  frame_memory_buffer_axis_combiner_0_10 complete_addrlengtherr_builder
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(axis_combiner_0_M_AXIS1_TDATA),
        .m_axis_tready(axis_combiner_0_M_AXIS1_TREADY),
        .m_axis_tvalid(axis_combiner_0_M_AXIS1_TVALID),
        .s_axis_tdata({mm2s_err_fifo_M_AXIS_TDATA,axis_broadcaster_5_M05_AXIS_TDATA,axis_broadcaster_5_M04_AXIS_TDATA,axis_broadcaster_5_M03_AXIS_TDATA,axis_broadcaster_5_M02_AXIS_TDATA,axis_broadcaster_5_M01_AXIS_TDATA,axis_broadcaster_5_M00_AXIS_TDATA}),
        .s_axis_tready({mm2s_err_fifo_M_AXIS_TREADY,axis_broadcaster_5_M05_AXIS_TREADY,axis_broadcaster_5_M04_AXIS_TREADY,axis_broadcaster_5_M03_AXIS_TREADY,axis_broadcaster_5_M02_AXIS_TREADY,axis_broadcaster_5_M01_AXIS_TREADY,axis_broadcaster_5_M00_AXIS_TREADY}),
        .s_axis_tvalid({mm2s_err_fifo_M_AXIS_TVALID,axis_broadcaster_5_M05_AXIS_TVALID,axis_broadcaster_5_M04_AXIS_TVALID,axis_broadcaster_5_M03_AXIS_TVALID,axis_broadcaster_5_M02_AXIS_TVALID,axis_broadcaster_5_M01_AXIS_TVALID,axis_broadcaster_5_M00_AXIS_TVALID}));
  frame_memory_buffer_axis_broadcaster_4_0 complete_addrlengtherr_duplicator
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_4_M01_AXIS_TDATA,axis_broadcaster_4_M00_AXIS_TDATA}),
        .m_axis_tready({axis_broadcaster_4_M01_AXIS_TREADY,axis_broadcaster_4_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_broadcaster_4_M01_AXIS_TVALID,axis_broadcaster_4_M00_AXIS_TVALID}),
        .s_axis_tdata(axis_combiner_0_M_AXIS1_TDATA),
        .s_axis_tready(axis_combiner_0_M_AXIS1_TREADY),
        .s_axis_tvalid(axis_combiner_0_M_AXIS1_TVALID));
  frame_memory_buffer_axis_data_fifo_0_2 complete_data_fifo
       (.m_axis_tdata(axis_data_fifo_1_M_AXIS1_TDATA),
        .m_axis_tready(axis_data_fifo_1_M_AXIS1_TREADY),
        .m_axis_tvalid(axis_data_fifo_1_M_AXIS1_TVALID),
        .s_axis_aclk(clk_100MHz_1),
        .s_axis_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .s_axis_tdata(complete_prefifo_M_AXIS_TDATA),
        .s_axis_tready(complete_prefifo_M_AXIS_TREADY),
        .s_axis_tvalid(complete_prefifo_M_AXIS_TVALID));
  frame_memory_buffer_axis_register_slice_0_5 complete_prefifo_slice
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(complete_prefifo_M_AXIS_TDATA),
        .m_axis_tready(complete_prefifo_M_AXIS_TREADY),
        .m_axis_tvalid(complete_prefifo_M_AXIS_TVALID),
        .s_axis_tdata(s2mm_complete_combiner_M_AXIS_TDATA),
        .s_axis_tready(s2mm_complete_combiner_M_AXIS_TREADY),
        .s_axis_tvalid(s2mm_complete_combiner_M_AXIS_TVALID));
  frame_memory_buffer_xlconstant_0_1 const_GND
       (.dout(const_GND_dout));
  frame_memory_buffer_xlconstant_0_2 const_GND4
       (.dout(const_GND4_dout));
  frame_memory_buffer_xlconstant_0_0 const_VCC
       (.dout(const_VCC_dout));
  frame_memory_buffer_axis_subset_converter_1_0 done_address_pickoff
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(axis_subset_converter_1_M_AXIS_TDATA),
        .m_axis_tready(axis_subset_converter_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_subset_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(axis_broadcaster_8_M01_AXIS_TDATA),
        .s_axis_tready(axis_broadcaster_8_M01_AXIS_TREADY),
        .s_axis_tvalid(axis_broadcaster_8_M01_AXIS_TVALID));
  frame_memory_buffer_axis_data_fifo_1_0 done_addrlengtherr_fifo
       (.m_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .m_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID),
        .s_axis_aclk(clk_100MHz_1),
        .s_axis_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .s_axis_tdata(axis_broadcaster_4_M01_AXIS_TDATA),
        .s_axis_tready(axis_broadcaster_4_M01_AXIS_TREADY),
        .s_axis_tvalid(axis_broadcaster_4_M01_AXIS_TVALID));
  frame_memory_buffer_axis_broadcaster_7_0 done_addrlengtherr_split
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_7_M06_AXIS_TDATA,axis_broadcaster_7_M05_AXIS_TDATA,axis_broadcaster_7_M04_AXIS_TDATA,axis_broadcaster_7_M03_AXIS_TDATA,axis_broadcaster_7_M02_AXIS_TDATA,axis_broadcaster_7_M01_AXIS_TDATA,axis_broadcaster_7_M00_AXIS_TDATA}),
        .m_axis_tready({axis_broadcaster_7_M06_AXIS_TREADY,axis_broadcaster_7_M05_AXIS_TREADY,axis_broadcaster_7_M04_AXIS_TREADY,axis_broadcaster_7_M03_AXIS_TREADY,axis_broadcaster_7_M02_AXIS_TREADY,axis_broadcaster_7_M01_AXIS_TREADY,axis_broadcaster_7_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_broadcaster_7_M06_AXIS_TVALID,axis_broadcaster_7_M05_AXIS_TVALID,axis_broadcaster_7_M04_AXIS_TVALID,axis_broadcaster_7_M03_AXIS_TVALID,axis_broadcaster_7_M02_AXIS_TVALID,axis_broadcaster_7_M01_AXIS_TVALID,axis_broadcaster_7_M00_AXIS_TVALID}),
        .s_axis_tdata(axis_data_fifo_1_M_AXIS_TDATA),
        .s_axis_tready(axis_data_fifo_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_data_fifo_1_M_AXIS_TVALID));
  frame_memory_buffer_axis_combiner_1_0 done_addrlengtherrstat_combiner
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(done_addrlengtherrstat_combiner_M_AXIS_TDATA),
        .m_axis_tready(done_addrlengtherrstat_combiner_M_AXIS_TREADY),
        .m_axis_tvalid(done_addrlengtherrstat_combiner_M_AXIS_TVALID),
        .s_axis_tdata({axi_datamover_0_M_AXIS_MM2S_STS_TDATA,axis_broadcaster_7_M06_AXIS_TDATA,axis_broadcaster_7_M05_AXIS_TDATA,axis_broadcaster_7_M04_AXIS_TDATA,axis_broadcaster_7_M03_AXIS_TDATA,axis_broadcaster_7_M02_AXIS_TDATA,axis_broadcaster_7_M01_AXIS_TDATA,axis_broadcaster_7_M00_AXIS_TDATA}),
        .s_axis_tready({axi_datamover_0_M_AXIS_MM2S_STS_TREADY,axis_broadcaster_7_M06_AXIS_TREADY,axis_broadcaster_7_M05_AXIS_TREADY,axis_broadcaster_7_M04_AXIS_TREADY,axis_broadcaster_7_M03_AXIS_TREADY,axis_broadcaster_7_M02_AXIS_TREADY,axis_broadcaster_7_M01_AXIS_TREADY,axis_broadcaster_7_M00_AXIS_TREADY}),
        .s_axis_tvalid({axi_datamover_0_M_AXIS_MM2S_STS_TVALID,axis_broadcaster_7_M06_AXIS_TVALID,axis_broadcaster_7_M05_AXIS_TVALID,axis_broadcaster_7_M04_AXIS_TVALID,axis_broadcaster_7_M03_AXIS_TVALID,axis_broadcaster_7_M02_AXIS_TVALID,axis_broadcaster_7_M01_AXIS_TVALID,axis_broadcaster_7_M00_AXIS_TVALID}));
  frame_memory_buffer_axis_broadcaster_8_0 done_broadcaster
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_8_M01_AXIS_TDATA,axis_broadcaster_8_M00_AXIS_TDATA}),
        .m_axis_tready({axis_broadcaster_8_M01_AXIS_TREADY,axis_broadcaster_8_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_broadcaster_8_M01_AXIS_TVALID,axis_broadcaster_8_M00_AXIS_TVALID}),
        .s_axis_tdata(done_slice_M_AXIS_TDATA),
        .s_axis_tready(done_slice_M_AXIS_TREADY),
        .s_axis_tvalid(done_slice_M_AXIS_TVALID));
  frame_memory_buffer_axis_register_slice_0_0 done_slice
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(done_slice_M_AXIS_TDATA),
        .m_axis_tready(done_slice_M_AXIS_TREADY),
        .m_axis_tvalid(done_slice_M_AXIS_TVALID),
        .s_axis_tdata(done_addrlengtherrstat_combiner_M_AXIS_TDATA),
        .s_axis_tready(done_addrlengtherrstat_combiner_M_AXIS_TREADY),
        .s_axis_tvalid(done_addrlengtherrstat_combiner_M_AXIS_TVALID));
  frame_memory_buffer_complete_data_fifo_0 error_track_fifo
       (.m_axis_tdata(error_track_fifo_M_AXIS_TDATA),
        .m_axis_tready(error_track_fifo_M_AXIS_TREADY),
        .m_axis_tvalid(error_track_fifo_M_AXIS_TVALID),
        .s_axis_aclk(clk_100MHz_1),
        .s_axis_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .s_axis_tdata(stream_error_tracker_0_m_axis_TDATA),
        .s_axis_tready(stream_error_tracker_0_m_axis_TREADY),
        .s_axis_tvalid(stream_error_tracker_0_m_axis_TVALID));
  frame_memory_buffer_source_address_build_0_1 mm2s_address_builder
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .buffer_size(buffer_size_0_1),
        .high_address(high_address_0_1),
        .m_axis_tdata(mm2s_address_builder_m_axis_TDATA),
        .m_axis_tready(mm2s_address_builder_m_axis_TREADY),
        .m_axis_tvalid(mm2s_address_builder_m_axis_TVALID),
        .s_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .s_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .s_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID));
  frame_memory_buffer_axis_broadcaster_2_1 mm2s_address_prelength_split
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({mm2s_address_prelength_split_M02_AXIS_TDATA,mm2s_address_prelength_split_M01_AXIS_TDATA,mm2s_address_prelength_split_M00_AXIS_TDATA}),
        .m_axis_tready({mm2s_address_prelength_split_M02_AXIS_TREADY,mm2s_address_prelength_split_M01_AXIS_TREADY,mm2s_address_prelength_split_M00_AXIS_TREADY}),
        .m_axis_tvalid({mm2s_address_prelength_split_M02_AXIS_TVALID,mm2s_address_prelength_split_M01_AXIS_TVALID,mm2s_address_prelength_split_M00_AXIS_TVALID}),
        .s_axis_tdata(mm2s_address_builder_m_axis_TDATA),
        .s_axis_tready(mm2s_address_builder_m_axis_TREADY),
        .s_axis_tvalid(mm2s_address_builder_m_axis_TVALID));
  frame_memory_buffer_axis_combiner_0_9 mm2s_addrlength_combiner
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(mm2s_addrlength_combiner_M_AXIS_TDATA),
        .m_axis_tready(mm2s_addrlength_combiner_M_AXIS_TREADY),
        .m_axis_tvalid(mm2s_addrlength_combiner_M_AXIS_TVALID),
        .s_axis_tdata({mm2s_address_prelength_split_M02_AXIS_TDATA,mm2s_address_prelength_split_M01_AXIS_TDATA,mm2s_address_prelength_split_M00_AXIS_TDATA,complete_addrlength_err_split_M02_AXIS_TDATA,complete_addrlength_err_split_M01_AXIS_TDATA,complete_addrlength_err_split_M00_AXIS_TDATA}),
        .s_axis_tready({mm2s_address_prelength_split_M02_AXIS_TREADY,mm2s_address_prelength_split_M01_AXIS_TREADY,mm2s_address_prelength_split_M00_AXIS_TREADY,complete_addrlength_err_split_M02_AXIS_TREADY,complete_addrlength_err_split_M01_AXIS_TREADY,complete_addrlength_err_split_M00_AXIS_TREADY}),
        .s_axis_tvalid({mm2s_address_prelength_split_M02_AXIS_TVALID,mm2s_address_prelength_split_M01_AXIS_TVALID,mm2s_address_prelength_split_M00_AXIS_TVALID,complete_addrlength_err_split_M02_AXIS_TVALID,complete_addrlength_err_split_M01_AXIS_TVALID,complete_addrlength_err_split_M00_AXIS_TVALID}));
  frame_memory_buffer_axis_broadcaster_0_4 mm2s_cmd_broadcaster
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({mm2s_cmd_broadcaster_M01_AXIS_TDATA,mm2s_cmd_broadcaster_M00_AXIS_TDATA}),
        .m_axis_tready({mm2s_cmd_broadcaster_M01_AXIS_TREADY,mm2s_cmd_broadcaster_M00_AXIS_TREADY}),
        .m_axis_tvalid({mm2s_cmd_broadcaster_M01_AXIS_TVALID,mm2s_cmd_broadcaster_M00_AXIS_TVALID}),
        .s_axis_tdata(mm2s_cmd_former_M_AXIS_TDATA),
        .s_axis_tready(mm2s_cmd_former_M_AXIS_TREADY),
        .s_axis_tvalid(mm2s_cmd_former_M_AXIS_TVALID));
  frame_memory_buffer_axis_subset_converter_0_3 mm2s_cmd_former
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(mm2s_cmd_former_M_AXIS_TDATA),
        .m_axis_tready(mm2s_cmd_former_M_AXIS_TREADY),
        .m_axis_tvalid(mm2s_cmd_former_M_AXIS_TVALID),
        .s_axis_tdata(complete_address_broadcast_M00_AXIS_TDATA),
        .s_axis_tready(complete_address_broadcast_M00_AXIS_TREADY),
        .s_axis_tvalid(complete_address_broadcast_M00_AXIS_TVALID));
  frame_memory_buffer_axis_register_slice_0_2 mm2s_cmd_slice
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(mm2s_cmd_slice_M_AXIS_TDATA),
        .m_axis_tready(mm2s_cmd_slice_M_AXIS_TREADY),
        .m_axis_tvalid(mm2s_cmd_slice_M_AXIS_TVALID),
        .s_axis_tdata(mm2s_cmd_broadcaster_M00_AXIS_TDATA),
        .s_axis_tready(mm2s_cmd_broadcaster_M00_AXIS_TREADY),
        .s_axis_tvalid(mm2s_cmd_broadcaster_M00_AXIS_TVALID));
  frame_memory_buffer_axis_data_fifo_2_0 mm2s_err_fifo
       (.m_axis_tdata(mm2s_err_fifo_M_AXIS_TDATA),
        .m_axis_tready(mm2s_err_fifo_M_AXIS_TREADY),
        .m_axis_tvalid(mm2s_err_fifo_M_AXIS_TVALID),
        .s_axis_aclk(clk_100MHz_1),
        .s_axis_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .s_axis_tdata(axis_broadcaster_2_M05_AXIS_TDATA),
        .s_axis_tready(axis_broadcaster_2_M05_AXIS_TREADY),
        .s_axis_tvalid(axis_broadcaster_2_M05_AXIS_TVALID));
  frame_memory_buffer_axis_broadcaster_0_2 next_address_broadcast
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_0_M01_AXIS_TDATA,axis_broadcaster_0_M00_AXIS_TDATA}),
        .m_axis_tready({axis_broadcaster_0_M01_AXIS_TREADY,axis_broadcaster_0_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_broadcaster_0_M01_AXIS_TVALID,axis_broadcaster_0_M00_AXIS_TVALID}),
        .s_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .s_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .s_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID));
  frame_memory_buffer_axis_data_fifo_0_3 next_address_fifo
       (.m_axis_tdata(axis_data_fifo_0_M_AXIS_TDATA),
        .m_axis_tready(axis_data_fifo_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_0_M_AXIS_TVALID),
        .s_axis_aclk(clk_100MHz_1),
        .s_axis_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .s_axis_tdata(axis_register_slice_0_M_AXIS2_TDATA),
        .s_axis_tready(axis_register_slice_0_M_AXIS2_TREADY),
        .s_axis_tvalid(axis_register_slice_0_M_AXIS2_TVALID));
  frame_memory_buffer_axis_register_slice_0_6 next_address_slice
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(axis_register_slice_0_M_AXIS2_TDATA),
        .m_axis_tready(axis_register_slice_0_M_AXIS2_TREADY),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS2_TVALID),
        .s_axis_tdata(next_address_switch_M00_AXIS_TDATA),
        .s_axis_tready(next_address_switch_M00_AXIS_TREADY),
        .s_axis_tvalid(next_address_switch_M00_AXIS_TVALID));
  frame_memory_buffer_axis_switch_0_0 next_address_switch
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(next_address_switch_M00_AXIS_TDATA),
        .m_axis_tready(next_address_switch_M00_AXIS_TREADY),
        .m_axis_tvalid(next_address_switch_M00_AXIS_TVALID),
        .s_axis_tdata({frame_address_reset_0_m_axis_TDATA,axis_subset_converter_1_M_AXIS_TDATA}),
        .s_axis_tready({frame_address_reset_0_m_axis_TREADY,axis_subset_converter_1_M_AXIS_TREADY}),
        .s_axis_tvalid({frame_address_reset_0_m_axis_TVALID,axis_subset_converter_1_M_AXIS_TVALID}),
        .s_req_suppress(frame_address_reset_0_m_req_suppress));
  frame_memory_buffer_frame_address_reset_0_0 reset_next_address
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(frame_address_reset_0_m_axis_TDATA),
        .m_axis_tready(frame_address_reset_0_m_axis_TREADY),
        .m_axis_tvalid(frame_address_reset_0_m_axis_TVALID),
        .m_req_suppress(frame_address_reset_0_m_req_suppress));
  frame_memory_buffer_rst_clk_100MHz_100M_1 rst_clk_100MHz_100M
       (.aux_reset_in(reset_rtl_0_1),
        .dcm_locked(const_VCC_dout),
        .ext_reset_in(reset_rtl_0_1),
        .mb_debug_sys_rst(const_GND_dout),
        .peripheral_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_100MHz_1));
  frame_memory_buffer_axis_broadcaster_3_1 s2mm_addr_splitter
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_3_M01_AXIS_TDATA,axis_broadcaster_3_M00_AXIS_TDATA}),
        .m_axis_tready({axis_broadcaster_3_M01_AXIS_TREADY,axis_broadcaster_3_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_broadcaster_3_M01_AXIS_TVALID,axis_broadcaster_3_M00_AXIS_TVALID}),
        .s_axis_tdata(s2mm_addr_storage_M_AXIS_TDATA),
        .s_axis_tready(s2mm_addr_storage_M_AXIS_TREADY),
        .s_axis_tvalid(s2mm_addr_storage_M_AXIS_TVALID));
  frame_memory_buffer_axis_data_fifo_0_1 s2mm_addr_storage
       (.m_axis_tdata(s2mm_addr_storage_M_AXIS_TDATA),
        .m_axis_tready(s2mm_addr_storage_M_AXIS_TREADY),
        .m_axis_tvalid(s2mm_addr_storage_M_AXIS_TVALID),
        .s_axis_aclk(clk_100MHz_1),
        .s_axis_aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .s_axis_tdata(axis_broadcaster_0_M01_AXIS_TDATA),
        .s_axis_tready(axis_broadcaster_0_M01_AXIS_TREADY),
        .s_axis_tvalid(axis_broadcaster_0_M01_AXIS_TVALID));
  frame_memory_buffer_axis_broadcaster_0_3 s2mm_cmd_broadcaster
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({s2mm_cmd_broadcaster_M01_AXIS_TDATA,s2mm_cmd_broadcaster_M00_AXIS_TDATA}),
        .m_axis_tready({s2mm_cmd_broadcaster_M01_AXIS_TREADY,s2mm_cmd_broadcaster_M00_AXIS_TREADY}),
        .m_axis_tvalid({s2mm_cmd_broadcaster_M01_AXIS_TVALID,s2mm_cmd_broadcaster_M00_AXIS_TVALID}),
        .s_axis_tdata(s2mm_cmd_former_M_AXIS_TDATA),
        .s_axis_tready(s2mm_cmd_former_M_AXIS_TREADY),
        .s_axis_tvalid(s2mm_cmd_former_M_AXIS_TVALID));
  frame_memory_buffer_axis_subset_converter_0_0 s2mm_cmd_former
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(s2mm_cmd_former_M_AXIS_TDATA),
        .m_axis_tready(s2mm_cmd_former_M_AXIS_TREADY),
        .m_axis_tvalid(s2mm_cmd_former_M_AXIS_TVALID),
        .s_axis_tdata(source_address_build_0_m_axis_TDATA),
        .s_axis_tready(source_address_build_0_m_axis_TREADY),
        .s_axis_tvalid(source_address_build_0_m_axis_TVALID));
  frame_memory_buffer_axis_register_slice_0_3 s2mm_cmd_slice
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(axis_register_slice_0_M_AXIS1_TDATA),
        .m_axis_tready(axis_register_slice_0_M_AXIS1_TREADY),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS1_TVALID),
        .s_axis_tdata(s2mm_cmd_broadcaster_M00_AXIS_TDATA),
        .s_axis_tready(s2mm_cmd_broadcaster_M00_AXIS_TREADY),
        .s_axis_tvalid(s2mm_cmd_broadcaster_M00_AXIS_TVALID));
  frame_memory_buffer_s2mm_address_builder_0 s2mm_complete_combiner
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(s2mm_complete_combiner_M_AXIS_TDATA),
        .m_axis_tready(s2mm_complete_combiner_M_AXIS_TREADY),
        .m_axis_tvalid(s2mm_complete_combiner_M_AXIS_TVALID),
        .s_axis_tdata({error_track_fifo_M_AXIS_TDATA,axis_broadcaster_3_M01_AXIS_TDATA,axis_broadcaster_3_M00_AXIS_TDATA,axis_broadcaster_1_M02_AXIS_TDATA,axis_broadcaster_1_M01_AXIS1_TDATA,axis_broadcaster_1_M00_AXIS_TDATA}),
        .s_axis_tready({error_track_fifo_M_AXIS_TREADY,axis_broadcaster_3_M01_AXIS_TREADY,axis_broadcaster_3_M00_AXIS_TREADY,axis_broadcaster_1_M02_AXIS_TREADY,axis_broadcaster_1_M01_AXIS1_TREADY,axis_broadcaster_1_M00_AXIS_TREADY}),
        .s_axis_tvalid({error_track_fifo_M_AXIS_TVALID,axis_broadcaster_3_M01_AXIS_TVALID,axis_broadcaster_3_M00_AXIS_TVALID,axis_broadcaster_1_M02_AXIS_TVALID,axis_broadcaster_1_M01_AXIS1_TVALID,axis_broadcaster_1_M00_AXIS_TVALID}));
  frame_memory_buffer_source_address_build_0_0 s2mm_source_address
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .buffer_size(buffer_size_0_1),
        .high_address(high_address_0_1),
        .m_axis_tdata(source_address_build_0_m_axis_TDATA),
        .m_axis_tready(source_address_build_0_m_axis_TREADY),
        .m_axis_tvalid(source_address_build_0_m_axis_TVALID),
        .s_axis_tdata(axis_broadcaster_0_M00_AXIS_TDATA),
        .s_axis_tready(axis_broadcaster_0_M00_AXIS_TREADY),
        .s_axis_tvalid(axis_broadcaster_0_M00_AXIS_TVALID));
  frame_memory_buffer_axis_broadcaster_1_1 s2mm_status_splitter
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_1_M02_AXIS_TDATA,axis_broadcaster_1_M01_AXIS1_TDATA,axis_broadcaster_1_M00_AXIS_TDATA}),
        .m_axis_tready({axis_broadcaster_1_M02_AXIS_TREADY,axis_broadcaster_1_M01_AXIS1_TREADY,axis_broadcaster_1_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_broadcaster_1_M02_AXIS_TVALID,axis_broadcaster_1_M01_AXIS1_TVALID,axis_broadcaster_1_M00_AXIS_TVALID}),
        .s_axis_tdata(axi_datamover_0_M_AXIS_S2MM_STS_TDATA),
        .s_axis_tready(axi_datamover_0_M_AXIS_S2MM_STS_TREADY),
        .s_axis_tvalid(axi_datamover_0_M_AXIS_S2MM_STS_TVALID));
  frame_memory_buffer_stream_error_tracker_0_0 stream_error_tracker_0
       (.aclk(clk_100MHz_1),
        .aresetn(rst_clk_100MHz_100M_peripheral_aresetn),
        .m_axis_tdata(stream_error_tracker_0_m_axis_TDATA),
        .m_axis_tready(stream_error_tracker_0_m_axis_TREADY),
        .m_axis_tvalid(stream_error_tracker_0_m_axis_TVALID),
        .s_axis_tdata(axis_broadcaster_1_M00_AXIS1_TDATA),
        .s_axis_tlast(axis_broadcaster_1_M00_AXIS1_TLAST),
        .s_axis_tready(axis_broadcaster_1_M00_AXIS1_TREADY),
        .s_axis_tuser(axis_broadcaster_1_M00_AXIS1_TUSER),
        .s_axis_tvalid(axis_broadcaster_1_M00_AXIS1_TVALID));
endmodule
