
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)
la x1,signature_x1_1
TEST_IMM_OP( srai, x31, x30, 1, -1, 63, x1, 0, x2)
TEST_IMM_OP( srai, x30, x31, 0, 6148914691236517205, 63, x1, 8, x2)
TEST_IMM_OP( srai, x29, x28, 4294967295, -1, 0, x1, 16, x2)
TEST_IMM_OP( srai, x28, x29, 1431655765, 6148914691236517205, 0, x1, 24, x2)
TEST_IMM_OP( srai, x27, x26, 32, 32, 32, x1, 32, x2)
TEST_IMM_OP( srai, x26, x27, 0, -9223372036854775808, 63, x1, 40, x2)
TEST_IMM_OP( srai, x25, x24, 0, 0, 63, x1, 48, x2)
TEST_IMM_OP( srai, x24, x25, 1, 9223372036854775807, 63, x1, 56, x2)
TEST_IMM_OP( srai, x23, x22, 0, 1, 63, x1, 64, x2)
TEST_IMM_OP( srai, x22, x23, 2147483647, -1, 1, x1, 72, x2)
TEST_IMM_OP( srai, x21, x20, 1073741823, -1, 2, x1, 80, x2)
TEST_IMM_OP( srai, x20, x21, 268435455, -1, 4, x1, 88, x2)
TEST_IMM_OP( srai, x19, x18, 16777215, -1, 8, x1, 96, x2)
TEST_IMM_OP( srai, x18, x19, 65535, -1, 16, x1, 104, x2)
TEST_IMM_OP( srai, x17, x16, 3, -1, 62, x1, 112, x2)
TEST_IMM_OP( srai, x16, x17, 7, -1, 61, x1, 120, x2)
TEST_IMM_OP( srai, x15, x14, 31, -1, 59, x1, 128, x2)
TEST_IMM_OP( srai, x14, x15, 511, -1, 55, x1, 136, x2)
TEST_IMM_OP( srai, x13, x12, 131071, -1, 47, x1, 144, x2)
TEST_IMM_OP( srai, x12, x13, 1, -1, 31, x1, 152, x2)
TEST_IMM_OP( srai, x11, x10, 2047, -1, 21, x1, 160, x2)
TEST_IMM_OP( srai, x10, x11, 4194303, -1, 42, x1, 168, x2)
TEST_IMM_OP( srai, x9, x8, 0, 2, 63, x1, 176, x2)
TEST_IMM_OP( srai, x8, x9, 0, 4, 63, x1, 184, x2)
TEST_IMM_OP( srai, x7, x6, 0, 8, 63, x1, 192, x2)
TEST_IMM_OP( srai, x6, x7, 0, 16, 63, x1, 200, x2)
TEST_IMM_OP( srai, x5, x4, 0, 64, 63, x1, 208, x2)
la x6,signature_x6_0
TEST_IMM_OP( srai, x4, x5, 0, 128, 63, x6, 0, x7)
TEST_IMM_OP( srai, x3, x2, 0, 256, 63, x6, 8, x7)
TEST_IMM_OP( srai, x2, x3, 0, 512, 63, x6, 16, x7)
TEST_IMM_OP( srai, x1, x0, 0, 1024, 63, x6, 24, x7)
TEST_IMM_OP( srai, x0, x1, 0, 2048, 63, x6, 32, x7)
TEST_IMM_OP( srai, x31, x31, 0, 4096, 63, x6, 40, x7)
TEST_IMM_OP( srai, x11, x10, 0, 8192, 63, x6, 48, x7)
TEST_IMM_OP( srai, x11, x10, 0, 16384, 63, x6, 56, x7)
TEST_IMM_OP( srai, x11, x10, 0, 32768, 63, x6, 64, x7)
TEST_IMM_OP( srai, x11, x10, 0, 65536, 63, x6, 72, x7)
TEST_IMM_OP( srai, x11, x10, 0, 131072, 63, x6, 80, x7)
TEST_IMM_OP( srai, x11, x10, 0, 262144, 63, x6, 88, x7)
TEST_IMM_OP( srai, x11, x10, 0, 524288, 63, x6, 96, x7)
TEST_IMM_OP( srai, x11, x10, 0, 1048576, 63, x6, 104, x7)
TEST_IMM_OP( srai, x11, x10, 0, 2097152, 63, x6, 112, x7)
TEST_IMM_OP( srai, x11, x10, 0, 4194304, 63, x6, 120, x7)
TEST_IMM_OP( srai, x11, x10, 0, 8388608, 63, x6, 128, x7)
TEST_IMM_OP( srai, x11, x10, 0, 16777216, 63, x6, 136, x7)
TEST_IMM_OP( srai, x11, x10, 0, 33554432, 63, x6, 144, x7)
TEST_IMM_OP( srai, x11, x10, 0, 67108864, 63, x6, 152, x7)
TEST_IMM_OP( srai, x11, x10, 0, 134217728, 63, x6, 160, x7)
TEST_IMM_OP( srai, x11, x10, 0, 268435456, 63, x6, 168, x7)
TEST_IMM_OP( srai, x11, x10, 0, 536870912, 63, x6, 176, x7)
TEST_IMM_OP( srai, x11, x10, 0, 1073741824, 63, x6, 184, x7)
TEST_IMM_OP( srai, x11, x10, 1, 2147483648, 63, x6, 192, x7)
TEST_IMM_OP( srai, x11, x10, 0, 4294967296, 63, x6, 200, x7)
TEST_IMM_OP( srai, x11, x10, 0, 8589934592, 63, x6, 208, x7)
TEST_IMM_OP( srai, x11, x10, 0, 17179869184, 63, x6, 216, x7)
TEST_IMM_OP( srai, x11, x10, 0, 34359738368, 63, x6, 224, x7)
TEST_IMM_OP( srai, x11, x10, 0, 68719476736, 63, x6, 232, x7)
TEST_IMM_OP( srai, x11, x10, 0, 137438953472, 63, x6, 240, x7)
TEST_IMM_OP( srai, x11, x10, 0, 274877906944, 63, x6, 248, x7)
TEST_IMM_OP( srai, x11, x10, 0, 549755813888, 63, x6, 256, x7)
TEST_IMM_OP( srai, x11, x10, 0, 1099511627776, 63, x6, 264, x7)
TEST_IMM_OP( srai, x11, x10, 0, 2199023255552, 63, x6, 272, x7)
TEST_IMM_OP( srai, x11, x10, 0, 4398046511104, 63, x6, 280, x7)
TEST_IMM_OP( srai, x11, x10, 0, 8796093022208, 63, x6, 288, x7)
TEST_IMM_OP( srai, x11, x10, 0, 17592186044416, 63, x6, 296, x7)
TEST_IMM_OP( srai, x11, x10, 0, 35184372088832, 63, x6, 304, x7)
TEST_IMM_OP( srai, x11, x10, 0, 70368744177664, 63, x6, 312, x7)
TEST_IMM_OP( srai, x11, x10, 0, 140737488355328, 63, x6, 320, x7)
TEST_IMM_OP( srai, x11, x10, 0, 281474976710656, 63, x6, 328, x7)
TEST_IMM_OP( srai, x11, x10, 0, 562949953421312, 63, x6, 336, x7)
TEST_IMM_OP( srai, x11, x10, 0, 1125899906842624, 63, x6, 344, x7)
TEST_IMM_OP( srai, x11, x10, 0, 2251799813685248, 63, x6, 352, x7)
TEST_IMM_OP( srai, x11, x10, 0, 4503599627370496, 63, x6, 360, x7)
TEST_IMM_OP( srai, x11, x10, 0, 9007199254740992, 63, x6, 368, x7)
TEST_IMM_OP( srai, x11, x10, 0, 18014398509481984, 63, x6, 376, x7)
TEST_IMM_OP( srai, x11, x10, 0, 36028797018963968, 63, x6, 384, x7)
TEST_IMM_OP( srai, x11, x10, 0, 72057594037927936, 63, x6, 392, x7)
TEST_IMM_OP( srai, x11, x10, 0, 144115188075855872, 63, x6, 400, x7)
TEST_IMM_OP( srai, x11, x10, 0, 288230376151711744, 63, x6, 408, x7)
TEST_IMM_OP( srai, x11, x10, 0, 576460752303423488, 63, x6, 416, x7)
TEST_IMM_OP( srai, x11, x10, 0, 1152921504606846976, 63, x6, 424, x7)
TEST_IMM_OP( srai, x11, x10, 0, 2305843009213693952, 63, x6, 432, x7)
TEST_IMM_OP( srai, x11, x10, 0, 4611686018427387904, 63, x6, 440, x7)
TEST_IMM_OP( srai, x11, x10, 1, -2, 63, x6, 448, x7)
TEST_IMM_OP( srai, x11, x10, 1, -549755813889, 63, x6, 456, x7)
TEST_IMM_OP( srai, x11, x10, 1, -1099511627777, 63, x6, 464, x7)
TEST_IMM_OP( srai, x11, x10, 1, -2199023255553, 63, x6, 472, x7)
TEST_IMM_OP( srai, x11, x10, 1, -4398046511105, 63, x6, 480, x7)
TEST_IMM_OP( srai, x11, x10, 1, -8796093022209, 63, x6, 488, x7)
TEST_IMM_OP( srai, x11, x10, 1, -17592186044417, 63, x6, 496, x7)
TEST_IMM_OP( srai, x11, x10, 1, -35184372088833, 63, x6, 504, x7)
TEST_IMM_OP( srai, x11, x10, 1, -70368744177665, 63, x6, 512, x7)
TEST_IMM_OP( srai, x11, x10, 1, -140737488355329, 63, x6, 520, x7)
TEST_IMM_OP( srai, x11, x10, 1, -281474976710657, 63, x6, 528, x7)
TEST_IMM_OP( srai, x11, x10, 1, -562949953421313, 63, x6, 536, x7)
TEST_IMM_OP( srai, x11, x10, 1, -1125899906842625, 63, x6, 544, x7)
TEST_IMM_OP( srai, x11, x10, 1, -2251799813685249, 63, x6, 552, x7)
TEST_IMM_OP( srai, x11, x10, 1, -4503599627370497, 63, x6, 560, x7)
TEST_IMM_OP( srai, x11, x10, 1, -9007199254740993, 63, x6, 568, x7)
TEST_IMM_OP( srai, x11, x10, 1, -18014398509481985, 63, x6, 576, x7)
TEST_IMM_OP( srai, x11, x10, 1, -36028797018963969, 63, x6, 584, x7)
TEST_IMM_OP( srai, x11, x10, 1, -72057594037927937, 63, x6, 592, x7)
TEST_IMM_OP( srai, x11, x10, 1, -144115188075855873, 63, x6, 600, x7)
TEST_IMM_OP( srai, x11, x10, 1, -288230376151711745, 63, x6, 608, x7)
TEST_IMM_OP( srai, x11, x10, 1, -576460752303423489, 63, x6, 616, x7)
TEST_IMM_OP( srai, x11, x10, 1, -1152921504606846977, 63, x6, 624, x7)
TEST_IMM_OP( srai, x11, x10, 1, -2305843009213693953, 63, x6, 632, x7)
TEST_IMM_OP( srai, x11, x10, 1, -4611686018427387905, 63, x6, 640, x7)
TEST_IMM_OP( srai, x11, x10, 1, -6148914691236517206, 63, x6, 648, x7)
TEST_IMM_OP( srai, x11, x10, 1, -3, 63, x6, 656, x7)
TEST_IMM_OP( srai, x11, x10, 1, -5, 63, x6, 664, x7)
TEST_IMM_OP( srai, x11, x10, 1, -9, 63, x6, 672, x7)
TEST_IMM_OP( srai, x11, x10, 1, -17, 63, x6, 680, x7)
TEST_IMM_OP( srai, x11, x10, 1, -33, 63, x6, 688, x7)
TEST_IMM_OP( srai, x11, x10, 1, -65, 63, x6, 696, x7)
TEST_IMM_OP( srai, x11, x10, 1, -129, 63, x6, 704, x7)
TEST_IMM_OP( srai, x11, x10, 1, -257, 63, x6, 712, x7)
TEST_IMM_OP( srai, x11, x10, 1, -513, 63, x6, 720, x7)
TEST_IMM_OP( srai, x11, x10, 1, -1025, 63, x6, 728, x7)
TEST_IMM_OP( srai, x11, x10, 1, -2049, 63, x6, 736, x7)
TEST_IMM_OP( srai, x11, x10, 1, -4097, 63, x6, 744, x7)
TEST_IMM_OP( srai, x11, x10, 1, -8193, 63, x6, 752, x7)
TEST_IMM_OP( srai, x11, x10, 1, -16385, 63, x6, 760, x7)
TEST_IMM_OP( srai, x11, x10, 1, -32769, 63, x6, 768, x7)
TEST_IMM_OP( srai, x11, x10, 1, -65537, 63, x6, 776, x7)
TEST_IMM_OP( srai, x11, x10, 1, -131073, 63, x6, 784, x7)
TEST_IMM_OP( srai, x11, x10, 1, -262145, 63, x6, 792, x7)
TEST_IMM_OP( srai, x11, x10, 1, -524289, 63, x6, 800, x7)
TEST_IMM_OP( srai, x11, x10, 1, -1048577, 63, x6, 808, x7)
TEST_IMM_OP( srai, x11, x10, 1, -2097153, 63, x6, 816, x7)
TEST_IMM_OP( srai, x11, x10, 1, -4194305, 63, x6, 824, x7)
TEST_IMM_OP( srai, x11, x10, 1, -8388609, 63, x6, 832, x7)
TEST_IMM_OP( srai, x11, x10, 1, -16777217, 63, x6, 840, x7)
TEST_IMM_OP( srai, x11, x10, 1, -33554433, 63, x6, 848, x7)
TEST_IMM_OP( srai, x11, x10, 1, -67108865, 63, x6, 856, x7)
TEST_IMM_OP( srai, x11, x10, 1, -134217729, 63, x6, 864, x7)
TEST_IMM_OP( srai, x11, x10, 1, -268435457, 63, x6, 872, x7)
TEST_IMM_OP( srai, x11, x10, 1, -536870913, 63, x6, 880, x7)
TEST_IMM_OP( srai, x11, x10, 1, -1073741825, 63, x6, 888, x7)
TEST_IMM_OP( srai, x11, x10, 0, -2147483649, 63, x6, 896, x7)
TEST_IMM_OP( srai, x11, x10, 1, -4294967297, 63, x6, 904, x7)
TEST_IMM_OP( srai, x11, x10, 1, -8589934593, 63, x6, 912, x7)
TEST_IMM_OP( srai, x11, x10, 1, -17179869185, 63, x6, 920, x7)
TEST_IMM_OP( srai, x11, x10, 1, -34359738369, 63, x6, 928, x7)
TEST_IMM_OP( srai, x11, x10, 1, -68719476737, 63, x6, 936, x7)
TEST_IMM_OP( srai, x11, x10, 1, -137438953473, 63, x6, 944, x7)
TEST_IMM_OP( srai, x11, x10, 1, -274877906945, 63, x6, 952, x7)
TEST_IMM_OP( srai, x11, x10, 0, 1024, 63, x6, 960, x7)
TEST_IMM_OP( srai, x11, x10, 0, 2048, 63, x6, 968, x7)
TEST_IMM_OP( srai, x11, x10, 0, 4096, 63, x6, 976, x7)
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
    .fill 123*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
