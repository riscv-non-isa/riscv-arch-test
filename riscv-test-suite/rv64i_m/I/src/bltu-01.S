
#This assembly file tests the bltu instruction of the RISC-V I extension for the bltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bltu)

RVTEST_SIGBASE( x15,signature_x15_1)

# rs1 == rs2, rs1==x27, rs2==x27, rs1_val > 0 and rs2_val > 0, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val > 0 , rs2_val == 2048, rs1_val == 36028797018963968
# opcode: bltu, op1:x27; op2:x27; op1val:0x0080000000000000; op2val:0x0000000000000800; immval:16; align:0
TEST_BRANCH_OP(bltu, x20, x27, x27, 0x0080000000000000, 0x0000000000000800, 16, 3f, x15, 0,0)

# rs1 != rs2, rs1==x26, rs2==x5, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, rs1_val == 18442240474082181119, rs2_val == 18442240474082181119
# opcode: bltu, op1:x26; op2:x5; op1val:0xffefffffffffffff; op2val:0xffefffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bltu, x20, x26, x5, 0xffefffffffffffff, 0xffefffffffffffff, 512, 3f, x15, 8,0)

# rs1==x4, rs2==x1, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val < 0, rs1_val == 536870912, rs2_val == 536870912
# opcode: bltu, op1:x4; op2:x1; op1val:0x0000000020000000; op2val:0x0000000020000000; immval:8; align:0
TEST_BRANCH_OP(bltu, x20, x4, x1, 0x0000000020000000, 0x0000000020000000, 8, 1b, x15, 16,0)

# rs1==x5, rs2==x28, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val < 0 , rs2_val == 17179869184, rs1_val == 18446743936270598143
# opcode: bltu, op1:x5; op2:x28; op1val:0xffffffdfffffffff; op2val:0x0000000400000000; immval:8; align:0
TEST_BRANCH_OP(bltu, x20, x5, x28, 0xffffffdfffffffff, 0x0000000400000000, 8, 1b, x15, 24,0)

# rs1==x14, rs2==x12, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val > 0 , rs1_val == 18446743798831644671, rs2_val == 18446744073709535231
# opcode: bltu, op1:x14; op2:x12; op1val:0xffffffbfffffffff; op2val:0xffffffffffffbfff; immval:256; align:0
TEST_BRANCH_OP(bltu, x20, x14, x12, 0xffffffbfffffffff, 0xffffffffffffbfff, 256, 3f, x15, 32,0)

# rs1==x0, rs2==x11, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val < 0 , rs2_val == 18446744073709551583, rs1_val == 18446744073701163007
# opcode: bltu, op1:x0; op2:x11; op1val:0xffffffffff7fffff; op2val:0xffffffffffffffdf; immval:8; align:0
TEST_BRANCH_OP(bltu, x20, x0, x11, 0xffffffffff7fffff, 0xffffffffffffffdf, 8, 1b, x15, 40,0)

# rs1==x19, rs2==x24, rs1_val == 1, rs2_val == 18446744073709551487
# opcode: bltu, op1:x19; op2:x24; op1val:0x0000000000000001; op2val:0xffffffffffffff7f; immval:256; align:0
TEST_BRANCH_OP(bltu, x20, x19, x24, 0x0000000000000001, 0xffffffffffffff7f, 256, 3f, x15, 48,0)

# rs1==x28, rs2==x14, rs1_val == 2, 
# opcode: bltu, op1:x28; op2:x14; op1val:0x0000000000000002; op2val:0xffefffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bltu, x20, x28, x14, 0x0000000000000002, 0xffefffffffffffff, 2, 3f, x15, 56,0)

# rs1==x25, rs2==x22, rs1_val == 4, rs2_val == 72057594037927936
# opcode: bltu, op1:x25; op2:x22; op1val:0x0000000000000004; op2val:0x0100000000000000; immval:4; align:0
TEST_BRANCH_OP(bltu, x20, x25, x22, 0x0000000000000004, 0x0100000000000000, 4, 3f, x15, 64,0)

# rs1==x16, rs2==x8, rs1_val == 8, rs2_val == 34359738368
# opcode: bltu, op1:x16; op2:x8; op1val:0x0000000000000008; op2val:0x0000000800000000; immval:4; align:0
TEST_BRANCH_OP(bltu, x20, x16, x8, 0x0000000000000008, 0x0000000800000000, 4, 1b, x15, 72,0)

# rs1==x8, rs2==x31, rs1_val == 16, 
# opcode: bltu, op1:x8; op2:x31; op1val:0x0000000000000010; op2val:0x0000000000000007; immval:256; align:0
TEST_BRANCH_OP(bltu, x20, x8, x31, 0x0000000000000010, 0x0000000000000007, 256, 3f, x15, 80,0)

