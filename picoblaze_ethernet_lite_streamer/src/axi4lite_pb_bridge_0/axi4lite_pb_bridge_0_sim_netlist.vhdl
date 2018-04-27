-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Tue Apr 24 10:09:05 2018
-- Host        : PHY-NC188089 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               v:/osu_ip/picoblaze_ethernet_lite_streamer/src/axi4lite_pb_bridge_0/axi4lite_pb_bridge_0_sim_netlist.vhdl
-- Design      : axi4lite_pb_bridge_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi4lite_pb_bridge_0_axi4lite_pb_bridge is
  port (
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    in_port : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_port : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_aclk : in STD_LOGIC;
    port_id_1_sp_1 : in STD_LOGIC;
    port_id : in STD_LOGIC_VECTOR ( 7 downto 0 );
    port_id_3_sp_1 : in STD_LOGIC;
    port_id_0_sp_1 : in STD_LOGIC;
    write_strobe : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi4lite_pb_bridge_0_axi4lite_pb_bridge : entity is "axi4lite_pb_bridge";
end axi4lite_pb_bridge_0_axi4lite_pb_bridge;

architecture STRUCTURE of axi4lite_pb_bridge_0_axi4lite_pb_bridge is
  signal \AL[12].axi_address[12]_i_2_n_0\ : STD_LOGIC;
  signal \DL[0].axi_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \DL[10].axi_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \DL[11].axi_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \DL[12].axi_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \DL[13].axi_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \DL[14].axi_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \DL[15].axi_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \DL[15].axi_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \DL[16].axi_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \DL[17].axi_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \DL[18].axi_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \DL[19].axi_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \DL[1].axi_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \DL[20].axi_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \DL[21].axi_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \DL[22].axi_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \DL[23].axi_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \DL[23].axi_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \DL[24].axi_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \DL[25].axi_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \DL[26].axi_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \DL[27].axi_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \DL[28].axi_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \DL[29].axi_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \DL[2].axi_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \DL[30].axi_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \DL[31].axi_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \DL[31].axi_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \DL[3].axi_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \DL[4].axi_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \DL[5].axi_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \DL[6].axi_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \DL[7].axi_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \DL[8].axi_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \DL[9].axi_data[9]_i_1_n_0\ : STD_LOGIC;
  signal axi_active : STD_LOGIC;
  signal axi_active_i_1_n_0 : STD_LOGIC;
  signal axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal axi_begin0 : STD_LOGIC;
  signal axi_begin_i_3_n_0 : STD_LOGIC;
  signal axi_bready_i_1_n_0 : STD_LOGIC;
  signal axi_data : STD_LOGIC;
  signal axi_done : STD_LOGIC;
  signal axi_done_i_1_n_0 : STD_LOGIC;
  signal axi_done_i_2_n_0 : STD_LOGIC;
  signal axi_done_i_3_n_0 : STD_LOGIC;
  signal \axi_resp[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_resp[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_resp[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_resp_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_resp_reg_n_0_[1]\ : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal axi_wnr_i_1_n_0 : STD_LOGIC;
  signal axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal \in_port[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \in_port[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \in_port[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \in_port[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \in_port[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \in_port[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \in_port[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \in_port[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \in_port[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \in_port[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \in_port[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \in_port[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \in_port[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \in_port[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \in_port[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \in_port[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \in_port[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \in_port[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \in_port[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \in_port[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \in_port[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \in_port[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \in_port[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \in_port[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \in_port[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \in_port[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \in_port[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \in_port[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \in_port[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \in_port[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \picoblaze_register_map[16]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal port_id_0_sn_1 : STD_LOGIC;
  signal port_id_1_sn_1 : STD_LOGIC;
  signal port_id_3_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_resp[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \in_port[0]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \in_port[1]_INST_0_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \in_port[2]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \in_port[3]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \in_port[4]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \in_port[6]_INST_0_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \in_port[6]_INST_0_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \in_port[6]_INST_0_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \in_port[7]_INST_0_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \in_port[7]_INST_0_i_5\ : label is "soft_lutpair5";
begin
  m_axi_arvalid <= \^m_axi_arvalid\;
  m_axi_awaddr(12 downto 0) <= \^m_axi_awaddr\(12 downto 0);
  m_axi_awvalid <= \^m_axi_awvalid\;
  m_axi_bready <= \^m_axi_bready\;
  m_axi_rready <= \^m_axi_rready\;
  m_axi_wdata(31 downto 0) <= \^m_axi_wdata\(31 downto 0);
  m_axi_wvalid <= \^m_axi_wvalid\;
  port_id_0_sn_1 <= port_id_0_sp_1;
  port_id_1_sn_1 <= port_id_1_sp_1;
  port_id_3_sn_1 <= port_id_3_sp_1;
\AL[0].axi_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_9_out,
      D => out_port(0),
      Q => \^m_axi_awaddr\(0),
      R => '0'
    );
\AL[10].axi_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_4_out,
      D => out_port(2),
      Q => \^m_axi_awaddr\(10),
      R => '0'
    );
\AL[11].axi_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_4_out,
      D => out_port(3),
      Q => \^m_axi_awaddr\(11),
      R => '0'
    );
\AL[12].axi_address[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \AL[12].axi_address[12]_i_2_n_0\,
      I1 => port_id(0),
      I2 => port_id(3),
      I3 => port_id(1),
      O => p_4_out
    );
\AL[12].axi_address[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => port_id(4),
      I1 => port_id(2),
      I2 => port_id(6),
      I3 => port_id(7),
      I4 => port_id(5),
      I5 => write_strobe,
      O => \AL[12].axi_address[12]_i_2_n_0\
    );
\AL[12].axi_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_4_out,
      D => out_port(4),
      Q => \^m_axi_awaddr\(12),
      R => '0'
    );
\AL[1].axi_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_9_out,
      D => out_port(1),
      Q => \^m_axi_awaddr\(1),
      R => '0'
    );
\AL[2].axi_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_9_out,
      D => out_port(2),
      Q => \^m_axi_awaddr\(2),
      R => '0'
    );
\AL[3].axi_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_9_out,
      D => out_port(3),
      Q => \^m_axi_awaddr\(3),
      R => '0'
    );
\AL[4].axi_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_9_out,
      D => out_port(4),
      Q => \^m_axi_awaddr\(4),
      R => '0'
    );
\AL[5].axi_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_9_out,
      D => out_port(5),
      Q => \^m_axi_awaddr\(5),
      R => '0'
    );
\AL[6].axi_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_9_out,
      D => out_port(6),
      Q => \^m_axi_awaddr\(6),
      R => '0'
    );
\AL[7].axi_address[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \AL[12].axi_address[12]_i_2_n_0\,
      I1 => port_id(0),
      I2 => port_id(3),
      I3 => port_id(1),
      O => p_9_out
    );
\AL[7].axi_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_9_out,
      D => out_port(7),
      Q => \^m_axi_awaddr\(7),
      R => '0'
    );
\AL[8].axi_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_4_out,
      D => out_port(0),
      Q => \^m_axi_awaddr\(8),
      R => '0'
    );
\AL[9].axi_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => p_4_out,
      D => out_port(1),
      Q => \^m_axi_awaddr\(9),
      R => '0'
    );
\DL[0].axi_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => out_port(0),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[0].axi_data[0]_i_1_n_0\
    );
\DL[0].axi_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => axi_data,
      D => \DL[0].axi_data[0]_i_1_n_0\,
      Q => \^m_axi_wdata\(0),
      R => '0'
    );
\DL[10].axi_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => out_port(2),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[10].axi_data[10]_i_1_n_0\
    );
\DL[10].axi_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[15].axi_data[15]_i_1_n_0\,
      D => \DL[10].axi_data[10]_i_1_n_0\,
      Q => \^m_axi_wdata\(10),
      R => '0'
    );
\DL[11].axi_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => out_port(3),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[11].axi_data[11]_i_1_n_0\
    );
\DL[11].axi_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[15].axi_data[15]_i_1_n_0\,
      D => \DL[11].axi_data[11]_i_1_n_0\,
      Q => \^m_axi_wdata\(11),
      R => '0'
    );
\DL[12].axi_data[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => out_port(4),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[12].axi_data[12]_i_1_n_0\
    );
\DL[12].axi_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[15].axi_data[15]_i_1_n_0\,
      D => \DL[12].axi_data[12]_i_1_n_0\,
      Q => \^m_axi_wdata\(12),
      R => '0'
    );
\DL[13].axi_data[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => out_port(5),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[13].axi_data[13]_i_1_n_0\
    );
\DL[13].axi_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[15].axi_data[15]_i_1_n_0\,
      D => \DL[13].axi_data[13]_i_1_n_0\,
      Q => \^m_axi_wdata\(13),
      R => '0'
    );
\DL[14].axi_data[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => out_port(6),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[14].axi_data[14]_i_1_n_0\
    );
\DL[14].axi_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[15].axi_data[15]_i_1_n_0\,
      D => \DL[14].axi_data[14]_i_1_n_0\,
      Q => \^m_axi_wdata\(14),
      R => '0'
    );
\DL[15].axi_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF020002000200"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(3),
      I2 => port_id(1),
      I3 => \AL[12].axi_address[12]_i_2_n_0\,
      I4 => \^m_axi_rready\,
      I5 => m_axi_rvalid,
      O => \DL[15].axi_data[15]_i_1_n_0\
    );
\DL[15].axi_data[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => out_port(7),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[15].axi_data[15]_i_2_n_0\
    );
\DL[15].axi_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[15].axi_data[15]_i_1_n_0\,
      D => \DL[15].axi_data[15]_i_2_n_0\,
      Q => \^m_axi_wdata\(15),
      R => '0'
    );
\DL[16].axi_data[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => out_port(0),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[16].axi_data[16]_i_1_n_0\
    );
\DL[16].axi_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[23].axi_data[23]_i_1_n_0\,
      D => \DL[16].axi_data[16]_i_1_n_0\,
      Q => \^m_axi_wdata\(16),
      R => '0'
    );
\DL[17].axi_data[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => out_port(1),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[17].axi_data[17]_i_1_n_0\
    );
\DL[17].axi_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[23].axi_data[23]_i_1_n_0\,
      D => \DL[17].axi_data[17]_i_1_n_0\,
      Q => \^m_axi_wdata\(17),
      R => '0'
    );
\DL[18].axi_data[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => out_port(2),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[18].axi_data[18]_i_1_n_0\
    );
\DL[18].axi_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[23].axi_data[23]_i_1_n_0\,
      D => \DL[18].axi_data[18]_i_1_n_0\,
      Q => \^m_axi_wdata\(18),
      R => '0'
    );
\DL[19].axi_data[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => out_port(3),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[19].axi_data[19]_i_1_n_0\
    );
\DL[19].axi_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[23].axi_data[23]_i_1_n_0\,
      D => \DL[19].axi_data[19]_i_1_n_0\,
      Q => \^m_axi_wdata\(19),
      R => '0'
    );
\DL[1].axi_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => out_port(1),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[1].axi_data[1]_i_1_n_0\
    );
\DL[1].axi_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => axi_data,
      D => \DL[1].axi_data[1]_i_1_n_0\,
      Q => \^m_axi_wdata\(1),
      R => '0'
    );
\DL[20].axi_data[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => out_port(4),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[20].axi_data[20]_i_1_n_0\
    );
\DL[20].axi_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[23].axi_data[23]_i_1_n_0\,
      D => \DL[20].axi_data[20]_i_1_n_0\,
      Q => \^m_axi_wdata\(20),
      R => '0'
    );
\DL[21].axi_data[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => out_port(5),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[21].axi_data[21]_i_1_n_0\
    );
\DL[21].axi_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[23].axi_data[23]_i_1_n_0\,
      D => \DL[21].axi_data[21]_i_1_n_0\,
      Q => \^m_axi_wdata\(21),
      R => '0'
    );
\DL[22].axi_data[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => out_port(6),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[22].axi_data[22]_i_1_n_0\
    );
\DL[22].axi_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[23].axi_data[23]_i_1_n_0\,
      D => \DL[22].axi_data[22]_i_1_n_0\,
      Q => \^m_axi_wdata\(22),
      R => '0'
    );
\DL[23].axi_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF040004000400"
    )
        port map (
      I0 => port_id(3),
      I1 => port_id(1),
      I2 => port_id(0),
      I3 => \AL[12].axi_address[12]_i_2_n_0\,
      I4 => \^m_axi_rready\,
      I5 => m_axi_rvalid,
      O => \DL[23].axi_data[23]_i_1_n_0\
    );
\DL[23].axi_data[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => out_port(7),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[23].axi_data[23]_i_2_n_0\
    );
\DL[23].axi_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[23].axi_data[23]_i_1_n_0\,
      D => \DL[23].axi_data[23]_i_2_n_0\,
      Q => \^m_axi_wdata\(23),
      R => '0'
    );
