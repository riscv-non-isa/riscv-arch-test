
#This assembly file tests the jalr instruction of the RISC-V I extension for the jalr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jalr)

RVTEST_SIGBASE( x18,signature_x18_1)

# rs1 != rd, rs1==x24, rd==x10, imm_val > 0, imm_val == 8
# opcode: jalr; op1:x24; dest:x10; immval:8; align:0 
TEST_JALR_OP(x25, x10, x24, 8, x18, 0,0)

# rs1 == rd, rs1==x1, rd==x1, imm_val < 0, imm_val == -1366
# opcode: jalr; op1:x1; dest:x1; immval:-1366; align:0 
TEST_JALR_OP(x25, x1, x1, -1366, x18, 4,0)

# rs1==x26, rd==x6, imm_val == 1, 
# opcode: jalr; op1:x26; dest:x6; immval:1; align:0 
TEST_JALR_OP(x25, x6, x26, 1, x18, 8,0)

# rs1==x23, rd==x21, imm_val == 2, 
# opcode: jalr; op1:x23; dest:x21; immval:2; align:0 
TEST_JALR_OP(x25, x21, x23, 2, x18, 12,0)

# rs1==x15, rd==x9, imm_val == 4, 
# opcode: jalr; op1:x15; dest:x9; immval:4; align:0 
TEST_JALR_OP(x25, x9, x15, 4, x18, 16,0)

# rs1==x31, rd==x8, imm_val == 16, 
# opcode: jalr; op1:x31; dest:x8; immval:16; align:0 
TEST_JALR_OP(x25, x8, x31, 16, x18, 20,0)

# rs1==x19, rd==x26, imm_val == 32, 
# opcode: jalr; op1:x19; dest:x26; immval:32; align:0 
TEST_JALR_OP(x25, x26, x19, 32, x18, 24,0)

# rs1==x3, rd==x30, imm_val == 64, 
# opcode: jalr; op1:x3; dest:x30; immval:64; align:0 
TEST_JALR_OP(x25, x30, x3, 64, x18, 28,0)

# rs1==x14, rd==x22, imm_val == 128, 
# opcode: jalr; op1:x14; dest:x22; immval:128; align:0 
TEST_JALR_OP(x25, x22, x14, 128, x18, 32,0)

# rs1==x22, rd==x11, imm_val == 256, 
# opcode: jalr; op1:x22; dest:x11; immval:256; align:0 
TEST_JALR_OP(x25, x11, x22, 256, x18, 36,0)

# rs1==x11, rd==x2, imm_val == 512, 
# opcode: jalr; op1:x11; dest:x2; immval:512; align:0 
TEST_JALR_OP(x25, x2, x11, 512, x18, 40,0)

# rs1==x21, rd==x5, imm_val == 1024, 
# opcode: jalr; op1:x21; dest:x5; immval:1024; align:0 
TEST_JALR_OP(x25, x5, x21, 1024, x18, 44,0)

# rs1==x12, rd==x7, imm_val == -2048, 
# opcode: jalr; op1:x12; dest:x7; immval:-2048; align:0 
TEST_JALR_OP(x25, x7, x12, -2048, x18, 48,0)

# rs1==x9, rd==x4, imm_val == -2, 
# opcode: jalr; op1:x9; dest:x4; immval:-2; align:0 
TEST_JALR_OP(x25, x4, x9, -2, x18, 52,0)

# rs1==x20, rd==x27, imm_val == -3, 
# opcode: jalr; op1:x20; dest:x27; immval:-3; align:0 
TEST_JALR_OP(x25, x27, x20, -3, x18, 56,0)

# rs1==x16, rd==x12, imm_val == -5, 
# opcode: jalr; op1:x16; dest:x12; immval:-5; align:0 
TEST_JALR_OP(x25, x12, x16, -5, x18, 60,0)

# rs1==x5, rd==x14, imm_val == -9, 
# opcode: jalr; op1:x5; dest:x14; immval:-9; align:0 
TEST_JALR_OP(x25, x14, x5, -9, x18, 64,0)

# rs1==x2, rd==x20, imm_val == -17, 
# opcode: jalr; op1:x2; dest:x20; immval:-17; align:0 
TEST_JALR_OP(x25, x20, x2, -17, x18, 68,0)

# rs1==x13, rd==x17, imm_val == -33, 
# opcode: jalr; op1:x13; dest:x17; immval:-33; align:0 
TEST_JALR_OP(x25, x17, x13, -33, x18, 72,0)

# rs1==x10, rd==x28, imm_val == -65, 
# opcode: jalr; op1:x10; dest:x28; immval:-65; align:0 
TEST_JALR_OP(x2, x28, x10, -65, x18, 76,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x18, rd==x16, imm_val == -129, 
# opcode: jalr; op1:x18; dest:x16; immval:-129; align:0 
TEST_JALR_OP(x2, x16, x18, -129, x1, 0,0)

# rs1==x30, rd==x29, imm_val == -257, 
# opcode: jalr; op1:x30; dest:x29; immval:-257; align:0 
TEST_JALR_OP(x2, x29, x30, -257, x1, 4,0)

# rs1==x7, rd==x0, imm_val == -1025, 
# opcode: jalr; op1:x7; dest:x0; immval:-1025; align:0 
TEST_JALR_OP(x2, x0, x7, -1025, x1, 8,0)

# rs1==x6, rd==x24, imm_val == 2047, 
# opcode: jalr; op1:x6; dest:x24; immval:2047; align:0 
TEST_JALR_OP(x2, x24, x6, 2047, x1, 12,0)

# rs1==x17, rd==x15, imm_val == 1365, 
# opcode: jalr; op1:x17; dest:x15; immval:1365; align:0 
TEST_JALR_OP(x2, x15, x17, 1365, x1, 16,0)

# rs1==x29, rd==x19, imm_val == -513, 
# opcode: jalr; op1:x29; dest:x19; immval:-513; align:0 
TEST_JALR_OP(x2, x19, x29, -513, x1, 20,0)

# rs1==x25, rd==x31, 
# opcode: jalr; op1:x25; dest:x31; immval:-2048; align:0 
TEST_JALR_OP(x2, x31, x25, -2048, x1, 24,0)

# rs1==x4, rd==x13, 
# opcode: jalr; op1:x4; dest:x13; immval:-2048; align:0 
TEST_JALR_OP(x2, x13, x4, -2048, x1, 28,0)

# rs1==x27, rd==x23, 
# opcode: jalr; op1:x27; dest:x23; immval:-2048; align:0 
TEST_JALR_OP(x2, x23, x27, -2048, x1, 32,0)

# rs1==x8, rd==x25, 
# opcode: jalr; op1:x8; dest:x25; immval:-2048; align:0 
TEST_JALR_OP(x2, x25, x8, -2048, x1, 36,0)

# rs1==x28, rd==x3, 
# opcode: jalr; op1:x28; dest:x3; immval:-2048; align:0 
TEST_JALR_OP(x2, x3, x28, -2048, x1, 40,0)

# rd==x18, 
# opcode: jalr; op1:x5; dest:x18; immval:-2048; align:0 
TEST_JALR_OP(x2, x18, x5, -2048, x1, 44,0)

# imm_val == -1025, 
# opcode: jalr; op1:x10; dest:x11; immval:-1025; align:0 
TEST_JALR_OP(x2, x11, x10, -1025, x1, 48,0)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x18_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x18_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
