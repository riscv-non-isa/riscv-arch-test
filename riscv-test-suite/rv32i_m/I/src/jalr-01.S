
#This assembly file tests the jalr instruction of the RISC-V I extension for the jalr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jalr)

la x14,signature_x14_1

# opcode: jalr; op1:x7; dest:x6; immval:2047; align: 0 
TEST_JALR_OP(x17, x6, x7, 2047, x14, 0,0)

# opcode: jalr; op1:x21; dest:x21; immval:-1366; align: 0 
TEST_JALR_OP(x17, x21, x21, -1366, x14, 4,0)

# opcode: jalr; op1:x24; dest:x28; immval:1; align: 0 
TEST_JALR_OP(x17, x28, x24, 1, x14, 8,0)

# opcode: jalr; op1:x28; dest:x31; immval:2; align: 0 
TEST_JALR_OP(x17, x31, x28, 2, x14, 12,0)

# opcode: jalr; op1:x11; dest:x24; immval:4; align: 0 
TEST_JALR_OP(x17, x24, x11, 4, x14, 16,0)

# opcode: jalr; op1:x5; dest:x29; immval:8; align: 0 
TEST_JALR_OP(x17, x29, x5, 8, x14, 20,0)

# opcode: jalr; op1:x3; dest:x15; immval:16; align: 0 
TEST_JALR_OP(x17, x15, x3, 16, x14, 24,0)

# opcode: jalr; op1:x15; dest:x7; immval:32; align: 0 
TEST_JALR_OP(x17, x7, x15, 32, x14, 28,0)

# opcode: jalr; op1:x13; dest:x20; immval:64; align: 0 
TEST_JALR_OP(x17, x20, x13, 64, x14, 32,0)

# opcode: jalr; op1:x12; dest:x26; immval:128; align: 0 
TEST_JALR_OP(x17, x26, x12, 128, x14, 36,0)

# opcode: jalr; op1:x4; dest:x9; immval:256; align: 0 
TEST_JALR_OP(x17, x9, x4, 256, x14, 40,0)

# opcode: jalr; op1:x30; dest:x3; immval:512; align: 0 
TEST_JALR_OP(x17, x3, x30, 512, x14, 44,0)

# opcode: jalr; op1:x18; dest:x10; immval:1024; align: 0 
TEST_JALR_OP(x17, x10, x18, 1024, x14, 48,0)

# opcode: jalr; op1:x2; dest:x11; immval:-2048; align: 0 
TEST_JALR_OP(x17, x11, x2, -2048, x14, 52,0)

# opcode: jalr; op1:x9; dest:x8; immval:-2; align: 0 
TEST_JALR_OP(x17, x8, x9, -2, x14, 56,0)

# opcode: jalr; op1:x8; dest:x23; immval:-3; align: 0 
TEST_JALR_OP(x17, x23, x8, -3, x14, 60,0)

# opcode: jalr; op1:x27; dest:x16; immval:-5; align: 0 
TEST_JALR_OP(x17, x16, x27, -5, x14, 64,0)

# opcode: jalr; op1:x1; dest:x22; immval:-9; align: 0 
TEST_JALR_OP(x17, x22, x1, -9, x14, 68,0)

# opcode: jalr; op1:x25; dest:x13; immval:-17; align: 0 
TEST_JALR_OP(x7, x13, x25, -17, x14, 72,0)
la x3,signature_x3_0

# opcode: jalr; op1:x17; dest:x27; immval:-33; align: 0 
TEST_JALR_OP(x7, x27, x17, -33, x3, 0,0)

# opcode: jalr; op1:x26; dest:x5; immval:-65; align: 0 
TEST_JALR_OP(x7, x5, x26, -65, x3, 4,0)

# opcode: jalr; op1:x29; dest:x12; immval:-129; align: 0 
TEST_JALR_OP(x7, x12, x29, -129, x3, 8,0)

# opcode: jalr; op1:x20; dest:x14; immval:-1025; align: 0 
TEST_JALR_OP(x7, x14, x20, -1025, x3, 12,0)

# opcode: jalr; op1:x19; dest:x25; immval:1365; align: 0 
TEST_JALR_OP(x7, x25, x19, 1365, x3, 16,0)

# opcode: jalr; op1:x22; dest:x0; immval:-257; align: 0 
TEST_JALR_OP(x7, x0, x22, -257, x3, 20,0)

# opcode: jalr; op1:x10; dest:x17; immval:-513; align: 0 
TEST_JALR_OP(x7, x17, x10, -513, x3, 24,0)

# opcode: jalr; op1:x14; dest:x1; immval:-2048; align: 0 
TEST_JALR_OP(x7, x1, x14, -2048, x3, 28,0)

# opcode: jalr; op1:x6; dest:x18; immval:-2048; align: 0 
TEST_JALR_OP(x7, x18, x6, -2048, x3, 32,0)

# opcode: jalr; op1:x31; dest:x2; immval:-2048; align: 0 
TEST_JALR_OP(x7, x2, x31, -2048, x3, 36,0)

# opcode: jalr; op1:x23; dest:x19; immval:-2048; align: 0 
TEST_JALR_OP(x7, x19, x23, -2048, x3, 40,0)

# opcode: jalr; op1:x16; dest:x4; immval:-2048; align: 0 
TEST_JALR_OP(x7, x4, x16, -2048, x3, 44,0)

# opcode: jalr; op1:x25; dest:x30; immval:-2048; align: 0 
TEST_JALR_OP(x7, x30, x25, -2048, x3, 48,0)

# opcode: jalr; op1:x10; dest:x11; immval:-1366; align: 0 
TEST_JALR_OP(x7, x11, x10, -1366, x3, 52,0)

# opcode: jalr; op1:x10; dest:x11; immval:-257; align: 0 
TEST_JALR_OP(x7, x11, x10, -257, x3, 56,0)
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

signature_x14_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x14_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 15*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
