
#This assembly file tests the bgeu instruction of the RISC-V I extension for the bgeu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bgeu)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 != rs2, rs1==x3, rs2==x31, rs1_val > 0 and rs2_val > 0, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val < 0 , rs1_val == 18446744073709551551
# opcode: bgeu, op1:x3; op2:x31; op1val:0xffffffffffffffbf; op2val:0x000000000000000e; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x13, x3, x31, 0xffffffffffffffbf, 0x000000000000000e, 1024, 1b, x7, 0,0)

# rs1 == rs2, rs1==x29, rs2==x29, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, rs1_val == 1152921504606846976, rs2_val == 1152921504606846976
# opcode: bgeu, op1:x29; op2:x29; op1val:0x1000000000000000; op2val:0x1000000000000000; immval:64; align:0
TEST_BRANCH_OP(bgeu, x13, x29, x29, 0x1000000000000000, 0x1000000000000000, 64, 3f, x7, 8,0)

# rs1==x23, rs2==x5, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val < 0, rs2_val == 18446462598732840959, rs1_val == 18446462598732840959
# opcode: bgeu, op1:x23; op2:x5; op1val:0xfffeffffffffffff; op2val:0xfffeffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x13, x23, x5, 0xfffeffffffffffff, 0xfffeffffffffffff, 2, 1b, x7, 16,0)

# rs1==x2, rs2==x10, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val > 0 , rs1_val == 131072
# opcode: bgeu, op1:x2; op2:x10; op1val:0x0000000000020000; op2val:0x000000000000000d; immval:16; align:0
TEST_BRANCH_OP(bgeu, x13, x2, x10, 0x0000000000020000, 0x000000000000000d, 16, 3f, x7, 24,0)

# rs1==x14, rs2==x4, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val > 0 , rs2_val == 18446744073709551599
# opcode: bgeu, op1:x14; op2:x4; op1val:0xffffffffffffffbf; op2val:0xffffffffffffffef; immval:8; align:0
TEST_BRANCH_OP(bgeu, x13, x14, x4, 0xffffffffffffffbf, 0xffffffffffffffef, 8, 3f, x7, 32,0)

# rs1==x18, rs2==x22, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val < 0 , rs2_val == 1099511627776, rs1_val == 536870912
# opcode: bgeu, op1:x18; op2:x22; op1val:0x0000000020000000; op2val:0x0000010000000000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x13, x18, x22, 0x0000000020000000, 0x0000010000000000, 4, 1b, x7, 40,0)

# rs1==x31, rs2==x9, rs1_val == 1, rs2_val == 18446744073709486079
# opcode: bgeu, op1:x31; op2:x9; op1val:0x0000000000000001; op2val:0xfffffffffffeffff; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x13, x31, x9, 0x0000000000000001, 0xfffffffffffeffff, 1366, 1b, x7, 48,0)

# rs1==x4, rs2==x24, rs1_val == 2, rs2_val == 18446744073701163007
# opcode: bgeu, op1:x4; op2:x24; op1val:0x0000000000000002; op2val:0xffffffffff7fffff; immval:16; align:0
TEST_BRANCH_OP(bgeu, x13, x4, x24, 0x0000000000000002, 0xffffffffff7fffff, 16, 3f, x7, 56,0)

# rs1==x19, rs2==x8, rs1_val == 4, rs2_val == 137438953472
# opcode: bgeu, op1:x19; op2:x8; op1val:0x0000000000000004; op2val:0x0000002000000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x13, x19, x8, 0x0000000000000004, 0x0000002000000000, 2, 1b, x7, 64,0)

# rs1==x30, rs2==x21, rs1_val == 8, 
# opcode: bgeu, op1:x30; op2:x21; op1val:0x0000000000000008; op2val:0x0000000000000013; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x30, x21, 0x0000000000000008, 0x0000000000000013, 0, 1b, x7, 72,0)

# rs1==x11, rs2==x0, rs1_val == 16, rs2_val == 128
# opcode: bgeu, op1:x11; op2:x0; op1val:0x0000000000000010; op2val:0x0000000000000080; immval:256; align:0
TEST_BRANCH_OP(bgeu, x13, x11, x0, 0x0000000000000010, 0x0000000000000080, 256, 3f, x7, 80,0)

# rs1==x16, rs2==x28, rs1_val == 32, 
# opcode: bgeu, op1:x16; op2:x28; op1val:0x0000000000000020; op2val:0x0000000000000009; immval:16; align:0
TEST_BRANCH_OP(bgeu, x13, x16, x28, 0x0000000000000020, 0x0000000000000009, 16, 3f, x7, 88,0)