\DL[24].axi_data[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => out_port(0),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[24].axi_data[24]_i_1_n_0\
    );
\DL[24].axi_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[31].axi_data[31]_i_1_n_0\,
      D => \DL[24].axi_data[24]_i_1_n_0\,
      Q => \^m_axi_wdata\(24),
      R => '0'
    );
\DL[25].axi_data[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => out_port(1),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[25].axi_data[25]_i_1_n_0\
    );
\DL[25].axi_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[31].axi_data[31]_i_1_n_0\,
      D => \DL[25].axi_data[25]_i_1_n_0\,
      Q => \^m_axi_wdata\(25),
      R => '0'
    );
\DL[26].axi_data[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => out_port(2),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[26].axi_data[26]_i_1_n_0\
    );
\DL[26].axi_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[31].axi_data[31]_i_1_n_0\,
      D => \DL[26].axi_data[26]_i_1_n_0\,
      Q => \^m_axi_wdata\(26),
      R => '0'
    );
\DL[27].axi_data[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => out_port(3),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[27].axi_data[27]_i_1_n_0\
    );
\DL[27].axi_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[31].axi_data[31]_i_1_n_0\,
      D => \DL[27].axi_data[27]_i_1_n_0\,
      Q => \^m_axi_wdata\(27),
      R => '0'
    );
