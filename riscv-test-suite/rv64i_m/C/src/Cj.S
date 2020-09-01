
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cj)
la x1,signature_x1_1
TEST_CJ_OP(c.j, x2, 128, 3f, x1, 0)
TEST_CJ_OP(c.j, x2, 6, 1b, x1, 8)
TEST_CJ_OP(c.j, x2, 16, 3f, x1, 16)
TEST_CJ_OP(c.j, x2, 32, 3f, x1, 24)
TEST_CJ_OP(c.j, x2, 64, 3f, x1, 32)
TEST_CJ_OP(c.j, x2, 256, 3f, x1, 40)
TEST_CJ_OP(c.j, x2, 512, 3f, x1, 48)
TEST_CJ_OP(c.j, x2, 1024, 3f, x1, 56)
TEST_CJ_OP(c.j, x2, 10, 1b, x1, 64)
TEST_CJ_OP(c.j, x2, 18, 1b, x1, 72)
TEST_CJ_OP(c.j, x2, 34, 1b, x1, 80)
TEST_CJ_OP(c.j, x2, 1026, 1b, x1, 88)
TEST_CJ_OP(c.j, x2, 1366, 1b, x1, 96)
TEST_CJ_OP(c.j, x2, 1364, 3f, x1, 104)
TEST_CJ_OP(c.j, x2, 66, 1b, x1, 112)
TEST_CJ_OP(c.j, x2, 130, 1b, x1, 120)
TEST_CJ_OP(c.j, x2, 258, 1b, x1, 128)
TEST_CJ_OP(c.j, x2, 514, 1b, x1, 136)
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
    .fill 18*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