# rs1==x1, rs2==x26, rs1_val == 64, rs2_val == 18446744073709551607
# opcode: bgeu, op1:x1; op2:x26; op1val:0x0000000000000040; op2val:0xfffffffffffffff7; immval:6; align:0
TEST_BRANCH_OP(bgeu, x13, x1, x26, 0x0000000000000040, 0xfffffffffffffff7, 6, 3f, x7, 96,0)

# rs1==x28, rs2==x6, rs1_val == 128, rs2_val == 18446744069414584319
# opcode: bgeu, op1:x28; op2:x6; op1val:0x0000000000000080; op2val:0xfffffffeffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x13, x28, x6, 0x0000000000000080, 0xfffffffeffffffff, 8, 3f, x7, 104,0)

# rs1==x26, rs2==x17, rs1_val == 256, rs2_val == 18446744073709535231
# opcode: bgeu, op1:x26; op2:x17; op1val:0x0000000000000100; op2val:0xffffffffffffbfff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x13, x26, x17, 0x0000000000000100, 0xffffffffffffbfff, 6, 1b, x7, 112,0)

# rs1==x15, rs2==x12, rs1_val == 512, 
# opcode: bgeu, op1:x15; op2:x12; op1val:0x0000000000000200; op2val:0x0000000000000009; immval:32; align:0
TEST_BRANCH_OP(bgeu, x13, x15, x12, 0x0000000000000200, 0x0000000000000009, 32, 3f, x7, 120,0)

# rs1==x24, rs2==x16, rs1_val == 1024, rs2_val == 18446743523953737727
# opcode: bgeu, op1:x24; op2:x16; op1val:0x0000000000000400; op2val:0xffffff7fffffffff; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x13, x24, x16, 0x0000000000000400, 0xffffff7fffffffff, 1366, 1b, x7, 128,0)

# rs1==x27, rs2==x23, rs1_val == 2048, rs2_val == 18445618173802708991
# opcode: bgeu, op1:x27; op2:x23; op1val:0x0000000000000800; op2val:0xfffbffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x27, x23, 0x0000000000000800, 0xfffbffffffffffff, 0, 3f, x7, 136,0)

# rs1==x9, rs2==x30, rs1_val == 4096, rs2_val == 18446744073692774399
# opcode: bgeu, op1:x9; op2:x30; op1val:0x0000000000001000; op2val:0xfffffffffeffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x9, x30, 0x0000000000001000, 0xfffffffffeffffff, 1024, 1b, x7, 144,0)

# rs1==x22, rs2==x2, rs1_val == 8192, rs2_val == 2305843009213693952
# opcode: bgeu, op1:x22; op2:x2; op1val:0x0000000000002000; op2val:0x2000000000000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x22, x2, 0x0000000000002000, 0x2000000000000000, 8, 3f, x7, 152,0)

# rs1==x13, rs2==x15, rs1_val == 16384, 
# opcode: bgeu, op1:x13; op2:x15; op1val:0x0000000000004000; op2val:0xffffff7fffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x13, x15, 0x0000000000004000, 0xffffff7fffffffff, 6, 1b, x7, 160,0)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x10, rs2==x18, rs1_val == 32768, rs2_val == 68719476736
# opcode: bgeu, op1:x10; op2:x18; op1val:0x0000000000008000; op2val:0x0000001000000000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x18, 0x0000000000008000, 0x0000001000000000, 6, 1b, x2, 0,0)

# rs1==x7, rs2==x3, rs1_val == 65536, rs2_val == 2251799813685248
# opcode: bgeu, op1:x7; op2:x3; op1val:0x0000000000010000; op2val:0x0008000000000000; immval:512; align:0
TEST_BRANCH_OP(bgeu, x4, x7, x3, 0x0000000000010000, 0x0008000000000000, 512, 3f, x2, 8,0)

# rs1==x8, rs2==x13, rs1_val == 262144, rs2_val == 281474976710656
# opcode: bgeu, op1:x8; op2:x13; op1val:0x0000000000040000; op2val:0x0001000000000000; immval:256; align:0
TEST_BRANCH_OP(bgeu, x4, x8, x13, 0x0000000000040000, 0x0001000000000000, 256, 3f, x2, 16,0)

# rs1==x5, rs2==x25, rs1_val == 524288, rs2_val == 70368744177664
# opcode: bgeu, op1:x5; op2:x25; op1val:0x0000000000080000; op2val:0x0000400000000000; immval:32; align:0
TEST_BRANCH_OP(bgeu, x4, x5, x25, 0x0000000000080000, 0x0000400000000000, 32, 3f, x2, 24,0)

