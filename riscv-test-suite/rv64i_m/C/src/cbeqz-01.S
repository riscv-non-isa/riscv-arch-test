
#This assembly file tests the c.beqz instruction of the RISC-V C extension for the cbeqz covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cbeqz)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1==x11, rs1_val > 0 and imm_val > 0, rs1_val == 16
# opcode:c.beqz; op1:x11; op1val:0x0000000000000010; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x11, 0x0000000000000010, 14, 3f, x1, 0)

# rs1==x14, rs1_val < 0 and imm_val > 0, rs1_val == -67108865
# opcode:c.beqz; op1:x14; op1val:0xfffffffffbffffff; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x14, 0xfffffffffbffffff, 18, 3f, x1, 8)

# rs1==x15, rs1_val == 0 and imm_val > 0, rs1_val == 0
# opcode:c.beqz; op1:x15; op1val:0x0000000000000000; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x15, 0x0000000000000000, 4, 3f, x1, 16)

# rs1==x9, rs1_val > 0 and imm_val < 0, rs1_val == 35184372088832
# opcode:c.beqz; op1:x9; op1val:0x0000200000000000; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x9, 0x0000200000000000, 8, 1b, x1, 24)

# rs1==x13, rs1_val < 0 and imm_val < 0, rs1_val == -129
# opcode:c.beqz; op1:x13; op1val:0xffffffffffffff7f; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x13, 0xffffffffffffff7f, 16, 1b, x1, 32)

# rs1==x10, rs1_val == 0 and imm_val < 0, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000000; immval:172
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000000, 172, 1b, x1, 40)

# rs1==x12, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808
# opcode:c.beqz; op1:x12; op1val:0x8000000000000000; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x12, 0x8000000000000000, 32, 3f, x1, 48)

# rs1==x8, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807
# opcode:c.beqz; op1:x8; op1val:0x7fffffffffffffff; immval:172
TEST_CBRANCH_OP(c.beqz, x2, x8, 0x7fffffffffffffff, 172, 1b, x1, 56)

# rs1_val == 1, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000001; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000001, 8, 3f, x1, 64)

# rs1_val == 2, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000002; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000002, 128, 1b, x1, 72)

# rs1_val == 4, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000004; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000004, 18, 3f, x1, 80)

# rs1_val == 8, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000008; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000008, 32, 3f, x1, 88)

# rs1_val == 32, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000020; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000020, 10, 3f, x1, 96)

# rs1_val == 64, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000040; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000040, 66, 1b, x1, 104)

# rs1_val == 128, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000080; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000080, 66, 1b, x1, 112)

# rs1_val == 256, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000100; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000100, 66, 1b, x1, 120)

# rs1_val == 512, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000200; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000200, 10, 3f, x1, 128)

# rs1_val == 1024, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000400; immval:34
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000400, 34, 1b, x1, 136)

# rs1_val == 2048, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000000800; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000000800, 12, 1b, x1, 144)

# rs1_val == 4096, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000001000; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000001000, 16, 1b, x1, 152)

# rs1_val == 8192, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000002000; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000002000, 4, 3f, x1, 160)

# rs1_val == 16384, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000004000; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000004000, 170, 3f, x1, 168)

# rs1_val == 32768, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000008000; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000008000, 170, 3f, x1, 176)

# rs1_val == 65536, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000010000; immval:34
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000010000, 34, 1b, x1, 184)

# rs1_val == 131072, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000020000; immval:34
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000020000, 34, 1b, x1, 192)

# rs1_val == 262144, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000040000; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000040000, 8, 3f, x1, 200)

# rs1_val == 524288, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000080000; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000080000, 6, 3f, x1, 208)

# rs1_val == 1048576, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000100000; immval:130
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000100000, 130, 1b, x1, 216)

# rs1_val == 2097152, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000200000; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000200000, 4, 1b, x1, 224)

# rs1_val == 4194304, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000400000; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000400000, 32, 3f, x1, 232)

# rs1_val == 8388608, 
# opcode:c.beqz; op1:x10; op1val:0x0000000000800000; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000000800000, 10, 1b, x1, 240)

