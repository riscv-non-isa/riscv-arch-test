
#This assembly file tests the c.jalr instruction of the RISC-V C extension for the cjalr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cjalr)

la x7,signature_x7_1

#opcode:c.jalr; op1:x6
TEST_CJALR_OP(x8, x6, x7, 0)

#opcode:c.jalr; op1:x21
TEST_CJALR_OP(x8, x21, x7, 4)

#opcode:c.jalr; op1:x20
TEST_CJALR_OP(x8, x20, x7, 8)

#opcode:c.jalr; op1:x24
TEST_CJALR_OP(x8, x24, x7, 12)

#opcode:c.jalr; op1:x15
TEST_CJALR_OP(x8, x15, x7, 16)

#opcode:c.jalr; op1:x30
TEST_CJALR_OP(x8, x30, x7, 20)

#opcode:c.jalr; op1:x1
TEST_CJALR_OP(x8, x1, x7, 24)

#opcode:c.jalr; op1:x3
TEST_CJALR_OP(x8, x3, x7, 28)

#opcode:c.jalr; op1:x27
TEST_CJALR_OP(x8, x27, x7, 32)

#opcode:c.jalr; op1:x28
TEST_CJALR_OP(x8, x28, x7, 36)

#opcode:c.jalr; op1:x25
TEST_CJALR_OP(x8, x25, x7, 40)

#opcode:c.jalr; op1:x13
TEST_CJALR_OP(x8, x13, x7, 44)

#opcode:c.jalr; op1:x31
TEST_CJALR_OP(x8, x31, x7, 48)

#opcode:c.jalr; op1:x18
TEST_CJALR_OP(x8, x18, x7, 52)

#opcode:c.jalr; op1:x16
TEST_CJALR_OP(x8, x16, x7, 56)

#opcode:c.jalr; op1:x22
TEST_CJALR_OP(x8, x22, x7, 60)

#opcode:c.jalr; op1:x23
TEST_CJALR_OP(x8, x23, x7, 64)

#opcode:c.jalr; op1:x19
TEST_CJALR_OP(x8, x19, x7, 68)

#opcode:c.jalr; op1:x5
TEST_CJALR_OP(x8, x5, x7, 72)

#opcode:c.jalr; op1:x12
TEST_CJALR_OP(x8, x12, x7, 76)

#opcode:c.jalr; op1:x29
TEST_CJALR_OP(x8, x29, x7, 80)

#opcode:c.jalr; op1:x26
TEST_CJALR_OP(x8, x26, x7, 84)

#opcode:c.jalr; op1:x9
TEST_CJALR_OP(x8, x9, x7, 88)

#opcode:c.jalr; op1:x4
TEST_CJALR_OP(x8, x4, x7, 92)

#opcode:c.jalr; op1:x2
TEST_CJALR_OP(x8, x2, x7, 96)

#opcode:c.jalr; op1:x17
TEST_CJALR_OP(x8, x17, x7, 100)

#opcode:c.jalr; op1:x11
TEST_CJALR_OP(x8, x11, x7, 104)

#opcode:c.jalr; op1:x14
TEST_CJALR_OP(x3, x14, x7, 108)
la x2,signature_x2_0

#opcode:c.jalr; op1:x7
TEST_CJALR_OP(x3, x7, x2, 0)

#opcode:c.jalr; op1:x8
TEST_CJALR_OP(x3, x8, x2, 4)

#opcode:c.jalr; op1:x10
TEST_CJALR_OP(x3, x10, x2, 8)

#opcode:c.jalr; op1:x10
TEST_CJALR_OP(x3, x10, x2, 12)
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
    .fill 0*(XLEN/32),4,0xafacadee


signature_x7_1:
    .fill 28*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 4*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
