
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",caddiw)
la x1,signature_x1_1
TEST_CI_OP( c.addiw, x31, 0, -9223372036854775808, -2, x1, 0, x2)
TEST_CI_OP( c.addiw, x30, 0, 0, -2, x1, 8, x2)
TEST_CI_OP( c.addiw, x29, 0, 9223372036854775807, -2, x1, 16, x2)
TEST_CI_OP( c.addiw, x28, 0, 1, -2, x1, 24, x2)
TEST_CI_OP( c.addiw, x27, 0, -1, -32, x1, 32, x2)
TEST_CI_OP( c.addiw, x26, 0, -1, 0, x1, 40, x2)
TEST_CI_OP( c.addiw, x25, 0, -1, 31, x1, 48, x2)
TEST_CI_OP( c.addiw, x24, 0, -1, 1, x1, 56, x2)
TEST_CI_OP( c.addiw, x23, 0, -2, -2, x1, 64, x2)
TEST_CI_OP( c.addiw, x22, 0, 6148914691236517205, 31, x1, 72, x2)
TEST_CI_OP( c.addiw, x21, 0, 2, -2, x1, 80, x2)
TEST_CI_OP( c.addiw, x20, 0, 4, -2, x1, 88, x2)
TEST_CI_OP( c.addiw, x19, 0, 8, -2, x1, 96, x2)
TEST_CI_OP( c.addiw, x18, 0, 16, -2, x1, 104, x2)
TEST_CI_OP( c.addiw, x17, 0, 32, -2, x1, 112, x2)
TEST_CI_OP( c.addiw, x16, 0, 64, -2, x1, 120, x2)
TEST_CI_OP( c.addiw, x15, 0, 128, -2, x1, 128, x2)
TEST_CI_OP( c.addiw, x14, 0, 256, -2, x1, 136, x2)
TEST_CI_OP( c.addiw, x13, 0, 512, -2, x1, 144, x2)
TEST_CI_OP( c.addiw, x12, 0, 1024, -2, x1, 152, x2)
TEST_CI_OP( c.addiw, x11, 0, 2048, -2, x1, 160, x2)
TEST_CI_OP( c.addiw, x10, 0, 4096, -2, x1, 168, x2)
TEST_CI_OP( c.addiw, x9, 0, 8192, -2, x1, 176, x2)
TEST_CI_OP( c.addiw, x8, 0, 16384, -2, x1, 184, x2)
TEST_CI_OP( c.addiw, x7, 0, 32768, -2, x1, 192, x2)
TEST_CI_OP( c.addiw, x6, 0, 65536, -2, x1, 200, x2)
TEST_CI_OP( c.addiw, x5, 0, 131072, -2, x1, 208, x2)
TEST_CI_OP( c.addiw, x4, 0, 262144, -2, x1, 216, x5)
la x4,signature_x4_0
TEST_CI_OP( c.addiw, x3, 0, 524288, -2, x4, 0, x5)
TEST_CI_OP( c.addiw, x2, 0, 1048576, -2, x4, 8, x5)
TEST_CI_OP( c.addiw, x1, 0, 2097152, -2, x4, 16, x5)
TEST_CI_OP( c.addiw, x10, 0, 4194304, -2, x4, 24, x5)
TEST_CI_OP( c.addiw, x10, 0, 8388608, -2, x4, 32, x5)
TEST_CI_OP( c.addiw, x10, 0, 16777216, -2, x4, 40, x5)
TEST_CI_OP( c.addiw, x10, 0, 33554432, -2, x4, 48, x5)
TEST_CI_OP( c.addiw, x10, 0, 67108864, -2, x4, 56, x5)
TEST_CI_OP( c.addiw, x10, 0, 134217728, -2, x4, 64, x5)
TEST_CI_OP( c.addiw, x10, 0, 268435456, -2, x4, 72, x5)
TEST_CI_OP( c.addiw, x10, 0, 536870912, -2, x4, 80, x5)
TEST_CI_OP( c.addiw, x10, 0, 1073741824, -2, x4, 88, x5)
TEST_CI_OP( c.addiw, x10, 0, 2147483648, -2, x4, 96, x5)
TEST_CI_OP( c.addiw, x10, 0, 4294967296, -2, x4, 104, x5)
TEST_CI_OP( c.addiw, x10, 0, 8589934592, -2, x4, 112, x5)
TEST_CI_OP( c.addiw, x10, 0, 17179869184, -2, x4, 120, x5)
TEST_CI_OP( c.addiw, x10, 0, 34359738368, -2, x4, 128, x5)
TEST_CI_OP( c.addiw, x10, 0, 68719476736, -2, x4, 136, x5)
TEST_CI_OP( c.addiw, x10, 0, 137438953472, -2, x4, 144, x5)
TEST_CI_OP( c.addiw, x10, 0, 274877906944, -2, x4, 152, x5)
TEST_CI_OP( c.addiw, x10, 0, 549755813888, -2, x4, 160, x5)
TEST_CI_OP( c.addiw, x10, 0, 1099511627776, -2, x4, 168, x5)
TEST_CI_OP( c.addiw, x10, 0, 2199023255552, -2, x4, 176, x5)
TEST_CI_OP( c.addiw, x10, 0, 4398046511104, -2, x4, 184, x5)
TEST_CI_OP( c.addiw, x10, 0, 8796093022208, -2, x4, 192, x5)
TEST_CI_OP( c.addiw, x10, 0, 17592186044416, -2, x4, 200, x5)
TEST_CI_OP( c.addiw, x10, 0, 35184372088832, -2, x4, 208, x5)
TEST_CI_OP( c.addiw, x10, 0, 70368744177664, -2, x4, 216, x5)
TEST_CI_OP( c.addiw, x10, 0, 140737488355328, -2, x4, 224, x5)
TEST_CI_OP( c.addiw, x10, 0, 281474976710656, -2, x4, 232, x5)
TEST_CI_OP( c.addiw, x10, 0, 562949953421312, -2, x4, 240, x5)
TEST_CI_OP( c.addiw, x10, 0, 1125899906842624, -2, x4, 248, x5)
TEST_CI_OP( c.addiw, x10, 0, 2251799813685248, -2, x4, 256, x5)
TEST_CI_OP( c.addiw, x10, 0, 4503599627370496, -2, x4, 264, x5)
TEST_CI_OP( c.addiw, x10, 0, 9007199254740992, -2, x4, 272, x5)
TEST_CI_OP( c.addiw, x10, 0, 18014398509481984, -2, x4, 280, x5)
TEST_CI_OP( c.addiw, x10, 0, 36028797018963968, -2, x4, 288, x5)
TEST_CI_OP( c.addiw, x10, 0, 72057594037927936, -2, x4, 296, x5)
TEST_CI_OP( c.addiw, x10, 0, 144115188075855872, -2, x4, 304, x5)
TEST_CI_OP( c.addiw, x10, 0, 288230376151711744, -2, x4, 312, x5)
TEST_CI_OP( c.addiw, x10, 0, 576460752303423488, -2, x4, 320, x5)
TEST_CI_OP( c.addiw, x10, 0, 1152921504606846976, -2, x4, 328, x5)
TEST_CI_OP( c.addiw, x10, 0, 2305843009213693952, -2, x4, 336, x5)
TEST_CI_OP( c.addiw, x10, 0, 4611686018427387904, -2, x4, 344, x5)
TEST_CI_OP( c.addiw, x10, 0, -3, -2, x4, 352, x5)
TEST_CI_OP( c.addiw, x10, 0, -5, -2, x4, 360, x5)
TEST_CI_OP( c.addiw, x10, 0, -9, -2, x4, 368, x5)
TEST_CI_OP( c.addiw, x10, 0, -17, -2, x4, 376, x5)
TEST_CI_OP( c.addiw, x10, 0, -33, -2, x4, 384, x5)
TEST_CI_OP( c.addiw, x10, 0, -65, -2, x4, 392, x5)
TEST_CI_OP( c.addiw, x10, 0, -129, -2, x4, 400, x5)
TEST_CI_OP( c.addiw, x10, 0, -257, -2, x4, 408, x5)
TEST_CI_OP( c.addiw, x10, 0, -513, -2, x4, 416, x5)
TEST_CI_OP( c.addiw, x10, 0, -1025, -2, x4, 424, x5)
TEST_CI_OP( c.addiw, x10, 0, -2251799813685249, -2, x4, 432, x5)
TEST_CI_OP( c.addiw, x10, 0, -4503599627370497, -2, x4, 440, x5)
TEST_CI_OP( c.addiw, x10, 0, -9007199254740993, -2, x4, 448, x5)
TEST_CI_OP( c.addiw, x10, 0, -18014398509481985, -2, x4, 456, x5)
TEST_CI_OP( c.addiw, x10, 0, -36028797018963969, -2, x4, 464, x5)
TEST_CI_OP( c.addiw, x10, 0, -72057594037927937, -2, x4, 472, x5)
TEST_CI_OP( c.addiw, x10, 0, -144115188075855873, -2, x4, 480, x5)
TEST_CI_OP( c.addiw, x10, 0, -288230376151711745, -2, x4, 488, x5)
TEST_CI_OP( c.addiw, x10, 0, -576460752303423489, -2, x4, 496, x5)
TEST_CI_OP( c.addiw, x10, 0, -1152921504606846977, -2, x4, 504, x5)
TEST_CI_OP( c.addiw, x10, 0, -2305843009213693953, -2, x4, 512, x5)
TEST_CI_OP( c.addiw, x10, 0, -4611686018427387905, -2, x4, 520, x5)
TEST_CI_OP( c.addiw, x10, 0, -6148914691236517206, -2, x4, 528, x5)
TEST_CI_OP( c.addiw, x10, 0, -1, 2, x4, 536, x5)
TEST_CI_OP( c.addiw, x10, 0, -1, 4, x4, 544, x5)
TEST_CI_OP( c.addiw, x10, 0, -1, 8, x4, 552, x5)
TEST_CI_OP( c.addiw, x10, 0, -1, 16, x4, 560, x5)
TEST_CI_OP( c.addiw, x10, 0, -1, -3, x4, 568, x5)
TEST_CI_OP( c.addiw, x10, 0, -1, -5, x4, 576, x5)
TEST_CI_OP( c.addiw, x10, 0, -1, -9, x4, 584, x5)
TEST_CI_OP( c.addiw, x10, 0, -1, -17, x4, 592, x5)
TEST_CI_OP( c.addiw, x10, 0, -1, 21, x4, 600, x5)
TEST_CI_OP( c.addiw, x10, 0, -1, -22, x4, 608, x5)
TEST_CI_OP( c.addiw, x10, 0, -2049, -2, x4, 616, x5)
TEST_CI_OP( c.addiw, x10, 0, -4097, -2, x4, 624, x5)
TEST_CI_OP( c.addiw, x10, 0, -8193, -2, x4, 632, x5)
TEST_CI_OP( c.addiw, x10, 0, -16385, -2, x4, 640, x5)
TEST_CI_OP( c.addiw, x10, 0, -32769, -2, x4, 648, x5)
TEST_CI_OP( c.addiw, x10, 0, -65537, -2, x4, 656, x5)
TEST_CI_OP( c.addiw, x10, 0, -131073, -2, x4, 664, x5)
TEST_CI_OP( c.addiw, x10, 0, -262145, -2, x4, 672, x5)
TEST_CI_OP( c.addiw, x10, 0, -524289, -2, x4, 680, x5)
TEST_CI_OP( c.addiw, x10, 0, -1048577, -2, x4, 688, x5)
TEST_CI_OP( c.addiw, x10, 0, -2097153, -2, x4, 696, x5)
TEST_CI_OP( c.addiw, x10, 0, -4194305, -2, x4, 704, x5)
TEST_CI_OP( c.addiw, x10, 0, -8388609, -2, x4, 712, x5)
TEST_CI_OP( c.addiw, x10, 0, -16777217, -2, x4, 720, x5)
TEST_CI_OP( c.addiw, x10, 0, -33554433, -2, x4, 728, x5)
TEST_CI_OP( c.addiw, x10, 0, -67108865, -2, x4, 736, x5)
TEST_CI_OP( c.addiw, x10, 0, -134217729, -2, x4, 744, x5)
TEST_CI_OP( c.addiw, x10, 0, -268435457, -2, x4, 752, x5)
TEST_CI_OP( c.addiw, x10, 0, -536870913, -2, x4, 760, x5)
TEST_CI_OP( c.addiw, x10, 0, -1073741825, -2, x4, 768, x5)
TEST_CI_OP( c.addiw, x10, 0, -2147483649, -2, x4, 776, x5)
TEST_CI_OP( c.addiw, x10, 0, -4294967297, -2, x4, 784, x5)
TEST_CI_OP( c.addiw, x10, 0, -8589934593, -2, x4, 792, x5)
TEST_CI_OP( c.addiw, x10, 0, -17179869185, -2, x4, 800, x5)
TEST_CI_OP( c.addiw, x10, 0, -34359738369, -2, x4, 808, x5)
TEST_CI_OP( c.addiw, x10, 0, -68719476737, -2, x4, 816, x5)
TEST_CI_OP( c.addiw, x10, 0, -137438953473, -2, x4, 824, x5)
TEST_CI_OP( c.addiw, x10, 0, -274877906945, -2, x4, 832, x5)
TEST_CI_OP( c.addiw, x10, 0, -549755813889, -2, x4, 840, x5)
TEST_CI_OP( c.addiw, x10, 0, -1099511627777, -2, x4, 848, x5)
TEST_CI_OP( c.addiw, x10, 0, -2199023255553, -2, x4, 856, x5)
TEST_CI_OP( c.addiw, x10, 0, -4398046511105, -2, x4, 864, x5)
TEST_CI_OP( c.addiw, x10, 0, -8796093022209, -2, x4, 872, x5)
TEST_CI_OP( c.addiw, x10, 0, -17592186044417, -2, x4, 880, x5)
TEST_CI_OP( c.addiw, x10, 0, -35184372088833, -2, x4, 888, x5)
TEST_CI_OP( c.addiw, x10, 0, -70368744177665, -2, x4, 896, x5)
TEST_CI_OP( c.addiw, x10, 0, -140737488355329, -2, x4, 904, x5)
TEST_CI_OP( c.addiw, x10, 0, -281474976710657, -2, x4, 912, x5)
TEST_CI_OP( c.addiw, x10, 0, -562949953421313, -2, x4, 920, x5)
TEST_CI_OP( c.addiw, x10, 0, -1125899906842625, -2, x4, 928, x5)
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
    .fill 28*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 117*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