# rs1==x20, rs2==x1, rs1_val == 1048576, rs2_val == 18158513697557839871
# opcode: bgeu, op1:x20; op2:x1; op1val:0x0000000000100000; op2val:0xfbffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x20, x1, 0x0000000000100000, 0xfbffffffffffffff, 8, 3f, x2, 32,0)

# rs1==x0, rs2==x7, rs1_val == 2097152, 
# opcode: bgeu, op1:x0; op2:x7; op1val:0x0000000000200000; op2val:0xffffffffffffffef; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x0, x7, 0x0000000000200000, 0xffffffffffffffef, 6, 1b, x2, 40,0)

# rs1==x21, rs2==x20, rs1_val == 4194304, rs2_val == 64
# opcode: bgeu, op1:x21; op2:x20; op1val:0x0000000000400000; op2val:0x0000000000000040; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x21, x20, 0x0000000000400000, 0x0000000000000040, 0, 1b, x2, 48,0)

# rs1==x12, rs2==x27, rs1_val == 8388608, rs2_val == 576460752303423488
# opcode: bgeu, op1:x12; op2:x27; op1val:0x0000000000800000; op2val:0x0800000000000000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x12, x27, 0x0000000000800000, 0x0800000000000000, 4, 1b, x2, 56,0)

# rs1==x6, rs2==x11, rs1_val == 16777216, rs2_val == 36028797018963968
# opcode: bgeu, op1:x6; op2:x11; op1val:0x0000000001000000; op2val:0x0080000000000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x6, x11, 0x0000000001000000, 0x0080000000000000, 8, 1b, x2, 64,0)

# rs1==x17, rs2==x19, rs1_val == 33554432, rs2_val == 18446744073709547519
# opcode: bgeu, op1:x17; op2:x19; op1val:0x0000000002000000; op2val:0xffffffffffffefff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x4, x17, x19, 0x0000000002000000, 0xffffffffffffefff, 64, 3f, x2, 72,0)

# rs1==x25, rs2==x14, rs1_val == 67108864, rs2_val == 18446744073709551551
# opcode: bgeu, op1:x25; op2:x14; op1val:0x0000000004000000; op2val:0xffffffffffffffbf; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x25, x14, 0x0000000004000000, 0xffffffffffffffbf, 1024, 3f, x2, 80,0)

# rs1_val == 134217728, rs2_val == 18446744073575333887
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0xfffffffff7ffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000008000000, 0xfffffffff7ffffff, 1024, 1b, x2, 88,0)

# rs1_val == 268435456, rs2_val == 2
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000000000000002; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000010000000, 0x0000000000000002, 4, 1b, x2, 96,0)

# rs1_val == 1073741824, rs2_val == 2048
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000000000000800; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000040000000, 0x0000000000000800, 1366, 1b, x2, 104,0)

# rs1_val == 2147483648, rs2_val == 4294967296
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0000000100000000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000080000000, 0x0000000100000000, 6, 3f, x2, 112,0)

# rs1_val == 4294967296, rs2_val == 8192
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000000000002000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000100000000, 0x0000000000002000, 4, 1b, x2, 120,0)

# rs1_val == 8589934592, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x0000000000000005; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000200000000, 0x0000000000000005, 2, 1b, x2, 128,0)

# rs1_val == 17179869184, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0x0000000000002000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000400000000, 0x0000000000002000, 6, 1b, x2, 136,0)

# rs1_val == 34359738368, rs2_val == 18410715276690587647
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xff7fffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000800000000, 0xff7fffffffffffff, 8, 1b, x2, 144,0)

# rs1_val == 68719476736, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0000000000000005; immval:128; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000001000000000, 0x0000000000000005, 128, 3f, x2, 152,0)

# rs1_val == 137438953472, rs2_val == 256
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000000000000100; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000002000000000, 0x0000000000000100, 2, 3f, x2, 160,0)

# rs1_val == 274877906944, rs2_val == 18446603336221196287
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xffff7fffffffffff; immval:256; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000004000000000, 0xffff7fffffffffff, 256, 3f, x2, 168,0)

# rs1_val == 549755813888, rs2_val == 17870283321406128127
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xf7ffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000008000000000, 0xf7ffffffffffffff, 4, 1b, x2, 176,0)

# rs1_val == 1099511627776, rs2_val == 6148914691236517205
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0x5555555555555555; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000010000000000, 0x5555555555555555, 4, 1b, x2, 184,0)

# rs1_val == 2199023255552, rs2_val == 18428729675200069631
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xffbfffffffffffff; immval:256; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000020000000000, 0xffbfffffffffffff, 256, 3f, x2, 192,0)

# rs1_val == 4398046511104, rs2_val == 18446744073709550591
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xfffffffffffffbff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000040000000000, 0xfffffffffffffbff, 1024, 3f, x2, 200,0)

