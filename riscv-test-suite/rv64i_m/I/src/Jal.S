
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*);def TEST_CASE_1=True;",jal)
la x1,signature_x1_1
TEST_JAL_OP(x2, x31, 4, 1b, x1, 0)
TEST_JAL_OP(x2, x30, 65536, 3f, x1, 8)
TEST_JAL_OP(x2, x29, 262144, 1b, x1, 16)
TEST_JAL_OP(x2, x28, 262144, 3f, x1, 24)
TEST_JAL_OP(x2, x27, 0, 3f, x1, 32)
TEST_JAL_OP(x2, x26, 0, 3f, x1, 40)
TEST_JAL_OP(x2, x25, 0, 3f, x1, 48)
TEST_JAL_OP(x2, x24, 0, 3f, x1, 56)
TEST_JAL_OP(x2, x23, 0, 3f, x1, 64)
TEST_JAL_OP(x2, x22, 0, 3f, x1, 72)
TEST_JAL_OP(x2, x21, 0, 3f, x1, 80)
TEST_JAL_OP(x2, x20, 0, 3f, x1, 88)
TEST_JAL_OP(x2, x19, 0, 3f, x1, 96)
TEST_JAL_OP(x2, x18, 0, 3f, x1, 104)
TEST_JAL_OP(x2, x17, 0, 3f, x1, 112)
TEST_JAL_OP(x2, x16, 0, 3f, x1, 120)
TEST_JAL_OP(x2, x15, 0, 3f, x1, 128)
TEST_JAL_OP(x2, x14, 0, 3f, x1, 136)
TEST_JAL_OP(x2, x13, 0, 3f, x1, 144)
TEST_JAL_OP(x2, x12, 0, 3f, x1, 152)
TEST_JAL_OP(x2, x11, 0, 3f, x1, 160)
TEST_JAL_OP(x2, x10, 0, 3f, x1, 168)
TEST_JAL_OP(x2, x9, 0, 3f, x1, 176)
TEST_JAL_OP(x2, x8, 0, 3f, x1, 184)
TEST_JAL_OP(x2, x7, 0, 3f, x1, 192)
TEST_JAL_OP(x2, x6, 0, 3f, x1, 200)
TEST_JAL_OP(x2, x5, 0, 3f, x1, 208)
TEST_JAL_OP(x5, x4, 0, 3f, x1, 216)
la x4,signature_x4_0
TEST_JAL_OP(x5, x3, 0, 3f, x4, 0)
TEST_JAL_OP(x5, x2, 0, 3f, x4, 8)
TEST_JAL_OP(x5, x1, 0, 3f, x4, 16)
TEST_JAL_OP(x5, x0, 0, 3f, x4, 24)
TEST_JAL_OP(x5, x10, 0, 3f, x4, 32)
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
