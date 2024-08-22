module check
    (
        /* ----- 制御 ----- */
        input wire          CLK,
        input wire          RST,
        input wire          FLUSH,
        input wire          STALL,
        input wire          MEM_WAIT,

        /* ----- デコード部2との接続 ----- */
        input wire  [31:0]  PC,
        input wire  [16:0]  OPCODE,
        input wire  [4:0]   RD,
        input wire  [4:0]   RS1,
        input wire  [4:0]   RS2,
        input wire  [11:0]  CSR,
        input wire  [31:0]  IMM,

        /* ----- スケジューラ1との接続 ----- */
        output wire [31:0]  CHECK_PC,
        output wire [16:0]  CHECK_OPCODE,
        output wire [4:0]   CHECK_RD,
        output wire [4:0]   CHECK_RS1,
        output wire [4:0]   CHECK_RS2,
        output wire [11:0]  CHECK_CSR,
        output wire [31:0]  CHECK_IMM
    );

    /* ----- 入力取り込み ----- */
    reg [31:0]  pc, imm;
    reg [16:0]  opcode;
    reg [11:0]  csr;
    reg [4:0]   rd, rs1, rs2;

    always @ (posedge CLK) begin
        if (RST) begin
            pc <= 'b0;
            opcode <= 'b0;
            rd <= 'b0;
            rs1 <= 'b0;
            rs2 <= 'b0;
            csr <= 12'b0;
            imm <= 32'b0;
        end
        else if (MEM_WAIT) begin
            // do nothing
        end
        else if (FLUSH) begin
            pc <= 'b0;
            opcode <= 'b0;
            rd <= 'b0;
            rs1 <= 'b0;
            rs2 <= 'b0;
            csr <= 12'b0;
            imm <= 32'b0;
        end
        else if (STALL) begin
            // do nothing
        end
        else begin
            pc <= PC;
            opcode <= OPCODE;
            rd <= RD;
            rs1 <= RS1;
            rs2 <= RS2;
            csr <= CSR;
            imm <= IMM;
        end
    end

    /* ----- チェック ----- */
    assign CHECK_PC     = pc;
    assign CHECK_OPCODE = opcode;
    assign CHECK_RD     = rd;
    assign CHECK_RS1    = rs1;
    assign CHECK_RS2    = rs2;
    assign CHECK_CSR    = csr;
    assign CHECK_IMM    = imm;

endmodule