# rs1==x22, rs2==x3, rs1_val == 32, rs2_val == 33554432
# opcode: bltu, op1:x22; op2:x3; op1val:0x0000000000000020; op2val:0x0000000002000000; immval:10; align:0
TEST_BRANCH_OP(bltu, x20, x22, x3, 0x0000000000000020, 0x0000000002000000, 10, 1b, x15, 88,0)

# rs1==x21, rs2==x13, rs1_val == 64, rs2_val == 18446462598732840959
# opcode: bltu, op1:x21; op2:x13; op1val:0x0000000000000040; op2val:0xfffeffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x20, x21, x13, 0x0000000000000040, 0xfffeffffffffffff, 1024, 3f, x15, 96,0)

# rs1==x6, rs2==x16, rs1_val == 128, 
# opcode: bltu, op1:x6; op2:x16; op1val:0x0000000000000080; op2val:0x000000000000000c; immval:8; align:0
TEST_BRANCH_OP(bltu, x20, x6, x16, 0x0000000000000080, 0x000000000000000c, 8, 3f, x15, 104,0)

# rs1==x29, rs2==x0, rs1_val == 256, rs2_val == 18446744073705357311
# opcode: bltu, op1:x29; op2:x0; op1val:0x0000000000000100; op2val:0xffffffffffbfffff; immval:64; align:0
TEST_BRANCH_OP(bltu, x20, x29, x0, 0x0000000000000100, 0xffffffffffbfffff, 64, 3f, x15, 112,0)

# rs1==x31, rs2==x21, rs1_val == 512, rs2_val == 1048576
# opcode: bltu, op1:x31; op2:x21; op1val:0x0000000000000200; op2val:0x0000000000100000; immval:0; align:0
TEST_BRANCH_OP(bltu, x20, x31, x21, 0x0000000000000200, 0x0000000000100000, 0, 1b, x15, 120,0)

# rs1==x3, rs2==x10, rs1_val == 1024, rs2_val == 18446744073709551607
# opcode: bltu, op1:x3; op2:x10; op1val:0x0000000000000400; op2val:0xfffffffffffffff7; immval:0; align:0
TEST_BRANCH_OP(bltu, x20, x3, x10, 0x0000000000000400, 0xfffffffffffffff7, 0, 3f, x15, 128,0)

# rs1==x30, rs2==x9, rs1_val == 2048, rs2_val == 18446708889337462783
# opcode: bltu, op1:x30; op2:x9; op1val:0x0000000000000800; op2val:0xffffdfffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x20, x30, x9, 0x0000000000000800, 0xffffdfffffffffff, 1024, 1b, x15, 136,0)

# rs1==x13, rs2==x2, rs1_val == 4096, rs2_val == 1152921504606846976
# opcode: bltu, op1:x13; op2:x2; op1val:0x0000000000001000; op2val:0x1000000000000000; immval:1366; align:0
TEST_BRANCH_OP(bltu, x20, x13, x2, 0x0000000000001000, 0x1000000000000000, 1366, 1b, x15, 144,0)

# rs1==x10, rs2==x17, rs1_val == 8192, rs2_val == 2305843009213693952
# opcode: bltu, op1:x10; op2:x17; op1val:0x0000000000002000; op2val:0x2000000000000000; immval:4; align:0
TEST_BRANCH_OP(bltu, x20, x10, x17, 0x0000000000002000, 0x2000000000000000, 4, 3f, x15, 152,0)

# rs1==x7, rs2==x18, rs1_val == 16384, 
# opcode: bltu, op1:x7; op2:x18; op1val:0x0000000000004000; op2val:0x0000000800000000; immval:256; align:0
TEST_BRANCH_OP(bltu, x20, x7, x18, 0x0000000000004000, 0x0000000800000000, 256, 3f, x15, 160,0)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x12, rs2==x23, rs1_val == 32768, rs2_val == 18446744072635809791
# opcode: bltu, op1:x12; op2:x23; op1val:0x0000000000008000; op2val:0xffffffffbfffffff; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x12, x23, 0x0000000000008000, 0xffffffffbfffffff, 0, 3f, x3, 0,0)

# rs1==x20, rs2==x19, rs1_val == 65536, rs2_val == 18446744073575333887
# opcode: bltu, op1:x20; op2:x19; op1val:0x0000000000010000; op2val:0xfffffffff7ffffff; immval:512; align:0
TEST_BRANCH_OP(bltu, x5, x20, x19, 0x0000000000010000, 0xfffffffff7ffffff, 512, 3f, x3, 8,0)

# rs1==x9, rs2==x4, rs1_val == 131072, rs2_val == 18446744073709486079
# opcode: bltu, op1:x9; op2:x4; op1val:0x0000000000020000; op2val:0xfffffffffffeffff; immval:16; align:0
TEST_BRANCH_OP(bltu, x5, x9, x4, 0x0000000000020000, 0xfffffffffffeffff, 16, 3f, x3, 16,0)

