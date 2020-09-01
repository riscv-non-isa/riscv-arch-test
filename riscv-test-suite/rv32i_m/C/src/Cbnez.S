
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cbnez)
la x1,signature_x1_1
TEST_CBRANCH_OP(c.bnez, x2, x15, 1073741823, 170, 3f, x1, 0)
TEST_CBRANCH_OP(c.bnez, x2, x14, -16777217, 170, 3f, x1, 4)
TEST_CBRANCH_OP(c.bnez, x2, x13, 0, 170, 3f, x1, 8)
TEST_CBRANCH_OP(c.bnez, x2, x12, 1073741823, 4, 1b, x1, 12)
TEST_CBRANCH_OP(c.bnez, x2, x11, -16777217, 4, 1b, x1, 16)
TEST_CBRANCH_OP(c.bnez, x2, x10, 0, 4, 1b, x1, 20)
TEST_CBRANCH_OP(c.bnez, x2, x9, -2147483648, 4, 1b, x1, 24)
TEST_CBRANCH_OP(c.bnez, x2, x8, 2147483647, 4, 1b, x1, 28)
TEST_CBRANCH_OP(c.bnez, x2, x10, 1, 4, 1b, x1, 32)
TEST_CBRANCH_OP(c.bnez, x2, x10, 2, 4, 1b, x1, 36)
TEST_CBRANCH_OP(c.bnez, x2, x10, 4, 4, 1b, x1, 40)
TEST_CBRANCH_OP(c.bnez, x2, x10, 8, 4, 1b, x1, 44)
TEST_CBRANCH_OP(c.bnez, x2, x10, 16, 4, 1b, x1, 48)
TEST_CBRANCH_OP(c.bnez, x2, x10, 32, 4, 1b, x1, 52)
TEST_CBRANCH_OP(c.bnez, x2, x10, 64, 4, 1b, x1, 56)
TEST_CBRANCH_OP(c.bnez, x2, x10, 128, 4, 1b, x1, 60)
TEST_CBRANCH_OP(c.bnez, x2, x10, 256, 4, 1b, x1, 64)
TEST_CBRANCH_OP(c.bnez, x2, x10, 512, 4, 1b, x1, 68)
TEST_CBRANCH_OP(c.bnez, x2, x10, 1024, 4, 1b, x1, 72)
TEST_CBRANCH_OP(c.bnez, x2, x10, 2048, 4, 1b, x1, 76)
TEST_CBRANCH_OP(c.bnez, x2, x10, 4096, 4, 1b, x1, 80)
TEST_CBRANCH_OP(c.bnez, x2, x10, 8192, 4, 1b, x1, 84)
TEST_CBRANCH_OP(c.bnez, x2, x10, 16384, 4, 1b, x1, 88)
TEST_CBRANCH_OP(c.bnez, x2, x10, 32768, 4, 1b, x1, 92)
TEST_CBRANCH_OP(c.bnez, x2, x10, 65536, 4, 1b, x1, 96)
TEST_CBRANCH_OP(c.bnez, x2, x10, 131072, 4, 1b, x1, 100)
TEST_CBRANCH_OP(c.bnez, x2, x10, 262144, 4, 1b, x1, 104)
TEST_CBRANCH_OP(c.bnez, x2, x10, 524288, 4, 1b, x1, 108)
TEST_CBRANCH_OP(c.bnez, x2, x10, 1048576, 4, 1b, x1, 112)
TEST_CBRANCH_OP(c.bnez, x2, x10, 2097152, 4, 1b, x1, 116)
TEST_CBRANCH_OP(c.bnez, x2, x10, 4194304, 4, 1b, x1, 120)
TEST_CBRANCH_OP(c.bnez, x2, x10, 8388608, 4, 1b, x1, 124)
TEST_CBRANCH_OP(c.bnez, x2, x10, 16777216, 4, 1b, x1, 128)
TEST_CBRANCH_OP(c.bnez, x2, x10, 33554432, 4, 1b, x1, 132)
TEST_CBRANCH_OP(c.bnez, x2, x10, 67108864, 4, 1b, x1, 136)
TEST_CBRANCH_OP(c.bnez, x2, x10, 134217728, 4, 1b, x1, 140)
TEST_CBRANCH_OP(c.bnez, x2, x10, 268435456, 4, 1b, x1, 144)
TEST_CBRANCH_OP(c.bnez, x2, x10, 536870912, 4, 1b, x1, 148)
TEST_CBRANCH_OP(c.bnez, x2, x10, 1073741824, 4, 1b, x1, 152)
TEST_CBRANCH_OP(c.bnez, x2, x10, -2, 4, 1b, x1, 156)
TEST_CBRANCH_OP(c.bnez, x2, x10, -8388609, 4, 1b, x1, 160)
TEST_CBRANCH_OP(c.bnez, x2, x10, -33554433, 4, 1b, x1, 164)
TEST_CBRANCH_OP(c.bnez, x2, x10, -67108865, 4, 1b, x1, 168)
TEST_CBRANCH_OP(c.bnez, x2, x10, -134217729, 4, 1b, x1, 172)
TEST_CBRANCH_OP(c.bnez, x2, x10, -268435457, 4, 1b, x1, 176)
TEST_CBRANCH_OP(c.bnez, x2, x10, -536870913, 4, 1b, x1, 180)
TEST_CBRANCH_OP(c.bnez, x2, x10, -1073741825, 4, 1b, x1, 184)
TEST_CBRANCH_OP(c.bnez, x2, x10, 1431655765, 4, 1b, x1, 188)
TEST_CBRANCH_OP(c.bnez, x2, x10, -1431655766, 4, 1b, x1, 192)
TEST_CBRANCH_OP(c.bnez, x2, x10, -3, 4, 1b, x1, 196)
TEST_CBRANCH_OP(c.bnez, x2, x10, -5, 4, 1b, x1, 200)
TEST_CBRANCH_OP(c.bnez, x2, x10, -9, 4, 1b, x1, 204)
TEST_CBRANCH_OP(c.bnez, x2, x10, -17, 4, 1b, x1, 208)
TEST_CBRANCH_OP(c.bnez, x2, x10, -33, 4, 1b, x1, 212)
TEST_CBRANCH_OP(c.bnez, x2, x10, -65, 4, 1b, x1, 216)
TEST_CBRANCH_OP(c.bnez, x2, x10, -129, 4, 1b, x1, 220)
TEST_CBRANCH_OP(c.bnez, x2, x10, -257, 4, 1b, x1, 224)
TEST_CBRANCH_OP(c.bnez, x2, x10, -513, 4, 1b, x1, 228)
TEST_CBRANCH_OP(c.bnez, x2, x10, -1025, 4, 1b, x1, 232)
TEST_CBRANCH_OP(c.bnez, x2, x10, -2049, 4, 1b, x1, 236)
TEST_CBRANCH_OP(c.bnez, x2, x10, -4097, 4, 1b, x1, 240)
TEST_CBRANCH_OP(c.bnez, x2, x10, -8193, 4, 1b, x1, 244)
TEST_CBRANCH_OP(c.bnez, x2, x10, -16385, 4, 1b, x1, 248)
TEST_CBRANCH_OP(c.bnez, x2, x10, -32769, 4, 1b, x1, 252)
TEST_CBRANCH_OP(c.bnez, x2, x10, -65537, 4, 1b, x1, 256)
TEST_CBRANCH_OP(c.bnez, x2, x10, -131073, 4, 1b, x1, 260)
TEST_CBRANCH_OP(c.bnez, x2, x10, -262145, 4, 1b, x1, 264)
TEST_CBRANCH_OP(c.bnez, x2, x10, -524289, 4, 1b, x1, 268)
TEST_CBRANCH_OP(c.bnez, x2, x10, -1048577, 4, 1b, x1, 272)
TEST_CBRANCH_OP(c.bnez, x2, x10, -2097153, 4, 1b, x1, 276)
TEST_CBRANCH_OP(c.bnez, x2, x10, -4194305, 4, 1b, x1, 280)
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
    .fill 71*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
