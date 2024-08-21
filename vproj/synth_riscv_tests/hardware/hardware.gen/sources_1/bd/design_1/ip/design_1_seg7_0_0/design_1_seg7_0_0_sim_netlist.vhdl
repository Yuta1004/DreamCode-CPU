-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Aug 19 03:01:49 2024
-- Host        : plab-imac running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_seg7_0_0 -prefix
--               design_1_seg7_0_0_ design_1_seg7_0_0_sim_netlist.vhdl
-- Design      : design_1_seg7_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_seg7_0_0_seg7 is
  port (
    COM_RCLK : out STD_LOGIC;
    SEG_SRCLK : out STD_LOGIC;
    SEG_RCLK : out STD_LOGIC;
    SEG_SER : out STD_LOGIC;
    COM_SER : out STD_LOGIC;
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    DATA : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end design_1_seg7_0_0_seg7;

architecture STRUCTURE of design_1_seg7_0_0_seg7 is
  signal \^com_rclk\ : STD_LOGIC;
  signal COM_RCLK_i_1_n_0 : STD_LOGIC;
  signal \^com_ser\ : STD_LOGIC;
  signal COM_SER_i_1_n_0 : STD_LOGIC;
  signal COM_SER_i_3_n_0 : STD_LOGIC;
  signal COM_SER_i_4_n_0 : STD_LOGIC;
  signal COM_SRCLK_i_1_n_0 : STD_LOGIC;
  signal \FSM_onehot_cs_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cs_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_cs_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_cs_state_reg_n_0_[3]\ : STD_LOGIC;
  signal FSM_sequential_ctl_state_reg_n_0 : STD_LOGIC;
  signal \^seg_rclk\ : STD_LOGIC;
  signal SEG_RCLK_i_1_n_0 : STD_LOGIC;
  signal SEG_RCLK_i_2_n_0 : STD_LOGIC;
  signal \^seg_ser\ : STD_LOGIC;
  signal SEG_SER_i_1_n_0 : STD_LOGIC;
  signal SEG_SER_i_2_n_0 : STD_LOGIC;
  signal SEG_SER_i_3_n_0 : STD_LOGIC;
  signal \^seg_srclk\ : STD_LOGIC;
  signal \^clk\ : STD_LOGIC;
  signal clk_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \clk_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal com_data : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal cs_cnt : STD_LOGIC;
  signal \cs_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cs_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cs_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cs_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cs_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cs_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal ctl_com_data : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal ctl_seg_data : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \ctl_seg_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \ctl_seg_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \ctl_seg_data_reg_n_0_[9]\ : STD_LOGIC;
  signal gen_7seg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal next_ctl_state : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \seg_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \seg_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \seg_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \seg_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \seg_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \seg_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \seg_data_reg_n_0_[6]\ : STD_LOGIC;
  signal send_en : STD_LOGIC;
  signal send_en_i_1_n_0 : STD_LOGIC;
  signal send_en_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of COM_RCLK_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of COM_SRCLK_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_cs_state[3]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_state_reg[0]\ : label is "S_CS_WAIT:0100,S_CS_IDLE:0001,S_CS_SEND:0010,S_CS_FINISH:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_state_reg[1]\ : label is "S_CS_WAIT:0100,S_CS_IDLE:0001,S_CS_SEND:0010,S_CS_FINISH:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_state_reg[2]\ : label is "S_CS_WAIT:0100,S_CS_IDLE:0001,S_CS_SEND:0010,S_CS_FINISH:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cs_state_reg[3]\ : label is "S_CS_WAIT:0100,S_CS_IDLE:0001,S_CS_SEND:0010,S_CS_FINISH:1000";
  attribute FSM_ENCODED_STATES of FSM_sequential_ctl_state_reg : label is "S_CTL_IDLE:0,S_CTL_WRITE:1";
  attribute SOFT_HLUTNM of SEG_RCLK_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clk_cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cs_cnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cs_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cs_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ctl_seg_data[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ctl_seg_data[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ctl_seg_data[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ctl_seg_data[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ctl_seg_data[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ctl_seg_data[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ctl_seg_data[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ctl_seg_data[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ctl_seg_data[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ctl_seg_data[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ctl_seg_data[19]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ctl_seg_data[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ctl_seg_data[20]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ctl_seg_data[21]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ctl_seg_data[22]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ctl_seg_data[23]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ctl_seg_data[24]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ctl_seg_data[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \ctl_seg_data[26]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ctl_seg_data[27]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ctl_seg_data[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ctl_seg_data[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ctl_seg_data[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ctl_seg_data[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ctl_seg_data[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ctl_seg_data[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ctl_seg_data[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ctl_seg_data[9]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \seg_data[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg_data[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg_data[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \seg_data[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \seg_data[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \seg_data[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of send_en_i_1 : label is "soft_lutpair7";
begin
  COM_RCLK <= \^com_rclk\;
  COM_SER <= \^com_ser\;
  SEG_RCLK <= \^seg_rclk\;
  SEG_SER <= \^seg_ser\;
  SEG_SRCLK <= \^seg_srclk\;
COM_RCLK_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^com_rclk\,
      I1 => \FSM_onehot_cs_state_reg_n_0_[3]\,
      I2 => cs_cnt,
      O => COM_RCLK_i_1_n_0
    );
COM_RCLK_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => COM_RCLK_i_1_n_0,
      Q => \^com_rclk\,
      R => '0'
    );
COM_SER_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => COM_SER_i_3_n_0,
      I1 => \cs_cnt_reg_n_0_[2]\,
      I2 => COM_SER_i_4_n_0,
      I3 => \FSM_onehot_cs_state_reg_n_0_[1]\,
      I4 => cs_cnt,
      I5 => \^com_ser\,
      O => COM_SER_i_1_n_0
    );
COM_SER_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_cnt(1),
      I1 => clk_cnt(0),
      O => \^clk\
    );
COM_SER_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => com_data(7),
      I1 => com_data(6),
      I2 => \cs_cnt_reg_n_0_[1]\,
      I3 => com_data(5),
      I4 => \cs_cnt_reg_n_0_[0]\,
      I5 => com_data(4),
      O => COM_SER_i_3_n_0
    );
COM_SER_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => com_data(3),
      I1 => com_data(2),
      I2 => \cs_cnt_reg_n_0_[1]\,
      I3 => com_data(1),
      I4 => \cs_cnt_reg_n_0_[0]\,
      O => COM_SER_i_4_n_0
    );
COM_SER_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => COM_SER_i_1_n_0,
      Q => \^com_ser\,
      R => '0'
    );
COM_SRCLK_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => \^seg_srclk\,
      I1 => \FSM_onehot_cs_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_cs_state_reg_n_0_[1]\,
      I3 => cs_cnt,
      O => COM_SRCLK_i_1_n_0
    );
COM_SRCLK_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => COM_SRCLK_i_1_n_0,
      Q => \^seg_srclk\,
      R => '0'
    );
\FSM_onehot_cs_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_cs_state_reg_n_0_[3]\,
      I1 => send_en_reg_n_0,
      I2 => cs_cnt,
      O => \FSM_onehot_cs_state[0]_i_1_n_0\
    );
\FSM_onehot_cs_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF888888888"
    )
        port map (
      I0 => send_en_reg_n_0,
      I1 => cs_cnt,
      I2 => \cs_cnt_reg_n_0_[1]\,
      I3 => \cs_cnt_reg_n_0_[0]\,
      I4 => \cs_cnt_reg_n_0_[2]\,
      I5 => \FSM_onehot_cs_state_reg_n_0_[2]\,
      O => \FSM_onehot_cs_state[1]_i_1_n_0\
    );
\FSM_onehot_cs_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_cs_state_reg_n_0_[2]\,
      I1 => \cs_cnt_reg_n_0_[2]\,
      I2 => \cs_cnt_reg_n_0_[0]\,
      I3 => \cs_cnt_reg_n_0_[1]\,
      O => \FSM_onehot_cs_state[3]_i_1_n_0\
    );
\FSM_onehot_cs_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \FSM_onehot_cs_state[0]_i_1_n_0\,
      Q => cs_cnt,
      S => RST
    );
\FSM_onehot_cs_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \FSM_onehot_cs_state[1]_i_1_n_0\,
      Q => \FSM_onehot_cs_state_reg_n_0_[1]\,
      R => RST
    );
\FSM_onehot_cs_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \FSM_onehot_cs_state_reg_n_0_[1]\,
      Q => \FSM_onehot_cs_state_reg_n_0_[2]\,
      R => RST
    );
\FSM_onehot_cs_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \FSM_onehot_cs_state[3]_i_1_n_0\,
      Q => \FSM_onehot_cs_state_reg_n_0_[3]\,
      R => RST
    );
FSM_sequential_ctl_state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^com_rclk\,
      I1 => p_0_in,
      I2 => FSM_sequential_ctl_state_reg_n_0,
      O => next_ctl_state
    );
FSM_sequential_ctl_state_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => next_ctl_state,
      Q => FSM_sequential_ctl_state_reg_n_0,
      R => RST
    );
SEG_RCLK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
        port map (
      I0 => \^seg_rclk\,
      I1 => \FSM_onehot_cs_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_cs_state_reg_n_0_[2]\,
      I3 => SEG_RCLK_i_2_n_0,
      I4 => cs_cnt,
      O => SEG_RCLK_i_1_n_0
    );
SEG_RCLK_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \cs_cnt_reg_n_0_[2]\,
      I1 => \cs_cnt_reg_n_0_[0]\,
      I2 => \cs_cnt_reg_n_0_[1]\,
      O => SEG_RCLK_i_2_n_0
    );
SEG_RCLK_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => SEG_RCLK_i_1_n_0,
      Q => \^seg_rclk\,
      R => '0'
    );
SEG_SER_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => SEG_SER_i_2_n_0,
      I1 => \cs_cnt_reg_n_0_[2]\,
      I2 => SEG_SER_i_3_n_0,
      I3 => \FSM_onehot_cs_state_reg_n_0_[1]\,
      I4 => cs_cnt,
      I5 => \^seg_ser\,
      O => SEG_SER_i_1_n_0
    );
SEG_SER_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \seg_data_reg_n_0_[6]\,
      I1 => \cs_cnt_reg_n_0_[1]\,
      I2 => \seg_data_reg_n_0_[5]\,
      I3 => \cs_cnt_reg_n_0_[0]\,
      I4 => \seg_data_reg_n_0_[4]\,
      O => SEG_SER_i_2_n_0
    );
SEG_SER_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \seg_data_reg_n_0_[3]\,
      I1 => \seg_data_reg_n_0_[2]\,
      I2 => \cs_cnt_reg_n_0_[1]\,
      I3 => \seg_data_reg_n_0_[1]\,
      I4 => \cs_cnt_reg_n_0_[0]\,
      I5 => \seg_data_reg_n_0_[0]\,
      O => SEG_SER_i_3_n_0
    );
SEG_SER_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => SEG_SER_i_1_n_0,
      Q => \^seg_ser\,
      R => '0'
    );
\clk_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_cnt(0),
      I1 => RST,
      O => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => clk_cnt(1),
      I1 => clk_cnt(0),
      I2 => RST,
      O => \clk_cnt[1]_i_1_n_0\
    );
\clk_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt[0]_i_1_n_0\,
      Q => clk_cnt(0),
      R => '0'
    );
