
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cmv)
la x1,signature_x1_1
TEST_CMV_OP( c.mv, x30, x31, 0, -9223372036854775808, x1, 0, x2)
TEST_CMV_OP( c.mv, x31, x30, 0, 0, x1, 8, x2)
TEST_CMV_OP( c.mv, x28, x29, 0, 9223372036854775807, x1, 16, x2)
TEST_CMV_OP( c.mv, x29, x28, 0, 1, x1, 24, x2)
TEST_CMV_OP( c.mv, x26, x27, 0, 2, x1, 32, x2)
TEST_CMV_OP( c.mv, x27, x26, 0, 4, x1, 40, x2)
TEST_CMV_OP( c.mv, x24, x25, 0, 8, x1, 48, x2)
TEST_CMV_OP( c.mv, x25, x24, 0, 16, x1, 56, x2)
TEST_CMV_OP( c.mv, x22, x23, 0, 32, x1, 64, x2)
TEST_CMV_OP( c.mv, x23, x22, 0, 64, x1, 72, x2)
TEST_CMV_OP( c.mv, x20, x21, 0, 128, x1, 80, x2)
TEST_CMV_OP( c.mv, x21, x20, 0, 256, x1, 88, x2)
TEST_CMV_OP( c.mv, x18, x19, 0, 512, x1, 96, x2)
TEST_CMV_OP( c.mv, x19, x18, 0, 1024, x1, 104, x2)
TEST_CMV_OP( c.mv, x16, x17, 0, 2048, x1, 112, x2)
TEST_CMV_OP( c.mv, x17, x16, 0, 4096, x1, 120, x2)
TEST_CMV_OP( c.mv, x14, x15, 0, 8192, x1, 128, x2)
TEST_CMV_OP( c.mv, x15, x14, 0, 16384, x1, 136, x2)
TEST_CMV_OP( c.mv, x12, x13, 0, 32768, x1, 144, x2)
TEST_CMV_OP( c.mv, x13, x12, 0, 65536, x1, 152, x2)
TEST_CMV_OP( c.mv, x10, x11, 0, 131072, x1, 160, x2)
TEST_CMV_OP( c.mv, x11, x10, 0, 262144, x1, 168, x2)
TEST_CMV_OP( c.mv, x8, x9, 0, 524288, x1, 176, x2)
TEST_CMV_OP( c.mv, x9, x8, 0, 1048576, x1, 184, x2)
TEST_CMV_OP( c.mv, x6, x7, 0, 2097152, x1, 192, x2)
TEST_CMV_OP( c.mv, x7, x6, 0, 4194304, x1, 200, x2)
TEST_CMV_OP( c.mv, x4, x5, 0, 8388608, x1, 208, x2)
la x6,signature_x6_0
TEST_CMV_OP( c.mv, x5, x4, 0, 16777216, x6, 0, x7)
TEST_CMV_OP( c.mv, x2, x3, 0, 33554432, x6, 8, x7)
TEST_CMV_OP( c.mv, x3, x2, 0, 67108864, x6, 16, x7)
TEST_CMV_OP( c.mv, x0, x1, 0, 134217728, x6, 24, x7)
TEST_CMV_OP( c.mv, x1, x31, 0, 268435456, x6, 32, x7)
TEST_CMV_OP( c.mv, x31, x31, 0, 536870912, x6, 40, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 1073741824, x6, 48, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 2147483648, x6, 56, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 4294967296, x6, 64, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 8589934592, x6, 72, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 17179869184, x6, 80, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 34359738368, x6, 88, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 68719476736, x6, 96, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 137438953472, x6, 104, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 274877906944, x6, 112, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 549755813888, x6, 120, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 1099511627776, x6, 128, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 2199023255552, x6, 136, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 4398046511104, x6, 144, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 8796093022208, x6, 152, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 17592186044416, x6, 160, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 35184372088832, x6, 168, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 70368744177664, x6, 176, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 140737488355328, x6, 184, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 281474976710656, x6, 192, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 562949953421312, x6, 200, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 1125899906842624, x6, 208, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 2251799813685248, x6, 216, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 4503599627370496, x6, 224, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 9007199254740992, x6, 232, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 18014398509481984, x6, 240, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 36028797018963968, x6, 248, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 72057594037927936, x6, 256, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 144115188075855872, x6, 264, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 288230376151711744, x6, 272, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 576460752303423488, x6, 280, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 1152921504606846976, x6, 288, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 2305843009213693952, x6, 296, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 4611686018427387904, x6, 304, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -2, x6, 312, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -3, x6, 320, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -2305843009213693953, x6, 328, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -4611686018427387905, x6, 336, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 6148914691236517205, x6, 344, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -6148914691236517206, x6, 352, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -5, x6, 360, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -9, x6, 368, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -17, x6, 376, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -33, x6, 384, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -65, x6, 392, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -129, x6, 400, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -257, x6, 408, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -513, x6, 416, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -1025, x6, 424, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -2049, x6, 432, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -4097, x6, 440, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -8193, x6, 448, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -16385, x6, 456, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -32769, x6, 464, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -65537, x6, 472, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -131073, x6, 480, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -262145, x6, 488, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -524289, x6, 496, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -1048577, x6, 504, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -2097153, x6, 512, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -4194305, x6, 520, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -8388609, x6, 528, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -16777217, x6, 536, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -33554433, x6, 544, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -67108865, x6, 552, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -134217729, x6, 560, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -268435457, x6, 568, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -536870913, x6, 576, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -1073741825, x6, 584, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -2147483649, x6, 592, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -4294967297, x6, 600, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -8589934593, x6, 608, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -17179869185, x6, 616, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -34359738369, x6, 624, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -68719476737, x6, 632, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -137438953473, x6, 640, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -274877906945, x6, 648, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -549755813889, x6, 656, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -1099511627777, x6, 664, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -2199023255553, x6, 672, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -4398046511105, x6, 680, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -8796093022209, x6, 688, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -17592186044417, x6, 696, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -35184372088833, x6, 704, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -70368744177665, x6, 712, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -140737488355329, x6, 720, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -281474976710657, x6, 728, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -562949953421313, x6, 736, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -1125899906842625, x6, 744, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -2251799813685249, x6, 752, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -4503599627370497, x6, 760, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -9007199254740993, x6, 768, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -18014398509481985, x6, 776, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -36028797018963969, x6, 784, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -72057594037927937, x6, 792, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -144115188075855873, x6, 800, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -288230376151711745, x6, 808, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -576460752303423489, x6, 816, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, -1152921504606846977, x6, 824, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 134217728, x6, 832, x7)
TEST_CMV_OP( c.mv, x10, x11, 0, 536870912, x6, 840, x7)
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
    .fill 106*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