# rs1_val == 16777216, 
# opcode:c.beqz; op1:x10; op1val:0x0000000001000000; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000001000000, 12, 3f, x1, 248)

# rs1_val == 33554432, 
# opcode:c.beqz; op1:x10; op1val:0x0000000002000000; immval:130
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000002000000, 130, 1b, x1, 256)

# rs1_val == 67108864, 
# opcode:c.beqz; op1:x10; op1val:0x0000000004000000; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000004000000, 10, 1b, x1, 264)

# rs1_val == 134217728, 
# opcode:c.beqz; op1:x10; op1val:0x0000000008000000; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000008000000, 12, 1b, x1, 272)

# rs1_val == 268435456, 
# opcode:c.beqz; op1:x10; op1val:0x0000000010000000; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000010000000, 10, 1b, x1, 280)

# rs1_val == 536870912, 
# opcode:c.beqz; op1:x10; op1val:0x0000000020000000; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000020000000, 66, 1b, x1, 288)

# rs1_val == 1073741824, 
# opcode:c.beqz; op1:x10; op1val:0x0000000040000000; immval:130
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000040000000, 130, 1b, x1, 296)

# rs1_val == 2147483648, 
# opcode:c.beqz; op1:x10; op1val:0x0000000080000000; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000080000000, 4, 1b, x1, 304)

# rs1_val == 4294967296, 
# opcode:c.beqz; op1:x10; op1val:0x0000000100000000; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000100000000, 10, 1b, x1, 312)

# rs1_val == 8589934592, 
# opcode:c.beqz; op1:x10; op1val:0x0000000200000000; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000200000000, 6, 3f, x1, 320)

# rs1_val == 17179869184, 
# opcode:c.beqz; op1:x10; op1val:0x0000000400000000; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000400000000, 12, 3f, x1, 328)

# rs1_val == 34359738368, 
# opcode:c.beqz; op1:x10; op1val:0x0000000800000000; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000000800000000, 14, 1b, x1, 336)

# rs1_val == 68719476736, 
# opcode:c.beqz; op1:x10; op1val:0x0000001000000000; immval:130
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000001000000000, 130, 1b, x1, 344)

# rs1_val == 137438953472, 
# opcode:c.beqz; op1:x10; op1val:0x0000002000000000; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000002000000000, 6, 1b, x1, 352)

# rs1_val == 274877906944, 
# opcode:c.beqz; op1:x10; op1val:0x0000004000000000; immval:172
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000004000000000, 172, 1b, x1, 360)

# rs1_val == 549755813888, 
# opcode:c.beqz; op1:x10; op1val:0x0000008000000000; immval:130
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000008000000000, 130, 1b, x1, 368)

# rs1_val == 1099511627776, 
# opcode:c.beqz; op1:x10; op1val:0x0000010000000000; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000010000000000, 14, 1b, x1, 376)

# rs1_val == 2199023255552, 
# opcode:c.beqz; op1:x10; op1val:0x0000020000000000; immval:20
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000020000000000, 20, 1b, x1, 384)

# rs1_val == 4398046511104, 
# opcode:c.beqz; op1:x10; op1val:0x0000040000000000; immval:20
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000040000000000, 20, 1b, x1, 392)

# rs1_val == 8796093022208, 
# opcode:c.beqz; op1:x10; op1val:0x0000080000000000; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000080000000000, 10, 3f, x1, 400)

# rs1_val == 17592186044416, 
# opcode:c.beqz; op1:x10; op1val:0x0000100000000000; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000100000000000, 14, 1b, x1, 408)

# rs1_val == 70368744177664, 
# opcode:c.beqz; op1:x10; op1val:0x0000400000000000; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000400000000000, 66, 1b, x1, 416)

# rs1_val == 140737488355328, 
# opcode:c.beqz; op1:x10; op1val:0x0000800000000000; immval:130
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0000800000000000, 130, 1b, x1, 424)

# rs1_val == 281474976710656, 
# opcode:c.beqz; op1:x10; op1val:0x0001000000000000; immval:126
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0001000000000000, 126, 3f, x1, 432)