# rs1==x23, rs2==x26, rs1_val == 262144, rs2_val == 32768
# opcode: bltu, op1:x23; op2:x26; op1val:0x0000000000040000; op2val:0x0000000000008000; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x23, x26, 0x0000000000040000, 0x0000000000008000, 64, 3f, x3, 24,0)

# rs1==x18, rs2==x30, rs1_val == 524288, rs2_val == 18446744073709551599
# opcode: bltu, op1:x18; op2:x30; op1val:0x0000000000080000; op2val:0xffffffffffffffef; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x18, x30, 0x0000000000080000, 0xffffffffffffffef, 0, 1b, x3, 32,0)

# rs1==x2, rs2==x15, rs1_val == 1048576, 
# opcode: bltu, op1:x2; op2:x15; op1val:0x0000000000100000; op2val:0x000000000000000f; immval:10; align:0
TEST_BRANCH_OP(bltu, x5, x2, x15, 0x0000000000100000, 0x000000000000000f, 10, 1b, x3, 40,0)

# rs1==x11, rs2==x6, rs1_val == 2097152, 
# opcode: bltu, op1:x11; op2:x6; op1val:0x0000000000200000; op2val:0xffefffffffffffff; immval:10; align:0
TEST_BRANCH_OP(bltu, x5, x11, x6, 0x0000000000200000, 0xffefffffffffffff, 10, 1b, x3, 48,0)

# rs1==x24, rs2==x25, rs1_val == 4194304, rs2_val == 17870283321406128127
# opcode: bltu, op1:x24; op2:x25; op1val:0x0000000000400000; op2val:0xf7ffffffffffffff; immval:16; align:0
TEST_BRANCH_OP(bltu, x5, x24, x25, 0x0000000000400000, 0xf7ffffffffffffff, 16, 3f, x3, 56,0)

# rs1==x15, rs2==x29, rs1_val == 8388608, rs2_val == 18446744073709547519
# opcode: bltu, op1:x15; op2:x29; op1val:0x0000000000800000; op2val:0xffffffffffffefff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x5, x15, x29, 0x0000000000800000, 0xffffffffffffefff, 1024, 1b, x3, 64,0)

# rs1==x1, rs2==x7, rs1_val == 16777216, rs2_val == 2251799813685248
# opcode: bltu, op1:x1; op2:x7; op1val:0x0000000001000000; op2val:0x0008000000000000; immval:1366; align:0
TEST_BRANCH_OP(bltu, x5, x1, x7, 0x0000000001000000, 0x0008000000000000, 1366, 1b, x3, 72,0)

# rs1==x17, rs2==x20, rs1_val == 33554432, 
# opcode: bltu, op1:x17; op2:x20; op1val:0x0000000002000000; op2val:0xffffffffffffff7f; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x17, x20, 0x0000000002000000, 0xffffffffffffff7f, 8, 1b, x3, 80,0)

# rs1_val == 67108864, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0x0000000800000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000004000000, 0x0000000800000000, 2, 1b, x3, 88,0)

# rs1_val == 134217728, rs2_val == 18446744073709289471
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0xfffffffffffbffff; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000008000000, 0xfffffffffffbffff, 2, 1b, x3, 96,0)

# rs1_val == 268435456, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000000020000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000010000000, 0x0000000020000000, 2, 3f, x3, 104,0)

# rs1_val == 1073741824, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000000000000007; immval:1366; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000040000000, 0x0000000000000007, 1366, 1b, x3, 112,0)

# rs1_val == 2147483648, rs2_val == 134217728
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0000000008000000; immval:10; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000080000000, 0x0000000008000000, 10, 1b, x3, 120,0)

# rs1_val == 4294967296, rs2_val == 36028797018963968
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0080000000000000; immval:128; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000100000000, 0x0080000000000000, 128, 3f, x3, 128,0)

# rs1_val == 8589934592, rs2_val == 9223372036854775808
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x8000000000000000; immval:128; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000200000000, 0x8000000000000000, 128, 3f, x3, 136,0)

# rs1_val == 17179869184, rs2_val == 18446744073708503039
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xffffffffffefffff; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000400000000, 0xffffffffffefffff, 0, 3f, x3, 144,0)

# rs1_val == 34359738368, rs2_val == 1024
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0x0000000000000400; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000800000000, 0x0000000000000400, 64, 3f, x3, 152,0)

# rs1_val == 68719476736, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x2000000000000000; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000001000000000, 0x2000000000000000, 6, 1b, x3, 160,0)

# rs1_val == 137438953472, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000000000008000; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000002000000000, 0x0000000000008000, 64, 3f, x3, 168,0)

# rs1_val == 274877906944, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xfffffffffffbffff; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000004000000000, 0xfffffffffffbffff, 64, 3f, x3, 176,0)

# rs1_val == 549755813888, rs2_val == 18446743798831644671
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xffffffbfffffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000008000000000, 0xffffffbfffffffff, 8, 3f, x3, 184,0)

