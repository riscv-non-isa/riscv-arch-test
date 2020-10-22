
#This assembly file tests the jalr instruction of the RISC-V I extension for the jalr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jalr)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 != rd, rs1==x30, rd==x10, imm_val > 0, imm_val == 1
# opcode: jalr; op1:x30; dest:x10; immval:1; align:0 
TEST_JALR_OP(x9, x10, x30, 1, x7, 0,0)

# rs1 == rd, rs1==x17, rd==x17, imm_val < 0, imm_val == -17
# opcode: jalr; op1:x17; dest:x17; immval:-17; align:0 
TEST_JALR_OP(x9, x17, x17, -17, x7, 8,0)

# rs1==x16, rd==x1, imm_val == 2, 
# opcode: jalr; op1:x16; dest:x1; immval:2; align:0 
TEST_JALR_OP(x9, x1, x16, 2, x7, 16,0)

# rs1==x6, rd==x11, imm_val == 4, 
# opcode: jalr; op1:x6; dest:x11; immval:4; align:0 
TEST_JALR_OP(x9, x11, x6, 4, x7, 24,0)

# rs1==x13, rd==x4, imm_val == 8, 
# opcode: jalr; op1:x13; dest:x4; immval:8; align:0 
TEST_JALR_OP(x9, x4, x13, 8, x7, 32,0)

# rs1==x28, rd==x12, imm_val == 16, 
# opcode: jalr; op1:x28; dest:x12; immval:16; align:0 
TEST_JALR_OP(x9, x12, x28, 16, x7, 40,0)

# rs1==x26, rd==x6, imm_val == 32, 
# opcode: jalr; op1:x26; dest:x6; immval:32; align:0 
TEST_JALR_OP(x9, x6, x26, 32, x7, 48,0)

# rs1==x25, rd==x23, imm_val == 64, 
# opcode: jalr; op1:x25; dest:x23; immval:64; align:0 
TEST_JALR_OP(x9, x23, x25, 64, x7, 56,0)

# rs1==x5, rd==x19, imm_val == 128, 
# opcode: jalr; op1:x5; dest:x19; immval:128; align:0 
TEST_JALR_OP(x9, x19, x5, 128, x7, 64,0)

# rs1==x24, rd==x31, imm_val == 256, 
# opcode: jalr; op1:x24; dest:x31; immval:256; align:0 
TEST_JALR_OP(x9, x31, x24, 256, x7, 72,0)

# rs1==x31, rd==x21, imm_val == 512, 
# opcode: jalr; op1:x31; dest:x21; immval:512; align:0 
TEST_JALR_OP(x9, x21, x31, 512, x7, 80,0)

# rs1==x10, rd==x8, imm_val == 1024, 
# opcode: jalr; op1:x10; dest:x8; immval:1024; align:0 
TEST_JALR_OP(x9, x8, x10, 1024, x7, 88,0)

# rs1==x21, rd==x25, imm_val == -2048, 
# opcode: jalr; op1:x21; dest:x25; immval:-2048; align:0 
TEST_JALR_OP(x9, x25, x21, -2048, x7, 96,0)

# rs1==x19, rd==x2, imm_val == -2, 
# opcode: jalr; op1:x19; dest:x2; immval:-2; align:0 
TEST_JALR_OP(x9, x2, x19, -2, x7, 104,0)

# rs1==x27, rd==x0, imm_val == -3, 
# opcode: jalr; op1:x27; dest:x0; immval:-3; align:0 
TEST_JALR_OP(x9, x0, x27, -3, x7, 112,0)

# rs1==x15, rd==x30, imm_val == -5, 
# opcode: jalr; op1:x15; dest:x30; immval:-5; align:0 
TEST_JALR_OP(x9, x30, x15, -5, x7, 120,0)

# rs1==x18, rd==x3, imm_val == -9, 
# opcode: jalr; op1:x18; dest:x3; immval:-9; align:0 
TEST_JALR_OP(x9, x3, x18, -9, x7, 128,0)

# rs1==x3, rd==x20, imm_val == -33, 
# opcode: jalr; op1:x3; dest:x20; immval:-33; align:0 
TEST_JALR_OP(x9, x20, x3, -33, x7, 136,0)

# rs1==x22, rd==x15, imm_val == -65, 
# opcode: jalr; op1:x22; dest:x15; immval:-65; align:0 
TEST_JALR_OP(x9, x15, x22, -65, x7, 144,0)

# rs1==x11, rd==x24, imm_val == -129, 
# opcode: jalr; op1:x11; dest:x24; immval:-129; align:0 
TEST_JALR_OP(x6, x24, x11, -129, x7, 152,0)

# rs1==x8, rd==x9, imm_val == -257, 
# opcode: jalr; op1:x8; dest:x9; immval:-257; align:0 
TEST_JALR_OP(x6, x9, x8, -257, x7, 160,0)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x23, rd==x28, imm_val == -513, 
# opcode: jalr; op1:x23; dest:x28; immval:-513; align:0 
TEST_JALR_OP(x6, x28, x23, -513, x3, 0,0)

# rs1==x9, rd==x14, imm_val == -1025, 
# opcode: jalr; op1:x9; dest:x14; immval:-1025; align:0 
TEST_JALR_OP(x6, x14, x9, -1025, x3, 8,0)

# rs1==x2, rd==x13, imm_val == 2047, 
# opcode: jalr; op1:x2; dest:x13; immval:2047; align:0 
TEST_JALR_OP(x6, x13, x2, 2047, x3, 16,0)

# rs1==x20, rd==x16, imm_val == 1365, 
# opcode: jalr; op1:x20; dest:x16; immval:1365; align:0 
TEST_JALR_OP(x6, x16, x20, 1365, x3, 24,0)

# rs1==x12, rd==x18, imm_val == -1366, 
# opcode: jalr; op1:x12; dest:x18; immval:-1366; align:0 
TEST_JALR_OP(x6, x18, x12, -1366, x3, 32,0)

# rs1==x29, rd==x22, 
# opcode: jalr; op1:x29; dest:x22; immval:-2048; align:0 
TEST_JALR_OP(x6, x22, x29, -2048, x3, 40,0)

# rs1==x4, rd==x29, 
# opcode: jalr; op1:x4; dest:x29; immval:-2048; align:0 
TEST_JALR_OP(x6, x29, x4, -2048, x3, 48,0)

# rs1==x7, rd==x5, 
# opcode: jalr; op1:x7; dest:x5; immval:-2048; align:0 
TEST_JALR_OP(x6, x5, x7, -2048, x3, 56,0)

# rs1==x1, rd==x26, 
# opcode: jalr; op1:x1; dest:x26; immval:-2048; align:0 
TEST_JALR_OP(x6, x26, x1, -2048, x3, 64,0)

# rs1==x14, rd==x27, 
# opcode: jalr; op1:x14; dest:x27; immval:-2048; align:0 
TEST_JALR_OP(x6, x27, x14, -2048, x3, 72,0)

# rd==x7, 
# opcode: jalr; op1:x24; dest:x7; immval:-2048; align:0 
TEST_JALR_OP(x6, x7, x24, -2048, x3, 80,0)

# imm_val < 0, imm_val == -17
# opcode: jalr; op1:x10; dest:x11; immval:-17; align:0 
TEST_JALR_OP(x6, x11, x10, -17, x3, 88,0)

# imm_val == -3, 
# opcode: jalr; op1:x10; dest:x11; immval:-3; align:0 
TEST_JALR_OP(x6, x11, x10, -3, x3, 96,0)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x7_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 13*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
