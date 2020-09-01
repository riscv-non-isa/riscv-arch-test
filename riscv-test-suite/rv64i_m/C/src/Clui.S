
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",clui)
la x1,signature_x1_1
TEST_CI_OP( c.lui, x31, 0, 6148914691236517205, 1048575, x1, 0, x2)
TEST_CI_OP( c.lui, x30, 0, 6148914691236517205, 31, x1, 8, x2)
TEST_CI_OP( c.lui, x29, 0, -1, 1048575, x1, 16, x2)
TEST_CI_OP( c.lui, x28, 0, -1, 31, x1, 24, x2)
TEST_CI_OP( c.lui, x27, 0, -1, 1, x1, 32, x2)
TEST_CI_OP( c.lui, x26, 0, -1, 2, x1, 40, x2)
TEST_CI_OP( c.lui, x25, 0, -1, 4, x1, 48, x2)
TEST_CI_OP( c.lui, x24, 0, -1, 8, x1, 56, x2)
TEST_CI_OP( c.lui, x23, 0, -1, 16, x1, 64, x2)
TEST_CI_OP( c.lui, x22, 0, -1, 1048544, x1, 72, x2)
TEST_CI_OP( c.lui, x21, 0, -1, 21, x1, 80, x2)
TEST_CI_OP( c.lui, x20, 0, -1, 1048554, x1, 88, x2)
TEST_CI_OP( c.lui, x19, 0, -1, 1048574, x1, 96, x2)
TEST_CI_OP( c.lui, x18, 0, -1, 1048573, x1, 104, x2)
TEST_CI_OP( c.lui, x17, 0, -1, 1048571, x1, 112, x2)
TEST_CI_OP( c.lui, x16, 0, -1, 1048567, x1, 120, x2)
TEST_CI_OP( c.lui, x15, 0, -1, 1048559, x1, 128, x2)
TEST_CI_OP( c.lui, x14, 0, 0, 16, x1, 136, x2)
TEST_CI_OP( c.lui, x13, 0, 0, 16, x1, 144, x2)
TEST_CI_OP( c.lui, x12, 0, 0, 16, x1, 152, x2)
TEST_CI_OP( c.lui, x11, 0, 0, 16, x1, 160, x2)
TEST_CI_OP( c.lui, x10, 0, 0, 16, x1, 168, x2)
TEST_CI_OP( c.lui, x9, 0, 0, 16, x1, 176, x2)
TEST_CI_OP( c.lui, x8, 0, 0, 16, x1, 184, x2)
TEST_CI_OP( c.lui, x7, 0, 0, 16, x1, 192, x2)
TEST_CI_OP( c.lui, x6, 0, 0, 16, x1, 200, x2)
TEST_CI_OP( c.lui, x5, 0, 0, 16, x1, 208, x2)
TEST_CI_OP( c.lui, x4, 0, 0, 16, x1, 216, x5)
la x2,signature_x2_0
TEST_CI_OP( c.lui, x3, 0, 0, 16, x2, 0, x5)
TEST_CI_OP( c.lui, x1, 0, 0, 16, x2, 8, x5)
TEST_CI_OP( c.lui, x0, 0, 0, 16, x2, 16, x5)
TEST_CI_OP( c.lui, x10, 0, 0, 16, x2, 24, x5)
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


signature_x2_0:
    .fill 4*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
