// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Aug 19 03:01:50 2024
// Host        : plab-imac running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/nakagami/Develop/project/DreamCode/cpu/vproj/synth_riscv_tests/hardware/hardware.gen/sources_1/bd/design_1/ip/design_1_seg7_0_0/design_1_seg7_0_0_sim_netlist.v
// Design      : design_1_seg7_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_seg7_0_0,seg7,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "seg7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_seg7_0_0
   (CLK,
    RST,
    DATA,
    COM_SER,
    COM_RCLK,
    COM_SRCLK,
    SEG_SER,
    SEG_RCLK,
    SEG_SRCLK);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, ASSOCIATED_PORT COM_SER,COM_RCLK,COM_SRCLK,SEG_SER,SEG_RCLK,SEG_SRCLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input RST;
  input [31:0]DATA;
  output COM_SER;
  output COM_RCLK;
  output COM_SRCLK;
  output SEG_SER;
  output SEG_RCLK;
  output SEG_SRCLK;

  wire CLK;
  wire COM_RCLK;
  wire COM_SER;
  wire [31:0]DATA;
  wire RST;
  wire SEG_RCLK;
  wire SEG_SER;
  wire SEG_SRCLK;

  assign COM_SRCLK = SEG_SRCLK;
  design_1_seg7_0_0_seg7 inst
       (.CLK(CLK),
        .COM_RCLK(COM_RCLK),
        .COM_SER(COM_SER),
        .DATA(DATA),
        .RST(RST),
        .SEG_RCLK(SEG_RCLK),
        .SEG_SER(SEG_SER),
        .SEG_SRCLK(SEG_SRCLK));
endmodule

