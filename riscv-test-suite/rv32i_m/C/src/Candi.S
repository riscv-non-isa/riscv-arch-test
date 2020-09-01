
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",candi)
la x1,signature_x1_1
TEST_CI_OP( c.andi, x15, 0, -2147483648, -2, x1, 0, x2)
TEST_CI_OP( c.andi, x14, 0, 0, -2, x1, 4, x2)
TEST_CI_OP( c.andi, x13, 0, 2147483647, -2, x1, 8, x2)
TEST_CI_OP( c.andi, x12, 0, 1, -2, x1, 12, x2)
TEST_CI_OP( c.andi, x11, 0, -16777217, -32, x1, 16, x2)
TEST_CI_OP( c.andi, x10, 0, -16777217, 0, x1, 20, x2)
TEST_CI_OP( c.andi, x9, 0, -16777217, 31, x1, 24, x2)
TEST_CI_OP( c.andi, x8, 0, -16777217, 1, x1, 28, x2)
TEST_CI_OP( c.andi, x10, 0, -2, -2, x1, 32, x2)
TEST_CI_OP( c.andi, x10, 0, 1073741823, 31, x1, 36, x2)
TEST_CI_OP( c.andi, x10, 0, 2, -2, x1, 40, x2)
TEST_CI_OP( c.andi, x10, 0, 4, -2, x1, 44, x2)
TEST_CI_OP( c.andi, x10, 0, 8, -2, x1, 48, x2)
TEST_CI_OP( c.andi, x10, 0, 16, -2, x1, 52, x2)
TEST_CI_OP( c.andi, x10, 0, 32, -2, x1, 56, x2)
TEST_CI_OP( c.andi, x10, 0, 64, -2, x1, 60, x2)
TEST_CI_OP( c.andi, x10, 0, 128, -2, x1, 64, x2)
TEST_CI_OP( c.andi, x10, 0, 256, -2, x1, 68, x2)
TEST_CI_OP( c.andi, x10, 0, 512, -2, x1, 72, x2)
TEST_CI_OP( c.andi, x10, 0, 1024, -2, x1, 76, x2)
TEST_CI_OP( c.andi, x10, 0, 2048, -2, x1, 80, x2)
TEST_CI_OP( c.andi, x10, 0, 4096, -2, x1, 84, x2)
TEST_CI_OP( c.andi, x10, 0, 8192, -2, x1, 88, x2)
TEST_CI_OP( c.andi, x10, 0, 16384, -2, x1, 92, x2)
TEST_CI_OP( c.andi, x10, 0, 32768, -2, x1, 96, x2)
TEST_CI_OP( c.andi, x10, 0, 65536, -2, x1, 100, x2)
TEST_CI_OP( c.andi, x10, 0, 131072, -2, x1, 104, x2)
TEST_CI_OP( c.andi, x10, 0, 262144, -2, x1, 108, x2)
TEST_CI_OP( c.andi, x10, 0, 524288, -2, x1, 112, x2)
TEST_CI_OP( c.andi, x10, 0, 1048576, -2, x1, 116, x2)
TEST_CI_OP( c.andi, x10, 0, 2097152, -2, x1, 120, x2)
TEST_CI_OP( c.andi, x10, 0, 4194304, -2, x1, 124, x2)
TEST_CI_OP( c.andi, x10, 0, 8388608, -2, x1, 128, x2)
TEST_CI_OP( c.andi, x10, 0, 16777216, -2, x1, 132, x2)
TEST_CI_OP( c.andi, x10, 0, 33554432, -2, x1, 136, x2)
TEST_CI_OP( c.andi, x10, 0, 67108864, -2, x1, 140, x2)
TEST_CI_OP( c.andi, x10, 0, 134217728, -2, x1, 144, x2)
TEST_CI_OP( c.andi, x10, 0, 268435456, -2, x1, 148, x2)
TEST_CI_OP( c.andi, x10, 0, 536870912, -2, x1, 152, x2)
TEST_CI_OP( c.andi, x10, 0, 1073741824, -2, x1, 156, x2)
TEST_CI_OP( c.andi, x10, 0, -3, -2, x1, 160, x2)
TEST_CI_OP( c.andi, x10, 0, -5, -2, x1, 164, x2)
TEST_CI_OP( c.andi, x10, 0, -9, -2, x1, 168, x2)
TEST_CI_OP( c.andi, x10, 0, -17, -2, x1, 172, x2)
TEST_CI_OP( c.andi, x10, 0, -33, -2, x1, 176, x2)
TEST_CI_OP( c.andi, x10, 0, -65, -2, x1, 180, x2)
TEST_CI_OP( c.andi, x10, 0, -129, -2, x1, 184, x2)
TEST_CI_OP( c.andi, x10, 0, -257, -2, x1, 188, x2)
TEST_CI_OP( c.andi, x10, 0, -513, -2, x1, 192, x2)
TEST_CI_OP( c.andi, x10, 0, -1025, -2, x1, 196, x2)
TEST_CI_OP( c.andi, x10, 0, -524289, -2, x1, 200, x2)
TEST_CI_OP( c.andi, x10, 0, -1048577, -2, x1, 204, x2)
TEST_CI_OP( c.andi, x10, 0, -2097153, -2, x1, 208, x2)
TEST_CI_OP( c.andi, x10, 0, -4194305, -2, x1, 212, x2)
TEST_CI_OP( c.andi, x10, 0, -8388609, -2, x1, 216, x2)
TEST_CI_OP( c.andi, x10, 0, -33554433, -2, x1, 220, x2)
TEST_CI_OP( c.andi, x10, 0, -67108865, -2, x1, 224, x2)
TEST_CI_OP( c.andi, x10, 0, -134217729, -2, x1, 228, x2)
TEST_CI_OP( c.andi, x10, 0, -268435457, -2, x1, 232, x2)
TEST_CI_OP( c.andi, x10, 0, -536870913, -2, x1, 236, x2)
TEST_CI_OP( c.andi, x10, 0, -1073741825, -2, x1, 240, x2)
TEST_CI_OP( c.andi, x10, 0, 1431655765, -2, x1, 244, x2)
TEST_CI_OP( c.andi, x10, 0, -1431655766, -2, x1, 248, x2)
TEST_CI_OP( c.andi, x10, 0, -16777217, 2, x1, 252, x2)
TEST_CI_OP( c.andi, x10, 0, -16777217, 4, x1, 256, x2)
TEST_CI_OP( c.andi, x10, 0, -16777217, 8, x1, 260, x2)
TEST_CI_OP( c.andi, x10, 0, -2049, -2, x1, 264, x2)
TEST_CI_OP( c.andi, x10, 0, -16777217, 21, x1, 268, x2)
TEST_CI_OP( c.andi, x10, 0, -16385, -2, x1, 272, x2)
TEST_CI_OP( c.andi, x10, 0, -16777217, 16, x1, 276, x2)
TEST_CI_OP( c.andi, x10, 0, -16777217, -3, x1, 280, x2)
TEST_CI_OP( c.andi, x10, 0, -16777217, -5, x1, 284, x2)
TEST_CI_OP( c.andi, x10, 0, -16777217, -9, x1, 288, x2)
TEST_CI_OP( c.andi, x10, 0, -16777217, -17, x1, 292, x2)
TEST_CI_OP( c.andi, x10, 0, -4097, -2, x1, 296, x2)
TEST_CI_OP( c.andi, x10, 0, -8193, -2, x1, 300, x2)
TEST_CI_OP( c.andi, x10, 0, -16777217, -22, x1, 304, x2)
TEST_CI_OP( c.andi, x10, 0, -32769, -2, x1, 308, x2)
TEST_CI_OP( c.andi, x10, 0, -65537, -2, x1, 312, x2)
TEST_CI_OP( c.andi, x10, 0, -131073, -2, x1, 316, x2)
TEST_CI_OP( c.andi, x10, 0, -262145, -2, x1, 320, x2)
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
    .fill 81*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