\clk_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \clk_cnt[1]_i_1_n_0\,
      Q => clk_cnt(1),
      R => '0'
    );
\com_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => ctl_com_data(1),
      Q => com_data(1),
      R => '0'
    );
\com_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => ctl_com_data(2),
      Q => com_data(2),
      R => '0'
    );
\com_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => ctl_com_data(3),
      Q => com_data(3),
      R => '0'
    );
\com_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => ctl_com_data(4),
      Q => com_data(4),
      R => '0'
    );
\com_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => ctl_com_data(5),
      Q => com_data(5),
      R => '0'
    );
\com_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => p_0_in,
      Q => com_data(6),
      R => '0'
    );
\com_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => ctl_com_data(7),
      Q => com_data(7),
      R => '0'
    );
\cs_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \cs_cnt_reg_n_0_[0]\,
      I1 => \FSM_onehot_cs_state_reg_n_0_[1]\,
      I2 => cs_cnt,
      O => \cs_cnt[0]_i_1_n_0\
    );
\cs_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \cs_cnt_reg_n_0_[1]\,
      I1 => \FSM_onehot_cs_state_reg_n_0_[1]\,
      I2 => \cs_cnt_reg_n_0_[0]\,
      I3 => cs_cnt,
      O => \cs_cnt[1]_i_1_n_0\
    );
