module cpu_monitor_controller_auto_generated #
    (
        parameter integer C_S_AXI_DATA_WIDTH    = 32,
        parameter integer C_S_AXI_ADDR_WIDTH    = 16
    )
    (
        // 回路接続
        input wire  CLK,
input wire [31:0] GP,
input wire [3:0] STAT,

        // AXIバス
        input wire                              S_AXI_ACLK,
        input wire                              S_AXI_ARSTN,
        input wire [C_S_AXI_ADDR_WIDTH-1:0]     S_AXI_AWADDR,
        input wire                              S_AXI_AWVALID,
        output wire                             S_AXI_AWREADY,
        input wire [C_S_AXI_DATA_WIDTH-1:0]     S_AXI_WDATA,
        input wire                              S_AXI_WVALID,
        output wire                             S_AXI_WREADY,
        input wire [C_S_AXI_ADDR_WIDTH-1:0]     S_AXI_ARADDR,

        output reg [C_S_AXI_DATA_WIDTH-1:0]     reg_data_out
    );

    /* ----- 接続回路 ==> AXIバス ----- */

    // 接続回路からの入力
    reg [31:0] icache_slv_reg1 [0:1];
reg [3:0] icache_slv_reg2 [0:1];

    always @ (posedge S_AXI_ACLK) begin
        icache_slv_reg1[1] <= icache_slv_reg1[0]; icache_slv_reg1[0] <= GP;
icache_slv_reg2[1] <= icache_slv_reg2[0]; icache_slv_reg2[0] <= STAT;
    end

    // AXIバスへの出力生成
    always @* begin
        case (S_AXI_ARADDR)
            16'h0004: reg_data_out <= icache_slv_reg1[1];
16'h0008: reg_data_out <= icache_slv_reg2[1];
            default     : reg_data_out <= 0;
        endcase
    end

endmodule
