
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sraiw)
la x1,signature_x1_1
TEST_IMM_OP( sraiw, x31, x30, 1, -1, 31, x1, 0, x2)
TEST_IMM_OP( sraiw, x30, x31, 0, 6148914691236517205, 31, x1, 8, x2)
TEST_IMM_OP( sraiw, x29, x28, 4294967295, -1, 0, x1, 16, x2)
TEST_IMM_OP( sraiw, x28, x29, 1431655765, 6148914691236517205, 0, x1, 24, x2)
TEST_IMM_OP( sraiw, x27, x26, 0, 16, 16, x1, 32, x2)
TEST_IMM_OP( sraiw, x26, x27, 0, -9223372036854775808, 31, x1, 40, x2)
TEST_IMM_OP( sraiw, x25, x24, 0, 0, 31, x1, 48, x2)
TEST_IMM_OP( sraiw, x24, x25, 1, 9223372036854775807, 31, x1, 56, x2)
TEST_IMM_OP( sraiw, x23, x22, 0, 1, 31, x1, 64, x2)
TEST_IMM_OP( sraiw, x22, x23, 2147483647, -1, 1, x1, 72, x2)
TEST_IMM_OP( sraiw, x21, x20, 1073741823, -1, 2, x1, 80, x2)
TEST_IMM_OP( sraiw, x20, x21, 268435455, -1, 4, x1, 88, x2)
TEST_IMM_OP( sraiw, x19, x18, 16777215, -1, 8, x1, 96, x2)
TEST_IMM_OP( sraiw, x18, x19, 3, -1, 30, x1, 104, x2)
TEST_IMM_OP( sraiw, x17, x16, 7, -1, 29, x1, 112, x2)
TEST_IMM_OP( sraiw, x16, x17, 31, -1, 27, x1, 120, x2)
TEST_IMM_OP( sraiw, x15, x14, 511, -1, 23, x1, 128, x2)
TEST_IMM_OP( sraiw, x14, x15, 131071, -1, 15, x1, 136, x2)
TEST_IMM_OP( sraiw, x13, x12, 2047, -1, 21, x1, 144, x2)
TEST_IMM_OP( sraiw, x12, x13, 4194303, -1, 10, x1, 152, x2)
TEST_IMM_OP( sraiw, x11, x10, 0, 2, 31, x1, 160, x2)
TEST_IMM_OP( sraiw, x10, x11, 0, 4, 31, x1, 168, x2)
TEST_IMM_OP( sraiw, x9, x8, 0, 8, 31, x1, 176, x2)
TEST_IMM_OP( sraiw, x8, x9, 0, 32, 31, x1, 184, x2)
TEST_IMM_OP( sraiw, x7, x6, 0, 64, 31, x1, 192, x2)
TEST_IMM_OP( sraiw, x6, x7, 0, 128, 31, x1, 200, x2)
TEST_IMM_OP( sraiw, x5, x4, 0, 256, 31, x1, 208, x2)
la x6,signature_x6_0
TEST_IMM_OP( sraiw, x4, x5, 0, 512, 31, x6, 0, x7)
TEST_IMM_OP( sraiw, x3, x2, 0, 1024, 31, x6, 8, x7)
TEST_IMM_OP( sraiw, x2, x3, 0, 2048, 31, x6, 16, x7)
TEST_IMM_OP( sraiw, x1, x0, 0, 4096, 31, x6, 24, x7)
TEST_IMM_OP( sraiw, x0, x1, 0, 8192, 31, x6, 32, x7)
TEST_IMM_OP( sraiw, x31, x31, 0, 16384, 31, x6, 40, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 32768, 31, x6, 48, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 65536, 31, x6, 56, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 131072, 31, x6, 64, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 262144, 31, x6, 72, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 524288, 31, x6, 80, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 1048576, 31, x6, 88, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 2097152, 31, x6, 96, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 4194304, 31, x6, 104, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 8388608, 31, x6, 112, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 16777216, 31, x6, 120, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 33554432, 31, x6, 128, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 67108864, 31, x6, 136, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 134217728, 31, x6, 144, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 268435456, 31, x6, 152, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 536870912, 31, x6, 160, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 1073741824, 31, x6, 168, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, 2147483648, 31, x6, 176, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 4294967296, 31, x6, 184, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 8589934592, 31, x6, 192, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 17179869184, 31, x6, 200, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 34359738368, 31, x6, 208, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 68719476736, 31, x6, 216, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 137438953472, 31, x6, 224, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 274877906944, 31, x6, 232, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 549755813888, 31, x6, 240, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 1099511627776, 31, x6, 248, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 2199023255552, 31, x6, 256, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 4398046511104, 31, x6, 264, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 8796093022208, 31, x6, 272, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 17592186044416, 31, x6, 280, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 35184372088832, 31, x6, 288, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 70368744177664, 31, x6, 296, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 140737488355328, 31, x6, 304, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 281474976710656, 31, x6, 312, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 562949953421312, 31, x6, 320, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 1125899906842624, 31, x6, 328, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 2251799813685248, 31, x6, 336, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 4503599627370496, 31, x6, 344, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 9007199254740992, 31, x6, 352, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 18014398509481984, 31, x6, 360, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 36028797018963968, 31, x6, 368, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 72057594037927936, 31, x6, 376, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 144115188075855872, 31, x6, 384, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 288230376151711744, 31, x6, 392, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 576460752303423488, 31, x6, 400, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 1152921504606846976, 31, x6, 408, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 2305843009213693952, 31, x6, 416, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 4611686018427387904, 31, x6, 424, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -2, 31, x6, 432, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -2199023255553, 31, x6, 440, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -4398046511105, 31, x6, 448, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -8796093022209, 31, x6, 456, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -17592186044417, 31, x6, 464, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -35184372088833, 31, x6, 472, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -70368744177665, 31, x6, 480, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -140737488355329, 31, x6, 488, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -281474976710657, 31, x6, 496, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -562949953421313, 31, x6, 504, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -1125899906842625, 31, x6, 512, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -2251799813685249, 31, x6, 520, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -4503599627370497, 31, x6, 528, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -9007199254740993, 31, x6, 536, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -18014398509481985, 31, x6, 544, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -36028797018963969, 31, x6, 552, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -72057594037927937, 31, x6, 560, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -144115188075855873, 31, x6, 568, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -288230376151711745, 31, x6, 576, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -576460752303423489, 31, x6, 584, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -1152921504606846977, 31, x6, 592, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -2305843009213693953, 31, x6, 600, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -4611686018427387905, 31, x6, 608, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -6148914691236517206, 31, x6, 616, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -3, 31, x6, 624, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -5, 31, x6, 632, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -9, 31, x6, 640, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -17, 31, x6, 648, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -33, 31, x6, 656, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -65, 31, x6, 664, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -129, 31, x6, 672, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -257, 31, x6, 680, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -513, 31, x6, 688, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -1025, 31, x6, 696, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -2049, 31, x6, 704, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -4097, 31, x6, 712, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -8193, 31, x6, 720, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -16385, 31, x6, 728, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -32769, 31, x6, 736, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -65537, 31, x6, 744, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -131073, 31, x6, 752, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -262145, 31, x6, 760, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -524289, 31, x6, 768, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -1048577, 31, x6, 776, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -2097153, 31, x6, 784, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -4194305, 31, x6, 792, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -8388609, 31, x6, 800, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -16777217, 31, x6, 808, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -33554433, 31, x6, 816, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -67108865, 31, x6, 824, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -134217729, 31, x6, 832, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -268435457, 31, x6, 840, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -536870913, 31, x6, 848, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -1073741825, 31, x6, 856, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, -2147483649, 31, x6, 864, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -4294967297, 31, x6, 872, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -8589934593, 31, x6, 880, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -17179869185, 31, x6, 888, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -34359738369, 31, x6, 896, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -68719476737, 31, x6, 904, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -137438953473, 31, x6, 912, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -274877906945, 31, x6, 920, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -549755813889, 31, x6, 928, x7)
TEST_IMM_OP( sraiw, x11, x10, 1, -1099511627777, 31, x6, 936, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 4096, 31, x6, 944, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 8192, 31, x6, 952, x7)
TEST_IMM_OP( sraiw, x11, x10, 0, 16384, 31, x6, 960, x7)
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
    .fill 121*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