\cs_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \cs_cnt_reg_n_0_[2]\,
      I1 => \FSM_onehot_cs_state_reg_n_0_[1]\,
      I2 => \cs_cnt_reg_n_0_[1]\,
      I3 => \cs_cnt_reg_n_0_[0]\,
      I4 => cs_cnt,
      O => \cs_cnt[2]_i_1_n_0\
    );
\cs_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \cs_cnt[0]_i_1_n_0\,
      Q => \cs_cnt_reg_n_0_[0]\,
      R => '0'
    );
\cs_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \cs_cnt[1]_i_1_n_0\,
      Q => \cs_cnt_reg_n_0_[1]\,
      R => '0'
    );
\cs_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \cs_cnt[2]_i_1_n_0\,
      Q => \cs_cnt_reg_n_0_[2]\,
      R => '0'
    );
\ctl_com_data[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => FSM_sequential_ctl_state_reg_n_0,
      O => send_en
    );
\ctl_com_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \^com_rclk\,
      D => '1',
      Q => ctl_com_data(1),
      R => send_en
    );
\ctl_com_data_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => \^clk\,
      CE => \^com_rclk\,
      D => ctl_com_data(1),
      Q => ctl_com_data(2),
      S => send_en
    );
\ctl_com_data_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => \^clk\,
      CE => \^com_rclk\,
      D => ctl_com_data(2),
      Q => ctl_com_data(3),
      S => send_en
    );
