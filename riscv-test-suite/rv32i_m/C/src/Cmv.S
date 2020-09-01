
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cmv)
la x1,signature_x1_1
TEST_CMV_OP( c.mv, x30, x31, 0, -2147483648, x1, 0, x2)
TEST_CMV_OP( c.mv, x31, x30, 0, 0, x1, 4, x2)
TEST_CMV_OP( c.mv, x28, x29, 0, 2147483647, x1, 8, x2)
TEST_CMV_OP( c.mv, x29, x28, 0, 1, x1, 12, x2)
TEST_CMV_OP( c.mv, x26, x27, 0, 2, x1, 16, x2)
TEST_CMV_OP( c.mv, x27, x26, 0, 4, x1, 20, x2)
TEST_CMV_OP( c.mv, x24, x25, 0, 8, x1, 24, x2)
TEST_CMV_OP( c.mv, x25, x24, 0, 16, x1, 28, x2)
TEST_CMV_OP( c.mv, x22, x23, 0, 32, x1, 32, x2)
TEST_CMV_OP( c.mv, x23, x22, 0, 64, x1, 36, x2)
TEST_CMV_OP( c.mv, x20, x21, 0, 128, x1, 40, x2)
TEST_CMV_OP( c.mv, x21, x20, 0, 256, x1, 44, x2)
TEST_CMV_OP( c.mv, x18, x19, 0, 512, x1, 48, x2)
TEST_CMV_OP( c.mv, x19, x18, 0, 1024, x1, 52, x2)
TEST_CMV_OP( c.mv, x16, x17, 0, 2048, x1, 56, x2)
TEST_CMV_OP( c.mv, x17, x16, 0, 4096, x1, 60, x2)
TEST_CMV_OP( c.mv, x14, x15, 0, 8192, x1, 64, x2)
TEST_CMV_OP( c.mv, x15, x14, 0, 16384, x1, 68, x2)
TEST_CMV_OP( c.mv, x12, x13, 0, 32768, x1, 72, x2)
TEST_CMV_OP( c.mv, x13, x12, 0, 65536, x1, 76, x2)
TEST_CMV_OP( c.mv, x10, x11, 0, 131072, x1, 80, x2)
TEST_CMV_OP( c.mv, x11, x10, 0, 262144, x1, 84, x2)
TEST_CMV_OP( c.mv, x8, x9, 0, 524288, x1, 88, x2)
TEST_CMV_OP( c.mv, x9, x8, 0, 1048576, x1, 92, x2)
TEST_CMV_OP( c.mv, x6, x7, 0, 2097152, x1, 96, x2)
TEST_CMV_OP( c.mv, x7, x6, 0, 4194304, x1, 100, x2)
TEST_CMV_OP( c.mv, x4, x5, 0, 8388608, x1, 104, x2)
la x6,signature_x6_0
TEST_CMV_OP( c.mv, x5, x4, 0, 16777216, x6, 0, x7)
TEST_CMV_OP( c.mv, x2, x3, 0, 33554432, x6, 4, x7)
TEST_CMV_OP( c.mv, x3, x2, 0, 67108864, x6, 8, x7)
TEST_CMV_OP( c.mv, x0, x1, 0, 134217728, x6, 12, x7)
TEST_CMV_OP( c.mv, x1, x31, 0, 268435456, x6, 16, x7)
TEST_CMV_OP( c.mv, x31, x31, 0, 536870912, x6, 20, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 1073741824, x6, 24, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -2, x6, 28, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -3, x6, 32, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -536870913, x6, 36, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -1073741825, x6, 40, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 1431655765, x6, 44, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -1431655766, x6, 48, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -5, x6, 52, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -9, x6, 56, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -17, x6, 60, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -33, x6, 64, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -65, x6, 68, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -129, x6, 72, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -257, x6, 76, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -513, x6, 80, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -1025, x6, 84, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -2049, x6, 88, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -4097, x6, 92, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -8193, x6, 96, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -16385, x6, 100, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -32769, x6, 104, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -65537, x6, 108, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -131073, x6, 112, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -262145, x6, 116, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -524289, x6, 120, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -1048577, x6, 124, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -2097153, x6, 128, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -4194305, x6, 132, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -8388609, x6, 136, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -16777217, x6, 140, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -33554433, x6, 144, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -67108865, x6, 148, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -134217729, x6, 152, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -268435457, x6, 156, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 134217728, x6, 160, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 536870912, x6, 164, x7)
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
    .fill 42*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
