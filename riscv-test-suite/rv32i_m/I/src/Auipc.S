
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*);def TEST_CASE_1=True;",auipc)
la x1,signature_x1_1
TEST_AUIPC(auipc, x31, 0, 0, x1, 0, x2)
TEST_AUIPC(auipc, x30, 4294963200, 1048575, x1, 4, x2)
TEST_AUIPC(auipc, x29, 0, 0, x1, 8, x2)
TEST_AUIPC(auipc, x28, 0, 0, x1, 12, x2)
TEST_AUIPC(auipc, x27, 0, 0, x1, 16, x2)
TEST_AUIPC(auipc, x26, 0, 0, x1, 20, x2)
TEST_AUIPC(auipc, x25, 0, 0, x1, 24, x2)
TEST_AUIPC(auipc, x24, 0, 0, x1, 28, x2)
TEST_AUIPC(auipc, x23, 0, 0, x1, 32, x2)
TEST_AUIPC(auipc, x22, 0, 0, x1, 36, x2)
TEST_AUIPC(auipc, x21, 0, 0, x1, 40, x2)
TEST_AUIPC(auipc, x20, 0, 0, x1, 44, x2)
TEST_AUIPC(auipc, x19, 0, 0, x1, 48, x2)
TEST_AUIPC(auipc, x18, 0, 0, x1, 52, x2)
TEST_AUIPC(auipc, x17, 0, 0, x1, 56, x2)
TEST_AUIPC(auipc, x16, 0, 0, x1, 60, x2)
TEST_AUIPC(auipc, x15, 0, 0, x1, 64, x2)
TEST_AUIPC(auipc, x14, 0, 0, x1, 68, x2)
TEST_AUIPC(auipc, x13, 0, 0, x1, 72, x2)
TEST_AUIPC(auipc, x12, 0, 0, x1, 76, x2)
TEST_AUIPC(auipc, x11, 0, 0, x1, 80, x2)
TEST_AUIPC(auipc, x10, 0, 0, x1, 84, x2)
TEST_AUIPC(auipc, x9, 0, 0, x1, 88, x2)
TEST_AUIPC(auipc, x8, 0, 0, x1, 92, x2)
TEST_AUIPC(auipc, x7, 0, 0, x1, 96, x2)
TEST_AUIPC(auipc, x6, 0, 0, x1, 100, x2)
TEST_AUIPC(auipc, x5, 0, 0, x1, 104, x2)
TEST_AUIPC(auipc, x4, 0, 0, x1, 108, x5)
la x4,signature_x4_0
TEST_AUIPC(auipc, x3, 0, 0, x4, 0, x5)
TEST_AUIPC(auipc, x2, 0, 0, x4, 4, x5)
TEST_AUIPC(auipc, x1, 0, 0, x4, 8, x5)
TEST_AUIPC(auipc, x0, 0, 0, x4, 12, x5)
TEST_AUIPC(auipc, x10, 0, 0, x4, 16, x5)
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