\ctl_com_data_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => \^clk\,
      CE => \^com_rclk\,
      D => ctl_com_data(3),
      Q => ctl_com_data(4),
      S => send_en
    );
\ctl_com_data_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => \^clk\,
      CE => \^com_rclk\,
      D => ctl_com_data(4),
      Q => ctl_com_data(5),
      S => send_en
    );
\ctl_com_data_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => \^clk\,
      CE => \^com_rclk\,
      D => ctl_com_data(5),
      Q => p_0_in,
      S => send_en
    );
\ctl_com_data_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => \^clk\,
      CE => \^com_rclk\,
      D => p_0_in,
      Q => ctl_com_data(7),
      S => send_en
    );
\ctl_seg_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[4]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(0),
      O => ctl_seg_data(0)
    );
\ctl_seg_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[14]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(10),
      O => ctl_seg_data(10)
    );
\ctl_seg_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[15]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(11),
      O => ctl_seg_data(11)
    );
\ctl_seg_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[16]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(12),
      O => ctl_seg_data(12)
    );
\ctl_seg_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[17]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(13),
      O => ctl_seg_data(13)
    );
\ctl_seg_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[18]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(14),
      O => ctl_seg_data(14)
    );
\ctl_seg_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[19]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(15),
      O => ctl_seg_data(15)
    );
\ctl_seg_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[20]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(16),
      O => ctl_seg_data(16)
    );
\ctl_seg_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[21]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(17),
      O => ctl_seg_data(17)
    );
\ctl_seg_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[22]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(18),
      O => ctl_seg_data(18)
    );
\ctl_seg_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[23]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(19),
      O => ctl_seg_data(19)
    );
\ctl_seg_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[5]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(1),
      O => ctl_seg_data(1)
    );
\ctl_seg_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[24]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(20),
      O => ctl_seg_data(20)
    );
\ctl_seg_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[25]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(21),
      O => ctl_seg_data(21)
    );
\ctl_seg_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[26]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(22),
      O => ctl_seg_data(22)
    );
\ctl_seg_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[27]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(23),
      O => ctl_seg_data(23)
    );
\ctl_seg_data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[28]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(24),
      O => ctl_seg_data(24)
    );
\ctl_seg_data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[29]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(25),
      O => ctl_seg_data(25)
    );
\ctl_seg_data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[30]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(26),
      O => ctl_seg_data(26)
    );
\ctl_seg_data[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^com_rclk\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      O => \ctl_seg_data[27]_i_1_n_0\
    );
\ctl_seg_data[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[31]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(27),
      O => ctl_seg_data(27)
    );
\ctl_seg_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[6]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(2),
      O => ctl_seg_data(2)
    );
\ctl_seg_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => FSM_sequential_ctl_state_reg_n_0,
      I1 => \^com_rclk\,
      O => \ctl_seg_data[31]_i_1_n_0\
    );
\ctl_seg_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[7]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(3),
      O => ctl_seg_data(3)
    );
\ctl_seg_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[8]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(4),
      O => ctl_seg_data(4)
    );
\ctl_seg_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[9]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(5),
      O => ctl_seg_data(5)
    );
\ctl_seg_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[10]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(6),
      O => ctl_seg_data(6)
    );
\ctl_seg_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[11]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(7),
      O => ctl_seg_data(7)
    );
\ctl_seg_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[12]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(8),
      O => ctl_seg_data(8)
    );
\ctl_seg_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[13]\,
      I1 => FSM_sequential_ctl_state_reg_n_0,
      I2 => DATA(9),
      O => ctl_seg_data(9)
    );
