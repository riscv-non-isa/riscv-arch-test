
#This assembly file tests the c.mv instruction of the RISC-V C extension for the cmv covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cmv)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs2 == rd and rs2 != 0, rd==x18, rs2==x18, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode: c.mv; op2:x18; dest:x18; op2val:0x8000000000000000
TEST_CMV_OP( c.mv, x18, x18, 0x0000000000000000, 0x8000000000000000, x2, 0, x3)

# rs2 != rd and rs2 != 0, rd==x5, rs2==x8, rs2_val == 0, 
# opcode: c.mv; op2:x8; dest:x5; op2val:0x0000000000000000
TEST_CMV_OP( c.mv, x5, x8, 0x0000000000000000, 0x0000000000000000, x2, 8, x3)

# rd==x21, rs2==x14, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807
# opcode: c.mv; op2:x14; dest:x21; op2val:0x7fffffffffffffff
TEST_CMV_OP( c.mv, x21, x14, 0x0000000000000000, 0x7fffffffffffffff, x2, 16, x3)

# rd==x0, rs2==x13, rs2_val == 1, 
# opcode: c.mv; op2:x13; dest:x0; op2val:0x0000000000000001
TEST_CMV_OP( c.mv, x0, x13, 0x0000000000000000, 0x0000000000000001, x2, 24, x3)

# rd==x31, rs2==x10, rs2_val == 2, 
# opcode: c.mv; op2:x10; dest:x31; op2val:0x0000000000000002
TEST_CMV_OP( c.mv, x31, x10, 0x0000000000000000, 0x0000000000000002, x2, 32, x3)

# rd==x11, rs2==x21, rs2_val == 4, 
# opcode: c.mv; op2:x21; dest:x11; op2val:0x0000000000000004
TEST_CMV_OP( c.mv, x11, x21, 0x0000000000000000, 0x0000000000000004, x2, 40, x3)

# rd==x15, rs2==x7, rs2_val == 8, 
# opcode: c.mv; op2:x7; dest:x15; op2val:0x0000000000000008
TEST_CMV_OP( c.mv, x15, x7, 0x0000000000000000, 0x0000000000000008, x2, 48, x3)

# rd==x16, rs2==x20, rs2_val == 16, 
# opcode: c.mv; op2:x20; dest:x16; op2val:0x0000000000000010
TEST_CMV_OP( c.mv, x16, x20, 0x0000000000000000, 0x0000000000000010, x2, 56, x3)

# rd==x19, rs2==x9, rs2_val == 32, 
# opcode: c.mv; op2:x9; dest:x19; op2val:0x0000000000000020
TEST_CMV_OP( c.mv, x19, x9, 0x0000000000000000, 0x0000000000000020, x2, 64, x3)

# rd==x10, rs2==x29, rs2_val == 64, 
# opcode: c.mv; op2:x29; dest:x10; op2val:0x0000000000000040
TEST_CMV_OP( c.mv, x10, x29, 0x0000000000000000, 0x0000000000000040, x2, 72, x3)

# rd==x6, rs2==x23, rs2_val == 128, 
# opcode: c.mv; op2:x23; dest:x6; op2val:0x0000000000000080
TEST_CMV_OP( c.mv, x6, x23, 0x0000000000000000, 0x0000000000000080, x2, 80, x3)

# rd==x30, rs2==x16, rs2_val == 256, 
# opcode: c.mv; op2:x16; dest:x30; op2val:0x0000000000000100
TEST_CMV_OP( c.mv, x30, x16, 0x0000000000000000, 0x0000000000000100, x2, 88, x3)

# rd==x9, rs2==x31, rs2_val == 512, 
# opcode: c.mv; op2:x31; dest:x9; op2val:0x0000000000000200
TEST_CMV_OP( c.mv, x9, x31, 0x0000000000000000, 0x0000000000000200, x2, 96, x3)

# rd==x14, rs2==x27, rs2_val == 1024, 
# opcode: c.mv; op2:x27; dest:x14; op2val:0x0000000000000400
TEST_CMV_OP( c.mv, x14, x27, 0x0000000000000000, 0x0000000000000400, x2, 104, x3)

# rd==x4, rs2==x28, rs2_val == 2048, 
# opcode: c.mv; op2:x28; dest:x4; op2val:0x0000000000000800
TEST_CMV_OP( c.mv, x4, x28, 0x0000000000000000, 0x0000000000000800, x2, 112, x3)

