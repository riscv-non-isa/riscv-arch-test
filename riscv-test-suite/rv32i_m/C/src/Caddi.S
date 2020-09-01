
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi)
la x1,signature_x1_1
TEST_CI_OP( c.addi, x31, 0, -2147483648, -2, x1, 0, x2)
TEST_CI_OP( c.addi, x30, 0, 0, -2, x1, 4, x2)
TEST_CI_OP( c.addi, x29, 0, 2147483647, -2, x1, 8, x2)
TEST_CI_OP( c.addi, x28, 0, 1, -2, x1, 12, x2)
TEST_CI_OP( c.addi, x27, 0, -16777217, -32, x1, 16, x2)
TEST_CI_OP( c.addi, x26, 0, -16777217, 0, x1, 20, x2)
TEST_CI_OP( c.addi, x25, 0, -16777217, 31, x1, 24, x2)
TEST_CI_OP( c.addi, x24, 0, -16777217, 1, x1, 28, x2)
TEST_CI_OP( c.addi, x23, 0, -2, -2, x1, 32, x2)
TEST_CI_OP( c.addi, x22, 0, 1073741823, 31, x1, 36, x2)
TEST_CI_OP( c.addi, x21, 0, 2, -2, x1, 40, x2)
TEST_CI_OP( c.addi, x20, 0, 4, -2, x1, 44, x2)
TEST_CI_OP( c.addi, x19, 0, 8, -2, x1, 48, x2)
TEST_CI_OP( c.addi, x18, 0, 16, -2, x1, 52, x2)
TEST_CI_OP( c.addi, x17, 0, 32, -2, x1, 56, x2)
TEST_CI_OP( c.addi, x16, 0, 64, -2, x1, 60, x2)
TEST_CI_OP( c.addi, x15, 0, 128, -2, x1, 64, x2)
TEST_CI_OP( c.addi, x14, 0, 256, -2, x1, 68, x2)
TEST_CI_OP( c.addi, x13, 0, 512, -2, x1, 72, x2)
TEST_CI_OP( c.addi, x12, 0, 1024, -2, x1, 76, x2)
TEST_CI_OP( c.addi, x11, 0, 2048, -2, x1, 80, x2)
TEST_CI_OP( c.addi, x10, 0, 4096, -2, x1, 84, x2)
TEST_CI_OP( c.addi, x9, 0, 8192, -2, x1, 88, x2)
TEST_CI_OP( c.addi, x8, 0, 16384, -2, x1, 92, x2)
TEST_CI_OP( c.addi, x7, 0, 32768, -2, x1, 96, x2)
TEST_CI_OP( c.addi, x6, 0, 65536, -2, x1, 100, x2)
TEST_CI_OP( c.addi, x5, 0, 131072, -2, x1, 104, x2)
TEST_CI_OP( c.addi, x4, 0, 262144, -2, x1, 108, x5)
la x4,signature_x4_0
TEST_CI_OP( c.addi, x3, 0, 524288, -2, x4, 0, x5)
TEST_CI_OP( c.addi, x2, 0, 1048576, -2, x4, 4, x5)
TEST_CI_OP( c.addi, x1, 0, 2097152, -2, x4, 8, x5)
TEST_CI_OP( c.addi, x10, 0, 4194304, -2, x4, 12, x5)
TEST_CI_OP( c.addi, x10, 0, 8388608, -2, x4, 16, x5)
TEST_CI_OP( c.addi, x10, 0, 16777216, -2, x4, 20, x5)
TEST_CI_OP( c.addi, x10, 0, 33554432, -2, x4, 24, x5)
TEST_CI_OP( c.addi, x10, 0, 67108864, -2, x4, 28, x5)
TEST_CI_OP( c.addi, x10, 0, 134217728, -2, x4, 32, x5)
TEST_CI_OP( c.addi, x10, 0, 268435456, -2, x4, 36, x5)
TEST_CI_OP( c.addi, x10, 0, 536870912, -2, x4, 40, x5)
TEST_CI_OP( c.addi, x10, 0, 1073741824, -2, x4, 44, x5)
TEST_CI_OP( c.addi, x10, 0, -3, -2, x4, 48, x5)
TEST_CI_OP( c.addi, x10, 0, -5, -2, x4, 52, x5)
TEST_CI_OP( c.addi, x10, 0, -9, -2, x4, 56, x5)
TEST_CI_OP( c.addi, x10, 0, -17, -2, x4, 60, x5)
TEST_CI_OP( c.addi, x10, 0, -33, -2, x4, 64, x5)
TEST_CI_OP( c.addi, x10, 0, -65, -2, x4, 68, x5)
TEST_CI_OP( c.addi, x10, 0, -129, -2, x4, 72, x5)
TEST_CI_OP( c.addi, x10, 0, -257, -2, x4, 76, x5)
TEST_CI_OP( c.addi, x10, 0, -513, -2, x4, 80, x5)
TEST_CI_OP( c.addi, x10, 0, -1025, -2, x4, 84, x5)
TEST_CI_OP( c.addi, x10, 0, -524289, -2, x4, 88, x5)
TEST_CI_OP( c.addi, x10, 0, -1048577, -2, x4, 92, x5)
TEST_CI_OP( c.addi, x10, 0, -2097153, -2, x4, 96, x5)
TEST_CI_OP( c.addi, x10, 0, -4194305, -2, x4, 100, x5)
TEST_CI_OP( c.addi, x10, 0, -8388609, -2, x4, 104, x5)
TEST_CI_OP( c.addi, x10, 0, -33554433, -2, x4, 108, x5)
TEST_CI_OP( c.addi, x10, 0, -67108865, -2, x4, 112, x5)
TEST_CI_OP( c.addi, x10, 0, -134217729, -2, x4, 116, x5)
TEST_CI_OP( c.addi, x10, 0, -268435457, -2, x4, 120, x5)
TEST_CI_OP( c.addi, x10, 0, -536870913, -2, x4, 124, x5)
TEST_CI_OP( c.addi, x10, 0, -1073741825, -2, x4, 128, x5)
TEST_CI_OP( c.addi, x10, 0, 1431655765, -2, x4, 132, x5)
TEST_CI_OP( c.addi, x10, 0, -1431655766, -2, x4, 136, x5)
TEST_CI_OP( c.addi, x10, 0, -16777217, 2, x4, 140, x5)
TEST_CI_OP( c.addi, x10, 0, -16777217, 4, x4, 144, x5)
TEST_CI_OP( c.addi, x10, 0, -16777217, 8, x4, 148, x5)
TEST_CI_OP( c.addi, x10, 0, -2049, -2, x4, 152, x5)
TEST_CI_OP( c.addi, x10, 0, -16777217, 21, x4, 156, x5)
TEST_CI_OP( c.addi, x10, 0, -16385, -2, x4, 160, x5)
TEST_CI_OP( c.addi, x10, 0, -16777217, 16, x4, 164, x5)
TEST_CI_OP( c.addi, x10, 0, -16777217, -3, x4, 168, x5)
TEST_CI_OP( c.addi, x10, 0, -16777217, -5, x4, 172, x5)
TEST_CI_OP( c.addi, x10, 0, -16777217, -9, x4, 176, x5)
TEST_CI_OP( c.addi, x10, 0, -16777217, -17, x4, 180, x5)
TEST_CI_OP( c.addi, x10, 0, -4097, -2, x4, 184, x5)
TEST_CI_OP( c.addi, x10, 0, -8193, -2, x4, 188, x5)
TEST_CI_OP( c.addi, x10, 0, -16777217, -22, x4, 192, x5)
TEST_CI_OP( c.addi, x10, 0, -32769, -2, x4, 196, x5)
TEST_CI_OP( c.addi, x10, 0, -65537, -2, x4, 200, x5)
TEST_CI_OP( c.addi, x10, 0, -131073, -2, x4, 204, x5)
TEST_CI_OP( c.addi, x10, 0, -262145, -2, x4, 208, x5)
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
    .fill 53*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