\DL[28].axi_data[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => out_port(4),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[28].axi_data[28]_i_1_n_0\
    );
\DL[28].axi_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[31].axi_data[31]_i_1_n_0\,
      D => \DL[28].axi_data[28]_i_1_n_0\,
      Q => \^m_axi_wdata\(28),
      R => '0'
    );
\DL[29].axi_data[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => out_port(5),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[29].axi_data[29]_i_1_n_0\
    );
\DL[29].axi_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[31].axi_data[31]_i_1_n_0\,
      D => \DL[29].axi_data[29]_i_1_n_0\,
      Q => \^m_axi_wdata\(29),
      R => '0'
    );
\DL[2].axi_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => out_port(2),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[2].axi_data[2]_i_1_n_0\
    );
\DL[2].axi_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => axi_data,
      D => \DL[2].axi_data[2]_i_1_n_0\,
      Q => \^m_axi_wdata\(2),
      R => '0'
    );
\DL[30].axi_data[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => out_port(6),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[30].axi_data[30]_i_1_n_0\
    );
\DL[30].axi_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[31].axi_data[31]_i_1_n_0\,
      D => \DL[30].axi_data[30]_i_1_n_0\,
      Q => \^m_axi_wdata\(30),
      R => '0'
    );
\DL[31].axi_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF400040004000"
    )
        port map (
      I0 => port_id(3),
      I1 => port_id(1),
      I2 => port_id(0),
      I3 => \AL[12].axi_address[12]_i_2_n_0\,
      I4 => \^m_axi_rready\,
      I5 => m_axi_rvalid,
      O => \DL[31].axi_data[31]_i_1_n_0\
    );
