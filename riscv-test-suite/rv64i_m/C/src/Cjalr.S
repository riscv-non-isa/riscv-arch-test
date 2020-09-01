
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cjalr)
la x2,signature_x2_1
TEST_CJALR_OP(x3, x31, x2, 0)
TEST_CJALR_OP(x3, x30, x2, 8)
TEST_CJALR_OP(x3, x29, x2, 16)
TEST_CJALR_OP(x3, x28, x2, 24)
TEST_CJALR_OP(x3, x27, x2, 32)
TEST_CJALR_OP(x3, x26, x2, 40)
TEST_CJALR_OP(x3, x25, x2, 48)
TEST_CJALR_OP(x3, x24, x2, 56)
TEST_CJALR_OP(x3, x23, x2, 64)
TEST_CJALR_OP(x3, x22, x2, 72)
TEST_CJALR_OP(x3, x21, x2, 80)
TEST_CJALR_OP(x3, x20, x2, 88)
TEST_CJALR_OP(x3, x19, x2, 96)
TEST_CJALR_OP(x3, x18, x2, 104)
TEST_CJALR_OP(x3, x17, x2, 112)
TEST_CJALR_OP(x3, x16, x2, 120)
TEST_CJALR_OP(x3, x15, x2, 128)
TEST_CJALR_OP(x3, x14, x2, 136)
TEST_CJALR_OP(x3, x13, x2, 144)
TEST_CJALR_OP(x3, x12, x2, 152)
TEST_CJALR_OP(x3, x11, x2, 160)
TEST_CJALR_OP(x3, x10, x2, 168)
TEST_CJALR_OP(x3, x9, x2, 176)
TEST_CJALR_OP(x3, x8, x2, 184)
TEST_CJALR_OP(x3, x7, x2, 192)
TEST_CJALR_OP(x3, x6, x2, 200)
TEST_CJALR_OP(x6, x5, x2, 208)
la x5,signature_x5_0
TEST_CJALR_OP(x6, x4, x5, 0)
TEST_CJALR_OP(x6, x3, x5, 8)
TEST_CJALR_OP(x6, x2, x5, 16)
TEST_CJALR_OP(x6, x1, x5, 24)
TEST_CJALR_OP(x6, x10, x5, 32)
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
    .fill 27*(XLEN/32),4,0xafacadee


signature_x5_0:
    .fill 5*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