# rs1_val == 8796093022208, rs2_val == 1048576
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0x0000000000100000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000080000000000, 0x0000000000100000, 6, 1b, x2, 208,0)

# rs1_val == 17592186044416, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000000000000100; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000100000000000, 0x0000000000000100, 4, 3f, x2, 216,0)

# rs1_val == 35184372088832, rs2_val == 2199023255552
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0x0000020000000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000200000000000, 0x0000020000000000, 0, 3f, x2, 224,0)

# rs1_val == 70368744177664, rs2_val == 1
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000000000000001; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000400000000000, 0x0000000000000001, 6, 3f, x2, 232,0)

# rs1_val == 140737488355328, rs2_val == 72057594037927936
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0x0100000000000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000800000000000, 0x0100000000000000, 2, 1b, x2, 240,0)

# rs1_val == 281474976710656, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xffffffffffffefff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0001000000000000, 0xffffffffffffefff, 2, 1b, x2, 248,0)

# rs1_val == 562949953421312, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x000000000000000f; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0002000000000000, 0x000000000000000f, 8, 1b, x2, 256,0)

# rs1_val == 1125899906842624, rs2_val == 18442240474082181119
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xffefffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0004000000000000, 0xffefffffffffffff, 4, 3f, x2, 264,0)

# rs1_val == 2251799813685248, rs2_val == 35184372088832
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000200000000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0008000000000000, 0x0000200000000000, 0, 3f, x2, 272,0)

# rs1_val == 4503599627370496, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0000000000000011; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0010000000000000, 0x0000000000000011, 0, 1b, x2, 280,0)

# rs1_val == 9007199254740992, rs2_val == 18446744073172680703
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xffffffffdfffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0020000000000000, 0xffffffffdfffffff, 1024, 3f, x2, 288,0)

# rs1_val == 18014398509481984, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xfffbffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0040000000000000, 0xfffbffffffffffff, 4, 1b, x2, 296,0)

# rs1_val == 36028797018963968, rs2_val == 12297829382473034410
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0xaaaaaaaaaaaaaaaa; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0080000000000000, 0xaaaaaaaaaaaaaaaa, 1024, 3f, x2, 304,0)

# rs1_val == 72057594037927936, rs2_val == 4194304
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0x0000000000400000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0100000000000000, 0x0000000000400000, 1024, 1b, x2, 312,0)

# rs1_val == 144115188075855872, rs2_val == 18446744004990074879
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0xffffffefffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0200000000000000, 0xffffffefffffffff, 6, 1b, x2, 320,0)

# rs1_val == 288230376151711744, rs2_val == 18446744071562067967
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0xffffffff7fffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0400000000000000, 0xffffffff7fffffff, 1024, 1b, x2, 328,0)

# rs1_val == 576460752303423488, rs2_val == 18446741874686296063
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xfffffdffffffffff; immval:16; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0800000000000000, 0xfffffdffffffffff, 16, 3f, x2, 336,0)

# rs1_val == 2305843009213693952, rs2_val == 18446743798831644671
# opcode: bgeu, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xffffffbfffffffff; immval:16; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x2000000000000000, 0xffffffbfffffffff, 16, 3f, x2, 344,0)

# rs1_val == 4611686018427387904, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x0008000000000000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x4000000000000000, 0x0008000000000000, 4, 3f, x2, 352,0)

# rs1_val == 9223372036854775808, rs2_val == 17592186044416
# opcode: bgeu, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0x0000100000000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x8000000000000000, 0x0000100000000000, 8, 3f, x2, 360,0)

# rs1_val == 18446744073709551614, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0x0000000100000000; immval:32; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffffe, 0x0000000100000000, 32, 3f, x2, 368,0)

# rs1_val == 18446744073709551613, rs2_val == 131072
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x0000000000020000; immval:256; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffffd, 0x0000000000020000, 256, 3f, x2, 376,0)

# rs1_val == 18446744073709551611, rs2_val == 65536
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0000000000010000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffffb, 0x0000000000010000, 8, 3f, x2, 384,0)

# rs1_val == 18446744073709551607, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x000000000000000f; immval:10; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffff7, 0x000000000000000f, 10, 1b, x2, 392,0)

# rs1_val == 18446744073709551599, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0x0000001000000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffffef, 0x0000001000000000, 8, 3f, x2, 400,0)

# rs1_val == 18446744073709551583, rs2_val == 18446744056529682431
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0xfffffffbffffffff; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffffdf, 0xfffffffbffffffff, 1366, 1b, x2, 408,0)

# rs1_val == 18446744073709551487, rs2_val == 18446744073709027327
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xfffffffffff7ffff; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffff7f, 0xfffffffffff7ffff, 1366, 1b, x2, 416,0)