# rs1_val == 1099511627776, rs2_val == 288230376151711744
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0x0400000000000000; immval:128; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000010000000000, 0x0400000000000000, 128, 3f, x3, 192,0)

# rs1_val == 2199023255552, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x000000000000000b; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000020000000000, 0x000000000000000b, 2, 1b, x3, 200,0)

# rs1_val == 4398046511104, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0x0000000000000009; immval:16; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000040000000000, 0x0000000000000009, 16, 3f, x3, 208,0)

# rs1_val == 8796093022208, rs2_val == 18446744073675997183
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xfffffffffdffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000080000000000, 0xfffffffffdffffff, 8, 3f, x3, 216,0)

# rs1_val == 17592186044416, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000000000000011; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000100000000000, 0x0000000000000011, 6, 3f, x3, 224,0)

# rs1_val == 35184372088832, rs2_val == 18446744073642442751
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xfffffffffbffffff; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000200000000000, 0xfffffffffbffffff, 6, 1b, x3, 232,0)

# rs1_val == 70368744177664, rs2_val == 18446744073709551103
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xfffffffffffffdff; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000400000000000, 0xfffffffffffffdff, 6, 3f, x3, 240,0)

# rs1_val == 140737488355328, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfffffffffffffdff; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000800000000000, 0xfffffffffffffdff, 0, 1b, x3, 248,0)

# rs1_val == 281474976710656, rs2_val == 18158513697557839871
# opcode: bltu, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xfbffffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0001000000000000, 0xfbffffffffffffff, 128, 3f, x3, 256,0)

# rs1_val == 562949953421312, rs2_val == 17293822569102704639
# opcode: bltu, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xefffffffffffffff; immval:1366; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0002000000000000, 0xefffffffffffffff, 1366, 1b, x3, 264,0)

# rs1_val == 1125899906842624, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0x0000000000000009; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0004000000000000, 0x0000000000000009, 0, 1b, x3, 272,0)

# rs1_val == 2251799813685248, rs2_val == 18446744073172680703
# opcode: bltu, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0xffffffffdfffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0008000000000000, 0xffffffffdfffffff, 8, 3f, x3, 280,0)

# rs1_val == 4503599627370496, rs2_val == 18446603336221196287
# opcode: bltu, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xffff7fffffffffff; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0010000000000000, 0xffff7fffffffffff, 2, 1b, x3, 288,0)

# rs1_val == 9007199254740992, rs2_val == 18446744073709551551
# opcode: bltu, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xffffffffffffffbf; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0020000000000000, 0xffffffffffffffbf, 4, 3f, x3, 296,0)

# rs1_val == 18014398509481984, rs2_val == 562949953421312
# opcode: bltu, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0x0002000000000000; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0040000000000000, 0x0002000000000000, 8, 3f, x3, 304,0)

# rs1_val == 72057594037927936, rs2_val == 144115188075855872
# opcode: bltu, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0200000000000000; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0100000000000000, 0x0200000000000000, 4, 1b, x3, 312,0)

# rs1_val == 144115188075855872, rs2_val == 8388608
# opcode: bltu, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0000000000800000; immval:1024; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0200000000000000, 0x0000000000800000, 1024, 1b, x3, 320,0)

# rs1_val == 288230376151711744, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0xffffffffffffff7f; immval:128; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0400000000000000, 0xffffffffffffff7f, 128, 3f, x3, 328,0)

# rs1_val == 576460752303423488, rs2_val == 512
# opcode: bltu, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000000000000200; immval:16; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0800000000000000, 0x0000000000000200, 16, 3f, x3, 336,0)

# rs1_val == 1152921504606846976, rs2_val == 35184372088832
# opcode: bltu, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x0000200000000000; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x1000000000000000, 0x0000200000000000, 6, 3f, x3, 344,0)

# rs1_val == 2305843009213693952, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xffffffffdfffffff; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x2000000000000000, 0xffffffffdfffffff, 2, 3f, x3, 352,0)

# rs1_val == 4611686018427387904, rs2_val == 1
# opcode: bltu, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x0000000000000001; immval:16; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x4000000000000000, 0x0000000000000001, 16, 3f, x3, 360,0)

# rs1_val == 9223372036854775808, rs2_val == 18437736874454810623
# opcode: bltu, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0xffdfffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x8000000000000000, 0xffdfffffffffffff, 0, 3f, x3, 368,0)

# rs1_val == 18446744073709551614, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x000000000000000a; immval:1366; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffffe, 0x000000000000000a, 1366, 1b, x3, 376,0)

# rs1_val == 18446744073709551613, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000000000000012; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffffd, 0x0000000000000012, 4, 3f, x3, 384,0)

# rs1_val == 18446744073709551611, rs2_val == 16777216
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0000000001000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffffb, 0x0000000001000000, 0, 3f, x3, 392,0)

