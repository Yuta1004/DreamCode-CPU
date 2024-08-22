-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Aug 19 02:47:38 2024
-- Host        : plab-imac running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_cpu_monitor_0_0 -prefix
--               design_1_cpu_monitor_0_0_ design_1_cpu_monitor_0_0_sim_netlist.vhdl
-- Design      : design_1_cpu_monitor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cpu_monitor_0_0_cpu_monitor_controller_auto_generated is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    \axi_rdata_reg[0]_1\ : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    STAT : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    GP : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end design_1_cpu_monitor_0_0_cpu_monitor_controller_auto_generated;

architecture STRUCTURE of design_1_cpu_monitor_0_0_cpu_monitor_controller_auto_generated is
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \icache_slv_reg1_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \icache_slv_reg1_reg[1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \icache_slv_reg2_reg[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \icache_slv_reg2_reg[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_1\ : label is "soft_lutpair1";
begin
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \axi_rdata[0]_i_2_n_0\,
      O => D(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFCFFFFFDFFFF"
    )
        port map (
      I0 => \icache_slv_reg1_reg[1]\(0),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARADDR(1),
      I3 => S_AXI_ARADDR(3),
      I4 => S_AXI_ARADDR(2),
      I5 => \icache_slv_reg2_reg[1]\(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(10),
      I4 => \axi_rdata_reg[4]\,
      O => D(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(11),
      I4 => \axi_rdata_reg[4]\,
      O => D(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(12),
      I4 => \axi_rdata_reg[4]\,
      O => D(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(13),
      I4 => \axi_rdata_reg[4]\,
      O => D(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(14),
      I4 => \axi_rdata_reg[4]\,
      O => D(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(15),
      I4 => \axi_rdata_reg[4]\,
      O => D(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(16),
      I4 => \axi_rdata_reg[4]\,
      O => D(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(17),
      I4 => \axi_rdata_reg[4]\,
      O => D(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(18),
      I4 => \axi_rdata_reg[4]\,
      O => D(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(19),
      I4 => \axi_rdata_reg[4]\,
      O => D(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \axi_rdata[1]_i_2_n_0\,
      O => D(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFCFFFFFDFFFF"
    )
        port map (
      I0 => \icache_slv_reg1_reg[1]\(1),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARADDR(1),
      I3 => S_AXI_ARADDR(3),
      I4 => S_AXI_ARADDR(2),
      I5 => \icache_slv_reg2_reg[1]\(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(20),
      I4 => \axi_rdata_reg[4]\,
      O => D(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(21),
      I4 => \axi_rdata_reg[4]\,
      O => D(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(22),
      I4 => \axi_rdata_reg[4]\,
      O => D(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(23),
      I4 => \axi_rdata_reg[4]\,
      O => D(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(24),
      I4 => \axi_rdata_reg[4]\,
      O => D(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(25),
      I4 => \axi_rdata_reg[4]\,
      O => D(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(26),
      I4 => \axi_rdata_reg[4]\,
      O => D(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(27),
      I4 => \axi_rdata_reg[4]\,
      O => D(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(28),
      I4 => \axi_rdata_reg[4]\,
      O => D(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(29),
      I4 => \axi_rdata_reg[4]\,
      O => D(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \axi_rdata[2]_i_2_n_0\,
      O => D(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFCFFFFFDFFFF"
    )
        port map (
      I0 => \icache_slv_reg1_reg[1]\(2),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARADDR(1),
      I3 => S_AXI_ARADDR(3),
      I4 => S_AXI_ARADDR(2),
      I5 => \icache_slv_reg2_reg[1]\(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(30),
      I4 => \axi_rdata_reg[4]\,
      O => D(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(31),
      I4 => \axi_rdata_reg[4]\,
      O => D(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \axi_rdata[3]_i_2_n_0\,
      O => D(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFCFFFFFDFFFF"
    )
        port map (
      I0 => \icache_slv_reg1_reg[1]\(3),
      I1 => S_AXI_ARADDR(0),
      I2 => S_AXI_ARADDR(1),
      I3 => S_AXI_ARADDR(3),
      I4 => S_AXI_ARADDR(2),
      I5 => \icache_slv_reg2_reg[1]\(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(4),
      I4 => \axi_rdata_reg[4]\,
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(5),
      I4 => \axi_rdata_reg[4]\,
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(6),
      I4 => \axi_rdata_reg[4]\,
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(7),
      I4 => \axi_rdata_reg[4]\,
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(8),
      I4 => \axi_rdata_reg[4]\,
      O => D(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_rdata_reg[0]\,
      I1 => \axi_rdata_reg[0]_0\,
      I2 => \axi_rdata_reg[0]_1\,
      I3 => \icache_slv_reg1_reg[1]\(9),
      I4 => \axi_rdata_reg[4]\,
      O => D(9)
    );
\icache_slv_reg1_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(0),
      Q => \icache_slv_reg1_reg[0]\(0),
      R => '0'
    );
\icache_slv_reg1_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(10),
      Q => \icache_slv_reg1_reg[0]\(10),
      R => '0'
    );
\icache_slv_reg1_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(11),
      Q => \icache_slv_reg1_reg[0]\(11),
      R => '0'
    );
\icache_slv_reg1_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(12),
      Q => \icache_slv_reg1_reg[0]\(12),
      R => '0'
    );
\icache_slv_reg1_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(13),
      Q => \icache_slv_reg1_reg[0]\(13),
      R => '0'
    );
\icache_slv_reg1_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(14),
      Q => \icache_slv_reg1_reg[0]\(14),
      R => '0'
    );
\icache_slv_reg1_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(15),
      Q => \icache_slv_reg1_reg[0]\(15),
      R => '0'
    );
\icache_slv_reg1_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(16),
      Q => \icache_slv_reg1_reg[0]\(16),
      R => '0'
    );
\icache_slv_reg1_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(17),
      Q => \icache_slv_reg1_reg[0]\(17),
      R => '0'
    );
\icache_slv_reg1_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(18),
      Q => \icache_slv_reg1_reg[0]\(18),
      R => '0'
    );
\icache_slv_reg1_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(19),
      Q => \icache_slv_reg1_reg[0]\(19),
      R => '0'
    );
\icache_slv_reg1_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(1),
      Q => \icache_slv_reg1_reg[0]\(1),
      R => '0'
    );
\icache_slv_reg1_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(20),
      Q => \icache_slv_reg1_reg[0]\(20),
      R => '0'
    );
\icache_slv_reg1_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(21),
      Q => \icache_slv_reg1_reg[0]\(21),
      R => '0'
    );
\icache_slv_reg1_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(22),
      Q => \icache_slv_reg1_reg[0]\(22),
      R => '0'
    );
\icache_slv_reg1_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(23),
      Q => \icache_slv_reg1_reg[0]\(23),
      R => '0'
    );
\icache_slv_reg1_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(24),
      Q => \icache_slv_reg1_reg[0]\(24),
      R => '0'
    );
\icache_slv_reg1_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(25),
      Q => \icache_slv_reg1_reg[0]\(25),
      R => '0'
    );
\icache_slv_reg1_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(26),
      Q => \icache_slv_reg1_reg[0]\(26),
      R => '0'
    );
\icache_slv_reg1_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(27),
      Q => \icache_slv_reg1_reg[0]\(27),
      R => '0'
    );
\icache_slv_reg1_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(28),
      Q => \icache_slv_reg1_reg[0]\(28),
      R => '0'
    );
\icache_slv_reg1_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(29),
      Q => \icache_slv_reg1_reg[0]\(29),
      R => '0'
    );
\icache_slv_reg1_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(2),
      Q => \icache_slv_reg1_reg[0]\(2),
      R => '0'
    );
\icache_slv_reg1_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(30),
      Q => \icache_slv_reg1_reg[0]\(30),
      R => '0'
    );
\icache_slv_reg1_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(31),
      Q => \icache_slv_reg1_reg[0]\(31),
      R => '0'
    );
\icache_slv_reg1_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(3),
      Q => \icache_slv_reg1_reg[0]\(3),
      R => '0'
    );
\icache_slv_reg1_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(4),
      Q => \icache_slv_reg1_reg[0]\(4),
      R => '0'
    );
\icache_slv_reg1_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(5),
      Q => \icache_slv_reg1_reg[0]\(5),
      R => '0'
    );
\icache_slv_reg1_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(6),
      Q => \icache_slv_reg1_reg[0]\(6),
      R => '0'
    );
\icache_slv_reg1_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(7),
      Q => \icache_slv_reg1_reg[0]\(7),
      R => '0'
    );
\icache_slv_reg1_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(8),
      Q => \icache_slv_reg1_reg[0]\(8),
      R => '0'
    );
\icache_slv_reg1_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => GP(9),
      Q => \icache_slv_reg1_reg[0]\(9),
      R => '0'
    );
\icache_slv_reg1_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(0),
      Q => \icache_slv_reg1_reg[1]\(0),
      R => '0'
    );
