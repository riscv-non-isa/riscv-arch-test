
#This assembly file tests the c.jalr instruction of the RISC-V C extension for the cjalr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cjalr)

la x10,signature_x10_1

#opcode:c.jalr; op1:x11
TEST_CJALR_OP(x13, x11, x10, 0)

#opcode:c.jalr; op1:x2
TEST_CJALR_OP(x13, x2, x10, 4)

#opcode:c.jalr; op1:x23
TEST_CJALR_OP(x13, x23, x10, 8)

#opcode:c.jalr; op1:x16
TEST_CJALR_OP(x13, x16, x10, 12)

#opcode:c.jalr; op1:x20
TEST_CJALR_OP(x13, x20, x10, 16)

#opcode:c.jalr; op1:x6
TEST_CJALR_OP(x13, x6, x10, 20)

#opcode:c.jalr; op1:x18
TEST_CJALR_OP(x13, x18, x10, 24)

#opcode:c.jalr; op1:x19
TEST_CJALR_OP(x13, x19, x10, 28)

#opcode:c.jalr; op1:x15
TEST_CJALR_OP(x13, x15, x10, 32)

#opcode:c.jalr; op1:x8
TEST_CJALR_OP(x13, x8, x10, 36)

#opcode:c.jalr; op1:x30
TEST_CJALR_OP(x13, x30, x10, 40)

#opcode:c.jalr; op1:x27
TEST_CJALR_OP(x13, x27, x10, 44)

#opcode:c.jalr; op1:x14
TEST_CJALR_OP(x13, x14, x10, 48)

#opcode:c.jalr; op1:x25
TEST_CJALR_OP(x13, x25, x10, 52)

#opcode:c.jalr; op1:x12
TEST_CJALR_OP(x13, x12, x10, 56)

#opcode:c.jalr; op1:x9
TEST_CJALR_OP(x13, x9, x10, 60)

#opcode:c.jalr; op1:x17
TEST_CJALR_OP(x13, x17, x10, 64)

#opcode:c.jalr; op1:x1
TEST_CJALR_OP(x13, x1, x10, 68)

#opcode:c.jalr; op1:x28
TEST_CJALR_OP(x13, x28, x10, 72)

#opcode:c.jalr; op1:x3
TEST_CJALR_OP(x13, x3, x10, 76)

#opcode:c.jalr; op1:x7
TEST_CJALR_OP(x13, x7, x10, 80)

#opcode:c.jalr; op1:x21
TEST_CJALR_OP(x13, x21, x10, 84)

#opcode:c.jalr; op1:x22
TEST_CJALR_OP(x13, x22, x10, 88)

#opcode:c.jalr; op1:x5
TEST_CJALR_OP(x13, x5, x10, 92)

#opcode:c.jalr; op1:x24
TEST_CJALR_OP(x13, x24, x10, 96)

#opcode:c.jalr; op1:x4
TEST_CJALR_OP(x13, x4, x10, 100)

#opcode:c.jalr; op1:x26
TEST_CJALR_OP(x13, x26, x10, 104)

#opcode:c.jalr; op1:x13
TEST_CJALR_OP(x3, x13, x10, 108)
la x2,signature_x2_0

#opcode:c.jalr; op1:x31
TEST_CJALR_OP(x3, x31, x2, 0)

#opcode:c.jalr; op1:x29
TEST_CJALR_OP(x3, x29, x2, 4)

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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x10_1:
    .fill 28*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 4*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