# rs1_val == 18446744073709551359, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xffffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffeff, 0xffffffffffffffff, 8, 1b, x2, 424,0)

# rs1_val == 18446744073709551103, rs2_val == 16384
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000000000004000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffdff, 0x0000000000004000, 2, 1b, x2, 432,0)

# rs1_val == 18446744073709550591, rs2_val == 512
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000000000000200; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffbff, 0x0000000000000200, 4, 1b, x2, 440,0)

# rs1_val == 18446744073709549567, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x5555555555555555; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffff7ff, 0x5555555555555555, 4, 1b, x2, 448,0)

# rs2_val == 18374686479671623679, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0xfeffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000003, 0xfeffffffffffffff, 0, 1b, x2, 456,0)

# rs2_val == 18302628885633695743, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000080000; op2val:0xfdffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000080000, 0xfdffffffffffffff, 4, 3f, x2, 464,0)

# rs2_val == 17293822569102704639, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000007; op2val:0xefffffffffffffff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000007, 0xefffffffffffffff, 64, 3f, x2, 472,0)

# rs2_val == 16140901064495857663, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0xdfffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffeff, 0xdfffffffffffffff, 2, 1b, x2, 480,0)

# rs2_val == 13835058055282163711, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0xbfffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000040, 0xbfffffffffffffff, 6, 3f, x2, 488,0)

# rs2_val == 9223372036854775807, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x7fffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0010000000000000, 0x7fffffffffffffff, 6, 3f, x2, 496,0)

# rs1_val == 18446744073709547519, rs2_val == 134217728
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000000008000000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffefff, 0x0000000008000000, 6, 1b, x2, 504,0)

# rs1_val == 18446744073709543423, rs2_val == 18446744073709518847
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xffffffffffff7fff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffdfff, 0xffffffffffff7fff, 6, 3f, x2, 512,0)

# rs1_val == 18446744073709535231, rs2_val == 8388608
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0000000000800000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffbfff, 0x0000000000800000, 1024, 3f, x2, 520,0)

# rs1_val == 18446744073709518847, rs2_val == 18446744073709549567
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0xfffffffffffff7ff; immval:128; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffff7fff, 0xfffffffffffff7ff, 128, 3f, x2, 528,0)

# rs1_val == 18446744073709486079, rs2_val == 288230376151711744
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0400000000000000; immval:10; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffeffff, 0x0400000000000000, 10, 1b, x2, 536,0)

# rs1_val == 18446744073709420543, rs2_val == 18446744073709551614
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xfffffffffffffffe; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffdffff, 0xfffffffffffffffe, 0, 1b, x2, 544,0)

# rs1_val == 18446744073709289471, rs2_val == 2147483648
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0000000080000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffbffff, 0x0000000080000000, 0, 1b, x2, 552,0)

# rs1_val == 18446744073709027327, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0xffefffffffffffff; immval:256; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffff7ffff, 0xffefffffffffffff, 256, 3f, x2, 560,0)

# rs1_val == 18446744073708503039, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x000000000000000b; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffefffff, 0x000000000000000b, 8, 1b, x2, 568,0)

# rs1_val == 18446744073707454463, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xbfffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffdfffff, 0xbfffffffffffffff, 6, 1b, x2, 576,0)

# rs1_val == 18446744073705357311, rs2_val == 18446735277616529407
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0xfffff7ffffffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffbfffff, 0xfffff7ffffffffff, 4, 1b, x2, 584,0)

# rs1_val == 18446744073701163007, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x0000000000800000; immval:16; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffff7fffff, 0x0000000000800000, 16, 3f, x2, 592,0)

# rs1_val == 18446744073692774399, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x0008000000000000; immval:256; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffeffffff, 0x0008000000000000, 256, 3f, x2, 600,0)

# rs1_val == 18446744073675997183, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xfffffffffffffbff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffdffffff, 0xfffffffffffffbff, 0, 1b, x2, 608,0)

# rs1_val == 18446744073642442751, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xffffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffbffffff, 0xffffffffffffffff, 0, 3f, x2, 616,0)

# rs1_val == 18446744073575333887, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0000000000000003; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffff7ffffff, 0x0000000000000003, 2, 3f, x2, 624,0)

# rs1_val == 18446744073441116159, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0000000000000200; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffefffffff, 0x0000000000000200, 1366, 1b, x2, 632,0)

# rs1_val == 18446744073172680703, rs2_val == 18446744073642442751
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xfffffffffbffffff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffdfffffff, 0xfffffffffbffffff, 2, 1b, x2, 640,0)