\DL[31].axi_data[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => out_port(7),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[31].axi_data[31]_i_2_n_0\
    );
\DL[31].axi_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[31].axi_data[31]_i_1_n_0\,
      D => \DL[31].axi_data[31]_i_2_n_0\,
      Q => \^m_axi_wdata\(31),
      R => '0'
    );
\DL[3].axi_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => out_port(3),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[3].axi_data[3]_i_1_n_0\
    );
\DL[3].axi_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => axi_data,
      D => \DL[3].axi_data[3]_i_1_n_0\,
      Q => \^m_axi_wdata\(3),
      R => '0'
    );
\DL[4].axi_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => out_port(4),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[4].axi_data[4]_i_1_n_0\
    );
\DL[4].axi_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => axi_data,
      D => \DL[4].axi_data[4]_i_1_n_0\,
      Q => \^m_axi_wdata\(4),
      R => '0'
    );
\DL[5].axi_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => out_port(5),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[5].axi_data[5]_i_1_n_0\
    );
\DL[5].axi_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => axi_data,
      D => \DL[5].axi_data[5]_i_1_n_0\,
      Q => \^m_axi_wdata\(5),
      R => '0'
    );
\DL[6].axi_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => out_port(6),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[6].axi_data[6]_i_1_n_0\
    );
\DL[6].axi_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => axi_data,
      D => \DL[6].axi_data[6]_i_1_n_0\,
      Q => \^m_axi_wdata\(6),
      R => '0'
    );
\DL[7].axi_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF010001000100"
    )
        port map (
      I0 => port_id(3),
      I1 => port_id(1),
      I2 => port_id(0),
      I3 => \AL[12].axi_address[12]_i_2_n_0\,
      I4 => \^m_axi_rready\,
      I5 => m_axi_rvalid,
      O => axi_data
    );
\DL[7].axi_data[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => out_port(7),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[7].axi_data[7]_i_2_n_0\
    );
\DL[7].axi_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => axi_data,
      D => \DL[7].axi_data[7]_i_2_n_0\,
      Q => \^m_axi_wdata\(7),
      R => '0'
    );
\DL[8].axi_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => out_port(0),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[8].axi_data[8]_i_1_n_0\
    );
\DL[8].axi_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[15].axi_data[15]_i_1_n_0\,
      D => \DL[8].axi_data[8]_i_1_n_0\,
      Q => \^m_axi_wdata\(8),
      R => '0'
    );
\DL[9].axi_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => out_port(1),
      I2 => m_axi_rvalid,
      I3 => \^m_axi_rready\,
      O => \DL[9].axi_data[9]_i_1_n_0\
    );
\DL[9].axi_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \DL[15].axi_data[15]_i_1_n_0\,
      D => \DL[9].axi_data[9]_i_1_n_0\,
      Q => \^m_axi_wdata\(9),
      R => '0'
    );
axi_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1010"
    )
        port map (
      I0 => axi_begin_i_3_n_0,
      I1 => axi_done_i_3_n_0,
      I2 => out_port(0),
      I3 => axi_done_i_2_n_0,
      I4 => axi_active,
      O => axi_active_i_1_n_0
    );
axi_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => axi_active_i_1_n_0,
      Q => axi_active,
      R => p_0_in
    );
