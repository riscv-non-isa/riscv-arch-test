
#This assembly file tests the jalr instruction of the RISC-V I extension for the jalr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jalr)

la x2,signature_x2_1

# opcode: jalr; op1:x13; dest:x13; immval:128; align: 0 
TEST_JALR_OP(x8, x13, x13, 128, x2, 0,0)

# opcode: jalr; op1:x18; dest:x22; immval:-33; align: 0 
TEST_JALR_OP(x8, x22, x18, -33, x2, 8,0)

# opcode: jalr; op1:x3; dest:x23; immval:1; align: 0 
TEST_JALR_OP(x8, x23, x3, 1, x2, 16,0)

# opcode: jalr; op1:x1; dest:x24; immval:2; align: 0 
TEST_JALR_OP(x8, x24, x1, 2, x2, 24,0)

# opcode: jalr; op1:x26; dest:x29; immval:4; align: 0 
TEST_JALR_OP(x8, x29, x26, 4, x2, 32,0)

# opcode: jalr; op1:x5; dest:x1; immval:8; align: 0 
TEST_JALR_OP(x8, x1, x5, 8, x2, 40,0)

# opcode: jalr; op1:x22; dest:x31; immval:16; align: 0 
TEST_JALR_OP(x8, x31, x22, 16, x2, 48,0)

# opcode: jalr; op1:x14; dest:x21; immval:32; align: 0 
TEST_JALR_OP(x8, x21, x14, 32, x2, 56,0)

# opcode: jalr; op1:x17; dest:x7; immval:64; align: 0 
TEST_JALR_OP(x8, x7, x17, 64, x2, 64,0)

# opcode: jalr; op1:x27; dest:x11; immval:256; align: 0 
TEST_JALR_OP(x8, x11, x27, 256, x2, 72,0)

# opcode: jalr; op1:x28; dest:x14; immval:512; align: 0 
TEST_JALR_OP(x8, x14, x28, 512, x2, 80,0)

# opcode: jalr; op1:x19; dest:x30; immval:1024; align: 0 
TEST_JALR_OP(x8, x30, x19, 1024, x2, 88,0)

# opcode: jalr; op1:x6; dest:x20; immval:-2048; align: 0 
TEST_JALR_OP(x8, x20, x6, -2048, x2, 96,0)

# opcode: jalr; op1:x21; dest:x18; immval:-2; align: 0 
TEST_JALR_OP(x8, x18, x21, -2, x2, 104,0)

# opcode: jalr; op1:x25; dest:x12; immval:-3; align: 0 
TEST_JALR_OP(x8, x12, x25, -3, x2, 112,0)

# opcode: jalr; op1:x11; dest:x19; immval:-5; align: 0 
TEST_JALR_OP(x8, x19, x11, -5, x2, 120,0)

# opcode: jalr; op1:x23; dest:x16; immval:-9; align: 0 
TEST_JALR_OP(x8, x16, x23, -9, x2, 128,0)

# opcode: jalr; op1:x29; dest:x0; immval:-17; align: 0 
TEST_JALR_OP(x8, x0, x29, -17, x2, 136,0)

# opcode: jalr; op1:x4; dest:x25; immval:-65; align: 0 
TEST_JALR_OP(x8, x25, x4, -65, x2, 144,0)

# opcode: jalr; op1:x24; dest:x3; immval:-129; align: 0 
TEST_JALR_OP(x8, x3, x24, -129, x2, 152,0)

# opcode: jalr; op1:x10; dest:x26; immval:-257; align: 0 
TEST_JALR_OP(x8, x26, x10, -257, x2, 160,0)

# opcode: jalr; op1:x9; dest:x27; immval:-513; align: 0 
TEST_JALR_OP(x3, x27, x9, -513, x2, 168,0)
la x1,signature_x1_0

# opcode: jalr; op1:x15; dest:x2; immval:-1025; align: 0 
TEST_JALR_OP(x3, x2, x15, -1025, x1, 0,0)

# opcode: jalr; op1:x7; dest:x10; immval:2047; align: 0 
TEST_JALR_OP(x3, x10, x7, 2047, x1, 8,0)

# opcode: jalr; op1:x8; dest:x28; immval:1365; align: 0 
TEST_JALR_OP(x3, x28, x8, 1365, x1, 16,0)

# opcode: jalr; op1:x12; dest:x17; immval:-1366; align: 0 
TEST_JALR_OP(x3, x17, x12, -1366, x1, 24,0)

# opcode: jalr; op1:x2; dest:x5; immval:-2048; align: 0 
TEST_JALR_OP(x3, x5, x2, -2048, x1, 32,0)

# opcode: jalr; op1:x30; dest:x4; immval:-2048; align: 0 
TEST_JALR_OP(x3, x4, x30, -2048, x1, 40,0)

# opcode: jalr; op1:x31; dest:x8; immval:-2048; align: 0 
TEST_JALR_OP(x3, x8, x31, -2048, x1, 48,0)

# opcode: jalr; op1:x20; dest:x9; immval:-2048; align: 0 
TEST_JALR_OP(x3, x9, x20, -2048, x1, 56,0)

# opcode: jalr; op1:x16; dest:x6; immval:-2048; align: 0 
TEST_JALR_OP(x3, x6, x16, -2048, x1, 64,0)

# opcode: jalr; op1:x27; dest:x15; immval:-2048; align: 0 
TEST_JALR_OP(x3, x15, x27, -2048, x1, 72,0)

# opcode: jalr; op1:x10; dest:x11; immval:128; align: 0 
TEST_JALR_OP(x3, x11, x10, 128, x1, 80,0)

# opcode: jalr; op1:x10; dest:x11; immval:-17; align: 0 
TEST_JALR_OP(x3, x11, x10, -17, x1, 88,0)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x2_1:
    .fill 22*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 12*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
