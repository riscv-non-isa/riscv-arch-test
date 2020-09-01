
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi4spn)
la x1,signature_x1_1
TEST_CADDI4SPN_OP( c.addi4spn, x15, 0, 1020, x1, 0, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x14, 0, 4, x1, 4, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x13, 0, 8, x1, 8, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x12, 0, 16, x1, 12, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x11, 0, 32, x1, 16, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 64, x1, 20, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x9, 0, 128, x1, 24, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x8, 0, 256, x1, 28, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 512, x1, 32, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 1016, x1, 36, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 1012, x1, 40, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 1004, x1, 44, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 764, x1, 48, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 508, x1, 52, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 340, x1, 56, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 680, x1, 60, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 988, x1, 64, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 956, x1, 68, x2)
TEST_CADDI4SPN_OP( c.addi4spn, x10, 0, 892, x1, 72, x2)
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
    .fill 19*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
