
#This assembly file tests the jalr instruction of the RISC-V I extension for the jalr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jalr)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 == rd, rs1==x20, rd==x20, imm_val > 0, imm_val == 2
# opcode: jalr; op1:x20; dest:x20; immval:2; align:0 
TEST_JALR_OP(x5, x20, x20, 2, x3, 0,0)

# rs1 != rd, rs1==x23, rd==x12, imm_val < 0, 
# opcode: jalr; op1:x23; dest:x12; immval:-1; align:0 
TEST_JALR_OP(x5, x12, x23, -1, x3, 8,0)

# rs1==x1, rd==x31, imm_val == 1, 
# opcode: jalr; op1:x1; dest:x31; immval:1; align:0 
TEST_JALR_OP(x5, x31, x1, 1, x3, 16,0)

# rs1==x18, rd==x15, imm_val == 4, 
# opcode: jalr; op1:x18; dest:x15; immval:4; align:0 
TEST_JALR_OP(x5, x15, x18, 4, x3, 24,0)

# rs1==x31, rd==x30, imm_val == 8, 
# opcode: jalr; op1:x31; dest:x30; immval:8; align:0 
TEST_JALR_OP(x5, x30, x31, 8, x3, 32,0)

# rs1==x7, rd==x4, imm_val == 16, 
# opcode: jalr; op1:x7; dest:x4; immval:16; align:0 
TEST_JALR_OP(x5, x4, x7, 16, x3, 40,0)

# rs1==x2, rd==x8, imm_val == 32, 
# opcode: jalr; op1:x2; dest:x8; immval:32; align:0 
TEST_JALR_OP(x5, x8, x2, 32, x3, 48,0)

# rs1==x12, rd==x24, imm_val == 64, 
# opcode: jalr; op1:x12; dest:x24; immval:64; align:0 
TEST_JALR_OP(x5, x24, x12, 64, x3, 56,0)

# rs1==x25, rd==x19, imm_val == 128, 
# opcode: jalr; op1:x25; dest:x19; immval:128; align:0 
TEST_JALR_OP(x5, x19, x25, 128, x3, 64,0)

# rs1==x6, rd==x28, imm_val == 256, 
# opcode: jalr; op1:x6; dest:x28; immval:256; align:0 
TEST_JALR_OP(x5, x28, x6, 256, x3, 72,0)

# rs1==x15, rd==x21, imm_val == 512, 
# opcode: jalr; op1:x15; dest:x21; immval:512; align:0 
TEST_JALR_OP(x5, x21, x15, 512, x3, 80,0)

# rs1==x24, rd==x18, imm_val == 1024, 
# opcode: jalr; op1:x24; dest:x18; immval:1024; align:0 
TEST_JALR_OP(x5, x18, x24, 1024, x3, 88,0)

# rs1==x11, rd==x14, imm_val == -2048, 
# opcode: jalr; op1:x11; dest:x14; immval:-2048; align:0 
TEST_JALR_OP(x5, x14, x11, -2048, x3, 96,0)

# rs1==x17, rd==x13, imm_val == -2, 
# opcode: jalr; op1:x17; dest:x13; immval:-2; align:0 
TEST_JALR_OP(x5, x13, x17, -2, x3, 104,0)

# rs1==x22, rd==x16, imm_val == -3, 
# opcode: jalr; op1:x22; dest:x16; immval:-3; align:0 
TEST_JALR_OP(x5, x16, x22, -3, x3, 112,0)

# rs1==x30, rd==x11, imm_val == -5, 
# opcode: jalr; op1:x30; dest:x11; immval:-5; align:0 
TEST_JALR_OP(x5, x11, x30, -5, x3, 120,0)

# rs1==x13, rd==x29, imm_val == -9, 
# opcode: jalr; op1:x13; dest:x29; immval:-9; align:0 
TEST_JALR_OP(x5, x29, x13, -9, x3, 128,0)

# rs1==x19, rd==x9, imm_val == -17, 
# opcode: jalr; op1:x19; dest:x9; immval:-17; align:0 
TEST_JALR_OP(x5, x9, x19, -17, x3, 136,0)

# rs1==x16, rd==x10, imm_val == -33, 
# opcode: jalr; op1:x16; dest:x10; immval:-33; align:0 
TEST_JALR_OP(x5, x10, x16, -33, x3, 144,0)

# rs1==x9, rd==x27, imm_val == -65, 
# opcode: jalr; op1:x9; dest:x27; immval:-65; align:0 
TEST_JALR_OP(x12, x27, x9, -65, x3, 152,0)
RVTEST_SIGBASE( x9,signature_x9_0)

# rs1==x10, rd==x7, imm_val == -129, 
# opcode: jalr; op1:x10; dest:x7; immval:-129; align:0 
TEST_JALR_OP(x12, x7, x10, -129, x9, 0,0)

# rs1==x8, rd==x1, imm_val == -257, 
# opcode: jalr; op1:x8; dest:x1; immval:-257; align:0 
TEST_JALR_OP(x12, x1, x8, -257, x9, 8,0)

# rs1==x4, rd==x26, imm_val == -513, 
# opcode: jalr; op1:x4; dest:x26; immval:-513; align:0 
TEST_JALR_OP(x12, x26, x4, -513, x9, 16,0)

# rs1==x26, rd==x23, imm_val == -1025, 
# opcode: jalr; op1:x26; dest:x23; immval:-1025; align:0 
TEST_JALR_OP(x12, x23, x26, -1025, x9, 24,0)

# rs1==x14, rd==x17, imm_val == 2047, 
# opcode: jalr; op1:x14; dest:x17; immval:2047; align:0 
TEST_JALR_OP(x12, x17, x14, 2047, x9, 32,0)

# rs1==x21, rd==x6, imm_val == 1365, 
# opcode: jalr; op1:x21; dest:x6; immval:1365; align:0 
TEST_JALR_OP(x12, x6, x21, 1365, x9, 40,0)

# rs1==x3, rd==x22, imm_val == -1366, 
# opcode: jalr; op1:x3; dest:x22; immval:-1366; align:0 
TEST_JALR_OP(x12, x22, x3, -1366, x9, 48,0)

# rs1==x27, rd==x5, 
# opcode: jalr; op1:x27; dest:x5; immval:-2048; align:0 
TEST_JALR_OP(x12, x5, x27, -2048, x9, 56,0)

# rs1==x5, rd==x25, 
# opcode: jalr; op1:x5; dest:x25; immval:-2048; align:0 
TEST_JALR_OP(x12, x25, x5, -2048, x9, 64,0)

# rs1==x28, rd==x0, 
# opcode: jalr; op1:x28; dest:x0; immval:-2048; align:0 
TEST_JALR_OP(x12, x0, x28, -2048, x9, 72,0)

# rs1==x29, rd==x2, 
# opcode: jalr; op1:x29; dest:x2; immval:-2048; align:0 
TEST_JALR_OP(x12, x2, x29, -2048, x9, 80,0)

# rd==x3, 
# opcode: jalr; op1:x8; dest:x3; immval:-2048; align:0 
TEST_JALR_OP(x12, x3, x8, -2048, x9, 88,0)

# imm_val > 0, imm_val == 2
# opcode: jalr; op1:x10; dest:x11; immval:2; align:0 
TEST_JALR_OP(x12, x11, x10, 2, x9, 96,0)

# 
# opcode: jalr; op1:x10; dest:x11; immval:-2048; align:0 
TEST_JALR_OP(x12, x11, x10, -2048, x9, 104,0)
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
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x9_0:
    .fill 14*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