\icache_slv_reg1_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(10),
      Q => \icache_slv_reg1_reg[1]\(10),
      R => '0'
    );
\icache_slv_reg1_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(11),
      Q => \icache_slv_reg1_reg[1]\(11),
      R => '0'
    );
\icache_slv_reg1_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(12),
      Q => \icache_slv_reg1_reg[1]\(12),
      R => '0'
    );
\icache_slv_reg1_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(13),
      Q => \icache_slv_reg1_reg[1]\(13),
      R => '0'
    );
\icache_slv_reg1_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(14),
      Q => \icache_slv_reg1_reg[1]\(14),
      R => '0'
    );
\icache_slv_reg1_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(15),
      Q => \icache_slv_reg1_reg[1]\(15),
      R => '0'
    );
\icache_slv_reg1_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(16),
      Q => \icache_slv_reg1_reg[1]\(16),
      R => '0'
    );
\icache_slv_reg1_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(17),
      Q => \icache_slv_reg1_reg[1]\(17),
      R => '0'
    );
\icache_slv_reg1_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(18),
      Q => \icache_slv_reg1_reg[1]\(18),
      R => '0'
    );
\icache_slv_reg1_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(19),
      Q => \icache_slv_reg1_reg[1]\(19),
      R => '0'
    );
\icache_slv_reg1_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(1),
      Q => \icache_slv_reg1_reg[1]\(1),
      R => '0'
    );
