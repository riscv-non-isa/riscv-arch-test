
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",srlw)
la x1,signature_x1_1
TEST_RR_OP(srlw, x31, x30, x29, 1, -1, 31, x1, 0, x2)
TEST_RR_OP(srlw, x30, x31, x28, 0, 6148914691236517205, 31, x1, 8, x2)
TEST_RR_OP(srlw, x29, x28, x31, 4294967295, -1, 0, x1, 16, x2)
TEST_RR_OP(srlw, x28, x29, x30, 1431655765, 6148914691236517205, 0, x1, 24, x2)
TEST_RR_OP(srlw, x27, x26, x25, 0, 16, 16, x1, 32, x2)
TEST_RR_OP(srlw, x26, x27, x24, 0, -9223372036854775808, 31, x1, 40, x2)
TEST_RR_OP(srlw, x25, x24, x27, 0, 0, 31, x1, 48, x2)
TEST_RR_OP(srlw, x24, x25, x26, 1, 9223372036854775807, 31, x1, 56, x2)
TEST_RR_OP(srlw, x23, x22, x21, 0, 1, 31, x1, 64, x2)
TEST_RR_OP(srlw, x22, x23, x20, 2147483647, -1, 1, x1, 72, x2)
TEST_RR_OP(srlw, x21, x20, x23, 1073741823, -1, 2, x1, 80, x2)
TEST_RR_OP(srlw, x20, x21, x22, 268435455, -1, 4, x1, 88, x2)
TEST_RR_OP(srlw, x19, x18, x17, 16777215, -1, 8, x1, 96, x2)
TEST_RR_OP(srlw, x18, x19, x16, 3, -1, 30, x1, 104, x2)
TEST_RR_OP(srlw, x17, x16, x19, 7, -1, 29, x1, 112, x2)
TEST_RR_OP(srlw, x16, x17, x18, 31, -1, 27, x1, 120, x2)
TEST_RR_OP(srlw, x15, x14, x13, 511, -1, 23, x1, 128, x2)
TEST_RR_OP(srlw, x14, x15, x12, 131071, -1, 15, x1, 136, x2)
TEST_RR_OP(srlw, x13, x12, x15, 2047, -1, 21, x1, 144, x2)
TEST_RR_OP(srlw, x12, x13, x14, 4194303, -1, 10, x1, 152, x2)
TEST_RR_OP(srlw, x11, x10, x9, 0, 2, 31, x1, 160, x2)
TEST_RR_OP(srlw, x10, x11, x8, 0, 4, 31, x1, 168, x2)
TEST_RR_OP(srlw, x9, x8, x11, 0, 8, 31, x1, 176, x2)
TEST_RR_OP(srlw, x8, x9, x10, 0, 32, 31, x1, 184, x2)
TEST_RR_OP(srlw, x7, x6, x5, 0, 64, 31, x1, 192, x2)
TEST_RR_OP(srlw, x6, x7, x4, 0, 128, 31, x1, 200, x9)
la x8,signature_x8_0
TEST_RR_OP(srlw, x5, x4, x7, 0, 256, 31, x8, 0, x9)
TEST_RR_OP(srlw, x4, x5, x6, 0, 512, 31, x8, 8, x9)
TEST_RR_OP(srlw, x3, x2, x1, 0, 1024, 31, x8, 16, x9)
TEST_RR_OP(srlw, x2, x3, x0, 0, 2048, 31, x8, 24, x9)
TEST_RR_OP(srlw, x1, x0, x3, 0, 4096, 31, x8, 32, x9)
TEST_RR_OP(srlw, x0, x1, x2, 0, 8192, 31, x8, 40, x9)
TEST_RR_OP(srlw, x31, x30, x30, 0, 16384, 31, x8, 48, x9)
TEST_RR_OP(srlw, x31, x31, x30, 0, 32768, 31, x8, 56, x9)
TEST_RR_OP(srlw, x31, x30, x31, 0, 65536, 31, x8, 64, x9)
TEST_RR_OP(srlw, x31, x31, x31, 0, 131072, 31, x8, 72, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 262144, 31, x8, 80, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 524288, 31, x8, 88, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 1048576, 31, x8, 96, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 2097152, 31, x8, 104, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 4194304, 31, x8, 112, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 8388608, 31, x8, 120, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 16777216, 31, x8, 128, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 33554432, 31, x8, 136, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 67108864, 31, x8, 144, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 134217728, 31, x8, 152, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 268435456, 31, x8, 160, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 536870912, 31, x8, 168, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 1073741824, 31, x8, 176, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, 2147483648, 31, x8, 184, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 4294967296, 31, x8, 192, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 8589934592, 31, x8, 200, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 17179869184, 31, x8, 208, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 34359738368, 31, x8, 216, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 68719476736, 31, x8, 224, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 137438953472, 31, x8, 232, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 274877906944, 31, x8, 240, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 549755813888, 31, x8, 248, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 1099511627776, 31, x8, 256, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 2199023255552, 31, x8, 264, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 4398046511104, 31, x8, 272, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 8796093022208, 31, x8, 280, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 17592186044416, 31, x8, 288, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 35184372088832, 31, x8, 296, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 70368744177664, 31, x8, 304, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 140737488355328, 31, x8, 312, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 281474976710656, 31, x8, 320, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 562949953421312, 31, x8, 328, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 1125899906842624, 31, x8, 336, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 2251799813685248, 31, x8, 344, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 4503599627370496, 31, x8, 352, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 9007199254740992, 31, x8, 360, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 18014398509481984, 31, x8, 368, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 36028797018963968, 31, x8, 376, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 72057594037927936, 31, x8, 384, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 144115188075855872, 31, x8, 392, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 288230376151711744, 31, x8, 400, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 576460752303423488, 31, x8, 408, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 1152921504606846976, 31, x8, 416, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 2305843009213693952, 31, x8, 424, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 4611686018427387904, 31, x8, 432, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -2, 31, x8, 440, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -8796093022209, 31, x8, 448, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -17592186044417, 31, x8, 456, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -35184372088833, 31, x8, 464, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -70368744177665, 31, x8, 472, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -140737488355329, 31, x8, 480, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -281474976710657, 31, x8, 488, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -562949953421313, 31, x8, 496, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -1125899906842625, 31, x8, 504, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -2251799813685249, 31, x8, 512, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -4503599627370497, 31, x8, 520, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -9007199254740993, 31, x8, 528, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -18014398509481985, 31, x8, 536, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -36028797018963969, 31, x8, 544, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -72057594037927937, 31, x8, 552, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -144115188075855873, 31, x8, 560, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -288230376151711745, 31, x8, 568, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -576460752303423489, 31, x8, 576, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -1152921504606846977, 31, x8, 584, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -2305843009213693953, 31, x8, 592, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -4611686018427387905, 31, x8, 600, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -6148914691236517206, 31, x8, 608, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -3, 31, x8, 616, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -5, 31, x8, 624, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -9, 31, x8, 632, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -17, 31, x8, 640, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -33, 31, x8, 648, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -65, 31, x8, 656, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -129, 31, x8, 664, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -257, 31, x8, 672, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -513, 31, x8, 680, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -1025, 31, x8, 688, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -2049, 31, x8, 696, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -4097, 31, x8, 704, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -8193, 31, x8, 712, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -16385, 31, x8, 720, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -32769, 31, x8, 728, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -65537, 31, x8, 736, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -131073, 31, x8, 744, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -262145, 31, x8, 752, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -524289, 31, x8, 760, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -1048577, 31, x8, 768, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -2097153, 31, x8, 776, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -4194305, 31, x8, 784, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -8388609, 31, x8, 792, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -16777217, 31, x8, 800, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -33554433, 31, x8, 808, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -67108865, 31, x8, 816, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -134217729, 31, x8, 824, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -268435457, 31, x8, 832, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -536870913, 31, x8, 840, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -1073741825, 31, x8, 848, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, -2147483649, 31, x8, 856, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -4294967297, 31, x8, 864, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -8589934593, 31, x8, 872, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -17179869185, 31, x8, 880, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -34359738369, 31, x8, 888, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -68719476737, 31, x8, 896, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -137438953473, 31, x8, 904, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -274877906945, 31, x8, 912, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -549755813889, 31, x8, 920, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -1099511627777, 31, x8, 928, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -2199023255553, 31, x8, 936, x9)
TEST_RR_OP(srlw, x12, x10, x11, 1, -4398046511105, 31, x8, 944, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 2048, 31, x8, 952, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 4096, 31, x8, 960, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 8192, 31, x8, 968, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 16384, 31, x8, 976, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 32768, 31, x8, 984, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 65536, 31, x8, 992, x9)
TEST_RR_OP(srlw, x12, x10, x11, 0, 131072, 31, x8, 1000, x9)
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
    .fill 126*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
