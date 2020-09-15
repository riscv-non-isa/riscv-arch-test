
#This assembly file tests the jal instruction of the RISC-V I extension for the jal covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jal)

la x11,signature_x11_1

# opcode: jal; dest:x27; immval:6; align: 0
TEST_JAL_OP(x18, x27, 6, 1b, x11, 0,0)

# opcode: jal; dest:x10; immval:32768; align: 0
TEST_JAL_OP(x18, x10, 32768, 3f, x11, 4,0)

# opcode: jal; dest:x28; immval:262144; align: 0
TEST_JAL_OP(x18, x28, 262144, 1b, x11, 8,0)

# opcode: jal; dest:x6; immval:262144; align: 0
TEST_JAL_OP(x18, x6, 262144, 3f, x11, 12,0)

# opcode: jal; dest:x26; immval:0; align: 0
TEST_JAL_OP(x18, x26, 0, 3f, x11, 16,0)

# opcode: jal; dest:x21; immval:0; align: 0
TEST_JAL_OP(x18, x21, 0, 3f, x11, 20,0)

# opcode: jal; dest:x19; immval:0; align: 0
TEST_JAL_OP(x18, x19, 0, 3f, x11, 24,0)

# opcode: jal; dest:x13; immval:0; align: 0
TEST_JAL_OP(x18, x13, 0, 3f, x11, 28,0)

# opcode: jal; dest:x7; immval:0; align: 0
TEST_JAL_OP(x18, x7, 0, 3f, x11, 32,0)

# opcode: jal; dest:x8; immval:0; align: 0
TEST_JAL_OP(x18, x8, 0, 3f, x11, 36,0)

# opcode: jal; dest:x15; immval:0; align: 0
TEST_JAL_OP(x18, x15, 0, 3f, x11, 40,0)

# opcode: jal; dest:x4; immval:0; align: 0
TEST_JAL_OP(x18, x4, 0, 3f, x11, 44,0)

# opcode: jal; dest:x1; immval:0; align: 0
TEST_JAL_OP(x18, x1, 0, 3f, x11, 48,0)

# opcode: jal; dest:x3; immval:0; align: 0
TEST_JAL_OP(x18, x3, 0, 3f, x11, 52,0)

# opcode: jal; dest:x5; immval:0; align: 0
TEST_JAL_OP(x18, x5, 0, 3f, x11, 56,0)

# opcode: jal; dest:x17; immval:0; align: 0
TEST_JAL_OP(x18, x17, 0, 3f, x11, 60,0)

# opcode: jal; dest:x2; immval:0; align: 0
TEST_JAL_OP(x18, x2, 0, 3f, x11, 64,0)

# opcode: jal; dest:x14; immval:0; align: 0
TEST_JAL_OP(x18, x14, 0, 3f, x11, 68,0)

# opcode: jal; dest:x16; immval:0; align: 0
TEST_JAL_OP(x18, x16, 0, 3f, x11, 72,0)

# opcode: jal; dest:x23; immval:0; align: 0
TEST_JAL_OP(x18, x23, 0, 3f, x11, 76,0)

# opcode: jal; dest:x25; immval:0; align: 0
TEST_JAL_OP(x18, x25, 0, 3f, x11, 80,0)

# opcode: jal; dest:x31; immval:0; align: 0
TEST_JAL_OP(x18, x31, 0, 3f, x11, 84,0)

# opcode: jal; dest:x22; immval:0; align: 0
TEST_JAL_OP(x18, x22, 0, 3f, x11, 88,0)

# opcode: jal; dest:x0; immval:0; align: 0
TEST_JAL_OP(x18, x0, 0, 3f, x11, 92,0)

# opcode: jal; dest:x12; immval:0; align: 0
TEST_JAL_OP(x18, x12, 0, 3f, x11, 96,0)

# opcode: jal; dest:x9; immval:0; align: 0
TEST_JAL_OP(x18, x9, 0, 3f, x11, 100,0)

# opcode: jal; dest:x24; immval:0; align: 0
TEST_JAL_OP(x18, x24, 0, 3f, x11, 104,0)

# opcode: jal; dest:x20; immval:0; align: 0
TEST_JAL_OP(x18, x20, 0, 3f, x11, 108,0)

# opcode: jal; dest:x30; immval:0; align: 0
TEST_JAL_OP(x2, x30, 0, 3f, x11, 112,0)
la x1,signature_x1_0

# opcode: jal; dest:x18; immval:0; align: 0
TEST_JAL_OP(x2, x18, 0, 3f, x1, 0,0)

# opcode: jal; dest:x29; immval:0; align: 0
TEST_JAL_OP(x2, x29, 0, 3f, x1, 4,0)

# opcode: jal; dest:x11; immval:0; align: 0
TEST_JAL_OP(x2, x11, 0, 3f, x1, 8,0)

# opcode: jal; dest:x10; immval:0; align: 0
TEST_JAL_OP(x2, x10, 0, 3f, x1, 12,0)
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

signature_x11_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x11_1:
    .fill 29*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 4*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
