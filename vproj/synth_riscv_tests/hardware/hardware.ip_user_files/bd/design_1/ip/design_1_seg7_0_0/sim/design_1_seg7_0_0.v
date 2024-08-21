// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
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


// IP VLNV: dev.nakagamiyuta.dreamcode:user:seg7:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_seg7_0_0 (
  CLK,
  RST,
  DATA,
  COM_SER,
  COM_RCLK,
  COM_SRCLK,
  SEG_SER,
  SEG_RCLK,
  SEG_SRCLK
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, ASSOCIATED_PORT COM_SER,COM_RCLK,COM_SRCLK,SEG_SER,SEG_RCLK,SEG_SRCLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
input wire CLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *)
input wire RST;
input wire [31 : 0] DATA;
output wire COM_SER;
output wire COM_RCLK;
output wire COM_SRCLK;
output wire SEG_SER;
output wire SEG_RCLK;
output wire SEG_SRCLK;

  seg7 #(
    .S_CTL_IDLE(2'B00),
    .S_CTL_WRITE(2'B01),
    .S_CS_IDLE(2'B00),
    .S_CS_SEND(2'B01),
    .S_CS_WAIT(2'B11),
    .S_CS_FINISH(2'B10)
  ) inst (
    .CLK(CLK),
    .RST(RST),
    .DATA(DATA),
    .COM_SER(COM_SER),
    .COM_RCLK(COM_RCLK),
    .COM_SRCLK(COM_SRCLK),
    .SEG_SER(SEG_SER),
    .SEG_RCLK(SEG_RCLK),
    .SEG_SRCLK(SEG_SRCLK)
  );
endmodule