axi_arvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => m_axi_aresetn,
      I1 => \picoblaze_register_map[16]_0\(1),
      I2 => \picoblaze_register_map[16]_0\(0),
      I3 => \^m_axi_arvalid\,
      I4 => m_axi_arready,
      O => axi_arvalid_i_1_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => axi_arvalid_i_1_n_0,
      Q => \^m_axi_arvalid\,
      R => '0'
    );
axi_awvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080AA80"
    )
        port map (
      I0 => m_axi_aresetn,
      I1 => \picoblaze_register_map[16]_0\(0),
      I2 => \picoblaze_register_map[16]_0\(1),
      I3 => \^m_axi_awvalid\,
      I4 => m_axi_awready,
      O => axi_awvalid_i_1_n_0
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => axi_awvalid_i_1_n_0,
      Q => \^m_axi_awvalid\,
      R => '0'
    );
axi_begin_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axi_aresetn,
      O => p_0_in
    );
axi_begin_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => out_port(0),
      I1 => write_strobe,
      I2 => port_id(5),
      I3 => port_id(7),
      I4 => port_id(6),
      I5 => axi_begin_i_3_n_0,
      O => axi_begin0
    );
axi_begin_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(1),
      I2 => port_id(3),
      I3 => port_id(4),
      I4 => port_id(2),
      O => axi_begin_i_3_n_0
    );
axi_begin_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => axi_begin0,
      Q => \picoblaze_register_map[16]_0\(0),
      R => p_0_in
    );
axi_bready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080AA80"
    )
        port map (
      I0 => m_axi_aresetn,
      I1 => \picoblaze_register_map[16]_0\(0),
      I2 => \picoblaze_register_map[16]_0\(1),
      I3 => \^m_axi_bready\,
      I4 => m_axi_bvalid,
      O => axi_bready_i_1_n_0
    );
axi_bready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => axi_bready_i_1_n_0,
      Q => \^m_axi_bready\,
      R => '0'
    );
axi_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF5CCC5"
    )
        port map (
      I0 => out_port(0),
      I1 => axi_done_i_2_n_0,
      I2 => axi_done_i_3_n_0,
      I3 => axi_begin_i_3_n_0,
      I4 => axi_done,
      O => axi_done_i_1_n_0
    );
axi_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^m_axi_bready\,
      I1 => m_axi_bvalid,
      I2 => \^m_axi_rready\,
      I3 => m_axi_rvalid,
      O => axi_done_i_2_n_0
    );
axi_done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => write_strobe,
      I1 => port_id(5),
      I2 => port_id(7),
      I3 => port_id(6),
      O => axi_done_i_3_n_0
    );
axi_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => axi_done_i_1_n_0,
      Q => axi_done,
      R => p_0_in
    );
\axi_resp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFCCCCA000CCCC"
    )
        port map (
      I0 => m_axi_bresp(0),
      I1 => m_axi_rresp(0),
      I2 => \^m_axi_bready\,
      I3 => m_axi_bvalid,
      I4 => \axi_resp[1]_i_2_n_0\,
      I5 => \axi_resp_reg_n_0_[0]\,
      O => \axi_resp[0]_i_1_n_0\
    );
\axi_resp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFCCCCA000CCCC"
    )
        port map (
      I0 => m_axi_bresp(1),
      I1 => m_axi_rresp(1),
      I2 => \^m_axi_bready\,
      I3 => m_axi_bvalid,
      I4 => \axi_resp[1]_i_2_n_0\,
      I5 => \axi_resp_reg_n_0_[1]\,
      O => \axi_resp[1]_i_1_n_0\
    );
\axi_resp[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => \^m_axi_rready\,
      O => \axi_resp[1]_i_2_n_0\
    );
\axi_resp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \axi_resp[0]_i_1_n_0\,
      Q => \axi_resp_reg_n_0_[0]\,
      R => '0'
    );
\axi_resp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \axi_resp[1]_i_1_n_0\,
      Q => \axi_resp_reg_n_0_[1]\,
      R => '0'
    );
axi_rready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020AA20"
    )
        port map (
      I0 => m_axi_aresetn,
      I1 => \picoblaze_register_map[16]_0\(1),
      I2 => \picoblaze_register_map[16]_0\(0),
      I3 => \^m_axi_rready\,
      I4 => m_axi_rvalid,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^m_axi_rready\,
      R => '0'
    );
axi_wnr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \picoblaze_register_map[16]_0\(1),
      I1 => axi_begin_i_3_n_0,
      I2 => axi_done_i_3_n_0,
      I3 => out_port(1),
      O => axi_wnr_i_1_n_0
    );
axi_wnr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => axi_wnr_i_1_n_0,
      Q => \picoblaze_register_map[16]_0\(1),
      R => p_0_in
    );
