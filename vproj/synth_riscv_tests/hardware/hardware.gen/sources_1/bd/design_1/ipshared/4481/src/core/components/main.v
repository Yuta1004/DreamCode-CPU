module main
    # (
        parameter START_ADDR = 32'h0
    )
    (
        /* ----- 制御 ----- */
        input wire                      CLK,
        input wire                      RST,

        /* ----- MMU接続 ----- */
        // 命令
        output wire                     INST_RDEN,
        output wire [31:0]              INST_RIADDR,
        input wire  [31:0]              INST_ROADDR,
        input wire                      INST_RVALID,
        input wire  [31:0]              INST_RDATA,

        // データ
        output wire                     DATA_RDEN,
        output wire [31:0]              DATA_RIADDR,
        input wire  [31:0]              DATA_ROADDR,
        input wire                      DATA_RVALID,
        input wire  [31:0]              DATA_RDATA,
        output wire                     DATA_WREN,
        output wire [3:0]               DATA_WSTRB,
        output wire [31:0]              DATA_WADDR,
        output wire [31:0]              DATA_WDATA,

        // ハザード
        input wire                      MEM_WAIT,

        /* ----- 割り込み ----- */
        input wire                      INT_EN,
        input wire  [3:0]               INT_CODE
    );

    /* ----- パイプライン制御 ----- */
    wire        flush    = trap_en || memr_jmp_do;
    wire [31:0] flush_pc = trap_en ? trap_jmp_to : memr_jmp_pc;
    wire        stall    = !check_rs1_valid || !check_rs2_valid || !check_csr_valid;

    /* ----- 1. 命令フェッチ ----- */
    wire [31:0] fetch_pc, fetch_inst;

    fetch # (
        .START_ADDR (START_ADDR)
    ) fetch (
        // 制御
        .CLK        (CLK),
        .RST        (RST),
        .FLUSH      (flush),
        .FLUSH_PC   (flush_pc),
        .STALL      (stall),
        .MEM_WAIT   (MEM_WAIT),

        // MMUとの接続
        .INST_RDEN  (INST_RDEN),
        .INST_RIADDR(INST_RIADDR),
        .INST_RVALID(INST_RVALID),
        .INST_ROADDR(INST_ROADDR),
        .INST_RDATA (INST_RDATA),

        // 後段との接続
        .FETCH_PC   (fetch_pc),
        .FETCH_INST (fetch_inst)
    );

    /* ----- 2. 命令デコード ----- */
    wire [31:0] decode_pc, decode_imm;
    wire [16:0] decode_opcode;
    wire [11:0] decode_csr;
    wire [4:0]  decode_rd, decode_rs1, decode_rs2;

    decode decode (
        // 制御
        .CLK            (CLK),
        .RST            (RST),
        .FLUSH          (flush),
        .STALL          (stall),
        .MEM_WAIT       (MEM_WAIT),

        // 前段との接続
        .PC             (fetch_pc),
        .INST           (fetch_inst),

        // 後段との接続
        .DECODE_PC      (decode_pc),
        .DECODE_OPCODE  (decode_opcode),
        .DECODE_RD      (decode_rd),
        .DECODE_RS1     (decode_rs1),
        .DECODE_RS2     (decode_rs2),
        .DECODE_CSR     (decode_csr),
        .DECODE_IMM     (decode_imm)
    );

    /* ----- 3(1). 命令検査 ----- */
    wire [31:0] check_pc, check_imm;
    wire [11:0] check_csr;
    wire [16:0] check_opcode;
    wire [4:0]  check_rd, check_rs1, check_rs2;

    check check (
        // 制御
        .CLK            (CLK),
        .RST            (RST),
        .FLUSH          (flush),
        .STALL          (stall),
        .MEM_WAIT       (MEM_WAIT),

        // 前段との接続
        .PC             (decode_pc),
        .OPCODE         (decode_opcode),
        .RD             (decode_rd),
        .RS1            (decode_rs1),
        .RS2            (decode_rs2),
        .CSR            (decode_csr),
        .IMM            (decode_imm),

        // 後段との接続
        .CHECK_PC       (check_pc),
        .CHECK_OPCODE   (check_opcode),
        .CHECK_RD       (check_rd),
        .CHECK_RS1      (check_rs1),
        .CHECK_RS2      (check_rs2),
        .CHECK_CSR      (check_csr),
        .CHECK_IMM      (check_imm)
    );

    /* ----- 3(2). CSRアクセス ----- */
    wire [1:0]  trap_vec_mode;
    wire [31:0] trap_vec_base;
    wire        int_allow;

    wire [31:0] check_csr_data;
    wire        check_csr_valid;

    reg_std_csr reg_std_csr_0 (
        // 制御
        .CLK                (CLK),
        .RST                (RST),
        .FLUSH              (flush),
        .STALL              (stall),
        .MEM_WAIT           (MEM_WAIT),
        .TRAP_EN            (trap_en),
        .TRAP_CODE          (trap_code),
        .TRAP_PC            (trap_pc),
        .TRAP_VEC_MODE      (trap_vec_mode),
        .TRAP_VEC_BASE      (trap_vec_base),
        .INT_ALLOW          (int_allow),

        // レジスタアクセス
        .RADDR              (decode_csr),
        .RVALID             (check_csr_valid),
        .RDATA              (check_csr_data),
        .WREN               (memr_csr_w_en),
        .WADDR              (memr_csr_w_addr),
        .WDATA              (memr_csr_w_data),

        // フォワーディング
        .FWD_CSR_ADDR       (check_csr),
        .FWD_EXEC_EN        (exec_csr_w_en),
        .FWD_EXEC_ADDR      (exec_csr_w_addr),
        .FWD_EXEC_DATA      (exec_csr_w_data)
    );

    /* ----- 3(3). レジスタアクセス ----- */
    wire [31:0] check_rs1_data, check_rs2_data;
    wire        check_rs1_valid, check_rs2_valid;

    reg_std_rv32i reg_std_rv32i_0 (
        // 制御
        .CLK                (CLK),
        .RST                (RST),
        .FLUSH              (flush),
        .STALL              (stall),
        .MEM_WAIT           (MEM_WAIT),

        // レジスタアクセス
        .A_RADDR            (decode_rs1),
        .A_RVALID           (check_rs1_valid),
        .A_RDATA            (check_rs1_data),
        .B_RADDR            (decode_rs2),
        .B_RVALID           (check_rs2_valid),
        .B_RDATA            (check_rs2_data),
        .WADDR              (memr_reg_w_rd),
        .WDATA              (memr_reg_w_data),

        // フォワーディング
        .FWD_REG_ADDR       (check_rd),
        .FWD_EXEC_EN        (exec_reg_w_en),
        .FWD_EXEC_ADDR      (exec_reg_w_rd),
        .FWD_EXEC_DATA      (exec_reg_w_data)
    );

    /* ----- 4. 実行(rv32i:core) ----- */
    wire        exec_reg_w_en, exec_mem_r_en, exec_mem_r_signed, exec_csr_w_en, exec_mem_w_en, exec_jmp_do, exec_exc_en;
    wire [31:0] exec_pc, exec_reg_w_data, exec_csr_w_data, exec_mem_r_addr, exec_mem_w_addr, exec_mem_w_data, exec_jmp_pc;
    wire [11:0] exec_csr_w_addr;
    wire [4:0]  exec_reg_w_rd, exec_mem_r_rd;
    wire [3:0]  exec_mem_r_strb, exec_mem_w_strb, exec_exc_code;

    exec exec (
        // 制御
        .CLK                (CLK),
        .RST                (RST),
        .FLUSH              (flush),
        .STALL              (stall),
        .MEM_WAIT           (MEM_WAIT),

        // 前段との接続
        .PC                 (check_pc),
        .OPCODE             (check_opcode),
        .RD_ADDR            (check_rd),
        .RS1_ADDR           (check_rs1),
        .RS1_DATA           (check_rs1_data),
        .RS2_ADDR           (check_rs2),
        .RS2_DATA           (check_rs2_data),
        .CSR_ADDR           (check_csr),
        .CSR_DATA           (check_csr_data),
        .IMM                (check_imm),

        // 後段との接続
        .EXEC_PC            (exec_pc),
        .EXEC_REG_W_EN      (exec_reg_w_en),
        .EXEC_REG_W_RD      (exec_reg_w_rd),
        .EXEC_REG_W_DATA    (exec_reg_w_data),
        .EXEC_CSR_W_EN      (exec_csr_w_en),
        .EXEC_CSR_W_ADDR    (exec_csr_w_addr),
        .EXEC_CSR_W_DATA    (exec_csr_w_data),
        .EXEC_MEM_R_EN      (exec_mem_r_en),
        .EXEC_MEM_R_RD      (exec_mem_r_rd),
        .EXEC_MEM_R_ADDR    (exec_mem_r_addr),
        .EXEC_MEM_R_STRB    (exec_mem_r_strb),
        .EXEC_MEM_R_SIGNED  (exec_mem_r_signed),
        .EXEC_MEM_W_EN      (exec_mem_w_en),
        .EXEC_MEM_W_ADDR    (exec_mem_w_addr),
        .EXEC_MEM_W_STRB    (exec_mem_w_strb),
        .EXEC_MEM_W_DATA    (exec_mem_w_data),
        .EXEC_JMP_DO        (exec_jmp_do),
        .EXEC_JMP_PC        (exec_jmp_pc),
        .EXEC_EXC_EN        (exec_exc_en),
        .EXEC_EXC_CODE      (exec_exc_code)
    );

    /* ----- 5(1). メモリアクセス(r) ----- */
    wire        memr_csr_w_en, memr_mem_w_en, memr_jmp_do;
    wire [31:0] memr_reg_w_data, memr_csr_w_data, memr_mem_w_addr, memr_mem_w_data, memr_jmp_pc;
    wire [11:0] memr_csr_w_addr;
    wire [4:0]  memr_reg_w_rd;
    wire [3:0]  memr_mem_w_strb;

    mread mread (
        // 制御
        .CLK                    (CLK),
        .RST                    (RST),
        .FLUSH                  (flush),
        .MEM_WAIT               (MEM_WAIT),

        // MMUとの接続
        .DATA_RDEN              (DATA_RDEN),
        .DATA_RIADDR            (DATA_RIADDR),
        .DATA_ROADDR            (DATA_ROADDR),
        .DATA_RVALID            (DATA_RVALID),
        .DATA_RDATA             (DATA_RDATA),

        // 前段との接続
        .REG_W_RD               (exec_reg_w_rd),
        .REG_W_DATA             (exec_reg_w_data),
        .CSR_W_EN               (exec_csr_w_en),
        .CSR_W_ADDR             (exec_csr_w_addr),
        .CSR_W_DATA             (exec_csr_w_data),
        .MEM_R_EN               (exec_mem_r_en),
        .MEM_R_RD               (exec_mem_r_rd),
        .MEM_R_ADDR             (exec_mem_r_addr),
        .MEM_R_STRB             (exec_mem_r_strb),
        .MEM_R_SIGNED           (exec_mem_r_signed),
        .MEM_W_EN               (exec_mem_w_en),
        .MEM_W_ADDR             (exec_mem_w_addr),
        .MEM_W_STRB             (exec_mem_w_strb),
        .MEM_W_DATA             (exec_mem_w_data),
        .JMP_DO                 (exec_jmp_do),
        .JMP_PC                 (exec_jmp_pc),

        // 後段との接続
        .MEMR_REG_W_RD          (memr_reg_w_rd),
        .MEMR_REG_W_DATA        (memr_reg_w_data),
        .MEMR_CSR_W_EN          (memr_csr_w_en),
        .MEMR_CSR_W_ADDR        (memr_csr_w_addr),
        .MEMR_CSR_W_DATA        (memr_csr_w_data),
        .MEMR_MEM_W_EN          (memr_mem_w_en),
        .MEMR_MEM_W_STRB        (memr_mem_w_strb),
        .MEMR_MEM_W_ADDR        (memr_mem_w_addr),
        .MEMR_MEM_W_DATA        (memr_mem_w_data),
        .MEMR_JMP_DO            (memr_jmp_do),
        .MEMR_JMP_PC            (memr_jmp_pc)
    );

    /* ----- 5(2). Trap処理 ----- */
    wire        trap_en;
    wire [31:0] trap_pc, trap_code, trap_jmp_to;

    trap trap (
        // 制御
        .CLK                (CLK),
        .RST                (RST),
        .FLUSH              (flush),
        .MEM_WAIT           (MEM_WAIT),

        // 割り込み
        .INT_ALLOW          (int_allow),
        .INT_EN             (INT_EN),
        .INT_CODE           (INT_CODE),

        // Trap情報
        .TRAP_VEC_MODE      (trap_vec_mode),
        .TRAP_VEC_BASE      (trap_vec_base),
        .TRAP_PC            (trap_pc),
        .TRAP_EN            (trap_en),
        .TRAP_CODE          (trap_code),
        .TRAP_JMP_TO        (trap_jmp_to),

        // 前段との接続
        .FETCH_PC           (fetch_pc),
        .DECODE_PC          (decode_pc),
        .CHECK_PC           (check_pc[31:0]),
        .EXEC_PC            (exec_pc),
        .EXEC_EXC_EN        (exec_exc_en),
        .EXEC_EXC_CODE      (exec_exc_code)
    );

    /* ----- 6. メモリアクセス(w) ----- */
    assign DATA_WREN  = flush ? 1'b0 : memr_mem_w_en;
    assign DATA_WSTRB = flush ? 4'b0 : memr_mem_w_strb;
    assign DATA_WADDR = flush ? 32'b0 : memr_mem_w_addr;
    assign DATA_WDATA = flush ? 32'b0 : memr_mem_w_data;

endmodule
