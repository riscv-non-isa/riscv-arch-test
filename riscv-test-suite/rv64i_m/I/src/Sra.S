
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sra)
la x1,signature_x1_1
TEST_RR_OP(sra, x31, x30, x29, 1, -1, 63, x1, 0, x2)
TEST_RR_OP(sra, x30, x31, x28, 0, 6148914691236517205, 63, x1, 8, x2)
TEST_RR_OP(sra, x29, x28, x31, 4294967295, -1, 0, x1, 16, x2)
TEST_RR_OP(sra, x28, x29, x30, 1431655765, 6148914691236517205, 0, x1, 24, x2)
TEST_RR_OP(sra, x27, x26, x25, 32, 32, 32, x1, 32, x2)
TEST_RR_OP(sra, x26, x27, x24, 0, -9223372036854775808, 63, x1, 40, x2)
TEST_RR_OP(sra, x25, x24, x27, 0, 0, 63, x1, 48, x2)
TEST_RR_OP(sra, x24, x25, x26, 1, 9223372036854775807, 63, x1, 56, x2)
TEST_RR_OP(sra, x23, x22, x21, 0, 1, 63, x1, 64, x2)
TEST_RR_OP(sra, x22, x23, x20, 2147483647, -1, 1, x1, 72, x2)
TEST_RR_OP(sra, x21, x20, x23, 1073741823, -1, 2, x1, 80, x2)
TEST_RR_OP(sra, x20, x21, x22, 268435455, -1, 4, x1, 88, x2)
TEST_RR_OP(sra, x19, x18, x17, 16777215, -1, 8, x1, 96, x2)
TEST_RR_OP(sra, x18, x19, x16, 65535, -1, 16, x1, 104, x2)
TEST_RR_OP(sra, x17, x16, x19, 3, -1, 62, x1, 112, x2)
TEST_RR_OP(sra, x16, x17, x18, 7, -1, 61, x1, 120, x2)
TEST_RR_OP(sra, x15, x14, x13, 31, -1, 59, x1, 128, x2)
TEST_RR_OP(sra, x14, x15, x12, 511, -1, 55, x1, 136, x2)
TEST_RR_OP(sra, x13, x12, x15, 131071, -1, 47, x1, 144, x2)
TEST_RR_OP(sra, x12, x13, x14, 1, -1, 31, x1, 152, x2)
TEST_RR_OP(sra, x11, x10, x9, 2047, -1, 21, x1, 160, x2)
TEST_RR_OP(sra, x10, x11, x8, 4194303, -1, 42, x1, 168, x2)
TEST_RR_OP(sra, x9, x8, x11, 0, 2, 63, x1, 176, x2)
TEST_RR_OP(sra, x8, x9, x10, 0, 4, 63, x1, 184, x2)
TEST_RR_OP(sra, x7, x6, x5, 0, 8, 63, x1, 192, x2)
TEST_RR_OP(sra, x6, x7, x4, 0, 16, 63, x1, 200, x9)
la x8,signature_x8_0
TEST_RR_OP(sra, x5, x4, x7, 0, 64, 63, x8, 0, x9)
TEST_RR_OP(sra, x4, x5, x6, 0, 128, 63, x8, 8, x9)
TEST_RR_OP(sra, x3, x2, x1, 0, 256, 63, x8, 16, x9)
TEST_RR_OP(sra, x2, x3, x0, 0, 512, 63, x8, 24, x9)
TEST_RR_OP(sra, x1, x0, x3, 0, 1024, 63, x8, 32, x9)
TEST_RR_OP(sra, x0, x1, x2, 0, 2048, 63, x8, 40, x9)
TEST_RR_OP(sra, x31, x30, x30, 0, 4096, 63, x8, 48, x9)
TEST_RR_OP(sra, x31, x31, x30, 0, 8192, 63, x8, 56, x9)
TEST_RR_OP(sra, x31, x30, x31, 0, 16384, 63, x8, 64, x9)
TEST_RR_OP(sra, x31, x31, x31, 0, 32768, 63, x8, 72, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 65536, 63, x8, 80, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 131072, 63, x8, 88, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 262144, 63, x8, 96, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 524288, 63, x8, 104, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 1048576, 63, x8, 112, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 2097152, 63, x8, 120, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 4194304, 63, x8, 128, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 8388608, 63, x8, 136, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 16777216, 63, x8, 144, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 33554432, 63, x8, 152, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 67108864, 63, x8, 160, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 134217728, 63, x8, 168, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 268435456, 63, x8, 176, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 536870912, 63, x8, 184, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 1073741824, 63, x8, 192, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, 2147483648, 63, x8, 200, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 4294967296, 63, x8, 208, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 8589934592, 63, x8, 216, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 17179869184, 63, x8, 224, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 34359738368, 63, x8, 232, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 68719476736, 63, x8, 240, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 137438953472, 63, x8, 248, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 274877906944, 63, x8, 256, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 549755813888, 63, x8, 264, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 1099511627776, 63, x8, 272, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 2199023255552, 63, x8, 280, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 4398046511104, 63, x8, 288, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 8796093022208, 63, x8, 296, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 17592186044416, 63, x8, 304, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 35184372088832, 63, x8, 312, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 70368744177664, 63, x8, 320, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 140737488355328, 63, x8, 328, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 281474976710656, 63, x8, 336, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 562949953421312, 63, x8, 344, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 1125899906842624, 63, x8, 352, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 2251799813685248, 63, x8, 360, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 4503599627370496, 63, x8, 368, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 9007199254740992, 63, x8, 376, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 18014398509481984, 63, x8, 384, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 36028797018963968, 63, x8, 392, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 72057594037927936, 63, x8, 400, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 144115188075855872, 63, x8, 408, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 288230376151711744, 63, x8, 416, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 576460752303423488, 63, x8, 424, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 1152921504606846976, 63, x8, 432, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 2305843009213693952, 63, x8, 440, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 4611686018427387904, 63, x8, 448, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -2, 63, x8, 456, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -2199023255553, 63, x8, 464, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -4398046511105, 63, x8, 472, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -8796093022209, 63, x8, 480, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -17592186044417, 63, x8, 488, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -35184372088833, 63, x8, 496, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -70368744177665, 63, x8, 504, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -140737488355329, 63, x8, 512, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -281474976710657, 63, x8, 520, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -562949953421313, 63, x8, 528, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -1125899906842625, 63, x8, 536, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -2251799813685249, 63, x8, 544, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -4503599627370497, 63, x8, 552, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -9007199254740993, 63, x8, 560, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -18014398509481985, 63, x8, 568, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -36028797018963969, 63, x8, 576, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -72057594037927937, 63, x8, 584, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -144115188075855873, 63, x8, 592, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -288230376151711745, 63, x8, 600, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -576460752303423489, 63, x8, 608, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -1152921504606846977, 63, x8, 616, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -2305843009213693953, 63, x8, 624, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -4611686018427387905, 63, x8, 632, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -6148914691236517206, 63, x8, 640, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -3, 63, x8, 648, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -5, 63, x8, 656, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -9, 63, x8, 664, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -17, 63, x8, 672, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -33, 63, x8, 680, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -65, 63, x8, 688, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -129, 63, x8, 696, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -257, 63, x8, 704, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -513, 63, x8, 712, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -1025, 63, x8, 720, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -2049, 63, x8, 728, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -4097, 63, x8, 736, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -8193, 63, x8, 744, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -16385, 63, x8, 752, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -32769, 63, x8, 760, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -65537, 63, x8, 768, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -131073, 63, x8, 776, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -262145, 63, x8, 784, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -524289, 63, x8, 792, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -1048577, 63, x8, 800, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -2097153, 63, x8, 808, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -4194305, 63, x8, 816, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -8388609, 63, x8, 824, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -16777217, 63, x8, 832, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -33554433, 63, x8, 840, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -67108865, 63, x8, 848, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -134217729, 63, x8, 856, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -268435457, 63, x8, 864, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -536870913, 63, x8, 872, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -1073741825, 63, x8, 880, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, -2147483649, 63, x8, 888, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -4294967297, 63, x8, 896, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -8589934593, 63, x8, 904, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -17179869185, 63, x8, 912, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -34359738369, 63, x8, 920, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -68719476737, 63, x8, 928, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -137438953473, 63, x8, 936, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -274877906945, 63, x8, 944, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -549755813889, 63, x8, 952, x9)
TEST_RR_OP(sra, x12, x10, x11, 1, -1099511627777, 63, x8, 960, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 512, 63, x8, 968, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 1024, 63, x8, 976, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 2048, 63, x8, 984, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 4096, 63, x8, 992, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 8192, 63, x8, 1000, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 16384, 63, x8, 1008, x9)
TEST_RR_OP(sra, x12, x10, x11, 0, 32768, 63, x8, 1016, x9)
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
    .fill 128*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