# rs1_val == 18446744072635809791, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000000000000011; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffbfffffff, 0x0000000000000011, 1366, 1b, x2, 648,0)

# rs1_val == 18446744071562067967, rs2_val == 562949953421312
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0002000000000000; immval:512; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffff7fffffff, 0x0002000000000000, 512, 3f, x2, 656,0)

# rs1_val == 18446744069414584319, rs2_val == 18014398509481984
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0x0040000000000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffeffffffff, 0x0040000000000000, 2, 3f, x2, 664,0)

# rs1_val == 18446744065119617023, rs2_val == 18446744073709420543
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0xfffffffffffdffff; immval:128; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffdffffffff, 0xfffffffffffdffff, 128, 3f, x2, 672,0)

# rs1_val == 18446744056529682431, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000000000000005; immval:16; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffbffffffff, 0x0000000000000005, 16, 3f, x2, 680,0)

# rs1_val == 18446744039349813247, rs2_val == 268435456
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000010000000; immval:10; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffff7ffffffff, 0x0000000010000000, 10, 1b, x2, 688,0)

# rs1_val == 18446744004990074879, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0xfffff7ffffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffefffffffff, 0xfffff7ffffffffff, 6, 3f, x2, 696,0)

# rs1_val == 18446743936270598143, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0000000000000002; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffdfffffffff, 0x0000000000000002, 1366, 1b, x2, 704,0)

# rs1_val == 18446743798831644671, rs2_val == 274877906944
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000004000000000; immval:10; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffbfffffffff, 0x0000004000000000, 10, 1b, x2, 712,0)

# rs1_val == 18446743523953737727, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0xff7fffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffff7fffffffff, 0xff7fffffffffffff, 2, 1b, x2, 720,0)

# rs1_val == 18446742974197923839, rs2_val == 16777216
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x0000000001000000; immval:256; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffeffffffffff, 0x0000000001000000, 256, 3f, x2, 728,0)

# rs1_val == 18446741874686296063, rs2_val == 18446726481523507199
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xffffefffffffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffdffffffffff, 0xffffefffffffffff, 4, 1b, x2, 736,0)

# rs1_val == 18446739675663040511, rs2_val == 144115188075855872
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0200000000000000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffbffffffffff, 0x0200000000000000, 1024, 1b, x2, 744,0)

# rs1_val == 18446735277616529407, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xf7ffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffff7ffffffffff, 0xf7ffffffffffffff, 8, 1b, x2, 752,0)

# rs1_val == 18446726481523507199, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000000000002000; immval:64; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffefffffffffff, 0x0000000000002000, 64, 3f, x2, 760,0)

# rs1_val == 18446708889337462783, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0xfffffffffffffffe; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffdfffffffffff, 0xfffffffffffffffe, 6, 1b, x2, 768,0)

# rs1_val == 18446673704965373951, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0x0000400000000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffbfffffffffff, 0x0000400000000000, 8, 3f, x2, 776,0)

# rs1_val == 18446603336221196287, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0000000008000000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffff7fffffffffff, 0x0000000008000000, 6, 1b, x2, 784,0)

# rs1_val == 18446181123756130303, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xffffffffffffffbf; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffdffffffffffff, 0xffffffffffffffbf, 0, 3f, x2, 792,0)

# rs1_val == 18445618173802708991, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0000000000010000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffbffffffffffff, 0x0000000000010000, 6, 3f, x2, 800,0)

# rs1_val == 18444492273895866367, rs2_val == 16
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000000000000010; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfff7ffffffffffff, 0x0000000000000010, 6, 1b, x2, 808,0)

# rs1_val == 18442240474082181119, rs2_val == 18446744073675997183
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xfffffffffdffffff; immval:256; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffefffffffffffff, 0xfffffffffdffffff, 256, 3f, x2, 816,0)

# rs1_val == 18302628885633695743, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x0000000000000800; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfdffffffffffffff, 0x0000000000000800, 8, 1b, x2, 824,0)

# rs1_val == 18158513697557839871, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0xfffffffffffff7ff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfbffffffffffffff, 0xfffffffffffff7ff, 4, 1b, x2, 832,0)

# rs1_val == 17870283321406128127, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0xfffffffeffffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xf7ffffffffffffff, 0xfffffffeffffffff, 4, 3f, x2, 840,0)

# rs1_val == 17293822569102704639, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0x0000000000000006; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xefffffffffffffff, 0x0000000000000006, 1024, 3f, x2, 848,0)

# rs1_val == 16140901064495857663, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0x0000400000000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xdfffffffffffffff, 0x0000400000000000, 8, 1b, x2, 856,0)

