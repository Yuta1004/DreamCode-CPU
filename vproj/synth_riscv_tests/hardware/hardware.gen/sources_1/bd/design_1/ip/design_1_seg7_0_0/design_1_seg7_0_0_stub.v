// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Aug 19 03:01:50 2024
// Host        : plab-imac running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/nakagami/Develop/project/DreamCode/cpu/vproj/synth_riscv_tests/hardware/hardware.gen/sources_1/bd/design_1/ip/design_1_seg7_0_0/design_1_seg7_0_0_stub.v
// Design      : design_1_seg7_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "seg7,Vivado 2022.2" *)
module design_1_seg7_0_0(CLK, RST, DATA, COM_SER, COM_RCLK, COM_SRCLK, 
  SEG_SER, SEG_RCLK, SEG_SRCLK)
/* synthesis syn_black_box black_box_pad_pin="CLK,RST,DATA[31:0],COM_SER,COM_RCLK,COM_SRCLK,SEG_SER,SEG_RCLK,SEG_SRCLK" */;
  input CLK;
  input RST;
  input [31:0]DATA;
  output COM_SER;
  output COM_RCLK;
  output COM_SRCLK;
  output SEG_SER;
  output SEG_RCLK;
  output SEG_SRCLK;
endmodule