# rs1_val == 562949953421312, 
# opcode:c.beqz; op1:x10; op1val:0x0002000000000000; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0002000000000000, 12, 3f, x1, 440)

# rs1_val == 1125899906842624, 
# opcode:c.beqz; op1:x10; op1val:0x0004000000000000; immval:64
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0004000000000000, 64, 3f, x1, 448)

# rs1_val == 2251799813685248, 
# opcode:c.beqz; op1:x10; op1val:0x0008000000000000; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0008000000000000, 170, 3f, x1, 456)

# rs1_val == 4503599627370496, 
# opcode:c.beqz; op1:x10; op1val:0x0010000000000000; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0010000000000000, 14, 3f, x1, 464)

# rs1_val == 9007199254740992, 
# opcode:c.beqz; op1:x10; op1val:0x0020000000000000; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0020000000000000, 4, 1b, x1, 472)

# rs1_val == 18014398509481984, 
# opcode:c.beqz; op1:x10; op1val:0x0040000000000000; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0040000000000000, 6, 3f, x1, 480)

# rs1_val == 36028797018963968, 
# opcode:c.beqz; op1:x10; op1val:0x0080000000000000; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0080000000000000, 6, 3f, x1, 488)

# rs1_val == 72057594037927936, 
# opcode:c.beqz; op1:x10; op1val:0x0100000000000000; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0100000000000000, 10, 3f, x1, 496)

# rs1_val == 144115188075855872, 
# opcode:c.beqz; op1:x10; op1val:0x0200000000000000; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0200000000000000, 16, 3f, x1, 504)

# rs1_val == 288230376151711744, 
# opcode:c.beqz; op1:x10; op1val:0x0400000000000000; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0400000000000000, 32, 3f, x1, 512)

# rs1_val == 576460752303423488, 
# opcode:c.beqz; op1:x10; op1val:0x0800000000000000; immval:34
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x0800000000000000, 34, 1b, x1, 520)

# rs1_val == 1152921504606846976, 
# opcode:c.beqz; op1:x10; op1val:0x1000000000000000; immval:126
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x1000000000000000, 126, 3f, x1, 528)

# rs1_val == 2305843009213693952, 
# opcode:c.beqz; op1:x10; op1val:0x2000000000000000; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x2000000000000000, 128, 1b, x1, 536)

# rs1_val == 4611686018427387904, 
# opcode:c.beqz; op1:x10; op1val:0x4000000000000000; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x4000000000000000, 18, 1b, x1, 544)

# rs1_val == -36028797018963969, 
# opcode:c.beqz; op1:x10; op1val:0xff7fffffffffffff; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xff7fffffffffffff, 128, 1b, x1, 552)

# rs1_val == -72057594037927937, 
# opcode:c.beqz; op1:x10; op1val:0xfeffffffffffffff; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfeffffffffffffff, 14, 3f, x1, 560)

# rs1_val == -144115188075855873, 
# opcode:c.beqz; op1:x10; op1val:0xfdffffffffffffff; immval:64
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfdffffffffffffff, 64, 3f, x1, 568)

# rs1_val == -288230376151711745, 
# opcode:c.beqz; op1:x10; op1val:0xfbffffffffffffff; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfbffffffffffffff, 128, 3f, x1, 576)

# rs1_val == -576460752303423489, 
# opcode:c.beqz; op1:x10; op1val:0xf7ffffffffffffff; immval:126
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xf7ffffffffffffff, 126, 3f, x1, 584)

# rs1_val == -1152921504606846977, 
# opcode:c.beqz; op1:x10; op1val:0xefffffffffffffff; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xefffffffffffffff, 8, 3f, x1, 592)

# rs1_val == -2305843009213693953, 
# opcode:c.beqz; op1:x10; op1val:0xdfffffffffffffff; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xdfffffffffffffff, 128, 3f, x1, 600)

# rs1_val == -4611686018427387905, 
# opcode:c.beqz; op1:x10; op1val:0xbfffffffffffffff; immval:34
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xbfffffffffffffff, 34, 1b, x1, 608)