(* ORIG_REF_NAME = "seg7" *) 
module design_1_seg7_0_0_seg7
   (COM_RCLK,
    SEG_SRCLK,
    SEG_RCLK,
    SEG_SER,
    COM_SER,
    RST,
    CLK,
    DATA);
  output COM_RCLK;
  output SEG_SRCLK;
  output SEG_RCLK;
  output SEG_SER;
  output COM_SER;
  input RST;
  input CLK;
  input [31:0]DATA;

  wire CLK;
  wire COM_RCLK;
  wire COM_RCLK_i_1_n_0;
  wire COM_SER;
  wire COM_SER_i_1_n_0;
  wire COM_SER_i_3_n_0;
  wire COM_SER_i_4_n_0;
  wire COM_SRCLK_i_1_n_0;
  wire [31:0]DATA;
  wire \FSM_onehot_cs_state[0]_i_1_n_0 ;
  wire \FSM_onehot_cs_state[1]_i_1_n_0 ;
  wire \FSM_onehot_cs_state[3]_i_1_n_0 ;
  wire \FSM_onehot_cs_state_reg_n_0_[1] ;
  wire \FSM_onehot_cs_state_reg_n_0_[2] ;
  wire \FSM_onehot_cs_state_reg_n_0_[3] ;
  wire FSM_sequential_ctl_state_reg_n_0;
  wire RST;
  wire SEG_RCLK;
  wire SEG_RCLK_i_1_n_0;
  wire SEG_RCLK_i_2_n_0;
  wire SEG_SER;
  wire SEG_SER_i_1_n_0;
  wire SEG_SER_i_2_n_0;
  wire SEG_SER_i_3_n_0;
  wire SEG_SRCLK;
  wire clk;
  wire [1:0]clk_cnt;
  wire \clk_cnt[0]_i_1_n_0 ;
  wire \clk_cnt[1]_i_1_n_0 ;
  wire [7:1]com_data;
  wire cs_cnt;
  wire \cs_cnt[0]_i_1_n_0 ;
  wire \cs_cnt[1]_i_1_n_0 ;
  wire \cs_cnt[2]_i_1_n_0 ;
  wire \cs_cnt_reg_n_0_[0] ;
  wire \cs_cnt_reg_n_0_[1] ;
  wire \cs_cnt_reg_n_0_[2] ;
  wire [7:1]ctl_com_data;
  wire [27:0]ctl_seg_data;
  wire \ctl_seg_data[27]_i_1_n_0 ;
  wire \ctl_seg_data[31]_i_1_n_0 ;
  wire \ctl_seg_data_reg_n_0_[0] ;
  wire \ctl_seg_data_reg_n_0_[10] ;
  wire \ctl_seg_data_reg_n_0_[11] ;
  wire \ctl_seg_data_reg_n_0_[12] ;
  wire \ctl_seg_data_reg_n_0_[13] ;
  wire \ctl_seg_data_reg_n_0_[14] ;
  wire \ctl_seg_data_reg_n_0_[15] ;
  wire \ctl_seg_data_reg_n_0_[16] ;
  wire \ctl_seg_data_reg_n_0_[17] ;
  wire \ctl_seg_data_reg_n_0_[18] ;
  wire \ctl_seg_data_reg_n_0_[19] ;
  wire \ctl_seg_data_reg_n_0_[1] ;
  wire \ctl_seg_data_reg_n_0_[20] ;
  wire \ctl_seg_data_reg_n_0_[21] ;
  wire \ctl_seg_data_reg_n_0_[22] ;
  wire \ctl_seg_data_reg_n_0_[23] ;
  wire \ctl_seg_data_reg_n_0_[24] ;
  wire \ctl_seg_data_reg_n_0_[25] ;
  wire \ctl_seg_data_reg_n_0_[26] ;
  wire \ctl_seg_data_reg_n_0_[27] ;
  wire \ctl_seg_data_reg_n_0_[28] ;
  wire \ctl_seg_data_reg_n_0_[29] ;
  wire \ctl_seg_data_reg_n_0_[2] ;
  wire \ctl_seg_data_reg_n_0_[30] ;
  wire \ctl_seg_data_reg_n_0_[31] ;
  wire \ctl_seg_data_reg_n_0_[3] ;
  wire \ctl_seg_data_reg_n_0_[4] ;
  wire \ctl_seg_data_reg_n_0_[5] ;
  wire \ctl_seg_data_reg_n_0_[6] ;
  wire \ctl_seg_data_reg_n_0_[7] ;
  wire \ctl_seg_data_reg_n_0_[8] ;
  wire \ctl_seg_data_reg_n_0_[9] ;
  wire [6:0]gen_7seg;
  wire next_ctl_state;
  wire p_0_in;
  wire \seg_data_reg_n_0_[0] ;
  wire \seg_data_reg_n_0_[1] ;
  wire \seg_data_reg_n_0_[2] ;
  wire \seg_data_reg_n_0_[3] ;
  wire \seg_data_reg_n_0_[4] ;
  wire \seg_data_reg_n_0_[5] ;
  wire \seg_data_reg_n_0_[6] ;
  wire send_en;
  wire send_en_i_1_n_0;
  wire send_en_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    COM_RCLK_i_1
       (.I0(COM_RCLK),
        .I1(\FSM_onehot_cs_state_reg_n_0_[3] ),
        .I2(cs_cnt),
        .O(COM_RCLK_i_1_n_0));
  FDRE COM_RCLK_reg
       (.C(clk),
        .CE(1'b1),
        .D(COM_RCLK_i_1_n_0),
        .Q(COM_RCLK),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    COM_SER_i_1
       (.I0(COM_SER_i_3_n_0),
        .I1(\cs_cnt_reg_n_0_[2] ),
        .I2(COM_SER_i_4_n_0),
        .I3(\FSM_onehot_cs_state_reg_n_0_[1] ),
        .I4(cs_cnt),
        .I5(COM_SER),
        .O(COM_SER_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    COM_SER_i_2
       (.I0(clk_cnt[1]),
        .I1(clk_cnt[0]),
        .O(clk));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    COM_SER_i_3
       (.I0(com_data[7]),
        .I1(com_data[6]),
        .I2(\cs_cnt_reg_n_0_[1] ),
        .I3(com_data[5]),
        .I4(\cs_cnt_reg_n_0_[0] ),
        .I5(com_data[4]),
        .O(COM_SER_i_3_n_0));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    COM_SER_i_4
       (.I0(com_data[3]),
        .I1(com_data[2]),
        .I2(\cs_cnt_reg_n_0_[1] ),
        .I3(com_data[1]),
        .I4(\cs_cnt_reg_n_0_[0] ),
        .O(COM_SER_i_4_n_0));
  FDRE COM_SER_reg
       (.C(clk),
        .CE(1'b1),
        .D(COM_SER_i_1_n_0),
        .Q(COM_SER),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    COM_SRCLK_i_1
       (.I0(SEG_SRCLK),
        .I1(\FSM_onehot_cs_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_cs_state_reg_n_0_[1] ),
        .I3(cs_cnt),
        .O(COM_SRCLK_i_1_n_0));
  FDRE COM_SRCLK_reg
       (.C(clk),
        .CE(1'b1),
        .D(COM_SRCLK_i_1_n_0),
        .Q(SEG_SRCLK),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_cs_state[0]_i_1 
       (.I0(\FSM_onehot_cs_state_reg_n_0_[3] ),
        .I1(send_en_reg_n_0),
        .I2(cs_cnt),
        .O(\FSM_onehot_cs_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF888888888)) 
    \FSM_onehot_cs_state[1]_i_1 
       (.I0(send_en_reg_n_0),
        .I1(cs_cnt),
        .I2(\cs_cnt_reg_n_0_[1] ),
        .I3(\cs_cnt_reg_n_0_[0] ),
        .I4(\cs_cnt_reg_n_0_[2] ),
        .I5(\FSM_onehot_cs_state_reg_n_0_[2] ),
        .O(\FSM_onehot_cs_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_cs_state[3]_i_1 
       (.I0(\FSM_onehot_cs_state_reg_n_0_[2] ),
        .I1(\cs_cnt_reg_n_0_[2] ),
        .I2(\cs_cnt_reg_n_0_[0] ),
        .I3(\cs_cnt_reg_n_0_[1] ),
        .O(\FSM_onehot_cs_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_CS_WAIT:0100,S_CS_IDLE:0001,S_CS_SEND:0010,S_CS_FINISH:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_cs_state[0]_i_1_n_0 ),
        .Q(cs_cnt),
        .S(RST));
  (* FSM_ENCODED_STATES = "S_CS_WAIT:0100,S_CS_IDLE:0001,S_CS_SEND:0010,S_CS_FINISH:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_cs_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_state_reg_n_0_[1] ),
        .R(RST));
  (* FSM_ENCODED_STATES = "S_CS_WAIT:0100,S_CS_IDLE:0001,S_CS_SEND:0010,S_CS_FINISH:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_cs_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_cs_state_reg_n_0_[2] ),
        .R(RST));
  (* FSM_ENCODED_STATES = "S_CS_WAIT:0100,S_CS_IDLE:0001,S_CS_SEND:0010,S_CS_FINISH:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_cs_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_state_reg_n_0_[3] ),
        .R(RST));
  LUT3 #(
    .INIT(8'hDF)) 
    FSM_sequential_ctl_state_i_1
       (.I0(COM_RCLK),
        .I1(p_0_in),
        .I2(FSM_sequential_ctl_state_reg_n_0),
        .O(next_ctl_state));
  (* FSM_ENCODED_STATES = "S_CTL_IDLE:0,S_CTL_WRITE:1" *) 
  FDRE FSM_sequential_ctl_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(next_ctl_state),
        .Q(FSM_sequential_ctl_state_reg_n_0),
        .R(RST));
  LUT5 #(
    .INIT(32'h0000BA8A)) 
    SEG_RCLK_i_1
       (.I0(SEG_RCLK),
        .I1(\FSM_onehot_cs_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_cs_state_reg_n_0_[2] ),
        .I3(SEG_RCLK_i_2_n_0),
        .I4(cs_cnt),
        .O(SEG_RCLK_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    SEG_RCLK_i_2
       (.I0(\cs_cnt_reg_n_0_[2] ),
        .I1(\cs_cnt_reg_n_0_[0] ),
        .I2(\cs_cnt_reg_n_0_[1] ),
        .O(SEG_RCLK_i_2_n_0));
  FDRE SEG_RCLK_reg
       (.C(clk),
        .CE(1'b1),
        .D(SEG_RCLK_i_1_n_0),
        .Q(SEG_RCLK),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    SEG_SER_i_1
       (.I0(SEG_SER_i_2_n_0),
        .I1(\cs_cnt_reg_n_0_[2] ),
        .I2(SEG_SER_i_3_n_0),
        .I3(\FSM_onehot_cs_state_reg_n_0_[1] ),
        .I4(cs_cnt),
        .I5(SEG_SER),
        .O(SEG_SER_i_1_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    SEG_SER_i_2
       (.I0(\seg_data_reg_n_0_[6] ),
        .I1(\cs_cnt_reg_n_0_[1] ),
        .I2(\seg_data_reg_n_0_[5] ),
        .I3(\cs_cnt_reg_n_0_[0] ),
        .I4(\seg_data_reg_n_0_[4] ),
        .O(SEG_SER_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    SEG_SER_i_3
       (.I0(\seg_data_reg_n_0_[3] ),
        .I1(\seg_data_reg_n_0_[2] ),
        .I2(\cs_cnt_reg_n_0_[1] ),
        .I3(\seg_data_reg_n_0_[1] ),
        .I4(\cs_cnt_reg_n_0_[0] ),
        .I5(\seg_data_reg_n_0_[0] ),
        .O(SEG_SER_i_3_n_0));
  FDRE SEG_SER_reg
       (.C(clk),
        .CE(1'b1),
        .D(SEG_SER_i_1_n_0),
        .Q(SEG_SER),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt[0]_i_1 
       (.I0(clk_cnt[0]),
        .I1(RST),
        .O(\clk_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \clk_cnt[1]_i_1 
       (.I0(clk_cnt[1]),
        .I1(clk_cnt[0]),
        .I2(RST),
        .O(\clk_cnt[1]_i_1_n_0 ));
  FDRE \clk_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_cnt[0]_i_1_n_0 ),
        .Q(clk_cnt[0]),
        .R(1'b0));
  FDRE \clk_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_cnt[1]_i_1_n_0 ),
        .Q(clk_cnt[1]),
        .R(1'b0));
  FDRE \com_data_reg[1] 
       (.C(clk),
        .CE(cs_cnt),
        .D(ctl_com_data[1]),
        .Q(com_data[1]),
        .R(1'b0));
  FDRE \com_data_reg[2] 
       (.C(clk),
        .CE(cs_cnt),
        .D(ctl_com_data[2]),
        .Q(com_data[2]),
        .R(1'b0));
  FDRE \com_data_reg[3] 
       (.C(clk),
        .CE(cs_cnt),
        .D(ctl_com_data[3]),
        .Q(com_data[3]),
        .R(1'b0));
  FDRE \com_data_reg[4] 
       (.C(clk),
        .CE(cs_cnt),
        .D(ctl_com_data[4]),
        .Q(com_data[4]),
        .R(1'b0));
  FDRE \com_data_reg[5] 
       (.C(clk),
        .CE(cs_cnt),
        .D(ctl_com_data[5]),
        .Q(com_data[5]),
        .R(1'b0));
  FDRE \com_data_reg[6] 
       (.C(clk),
        .CE(cs_cnt),
        .D(p_0_in),
        .Q(com_data[6]),
        .R(1'b0));
  FDRE \com_data_reg[7] 
       (.C(clk),
        .CE(cs_cnt),
        .D(ctl_com_data[7]),
        .Q(com_data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cs_cnt[0]_i_1 
       (.I0(\cs_cnt_reg_n_0_[0] ),
        .I1(\FSM_onehot_cs_state_reg_n_0_[1] ),
        .I2(cs_cnt),
        .O(\cs_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \cs_cnt[1]_i_1 
       (.I0(\cs_cnt_reg_n_0_[1] ),
        .I1(\FSM_onehot_cs_state_reg_n_0_[1] ),
        .I2(\cs_cnt_reg_n_0_[0] ),
        .I3(cs_cnt),
        .O(\cs_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cs_cnt[2]_i_1 
       (.I0(\cs_cnt_reg_n_0_[2] ),
        .I1(\FSM_onehot_cs_state_reg_n_0_[1] ),
        .I2(\cs_cnt_reg_n_0_[1] ),
        .I3(\cs_cnt_reg_n_0_[0] ),
        .I4(cs_cnt),
        .O(\cs_cnt[2]_i_1_n_0 ));
  FDRE \cs_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cs_cnt[0]_i_1_n_0 ),
        .Q(\cs_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cs_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cs_cnt[1]_i_1_n_0 ),
        .Q(\cs_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \cs_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cs_cnt[2]_i_1_n_0 ),
        .Q(\cs_cnt_reg_n_0_[2] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \ctl_com_data[7]_i_1 
       (.I0(FSM_sequential_ctl_state_reg_n_0),
        .O(send_en));
  FDRE \ctl_com_data_reg[1] 
       (.C(clk),
        .CE(COM_RCLK),
        .D(1'b1),
        .Q(ctl_com_data[1]),
        .R(send_en));
  FDSE \ctl_com_data_reg[2] 
       (.C(clk),
        .CE(COM_RCLK),
        .D(ctl_com_data[1]),
        .Q(ctl_com_data[2]),
        .S(send_en));
  FDSE \ctl_com_data_reg[3] 
       (.C(clk),
        .CE(COM_RCLK),
        .D(ctl_com_data[2]),
        .Q(ctl_com_data[3]),
        .S(send_en));
  FDSE \ctl_com_data_reg[4] 
       (.C(clk),
        .CE(COM_RCLK),
        .D(ctl_com_data[3]),
        .Q(ctl_com_data[4]),
        .S(send_en));
  FDSE \ctl_com_data_reg[5] 
       (.C(clk),
        .CE(COM_RCLK),
        .D(ctl_com_data[4]),
        .Q(ctl_com_data[5]),
        .S(send_en));
  FDSE \ctl_com_data_reg[6] 
       (.C(clk),
        .CE(COM_RCLK),
        .D(ctl_com_data[5]),
        .Q(p_0_in),
        .S(send_en));
  FDSE \ctl_com_data_reg[7] 
       (.C(clk),
        .CE(COM_RCLK),
        .D(p_0_in),
        .Q(ctl_com_data[7]),
        .S(send_en));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[0]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[4] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[0]),
        .O(ctl_seg_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[10]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[14] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[10]),
        .O(ctl_seg_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[11]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[15] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[11]),
        .O(ctl_seg_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[12]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[16] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[12]),
        .O(ctl_seg_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[13]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[17] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[13]),
        .O(ctl_seg_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[14]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[18] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[14]),
        .O(ctl_seg_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[15]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[19] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[15]),
        .O(ctl_seg_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[16]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[20] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[16]),
        .O(ctl_seg_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[17]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[21] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[17]),
        .O(ctl_seg_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[18]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[22] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[18]),
        .O(ctl_seg_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[19]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[23] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[19]),
        .O(ctl_seg_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[1]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[5] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[1]),
        .O(ctl_seg_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[20]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[24] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[20]),
        .O(ctl_seg_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[21]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[25] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[21]),
        .O(ctl_seg_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[22]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[26] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[22]),
        .O(ctl_seg_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[23]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[27] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[23]),
        .O(ctl_seg_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[24]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[28] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[24]),
        .O(ctl_seg_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[25]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[29] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[25]),
        .O(ctl_seg_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[26]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[30] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[26]),
        .O(ctl_seg_data[26]));
  LUT2 #(
    .INIT(4'hB)) 
    \ctl_seg_data[27]_i_1 
       (.I0(COM_RCLK),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .O(\ctl_seg_data[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[27]_i_2 
       (.I0(\ctl_seg_data_reg_n_0_[31] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[27]),
        .O(ctl_seg_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[2]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[6] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[2]),
        .O(ctl_seg_data[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \ctl_seg_data[31]_i_1 
       (.I0(FSM_sequential_ctl_state_reg_n_0),
        .I1(COM_RCLK),
        .O(\ctl_seg_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[3]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[7] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[3]),
        .O(ctl_seg_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[4]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[8] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[4]),
        .O(ctl_seg_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[5]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[9] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[5]),
        .O(ctl_seg_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[6]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[10] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[6]),
        .O(ctl_seg_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[7]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[11] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[7]),
        .O(ctl_seg_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[8]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[12] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[8]),
        .O(ctl_seg_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctl_seg_data[9]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[13] ),
        .I1(FSM_sequential_ctl_state_reg_n_0),
        .I2(DATA[9]),
        .O(ctl_seg_data[9]));
  FDRE \ctl_seg_data_reg[0] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[0]),
        .Q(\ctl_seg_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[10] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[10]),
        .Q(\ctl_seg_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[11] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[11]),
        .Q(\ctl_seg_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[12] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[12]),
        .Q(\ctl_seg_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[13] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[13]),
        .Q(\ctl_seg_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[14] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[14]),
        .Q(\ctl_seg_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[15] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[15]),
        .Q(\ctl_seg_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[16] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[16]),
        .Q(\ctl_seg_data_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[17] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[17]),
        .Q(\ctl_seg_data_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[18] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[18]),
        .Q(\ctl_seg_data_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[19] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[19]),
        .Q(\ctl_seg_data_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[1] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[1]),
        .Q(\ctl_seg_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[20] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[20]),
        .Q(\ctl_seg_data_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[21] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[21]),
        .Q(\ctl_seg_data_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[22] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[22]),
        .Q(\ctl_seg_data_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[23] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[23]),
        .Q(\ctl_seg_data_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[24] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[24]),
        .Q(\ctl_seg_data_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[25] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[25]),
        .Q(\ctl_seg_data_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[26] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[26]),
        .Q(\ctl_seg_data_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[27] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[27]),
        .Q(\ctl_seg_data_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[28] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(DATA[28]),
        .Q(\ctl_seg_data_reg_n_0_[28] ),
        .R(\ctl_seg_data[31]_i_1_n_0 ));
  FDRE \ctl_seg_data_reg[29] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(DATA[29]),
        .Q(\ctl_seg_data_reg_n_0_[29] ),
        .R(\ctl_seg_data[31]_i_1_n_0 ));
  FDRE \ctl_seg_data_reg[2] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[2]),
        .Q(\ctl_seg_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[30] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(DATA[30]),
        .Q(\ctl_seg_data_reg_n_0_[30] ),
        .R(\ctl_seg_data[31]_i_1_n_0 ));
  FDRE \ctl_seg_data_reg[31] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(DATA[31]),
        .Q(\ctl_seg_data_reg_n_0_[31] ),
        .R(\ctl_seg_data[31]_i_1_n_0 ));
  FDRE \ctl_seg_data_reg[3] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[3]),
        .Q(\ctl_seg_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[4] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[4]),
        .Q(\ctl_seg_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[5] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[5]),
        .Q(\ctl_seg_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[6] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[6]),
        .Q(\ctl_seg_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[7] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[7]),
        .Q(\ctl_seg_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[8] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[8]),
        .Q(\ctl_seg_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \ctl_seg_data_reg[9] 
       (.C(clk),
        .CE(\ctl_seg_data[27]_i_1_n_0 ),
        .D(ctl_seg_data[9]),
        .Q(\ctl_seg_data_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBFDA)) 
    \seg_data[0]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[3] ),
        .I1(\ctl_seg_data_reg_n_0_[0] ),
        .I2(\ctl_seg_data_reg_n_0_[2] ),
        .I3(\ctl_seg_data_reg_n_0_[1] ),
        .O(gen_7seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE6EF)) 
    \seg_data[1]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[3] ),
        .I1(\ctl_seg_data_reg_n_0_[2] ),
        .I2(\ctl_seg_data_reg_n_0_[1] ),
        .I3(\ctl_seg_data_reg_n_0_[0] ),
        .O(gen_7seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \seg_data[2]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[3] ),
        .I1(\ctl_seg_data_reg_n_0_[1] ),
        .I2(\ctl_seg_data_reg_n_0_[2] ),
        .I3(\ctl_seg_data_reg_n_0_[0] ),
        .O(gen_7seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3EDB)) 
    \seg_data[3]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[3] ),
        .I1(\ctl_seg_data_reg_n_0_[2] ),
        .I2(\ctl_seg_data_reg_n_0_[1] ),
        .I3(\ctl_seg_data_reg_n_0_[0] ),
        .O(gen_7seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F67)) 
    \seg_data[4]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[3] ),
        .I1(\ctl_seg_data_reg_n_0_[2] ),
        .I2(\ctl_seg_data_reg_n_0_[1] ),
        .I3(\ctl_seg_data_reg_n_0_[0] ),
        .O(gen_7seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h617F)) 
    \seg_data[5]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[3] ),
        .I1(\ctl_seg_data_reg_n_0_[1] ),
        .I2(\ctl_seg_data_reg_n_0_[0] ),
        .I3(\ctl_seg_data_reg_n_0_[2] ),
        .O(gen_7seg[5]));
  LUT4 #(
    .INIT(16'hD6FB)) 
    \seg_data[6]_i_1 
       (.I0(\ctl_seg_data_reg_n_0_[3] ),
        .I1(\ctl_seg_data_reg_n_0_[2] ),
        .I2(\ctl_seg_data_reg_n_0_[1] ),
        .I3(\ctl_seg_data_reg_n_0_[0] ),
        .O(gen_7seg[6]));
  FDRE \seg_data_reg[0] 
       (.C(clk),
        .CE(cs_cnt),
        .D(gen_7seg[0]),
        .Q(\seg_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \seg_data_reg[1] 
       (.C(clk),
        .CE(cs_cnt),
        .D(gen_7seg[1]),
        .Q(\seg_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \seg_data_reg[2] 
       (.C(clk),
        .CE(cs_cnt),
        .D(gen_7seg[2]),
        .Q(\seg_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \seg_data_reg[3] 
       (.C(clk),
        .CE(cs_cnt),
        .D(gen_7seg[3]),
        .Q(\seg_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \seg_data_reg[4] 
       (.C(clk),
        .CE(cs_cnt),
        .D(gen_7seg[4]),
        .Q(\seg_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \seg_data_reg[5] 
       (.C(clk),
        .CE(cs_cnt),
        .D(gen_7seg[5]),
        .Q(\seg_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \seg_data_reg[6] 
       (.C(clk),
        .CE(cs_cnt),
        .D(gen_7seg[6]),
        .Q(\seg_data_reg_n_0_[6] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    send_en_i_1
       (.I0(COM_RCLK),
        .I1(p_0_in),
        .I2(FSM_sequential_ctl_state_reg_n_0),
        .O(send_en_i_1_n_0));
  FDRE send_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(send_en_i_1_n_0),
        .Q(send_en_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
