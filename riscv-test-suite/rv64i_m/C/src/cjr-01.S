
#This assembly file tests the c.jr instruction of the RISC-V C extension for the cjr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cjr)

la x13,signature_x13_1

#opcode: c.jr; op1:x5
TEST_CJR_OP(x23, x5, x13, 0)

#opcode: c.jr; op1:x27
TEST_CJR_OP(x23, x27, x13, 8)

#opcode: c.jr; op1:x8
TEST_CJR_OP(x23, x8, x13, 16)

#opcode: c.jr; op1:x19
TEST_CJR_OP(x23, x19, x13, 24)

#opcode: c.jr; op1:x28
TEST_CJR_OP(x23, x28, x13, 32)

#opcode: c.jr; op1:x16
TEST_CJR_OP(x23, x16, x13, 40)

#opcode: c.jr; op1:x12
TEST_CJR_OP(x23, x12, x13, 48)

#opcode: c.jr; op1:x9
TEST_CJR_OP(x23, x9, x13, 56)

#opcode: c.jr; op1:x21
TEST_CJR_OP(x23, x21, x13, 64)

#opcode: c.jr; op1:x11
TEST_CJR_OP(x23, x11, x13, 72)

#opcode: c.jr; op1:x15
TEST_CJR_OP(x23, x15, x13, 80)

#opcode: c.jr; op1:x30
TEST_CJR_OP(x23, x30, x13, 88)

#opcode: c.jr; op1:x4
TEST_CJR_OP(x23, x4, x13, 96)

#opcode: c.jr; op1:x2
TEST_CJR_OP(x23, x2, x13, 104)

#opcode: c.jr; op1:x14
TEST_CJR_OP(x23, x14, x13, 112)

#opcode: c.jr; op1:x24
TEST_CJR_OP(x23, x24, x13, 120)

#opcode: c.jr; op1:x18
TEST_CJR_OP(x23, x18, x13, 128)

#opcode: c.jr; op1:x6
TEST_CJR_OP(x23, x6, x13, 136)

#opcode: c.jr; op1:x3
TEST_CJR_OP(x23, x3, x13, 144)

#opcode: c.jr; op1:x22
TEST_CJR_OP(x23, x22, x13, 152)

#opcode: c.jr; op1:x25
TEST_CJR_OP(x23, x25, x13, 160)

#opcode: c.jr; op1:x20
TEST_CJR_OP(x23, x20, x13, 168)

#opcode: c.jr; op1:x1
TEST_CJR_OP(x23, x1, x13, 176)

#opcode: c.jr; op1:x17
TEST_CJR_OP(x23, x17, x13, 184)

#opcode: c.jr; op1:x31
TEST_CJR_OP(x23, x31, x13, 192)

#opcode: c.jr; op1:x7
TEST_CJR_OP(x23, x7, x13, 200)

#opcode: c.jr; op1:x26
TEST_CJR_OP(x2, x26, x13, 208)
la x1,signature_x1_0

#opcode: c.jr; op1:x13
TEST_CJR_OP(x2, x13, x1, 0)

#opcode: c.jr; op1:x29
TEST_CJR_OP(x2, x29, x1, 8)

#opcode: c.jr; op1:x23
TEST_CJR_OP(x2, x23, x1, 16)

#opcode: c.jr; op1:x10
TEST_CJR_OP(x2, x10, x1, 24)

#opcode: c.jr; op1:x10
TEST_CJR_OP(x2, x10, x1, 32)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x13_1:
    .fill 27*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 5*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
