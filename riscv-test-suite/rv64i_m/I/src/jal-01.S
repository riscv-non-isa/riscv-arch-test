
#This assembly file tests the jal instruction of the RISC-V I extension for the jal covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jal)

la x3,signature_x3_1

# opcode: jal; dest:x29; immval:4; align: 0
TEST_JAL_OP(x6, x29, 4, 1b, x3, 0,0)

# opcode: jal; dest:x27; immval:8; align: 0
TEST_JAL_OP(x6, x27, 8, 3f, x3, 8,0)

# opcode: jal; dest:x17; immval:262144; align: 0
TEST_JAL_OP(x6, x17, 262144, 1b, x3, 16,0)

# opcode: jal; dest:x19; immval:262144; align: 0
TEST_JAL_OP(x6, x19, 262144, 3f, x3, 24,0)

# opcode: jal; dest:x15; immval:0; align: 0
TEST_JAL_OP(x6, x15, 0, 3f, x3, 32,0)

# opcode: jal; dest:x13; immval:0; align: 0
TEST_JAL_OP(x6, x13, 0, 3f, x3, 40,0)

# opcode: jal; dest:x24; immval:0; align: 0
TEST_JAL_OP(x6, x24, 0, 3f, x3, 48,0)

# opcode: jal; dest:x22; immval:0; align: 0
TEST_JAL_OP(x6, x22, 0, 3f, x3, 56,0)

# opcode: jal; dest:x2; immval:0; align: 0
TEST_JAL_OP(x6, x2, 0, 3f, x3, 64,0)

# opcode: jal; dest:x0; immval:0; align: 0
TEST_JAL_OP(x6, x0, 0, 3f, x3, 72,0)

# opcode: jal; dest:x31; immval:0; align: 0
TEST_JAL_OP(x6, x31, 0, 3f, x3, 80,0)

# opcode: jal; dest:x28; immval:0; align: 0
TEST_JAL_OP(x6, x28, 0, 3f, x3, 88,0)

# opcode: jal; dest:x7; immval:0; align: 0
TEST_JAL_OP(x6, x7, 0, 3f, x3, 96,0)

# opcode: jal; dest:x30; immval:0; align: 0
TEST_JAL_OP(x6, x30, 0, 3f, x3, 104,0)

# opcode: jal; dest:x1; immval:0; align: 0
TEST_JAL_OP(x6, x1, 0, 3f, x3, 112,0)

# opcode: jal; dest:x5; immval:0; align: 0
TEST_JAL_OP(x6, x5, 0, 3f, x3, 120,0)

# opcode: jal; dest:x23; immval:0; align: 0
TEST_JAL_OP(x6, x23, 0, 3f, x3, 128,0)

# opcode: jal; dest:x20; immval:0; align: 0
TEST_JAL_OP(x6, x20, 0, 3f, x3, 136,0)

# opcode: jal; dest:x8; immval:0; align: 0
TEST_JAL_OP(x6, x8, 0, 3f, x3, 144,0)

# opcode: jal; dest:x10; immval:0; align: 0
TEST_JAL_OP(x6, x10, 0, 3f, x3, 152,0)

# opcode: jal; dest:x12; immval:0; align: 0
TEST_JAL_OP(x6, x12, 0, 3f, x3, 160,0)

# opcode: jal; dest:x9; immval:0; align: 0
TEST_JAL_OP(x6, x9, 0, 3f, x3, 168,0)

# opcode: jal; dest:x14; immval:0; align: 0
TEST_JAL_OP(x6, x14, 0, 3f, x3, 176,0)

# opcode: jal; dest:x4; immval:0; align: 0
TEST_JAL_OP(x6, x4, 0, 3f, x3, 184,0)

# opcode: jal; dest:x16; immval:0; align: 0
TEST_JAL_OP(x6, x16, 0, 3f, x3, 192,0)

# opcode: jal; dest:x25; immval:0; align: 0
TEST_JAL_OP(x6, x25, 0, 3f, x3, 200,0)

# opcode: jal; dest:x11; immval:0; align: 0
TEST_JAL_OP(x6, x11, 0, 3f, x3, 208,0)

# opcode: jal; dest:x21; immval:0; align: 0
TEST_JAL_OP(x6, x21, 0, 3f, x3, 216,0)

# opcode: jal; dest:x18; immval:0; align: 0
TEST_JAL_OP(x2, x18, 0, 3f, x3, 224,0)
la x1,signature_x1_0

# opcode: jal; dest:x6; immval:0; align: 0
TEST_JAL_OP(x2, x6, 0, 3f, x1, 0,0)

# opcode: jal; dest:x26; immval:0; align: 0
TEST_JAL_OP(x2, x26, 0, 3f, x1, 8,0)

# opcode: jal; dest:x3; immval:0; align: 0
TEST_JAL_OP(x2, x3, 0, 3f, x1, 16,0)

# opcode: jal; dest:x10; immval:0; align: 0
TEST_JAL_OP(x2, x10, 0, 3f, x1, 24,0)
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
    .fill 0*(XLEN/32),4,0xafacadee


signature_x3_1:
    .fill 29*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 4*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