# rs1_val == 18446744073709551607, rs2_val == 18428729675200069631
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xffbfffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffff7, 0xffbfffffffffffff, 6, 3f, x3, 400,0)

# rs1_val == 18446744073709551599, rs2_val == 18446744073709551613
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xfffffffffffffffd; immval:1366; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffffffef, 0xfffffffffffffffd, 1366, 1b, x3, 408,0)

# rs1_val == 18446744073709551583, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0xfffffffff7ffffff; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffffffdf, 0xfffffffff7ffffff, 0, 3f, x3, 416,0)

# rs1_val == 18446744073709551551, rs2_val == 18446744073707454463
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0xffffffffffdfffff; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffffffbf, 0xffffffffffdfffff, 2, 3f, x3, 424,0)

# rs1_val == 18446744073709551487, rs2_val == 18446744073701163007
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xffffffffff7fffff; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffffff7f, 0xffffffffff7fffff, 64, 3f, x3, 432,0)

# rs1_val == 18446744073709551359, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xfffffffffdffffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffeff, 0xfffffffffdffffff, 1024, 1b, x3, 440,0)

# rs1_val == 18446744073709551103, rs2_val == 18446744073692774399
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xfffffffffeffffff; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffdff, 0xfffffffffeffffff, 4, 3f, x3, 448,0)

# rs1_val == 18446744073709550591, rs2_val == 8192
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000000000002000; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffbff, 0x0000000000002000, 4, 1b, x3, 456,0)

# rs2_val == 18410715276690587647, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xff7fffffffffffff; immval:10; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffdfffffffff, 0xff7fffffffffffff, 10, 1b, x3, 464,0)

# rs2_val == 18374686479671623679, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0xfeffffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000200000, 0xfeffffffffffffff, 1024, 1b, x3, 472,0)

# rs2_val == 18302628885633695743, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xfdffffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000008000, 0xfdffffffffffffff, 512, 3f, x3, 480,0)

# rs2_val == 16140901064495857663, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0xdfffffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000000800, 0xdfffffffffffffff, 1024, 3f, x3, 488,0)

# rs2_val == 13835058055282163711, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xbfffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000004000000000, 0xbfffffffffffffff, 2, 3f, x3, 496,0)

# rs2_val == 9223372036854775807, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0x7fffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000000080, 0x7fffffffffffffff, 2, 1b, x3, 504,0)

# rs2_val == 6148914691236517205, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0x5555555555555555; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0004000000000000, 0x5555555555555555, 4, 1b, x3, 512,0)

# rs2_val == 12297829382473034410, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000400000; op2val:0xaaaaaaaaaaaaaaaa; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000400000, 0xaaaaaaaaaaaaaaaa, 64, 3f, x3, 520,0)

# rs1_val == 18446744073709549567, rs2_val == 18446744004990074879
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0xffffffefffffffff; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffff7ff, 0xffffffefffffffff, 6, 3f, x3, 528,0)

# rs1_val == 18446744073709547519, rs2_val == 18446744056529682431
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xfffffffbffffffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffffefff, 0xfffffffbffffffff, 1024, 3f, x3, 536,0)

# rs1_val == 18446744073709543423, rs2_val == 274877906944
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x0000004000000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffffdfff, 0x0000004000000000, 0, 1b, x3, 544,0)

# rs1_val == 18446744073709535231, rs2_val == 18446744073709420543
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xfffffffffffdffff; immval:32; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffffbfff, 0xfffffffffffdffff, 32, 3f, x3, 552,0)

# rs1_val == 18446744073709518847, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0xffffffffffffff7f; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffff7fff, 0xffffffffffffff7f, 0, 1b, x3, 560,0)

# rs1_val == 18446744073709486079, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xffffffffffffffbf; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffeffff, 0xffffffffffffffbf, 0, 3f, x3, 568,0)

# rs1_val == 18446744073709420543, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xffffffffffffffff; immval:10; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffdffff, 0xffffffffffffffff, 10, 1b, x3, 576,0)

# rs1_val == 18446744073709289471, rs2_val == 18014398509481984
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0040000000000000; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffbffff, 0x0040000000000000, 8, 3f, x3, 584,0)

# rs1_val == 18446744073709027327, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0x0000000000000000; immval:10; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffff7ffff, 0x0000000000000000, 10, 1b, x3, 592,0)

# rs1_val == 18446744073708503039, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x0000000020000000; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffefffff, 0x0000000020000000, 6, 3f, x3, 600,0)

# rs1_val == 18446744073707454463, rs2_val == 18445618173802708991
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xfffbffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffdfffff, 0xfffbffffffffffff, 0, 1b, x3, 608,0)

# rs1_val == 18446744073705357311, rs2_val == 67108864
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0x0000000004000000; immval:16; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffbfffff, 0x0000000004000000, 16, 3f, x3, 616,0)

