
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cjr)
la x1,signature_x1_1
TEST_CJR_OP(x2, x31, x1, 0)
TEST_CJR_OP(x2, x30, x1, 4)
TEST_CJR_OP(x2, x29, x1, 8)
TEST_CJR_OP(x2, x28, x1, 12)
TEST_CJR_OP(x2, x27, x1, 16)
TEST_CJR_OP(x2, x26, x1, 20)
TEST_CJR_OP(x2, x25, x1, 24)
TEST_CJR_OP(x2, x24, x1, 28)
TEST_CJR_OP(x2, x23, x1, 32)
TEST_CJR_OP(x2, x22, x1, 36)
TEST_CJR_OP(x2, x21, x1, 40)
TEST_CJR_OP(x2, x20, x1, 44)
TEST_CJR_OP(x2, x19, x1, 48)
TEST_CJR_OP(x2, x18, x1, 52)
TEST_CJR_OP(x2, x17, x1, 56)
TEST_CJR_OP(x2, x16, x1, 60)
TEST_CJR_OP(x2, x15, x1, 64)
TEST_CJR_OP(x2, x14, x1, 68)
TEST_CJR_OP(x2, x13, x1, 72)
TEST_CJR_OP(x2, x12, x1, 76)
TEST_CJR_OP(x2, x11, x1, 80)
TEST_CJR_OP(x2, x10, x1, 84)
TEST_CJR_OP(x2, x9, x1, 88)
TEST_CJR_OP(x2, x8, x1, 92)
TEST_CJR_OP(x2, x7, x1, 96)
TEST_CJR_OP(x2, x6, x1, 100)
TEST_CJR_OP(x2, x5, x1, 104)
TEST_CJR_OP(x5, x4, x1, 108)
la x4,signature_x4_0
TEST_CJR_OP(x5, x3, x4, 0)
TEST_CJR_OP(x5, x2, x4, 4)
TEST_CJR_OP(x5, x1, x4, 8)
TEST_CJR_OP(x5, x10, x4, 12)
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
    .fill 28*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 4*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
