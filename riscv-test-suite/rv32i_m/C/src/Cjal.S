
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*RV32.*I.*C.*);def TEST_CASE_1=True;",cjal)
la x2,signature_x2_1
TEST_CJAL_OP(c.jal, x3, 128, 3f, x2, 0)
TEST_CJAL_OP(c.jal, x3, 6, 1b, x2, 4)
TEST_CJAL_OP(c.jal, x3, 16, 3f, x2, 8)
TEST_CJAL_OP(c.jal, x3, 32, 3f, x2, 12)
TEST_CJAL_OP(c.jal, x3, 64, 3f, x2, 16)
TEST_CJAL_OP(c.jal, x3, 256, 3f, x2, 20)
TEST_CJAL_OP(c.jal, x3, 512, 3f, x2, 24)
TEST_CJAL_OP(c.jal, x3, 1024, 3f, x2, 28)
TEST_CJAL_OP(c.jal, x3, 10, 1b, x2, 32)
TEST_CJAL_OP(c.jal, x3, 18, 1b, x2, 36)
TEST_CJAL_OP(c.jal, x3, 34, 1b, x2, 40)
TEST_CJAL_OP(c.jal, x3, 1026, 1b, x2, 44)
TEST_CJAL_OP(c.jal, x3, 1366, 1b, x2, 48)
TEST_CJAL_OP(c.jal, x3, 1364, 3f, x2, 52)
TEST_CJAL_OP(c.jal, x3, 66, 1b, x2, 56)
TEST_CJAL_OP(c.jal, x3, 130, 1b, x2, 60)
TEST_CJAL_OP(c.jal, x3, 258, 1b, x2, 64)
TEST_CJAL_OP(c.jal, x3, 514, 1b, x2, 68)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x2_1:
    .fill 18*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