# rs1_val == 13835058055282163711, rs2_val == 18446744073707454463
# opcode: bgeu, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0xffffffffffdfffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xbfffffffffffffff, 0xffffffffffdfffff, 4, 1b, x2, 864,0)

# rs1_val == 9223372036854775807, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0000001000000000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x7fffffffffffffff, 0x0000001000000000, 6, 3f, x2, 872,0)

# rs1_val == 6148914691236517205, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x5555555555555555; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x5555555555555555, 0x5555555555555555, 4, 1b, x2, 880,0)

# rs1_val == 12297829382473034410, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xfffffffffffff7ff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xfffffffffffff7ff, 1024, 1b, x2, 888,0)

# rs2_val == 4, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0x0000000000000004; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x7fffffffffffffff, 0x0000000000000004, 0, 3f, x2, 896,0)

# rs2_val == 8, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0x0000000000000008; immval:16; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffbffffffffff, 0x0000000000000008, 16, 3f, x2, 904,0)

# rs2_val == 32, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0000000000000020; immval:512; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffeffffffffffff, 0x0000000000000020, 512, 3f, x2, 912,0)

# rs2_val == 1024, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000011; op2val:0x0000000000000400; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000011, 0x0000000000000400, 8, 1b, x2, 920,0)

# rs2_val == 4096, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0x0000000000001000; immval:128; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffdfffffff, 0x0000000000001000, 128, 3f, x2, 928,0)

# rs2_val == 32768, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000000000008000; immval:10; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffff7, 0x0000000000008000, 10, 1b, x2, 936,0)

# rs2_val == 262144, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000000000040000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0800000000000000, 0x0000000000040000, 6, 3f, x2, 944,0)

# rs2_val == 524288, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000000000080000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000400000000000, 0x0000000000080000, 0, 3f, x2, 952,0)

# rs2_val == 2097152, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x000000000000000d; op2val:0x0000000000200000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x000000000000000d, 0x0000000000200000, 4, 3f, x2, 960,0)

# rs2_val == 33554432, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0000000002000000; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffdffff, 0x0000000002000000, 1366, 1b, x2, 968,0)

# rs2_val == 67108864, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0000000004000000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffeffff, 0x0000000004000000, 4, 1b, x2, 976,0)

# rs2_val == 536870912, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000080000; op2val:0x0000000020000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000080000, 0x0000000020000000, 8, 1b, x2, 984,0)

# rs2_val == 1073741824, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0x0000000040000000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000008, 0x0000000040000000, 4, 3f, x2, 992,0)

# rs2_val == 8589934592, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0x0000000200000000; immval:64; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0001000000000000, 0x0000000200000000, 64, 3f, x2, 1000,0)

# rs2_val == 17179869184, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x0000000400000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffdffffffffff, 0x0000000400000000, 2, 3f, x2, 1008,0)

# rs2_val == 34359738368, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000004; op2val:0x0000000800000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000004, 0x0000000800000000, 8, 3f, x2, 1016,0)

# rs2_val == 549755813888, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000008000000000; immval:32; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0800000000000000, 0x0000008000000000, 32, 3f, x2, 1024,0)

# rs2_val == 4398046511104, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x0000040000000000; immval:32; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffdfff, 0x0000040000000000, 32, 3f, x2, 1032,0)

# rs2_val == 8796093022208, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x0000080000000000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffffffbfff, 0x0000080000000000, 1024, 3f, x2, 1040,0)

# rs2_val == 140737488355328, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0x0000800000000000; immval:128; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000080, 0x0000800000000000, 128, 3f, x2, 1048,0)

# rs2_val == 4611686018427387904, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x4000000000000000; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffbfffffff, 0x4000000000000000, 1366, 1b, x2, 1056,0)

# rs2_val == 9223372036854775808, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000200; op2val:0x8000000000000000; immval:10; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000200, 0x8000000000000000, 10, 1b, x2, 1064,0)

# rs2_val == 18446744073709551613, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0xfffffffffffffffd; immval:128; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000020, 0xfffffffffffffffd, 128, 3f, x2, 1072,0)

# rs2_val == 18446744073709551611, rs1_val == 18410715276690587647
# opcode: bgeu, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0xfffffffffffffffb; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xff7fffffffffffff, 0xfffffffffffffffb, 1024, 3f, x2, 1080,0)

# rs2_val == 18446744073709551583, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0xffffffffffffffdf; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xdfffffffffffffff, 0xffffffffffffffdf, 6, 3f, x2, 1088,0)

# rs2_val == 18446744073709551487, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000000; op2val:0xffffffffffffff7f; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 4, 1b, x2, 1096,0)