\icache_slv_reg1_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(20),
      Q => \icache_slv_reg1_reg[1]\(20),
      R => '0'
    );
\icache_slv_reg1_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(21),
      Q => \icache_slv_reg1_reg[1]\(21),
      R => '0'
    );
\icache_slv_reg1_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(22),
      Q => \icache_slv_reg1_reg[1]\(22),
      R => '0'
    );
\icache_slv_reg1_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(23),
      Q => \icache_slv_reg1_reg[1]\(23),
      R => '0'
    );
\icache_slv_reg1_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(24),
      Q => \icache_slv_reg1_reg[1]\(24),
      R => '0'
    );
\icache_slv_reg1_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(25),
      Q => \icache_slv_reg1_reg[1]\(25),
      R => '0'
    );
\icache_slv_reg1_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(26),
      Q => \icache_slv_reg1_reg[1]\(26),
      R => '0'
    );
\icache_slv_reg1_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(27),
      Q => \icache_slv_reg1_reg[1]\(27),
      R => '0'
    );
\icache_slv_reg1_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(28),
      Q => \icache_slv_reg1_reg[1]\(28),
      R => '0'
    );
\icache_slv_reg1_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(29),
      Q => \icache_slv_reg1_reg[1]\(29),
      R => '0'
    );
\icache_slv_reg1_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(2),
      Q => \icache_slv_reg1_reg[1]\(2),
      R => '0'
    );
\icache_slv_reg1_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(30),
      Q => \icache_slv_reg1_reg[1]\(30),
      R => '0'
    );
\icache_slv_reg1_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(31),
      Q => \icache_slv_reg1_reg[1]\(31),
      R => '0'
    );
\icache_slv_reg1_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(3),
      Q => \icache_slv_reg1_reg[1]\(3),
      R => '0'
    );
\icache_slv_reg1_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(4),
      Q => \icache_slv_reg1_reg[1]\(4),
      R => '0'
    );
\icache_slv_reg1_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(5),
      Q => \icache_slv_reg1_reg[1]\(5),
      R => '0'
    );
\icache_slv_reg1_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(6),
      Q => \icache_slv_reg1_reg[1]\(6),
      R => '0'
    );
\icache_slv_reg1_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(7),
      Q => \icache_slv_reg1_reg[1]\(7),
      R => '0'
    );
\icache_slv_reg1_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(8),
      Q => \icache_slv_reg1_reg[1]\(8),
      R => '0'
    );
\icache_slv_reg1_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg1_reg[0]\(9),
      Q => \icache_slv_reg1_reg[1]\(9),
      R => '0'
    );
\icache_slv_reg2_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => STAT(0),
      Q => \icache_slv_reg2_reg[0]\(0),
      R => '0'
    );
\icache_slv_reg2_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => STAT(1),
      Q => \icache_slv_reg2_reg[0]\(1),
      R => '0'
    );
\icache_slv_reg2_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => STAT(2),
      Q => \icache_slv_reg2_reg[0]\(2),
      R => '0'
    );
\icache_slv_reg2_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => STAT(3),
      Q => \icache_slv_reg2_reg[0]\(3),
      R => '0'
    );
\icache_slv_reg2_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg2_reg[0]\(0),
      Q => \icache_slv_reg2_reg[1]\(0),
      R => '0'
    );
\icache_slv_reg2_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg2_reg[0]\(1),
      Q => \icache_slv_reg2_reg[1]\(1),
      R => '0'
    );
\icache_slv_reg2_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg2_reg[0]\(2),
      Q => \icache_slv_reg2_reg[1]\(2),
      R => '0'
    );
\icache_slv_reg2_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \icache_slv_reg2_reg[0]\(3),
      Q => \icache_slv_reg2_reg[1]\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cpu_monitor_0_0_cpu_monitor_controller_AXI is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    STAT : in STD_LOGIC_VECTOR ( 3 downto 0 );
    GP : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ARSTN : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
end design_1_cpu_monitor_0_0_cpu_monitor_controller_AXI;