# rd==x27, rs2==x19, rs2_val == 4096, 
# opcode: c.mv; op2:x19; dest:x27; op2val:0x0000000000001000
TEST_CMV_OP( c.mv, x27, x19, 0x0000000000000000, 0x0000000000001000, x2, 120, x3)

# rd==x29, rs2==x15, rs2_val == 8192, 
# opcode: c.mv; op2:x15; dest:x29; op2val:0x0000000000002000
TEST_CMV_OP( c.mv, x29, x15, 0x0000000000000000, 0x0000000000002000, x2, 128, x3)

# rd==x12, rs2==x5, rs2_val == 16384, 
# opcode: c.mv; op2:x5; dest:x12; op2val:0x0000000000004000
TEST_CMV_OP( c.mv, x12, x5, 0x0000000000000000, 0x0000000000004000, x2, 136, x3)

# rd==x1, rs2==x22, rs2_val == 32768, 
# opcode: c.mv; op2:x22; dest:x1; op2val:0x0000000000008000
TEST_CMV_OP( c.mv, x1, x22, 0x0000000000000000, 0x0000000000008000, x2, 144, x3)

# rd==x26, rs2==x17, rs2_val == 65536, 
# opcode: c.mv; op2:x17; dest:x26; op2val:0x0000000000010000
TEST_CMV_OP( c.mv, x26, x17, 0x0000000000000000, 0x0000000000010000, x2, 152, x3)

# rd==x7, rs2==x24, rs2_val == 131072, 
# opcode: c.mv; op2:x24; dest:x7; op2val:0x0000000000020000
TEST_CMV_OP( c.mv, x7, x24, 0x0000000000000000, 0x0000000000020000, x2, 160, x9)
RVTEST_SIGBASE( x5,signature_x5_0)

# rd==x20, rs2==x30, rs2_val == 262144, 
# opcode: c.mv; op2:x30; dest:x20; op2val:0x0000000000040000
TEST_CMV_OP( c.mv, x20, x30, 0x0000000000000000, 0x0000000000040000, x5, 0, x9)

# rd==x22, rs2==x4, rs2_val == 524288, 
# opcode: c.mv; op2:x4; dest:x22; op2val:0x0000000000080000
TEST_CMV_OP( c.mv, x22, x4, 0x0000000000000000, 0x0000000000080000, x5, 8, x9)

# rd==x3, rs2==x6, rs2_val == 1048576, 
# opcode: c.mv; op2:x6; dest:x3; op2val:0x0000000000100000
TEST_CMV_OP( c.mv, x3, x6, 0x0000000000000000, 0x0000000000100000, x5, 16, x9)

# rd==x28, rs2==x3, rs2_val == 2097152, 
# opcode: c.mv; op2:x3; dest:x28; op2val:0x0000000000200000
TEST_CMV_OP( c.mv, x28, x3, 0x0000000000000000, 0x0000000000200000, x5, 24, x9)

# rd==x24, rs2==x2, rs2_val == 4194304, 
# opcode: c.mv; op2:x2; dest:x24; op2val:0x0000000000400000
TEST_CMV_OP( c.mv, x24, x2, 0x0000000000000000, 0x0000000000400000, x5, 32, x9)

# rd==x25, rs2==x1, rs2_val == 8388608, 
# opcode: c.mv; op2:x1; dest:x25; op2val:0x0000000000800000
TEST_CMV_OP( c.mv, x25, x1, 0x0000000000000000, 0x0000000000800000, x5, 40, x9)

# rd==x8, rs2==x25, rs2_val == 16777216, 
# opcode: c.mv; op2:x25; dest:x8; op2val:0x0000000001000000
TEST_CMV_OP( c.mv, x8, x25, 0x0000000000000000, 0x0000000001000000, x5, 48, x9)

# rd==x17, rs2==x12, rs2_val == 33554432, 
# opcode: c.mv; op2:x12; dest:x17; op2val:0x0000000002000000
TEST_CMV_OP( c.mv, x17, x12, 0x0000000000000000, 0x0000000002000000, x5, 56, x9)

# rd==x13, rs2==x26, rs2_val == 67108864, 
# opcode: c.mv; op2:x26; dest:x13; op2val:0x0000000004000000
TEST_CMV_OP( c.mv, x13, x26, 0x0000000000000000, 0x0000000004000000, x5, 64, x9)

