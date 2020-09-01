
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*);def TEST_CASE_1=True;",andi)
la x1,signature_x1_1
TEST_IMM_OP( andi, x31, x30, -2147483649, -1, -1, x1, 0, x2)
TEST_IMM_OP( andi, x30, x31, 2047, -16777217, 2047, x1, 4, x2)
TEST_IMM_OP( andi, x29, x28, 2047, 1073741823, 2047, x1, 8, x2)
TEST_IMM_OP( andi, x28, x29, 1073741823, 1073741823, -1, x1, 12, x2)
TEST_IMM_OP( andi, x27, x26, 0, -2147483648, 2047, x1, 16, x2)
TEST_IMM_OP( andi, x26, x27, 0, 0, 2047, x1, 20, x2)
TEST_IMM_OP( andi, x25, x24, 2047, 2147483647, 2047, x1, 24, x2)
TEST_IMM_OP( andi, x24, x25, 1, 1, 2047, x1, 28, x2)
TEST_IMM_OP( andi, x23, x22, -2164262912, -16777217, -2048, x1, 32, x2)
TEST_IMM_OP( andi, x22, x23, 0, -16777217, 0, x1, 36, x2)
TEST_IMM_OP( andi, x21, x20, 1, -16777217, 1, x1, 40, x2)
TEST_IMM_OP( andi, x20, x21, 2, 2, 2047, x1, 44, x2)
TEST_IMM_OP( andi, x19, x18, 4, 4, 2047, x1, 48, x2)
TEST_IMM_OP( andi, x18, x19, 8, 8, 2047, x1, 52, x2)
TEST_IMM_OP( andi, x17, x16, 16, 16, 2047, x1, 56, x2)
TEST_IMM_OP( andi, x16, x17, 32, 32, 2047, x1, 60, x2)
TEST_IMM_OP( andi, x15, x14, 64, 64, 2047, x1, 64, x2)
TEST_IMM_OP( andi, x14, x15, 128, 128, 2047, x1, 68, x2)
TEST_IMM_OP( andi, x13, x12, 256, 256, 2047, x1, 72, x2)
TEST_IMM_OP( andi, x12, x13, 512, 512, 2047, x1, 76, x2)
TEST_IMM_OP( andi, x11, x10, 1024, 1024, 2047, x1, 80, x2)
TEST_IMM_OP( andi, x10, x11, 0, 2048, 2047, x1, 84, x2)
TEST_IMM_OP( andi, x9, x8, 0, 4096, 2047, x1, 88, x2)
TEST_IMM_OP( andi, x8, x9, 0, 8192, 2047, x1, 92, x2)
TEST_IMM_OP( andi, x7, x6, 0, 16384, 2047, x1, 96, x2)
TEST_IMM_OP( andi, x6, x7, 0, 32768, 2047, x1, 100, x2)
TEST_IMM_OP( andi, x5, x4, 0, 65536, 2047, x1, 104, x2)
la x6,signature_x6_0
TEST_IMM_OP( andi, x4, x5, 0, 131072, 2047, x6, 0, x7)
TEST_IMM_OP( andi, x3, x2, 0, 262144, 2047, x6, 4, x7)
TEST_IMM_OP( andi, x2, x3, 0, 524288, 2047, x6, 8, x7)
TEST_IMM_OP( andi, x1, x0, 0, 1048576, 2047, x6, 12, x7)
TEST_IMM_OP( andi, x0, x1, 0, 2097152, 2047, x6, 16, x7)
TEST_IMM_OP( andi, x31, x31, 0, 4194304, 2047, x6, 20, x7)
TEST_IMM_OP( andi, x11, x10, 0, 8388608, 2047, x6, 24, x7)
TEST_IMM_OP( andi, x11, x10, 0, 16777216, 2047, x6, 28, x7)
TEST_IMM_OP( andi, x11, x10, 0, 33554432, 2047, x6, 32, x7)
TEST_IMM_OP( andi, x11, x10, 0, 67108864, 2047, x6, 36, x7)
TEST_IMM_OP( andi, x11, x10, 0, 134217728, 2047, x6, 40, x7)
TEST_IMM_OP( andi, x11, x10, 0, 268435456, 2047, x6, 44, x7)
TEST_IMM_OP( andi, x11, x10, 0, 536870912, 2047, x6, 48, x7)
TEST_IMM_OP( andi, x11, x10, 0, 1073741824, 2047, x6, 52, x7)
TEST_IMM_OP( andi, x11, x10, 2046, -2, 2047, x6, 56, x7)
TEST_IMM_OP( andi, x11, x10, 2045, -3, 2047, x6, 60, x7)
TEST_IMM_OP( andi, x11, x10, 2043, -5, 2047, x6, 64, x7)
TEST_IMM_OP( andi, x11, x10, 2039, -9, 2047, x6, 68, x7)
TEST_IMM_OP( andi, x11, x10, 2031, -17, 2047, x6, 72, x7)
TEST_IMM_OP( andi, x11, x10, 2015, -33, 2047, x6, 76, x7)
TEST_IMM_OP( andi, x11, x10, 1983, -65, 2047, x6, 80, x7)
TEST_IMM_OP( andi, x11, x10, 1919, -129, 2047, x6, 84, x7)
TEST_IMM_OP( andi, x11, x10, 1791, -257, 2047, x6, 88, x7)
TEST_IMM_OP( andi, x11, x10, 1535, -513, 2047, x6, 92, x7)
TEST_IMM_OP( andi, x11, x10, 1023, -1025, 2047, x6, 96, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -2049, 2047, x6, 100, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -4097, 2047, x6, 104, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -8193, 2047, x6, 108, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -16385, 2047, x6, 112, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -32769, 2047, x6, 116, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -65537, 2047, x6, 120, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -131073, 2047, x6, 124, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -262145, 2047, x6, 128, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -524289, 2047, x6, 132, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -1048577, 2047, x6, 136, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -2097153, 2047, x6, 140, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -4194305, 2047, x6, 144, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -8388609, 2047, x6, 148, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -33554433, 2047, x6, 152, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -67108865, 2047, x6, 156, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -134217729, 2047, x6, 160, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -268435457, 2047, x6, 164, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -536870913, 2047, x6, 168, x7)
TEST_IMM_OP( andi, x11, x10, 2047, -1073741825, 2047, x6, 172, x7)
TEST_IMM_OP( andi, x11, x10, 1365, 1431655765, 2047, x6, 176, x7)
TEST_IMM_OP( andi, x11, x10, 682, -1431655766, 2047, x6, 180, x7)
TEST_IMM_OP( andi, x11, x10, 2, -16777217, 2, x6, 184, x7)
TEST_IMM_OP( andi, x11, x10, 4, -16777217, 4, x6, 188, x7)
TEST_IMM_OP( andi, x11, x10, 8, -16777217, 8, x6, 192, x7)
TEST_IMM_OP( andi, x11, x10, 16, -16777217, 16, x6, 196, x7)
TEST_IMM_OP( andi, x11, x10, 32, -16777217, 32, x6, 200, x7)
TEST_IMM_OP( andi, x11, x10, 64, -16777217, 64, x6, 204, x7)
TEST_IMM_OP( andi, x11, x10, 128, -16777217, 128, x6, 208, x7)
TEST_IMM_OP( andi, x11, x10, 256, -16777217, 256, x6, 212, x7)
TEST_IMM_OP( andi, x11, x10, -2164260929, -16777217, -65, x6, 216, x7)
TEST_IMM_OP( andi, x11, x10, -2164260993, -16777217, -129, x6, 220, x7)
TEST_IMM_OP( andi, x11, x10, -2164261121, -16777217, -257, x6, 224, x7)
TEST_IMM_OP( andi, x11, x10, -2164261377, -16777217, -513, x6, 228, x7)
TEST_IMM_OP( andi, x11, x10, -2164261889, -16777217, -1025, x6, 232, x7)
TEST_IMM_OP( andi, x11, x10, 1365, -16777217, 1365, x6, 236, x7)
TEST_IMM_OP( andi, x11, x10, -2164262230, -16777217, -1366, x6, 240, x7)
TEST_IMM_OP( andi, x11, x10, 512, -16777217, 512, x6, 244, x7)
TEST_IMM_OP( andi, x11, x10, 1024, -16777217, 1024, x6, 248, x7)
TEST_IMM_OP( andi, x11, x10, -2164260866, -16777217, -2, x6, 252, x7)
TEST_IMM_OP( andi, x11, x10, -2164260867, -16777217, -3, x6, 256, x7)
TEST_IMM_OP( andi, x11, x10, -2164260869, -16777217, -5, x6, 260, x7)
TEST_IMM_OP( andi, x11, x10, -2164260873, -16777217, -9, x6, 264, x7)
TEST_IMM_OP( andi, x11, x10, -2164260881, -16777217, -17, x6, 268, x7)
TEST_IMM_OP( andi, x11, x10, -2164260897, -16777217, -33, x6, 272, x7)
TEST_IMM_OP( andi, x11, x10, 0, 1048576, 2047, x6, 276, x7)
TEST_IMM_OP( andi, x11, x10, 0, 2097152, 2047, x6, 280, x7)
TEST_IMM_OP( andi, x11, x10, 0, 4194304, 2047, x6, 284, x7)
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