axi_wvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080AA80"
    )
        port map (
      I0 => m_axi_aresetn,
      I1 => \picoblaze_register_map[16]_0\(0),
      I2 => \picoblaze_register_map[16]_0\(1),
      I3 => \^m_axi_wvalid\,
      I4 => m_axi_wready,
      O => axi_wvalid_i_1_n_0
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => axi_wvalid_i_1_n_0,
      Q => \^m_axi_wvalid\,
      R => '0'
    );
\in_port[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \in_port[0]_INST_0_i_1_n_0\,
      I1 => \in_port[0]_INST_0_i_2_n_0\,
      I2 => \^m_axi_wdata\(8),
      I3 => port_id_1_sn_1,
      I4 => \in_port[0]_INST_0_i_3_n_0\,
      I5 => \in_port[0]_INST_0_i_4_n_0\,
      O => in_port(0)
    );
\in_port[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \picoblaze_register_map[16]_0\(0),
      I1 => port_id(2),
      I2 => port_id(4),
      I3 => port_id(3),
      I4 => port_id(1),
      I5 => port_id(0),
      O => \in_port[0]_INST_0_i_1_n_0\
    );
\in_port[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010100000000"
    )
        port map (
      I0 => port_id(3),
      I1 => port_id(1),
      I2 => port_id(0),
      I3 => port_id(2),
      I4 => port_id(4),
      I5 => \^m_axi_wdata\(0),
      O => \in_port[0]_INST_0_i_2_n_0\
    );
\in_port[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC0000F0AA00"
    )
        port map (
      I0 => \^m_axi_wdata\(16),
      I1 => \^m_axi_wdata\(24),
      I2 => \^m_axi_awaddr\(0),
      I3 => port_id(1),
      I4 => port_id(3),
      I5 => port_id(0),
      O => \in_port[0]_INST_0_i_3_n_0\
    );
\in_port[0]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(3),
      I2 => port_id(1),
      I3 => \^m_axi_awaddr\(8),
      O => \in_port[0]_INST_0_i_4_n_0\
    );
\in_port[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \in_port[1]_INST_0_i_1_n_0\,
      I1 => \in_port[1]_INST_0_i_2_n_0\,
      I2 => \^m_axi_wdata\(9),
      I3 => port_id_1_sn_1,
      I4 => \in_port[1]_INST_0_i_3_n_0\,
      I5 => \in_port[1]_INST_0_i_4_n_0\,
      O => in_port(1)
    );
\in_port[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \picoblaze_register_map[16]_0\(1),
      I1 => port_id(2),
      I2 => port_id(4),
      I3 => port_id(3),
      I4 => port_id(1),
      I5 => port_id(0),
      O => \in_port[1]_INST_0_i_1_n_0\
    );
\in_port[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010100000000"
    )
        port map (
      I0 => port_id(3),
      I1 => port_id(1),
      I2 => port_id(0),
      I3 => port_id(2),
      I4 => port_id(4),
      I5 => \^m_axi_wdata\(1),
      O => \in_port[1]_INST_0_i_2_n_0\
    );
\in_port[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC0000F0AA00"
    )
        port map (
      I0 => \^m_axi_wdata\(17),
      I1 => \^m_axi_wdata\(25),
      I2 => \^m_axi_awaddr\(1),
      I3 => port_id(1),
      I4 => port_id(3),
      I5 => port_id(0),
      O => \in_port[1]_INST_0_i_3_n_0\
    );
\in_port[1]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(3),
      I2 => port_id(1),
      I3 => \^m_axi_awaddr\(9),
      O => \in_port[1]_INST_0_i_4_n_0\
    );
\in_port[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \in_port[2]_INST_0_i_1_n_0\,
      I1 => \in_port[2]_INST_0_i_2_n_0\,
      I2 => \^m_axi_wdata\(10),
      I3 => port_id_1_sn_1,
      I4 => \in_port[2]_INST_0_i_3_n_0\,
      I5 => \in_port[2]_INST_0_i_4_n_0\,
      O => in_port(2)
    );
\in_port[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => axi_active,
      I1 => port_id(2),
      I2 => port_id(4),
      I3 => port_id(3),
      I4 => port_id(1),
      I5 => port_id(0),
      O => \in_port[2]_INST_0_i_1_n_0\
    );
\in_port[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010100000000"
    )
        port map (
      I0 => port_id(3),
      I1 => port_id(1),
      I2 => port_id(0),
      I3 => port_id(2),
      I4 => port_id(4),
      I5 => \^m_axi_wdata\(2),
      O => \in_port[2]_INST_0_i_2_n_0\
    );
\in_port[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC0000F0AA00"
    )
        port map (
      I0 => \^m_axi_wdata\(18),
      I1 => \^m_axi_wdata\(26),
      I2 => \^m_axi_awaddr\(2),
      I3 => port_id(1),
      I4 => port_id(3),
      I5 => port_id(0),
      O => \in_port[2]_INST_0_i_3_n_0\
    );
