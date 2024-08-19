// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Aug 19 02:47:39 2024
// Host        : plab-imac running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/nakagami/Develop/project/DreamCode/cpu/vproj/synth_riscv_tests/hardware/hardware.gen/sources_1/bd/design_1/ip/design_1_cpu_monitor_0_0/design_1_cpu_monitor_0_0_sim_netlist.v
// Design      : design_1_cpu_monitor_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_cpu_monitor_0_0,cpu_monitor_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "cpu_monitor_controller,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_cpu_monitor_0_0
   (CLK,
    GP,
    STAT,
    S_AXI_ACLK,
    S_AXI_ARSTN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  input [31:0]GP;
  input [3:0]STAT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  input S_AXI_ARSTN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [15:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [15:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire [31:0]GP;
  wire [3:0]STAT;
  wire S_AXI_ACLK;
  wire [15:0]S_AXI_ARADDR;
  wire S_AXI_ARREADY;
  wire S_AXI_ARSTN;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_cpu_monitor_0_0_cpu_monitor_controller inst
       (.GP(GP),
        .STAT(STAT),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARSTN(S_AXI_ARSTN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

(* ORIG_REF_NAME = "cpu_monitor_controller" *) 
module design_1_cpu_monitor_0_0_cpu_monitor_controller
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_BVALID,
    S_AXI_RVALID,
    S_AXI_ACLK,
    STAT,
    GP,
    S_AXI_ARADDR,
    S_AXI_ARSTN,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_ARVALID,
    S_AXI_RREADY);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  input S_AXI_ACLK;
  input [3:0]STAT;
  input [31:0]GP;
  input [15:0]S_AXI_ARADDR;
  input S_AXI_ARSTN;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;

  wire [31:0]GP;
  wire [3:0]STAT;
  wire S_AXI_ACLK;
  wire [15:0]S_AXI_ARADDR;
  wire S_AXI_ARREADY;
  wire S_AXI_ARSTN;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;

  design_1_cpu_monitor_0_0_cpu_monitor_controller_AXI cpu_monitor_controller_AXI_inst
       (.GP(GP),
        .STAT(STAT),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARSTN(S_AXI_ARSTN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

(* ORIG_REF_NAME = "cpu_monitor_controller_AXI" *) 
module design_1_cpu_monitor_0_0_cpu_monitor_controller_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_BVALID,
    S_AXI_RVALID,
    S_AXI_ACLK,
    STAT,
    GP,
    S_AXI_ARADDR,
    S_AXI_ARSTN,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_ARVALID,
    S_AXI_RREADY);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  input S_AXI_ACLK;
  input [3:0]STAT;
  input [31:0]GP;
  input [15:0]S_AXI_ARADDR;
  input S_AXI_ARSTN;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;

  wire [31:0]GP;
  wire [3:0]STAT;
  wire S_AXI_ACLK;
  wire [15:0]S_AXI_ARADDR;
  wire S_AXI_ARREADY;
  wire S_AXI_ARSTN;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0__0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0__0;
  wire p_0_in;
  wire [31:0]reg_data_out;
  wire slv_reg_rden__0;

  LUT6 #(
    .INIT(64'hF7FFF700F700F700)) 
    aw_en_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready0
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(axi_awready0__0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARSTN),
        .O(p_0_in));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0__0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[31]_i_2 
       (.I0(S_AXI_ARADDR[12]),
        .I1(S_AXI_ARADDR[4]),
        .I2(S_AXI_ARADDR[15]),
        .I3(S_AXI_ARADDR[7]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_rdata[31]_i_3 
       (.I0(S_AXI_ARADDR[11]),
        .I1(S_AXI_ARADDR[9]),
        .I2(S_AXI_ARADDR[13]),
        .I3(S_AXI_ARADDR[10]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \axi_rdata[31]_i_4 
       (.I0(S_AXI_ARADDR[14]),
        .I1(S_AXI_ARADDR[6]),
        .I2(S_AXI_ARADDR[8]),
        .I3(S_AXI_ARADDR[5]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \axi_rdata[31]_i_5 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARADDR[1]),
        .I2(S_AXI_ARADDR[2]),
        .I3(S_AXI_ARADDR[3]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_wready0
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(axi_wready0__0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0__0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  design_1_cpu_monitor_0_0_cpu_monitor_controller_auto_generated cpu_monitor_controller_auto_generated_inst
       (.D(reg_data_out),
        .GP(GP),
        .STAT(STAT),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[3:0]),
        .\axi_rdata_reg[0] (\axi_rdata[31]_i_2_n_0 ),
        .\axi_rdata_reg[0]_0 (\axi_rdata[31]_i_3_n_0 ),
        .\axi_rdata_reg[0]_1 (\axi_rdata[31]_i_4_n_0 ),
        .\axi_rdata_reg[4] (\axi_rdata[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "cpu_monitor_controller_auto_generated" *) 
module design_1_cpu_monitor_0_0_cpu_monitor_controller_auto_generated
   (D,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    \axi_rdata_reg[0]_1 ,
    S_AXI_ARADDR,
    \axi_rdata_reg[4] ,
    STAT,
    S_AXI_ACLK,
    GP);
  output [31:0]D;
  input \axi_rdata_reg[0] ;
  input \axi_rdata_reg[0]_0 ;
  input \axi_rdata_reg[0]_1 ;
  input [3:0]S_AXI_ARADDR;
  input \axi_rdata_reg[4] ;
  input [3:0]STAT;
  input S_AXI_ACLK;
  input [31:0]GP;

  wire [31:0]D;
  wire [31:0]GP;
  wire [3:0]STAT;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_1 ;
  wire \axi_rdata_reg[4] ;
  wire [31:0]\icache_slv_reg1_reg[0] ;
  wire [31:0]\icache_slv_reg1_reg[1] ;
  wire [3:0]\icache_slv_reg2_reg[0] ;
  wire [3:0]\icache_slv_reg2_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\axi_rdata[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFDFCFFFFFDFFFF)) 
    \axi_rdata[0]_i_2 
       (.I0(\icache_slv_reg1_reg[1] [0]),
        .I1(S_AXI_ARADDR[0]),
        .I2(S_AXI_ARADDR[1]),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\icache_slv_reg2_reg[1] [0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [10]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [11]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [12]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [13]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [14]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [15]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [16]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [17]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [18]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [19]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\axi_rdata[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFDFCFFFFFDFFFF)) 
    \axi_rdata[1]_i_2 
       (.I0(\icache_slv_reg1_reg[1] [1]),
        .I1(S_AXI_ARADDR[0]),
        .I2(S_AXI_ARADDR[1]),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\icache_slv_reg2_reg[1] [1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [20]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [21]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [22]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [23]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [24]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [25]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [26]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [27]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [28]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [29]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\axi_rdata[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFDFCFFFFFDFFFF)) 
    \axi_rdata[2]_i_2 
       (.I0(\icache_slv_reg1_reg[1] [2]),
        .I1(S_AXI_ARADDR[0]),
        .I2(S_AXI_ARADDR[1]),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\icache_slv_reg2_reg[1] [2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [30]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[31]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [31]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\axi_rdata[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFDFCFFFFFDFFFF)) 
    \axi_rdata[3]_i_2 
       (.I0(\icache_slv_reg1_reg[1] [3]),
        .I1(S_AXI_ARADDR[0]),
        .I2(S_AXI_ARADDR[1]),
        .I3(S_AXI_ARADDR[3]),
        .I4(S_AXI_ARADDR[2]),
        .I5(\icache_slv_reg2_reg[1] [3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [4]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [5]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [6]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [7]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [8]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h00001000)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(\axi_rdata_reg[0]_1 ),
        .I3(\icache_slv_reg1_reg[1] [9]),
        .I4(\axi_rdata_reg[4] ),
        .O(D[9]));
  FDRE \icache_slv_reg1_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[0]),
        .Q(\icache_slv_reg1_reg[0] [0]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[10]),
        .Q(\icache_slv_reg1_reg[0] [10]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[11]),
        .Q(\icache_slv_reg1_reg[0] [11]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[12]),
        .Q(\icache_slv_reg1_reg[0] [12]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[13]),
        .Q(\icache_slv_reg1_reg[0] [13]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[14]),
        .Q(\icache_slv_reg1_reg[0] [14]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[15]),
        .Q(\icache_slv_reg1_reg[0] [15]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[16]),
        .Q(\icache_slv_reg1_reg[0] [16]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[17]),
        .Q(\icache_slv_reg1_reg[0] [17]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[18]),
        .Q(\icache_slv_reg1_reg[0] [18]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[19]),
        .Q(\icache_slv_reg1_reg[0] [19]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[1]),
        .Q(\icache_slv_reg1_reg[0] [1]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[20]),
        .Q(\icache_slv_reg1_reg[0] [20]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[21]),
        .Q(\icache_slv_reg1_reg[0] [21]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[22]),
        .Q(\icache_slv_reg1_reg[0] [22]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[23]),
        .Q(\icache_slv_reg1_reg[0] [23]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[24]),
        .Q(\icache_slv_reg1_reg[0] [24]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[25]),
        .Q(\icache_slv_reg1_reg[0] [25]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[26]),
        .Q(\icache_slv_reg1_reg[0] [26]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[27]),
        .Q(\icache_slv_reg1_reg[0] [27]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[28]),
        .Q(\icache_slv_reg1_reg[0] [28]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[29]),
        .Q(\icache_slv_reg1_reg[0] [29]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[2]),
        .Q(\icache_slv_reg1_reg[0] [2]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[30]),
        .Q(\icache_slv_reg1_reg[0] [30]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[31]),
        .Q(\icache_slv_reg1_reg[0] [31]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[3]),
        .Q(\icache_slv_reg1_reg[0] [3]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[4]),
        .Q(\icache_slv_reg1_reg[0] [4]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[5]),
        .Q(\icache_slv_reg1_reg[0] [5]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[6]),
        .Q(\icache_slv_reg1_reg[0] [6]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[7]),
        .Q(\icache_slv_reg1_reg[0] [7]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[8]),
        .Q(\icache_slv_reg1_reg[0] [8]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[0][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(GP[9]),
        .Q(\icache_slv_reg1_reg[0] [9]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [0]),
        .Q(\icache_slv_reg1_reg[1] [0]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [10]),
        .Q(\icache_slv_reg1_reg[1] [10]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [11]),
        .Q(\icache_slv_reg1_reg[1] [11]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [12]),
        .Q(\icache_slv_reg1_reg[1] [12]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [13]),
        .Q(\icache_slv_reg1_reg[1] [13]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [14]),
        .Q(\icache_slv_reg1_reg[1] [14]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [15]),
        .Q(\icache_slv_reg1_reg[1] [15]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [16]),
        .Q(\icache_slv_reg1_reg[1] [16]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [17]),
        .Q(\icache_slv_reg1_reg[1] [17]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [18]),
        .Q(\icache_slv_reg1_reg[1] [18]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [19]),
        .Q(\icache_slv_reg1_reg[1] [19]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [1]),
        .Q(\icache_slv_reg1_reg[1] [1]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [20]),
        .Q(\icache_slv_reg1_reg[1] [20]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][21] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [21]),
        .Q(\icache_slv_reg1_reg[1] [21]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][22] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [22]),
        .Q(\icache_slv_reg1_reg[1] [22]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][23] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [23]),
        .Q(\icache_slv_reg1_reg[1] [23]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [24]),
        .Q(\icache_slv_reg1_reg[1] [24]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][25] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [25]),
        .Q(\icache_slv_reg1_reg[1] [25]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][26] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [26]),
        .Q(\icache_slv_reg1_reg[1] [26]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][27] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [27]),
        .Q(\icache_slv_reg1_reg[1] [27]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][28] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [28]),
        .Q(\icache_slv_reg1_reg[1] [28]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][29] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [29]),
        .Q(\icache_slv_reg1_reg[1] [29]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [2]),
        .Q(\icache_slv_reg1_reg[1] [2]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][30] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [30]),
        .Q(\icache_slv_reg1_reg[1] [30]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][31] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [31]),
        .Q(\icache_slv_reg1_reg[1] [31]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [3]),
        .Q(\icache_slv_reg1_reg[1] [3]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [4]),
        .Q(\icache_slv_reg1_reg[1] [4]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [5]),
        .Q(\icache_slv_reg1_reg[1] [5]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [6]),
        .Q(\icache_slv_reg1_reg[1] [6]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [7]),
        .Q(\icache_slv_reg1_reg[1] [7]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [8]),
        .Q(\icache_slv_reg1_reg[1] [8]),
        .R(1'b0));
  FDRE \icache_slv_reg1_reg[1][9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg1_reg[0] [9]),
        .Q(\icache_slv_reg1_reg[1] [9]),
        .R(1'b0));
  FDRE \icache_slv_reg2_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(STAT[0]),
        .Q(\icache_slv_reg2_reg[0] [0]),
        .R(1'b0));
  FDRE \icache_slv_reg2_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(STAT[1]),
        .Q(\icache_slv_reg2_reg[0] [1]),
        .R(1'b0));
  FDRE \icache_slv_reg2_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(STAT[2]),
        .Q(\icache_slv_reg2_reg[0] [2]),
        .R(1'b0));
  FDRE \icache_slv_reg2_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(STAT[3]),
        .Q(\icache_slv_reg2_reg[0] [3]),
        .R(1'b0));
  FDRE \icache_slv_reg2_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg2_reg[0] [0]),
        .Q(\icache_slv_reg2_reg[1] [0]),
        .R(1'b0));
  FDRE \icache_slv_reg2_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg2_reg[0] [1]),
        .Q(\icache_slv_reg2_reg[1] [1]),
        .R(1'b0));
  FDRE \icache_slv_reg2_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg2_reg[0] [2]),
        .Q(\icache_slv_reg2_reg[1] [2]),
        .R(1'b0));
  FDRE \icache_slv_reg2_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\icache_slv_reg2_reg[0] [3]),
        .Q(\icache_slv_reg2_reg[1] [3]),
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