# rs1_val == 18446744073692774399, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x0000000000000007; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffeffffff, 0x0000000000000007, 8, 1b, x3, 624,0)

# rs1_val == 18446744073675997183, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xffffffffffffffbf; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffdffffff, 0xffffffffffffffbf, 0, 3f, x3, 632,0)

# rs1_val == 18446744073642442751, rs2_val == 18444492273895866367
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xfff7ffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffbffffff, 0xfff7ffffffffffff, 1024, 3f, x3, 640,0)

# rs1_val == 18446744073575333887, rs2_val == 32
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0000000000000020; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffff7ffffff, 0x0000000000000020, 0, 1b, x3, 648,0)

# rs1_val == 18446744073441116159, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0xffdfffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffefffffff, 0xffdfffffffffffff, 512, 3f, x3, 656,0)

# rs1_val == 18446744073172680703, rs2_val == 18446744073709550591
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xfffffffffffffbff; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffdfffffff, 0xfffffffffffffbff, 0, 3f, x3, 664,0)

# rs1_val == 18446744072635809791, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0xfbffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffbfffffff, 0xfbffffffffffffff, 4, 3f, x3, 672,0)

# rs1_val == 18446744071562067967, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0000000000000005; immval:512; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffff7fffffff, 0x0000000000000005, 512, 3f, x3, 680,0)

# rs1_val == 18446744069414584319, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xfffffffffffffff7; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffeffffffff, 0xfffffffffffffff7, 4, 1b, x3, 688,0)

# rs1_val == 18446744065119617023, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0000000008000000; immval:1366; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffdffffffff, 0x0000000008000000, 1366, 1b, x3, 696,0)

# rs1_val == 18446744056529682431, rs2_val == 4096
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000000000001000; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffbffffffff, 0x0000000000001000, 6, 3f, x3, 704,0)

# rs1_val == 18446744039349813247, rs2_val == 2147483648
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000080000000; immval:16; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffff7ffffffff, 0x0000000080000000, 16, 3f, x3, 712,0)

# rs1_val == 18446744004990074879, rs2_val == 8
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0000000000000008; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffefffffffff, 0x0000000000000008, 8, 1b, x3, 720,0)

# rs1_val == 18446743523953737727, rs2_val == 18446744073709549567
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0xfffffffffffff7ff; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffff7fffffffff, 0xfffffffffffff7ff, 6, 1b, x3, 728,0)

# rs1_val == 18446742974197923839, rs2_val == 4
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000000000004; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffeffffffffff, 0x0000000000000004, 8, 1b, x3, 736,0)

# rs1_val == 18446741874686296063, rs2_val == 18446743523953737727
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xffffff7fffffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffdffffffffff, 0xffffff7fffffffff, 8, 3f, x3, 744,0)

# rs1_val == 18446739675663040511, rs2_val == 18446744071562067967
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xffffffff7fffffff; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffbffffffffff, 0xffffffff7fffffff, 64, 3f, x3, 752,0)

# rs1_val == 18446735277616529407, rs2_val == 4398046511104
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0000040000000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffff7ffffffffff, 0x0000040000000000, 2, 3f, x3, 760,0)

# rs1_val == 18446726481523507199, rs2_val == 68719476736
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000001000000000; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffefffffffffff, 0x0000001000000000, 6, 1b, x3, 768,0)

# rs1_val == 18446708889337462783, rs2_val == 1099511627776
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0x0000010000000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffdfffffffffff, 0x0000010000000000, 0, 3f, x3, 776,0)

# rs1_val == 18446673704965373951, rs2_val == 18446744065119617023
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xfffffffdffffffff; immval:32; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffbfffffffffff, 0xfffffffdffffffff, 32, 3f, x3, 784,0)

# rs1_val == 18446603336221196287, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xfffffffffffeffff; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffff7fffffffffff, 0xfffffffffffeffff, 4, 3f, x3, 792,0)

# rs1_val == 18302628885633695743, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xfeffffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfdffffffffffffff, 0xfeffffffffffffff, 512, 3f, x3, 800,0)

# rs1_val == 18158513697557839871, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0100000000000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfbffffffffffffff, 0x0100000000000000, 2, 3f, x3, 808,0)

# rs1_val == 17870283321406128127, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x0000000000000006; immval:16; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xf7ffffffffffffff, 0x0000000000000006, 16, 3f, x3, 816,0)

# rs1_val == 17293822569102704639, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0200000000000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xefffffffffffffff, 0x0200000000000000, 2, 3f, x3, 824,0)

# rs1_val == 16140901064495857663, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0xfffbffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xdfffffffffffffff, 0xfffbffffffffffff, 128, 3f, x3, 832,0)

# rs1_val == 13835058055282163711, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0xfffffffffffffbff; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xbfffffffffffffff, 0xfffffffffffffbff, 4, 1b, x3, 840,0)

