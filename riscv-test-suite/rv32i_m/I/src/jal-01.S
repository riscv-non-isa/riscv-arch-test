
#This assembly file tests the jal instruction of the RISC-V I extension for the jal covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jal)

la x12,signature_x12_1

# opcode: jal; dest:x30; immval:8; align: 0
TEST_JAL_OP(x22, x30, 8, 1b, x12, 0,0)

# opcode: jal; dest:x17; immval:4096; align: 0
TEST_JAL_OP(x22, x17, 4096, 3f, x12, 4,0)

# opcode: jal; dest:x19; immval:262144; align: 0
TEST_JAL_OP(x22, x19, 262144, 1b, x12, 8,0)

# opcode: jal; dest:x8; immval:262144; align: 0
TEST_JAL_OP(x22, x8, 262144, 3f, x12, 12,0)

# opcode: jal; dest:x13; immval:0; align: 0
TEST_JAL_OP(x22, x13, 0, 3f, x12, 16,0)

# opcode: jal; dest:x26; immval:0; align: 0
TEST_JAL_OP(x22, x26, 0, 3f, x12, 20,0)

# opcode: jal; dest:x14; immval:0; align: 0
TEST_JAL_OP(x22, x14, 0, 3f, x12, 24,0)

# opcode: jal; dest:x4; immval:0; align: 0
TEST_JAL_OP(x22, x4, 0, 3f, x12, 28,0)

# opcode: jal; dest:x16; immval:0; align: 0
TEST_JAL_OP(x22, x16, 0, 3f, x12, 32,0)

# opcode: jal; dest:x18; immval:0; align: 0
TEST_JAL_OP(x22, x18, 0, 3f, x12, 36,0)

# opcode: jal; dest:x3; immval:0; align: 0
TEST_JAL_OP(x22, x3, 0, 3f, x12, 40,0)

# opcode: jal; dest:x31; immval:0; align: 0
TEST_JAL_OP(x22, x31, 0, 3f, x12, 44,0)

# opcode: jal; dest:x27; immval:0; align: 0
TEST_JAL_OP(x22, x27, 0, 3f, x12, 48,0)

# opcode: jal; dest:x6; immval:0; align: 0
TEST_JAL_OP(x22, x6, 0, 3f, x12, 52,0)

# opcode: jal; dest:x7; immval:0; align: 0
TEST_JAL_OP(x22, x7, 0, 3f, x12, 56,0)

# opcode: jal; dest:x25; immval:0; align: 0
TEST_JAL_OP(x22, x25, 0, 3f, x12, 60,0)

# opcode: jal; dest:x20; immval:0; align: 0
TEST_JAL_OP(x22, x20, 0, 3f, x12, 64,0)

# opcode: jal; dest:x21; immval:0; align: 0
TEST_JAL_OP(x22, x21, 0, 3f, x12, 68,0)

# opcode: jal; dest:x2; immval:0; align: 0
TEST_JAL_OP(x22, x2, 0, 3f, x12, 72,0)

# opcode: jal; dest:x5; immval:0; align: 0
TEST_JAL_OP(x22, x5, 0, 3f, x12, 76,0)

# opcode: jal; dest:x23; immval:0; align: 0
TEST_JAL_OP(x22, x23, 0, 3f, x12, 80,0)

# opcode: jal; dest:x24; immval:0; align: 0
TEST_JAL_OP(x22, x24, 0, 3f, x12, 84,0)

# opcode: jal; dest:x9; immval:0; align: 0
TEST_JAL_OP(x22, x9, 0, 3f, x12, 88,0)

# opcode: jal; dest:x15; immval:0; align: 0
TEST_JAL_OP(x22, x15, 0, 3f, x12, 92,0)

# opcode: jal; dest:x1; immval:0; align: 0
TEST_JAL_OP(x22, x1, 0, 3f, x12, 96,0)

# opcode: jal; dest:x11; immval:0; align: 0
TEST_JAL_OP(x22, x11, 0, 3f, x12, 100,0)

# opcode: jal; dest:x10; immval:0; align: 0
TEST_JAL_OP(x22, x10, 0, 3f, x12, 104,0)

# opcode: jal; dest:x22; immval:0; align: 0
TEST_JAL_OP(x2, x22, 0, 3f, x12, 108,0)
la x1,signature_x1_0

# opcode: jal; dest:x28; immval:0; align: 0
TEST_JAL_OP(x2, x28, 0, 3f, x1, 0,0)

# opcode: jal; dest:x12; immval:0; align: 0
TEST_JAL_OP(x2, x12, 0, 3f, x1, 4,0)

# opcode: jal; dest:x29; immval:0; align: 0
TEST_JAL_OP(x2, x29, 0, 3f, x1, 8,0)

# opcode: jal; dest:x0; immval:0; align: 0
TEST_JAL_OP(x2, x0, 0, 3f, x1, 12,0)

# opcode: jal; dest:x10; immval:0; align: 0
TEST_JAL_OP(x2, x10, 0, 3f, x1, 16,0)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x12_1:
    .fill 28*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 5*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
