
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cnop)
la x1,signature_x1_1
TEST_CNOP_OP(c.nop, x2, 1, x1, 0)
TEST_CNOP_OP(c.nop, x2, 2, x1, 4)
TEST_CNOP_OP(c.nop, x2, 4, x1, 8)
TEST_CNOP_OP(c.nop, x2, 8, x1, 12)
TEST_CNOP_OP(c.nop, x2, 16, x1, 16)
TEST_CNOP_OP(c.nop, x2, -32, x1, 20)
TEST_CNOP_OP(c.nop, x2, -2, x1, 24)
TEST_CNOP_OP(c.nop, x2, -3, x1, 28)
TEST_CNOP_OP(c.nop, x2, -5, x1, 32)
TEST_CNOP_OP(c.nop, x2, -9, x1, 36)
TEST_CNOP_OP(c.nop, x2, -17, x1, 40)
TEST_CNOP_OP(c.nop, x2, 31, x1, 44)
TEST_CNOP_OP(c.nop, x2, 21, x1, 48)
TEST_CNOP_OP(c.nop, x2, -22, x1, 52)
#endif


RVMODEL_HALT
RVTEST_CODE_END

RVTEST_DATA_BEGIN
.align 4
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x1_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x1_1:
    .fill 14*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