# rs1_val == 9223372036854775807, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0000000000000011; immval:1024; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x7fffffffffffffff, 0x0000000000000011, 1024, 1b, x3, 848,0)

# rs1_val == 6148914691236517205, rs2_val == 4503599627370496
# opcode: bltu, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0010000000000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x5555555555555555, 0x0010000000000000, 0, 3f, x3, 856,0)

# rs1_val == 12297829382473034410, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0x000000000000000f; immval:1024; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xaaaaaaaaaaaaaaaa, 0x000000000000000f, 1024, 3f, x3, 864,0)

# rs2_val == 2, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0000000000000002; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffff7fff, 0x0000000000000002, 0, 3f, x3, 872,0)

# rs2_val == 16, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0x0000000000000010; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000010000, 0x0000000000000010, 4, 1b, x3, 880,0)

# rs2_val == 64, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0000000000000040; immval:256; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffff7ffffffffff, 0x0000000000000040, 256, 3f, x3, 888,0)

# rs2_val == 128, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0x0000000000000080; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000000020, 0x0000000000000080, 2, 1b, x3, 896,0)

# rs2_val == 256, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x000000000000000a; op2val:0x0000000000000100; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x000000000000000a, 0x0000000000000100, 6, 3f, x3, 904,0)

# rs2_val == 16384, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0x0000000000004000; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000000020, 0x0000000000004000, 64, 3f, x3, 912,0)

# rs2_val == 65536, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x000000000000000c; op2val:0x0000000000010000; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x000000000000000c, 0x0000000000010000, 6, 3f, x3, 920,0)

# rs2_val == 131072, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000000000020000; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffbffffffffff, 0x0000000000020000, 64, 3f, x3, 928,0)

# rs2_val == 262144, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000000000040000; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffff7, 0x0000000000040000, 8, 3f, x3, 936,0)

# rs2_val == 524288, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000000080000; immval:256; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffbfffffffff, 0x0000000000080000, 256, 3f, x3, 944,0)

# rs2_val == 2097152, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000000000200000; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffff7, 0x0000000000200000, 2, 3f, x3, 952,0)

# rs2_val == 4194304, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000000000400000; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000400000000000, 0x0000000000400000, 8, 1b, x3, 960,0)

# rs2_val == 268435456, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000000010000000; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000100000000000, 0x0000000010000000, 64, 3f, x3, 968,0)

# rs2_val == 1073741824, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000005; op2val:0x0000000040000000; immval:1366; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000000005, 0x0000000040000000, 1366, 1b, x3, 976,0)

# rs2_val == 4294967296, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0000000100000000; immval:512; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffff7ffffffffff, 0x0000000100000000, 512, 3f, x3, 984,0)

# rs2_val == 8589934592, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000000; op2val:0x0000000200000000; immval:256; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000000000, 0x0000000200000000, 256, 3f, x3, 992,0)

# rs2_val == 137438953472, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0000002000000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0080000000000000, 0x0000002000000000, 2, 3f, x3, 1000,0)

# rs2_val == 549755813888, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000008000000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffbffffffff, 0x0000008000000000, 2, 3f, x3, 1008,0)

# rs2_val == 2199023255552, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000020000000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffdff, 0x0000020000000000, 0, 1b, x3, 1016,0)

# rs2_val == 8796093022208, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000080000000000; immval:32; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffbfffffffff, 0x0000080000000000, 32, 3f, x3, 1024,0)

# rs2_val == 17592186044416, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x000000000000000f; op2val:0x0000100000000000; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x000000000000000f, 0x0000100000000000, 8, 1b, x3, 1032,0)

# rs2_val == 70368744177664, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000400000000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000100000000000, 0x0000400000000000, 0, 1b, x3, 1040,0)

# rs2_val == 576460752303423488, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0800000000000000; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x5555555555555555, 0x0800000000000000, 64, 3f, x3, 1048,0)

# rs2_val == 4611686018427387904, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000400000; op2val:0x4000000000000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000400000, 0x4000000000000000, 0, 3f, x3, 1056,0)

# rs2_val == 18446744073709551614, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xfffffffffffffffe; immval:10; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffffb, 0xfffffffffffffffe, 10, 1b, x3, 1064,0)

# rs2_val == 18446744073709551611, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0xfffffffffffffffb; immval:10; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000200000, 0xfffffffffffffffb, 10, 1b, x3, 1072,0)

# rs2_val == 18446744073709551359, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0xfffffffffffffeff; immval:4; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000400000000000, 0xfffffffffffffeff, 4, 3f, x3, 1080,0)

# rs2_val == 18446744073709543423, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0xffffffffffffdfff; immval:32; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x5555555555555555, 0xffffffffffffdfff, 32, 3f, x3, 1088,0)

