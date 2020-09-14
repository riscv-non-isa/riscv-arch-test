
#This assembly file tests the c.jr instruction of the RISC-V C extension for the cjr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cjr)

la x7,signature_x7_1

#opcode: c.jr; op1:x9
TEST_CJR_OP(x22, x9, x7, 0)

#opcode: c.jr; op1:x11
TEST_CJR_OP(x22, x11, x7, 4)

#opcode: c.jr; op1:x15
TEST_CJR_OP(x22, x15, x7, 8)

#opcode: c.jr; op1:x29
TEST_CJR_OP(x22, x29, x7, 12)

#opcode: c.jr; op1:x23
TEST_CJR_OP(x22, x23, x7, 16)

#opcode: c.jr; op1:x31
TEST_CJR_OP(x22, x31, x7, 20)

#opcode: c.jr; op1:x26
TEST_CJR_OP(x22, x26, x7, 24)

#opcode: c.jr; op1:x20
TEST_CJR_OP(x22, x20, x7, 28)

#opcode: c.jr; op1:x14
TEST_CJR_OP(x22, x14, x7, 32)

#opcode: c.jr; op1:x21
TEST_CJR_OP(x22, x21, x7, 36)

#opcode: c.jr; op1:x17
TEST_CJR_OP(x22, x17, x7, 40)

#opcode: c.jr; op1:x1
TEST_CJR_OP(x22, x1, x7, 44)

#opcode: c.jr; op1:x18
TEST_CJR_OP(x22, x18, x7, 48)

#opcode: c.jr; op1:x5
TEST_CJR_OP(x22, x5, x7, 52)

#opcode: c.jr; op1:x13
TEST_CJR_OP(x22, x13, x7, 56)

#opcode: c.jr; op1:x2
TEST_CJR_OP(x22, x2, x7, 60)

#opcode: c.jr; op1:x28
TEST_CJR_OP(x22, x28, x7, 64)

#opcode: c.jr; op1:x8
TEST_CJR_OP(x22, x8, x7, 68)

#opcode: c.jr; op1:x16
TEST_CJR_OP(x22, x16, x7, 72)

#opcode: c.jr; op1:x12
TEST_CJR_OP(x22, x12, x7, 76)

#opcode: c.jr; op1:x30
TEST_CJR_OP(x22, x30, x7, 80)

#opcode: c.jr; op1:x19
TEST_CJR_OP(x22, x19, x7, 84)

#opcode: c.jr; op1:x3
TEST_CJR_OP(x22, x3, x7, 88)

#opcode: c.jr; op1:x6
TEST_CJR_OP(x22, x6, x7, 92)

#opcode: c.jr; op1:x4
TEST_CJR_OP(x22, x4, x7, 96)

#opcode: c.jr; op1:x27
TEST_CJR_OP(x22, x27, x7, 100)

#opcode: c.jr; op1:x22
TEST_CJR_OP(x2, x22, x7, 104)
la x1,signature_x1_0

#opcode: c.jr; op1:x24
TEST_CJR_OP(x2, x24, x1, 0)

#opcode: c.jr; op1:x7
TEST_CJR_OP(x2, x7, x1, 4)

#opcode: c.jr; op1:x25
TEST_CJR_OP(x2, x25, x1, 8)

#opcode: c.jr; op1:x10
TEST_CJR_OP(x2, x10, x1, 12)

#opcode: c.jr; op1:x10
TEST_CJR_OP(x2, x10, x1, 16)
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
    .fill 27*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 5*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