# rd==x23, rs2==x11, rs2_val == 134217728, 
# opcode: c.mv; op2:x11; dest:x23; op2val:0x0000000008000000
TEST_CMV_OP( c.mv, x23, x11, 0x0000000000000000, 0x0000000008000000, x5, 72, x9)

# rd==x2, rs2_val == 268435456, 
# opcode: c.mv; op2:x10; dest:x2; op2val:0x0000000010000000
TEST_CMV_OP( c.mv, x2, x10, 0x0000000000000000, 0x0000000010000000, x5, 80, x9)

# rs2_val == 536870912, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000020000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000020000000, x5, 88, x9)

# rs2_val == 1073741824, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000040000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000040000000, x5, 96, x9)

# rs2_val == 2147483648, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000080000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000080000000, x5, 104, x9)

# rs2_val == 4294967296, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000100000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000100000000, x5, 112, x9)

# rs2_val == 8589934592, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000200000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000200000000, x5, 120, x9)

# rs2_val == 17179869184, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000400000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000400000000, x5, 128, x9)

# rs2_val == 34359738368, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000800000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000800000000, x5, 136, x9)

# rs2_val == 68719476736, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000001000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000001000000000, x5, 144, x9)

# rs2_val == 137438953472, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000002000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000002000000000, x5, 152, x9)

# rs2_val == 274877906944, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000004000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000004000000000, x5, 160, x9)

# rs2_val == 549755813888, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000008000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000008000000000, x5, 168, x9)

# rs2_val == 1099511627776, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000010000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000010000000000, x5, 176, x9)

# rs2_val == 2199023255552, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000020000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000020000000000, x5, 184, x9)

# rs2_val == 4398046511104, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000040000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000040000000000, x5, 192, x9)

# rs2_val == 8796093022208, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000080000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000080000000000, x5, 200, x9)

# rs2_val == 17592186044416, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000100000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000100000000000, x5, 208, x9)

# rs2_val == 35184372088832, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000200000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000200000000000, x5, 216, x9)

# rs2_val == 70368744177664, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000400000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000400000000000, x5, 224, x9)

# rs2_val == 140737488355328, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000800000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000800000000000, x5, 232, x9)

# rs2_val == 281474976710656, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0001000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0001000000000000, x5, 240, x9)

# rs2_val == 562949953421312, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0002000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0002000000000000, x5, 248, x9)

# rs2_val == 1125899906842624, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0004000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0004000000000000, x5, 256, x9)

# rs2_val == 2251799813685248, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0008000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0008000000000000, x5, 264, x9)

# rs2_val == 4503599627370496, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0010000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0010000000000000, x5, 272, x9)

# rs2_val == 9007199254740992, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0020000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0020000000000000, x5, 280, x9)

# rs2_val == 18014398509481984, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0040000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0040000000000000, x5, 288, x9)

# rs2_val == 36028797018963968, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0080000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0080000000000000, x5, 296, x9)

# rs2_val == 72057594037927936, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0100000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0100000000000000, x5, 304, x9)

# rs2_val == 144115188075855872, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0200000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0200000000000000, x5, 312, x9)

# rs2_val == 288230376151711744, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0400000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0400000000000000, x5, 320, x9)

# rs2_val == 576460752303423488, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0800000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0800000000000000, x5, 328, x9)

# rs2_val == 1152921504606846976, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x1000000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x1000000000000000, x5, 336, x9)

# rs2_val == 2305843009213693952, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x2000000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x2000000000000000, x5, 344, x9)

# rs2_val == 4611686018427387904, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x4000000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x4000000000000000, x5, 352, x9)

# rs2_val == -2, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffffe
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, x5, 360, x9)

# rs2_val == -3, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffffd
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, x5, 368, x9)

# rs2_val == -2305843009213693953, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xdfffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, x5, 376, x9)

# rs2_val == -4611686018427387905, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xbfffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, x5, 384, x9)

# rs2_val == 6148914691236517205, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x5555555555555555
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x5555555555555555, x5, 392, x9)

# rs2_val == -6148914691236517206, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xaaaaaaaaaaaaaaaa
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, x5, 400, x9)

# rs2_val == -5, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffffb
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, x5, 408, x9)

# rs2_val == -9, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffff7
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, x5, 416, x9)

# rs2_val == -17, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffffef
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffffef, x5, 424, x9)

# rs2_val == -33, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffffdf
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, x5, 432, x9)

# rs2_val == -65, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffffbf
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, x5, 440, x9)