\in_port[2]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(3),
      I2 => port_id(1),
      I3 => \^m_axi_awaddr\(10),
      O => \in_port[2]_INST_0_i_4_n_0\
    );
\in_port[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \in_port[3]_INST_0_i_1_n_0\,
      I1 => \in_port[3]_INST_0_i_2_n_0\,
      I2 => \^m_axi_wdata\(11),
      I3 => port_id_1_sn_1,
      I4 => \in_port[3]_INST_0_i_3_n_0\,
      I5 => \in_port[3]_INST_0_i_4_n_0\,
      O => in_port(3)
    );
\in_port[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => axi_done,
      I1 => port_id(2),
      I2 => port_id(4),
      I3 => port_id(3),
      I4 => port_id(1),
      I5 => port_id(0),
      O => \in_port[3]_INST_0_i_1_n_0\
    );
\in_port[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010100000000"
    )
        port map (
      I0 => port_id(3),
      I1 => port_id(1),
      I2 => port_id(0),
      I3 => port_id(2),
      I4 => port_id(4),
      I5 => \^m_axi_wdata\(3),
      O => \in_port[3]_INST_0_i_2_n_0\
    );
\in_port[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC0000F0AA00"
    )
        port map (
      I0 => \^m_axi_wdata\(19),
      I1 => \^m_axi_wdata\(27),
      I2 => \^m_axi_awaddr\(3),
      I3 => port_id(1),
      I4 => port_id(3),
      I5 => port_id(0),
      O => \in_port[3]_INST_0_i_3_n_0\
    );
\in_port[3]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(3),
      I2 => port_id(1),
      I3 => \^m_axi_awaddr\(11),
      O => \in_port[3]_INST_0_i_4_n_0\
    );
\in_port[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \in_port[4]_INST_0_i_1_n_0\,
      I1 => \in_port[4]_INST_0_i_2_n_0\,
      I2 => \^m_axi_wdata\(12),
      I3 => port_id_1_sn_1,
      I4 => \in_port[4]_INST_0_i_3_n_0\,
      I5 => \in_port[4]_INST_0_i_4_n_0\,
      O => in_port(4)
    );
\in_port[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \axi_resp_reg_n_0_[0]\,
      I1 => port_id(2),
      I2 => port_id(4),
      I3 => port_id(3),
      I4 => port_id(1),
      I5 => port_id(0),
      O => \in_port[4]_INST_0_i_1_n_0\
    );
\in_port[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010100000000"
    )
        port map (
      I0 => port_id(3),
      I1 => port_id(1),
      I2 => port_id(0),
      I3 => port_id(2),
      I4 => port_id(4),
      I5 => \^m_axi_wdata\(4),
      O => \in_port[4]_INST_0_i_2_n_0\
    );
\in_port[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC0000F0AA00"
    )
        port map (
      I0 => \^m_axi_wdata\(20),
      I1 => \^m_axi_wdata\(28),
      I2 => \^m_axi_awaddr\(4),
      I3 => port_id(1),
      I4 => port_id(3),
      I5 => port_id(0),
      O => \in_port[4]_INST_0_i_3_n_0\
    );
\in_port[4]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(3),
      I2 => port_id(1),
      I3 => \^m_axi_awaddr\(12),
      O => \in_port[4]_INST_0_i_4_n_0\
    );
\in_port[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \in_port[5]_INST_0_i_1_n_0\,
      I1 => port_id_1_sn_1,
      I2 => \^m_axi_wdata\(13),
      I3 => \^m_axi_wdata\(5),
      I4 => port_id_3_sn_1,
      I5 => \in_port[5]_INST_0_i_4_n_0\,
      O => in_port(5)
    );
\in_port[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC0000F0AA00"
    )
        port map (
      I0 => \^m_axi_wdata\(21),
      I1 => \^m_axi_wdata\(29),
      I2 => \^m_axi_awaddr\(5),
      I3 => port_id(1),
      I4 => port_id(3),
      I5 => port_id(0),
      O => \in_port[5]_INST_0_i_1_n_0\
    );
\in_port[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \axi_resp_reg_n_0_[1]\,
      I1 => port_id(2),
      I2 => port_id(4),
      I3 => port_id(3),
      I4 => port_id(1),
      I5 => port_id(0),
      O => \in_port[5]_INST_0_i_4_n_0\
    );
\in_port[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \in_port[6]_INST_0_i_1_n_0\,
      I1 => \in_port[6]_INST_0_i_2_n_0\,
      I2 => \in_port[6]_INST_0_i_3_n_0\,
      I3 => port_id_0_sn_1,
      I4 => \^m_axi_wdata\(30),
      I5 => \in_port[6]_INST_0_i_4_n_0\,
      O => in_port(6)
    );