# rs1_val == 18446462598732840959, rs2_val == 18446744073709027327
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0xfffffffffff7ffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffeffffffffffff, 0xfffffffffff7ffff, 8, 1b, x3, 1096,0)

# rs2_val == 18446744073709518847, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xffffffffffff7fff; immval:512; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0200000000000000, 0xffffffffffff7fff, 512, 3f, x3, 1104,0)

# rs1_val == 18446181123756130303, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xfffffffffffffffb; immval:256; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffdffffffffffff, 0xfffffffffffffffb, 256, 3f, x3, 1112,0)

# rs2_val == 281474976710656, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0001000000000000; immval:512; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffbfffffff, 0x0001000000000000, 512, 3f, x3, 1120,0)

# rs1_val == 18410715276690587647, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xefffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xff7fffffffffffff, 0xefffffffffffffff, 2, 1b, x3, 1128,0)

# rs2_val == 18446744073441116159, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xffffffffefffffff; immval:128; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffffe, 0xffffffffefffffff, 128, 3f, x3, 1136,0)

# rs1_val == 18444492273895866367, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0080000000000000; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfff7ffffffffffff, 0x0080000000000000, 6, 3f, x3, 1144,0)

# rs2_val == 18446744069414584319, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000012; op2val:0xfffffffeffffffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000000012, 0xfffffffeffffffff, 1024, 3f, x3, 1152,0)

# rs2_val == 18446744039349813247, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xfffffff7ffffffff; immval:6; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffffeff, 0xfffffff7ffffffff, 6, 1b, x3, 1160,0)

# rs2_val == 18446743936270598143, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffffffffff; op2val:0xffffffdfffffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffffffffff, 0xffffffdfffffffff, 8, 3f, x3, 1168,0)

# rs2_val == 18446742974197923839, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000020000; op2val:0xfffffeffffffffff; immval:16; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000020000, 0xfffffeffffffffff, 16, 3f, x3, 1176,0)

# rs2_val == 18446741874686296063, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xfffffdffffffffff; immval:1366; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0020000000000000, 0xfffffdffffffffff, 1366, 1b, x3, 1184,0)

# rs2_val == 18446739675663040511, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xfffffbffffffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0200000000000000, 0xfffffbffffffffff, 8, 1b, x3, 1192,0)

# rs2_val == 18446735277616529407, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000004000; op2val:0xfffff7ffffffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000004000, 0xfffff7ffffffffff, 8, 1b, x3, 1200,0)

# rs2_val == 18446726481523507199, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xffffefffffffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000800000000, 0xffffefffffffffff, 8, 1b, x3, 1208,0)

# rs2_val == 18446673704965373951, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x000000000000000f; op2val:0xffffbfffffffffff; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x000000000000000f, 0xffffbfffffffffff, 64, 3f, x3, 1216,0)

# rs2_val == 140737488355328, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000800000000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffefffffffffff, 0x0000800000000000, 2, 1b, x3, 1224,0)

# rs1_val == 18445618173802708991, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0000000000000007; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffbffffffffffff, 0x0000000000000007, 0, 3f, x3, 1232,0)

# rs2_val == 18446181123756130303, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xfffdffffffffffff; immval:128; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfffffffffffdffff, 0xfffdffffffffffff, 128, 3f, x3, 1240,0)

# rs2_val == 1125899906842624, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0x0004000000000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xaaaaaaaaaaaaaaaa, 0x0004000000000000, 0, 3f, x3, 1248,0)

# rs1_val == 18437736874454810623, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x0008000000000000; immval:16; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffdfffffffffffff, 0x0008000000000000, 16, 3f, x3, 1256,0)

# rs1_val == 18428729675200069631, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0000000000000040; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffbfffffffffffff, 0x0000000000000040, 0, 1b, x3, 1264,0)

# rs2_val == 9007199254740992, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x000000000000000d; op2val:0x0020000000000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x000000000000000d, 0x0020000000000000, 0, 1b, x3, 1272,0)

# rs1_val == 18374686479671623679, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x000000000000000b; immval:256; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xfeffffffffffffff, 0x000000000000000b, 256, 3f, x3, 1280,0)

# rs1_val > 0 and rs2_val > 0, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val > 0 , rs2_val == 2048, rs1_val == 36028797018963968
# opcode: bltu, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0000000000000800; immval:16; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0080000000000000, 0x0000000000000800, 16, 3f, x3, 1288,0)

# rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val < 0 , rs2_val == 18446744073709551583, rs1_val == 18446744073701163007
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xffffffffffffffdf; immval:8; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0xffffffffff7fffff, 0xffffffffffffffdf, 8, 1b, x3, 1296,0)

# rs1_val == 256, rs2_val == 18446744073705357311
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0xffffffffffbfffff; immval:64; align:0
TEST_BRANCH_OP(bltu, x5, x10, x11, 0x0000000000000100, 0xffffffffffbfffff, 64, 3f, x3, 1304,0)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 164*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
