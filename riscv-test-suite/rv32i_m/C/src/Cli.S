
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cli)
la x1,signature_x1_1
TEST_CASE(x2, x31, 0, x1, 0, c.li x31, -32;)
TEST_CASE(x2, x30, 0, x1, 4, c.li x30, 0;)
TEST_CASE(x2, x29, 0, x1, 8, c.li x29, 31;)
TEST_CASE(x2, x28, 0, x1, 12, c.li x28, 1;)
TEST_CASE(x2, x27, 0, x1, 16, c.li x27, 2;)
TEST_CASE(x2, x26, 0, x1, 20, c.li x26, 4;)
TEST_CASE(x2, x25, 0, x1, 24, c.li x25, 8;)
TEST_CASE(x2, x24, 0, x1, 28, c.li x24, 16;)
TEST_CASE(x2, x23, 0, x1, 32, c.li x23, -22;)
TEST_CASE(x2, x22, 0, x1, 36, c.li x22, -2;)
TEST_CASE(x2, x21, 0, x1, 40, c.li x21, -3;)
TEST_CASE(x2, x20, 0, x1, 44, c.li x20, -5;)
TEST_CASE(x2, x19, 0, x1, 48, c.li x19, -9;)
TEST_CASE(x2, x18, 0, x1, 52, c.li x18, -17;)
TEST_CASE(x2, x17, 0, x1, 56, c.li x17, 21;)
TEST_CASE(x2, x16, 0, x1, 60, c.li x16, 0;)
TEST_CASE(x2, x15, 0, x1, 64, c.li x15, 0;)
TEST_CASE(x2, x14, 0, x1, 68, c.li x14, 0;)
TEST_CASE(x2, x13, 0, x1, 72, c.li x13, 0;)
TEST_CASE(x2, x12, 0, x1, 76, c.li x12, 0;)
TEST_CASE(x2, x11, 0, x1, 80, c.li x11, 0;)
TEST_CASE(x2, x10, 0, x1, 84, c.li x10, 0;)
TEST_CASE(x2, x9, 0, x1, 88, c.li x9, 0;)
TEST_CASE(x2, x8, 0, x1, 92, c.li x8, 0;)
TEST_CASE(x2, x7, 0, x1, 96, c.li x7, 0;)
TEST_CASE(x2, x6, 0, x1, 100, c.li x6, 0;)
TEST_CASE(x2, x5, 0, x1, 104, c.li x5, 0;)
TEST_CASE(x5, x4, 0, x1, 108, c.li x4, 0;)
la x4,signature_x4_0
TEST_CASE(x5, x3, 0, x4, 0, c.li x3, 0;)
TEST_CASE(x5, x2, 0, x4, 4, c.li x2, 0;)
TEST_CASE(x5, x1, 0, x4, 8, c.li x1, 0;)
TEST_CASE(x5, x0, 0, x4, 12, c.li x0, 0;)
TEST_CASE(x5, x10, 0, x4, 16, c.li x10, 0;)
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
