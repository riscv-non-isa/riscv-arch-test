
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sra)
la x1,signature_x1_1
TEST_RR_OP(sra, x31, x30, x29, 1, -16777217, 31, x1, 0, x2)
TEST_RR_OP(sra, x30, x31, x28, 0, 1073741823, 31, x1, 4, x2)
TEST_RR_OP(sra, x29, x28, x31, 2130706431, -16777217, 0, x1, 8, x2)
TEST_RR_OP(sra, x28, x29, x30, 1073741823, 1073741823, 0, x1, 12, x2)
TEST_RR_OP(sra, x27, x26, x25, 0, 16, 16, x1, 16, x2)
TEST_RR_OP(sra, x26, x27, x24, 1, -2147483648, 31, x1, 20, x2)
TEST_RR_OP(sra, x25, x24, x27, 0, 0, 31, x1, 24, x2)
TEST_RR_OP(sra, x24, x25, x26, 0, 2147483647, 31, x1, 28, x2)
TEST_RR_OP(sra, x23, x22, x21, 0, 1, 31, x1, 32, x2)
TEST_RR_OP(sra, x22, x23, x20, 2139095039, -16777217, 1, x1, 36, x2)
TEST_RR_OP(sra, x21, x20, x23, 1069547519, -16777217, 2, x1, 40, x2)
TEST_RR_OP(sra, x20, x21, x22, 267386879, -16777217, 4, x1, 44, x2)
TEST_RR_OP(sra, x19, x18, x17, 16711679, -16777217, 8, x1, 48, x2)
TEST_RR_OP(sra, x18, x19, x16, 3, -16777217, 30, x1, 52, x2)
TEST_RR_OP(sra, x17, x16, x19, 7, -16777217, 29, x1, 56, x2)
TEST_RR_OP(sra, x16, x17, x18, 31, -16777217, 27, x1, 60, x2)
TEST_RR_OP(sra, x15, x14, x13, 509, -16777217, 23, x1, 64, x2)
TEST_RR_OP(sra, x14, x15, x12, 130559, -16777217, 15, x1, 68, x2)
TEST_RR_OP(sra, x13, x12, x15, 2039, -16777217, 21, x1, 72, x2)
TEST_RR_OP(sra, x12, x13, x14, 4177919, -16777217, 10, x1, 76, x2)
TEST_RR_OP(sra, x11, x10, x9, 0, 2, 31, x1, 80, x2)
TEST_RR_OP(sra, x10, x11, x8, 0, 4, 31, x1, 84, x2)
TEST_RR_OP(sra, x9, x8, x11, 0, 8, 31, x1, 88, x2)
TEST_RR_OP(sra, x8, x9, x10, 0, 32, 31, x1, 92, x2)
TEST_RR_OP(sra, x7, x6, x5, 0, 64, 31, x1, 96, x2)
TEST_RR_OP(sra, x6, x7, x4, 0, 128, 31, x1, 100, x9)
la x8,signature_x8_0
TEST_RR_OP(sra, x5, x4, x7, 0, 256, 31, x8, 0, x9)
TEST_RR_OP(sra, x4, x5, x6, 0, 512, 31, x8, 4, x9)
TEST_RR_OP(sra, x3, x2, x1, 0, 1024, 31, x8, 8, x9)
TEST_RR_OP(sra, x2, x3, x0, 0, 2048, 31, x8, 12, x9)
TEST_RR_OP(sra, x1, x0, x3, 0, 4096, 31, x8, 16, x9)
TEST_RR_OP(sra, x0, x1, x2, 0, 8192, 31, x8, 20, x9)
TEST_RR_OP(sra, x31, x30, x30, 0, 16384, 31, x8, 24, x9)
TEST_RR_OP(sra, x31, x31, x30, 0, 32768, 31, x8, 28, x9)
TEST_RR_OP(sra, x31, x30, x31, 0, 65536, 31, x8, 32, x9)
TEST_RR_OP(sra, x31, x31, x31, 0, 131072, 31, x8, 36, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 262144, 31, x8, 40, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 524288, 31, x8, 44, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 1048576, 31, x8, 48, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 2097152, 31, x8, 52, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 4194304, 31, x8, 56, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 8388608, 31, x8, 60, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 16777216, 31, x8, 64, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 33554432, 31, x8, 68, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 67108864, 31, x8, 72, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 134217728, 31, x8, 76, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 268435456, 31, x8, 80, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 536870912, 31, x8, 84, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 1073741824, 31, x8, 88, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -2, 31, x8, 92, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -2049, 31, x8, 96, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -4097, 31, x8, 100, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -8193, 31, x8, 104, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -16385, 31, x8, 108, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -32769, 31, x8, 112, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -65537, 31, x8, 116, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -131073, 31, x8, 120, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -262145, 31, x8, 124, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -524289, 31, x8, 128, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -1048577, 31, x8, 132, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -2097153, 31, x8, 136, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -4194305, 31, x8, 140, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -8388609, 31, x8, 144, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -33554433, 31, x8, 148, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -67108865, 31, x8, 152, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -134217729, 31, x8, 156, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -33, 31, x8, 160, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -268435457, 31, x8, 164, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -536870913, 31, x8, 168, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -1073741825, 31, x8, 172, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 1431655765, 31, x8, 176, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -5, 31, x8, 180, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -1431655766, 31, x8, 184, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -3, 31, x8, 188, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -9, 31, x8, 192, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -17, 31, x8, 196, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -65, 31, x8, 200, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -129, 31, x8, 204, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -257, 31, x8, 208, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -513, 31, x8, 212, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -1025, 31, x8, 216, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 2048, 31, x8, 220, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 4096, 31, x8, 224, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 8192, 31, x8, 228, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 16384, 31, x8, 232, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 32768, 31, x8, 236, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 65536, 31, x8, 240, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 131072, 31, x8, 244, x9)
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
    .fill 26*(XLEN/32),4,0xafacadee


signature_x8_0:
    .fill 62*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
