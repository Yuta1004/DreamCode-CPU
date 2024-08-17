// Mem
wire        MEM_WAIT                = cpu.mem.MEM_WAIT;
wire        INST_RDEN               = cpu.mem.INST_RDEN;
wire [31:0] INST_RIADDR             = cpu.mem.INST_RIADDR;
wire [31:0] INST_ROADDR             = cpu.mem.INST_ROADDR;
wire        INST_RVALID             = cpu.mem.INST_RVALID;
wire [31:0] INST_RDATA              = cpu.mem.INST_RDATA;
wire        DATA_RDEN               = cpu.mem.DATA_RDEN;
wire [31:0] DATA_RIADDR             = cpu.mem.DATA_RIADDR;
wire [31:0] DATA_ROADDR             = cpu.mem.DATA_ROADDR;
wire        DATA_RVALID             = cpu.mem.DATA_RVALID;
wire [31:0] DATA_RDATA              = cpu.mem.DATA_RDATA;
wire        DATA_WREN               = cpu.mem.DATA_WREN;
wire [3:0]  DATA_WSTRB              = cpu.mem.DATA_WSTRB;
wire [31:0] DATA_WADDR              = cpu.mem.DATA_WADDR;
wire [31:0] DATA_WDATA              = cpu.mem.DATA_WDATA;

// CLINT
wire [31:0] CLINT_MTIME             = cpu.clint.mtime[0];
wire [31:0] CLINT_MTIMECMP          = cpu.clint.mtimecmp[0];
wire        CLINT_INT_EN            = cpu.clint.INT_EN;
wire [3:0]  CLINT_INT_CODE          = cpu.clint.INT_CODE;

// Core: Status
wire        INT_ALLOW               = cpu.core.main.int_allow;

// Core: Pipeline
wire        FLUSH                   = cpu.core.main.flush;
wire [31:0] FLUSH_PC                = cpu.core.main.flush_pc;
wire        STALL                   = cpu.core.main.stall;

// Core: Fetch
wire [31:0] FETCH_PC                = cpu.core.main.fetch_pc;
wire [31:0] FETCH_INST              = cpu.core.main.fetch_inst;

// Core: Decode
wire [31:0] DECODE_PC               = cpu.core.main.decode_pc;
wire [6:0]  DECODE_OPCODE           = cpu.core.main.decode_opcode;
wire [4:0]  DECODE_RD               = cpu.core.main.decode_rd;
wire [4:0]  DECODE_RS1              = cpu.core.main.decode_rs1;
wire [4:0]  DECODE_RS2              = cpu.core.main.decode_rs2;
wire [11:0] DECODE_CSR              = cpu.core.main.decode_csr;
wire [31:0] DECODE_IMM              = cpu.core.main.decode_imm;

// Core: Check
wire [31:0] CHECK_PC                = cpu.core.main.check_pc;
wire [6:0]  CHECK_OPCODE            = cpu.core.main.check_opcode;
wire [4:0]  CHECK_RD                = cpu.core.main.check_rd;
wire [4:0]  CHECK_RS1               = cpu.core.main.check_rs1;
wire [4:0]  CHECK_RS2               = cpu.core.main.check_rs2;
wire [11:0] CHECK_CSR               = cpu.core.main.check_csr;
wire [31:0] CHECK_IMM               = cpu.core.main.check_imm;

// Core: Exec
wire [31:0] EXEC_MAIN_PC            = cpu.core.main.exec_pc;
wire        EXEC_MAIN_REG_W_EN      = cpu.core.main.exec_reg_w_en;
wire [4:0]  EXEC_MAIN_REG_W_RD      = cpu.core.main.exec_reg_w_rd;
wire [31:0] EXEC_MAIN_REG_W_DATA    = cpu.core.main.exec_reg_w_data;
wire [11:0] EXEC_MAIN_CSR_W_ADDR    = cpu.core.main.exec_csr_w_addr;
wire [31:0] EXEC_MAIN_CSR_W_DATA    = cpu.core.main.exec_csr_w_data;
wire        EXEC_MAIN_MEM_R_EN      = cpu.core.main.exec_mem_r_en;
wire [4:0]  EXEC_MAIN_MEM_R_RD      = cpu.core.main.exec_mem_r_rd;
wire [31:0] EXEC_MAIN_MEM_R_ADDR    = cpu.core.main.exec_mem_r_addr;
wire [3:0]  EXEC_MAIN_MEM_R_STRB    = cpu.core.main.exec_mem_r_strb;
wire        EXEC_MAIN_MEM_R_SIGNED  = cpu.core.main.exec_mem_r_signed;
wire        EXEC_MAIN_MEM_W_EN      = cpu.core.main.exec_mem_w_en;
wire [31:0] EXEC_MAIN_MEM_W_ADDR    = cpu.core.main.exec_mem_w_addr;
wire [3:0]  EXEC_MAIN_MEM_W_STRB    = cpu.core.main.exec_mem_w_strb;
wire [31:0] EXEC_MAIN_MEM_W_DATA    = cpu.core.main.exec_mem_w_data;
wire        EXEC_MAIN_JMP_DO        = cpu.core.main.exec_jmp_do;
wire [31:0] EXEC_MAIN_JMP_PC        = cpu.core.main.exec_jmp_pc;
wire        EXEC_MAIN_EXC_EN        = cpu.core.main.exec_exc_en;
wire [3:0]  EXEC_MAIN_EXC_CODE      = cpu.core.main.exec_exc_code;

