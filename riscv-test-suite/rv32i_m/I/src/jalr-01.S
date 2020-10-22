
#This assembly file tests the jalr instruction of the RISC-V I extension for the jalr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jalr)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 != rd, rs1==x29, rd==x25, imm_val > 0, imm_val == 1024
# opcode: jalr; op1:x29; dest:x25; immval:1024; align:0 
TEST_JALR_OP(x10, x25, x29, 1024, x3, 0,0)

# rs1 == rd, rs1==x6, rd==x6, imm_val < 0, imm_val == -2048
# opcode: jalr; op1:x6; dest:x6; immval:-2048; align:0 
TEST_JALR_OP(x10, x6, x6, -2048, x3, 4,0)

# rs1==x15, rd==x0, imm_val == 1, 
# opcode: jalr; op1:x15; dest:x0; immval:1; align:0 
TEST_JALR_OP(x10, x0, x15, 1, x3, 8,0)

# rs1==x21, rd==x22, imm_val == 2, 
# opcode: jalr; op1:x21; dest:x22; immval:2; align:0 
TEST_JALR_OP(x10, x22, x21, 2, x3, 12,0)

# rs1==x7, rd==x24, imm_val == 4, 
# opcode: jalr; op1:x7; dest:x24; immval:4; align:0 
TEST_JALR_OP(x10, x24, x7, 4, x3, 16,0)

# rs1==x5, rd==x17, imm_val == 8, 
# opcode: jalr; op1:x5; dest:x17; immval:8; align:0 
TEST_JALR_OP(x10, x17, x5, 8, x3, 20,0)

# rs1==x14, rd==x18, imm_val == 16, 
# opcode: jalr; op1:x14; dest:x18; immval:16; align:0 
TEST_JALR_OP(x10, x18, x14, 16, x3, 24,0)

# rs1==x12, rd==x20, imm_val == 32, 
# opcode: jalr; op1:x12; dest:x20; immval:32; align:0 
TEST_JALR_OP(x10, x20, x12, 32, x3, 28,0)

# rs1==x28, rd==x23, imm_val == 64, 
# opcode: jalr; op1:x28; dest:x23; immval:64; align:0 
TEST_JALR_OP(x10, x23, x28, 64, x3, 32,0)

# rs1==x18, rd==x27, imm_val == 128, 
# opcode: jalr; op1:x18; dest:x27; immval:128; align:0 
TEST_JALR_OP(x10, x27, x18, 128, x3, 36,0)

# rs1==x24, rd==x7, imm_val == 256, 
# opcode: jalr; op1:x24; dest:x7; immval:256; align:0 
TEST_JALR_OP(x10, x7, x24, 256, x3, 40,0)

# rs1==x25, rd==x1, imm_val == 512, 
# opcode: jalr; op1:x25; dest:x1; immval:512; align:0 
TEST_JALR_OP(x10, x1, x25, 512, x3, 44,0)

# rs1==x23, rd==x15, imm_val == -2, 
# opcode: jalr; op1:x23; dest:x15; immval:-2; align:0 
TEST_JALR_OP(x10, x15, x23, -2, x3, 48,0)

# rs1==x4, rd==x29, imm_val == -3, 
# opcode: jalr; op1:x4; dest:x29; immval:-3; align:0 
TEST_JALR_OP(x10, x29, x4, -3, x3, 52,0)

# rs1==x2, rd==x4, imm_val == -5, 
# opcode: jalr; op1:x2; dest:x4; immval:-5; align:0 
TEST_JALR_OP(x10, x4, x2, -5, x3, 56,0)

# rs1==x1, rd==x31, imm_val == -9, 
# opcode: jalr; op1:x1; dest:x31; immval:-9; align:0 
TEST_JALR_OP(x10, x31, x1, -9, x3, 60,0)

# rs1==x9, rd==x28, imm_val == -17, 
# opcode: jalr; op1:x9; dest:x28; immval:-17; align:0 
TEST_JALR_OP(x10, x28, x9, -17, x3, 64,0)

# rs1==x30, rd==x8, imm_val == -33, 
# opcode: jalr; op1:x30; dest:x8; immval:-33; align:0 
TEST_JALR_OP(x10, x8, x30, -33, x3, 68,0)

# rs1==x19, rd==x30, imm_val == -65, 
# opcode: jalr; op1:x19; dest:x30; immval:-65; align:0 
TEST_JALR_OP(x10, x30, x19, -65, x3, 72,0)

# rs1==x8, rd==x14, imm_val == -129, 
# opcode: jalr; op1:x8; dest:x14; immval:-129; align:0 
TEST_JALR_OP(x10, x14, x8, -129, x3, 76,0)

# rs1==x22, rd==x16, imm_val == -257, 
# opcode: jalr; op1:x22; dest:x16; immval:-257; align:0 
TEST_JALR_OP(x10, x16, x22, -257, x3, 80,0)

# rs1==x16, rd==x12, imm_val == -513, 
# opcode: jalr; op1:x16; dest:x12; immval:-513; align:0 
TEST_JALR_OP(x10, x12, x16, -513, x3, 84,0)

# rs1==x31, rd==x11, imm_val == -1025, 
# opcode: jalr; op1:x31; dest:x11; immval:-1025; align:0 
TEST_JALR_OP(x10, x11, x31, -1025, x3, 88,0)

# rs1==x27, rd==x21, imm_val == 2047, 
# opcode: jalr; op1:x27; dest:x21; immval:2047; align:0 
TEST_JALR_OP(x4, x21, x27, 2047, x3, 92,0)

# rs1==x11, rd==x13, imm_val == 1365, 
# opcode: jalr; op1:x11; dest:x13; immval:1365; align:0 
TEST_JALR_OP(x4, x13, x11, 1365, x3, 96,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x3, rd==x5, imm_val == -1366, 
# opcode: jalr; op1:x3; dest:x5; immval:-1366; align:0 
TEST_JALR_OP(x4, x5, x3, -1366, x1, 0,0)

# rs1==x17, rd==x3, 
# opcode: jalr; op1:x17; dest:x3; immval:-2048; align:0 
TEST_JALR_OP(x4, x3, x17, -2048, x1, 4,0)

# rs1==x13, rd==x2, 
# opcode: jalr; op1:x13; dest:x2; immval:-2048; align:0 
TEST_JALR_OP(x4, x2, x13, -2048, x1, 8,0)

# rs1==x20, rd==x26, 
# opcode: jalr; op1:x20; dest:x26; immval:-2048; align:0 
TEST_JALR_OP(x4, x26, x20, -2048, x1, 12,0)

# rs1==x10, rd==x9, 
# opcode: jalr; op1:x10; dest:x9; immval:-2048; align:0 
TEST_JALR_OP(x4, x9, x10, -2048, x1, 16,0)

# rs1==x26, rd==x10, 
# opcode: jalr; op1:x26; dest:x10; immval:-2048; align:0 
TEST_JALR_OP(x4, x10, x26, -2048, x1, 20,0)

# rd==x19, 
# opcode: jalr; op1:x21; dest:x19; immval:-2048; align:0 
TEST_JALR_OP(x4, x19, x21, -2048, x1, 24,0)

# imm_val < 0, imm_val == -2048
# opcode: jalr; op1:x10; dest:x11; immval:-2048; align:0 
TEST_JALR_OP(x4, x11, x10, -2048, x1, 28,0)

# imm_val == 1, 
# opcode: jalr; op1:x10; dest:x11; immval:1; align:0 
TEST_JALR_OP(x4, x11, x10, 1, x1, 32,0)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 25*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 9*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
