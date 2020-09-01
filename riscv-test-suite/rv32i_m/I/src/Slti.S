
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slti)
la x1,signature_x1_1
TEST_IMM_OP( slti, x31, x30, 0, -1, -1, x1, 0, x2)
TEST_IMM_OP( slti, x30, x31, 1, -16777217, 2047, x1, 4, x2)
TEST_IMM_OP( slti, x29, x28, 0, 1073741823, 2047, x1, 8, x2)
TEST_IMM_OP( slti, x28, x29, 0, 1073741823, -1, x1, 12, x2)
TEST_IMM_OP( slti, x27, x26, 1, -2147483648, 2047, x1, 16, x2)
TEST_IMM_OP( slti, x26, x27, 1, 0, 2047, x1, 20, x2)
TEST_IMM_OP( slti, x25, x24, 0, 2147483647, 2047, x1, 24, x2)
TEST_IMM_OP( slti, x24, x25, 1, 1, 2047, x1, 28, x2)
TEST_IMM_OP( slti, x23, x22, 1, -16777217, -2048, x1, 32, x2)
TEST_IMM_OP( slti, x22, x23, 1, -16777217, 0, x1, 36, x2)
TEST_IMM_OP( slti, x21, x20, 1, -16777217, 1, x1, 40, x2)
TEST_IMM_OP( slti, x20, x21, 1, 2, 2047, x1, 44, x2)
TEST_IMM_OP( slti, x19, x18, 1, 4, 2047, x1, 48, x2)
TEST_IMM_OP( slti, x18, x19, 1, 8, 2047, x1, 52, x2)
TEST_IMM_OP( slti, x17, x16, 1, 16, 2047, x1, 56, x2)
TEST_IMM_OP( slti, x16, x17, 1, 32, 2047, x1, 60, x2)
TEST_IMM_OP( slti, x15, x14, 1, 64, 2047, x1, 64, x2)
TEST_IMM_OP( slti, x14, x15, 1, 128, 2047, x1, 68, x2)
TEST_IMM_OP( slti, x13, x12, 1, 256, 2047, x1, 72, x2)
TEST_IMM_OP( slti, x12, x13, 1, 512, 2047, x1, 76, x2)
TEST_IMM_OP( slti, x11, x10, 1, 1024, 2047, x1, 80, x2)
TEST_IMM_OP( slti, x10, x11, 0, 2048, 2047, x1, 84, x2)
TEST_IMM_OP( slti, x9, x8, 0, 4096, 2047, x1, 88, x2)
TEST_IMM_OP( slti, x8, x9, 0, 8192, 2047, x1, 92, x2)
TEST_IMM_OP( slti, x7, x6, 0, 16384, 2047, x1, 96, x2)
TEST_IMM_OP( slti, x6, x7, 0, 32768, 2047, x1, 100, x2)
TEST_IMM_OP( slti, x5, x4, 0, 65536, 2047, x1, 104, x2)
la x6,signature_x6_0
TEST_IMM_OP( slti, x4, x5, 0, 131072, 2047, x6, 0, x7)
TEST_IMM_OP( slti, x3, x2, 0, 262144, 2047, x6, 4, x7)
TEST_IMM_OP( slti, x2, x3, 0, 524288, 2047, x6, 8, x7)
TEST_IMM_OP( slti, x1, x0, 0, 1048576, 2047, x6, 12, x7)
TEST_IMM_OP( slti, x0, x1, 0, 2097152, 2047, x6, 16, x7)
TEST_IMM_OP( slti, x31, x31, 0, 4194304, 2047, x6, 20, x7)
TEST_IMM_OP( slti, x11, x10, 0, 8388608, 2047, x6, 24, x7)
TEST_IMM_OP( slti, x11, x10, 0, 16777216, 2047, x6, 28, x7)
TEST_IMM_OP( slti, x11, x10, 0, 33554432, 2047, x6, 32, x7)
TEST_IMM_OP( slti, x11, x10, 0, 67108864, 2047, x6, 36, x7)
TEST_IMM_OP( slti, x11, x10, 0, 134217728, 2047, x6, 40, x7)
TEST_IMM_OP( slti, x11, x10, 0, 268435456, 2047, x6, 44, x7)
TEST_IMM_OP( slti, x11, x10, 0, 536870912, 2047, x6, 48, x7)
TEST_IMM_OP( slti, x11, x10, 0, 1073741824, 2047, x6, 52, x7)
TEST_IMM_OP( slti, x11, x10, 1, -2, 2047, x6, 56, x7)
TEST_IMM_OP( slti, x11, x10, 1, -3, 2047, x6, 60, x7)
TEST_IMM_OP( slti, x11, x10, 1, -5, 2047, x6, 64, x7)
TEST_IMM_OP( slti, x11, x10, 1, -9, 2047, x6, 68, x7)
TEST_IMM_OP( slti, x11, x10, 1, -17, 2047, x6, 72, x7)
TEST_IMM_OP( slti, x11, x10, 1, -33, 2047, x6, 76, x7)
TEST_IMM_OP( slti, x11, x10, 1, -65, 2047, x6, 80, x7)
TEST_IMM_OP( slti, x11, x10, 1, -129, 2047, x6, 84, x7)
TEST_IMM_OP( slti, x11, x10, 1, -257, 2047, x6, 88, x7)
TEST_IMM_OP( slti, x11, x10, 1, -513, 2047, x6, 92, x7)
TEST_IMM_OP( slti, x11, x10, 1, -1025, 2047, x6, 96, x7)
TEST_IMM_OP( slti, x11, x10, 1, -2049, 2047, x6, 100, x7)
TEST_IMM_OP( slti, x11, x10, 1, -4097, 2047, x6, 104, x7)
TEST_IMM_OP( slti, x11, x10, 1, -8193, 2047, x6, 108, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16385, 2047, x6, 112, x7)
TEST_IMM_OP( slti, x11, x10, 1, -32769, 2047, x6, 116, x7)
TEST_IMM_OP( slti, x11, x10, 1, -65537, 2047, x6, 120, x7)
TEST_IMM_OP( slti, x11, x10, 1, -131073, 2047, x6, 124, x7)
TEST_IMM_OP( slti, x11, x10, 1, -262145, 2047, x6, 128, x7)
TEST_IMM_OP( slti, x11, x10, 1, -524289, 2047, x6, 132, x7)
TEST_IMM_OP( slti, x11, x10, 1, -1048577, 2047, x6, 136, x7)
TEST_IMM_OP( slti, x11, x10, 1, -2097153, 2047, x6, 140, x7)
TEST_IMM_OP( slti, x11, x10, 1, -4194305, 2047, x6, 144, x7)
TEST_IMM_OP( slti, x11, x10, 1, -8388609, 2047, x6, 148, x7)
TEST_IMM_OP( slti, x11, x10, 1, -33554433, 2047, x6, 152, x7)
TEST_IMM_OP( slti, x11, x10, 1, -67108865, 2047, x6, 156, x7)
TEST_IMM_OP( slti, x11, x10, 1, -134217729, 2047, x6, 160, x7)
TEST_IMM_OP( slti, x11, x10, 1, -268435457, 2047, x6, 164, x7)
TEST_IMM_OP( slti, x11, x10, 1, -536870913, 2047, x6, 168, x7)
TEST_IMM_OP( slti, x11, x10, 1, -1073741825, 2047, x6, 172, x7)
TEST_IMM_OP( slti, x11, x10, 0, 1431655765, 2047, x6, 176, x7)
TEST_IMM_OP( slti, x11, x10, 1, -1431655766, 2047, x6, 180, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, 2, x6, 184, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, 4, x6, 188, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, 8, x6, 192, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, 16, x6, 196, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, 32, x6, 200, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, 64, x6, 204, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, 128, x6, 208, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, 256, x6, 212, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -65, x6, 216, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -129, x6, 220, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -257, x6, 224, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -513, x6, 228, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -1025, x6, 232, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, 1365, x6, 236, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -1366, x6, 240, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, 512, x6, 244, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, 1024, x6, 248, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -2, x6, 252, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -3, x6, 256, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -5, x6, 260, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -9, x6, 264, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -17, x6, 268, x7)
TEST_IMM_OP( slti, x11, x10, 1, -16777217, -33, x6, 272, x7)
TEST_IMM_OP( slti, x11, x10, 0, 1048576, 2047, x6, 276, x7)
TEST_IMM_OP( slti, x11, x10, 0, 2097152, 2047, x6, 280, x7)
TEST_IMM_OP( slti, x11, x10, 0, 4194304, 2047, x6, 284, x7)
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
    .fill 27*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 72*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