architecture STRUCTURE of design_1_cpu_monitor_0_0_cpu_monitor_controller_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_wready0__0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_awready0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready0 : label is "soft_lutpair3";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF700F700F700"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
axi_awready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      O => \axi_awready0__0\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARSTN,
      O => p_0_in
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awready0__0\,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \^s_axi_wready\,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => S_AXI_ARADDR(12),
      I1 => S_AXI_ARADDR(4),
      I2 => S_AXI_ARADDR(15),
      I3 => S_AXI_ARADDR(7),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => S_AXI_ARADDR(11),
      I1 => S_AXI_ARADDR(9),
      I2 => S_AXI_ARADDR(13),
      I3 => S_AXI_ARADDR(10),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => S_AXI_ARADDR(14),
      I1 => S_AXI_ARADDR(6),
      I2 => S_AXI_ARADDR(8),
      I3 => S_AXI_ARADDR(5),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => S_AXI_ARADDR(1),
      I2 => S_AXI_ARADDR(2),
      I3 => S_AXI_ARADDR(3),
      O => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => S_AXI_RDATA(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => S_AXI_RDATA(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => S_AXI_RDATA(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => S_AXI_RDATA(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => S_AXI_RDATA(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => S_AXI_RDATA(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => S_AXI_RDATA(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => S_AXI_RDATA(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => S_AXI_RDATA(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => S_AXI_RDATA(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => S_AXI_RDATA(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => S_AXI_RDATA(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => S_AXI_RDATA(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => S_AXI_RDATA(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => S_AXI_RDATA(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => S_AXI_RDATA(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => S_AXI_RDATA(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => S_AXI_RDATA(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => S_AXI_RDATA(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => S_AXI_RDATA(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => S_AXI_RDATA(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => S_AXI_RDATA(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => S_AXI_RDATA(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => S_AXI_RDATA(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => S_AXI_RDATA(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => S_AXI_RDATA(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => S_AXI_RDATA(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => S_AXI_RDATA(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => S_AXI_RDATA(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => S_AXI_RDATA(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => S_AXI_RDATA(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => S_AXI_RDATA(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => p_0_in
    );
axi_wready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_wready\,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      O => \axi_wready0__0\
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_wready0__0\,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
cpu_monitor_controller_auto_generated_inst: entity work.design_1_cpu_monitor_0_0_cpu_monitor_controller_auto_generated
     port map (
      D(31 downto 0) => reg_data_out(31 downto 0),
      GP(31 downto 0) => GP(31 downto 0),
      STAT(3 downto 0) => STAT(3 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(3 downto 0) => S_AXI_ARADDR(3 downto 0),
      \axi_rdata_reg[0]\ => \axi_rdata[31]_i_2_n_0\,
      \axi_rdata_reg[0]_0\ => \axi_rdata[31]_i_3_n_0\,
      \axi_rdata_reg[0]_1\ => \axi_rdata[31]_i_4_n_0\,
      \axi_rdata_reg[4]\ => \axi_rdata[31]_i_5_n_0\
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cpu_monitor_0_0_cpu_monitor_controller is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    STAT : in STD_LOGIC_VECTOR ( 3 downto 0 );
    GP : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ARSTN : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
end design_1_cpu_monitor_0_0_cpu_monitor_controller;

architecture STRUCTURE of design_1_cpu_monitor_0_0_cpu_monitor_controller is
begin
cpu_monitor_controller_AXI_inst: entity work.design_1_cpu_monitor_0_0_cpu_monitor_controller_AXI
     port map (
      GP(31 downto 0) => GP(31 downto 0),
      STAT(3 downto 0) => STAT(3 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(15 downto 0) => S_AXI_ARADDR(15 downto 0),
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARSTN => S_AXI_ARSTN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_cpu_monitor_0_0 is
  port (
    CLK : in STD_LOGIC;
    GP : in STD_LOGIC_VECTOR ( 31 downto 0 );
    STAT : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARSTN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_cpu_monitor_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_cpu_monitor_0_0 : entity is "design_1_cpu_monitor_0_0,cpu_monitor_controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_cpu_monitor_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_cpu_monitor_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_cpu_monitor_0_0 : entity is "cpu_monitor_controller,Vivado 2022.2";
end design_1_cpu_monitor_0_0;

architecture STRUCTURE of design_1_cpu_monitor_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S_AXI_RREADY : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_cpu_monitor_0_0_cpu_monitor_controller
     port map (
      GP(31 downto 0) => GP(31 downto 0),
      STAT(3 downto 0) => STAT(3 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(15 downto 0) => S_AXI_ARADDR(15 downto 0),
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARSTN => S_AXI_ARSTN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID
    );
end STRUCTURE;