// Core: Mem(r)
wire [4:0]  MEMR_REG_W_RD           = cpu.core.main.memr_reg_w_rd;
wire [31:0] MEMR_REG_W_DATA         = cpu.core.main.memr_reg_w_data;
wire [11:0] MEMR_CSR_W_ADDR         = cpu.core.main.memr_csr_w_addr;
wire [31:0] MEMR_CSR_W_DATA         = cpu.core.main.memr_csr_w_data;
wire        MEMR_MEM_W_EN           = cpu.core.main.memr_mem_w_en;
wire [31:0] MEMR_MEM_W_ADDR         = cpu.core.main.memr_mem_w_addr;
wire [31:0] MEMR_MEM_W_DATA         = cpu.core.main.memr_mem_w_data;
wire        MEMR_JMP_DO             = cpu.core.main.memr_jmp_do;
wire [31:0] MEMR_JMP_PC             = cpu.core.main.memr_jmp_pc;

// Core: Trap
wire [31:0] TRAP_PC                 = cpu.core.main.trap_pc;
wire        TRAP_EN                 = cpu.core.main.trap_en;
wire [31:0] TRAP_CODE               = cpu.core.main.trap_code;

// Register: rv32i
wire [31:0] I_REG_0                 = cpu.core.main.reg_std_rv32i_0.registers[0];
wire [31:0] I_REG_1                 = cpu.core.main.reg_std_rv32i_0.registers[1];
wire [31:0] I_REG_2                 = cpu.core.main.reg_std_rv32i_0.registers[2];
wire [31:0] I_REG_3                 = cpu.core.main.reg_std_rv32i_0.registers[3];
wire [31:0] I_REG_4                 = cpu.core.main.reg_std_rv32i_0.registers[4];
wire [31:0] I_REG_5                 = cpu.core.main.reg_std_rv32i_0.registers[5];
wire [31:0] I_REG_6                 = cpu.core.main.reg_std_rv32i_0.registers[6];
wire [31:0] I_REG_7                 = cpu.core.main.reg_std_rv32i_0.registers[7];
wire [31:0] I_REG_8                 = cpu.core.main.reg_std_rv32i_0.registers[8];
wire [31:0] I_REG_9                 = cpu.core.main.reg_std_rv32i_0.registers[9];
wire [31:0] I_REG_10                = cpu.core.main.reg_std_rv32i_0.registers[10];
wire [31:0] I_REG_11                = cpu.core.main.reg_std_rv32i_0.registers[11];
wire [31:0] I_REG_12                = cpu.core.main.reg_std_rv32i_0.registers[12];
wire [31:0] I_REG_13                = cpu.core.main.reg_std_rv32i_0.registers[13];
wire [31:0] I_REG_14                = cpu.core.main.reg_std_rv32i_0.registers[14];
wire [31:0] I_REG_15                = cpu.core.main.reg_std_rv32i_0.registers[15];
wire [31:0] I_REG_16                = cpu.core.main.reg_std_rv32i_0.registers[16];
wire [31:0] I_REG_17                = cpu.core.main.reg_std_rv32i_0.registers[17];
wire [31:0] I_REG_18                = cpu.core.main.reg_std_rv32i_0.registers[18];
wire [31:0] I_REG_19                = cpu.core.main.reg_std_rv32i_0.registers[19];
wire [32:0] I_REG_20                = cpu.core.main.reg_std_rv32i_0.registers[20];
wire [32:0] I_REG_21                = cpu.core.main.reg_std_rv32i_0.registers[21];
wire [32:0] I_REG_22                = cpu.core.main.reg_std_rv32i_0.registers[22];
wire [32:0] I_REG_23                = cpu.core.main.reg_std_rv32i_0.registers[23];
wire [32:0] I_REG_24                = cpu.core.main.reg_std_rv32i_0.registers[24];
wire [32:0] I_REG_25                = cpu.core.main.reg_std_rv32i_0.registers[25];
wire [32:0] I_REG_26                = cpu.core.main.reg_std_rv32i_0.registers[26];
wire [32:0] I_REG_27                = cpu.core.main.reg_std_rv32i_0.registers[27];
wire [32:0] I_REG_28                = cpu.core.main.reg_std_rv32i_0.registers[28];
wire [32:0] I_REG_29                = cpu.core.main.reg_std_rv32i_0.registers[29];
wire [32:0] I_REG_30                = cpu.core.main.reg_std_rv32i_0.registers[30];
wire [32:0] I_REG_31                = cpu.core.main.reg_std_rv32i_0.registers[31];