\ctl_seg_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(0),
      Q => \ctl_seg_data_reg_n_0_[0]\,
      R => '0'
    );
\ctl_seg_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(10),
      Q => \ctl_seg_data_reg_n_0_[10]\,
      R => '0'
    );
\ctl_seg_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(11),
      Q => \ctl_seg_data_reg_n_0_[11]\,
      R => '0'
    );
\ctl_seg_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(12),
      Q => \ctl_seg_data_reg_n_0_[12]\,
      R => '0'
    );
\ctl_seg_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(13),
      Q => \ctl_seg_data_reg_n_0_[13]\,
      R => '0'
    );
\ctl_seg_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(14),
      Q => \ctl_seg_data_reg_n_0_[14]\,
      R => '0'
    );
\ctl_seg_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(15),
      Q => \ctl_seg_data_reg_n_0_[15]\,
      R => '0'
    );
\ctl_seg_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(16),
      Q => \ctl_seg_data_reg_n_0_[16]\,
      R => '0'
    );
\ctl_seg_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(17),
      Q => \ctl_seg_data_reg_n_0_[17]\,
      R => '0'
    );
\ctl_seg_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(18),
      Q => \ctl_seg_data_reg_n_0_[18]\,
      R => '0'
    );
\ctl_seg_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(19),
      Q => \ctl_seg_data_reg_n_0_[19]\,
      R => '0'
    );
\ctl_seg_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(1),
      Q => \ctl_seg_data_reg_n_0_[1]\,
      R => '0'
    );
\ctl_seg_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(20),
      Q => \ctl_seg_data_reg_n_0_[20]\,
      R => '0'
    );
\ctl_seg_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(21),
      Q => \ctl_seg_data_reg_n_0_[21]\,
      R => '0'
    );
\ctl_seg_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(22),
      Q => \ctl_seg_data_reg_n_0_[22]\,
      R => '0'
    );
\ctl_seg_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(23),
      Q => \ctl_seg_data_reg_n_0_[23]\,
      R => '0'
    );
\ctl_seg_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(24),
      Q => \ctl_seg_data_reg_n_0_[24]\,
      R => '0'
    );
\ctl_seg_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(25),
      Q => \ctl_seg_data_reg_n_0_[25]\,
      R => '0'
    );
\ctl_seg_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(26),
      Q => \ctl_seg_data_reg_n_0_[26]\,
      R => '0'
    );
\ctl_seg_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(27),
      Q => \ctl_seg_data_reg_n_0_[27]\,
      R => '0'
    );
\ctl_seg_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => DATA(28),
      Q => \ctl_seg_data_reg_n_0_[28]\,
      R => \ctl_seg_data[31]_i_1_n_0\
    );
\ctl_seg_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => DATA(29),
      Q => \ctl_seg_data_reg_n_0_[29]\,
      R => \ctl_seg_data[31]_i_1_n_0\
    );
\ctl_seg_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(2),
      Q => \ctl_seg_data_reg_n_0_[2]\,
      R => '0'
    );
\ctl_seg_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => DATA(30),
      Q => \ctl_seg_data_reg_n_0_[30]\,
      R => \ctl_seg_data[31]_i_1_n_0\
    );
\ctl_seg_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => DATA(31),
      Q => \ctl_seg_data_reg_n_0_[31]\,
      R => \ctl_seg_data[31]_i_1_n_0\
    );
\ctl_seg_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(3),
      Q => \ctl_seg_data_reg_n_0_[3]\,
      R => '0'
    );
\ctl_seg_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(4),
      Q => \ctl_seg_data_reg_n_0_[4]\,
      R => '0'
    );
\ctl_seg_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(5),
      Q => \ctl_seg_data_reg_n_0_[5]\,
      R => '0'
    );
\ctl_seg_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(6),
      Q => \ctl_seg_data_reg_n_0_[6]\,
      R => '0'
    );
\ctl_seg_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(7),
      Q => \ctl_seg_data_reg_n_0_[7]\,
      R => '0'
    );
\ctl_seg_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(8),
      Q => \ctl_seg_data_reg_n_0_[8]\,
      R => '0'
    );
\ctl_seg_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => \ctl_seg_data[27]_i_1_n_0\,
      D => ctl_seg_data(9),
      Q => \ctl_seg_data_reg_n_0_[9]\,
      R => '0'
    );
