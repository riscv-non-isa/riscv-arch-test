
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",div)
la x1,signature_x1_1
TEST_RR_OP(div, x31, x30, x29, 0, -2147483648, -16777217, x1, 0, x2)
TEST_RR_OP(div, x30, x31, x28, 0, 0, -16777217, x1, 4, x2)
TEST_RR_OP(div, x29, x28, x31, 0, 2147483647, -16777217, x1, 8, x2)
TEST_RR_OP(div, x28, x29, x30, 0, 1, -16777217, x1, 12, x2)
TEST_RR_OP(div, x27, x26, x25, 0, -16777217, -2147483648, x1, 16, x2)
TEST_RR_OP(div, x26, x27, x24, 0, -16777217, 0, x1, 20, x2)
TEST_RR_OP(div, x25, x24, x27, 0, -16777217, 2147483647, x1, 24, x2)
TEST_RR_OP(div, x24, x25, x26, 0, -16777217, 1, x1, 28, x2)
TEST_RR_OP(div, x23, x22, x21, 0, 1073741823, 1073741823, x1, 32, x2)
TEST_RR_OP(div, x22, x23, x20, 0, 2, -16777217, x1, 36, x2)
TEST_RR_OP(div, x21, x20, x23, 0, 4, -16777217, x1, 40, x2)
TEST_RR_OP(div, x20, x21, x22, 0, 8, -16777217, x1, 44, x2)
TEST_RR_OP(div, x19, x18, x17, 0, 16, -16777217, x1, 48, x2)
TEST_RR_OP(div, x18, x19, x16, 0, 32, -16777217, x1, 52, x2)
TEST_RR_OP(div, x17, x16, x19, 0, 64, -16777217, x1, 56, x2)
TEST_RR_OP(div, x16, x17, x18, 0, 128, -16777217, x1, 60, x2)
TEST_RR_OP(div, x15, x14, x13, 0, 256, -16777217, x1, 64, x2)
TEST_RR_OP(div, x14, x15, x12, 0, 512, -16777217, x1, 68, x2)
TEST_RR_OP(div, x13, x12, x15, 0, 1024, -16777217, x1, 72, x2)
TEST_RR_OP(div, x12, x13, x14, 0, 2048, -16777217, x1, 76, x2)
TEST_RR_OP(div, x11, x10, x9, 0, 4096, -16777217, x1, 80, x2)
TEST_RR_OP(div, x10, x11, x8, 0, 8192, -16777217, x1, 84, x2)
TEST_RR_OP(div, x9, x8, x11, 0, 16384, -16777217, x1, 88, x2)
TEST_RR_OP(div, x8, x9, x10, 0, 32768, -16777217, x1, 92, x2)
TEST_RR_OP(div, x7, x6, x5, 0, 65536, -16777217, x1, 96, x2)
TEST_RR_OP(div, x6, x7, x4, 0, 131072, -16777217, x1, 100, x9)
la x8,signature_x8_0
TEST_RR_OP(div, x5, x4, x7, 0, 262144, -16777217, x8, 0, x9)
TEST_RR_OP(div, x4, x5, x6, 0, 524288, -16777217, x8, 4, x9)
TEST_RR_OP(div, x3, x2, x1, 0, 1048576, -16777217, x8, 8, x9)
TEST_RR_OP(div, x2, x3, x0, 0, 2097152, -16777217, x8, 12, x9)
TEST_RR_OP(div, x1, x0, x3, 0, 4194304, -16777217, x8, 16, x9)
TEST_RR_OP(div, x0, x1, x2, 0, 8388608, -16777217, x8, 20, x9)
TEST_RR_OP(div, x31, x30, x30, 0, 16777216, -16777217, x8, 24, x9)
TEST_RR_OP(div, x31, x31, x30, 0, 33554432, -16777217, x8, 28, x9)
TEST_RR_OP(div, x31, x30, x31, 0, 67108864, -16777217, x8, 32, x9)
TEST_RR_OP(div, x31, x31, x31, 0, 134217728, -16777217, x8, 36, x9)
TEST_RR_OP(div, x12, x10, x11, 0, 268435456, -16777217, x8, 40, x9)
TEST_RR_OP(div, x12, x10, x11, 0, 536870912, -16777217, x8, 44, x9)
TEST_RR_OP(div, x12, x10, x11, 0, 1073741824, -16777217, x8, 48, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -2, -16777217, x8, 52, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -3, -16777217, x8, 56, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -5, -16777217, x8, 60, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -9, -16777217, x8, 64, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -17, -16777217, x8, 68, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -33, -16777217, x8, 72, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -65, -16777217, x8, 76, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -129, -16777217, x8, 80, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -257, -16777217, x8, 84, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -513, -16777217, x8, 88, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -1025, -16777217, x8, 92, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -2049, -16777217, x8, 96, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -4097, -16777217, x8, 100, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -8193, -16777217, x8, 104, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16385, -16777217, x8, 108, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -32769, -16777217, x8, 112, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -65537, -16777217, x8, 116, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -131073, -16777217, x8, 120, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -262145, -16777217, x8, 124, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -524289, -16777217, x8, 128, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -1048577, -16777217, x8, 132, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -2097153, -16777217, x8, 136, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -4194305, -16777217, x8, 140, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -8388609, -16777217, x8, 144, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -33554433, -16777217, x8, 148, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -67108865, -16777217, x8, 152, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -134217729, -16777217, x8, 156, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -268435457, -16777217, x8, 160, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -536870913, -16777217, x8, 164, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -1073741825, -16777217, x8, 168, x9)
TEST_RR_OP(div, x12, x10, x11, 0, 1431655765, -16777217, x8, 172, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -262145, x8, 176, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -524289, x8, 180, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -1048577, x8, 184, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -2097153, x8, 188, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -4194305, x8, 192, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -8388609, x8, 196, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -33554433, x8, 200, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -67108865, x8, 204, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -134217729, x8, 208, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -268435457, x8, 212, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -536870913, x8, 216, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -1073741825, x8, 220, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 1431655765, x8, 224, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -1431655766, x8, 228, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -1431655766, -16777217, x8, 232, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 2, x8, 236, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 4, x8, 240, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 8, x8, 244, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 16, x8, 248, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 32, x8, 252, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 64, x8, 256, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 128, x8, 260, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 256, x8, 264, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 512, x8, 268, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 1024, x8, 272, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 2048, x8, 276, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 4096, x8, 280, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 8192, x8, 284, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 16384, x8, 288, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 32768, x8, 292, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 65536, x8, 296, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 131072, x8, 300, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 262144, x8, 304, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 524288, x8, 308, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 1048576, x8, 312, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 2097152, x8, 316, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 4194304, x8, 320, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 8388608, x8, 324, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 16777216, x8, 328, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 33554432, x8, 332, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 67108864, x8, 336, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 134217728, x8, 340, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 268435456, x8, 344, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 536870912, x8, 348, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, 1073741824, x8, 352, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -2, x8, 356, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -3, x8, 360, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -5, x8, 364, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -9, x8, 368, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -17, x8, 372, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -33, x8, 376, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -65, x8, 380, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -129, x8, 384, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -257, x8, 388, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -513, x8, 392, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -1025, x8, 396, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -2049, x8, 400, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -4097, x8, 404, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -8193, x8, 408, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -16385, x8, 412, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -32769, x8, 416, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -65537, x8, 420, x9)
TEST_RR_OP(div, x12, x10, x11, 0, -16777217, -131073, x8, 424, x9)
TEST_RR_OP(div, x12, x10, x11, 0, 2097152, -16777217, x8, 428, x9)
TEST_RR_OP(div, x12, x10, x11, 0, 4194304, -16777217, x8, 432, x9)
TEST_RR_OP(div, x12, x10, x11, 0, 8388608, -16777217, x8, 436, x9)
TEST_RR_OP(div, x12, x10, x11, 0, 16777216, -16777217, x8, 440, x9)
TEST_RR_OP(div, x12, x10, x11, 0, 33554432, -16777217, x8, 444, x9)
TEST_RR_OP(div, x12, x10, x11, 0, 67108864, -16777217, x8, 448, x9)
TEST_RR_OP(div, x12, x10, x11, 0, 134217728, -16777217, x8, 452, x9)
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
    .fill 114*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
