
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cor)
la x1,signature_x1_1
TEST_CR_OP( c.or, x15, x14, 0, -16777217, 1073741823, x1, 0, x2)
TEST_CR_OP( c.or, x14, x15, 0, -16777217, -16777217, x1, 4, x2)
TEST_CR_OP( c.or, x13, x12, 0, -2147483648, -16777217, x1, 8, x2)
TEST_CR_OP( c.or, x12, x13, 0, 0, -16777217, x1, 12, x2)
TEST_CR_OP( c.or, x11, x10, 0, 2147483647, -16777217, x1, 16, x2)
TEST_CR_OP( c.or, x10, x11, 0, 1, -16777217, x1, 20, x2)
TEST_CR_OP( c.or, x9, x8, 0, -16777217, -2147483648, x1, 24, x2)
TEST_CR_OP( c.or, x8, x9, 0, -16777217, 0, x1, 28, x2)
TEST_CR_OP( c.or, x15, x15, 0, -16777217, 2147483647, x1, 32, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 1, x1, 36, x2)
TEST_CR_OP( c.or, x10, x11, 0, 2, -16777217, x1, 40, x2)
TEST_CR_OP( c.or, x10, x11, 0, 4, -16777217, x1, 44, x2)
TEST_CR_OP( c.or, x10, x11, 0, 8, -16777217, x1, 48, x2)
TEST_CR_OP( c.or, x10, x11, 0, 16, -16777217, x1, 52, x2)
TEST_CR_OP( c.or, x10, x11, 0, 32, -16777217, x1, 56, x2)
TEST_CR_OP( c.or, x10, x11, 0, 64, -16777217, x1, 60, x2)
TEST_CR_OP( c.or, x10, x11, 0, 128, -16777217, x1, 64, x2)
TEST_CR_OP( c.or, x10, x11, 0, 256, -16777217, x1, 68, x2)
TEST_CR_OP( c.or, x10, x11, 0, 512, -16777217, x1, 72, x2)
TEST_CR_OP( c.or, x10, x11, 0, 1024, -16777217, x1, 76, x2)
TEST_CR_OP( c.or, x10, x11, 0, 2048, -16777217, x1, 80, x2)
TEST_CR_OP( c.or, x10, x11, 0, 4096, -16777217, x1, 84, x2)
TEST_CR_OP( c.or, x10, x11, 0, 8192, -16777217, x1, 88, x2)
TEST_CR_OP( c.or, x10, x11, 0, 16384, -16777217, x1, 92, x2)
TEST_CR_OP( c.or, x10, x11, 0, 32768, -16777217, x1, 96, x2)
TEST_CR_OP( c.or, x10, x11, 0, 65536, -16777217, x1, 100, x2)
TEST_CR_OP( c.or, x10, x11, 0, 131072, -16777217, x1, 104, x2)
TEST_CR_OP( c.or, x10, x11, 0, 262144, -16777217, x1, 108, x2)
TEST_CR_OP( c.or, x10, x11, 0, 524288, -16777217, x1, 112, x2)
TEST_CR_OP( c.or, x10, x11, 0, 1048576, -16777217, x1, 116, x2)
TEST_CR_OP( c.or, x10, x11, 0, 2097152, -16777217, x1, 120, x2)
TEST_CR_OP( c.or, x10, x11, 0, 4194304, -16777217, x1, 124, x2)
TEST_CR_OP( c.or, x10, x11, 0, 8388608, -16777217, x1, 128, x2)
TEST_CR_OP( c.or, x10, x11, 0, 16777216, -16777217, x1, 132, x2)
TEST_CR_OP( c.or, x10, x11, 0, 33554432, -16777217, x1, 136, x2)
TEST_CR_OP( c.or, x10, x11, 0, 67108864, -16777217, x1, 140, x2)
TEST_CR_OP( c.or, x10, x11, 0, 134217728, -16777217, x1, 144, x2)
TEST_CR_OP( c.or, x10, x11, 0, 268435456, -16777217, x1, 148, x2)
TEST_CR_OP( c.or, x10, x11, 0, 536870912, -16777217, x1, 152, x2)
TEST_CR_OP( c.or, x10, x11, 0, 1073741824, -16777217, x1, 156, x2)
TEST_CR_OP( c.or, x10, x11, 0, -2, -16777217, x1, 160, x2)
TEST_CR_OP( c.or, x10, x11, 0, -3, -16777217, x1, 164, x2)
TEST_CR_OP( c.or, x10, x11, 0, -5, -16777217, x1, 168, x2)
TEST_CR_OP( c.or, x10, x11, 0, -9, -16777217, x1, 172, x2)
TEST_CR_OP( c.or, x10, x11, 0, -17, -16777217, x1, 176, x2)
TEST_CR_OP( c.or, x10, x11, 0, -33, -16777217, x1, 180, x2)
TEST_CR_OP( c.or, x10, x11, 0, -65, -16777217, x1, 184, x2)
TEST_CR_OP( c.or, x10, x11, 0, -129, -16777217, x1, 188, x2)
TEST_CR_OP( c.or, x10, x11, 0, -257, -16777217, x1, 192, x2)
TEST_CR_OP( c.or, x10, x11, 0, -513, -16777217, x1, 196, x2)
TEST_CR_OP( c.or, x10, x11, 0, -1025, -16777217, x1, 200, x2)
TEST_CR_OP( c.or, x10, x11, 0, -2049, -16777217, x1, 204, x2)
TEST_CR_OP( c.or, x10, x11, 0, -4097, -16777217, x1, 208, x2)
TEST_CR_OP( c.or, x10, x11, 0, -8193, -16777217, x1, 212, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16385, -16777217, x1, 216, x2)
TEST_CR_OP( c.or, x10, x11, 0, -32769, -16777217, x1, 220, x2)
TEST_CR_OP( c.or, x10, x11, 0, -65537, -16777217, x1, 224, x2)
TEST_CR_OP( c.or, x10, x11, 0, -131073, -16777217, x1, 228, x2)
TEST_CR_OP( c.or, x10, x11, 0, -262145, -16777217, x1, 232, x2)
TEST_CR_OP( c.or, x10, x11, 0, -524289, -16777217, x1, 236, x2)
TEST_CR_OP( c.or, x10, x11, 0, -1048577, -16777217, x1, 240, x2)
TEST_CR_OP( c.or, x10, x11, 0, -2097153, -16777217, x1, 244, x2)
TEST_CR_OP( c.or, x10, x11, 0, -4194305, -16777217, x1, 248, x2)
TEST_CR_OP( c.or, x10, x11, 0, -8388609, -16777217, x1, 252, x2)
TEST_CR_OP( c.or, x10, x11, 0, -33554433, -16777217, x1, 256, x2)
TEST_CR_OP( c.or, x10, x11, 0, -67108865, -16777217, x1, 260, x2)
TEST_CR_OP( c.or, x10, x11, 0, -134217729, -16777217, x1, 264, x2)
TEST_CR_OP( c.or, x10, x11, 0, -268435457, -16777217, x1, 268, x2)
TEST_CR_OP( c.or, x10, x11, 0, -536870913, -16777217, x1, 272, x2)
TEST_CR_OP( c.or, x10, x11, 0, -1073741825, -16777217, x1, 276, x2)
TEST_CR_OP( c.or, x10, x11, 0, 1431655765, -16777217, x1, 280, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -4194305, x1, 284, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -8388609, x1, 288, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -33554433, x1, 292, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -67108865, x1, 296, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -134217729, x1, 300, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -268435457, x1, 304, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -536870913, x1, 308, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -1073741825, x1, 312, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 1431655765, x1, 316, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -1431655766, x1, 320, x2)
TEST_CR_OP( c.or, x10, x11, 0, -1431655766, -16777217, x1, 324, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 2, x1, 328, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 4, x1, 332, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 8, x1, 336, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 16, x1, 340, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 32, x1, 344, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 64, x1, 348, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 128, x1, 352, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 256, x1, 356, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 512, x1, 360, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 1024, x1, 364, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 2048, x1, 368, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 4096, x1, 372, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 8192, x1, 376, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 16384, x1, 380, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 32768, x1, 384, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 65536, x1, 388, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 131072, x1, 392, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 262144, x1, 396, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 524288, x1, 400, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 1048576, x1, 404, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 2097152, x1, 408, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 4194304, x1, 412, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 8388608, x1, 416, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 16777216, x1, 420, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 33554432, x1, 424, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 67108864, x1, 428, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 134217728, x1, 432, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 268435456, x1, 436, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 536870912, x1, 440, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 1073741824, x1, 444, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -2, x1, 448, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -3, x1, 452, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -5, x1, 456, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -9, x1, 460, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -17, x1, 464, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -33, x1, 468, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -65, x1, 472, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -129, x1, 476, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -257, x1, 480, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -513, x1, 484, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -1025, x1, 488, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -2049, x1, 492, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -4097, x1, 496, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -8193, x1, 500, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -16385, x1, 504, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -32769, x1, 508, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -65537, x1, 512, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -131073, x1, 516, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -262145, x1, 520, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -524289, x1, 524, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -1048577, x1, 528, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, -2097153, x1, 532, x2)
TEST_CR_OP( c.or, x10, x11, 0, -16777217, 2147483647, x1, 536, x2)
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
    .fill 135*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
