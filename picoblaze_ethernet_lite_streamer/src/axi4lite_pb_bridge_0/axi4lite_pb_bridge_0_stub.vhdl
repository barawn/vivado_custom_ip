-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Tue Apr 24 10:09:05 2018
-- Host        : PHY-NC188089 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               v:/osu_ip/picoblaze_ethernet_lite_streamer/src/axi4lite_pb_bridge_0/axi4lite_pb_bridge_0_stub.vhdl
-- Design      : axi4lite_pb_bridge_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity axi4lite_pb_bridge_0 is
  Port ( 
    port_id : in STD_LOGIC_VECTOR ( 7 downto 0 );
    write_strobe : in STD_LOGIC;
    read_strobe : in STD_LOGIC;
    out_port : in STD_LOGIC_VECTOR ( 7 downto 0 );
    in_port : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );

end axi4lite_pb_bridge_0;

architecture stub of axi4lite_pb_bridge_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "port_id[7:0],write_strobe,read_strobe,out_port[7:0],in_port[7:0],m_axi_aclk,m_axi_aresetn,m_axi_awaddr[12:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[31:0],m_axi_wvalid,m_axi_wready,m_axi_wstrb[3:0],m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_araddr[12:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rvalid,m_axi_rready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi4lite_pb_bridge,Vivado 2018.1";
begin
end;
