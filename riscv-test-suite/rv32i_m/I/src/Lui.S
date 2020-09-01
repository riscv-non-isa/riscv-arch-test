
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*);def TEST_CASE_1=True;",lui)
la x1,signature_x1_1
TEST_CASE(x2, x31, 0, x1, 0, lui x31,0)
TEST_CASE(x2, x30, 4294963200, x1, 4, lui x30,1048575)
TEST_CASE(x2, x29, 0, x1, 8, lui x29,0)
TEST_CASE(x2, x28, 0, x1, 12, lui x28,0)
TEST_CASE(x2, x27, 0, x1, 16, lui x27,0)
TEST_CASE(x2, x26, 0, x1, 20, lui x26,0)
TEST_CASE(x2, x25, 0, x1, 24, lui x25,0)
TEST_CASE(x2, x24, 0, x1, 28, lui x24,0)
TEST_CASE(x2, x23, 0, x1, 32, lui x23,0)
TEST_CASE(x2, x22, 0, x1, 36, lui x22,0)
TEST_CASE(x2, x21, 0, x1, 40, lui x21,0)
TEST_CASE(x2, x20, 0, x1, 44, lui x20,0)
TEST_CASE(x2, x19, 0, x1, 48, lui x19,0)
TEST_CASE(x2, x18, 0, x1, 52, lui x18,0)
TEST_CASE(x2, x17, 0, x1, 56, lui x17,0)
TEST_CASE(x2, x16, 0, x1, 60, lui x16,0)
TEST_CASE(x2, x15, 0, x1, 64, lui x15,0)
TEST_CASE(x2, x14, 0, x1, 68, lui x14,0)
TEST_CASE(x2, x13, 0, x1, 72, lui x13,0)
TEST_CASE(x2, x12, 0, x1, 76, lui x12,0)
TEST_CASE(x2, x11, 0, x1, 80, lui x11,0)
TEST_CASE(x2, x10, 0, x1, 84, lui x10,0)
TEST_CASE(x2, x9, 0, x1, 88, lui x9,0)
TEST_CASE(x2, x8, 0, x1, 92, lui x8,0)
TEST_CASE(x2, x7, 0, x1, 96, lui x7,0)
TEST_CASE(x2, x6, 0, x1, 100, lui x6,0)
TEST_CASE(x2, x5, 0, x1, 104, lui x5,0)
TEST_CASE(x5, x4, 0, x1, 108, lui x4,0)
la x4,signature_x4_0
TEST_CASE(x5, x3, 0, x4, 0, lui x3,0)
TEST_CASE(x5, x2, 0, x4, 4, lui x2,0)
TEST_CASE(x5, x1, 0, x4, 8, lui x1,0)
TEST_CASE(x5, x0, 0, x4, 12, lui x0,0)
TEST_CASE(x5, x10, 0, x4, 16, lui x10,0)
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
    .fill 5*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