# rs2_val == -129, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffff7f
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, x5, 448, x9)

# rs2_val == -257, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffeff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, x5, 456, x9)

# rs2_val == -513, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffdff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, x5, 464, x9)

# rs2_val == -1025, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffbff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, x5, 472, x9)

# rs2_val == -2049, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffff7ff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, x5, 480, x9)

# rs2_val == -4097, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffefff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffefff, x5, 488, x9)

# rs2_val == -8193, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffdfff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, x5, 496, x9)

# rs2_val == -16385, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffbfff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, x5, 504, x9)

# rs2_val == -32769, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffff7fff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, x5, 512, x9)

# rs2_val == -65537, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffeffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, x5, 520, x9)

# rs2_val == -131073, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffdffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, x5, 528, x9)

# rs2_val == -262145, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffbffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, x5, 536, x9)

# rs2_val == -524289, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffff7ffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, x5, 544, x9)

# rs2_val == -1048577, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffefffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffefffff, x5, 552, x9)

# rs2_val == -2097153, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffdfffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, x5, 560, x9)

# rs2_val == -4194305, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffbfffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, x5, 568, x9)

# rs2_val == -8388609, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffff7fffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, x5, 576, x9)

# rs2_val == -16777217, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffeffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, x5, 584, x9)

# rs2_val == -33554433, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffdffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, x5, 592, x9)

# rs2_val == -67108865, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffbffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, x5, 600, x9)

# rs2_val == -134217729, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffff7ffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, x5, 608, x9)

# rs2_val == -268435457, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffefffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffefffffff, x5, 616, x9)

# rs2_val == -536870913, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffdfffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, x5, 624, x9)

# rs2_val == -1073741825, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffbfffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, x5, 632, x9)

# rs2_val == -2147483649, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffff7fffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, x5, 640, x9)

# rs2_val == -4294967297, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffeffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, x5, 648, x9)

# rs2_val == -8589934593, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffdffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, x5, 656, x9)

# rs2_val == -17179869185, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffbffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, x5, 664, x9)

# rs2_val == -34359738369, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffff7ffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, x5, 672, x9)

# rs2_val == -68719476737, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffefffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffefffffffff, x5, 680, x9)

# rs2_val == -137438953473, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffdfffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, x5, 688, x9)

# rs2_val == -274877906945, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffbfffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, x5, 696, x9)

# rs2_val == -549755813889, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffff7fffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, x5, 704, x9)

# rs2_val == -1099511627777, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffeffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, x5, 712, x9)

# rs2_val == -2199023255553, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffdffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, x5, 720, x9)

# rs2_val == -4398046511105, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffbffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, x5, 728, x9)

# rs2_val == -8796093022209, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffff7ffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, x5, 736, x9)

# rs2_val == -17592186044417, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffefffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffefffffffffff, x5, 744, x9)

# rs2_val == -35184372088833, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffdfffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, x5, 752, x9)

# rs2_val == -70368744177665, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffbfffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, x5, 760, x9)

# rs2_val == -140737488355329, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffff7fffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, x5, 768, x9)

# rs2_val == -281474976710657, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffeffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, x5, 776, x9)

# rs2_val == -562949953421313, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffdffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, x5, 784, x9)

# rs2_val == -1125899906842625, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffbffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, x5, 792, x9)

# rs2_val == -2251799813685249, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfff7ffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, x5, 800, x9)

# rs2_val == -4503599627370497, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffefffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffefffffffffffff, x5, 808, x9)

# rs2_val == -9007199254740993, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffdfffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, x5, 816, x9)

# rs2_val == -18014398509481985, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xffbfffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, x5, 824, x9)

# rs2_val == -36028797018963969, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xff7fffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, x5, 832, x9)

# rs2_val == -72057594037927937, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfeffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, x5, 840, x9)

# rs2_val == -144115188075855873, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfdffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, x5, 848, x9)

# rs2_val == -288230376151711745, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xfbffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, x5, 856, x9)

# rs2_val == -576460752303423489, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xf7ffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, x5, 864, x9)

# rs2_val == -1152921504606846977, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0xefffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xefffffffffffffff, x5, 872, x9)

# rs2_val == 1, 
# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000000000001
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000000000001, x5, 880, x9)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x2_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 111*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
