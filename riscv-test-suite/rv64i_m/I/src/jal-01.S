
#This assembly file tests the jal instruction of the RISC-V I extension for the jal covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jal)

la x6,signature_x6_1

# opcode: jal; dest:x4; immval:262144; align: 0
TEST_JAL_OP(x9, x4, 262144, 1b, x6, 0,0)

# opcode: jal; dest:x28; immval:16384; align: 0
TEST_JAL_OP(x9, x28, 16384, 3f, x6, 8,0)

# opcode: jal; dest:x1; immval:262144; align: 0
TEST_JAL_OP(x9, x1, 262144, 3f, x6, 16,0)

# opcode: jal; dest:x22; immval:0; align: 0
TEST_JAL_OP(x9, x22, 0, 3f, x6, 24,0)

# opcode: jal; dest:x16; immval:0; align: 0
TEST_JAL_OP(x9, x16, 0, 3f, x6, 32,0)

# opcode: jal; dest:x23; immval:0; align: 0
TEST_JAL_OP(x9, x23, 0, 3f, x6, 40,0)

# opcode: jal; dest:x10; immval:0; align: 0
TEST_JAL_OP(x9, x10, 0, 3f, x6, 48,0)

# opcode: jal; dest:x21; immval:0; align: 0
TEST_JAL_OP(x9, x21, 0, 3f, x6, 56,0)

# opcode: jal; dest:x13; immval:0; align: 0
TEST_JAL_OP(x9, x13, 0, 3f, x6, 64,0)

# opcode: jal; dest:x24; immval:0; align: 0
TEST_JAL_OP(x9, x24, 0, 3f, x6, 72,0)

# opcode: jal; dest:x25; immval:0; align: 0
TEST_JAL_OP(x9, x25, 0, 3f, x6, 80,0)

# opcode: jal; dest:x26; immval:0; align: 0
TEST_JAL_OP(x9, x26, 0, 3f, x6, 88,0)

# opcode: jal; dest:x3; immval:0; align: 0
TEST_JAL_OP(x9, x3, 0, 3f, x6, 96,0)

# opcode: jal; dest:x12; immval:0; align: 0
TEST_JAL_OP(x9, x12, 0, 3f, x6, 104,0)

# opcode: jal; dest:x14; immval:0; align: 0
TEST_JAL_OP(x9, x14, 0, 3f, x6, 112,0)

# opcode: jal; dest:x20; immval:0; align: 0
TEST_JAL_OP(x9, x20, 0, 3f, x6, 120,0)

# opcode: jal; dest:x27; immval:0; align: 0
TEST_JAL_OP(x9, x27, 0, 3f, x6, 128,0)

# opcode: jal; dest:x5; immval:0; align: 0
TEST_JAL_OP(x9, x5, 0, 3f, x6, 136,0)

# opcode: jal; dest:x8; immval:0; align: 0
TEST_JAL_OP(x9, x8, 0, 3f, x6, 144,0)

# opcode: jal; dest:x31; immval:0; align: 0
TEST_JAL_OP(x9, x31, 0, 3f, x6, 152,0)

# opcode: jal; dest:x15; immval:0; align: 0
TEST_JAL_OP(x9, x15, 0, 3f, x6, 160,0)

# opcode: jal; dest:x19; immval:0; align: 0
TEST_JAL_OP(x9, x19, 0, 3f, x6, 168,0)

# opcode: jal; dest:x2; immval:0; align: 0
TEST_JAL_OP(x9, x2, 0, 3f, x6, 176,0)

# opcode: jal; dest:x7; immval:0; align: 0
TEST_JAL_OP(x9, x7, 0, 3f, x6, 184,0)

# opcode: jal; dest:x11; immval:0; align: 0
TEST_JAL_OP(x9, x11, 0, 3f, x6, 192,0)

# opcode: jal; dest:x18; immval:0; align: 0
TEST_JAL_OP(x9, x18, 0, 3f, x6, 200,0)

# opcode: jal; dest:x29; immval:0; align: 0
TEST_JAL_OP(x9, x29, 0, 3f, x6, 208,0)

# opcode: jal; dest:x30; immval:0; align: 0
TEST_JAL_OP(x2, x30, 0, 3f, x6, 216,0)
la x1,signature_x1_0

# opcode: jal; dest:x6; immval:0; align: 0
TEST_JAL_OP(x2, x6, 0, 3f, x1, 0,0)

# opcode: jal; dest:x9; immval:0; align: 0
TEST_JAL_OP(x2, x9, 0, 3f, x1, 8,0)

# opcode: jal; dest:x0; immval:0; align: 0
TEST_JAL_OP(x2, x0, 0, 3f, x1, 16,0)

# opcode: jal; dest:x17; immval:0; align: 0
TEST_JAL_OP(x2, x17, 0, 3f, x1, 24,0)

# opcode: jal; dest:x10; immval:0; align: 0
TEST_JAL_OP(x2, x10, 0, 3f, x1, 32,0)
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
    .fill 28*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 5*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
