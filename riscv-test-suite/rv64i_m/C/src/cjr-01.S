
#This assembly file tests the c.jr instruction of the RISC-V C extension for the cjr covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cjr)

la x8,signature_x8_1

#opcode: c.jr; op1:x9
TEST_CJR_OP(x2, x9, x8, 0)

#opcode: c.jr; op1:x28
TEST_CJR_OP(x2, x28, x8, 8)

#opcode: c.jr; op1:x1
TEST_CJR_OP(x2, x1, x8, 16)

#opcode: c.jr; op1:x25
TEST_CJR_OP(x2, x25, x8, 24)

#opcode: c.jr; op1:x7
TEST_CJR_OP(x2, x7, x8, 32)

#opcode: c.jr; op1:x15
TEST_CJR_OP(x2, x15, x8, 40)

#opcode: c.jr; op1:x23
TEST_CJR_OP(x2, x23, x8, 48)

#opcode: c.jr; op1:x4
TEST_CJR_OP(x2, x4, x8, 56)

#opcode: c.jr; op1:x30
TEST_CJR_OP(x2, x30, x8, 64)

#opcode: c.jr; op1:x3
TEST_CJR_OP(x2, x3, x8, 72)

#opcode: c.jr; op1:x5
TEST_CJR_OP(x2, x5, x8, 80)

#opcode: c.jr; op1:x19
TEST_CJR_OP(x2, x19, x8, 88)

#opcode: c.jr; op1:x18
TEST_CJR_OP(x2, x18, x8, 96)

#opcode: c.jr; op1:x27
TEST_CJR_OP(x2, x27, x8, 104)

#opcode: c.jr; op1:x31
TEST_CJR_OP(x2, x31, x8, 112)

#opcode: c.jr; op1:x17
TEST_CJR_OP(x2, x17, x8, 120)

#opcode: c.jr; op1:x12
TEST_CJR_OP(x2, x12, x8, 128)

#opcode: c.jr; op1:x24
TEST_CJR_OP(x2, x24, x8, 136)

#opcode: c.jr; op1:x21
TEST_CJR_OP(x2, x21, x8, 144)

#opcode: c.jr; op1:x11
TEST_CJR_OP(x2, x11, x8, 152)

#opcode: c.jr; op1:x16
TEST_CJR_OP(x2, x16, x8, 160)

#opcode: c.jr; op1:x26
TEST_CJR_OP(x2, x26, x8, 168)

#opcode: c.jr; op1:x14
TEST_CJR_OP(x2, x14, x8, 176)

#opcode: c.jr; op1:x6
TEST_CJR_OP(x2, x6, x8, 184)

#opcode: c.jr; op1:x13
TEST_CJR_OP(x2, x13, x8, 192)

#opcode: c.jr; op1:x29
TEST_CJR_OP(x2, x29, x8, 200)

#opcode: c.jr; op1:x2
TEST_CJR_OP(x3, x2, x8, 208)
la x1,signature_x1_0

#opcode: c.jr; op1:x8
TEST_CJR_OP(x3, x8, x1, 0)

#opcode: c.jr; op1:x20
TEST_CJR_OP(x3, x20, x1, 8)

#opcode: c.jr; op1:x22
TEST_CJR_OP(x3, x22, x1, 16)

#opcode: c.jr; op1:x10
TEST_CJR_OP(x3, x10, x1, 24)

#opcode: c.jr; op1:x10
TEST_CJR_OP(x3, x10, x1, 32)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x8_1:
    .fill 27*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 5*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
