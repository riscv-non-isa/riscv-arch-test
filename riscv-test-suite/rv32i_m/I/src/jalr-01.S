
#This assembly file tests the jalr instruction of the RISC-V I extension for the jalr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jalr)

la x6,signature_x6_1

# opcode: jalr; op1:x7; dest:x21; immval:256; align: 0 
TEST_JALR_OP(x14, x21, x7, 256, x6, 0,0)

# opcode: jalr; op1:x25; dest:x25; immval:-10; align: 0 
TEST_JALR_OP(x14, x25, x25, -10, x6, 4,0)

# opcode: jalr; op1:x31; dest:x0; immval:1; align: 0 
TEST_JALR_OP(x14, x0, x31, 1, x6, 8,0)

# opcode: jalr; op1:x4; dest:x10; immval:2; align: 0 
TEST_JALR_OP(x14, x10, x4, 2, x6, 12,0)

# opcode: jalr; op1:x17; dest:x2; immval:4; align: 0 
TEST_JALR_OP(x14, x2, x17, 4, x6, 16,0)

# opcode: jalr; op1:x2; dest:x15; immval:8; align: 0 
TEST_JALR_OP(x14, x15, x2, 8, x6, 20,0)

# opcode: jalr; op1:x20; dest:x3; immval:16; align: 0 
TEST_JALR_OP(x14, x3, x20, 16, x6, 24,0)

# opcode: jalr; op1:x1; dest:x5; immval:32; align: 0 
TEST_JALR_OP(x14, x5, x1, 32, x6, 28,0)

# opcode: jalr; op1:x28; dest:x20; immval:64; align: 0 
TEST_JALR_OP(x14, x20, x28, 64, x6, 32,0)

# opcode: jalr; op1:x22; dest:x11; immval:128; align: 0 
TEST_JALR_OP(x14, x11, x22, 128, x6, 36,0)

# opcode: jalr; op1:x23; dest:x24; immval:512; align: 0 
TEST_JALR_OP(x14, x24, x23, 512, x6, 40,0)

# opcode: jalr; op1:x10; dest:x30; immval:1024; align: 0 
TEST_JALR_OP(x14, x30, x10, 1024, x6, 44,0)

# opcode: jalr; op1:x27; dest:x9; immval:-2048; align: 0 
TEST_JALR_OP(x14, x9, x27, -2048, x6, 48,0)

# opcode: jalr; op1:x19; dest:x29; immval:-2; align: 0 
TEST_JALR_OP(x14, x29, x19, -2, x6, 52,0)

# opcode: jalr; op1:x29; dest:x12; immval:-3; align: 0 
TEST_JALR_OP(x14, x12, x29, -3, x6, 56,0)

# opcode: jalr; op1:x24; dest:x22; immval:-5; align: 0 
TEST_JALR_OP(x14, x22, x24, -5, x6, 60,0)

# opcode: jalr; op1:x3; dest:x28; immval:-9; align: 0 
TEST_JALR_OP(x14, x28, x3, -9, x6, 64,0)

# opcode: jalr; op1:x13; dest:x19; immval:-17; align: 0 
TEST_JALR_OP(x14, x19, x13, -17, x6, 68,0)

# opcode: jalr; op1:x26; dest:x27; immval:-33; align: 0 
TEST_JALR_OP(x14, x27, x26, -33, x6, 72,0)

# opcode: jalr; op1:x9; dest:x17; immval:-65; align: 0 
TEST_JALR_OP(x14, x17, x9, -65, x6, 76,0)

# opcode: jalr; op1:x30; dest:x4; immval:-129; align: 0 
TEST_JALR_OP(x14, x4, x30, -129, x6, 80,0)

# opcode: jalr; op1:x8; dest:x13; immval:-257; align: 0 
TEST_JALR_OP(x14, x13, x8, -257, x6, 84,0)

# opcode: jalr; op1:x15; dest:x8; immval:-513; align: 0 
TEST_JALR_OP(x2, x8, x15, -513, x6, 88,0)

# opcode: jalr; op1:x12; dest:x1; immval:-1025; align: 0 
TEST_JALR_OP(x2, x1, x12, -1025, x6, 92,0)

# opcode: jalr; op1:x16; dest:x31; immval:2047; align: 0 
TEST_JALR_OP(x2, x31, x16, 2047, x6, 96,0)
la x1,signature_x1_0

# opcode: jalr; op1:x14; dest:x7; immval:1365; align: 0 
TEST_JALR_OP(x2, x7, x14, 1365, x1, 0,0)

# opcode: jalr; op1:x5; dest:x14; immval:-1366; align: 0 
TEST_JALR_OP(x2, x14, x5, -1366, x1, 4,0)

# opcode: jalr; op1:x18; dest:x16; immval:-2048; align: 0 
TEST_JALR_OP(x2, x16, x18, -2048, x1, 8,0)

# opcode: jalr; op1:x21; dest:x6; immval:-2048; align: 0 
TEST_JALR_OP(x2, x6, x21, -2048, x1, 12,0)

# opcode: jalr; op1:x11; dest:x23; immval:-2048; align: 0 
TEST_JALR_OP(x2, x23, x11, -2048, x1, 16,0)

# opcode: jalr; op1:x6; dest:x26; immval:-2048; align: 0 
TEST_JALR_OP(x2, x26, x6, -2048, x1, 20,0)

# opcode: jalr; op1:x6; dest:x18; immval:-2048; align: 0 
TEST_JALR_OP(x2, x18, x6, -2048, x1, 24,0)

# opcode: jalr; op1:x10; dest:x11; immval:-10; align: 0 
TEST_JALR_OP(x2, x11, x10, -10, x1, 28,0)

# opcode: jalr; op1:x10; dest:x11; immval:1; align: 0 
TEST_JALR_OP(x2, x11, x10, 1, x1, 32,0)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x6_1:
    .fill 25*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 9*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