# rs1_val == 6148914691236517205, 
# opcode:c.beqz; op1:x10; op1val:0x5555555555555555; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0x5555555555555555, 14, 1b, x1, 616)

# rs1_val == -6148914691236517206, 
# opcode:c.beqz; op1:x10; op1val:0xaaaaaaaaaaaaaaaa; immval:20
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xaaaaaaaaaaaaaaaa, 20, 1b, x1, 624)

# rs1_val == -2, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffffffffe; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffffe, 128, 1b, x1, 632)

# rs1_val == -3, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffffffffd; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffffd, 66, 1b, x1, 640)

# rs1_val == -5, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffffffffb; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffffb, 6, 1b, x1, 648)

# rs1_val == -9, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffffffff7; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffff7, 10, 1b, x1, 656)

# rs1_val == -17, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffffffffef; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffffef, 4, 1b, x1, 664)

# rs1_val == -33, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffffffffdf; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffffdf, 10, 3f, x1, 672)

# rs1_val == -65, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffffffffbf; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffffbf, 14, 1b, x1, 680)

# rs1_val == -257, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffffffeff; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffeff, 32, 3f, x1, 688)

# rs1_val == -513, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffffffdff; immval:64
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffdff, 64, 3f, x1, 696)

# rs1_val == -1025, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffffffbff; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffffbff, 10, 1b, x1, 704)

# rs1_val == -2049, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffffff7ff; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffff7ff, 6, 1b, x1, 712)

# rs1_val == -4097, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffffffefff; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffefff, 8, 1b, x1, 720)

# rs1_val == -8193, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffffffdfff; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffdfff, 66, 1b, x1, 728)

# rs1_val == -16385, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffffffbfff; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffffbfff, 14, 1b, x1, 736)

# rs1_val == -32769, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffffff7fff; immval:6
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffff7fff, 6, 1b, x1, 744)

# rs1_val == -65537, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffffeffff; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffeffff, 128, 3f, x1, 752)

# rs1_val == -131073, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffffdffff; immval:4
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffdffff, 4, 1b, x1, 760)

# rs1_val == -262145, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffffbffff; immval:8
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffffbffff, 8, 3f, x1, 768)

# rs1_val == -524289, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffff7ffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffff7ffff, 12, 3f, x1, 776)

# rs1_val == -1048577, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffffefffff; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffefffff, 14, 1b, x1, 784)

# rs1_val == -2097153, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffffdfffff; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffdfffff, 10, 3f, x1, 792)

# rs1_val == -4194305, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffffbfffff; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffffbfffff, 14, 3f, x1, 800)

# rs1_val == -8388609, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffff7fffff; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffff7fffff, 16, 1b, x1, 808)

# rs1_val == -16777217, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffeffffff; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffeffffff, 32, 3f, x1, 816)

# rs1_val == -33554433, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffffdffffff; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffffdffffff, 10, 1b, x1, 824)

# rs1_val == -134217729, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffff7ffffff; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffff7ffffff, 128, 1b, x1, 832)

# rs1_val == -268435457, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffefffffff; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffefffffff, 16, 3f, x1, 840)

# rs1_val == -536870913, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffdfffffff; immval:18
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffdfffffff, 18, 1b, x1, 848)

# rs1_val == -1073741825, 
# opcode:c.beqz; op1:x10; op1val:0xffffffffbfffffff; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffffbfffffff, 170, 3f, x1, 856)

# rs1_val == -2147483649, 
# opcode:c.beqz; op1:x10; op1val:0xffffffff7fffffff; immval:14
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffff7fffffff, 14, 3f, x1, 864)

# rs1_val == -4294967297, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffeffffffff; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffeffffffff, 10, 1b, x1, 872)

# rs1_val == -8589934593, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffdffffffff; immval:172
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffdffffffff, 172, 1b, x1, 880)