\in_port[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010100000000"
    )
        port map (
      I0 => port_id(3),
      I1 => port_id(1),
      I2 => port_id(0),
      I3 => port_id(2),
      I4 => port_id(4),
      I5 => \^m_axi_wdata\(6),
      O => \in_port[6]_INST_0_i_1_n_0\
    );
\in_port[6]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => port_id(1),
      I1 => port_id(3),
      I2 => port_id(0),
      I3 => \^m_axi_wdata\(14),
      O => \in_port[6]_INST_0_i_2_n_0\
    );
\in_port[6]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(1),
      I2 => port_id(3),
      I3 => \^m_axi_wdata\(22),
      O => \in_port[6]_INST_0_i_3_n_0\
    );
\in_port[6]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(3),
      I2 => port_id(1),
      I3 => \^m_axi_awaddr\(6),
      O => \in_port[6]_INST_0_i_4_n_0\
    );
\in_port[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \in_port[7]_INST_0_i_1_n_0\,
      I1 => \in_port[7]_INST_0_i_2_n_0\,
      I2 => \in_port[7]_INST_0_i_3_n_0\,
      I3 => port_id_0_sn_1,
      I4 => \^m_axi_wdata\(31),
      I5 => \in_port[7]_INST_0_i_5_n_0\,
      O => in_port(7)
    );
\in_port[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010100000000"
    )
        port map (
      I0 => port_id(3),
      I1 => port_id(1),
      I2 => port_id(0),
      I3 => port_id(2),
      I4 => port_id(4),
      I5 => \^m_axi_wdata\(7),
      O => \in_port[7]_INST_0_i_1_n_0\
    );
\in_port[7]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => port_id(1),
      I1 => port_id(3),
      I2 => port_id(0),
      I3 => \^m_axi_wdata\(15),
      O => \in_port[7]_INST_0_i_2_n_0\
    );
\in_port[7]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(1),
      I2 => port_id(3),
      I3 => \^m_axi_wdata\(23),
      O => \in_port[7]_INST_0_i_3_n_0\
    );
\in_port[7]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(3),
      I2 => port_id(1),
      I3 => \^m_axi_awaddr\(7),
      O => \in_port[7]_INST_0_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi4lite_pb_bridge_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi4lite_pb_bridge_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi4lite_pb_bridge_0 : entity is "axi4lite_pb_bridge_0,axi4lite_pb_bridge,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi4lite_pb_bridge_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi4lite_pb_bridge_0 : entity is "axi4lite_pb_bridge,Vivado 2018.1";
end axi4lite_pb_bridge_0;

architecture STRUCTURE of axi4lite_pb_bridge_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \in_port[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \in_port[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \in_port[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \in_port[5]_INST_0_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \in_port[5]_INST_0_i_3\ : label is "soft_lutpair6";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axi_aclk : signal is "xilinx.com:signal:clock:1.0 m_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axi_aclk : signal is "XIL_INTERFACENAME m_axi_aclk, ASSOCIATED_BUSIF m_axi, ASSOCIATED_RESET m_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of m_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 m_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of m_axi_aresetn : signal is "XIL_INTERFACENAME m_axi_aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME m_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi RVALID";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi ARADDR";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
begin
  m_axi_araddr(12 downto 0) <= \^m_axi_awaddr\(12 downto 0);
  m_axi_awaddr(12 downto 0) <= \^m_axi_awaddr\(12 downto 0);
  m_axi_wstrb(3) <= \<const1>\;
  m_axi_wstrb(2) <= \<const1>\;
  m_axi_wstrb(1) <= \<const1>\;
  m_axi_wstrb(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\in_port[5]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => port_id(0),
      I1 => port_id(3),
      I2 => port_id(1),
      O => \in_port[5]_INST_0_i_2_n_0\
    );
\in_port[5]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000D"
    )
        port map (
      I0 => port_id(4),
      I1 => port_id(2),
      I2 => port_id(0),
      I3 => port_id(1),
      I4 => port_id(3),
      O => \in_port[5]_INST_0_i_3_n_0\
    );
\in_port[7]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => port_id(3),
      I1 => port_id(1),
      I2 => port_id(0),
      O => \in_port[7]_INST_0_i_4_n_0\
    );
inst: entity work.axi4lite_pb_bridge_0_axi4lite_pb_bridge
     port map (
      in_port(7 downto 0) => in_port(7 downto 0),
      m_axi_aclk => m_axi_aclk,
      m_axi_aresetn => m_axi_aresetn,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(12 downto 0) => \^m_axi_awaddr\(12 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      out_port(7 downto 0) => out_port(7 downto 0),
      port_id(7 downto 0) => port_id(7 downto 0),
      port_id_0_sp_1 => \in_port[7]_INST_0_i_4_n_0\,
      port_id_1_sp_1 => \in_port[5]_INST_0_i_2_n_0\,
      port_id_3_sp_1 => \in_port[5]_INST_0_i_3_n_0\,
      write_strobe => write_strobe
    );
end STRUCTURE;