# rs2_val == 18446744073709551359, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000002; op2val:0xfffffffffffffeff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000002, 0xfffffffffffffeff, 8, 3f, x2, 1104,0)

# rs2_val == 18446744073709551103, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x000000000000000c; op2val:0xfffffffffffffdff; immval:32; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x000000000000000c, 0xfffffffffffffdff, 32, 3f, x2, 1112,0)

# rs2_val == 18446744073709543423, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0xffffffffffffdfff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffbffff, 0xffffffffffffdfff, 10, 1b, x2, 1120,0)

# rs2_val == 4503599627370496, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0x0010000000000000; immval:64; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000001000000000, 0x0010000000000000, 64, 3f, x2, 1128,0)

# rs2_val == 18446744073709289471, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0xfffffffffffbffff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xdfffffffffffffff, 0xfffffffffffbffff, 64, 3f, x2, 1136,0)

# rs2_val == 18437736874454810623, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xffdfffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffffff7, 0xffdfffffffffffff, 512, 3f, x2, 1144,0)

# rs2_val == 18446744073708503039, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0xffffffffffefffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000001000000, 0xffffffffffefffff, 8, 3f, x2, 1152,0)

# rs2_val == 18446744073705357311, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0xffffffffffbfffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000010000, 0xffffffffffbfffff, 1024, 1b, x2, 1160,0)

# rs2_val == 18446744073441116159, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0xffffffffefffffff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000006, 0xffffffffefffffff, 64, 3f, x2, 1168,0)

# rs2_val == 18446744072635809791, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0xffffffffbfffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x7fffffffffffffff, 0xffffffffbfffffff, 6, 3f, x2, 1176,0)

# rs2_val == 18446744065119617023, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0xfffffffdffffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffff7fffffff, 0xfffffffdffffffff, 0, 3f, x2, 1184,0)

# rs2_val == 18446744039349813247, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000020000; op2val:0xfffffff7ffffffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000020000, 0xfffffff7ffffffff, 10, 1b, x2, 1192,0)

# rs2_val == 18446743936270598143, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000400; op2val:0xffffffdfffffffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000400, 0xffffffdfffffffff, 10, 1b, x2, 1200,0)

# rs2_val == 18446742974197923839, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x000000000000000c; op2val:0xfffffeffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x000000000000000c, 0xfffffeffffffffff, 1024, 1b, x2, 1208,0)

# rs1_val == 18437736874454810623, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0xfffffffffbffffff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffdfffffffffffff, 0xfffffffffbffffff, 2, 3f, x2, 1216,0)

# rs2_val == 18446739675663040511, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xfffffbffffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000080000000000, 0xfffffbffffffffff, 8, 1b, x2, 1224,0)

# rs2_val == 18446708889337462783, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x000000000000000b; op2val:0xffffdfffffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x000000000000000b, 0xffffdfffffffffff, 6, 1b, x2, 1232,0)

# rs2_val == 18446673704965373951, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000012; op2val:0xffffbfffffffffff; immval:512; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000012, 0xffffbfffffffffff, 512, 3f, x2, 1240,0)

# rs2_val == 18446181123756130303, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000010; op2val:0xfffdffffffffffff; immval:32; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000010, 0xfffdffffffffffff, 32, 3f, x2, 1248,0)

# rs2_val == 1125899906842624, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0004000000000000; immval:16; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffefffffffff, 0x0004000000000000, 16, 3f, x2, 1256,0)

# rs2_val == 18444492273895866367, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0xfff7ffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffffffffefffffff, 0xfff7ffffffffffff, 6, 3f, x2, 1264,0)

# rs1_val == 18428729675200069631, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0x0010000000000000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xffbfffffffffffff, 0x0010000000000000, 6, 3f, x2, 1272,0)

# rs2_val == 9007199254740992, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0020000000000000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfffffffffffeffff, 0x0020000000000000, 4, 1b, x2, 1280,0)

# rs1_val == 18374686479671623679, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0xffdfffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0xfeffffffffffffff, 0xffdfffffffffffff, 2, 3f, x2, 1288,0)

# rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, rs1_val == 1152921504606846976, rs2_val == 1152921504606846976
# opcode: bgeu, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x1000000000000000; immval:64; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x1000000000000000, 0x1000000000000000, 64, 3f, x2, 1296,0)

# rs1_val == 16, rs2_val == 128
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000000010; op2val:0x0000000000000080; immval:256; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000000010, 0x0000000000000080, 256, 3f, x2, 1304,0)

# rs1_val == 2097152, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0xffffffffffffffef; immval:6; align:0
TEST_BRANCH_OP(bgeu, x4, x10, x11, 0x0000000000200000, 0xffffffffffffffef, 6, 1b, x2, 1312,0)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x7_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 165*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