\seg_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFDA"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[3]\,
      I1 => \ctl_seg_data_reg_n_0_[0]\,
      I2 => \ctl_seg_data_reg_n_0_[2]\,
      I3 => \ctl_seg_data_reg_n_0_[1]\,
      O => gen_7seg(0)
    );
\seg_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E6EF"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[3]\,
      I1 => \ctl_seg_data_reg_n_0_[2]\,
      I2 => \ctl_seg_data_reg_n_0_[1]\,
      I3 => \ctl_seg_data_reg_n_0_[0]\,
      O => gen_7seg(1)
    );
\seg_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8EF"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[3]\,
      I1 => \ctl_seg_data_reg_n_0_[1]\,
      I2 => \ctl_seg_data_reg_n_0_[2]\,
      I3 => \ctl_seg_data_reg_n_0_[0]\,
      O => gen_7seg(2)
    );
\seg_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3EDB"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[3]\,
      I1 => \ctl_seg_data_reg_n_0_[2]\,
      I2 => \ctl_seg_data_reg_n_0_[1]\,
      I3 => \ctl_seg_data_reg_n_0_[0]\,
      O => gen_7seg(3)
    );
\seg_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F67"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[3]\,
      I1 => \ctl_seg_data_reg_n_0_[2]\,
      I2 => \ctl_seg_data_reg_n_0_[1]\,
      I3 => \ctl_seg_data_reg_n_0_[0]\,
      O => gen_7seg(4)
    );
\seg_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"617F"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[3]\,
      I1 => \ctl_seg_data_reg_n_0_[1]\,
      I2 => \ctl_seg_data_reg_n_0_[0]\,
      I3 => \ctl_seg_data_reg_n_0_[2]\,
      O => gen_7seg(5)
    );
\seg_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D6FB"
    )
        port map (
      I0 => \ctl_seg_data_reg_n_0_[3]\,
      I1 => \ctl_seg_data_reg_n_0_[2]\,
      I2 => \ctl_seg_data_reg_n_0_[1]\,
      I3 => \ctl_seg_data_reg_n_0_[0]\,
      O => gen_7seg(6)
    );
\seg_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => gen_7seg(0),
      Q => \seg_data_reg_n_0_[0]\,
      R => '0'
    );
\seg_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => gen_7seg(1),
      Q => \seg_data_reg_n_0_[1]\,
      R => '0'
    );
\seg_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => gen_7seg(2),
      Q => \seg_data_reg_n_0_[2]\,
      R => '0'
    );
\seg_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => gen_7seg(3),
      Q => \seg_data_reg_n_0_[3]\,
      R => '0'
    );
\seg_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => gen_7seg(4),
      Q => \seg_data_reg_n_0_[4]\,
      R => '0'
    );
\seg_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => gen_7seg(5),
      Q => \seg_data_reg_n_0_[5]\,
      R => '0'
    );
\seg_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => cs_cnt,
      D => gen_7seg(6),
      Q => \seg_data_reg_n_0_[6]\,
      R => '0'
    );
send_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^com_rclk\,
      I1 => p_0_in,
      I2 => FSM_sequential_ctl_state_reg_n_0,
      O => send_en_i_1_n_0
    );
send_en_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => send_en_i_1_n_0,
      Q => send_en_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_seg7_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    DATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    COM_SER : out STD_LOGIC;
    COM_RCLK : out STD_LOGIC;
    COM_SRCLK : out STD_LOGIC;
    SEG_SER : out STD_LOGIC;
    SEG_RCLK : out STD_LOGIC;
    SEG_SRCLK : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_seg7_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_seg7_0_0 : entity is "design_1_seg7_0_0,seg7,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_seg7_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_seg7_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_seg7_0_0 : entity is "seg7,Vivado 2022.2";
end design_1_seg7_0_0;

architecture STRUCTURE of design_1_seg7_0_0 is
  signal \^seg_srclk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, ASSOCIATED_PORT COM_SER,COM_RCLK,COM_SRCLK,SEG_SER,SEG_RCLK,SEG_SRCLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  COM_SRCLK <= \^seg_srclk\;
  SEG_SRCLK <= \^seg_srclk\;
inst: entity work.design_1_seg7_0_0_seg7
     port map (
      CLK => CLK,
      COM_RCLK => COM_RCLK,
      COM_SER => COM_SER,
      DATA(31 downto 0) => DATA(31 downto 0),
      RST => RST,
      SEG_RCLK => SEG_RCLK,
      SEG_SER => SEG_SER,
      SEG_SRCLK => \^seg_srclk\
    );
end STRUCTURE;
