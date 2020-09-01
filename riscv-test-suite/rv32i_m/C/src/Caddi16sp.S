
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi16sp)
la x1,signature_x1_1
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, 496, x1, 0, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -2147483648, 496, x1, 4, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 0, 496, x1, 8, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 2147483647, 496, x1, 12, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 1, 496, x1, 16, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 256, 256, x1, 20, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 1073741823, -32, x1, 24, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, -32, x1, 28, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, 16, x1, 32, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, 32, x1, 36, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, 64, x1, 40, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, 128, x1, 44, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, -512, x1, 48, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, -48, x1, 52, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, -80, x1, 56, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, -144, x1, 60, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, -272, x1, 64, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, 336, x1, 68, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16777217, -352, x1, 72, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 2, 496, x1, 76, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 4, 496, x1, 80, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 8, 496, x1, 84, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 16, 496, x1, 88, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 32, 496, x1, 92, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 64, 496, x1, 96, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 128, 496, x1, 100, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 512, 496, x1, 104, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 1024, 496, x1, 108, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 2048, 496, x1, 112, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 4096, 496, x1, 116, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 8192, 496, x1, 120, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 16384, 496, x1, 124, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 32768, 496, x1, 128, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 65536, 496, x1, 132, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 131072, 496, x1, 136, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 262144, 496, x1, 140, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 524288, 496, x1, 144, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 1048576, 496, x1, 148, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 2097152, 496, x1, 152, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 4194304, 496, x1, 156, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 8388608, 496, x1, 160, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 16777216, 496, x1, 164, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 33554432, 496, x1, 168, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 67108864, 496, x1, 172, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 134217728, 496, x1, 176, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 268435456, 496, x1, 180, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 536870912, 496, x1, 184, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 1073741824, 496, x1, 188, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -2, 496, x1, 192, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -257, 496, x1, 196, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -513, 496, x1, 200, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -1025, 496, x1, 204, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -2049, 496, x1, 208, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -4097, 496, x1, 212, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -8193, 496, x1, 216, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -16385, 496, x1, 220, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -32769, 496, x1, 224, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -65537, 496, x1, 228, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -131073, 496, x1, 232, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -262145, 496, x1, 236, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -524289, 496, x1, 240, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -1048577, 496, x1, 244, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -2097153, 496, x1, 248, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -4194305, 496, x1, 252, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -8388609, 496, x1, 256, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -33554433, 496, x1, 260, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -3, 496, x1, 264, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -67108865, 496, x1, 268, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -134217729, 496, x1, 272, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -268435457, 496, x1, 276, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -536870913, 496, x1, 280, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -1073741825, 496, x1, 284, x3)
TEST_CI_OP( c.addi16sp, x2, 0, 1431655765, 496, x1, 288, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -1431655766, 496, x1, 292, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -5, 496, x1, 296, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -9, 496, x1, 300, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -17, 496, x1, 304, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -33, 496, x1, 308, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -65, 496, x1, 312, x3)
TEST_CI_OP( c.addi16sp, x2, 0, -129, 496, x1, 316, x3)
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
    .fill 80*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