# rs1_val == -17179869185, 
# opcode:c.beqz; op1:x10; op1val:0xfffffffbffffffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffffbffffffff, 12, 1b, x1, 888)

# rs1_val == -34359738369, 
# opcode:c.beqz; op1:x10; op1val:0xfffffff7ffffffff; immval:64
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffff7ffffffff, 64, 3f, x1, 896)

# rs1_val == -68719476737, 
# opcode:c.beqz; op1:x10; op1val:0xffffffefffffffff; immval:64
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffefffffffff, 64, 3f, x1, 904)

# rs1_val == -137438953473, 
# opcode:c.beqz; op1:x10; op1val:0xffffffdfffffffff; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffdfffffffff, 66, 1b, x1, 912)

# rs1_val == -274877906945, 
# opcode:c.beqz; op1:x10; op1val:0xffffffbfffffffff; immval:66
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffffbfffffffff, 66, 1b, x1, 920)

# rs1_val == -549755813889, 
# opcode:c.beqz; op1:x10; op1val:0xffffff7fffffffff; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffff7fffffffff, 10, 3f, x1, 928)

# rs1_val == -1099511627777, 
# opcode:c.beqz; op1:x10; op1val:0xfffffeffffffffff; immval:126
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffeffffffffff, 126, 3f, x1, 936)

# rs1_val == -2199023255553, 
# opcode:c.beqz; op1:x10; op1val:0xfffffdffffffffff; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffdffffffffff, 170, 3f, x1, 944)

# rs1_val == -4398046511105, 
# opcode:c.beqz; op1:x10; op1val:0xfffffbffffffffff; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffffbffffffffff, 32, 3f, x1, 952)

# rs1_val == -8796093022209, 
# opcode:c.beqz; op1:x10; op1val:0xfffff7ffffffffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffff7ffffffffff, 12, 3f, x1, 960)

# rs1_val == -17592186044417, 
# opcode:c.beqz; op1:x10; op1val:0xffffefffffffffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffefffffffffff, 12, 1b, x1, 968)

# rs1_val == -35184372088833, 
# opcode:c.beqz; op1:x10; op1val:0xffffdfffffffffff; immval:128
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffdfffffffffff, 128, 3f, x1, 976)

# rs1_val == -70368744177665, 
# opcode:c.beqz; op1:x10; op1val:0xffffbfffffffffff; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffffbfffffffffff, 32, 3f, x1, 984)

# rs1_val == -140737488355329, 
# opcode:c.beqz; op1:x10; op1val:0xffff7fffffffffff; immval:32
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffff7fffffffffff, 32, 3f, x1, 992)

# rs1_val == -281474976710657, 
# opcode:c.beqz; op1:x10; op1val:0xfffeffffffffffff; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffeffffffffffff, 10, 3f, x1, 1000)

# rs1_val == -562949953421313, 
# opcode:c.beqz; op1:x10; op1val:0xfffdffffffffffff; immval:12
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffdffffffffffff, 12, 1b, x1, 1008)

# rs1_val == -1125899906842625, 
# opcode:c.beqz; op1:x10; op1val:0xfffbffffffffffff; immval:16
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfffbffffffffffff, 16, 3f, x1, 1016)

# rs1_val == -2251799813685249, 
# opcode:c.beqz; op1:x10; op1val:0xfff7ffffffffffff; immval:130
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xfff7ffffffffffff, 130, 1b, x1, 1024)

# rs1_val == -4503599627370497, 
# opcode:c.beqz; op1:x10; op1val:0xffefffffffffffff; immval:10
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffefffffffffffff, 10, 3f, x1, 1032)

# rs1_val == -9007199254740993, 
# opcode:c.beqz; op1:x10; op1val:0xffdfffffffffffff; immval:172
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffdfffffffffffff, 172, 1b, x1, 1040)

# rs1_val == -18014398509481985, 
# opcode:c.beqz; op1:x10; op1val:0xffbfffffffffffff; immval:170
TEST_CBRANCH_OP(c.beqz, x2, x10, 0xffbfffffffffffff, 170, 3f, x1, 1048)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 132*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
