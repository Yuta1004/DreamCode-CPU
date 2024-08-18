-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Aug 19 03:01:50 2024
-- Host        : plab-imac running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/nakagami/Develop/project/DreamCode/cpu/vproj/synth_riscv_tests/hardware/hardware.gen/sources_1/bd/design_1/ip/design_1_seg7_0_0/design_1_seg7_0_0_stub.vhdl
-- Design      : design_1_seg7_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_seg7_0_0 is
  Port ( 
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

end design_1_seg7_0_0;

architecture stub of design_1_seg7_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RST,DATA[31:0],COM_SER,COM_RCLK,COM_SRCLK,SEG_SER,SEG_RCLK,SEG_SRCLK";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "seg7,Vivado 2022.2";
begin
end;
