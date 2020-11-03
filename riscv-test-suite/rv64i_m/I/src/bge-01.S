
#This assembly file tests the bge instruction of the RISC-V I extension for the bge covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bge)

RVTEST_SIGBASE( x12,signature_x12_1)

# rs1 != rs2, rs1==x18, rs2==x26, rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val == 8796093022208, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == 8
# opcode: bge, op1:x18; op2:x26; op1val:0x0000080000000000; op2val:0x0000000000000008; immval:128; align:0
TEST_BRANCH_OP(bge, x19, x18, x26, 0x0000080000000000, 0x0000000000000008, 128, 3f, x12, 0,0)

# rs1 == rs2, rs1==x5, rs2==x5, rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs1_val == 72057594037927936, rs2_val == -18014398509481985, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0
# opcode: bge, op1:x5; op2:x5; op1val:0x0100000000000000; op2val:0xffbfffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x19, x5, x5, 0x0100000000000000, 0xffbfffffffffffff, 0, 1b, x12, 8,0)

# rs1==x31, rs2==x28, rs1_val < 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == -65, rs1_val == -4194305
# opcode: bge, op1:x31; op2:x28; op1val:0xffffffffffbfffff; op2val:0xffffffffffffffbf; immval:512; align:0
TEST_BRANCH_OP(bge, x19, x31, x28, 0xffffffffffbfffff, 0xffffffffffffffbf, 512, 3f, x12, 16,0)

# rs1==x20, rs2==x14, rs1_val < 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs1_val == -72057594037927937, rs2_val == 4
# opcode: bge, op1:x20; op2:x14; op1val:0xfeffffffffffffff; op2val:0x0000000000000004; immval:0; align:0
TEST_BRANCH_OP(bge, x19, x20, x14, 0xfeffffffffffffff, 0x0000000000000004, 0, 1b, x12, 24,0)

# rs1==x26, rs2==x11, rs1_val == rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs2_val == 2097152, rs1_val == 2097152
# opcode: bge, op1:x26; op2:x11; op1val:0x0000000000200000; op2val:0x0000000000200000; immval:16; align:0
TEST_BRANCH_OP(bge, x19, x26, x11, 0x0000000000200000, 0x0000000000200000, 16, 3f, x12, 32,0)

# rs1==x6, rs2==x17, rs1_val == rs2_val and imm_val < 0 and imm_val & 0x03 == 0, 
# opcode: bge, op1:x6; op2:x17; op1val:0xfffffffffffffffc; op2val:0xfffffffffffffffc; immval:4; align:0
TEST_BRANCH_OP(bge, x19, x6, x17, 0xfffffffffffffffc, 0xfffffffffffffffc, 4, 1b, x12, 40,0)

# rs1==x28, rs2==x16, rs1_val == 1, rs2_val == 8589934592
# opcode: bge, op1:x28; op2:x16; op1val:0x0000000000000001; op2val:0x0000000200000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x19, x28, x16, 0x0000000000000001, 0x0000000200000000, 1024, 1b, x12, 48,0)

# rs1==x25, rs2==x13, rs1_val == 2, rs2_val == -9007199254740993
# opcode: bge, op1:x25; op2:x13; op1val:0x0000000000000002; op2val:0xffdfffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x19, x25, x13, 0x0000000000000002, 0xffdfffffffffffff, 4, 3f, x12, 56,0)

# rs1==x22, rs2==x30, rs1_val == 4, rs2_val == -1048577
# opcode: bge, op1:x22; op2:x30; op1val:0x0000000000000004; op2val:0xffffffffffefffff; immval:128; align:0
TEST_BRANCH_OP(bge, x19, x22, x30, 0x0000000000000004, 0xffffffffffefffff, 128, 3f, x12, 64,0)

# rs1==x9, rs2==x4, rs1_val == 8, rs2_val == -17179869185
# opcode: bge, op1:x9; op2:x4; op1val:0x0000000000000008; op2val:0xfffffffbffffffff; immval:128; align:0
TEST_BRANCH_OP(bge, x19, x9, x4, 0x0000000000000008, 0xfffffffbffffffff, 128, 3f, x12, 72,0)

# rs1==x8, rs2==x23, rs1_val == 16, 
# opcode: bge, op1:x8; op2:x23; op1val:0x0000000000000010; op2val:0xfffffffffffffff8; immval:0; align:0
TEST_BRANCH_OP(bge, x19, x8, x23, 0x0000000000000010, 0xfffffffffffffff8, 0, 1b, x12, 80,0)

# rs1==x21, rs2==x8, rs1_val == 32, rs2_val == -2305843009213693953
# opcode: bge, op1:x21; op2:x8; op1val:0x0000000000000020; op2val:0xdfffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x19, x21, x8, 0x0000000000000020, 0xdfffffffffffffff, 8, 3f, x12, 88,0)

# rs1==x0, rs2==x3, rs1_val == 64, rs2_val == -131073
# opcode: bge, op1:x0; op2:x3; op1val:0x0000000000000040; op2val:0xfffffffffffdffff; immval:32; align:0
TEST_BRANCH_OP(bge, x19, x0, x3, 0x0000000000000040, 0xfffffffffffdffff, 32, 3f, x12, 96,0)

# rs1==x15, rs2==x31, rs1_val == 128, rs2_val == -33554433
# opcode: bge, op1:x15; op2:x31; op1val:0x0000000000000080; op2val:0xfffffffffdffffff; immval:1366; align:0
TEST_BRANCH_OP(bge, x19, x15, x31, 0x0000000000000080, 0xfffffffffdffffff, 1366, 1b, x12, 104,0)

# rs1==x30, rs2==x2, rs1_val == 256, rs2_val == 274877906944
# opcode: bge, op1:x30; op2:x2; op1val:0x0000000000000100; op2val:0x0000004000000000; immval:6; align:0
TEST_BRANCH_OP(bge, x19, x30, x2, 0x0000000000000100, 0x0000004000000000, 6, 3f, x12, 112,0)

# rs1==x7, rs2==x0, rs1_val == 512, rs2_val == -4611686018427387905
# opcode: bge, op1:x7; op2:x0; op1val:0x0000000000000200; op2val:0xbfffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x19, x7, x0, 0x0000000000000200, 0xbfffffffffffffff, 0, 1b, x12, 120,0)

# rs1==x3, rs2==x18, rs1_val == 1024, rs2_val == -9223372036854775808
# opcode: bge, op1:x3; op2:x18; op1val:0x0000000000000400; op2val:0x8000000000000000; immval:2; align:0
TEST_BRANCH_OP(bge, x19, x3, x18, 0x0000000000000400, 0x8000000000000000, 2, 3f, x12, 128,0)

# rs1==x2, rs2==x27, rs1_val == 2048, rs2_val == 4096
# opcode: bge, op1:x2; op2:x27; op1val:0x0000000000000800; op2val:0x0000000000001000; immval:1024; align:0
TEST_BRANCH_OP(bge, x19, x2, x27, 0x0000000000000800, 0x0000000000001000, 1024, 1b, x12, 136,0)

# rs1==x4, rs2==x10, rs1_val == 4096, rs2_val == -9
# opcode: bge, op1:x4; op2:x10; op1val:0x0000000000001000; op2val:0xfffffffffffffff7; immval:8; align:0
TEST_BRANCH_OP(bge, x19, x4, x10, 0x0000000000001000, 0xfffffffffffffff7, 8, 1b, x12, 144,0)

# rs1==x29, rs2==x1, rs1_val == 8192, rs2_val == 16
# opcode: bge, op1:x29; op2:x1; op1val:0x0000000000002000; op2val:0x0000000000000010; immval:512; align:0
TEST_BRANCH_OP(bge, x19, x29, x1, 0x0000000000002000, 0x0000000000000010, 512, 3f, x12, 152,0)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x12, rs2==x29, rs1_val == 16384, rs2_val == -35184372088833
# opcode: bge, op1:x12; op2:x29; op1val:0x0000000000004000; op2val:0xffffdfffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x12, x29, 0x0000000000004000, 0xffffdfffffffffff, 0, 3f, x2, 0,0)

# rs1==x27, rs2==x21, rs1_val == 32768, rs2_val == -65537
# opcode: bge, op1:x27; op2:x21; op1val:0x0000000000008000; op2val:0xfffffffffffeffff; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x27, x21, 0x0000000000008000, 0xfffffffffffeffff, 8, 3f, x2, 8,0)

# rs1==x1, rs2==x19, rs1_val == 65536, rs2_val == 16777216
# opcode: bge, op1:x1; op2:x19; op1val:0x0000000000010000; op2val:0x0000000001000000; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x1, x19, 0x0000000000010000, 0x0000000001000000, 6, 1b, x2, 16,0)

# rs1==x19, rs2==x12, rs1_val == 131072, rs2_val == -34359738369
# opcode: bge, op1:x19; op2:x12; op1val:0x0000000000020000; op2val:0xfffffff7ffffffff; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x19, x12, 0x0000000000020000, 0xfffffff7ffffffff, 6, 1b, x2, 24,0)

# rs1==x16, rs2==x15, rs1_val == 262144, rs2_val == -524289
# opcode: bge, op1:x16; op2:x15; op1val:0x0000000000040000; op2val:0xfffffffffff7ffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x16, x15, 0x0000000000040000, 0xfffffffffff7ffff, 0, 3f, x2, 32,0)

# rs1==x13, rs2==x7, rs1_val == 524288, rs2_val == 64
# opcode: bge, op1:x13; op2:x7; op1val:0x0000000000080000; op2val:0x0000000000000040; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x13, x7, 0x0000000000080000, 0x0000000000000040, 1024, 1b, x2, 40,0)

# rs1==x11, rs2==x25, rs1_val == 1048576, rs2_val == 2048
# opcode: bge, op1:x11; op2:x25; op1val:0x0000000000100000; op2val:0x0000000000000800; immval:1366; align:0
TEST_BRANCH_OP(bge, x3, x11, x25, 0x0000000000100000, 0x0000000000000800, 1366, 1b, x2, 48,0)

# rs1==x10, rs2==x22, rs1_val == 4194304, rs2_val == -268435457
# opcode: bge, op1:x10; op2:x22; op1val:0x0000000000400000; op2val:0xffffffffefffffff; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x22, 0x0000000000400000, 0xffffffffefffffff, 6, 1b, x2, 56,0)

# rs1==x23, rs2==x20, rs1_val == 8388608, 
# opcode: bge, op1:x23; op2:x20; op1val:0x0000000000800000; op2val:0x8000000000000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x23, x20, 0x0000000000800000, 0x8000000000000000, 1024, 3f, x2, 64,0)

# rs1==x24, rs2==x9, rs1_val == 16777216, rs2_val == -70368744177665
# opcode: bge, op1:x24; op2:x9; op1val:0x0000000001000000; op2val:0xffffbfffffffffff; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x24, x9, 0x0000000001000000, 0xffffbfffffffffff, 6, 1b, x2, 72,0)

# rs1==x14, rs2==x6, rs1_val == 33554432, 
# opcode: bge, op1:x14; op2:x6; op1val:0x0000000002000000; op2val:0x0000000000000040; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x14, x6, 0x0000000002000000, 0x0000000000000040, 4, 3f, x2, 80,0)

# rs1==x17, rs2==x24, rs1_val == 67108864, 
# opcode: bge, op1:x17; op2:x24; op1val:0x0000000004000000; op2val:0xfffffffffffffff9; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x17, x24, 0x0000000004000000, 0xfffffffffffffff9, 2, 3f, x2, 88,0)

# rs1_val == 134217728, rs2_val == -274877906945
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0xffffffbfffffffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000008000000, 0xffffffbfffffffff, 1024, 1b, x2, 96,0)

# rs1_val == 268435456, rs2_val == 256
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000000000000100; immval:128; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000010000000, 0x0000000000000100, 128, 3f, x2, 104,0)

# rs1_val == 536870912, rs2_val == 36028797018963968
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0080000000000000; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000020000000, 0x0080000000000000, 8, 1b, x2, 112,0)

# rs1_val == 1073741824, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0xfffffffffdffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000040000000, 0xfffffffffdffffff, 8, 3f, x2, 120,0)

# rs1_val == 2147483648, rs2_val == -262145
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xfffffffffffbffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000080000000, 0xfffffffffffbffff, 0, 1b, x2, 128,0)

# rs1_val == 4294967296, rs2_val == 8796093022208
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000080000000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000100000000, 0x0000080000000000, 1024, 3f, x2, 136,0)

# rs1_val == 8589934592, rs2_val == -1099511627777
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xfffffeffffffffff; immval:512; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000200000000, 0xfffffeffffffffff, 512, 3f, x2, 144,0)

# rs1_val == 17179869184, rs2_val == -8796093022209
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xfffff7ffffffffff; immval:256; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000400000000, 0xfffff7ffffffffff, 256, 3f, x2, 152,0)

# rs1_val == 34359738368, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xffffdfffffffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000800000000, 0xffffdfffffffffff, 2, 3f, x2, 160,0)

# rs1_val == 68719476736, rs2_val == -2147483649
# opcode: bge, op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xffffffff7fffffff; immval:32; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000001000000000, 0xffffffff7fffffff, 32, 3f, x2, 168,0)

# rs1_val == 137438953472, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0x0000000000000100; immval:16; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000002000000000, 0x0000000000000100, 16, 3f, x2, 176,0)

# rs1_val == 274877906944, rs2_val == 268435456
# opcode: bge, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000010000000; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000004000000000, 0x0000000010000000, 4, 1b, x2, 184,0)

# rs1_val == 549755813888, rs2_val == 1099511627776
# opcode: bge, op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0x0000010000000000; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000008000000000, 0x0000010000000000, 0, 3f, x2, 192,0)

# rs1_val == 1099511627776, rs2_val == -72057594037927937
# opcode: bge, op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0xfeffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000010000000000, 0xfeffffffffffffff, 0, 3f, x2, 200,0)

# rs1_val == 2199023255552, rs2_val == -17592186044417
# opcode: bge, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0xffffefffffffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000020000000000, 0xffffefffffffffff, 2, 1b, x2, 208,0)

# rs1_val == 4398046511104, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xffffefffffffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000040000000000, 0xffffefffffffffff, 2, 3f, x2, 216,0)

# rs1_val == 17592186044416, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0x0000000200000000; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000100000000000, 0x0000000200000000, 0, 3f, x2, 224,0)

# rs1_val == 35184372088832, rs2_val == -4398046511105
# opcode: bge, op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xfffffbffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000200000000000, 0xfffffbffffffffff, 0, 1b, x2, 232,0)

# rs1_val == 70368744177664, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000000001000000; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000400000000000, 0x0000000001000000, 6, 3f, x2, 240,0)

# rs1_val == 140737488355328, rs2_val == -5
# opcode: bge, op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfffffffffffffffb; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000800000000000, 0xfffffffffffffffb, 0, 3f, x2, 248,0)

# rs1_val == 281474976710656, rs2_val == 562949953421312
# opcode: bge, op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0x0002000000000000; immval:64; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0001000000000000, 0x0002000000000000, 64, 3f, x2, 256,0)

# rs1_val == 562949953421312, rs2_val == 131072
# opcode: bge, op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0000000000020000; immval:16; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0002000000000000, 0x0000000000020000, 16, 3f, x2, 264,0)

# rs1_val == 1125899906842624, rs2_val == -4503599627370497
# opcode: bge, op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xffefffffffffffff; immval:32; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0004000000000000, 0xffefffffffffffff, 32, 3f, x2, 272,0)

# rs1_val == 2251799813685248, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0xffffffffffefffff; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0008000000000000, 0xffffffffffefffff, 2, 1b, x2, 280,0)

# rs1_val == 4503599627370496, rs2_val == 2
# opcode: bge, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0000000000000002; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0010000000000000, 0x0000000000000002, 2, 3f, x2, 288,0)

# rs1_val == 9007199254740992, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xffbfffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0020000000000000, 0xffbfffffffffffff, 6, 3f, x2, 296,0)

# rs1_val == 18014398509481984, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0x0002000000000000; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0040000000000000, 0x0002000000000000, 8, 1b, x2, 304,0)

# rs1_val == 36028797018963968, rs2_val == 1048576
# opcode: bge, op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0x0000000000100000; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0080000000000000, 0x0000000000100000, 1024, 3f, x2, 312,0)

# rs1_val == 144115188075855872, rs2_val == 32768
# opcode: bge, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0000000000008000; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0200000000000000, 0x0000000000008000, 6, 1b, x2, 320,0)

# rs1_val == 288230376151711744, rs2_val == -8388609
# opcode: bge, op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0xffffffffff7fffff; immval:16; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0400000000000000, 0xffffffffff7fffff, 16, 3f, x2, 328,0)

# rs1_val == 576460752303423488, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xffffffffffefffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0800000000000000, 0xffffffffffefffff, 1024, 3f, x2, 336,0)

# rs1_val == 1152921504606846976, 
# opcode: bge, op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x0000000000000004; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x1000000000000000, 0x0000000000000004, 0, 1b, x2, 344,0)

# rs1_val == 2305843009213693952, rs2_val == -137438953473
# opcode: bge, op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xffffffdfffffffff; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x2000000000000000, 0xffffffdfffffffff, 6, 3f, x2, 352,0)

# rs1_val == 4611686018427387904, rs2_val == -3
# opcode: bge, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xfffffffffffffffd; immval:128; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x4000000000000000, 0xfffffffffffffffd, 128, 3f, x2, 360,0)

# rs1_val == -9223372036854775808, 
# opcode: bge, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0x0000000000008000; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x8000000000000000, 0x0000000000008000, 4, 3f, x2, 368,0)

# rs1_val == -2, rs2_val == -281474976710657
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xfffeffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffffe, 0xfffeffffffffffff, 8, 1b, x2, 376,0)

# rs1_val == -3, rs2_val == -144115188075855873
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0xfdffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffffd, 0xfdffffffffffffff, 0, 3f, x2, 384,0)

# rs1_val == -5, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0000000000000007; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffffb, 0x0000000000000007, 2, 1b, x2, 392,0)

# rs1_val == -9, rs2_val == 4398046511104
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000040000000000; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffff7, 0x0000040000000000, 8, 3f, x2, 400,0)

# rs1_val == -17, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xfffffffffffffffb; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffffffef, 0xfffffffffffffffb, 8, 1b, x2, 408,0)

# rs1_val == -33, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0000000000000007; immval:128; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffffffdf, 0x0000000000000007, 128, 3f, x2, 416,0)

# rs1_val == -65, rs2_val == -8193
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0xffffffffffffdfff; immval:512; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffffffbf, 0xffffffffffffdfff, 512, 3f, x2, 424,0)

# rs1_val == -129, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0xfffffffffdffffff; immval:1366; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffffff7f, 0xfffffffffdffffff, 1366, 1b, x2, 432,0)

# rs1_val == -257, rs2_val == 16384
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000000000004000; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffeff, 0x0000000000004000, 2, 3f, x2, 440,0)

# rs1_val == -513, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0xbfffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffdff, 0xbfffffffffffffff, 8, 3f, x2, 448,0)

# rs1_val == -1025, rs2_val == 17592186044416
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000100000000000; immval:16; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffbff, 0x0000100000000000, 16, 3f, x2, 456,0)

# rs1_val == -2049, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0000000000000010; immval:32; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffff7ff, 0x0000000000000010, 32, 3f, x2, 464,0)

# rs2_val == -36028797018963969, rs1_val == -2097153
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0xff7fffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffdfffff, 0xff7fffffffffffff, 0, 1b, x2, 472,0)

# rs2_val == -288230376151711745, rs1_val == -274877906945
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0xfbffffffffffffff; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffbfffffffff, 0xfbffffffffffffff, 6, 3f, x2, 480,0)

# rs2_val == -576460752303423489, rs1_val == -2305843009213693953
# opcode: bge, op1:x10; op2:x11; op1val:0xdfffffffffffffff; op2val:0xf7ffffffffffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xdfffffffffffffff, 0xf7ffffffffffffff, 4, 3f, x2, 488,0)

# rs2_val == -1152921504606846977, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0xefffffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000000100, 0xefffffffffffffff, 8, 1b, x2, 496,0)

# rs2_val == 9223372036854775807, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000000; op2val:0x7fffffffffffffff; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000000000, 0x7fffffffffffffff, 2, 1b, x2, 504,0)

# rs2_val == 6148914691236517205, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x5555555555555555; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0200000000000000, 0x5555555555555555, 1024, 3f, x2, 512,0)

# rs2_val == -6148914691236517206, rs1_val == -536870913
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xaaaaaaaaaaaaaaaa; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffdfffffff, 0xaaaaaaaaaaaaaaaa, 0, 1b, x2, 520,0)

# rs1_val == -4097, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xfeffffffffffffff; immval:256; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffffefff, 0xfeffffffffffffff, 256, 3f, x2, 528,0)

# rs1_val == -8193, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0x0000000010000000; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffffdfff, 0x0000000010000000, 4, 3f, x2, 536,0)

# rs1_val == -16385, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xfffffffffffffff8; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffffbfff, 0xfffffffffffffff8, 4, 1b, x2, 544,0)

# rs1_val == -32769, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0xffffffffff7fffff; immval:64; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffff7fff, 0xffffffffff7fffff, 64, 3f, x2, 552,0)

# rs1_val == -65537, rs2_val == 35184372088832
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0x0000200000000000; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffeffff, 0x0000200000000000, 2, 1b, x2, 560,0)

# rs1_val == -131073, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0x0000000001000000; immval:64; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffdffff, 0x0000000001000000, 64, 3f, x2, 568,0)

# rs1_val == -262145, rs2_val == 536870912
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0x0000000020000000; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffbffff, 0x0000000020000000, 2, 1b, x2, 576,0)

# rs1_val == -524289, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0xfffffeffffffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffff7ffff, 0xfffffeffffffffff, 8, 3f, x2, 584,0)

# rs1_val == -1048577, rs2_val == 128
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x0000000000000080; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffefffff, 0x0000000000000080, 8, 3f, x2, 592,0)

# rs1_val == -8388609, rs2_val == 4611686018427387904
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0x4000000000000000; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffff7fffff, 0x4000000000000000, 6, 3f, x2, 600,0)

# rs1_val == -16777217, rs2_val == -33
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0xffffffffffffffdf; immval:64; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffeffffff, 0xffffffffffffffdf, 64, 3f, x2, 608,0)

# rs1_val == -33554433, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0xffffffbfffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffdffffff, 0xffffffbfffffffff, 0, 3f, x2, 616,0)

# rs1_val == -67108865, rs2_val == -2199023255553
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xfffffdffffffffff; immval:64; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffbffffff, 0xfffffdffffffffff, 64, 3f, x2, 624,0)

# rs1_val == -134217729, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0x0000000000008000; immval:128; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffff7ffffff, 0x0000000000008000, 128, 3f, x2, 632,0)

# rs1_val == -268435457, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0x0080000000000000; immval:128; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffefffffff, 0x0080000000000000, 128, 3f, x2, 640,0)

# rs1_val == -1073741825, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0x0000000000200000; immval:16; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffbfffffff, 0x0000000000200000, 16, 3f, x2, 648,0)

# rs1_val == -2147483649, rs2_val == 288230376151711744
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0400000000000000; immval:512; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffff7fffffff, 0x0400000000000000, 512, 3f, x2, 656,0)

# rs1_val == -4294967297, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xfbffffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffeffffffff, 0xfbffffffffffffff, 512, 3f, x2, 664,0)

# rs1_val == -8589934593, rs2_val == 72057594037927936
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0100000000000000; immval:128; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffdffffffff, 0x0100000000000000, 128, 3f, x2, 672,0)

# rs1_val == -17179869185, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0xfffffffffffffff8; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffbffffffff, 0xfffffffffffffff8, 2, 1b, x2, 680,0)

# rs1_val == -34359738369, rs2_val == 524288
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000000000080000; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffff7ffffffff, 0x0000000000080000, 4, 3f, x2, 688,0)

# rs1_val == -68719476737, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0000000000000010; immval:128; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffefffffffff, 0x0000000000000010, 128, 3f, x2, 696,0)

# rs1_val == -137438953473, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xffffbfffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffdfffffffff, 0xffffbfffffffffff, 1024, 1b, x2, 704,0)

# rs1_val == -549755813889, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0xfffffbffffffffff; immval:1366; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffff7fffffffff, 0xfffffbffffffffff, 1366, 1b, x2, 712,0)

# rs1_val == -1099511627777, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0xfffffffffff7ffff; immval:16; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffeffffffffff, 0xfffffffffff7ffff, 16, 3f, x2, 720,0)

# rs1_val == -2199023255553, rs2_val == -32769
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0xffffffffffff7fff; immval:1366; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffdffffffffff, 0xffffffffffff7fff, 1366, 1b, x2, 728,0)

# rs1_val == -4398046511105, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xfffffff7ffffffff; immval:512; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffbffffffffff, 0xfffffff7ffffffff, 512, 3f, x2, 736,0)

# rs1_val == -8796093022209, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0xffffffffffff7fff; immval:512; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffff7ffffffffff, 0xffffffffffff7fff, 512, 3f, x2, 744,0)

# rs1_val == -17592186044417, rs2_val == 576460752303423488
# opcode: bge, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0800000000000000; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffefffffffffff, 0x0800000000000000, 2, 1b, x2, 752,0)

# rs1_val == -35184372088833, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0x0002000000000000; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffdfffffffffff, 0x0002000000000000, 6, 3f, x2, 760,0)

# rs1_val == -70368744177665, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xfffffffffffbffff; immval:16; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffbfffffffffff, 0xfffffffffffbffff, 16, 3f, x2, 768,0)

# rs1_val == -140737488355329, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0xffffffffffffffff; immval:16; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffff7fffffffffff, 0xffffffffffffffff, 16, 3f, x2, 776,0)

# rs1_val == -281474976710657, rs2_val == 34359738368
# opcode: bge, op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0x0000000800000000; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffeffffffffffff, 0x0000000800000000, 6, 1b, x2, 784,0)

# rs1_val == -562949953421313, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0x0080000000000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffdffffffffffff, 0x0080000000000000, 1024, 1b, x2, 792,0)

# rs1_val == -1125899906842625, rs2_val == -2097153
# opcode: bge, op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0xffffffffffdfffff; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffbffffffffffff, 0xffffffffffdfffff, 2, 3f, x2, 800,0)

# rs1_val == -2251799813685249, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000000000100000; immval:32; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfff7ffffffffffff, 0x0000000000100000, 32, 3f, x2, 808,0)

# rs1_val == -4503599627370497, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0xfffffffffff7ffff; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffefffffffffffff, 0xfffffffffff7ffff, 8, 3f, x2, 816,0)

# rs1_val == -9007199254740993, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0xfffffeffffffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffdfffffffffffff, 0xfffffeffffffffff, 4, 1b, x2, 824,0)

# rs1_val == -18014398509481985, rs2_val == -67108865
# opcode: bge, op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xfffffffffbffffff; immval:16; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffbfffffffffffff, 0xfffffffffbffffff, 16, 3f, x2, 832,0)

# rs1_val == -36028797018963969, 
# opcode: bge, op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0x0000000000000080; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xff7fffffffffffff, 0x0000000000000080, 4, 3f, x2, 840,0)

# rs1_val == -144115188075855873, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0x0000000000100000; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfdffffffffffffff, 0x0000000000100000, 1024, 1b, x2, 848,0)

# rs1_val == -288230376151711745, rs2_val == 512
# opcode: bge, op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000000000000200; immval:32; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfbffffffffffffff, 0x0000000000000200, 32, 3f, x2, 856,0)

# rs1_val == -576460752303423489, 
# opcode: bge, op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x5555555555555555; immval:1366; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xf7ffffffffffffff, 0x5555555555555555, 1366, 1b, x2, 864,0)

# rs1_val == -1152921504606846977, rs2_val == -2251799813685249
# opcode: bge, op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0xfff7ffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xefffffffffffffff, 0xfff7ffffffffffff, 0, 3f, x2, 872,0)

# rs1_val == -4611686018427387905, 
# opcode: bge, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x0000000000000000; immval:10; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xbfffffffffffffff, 0x0000000000000000, 10, 1b, x2, 880,0)

# rs1_val == 9223372036854775807, 
# opcode: bge, op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0xdfffffffffffffff; immval:512; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x7fffffffffffffff, 0xdfffffffffffffff, 512, 3f, x2, 888,0)

# rs1_val == 6148914691236517205, rs2_val == -1125899906842625
# opcode: bge, op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0xfffbffffffffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x5555555555555555, 0xfffbffffffffffff, 8, 1b, x2, 896,0)

# rs1_val == -6148914691236517206, rs2_val == 32
# opcode: bge, op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0x0000000000000020; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xaaaaaaaaaaaaaaaa, 0x0000000000000020, 0, 1b, x2, 904,0)

# rs2_val == 1, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0x0000000000000001; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffbff, 0x0000000000000001, 4, 3f, x2, 912,0)

# rs2_val == 1024, 
# opcode: bge, op1:x10; op2:x11; op1val:0x8000000000000000; op2val:0x0000000000000400; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x8000000000000000, 0x0000000000000400, 2, 3f, x2, 920,0)

# rs2_val == 8192, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0000000000002000; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffff7fffffffffff, 0x0000000000002000, 6, 1b, x2, 928,0)

# rs2_val == 65536, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0x0000000000010000; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffffb, 0x0000000000010000, 2, 3f, x2, 936,0)

# rs2_val == 262144, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffff6; op2val:0x0000000000040000; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffff6, 0x0000000000040000, 8, 3f, x2, 944,0)

# rs2_val == 4194304, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000000000400000; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000040000000, 0x0000000000400000, 2, 3f, x2, 952,0)

# rs2_val == 8388608, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0x0000000000800000; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000001000, 0x0000000000800000, 4, 3f, x2, 960,0)

# rs2_val == 33554432, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000000002000000; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0020000000000000, 0x0000000002000000, 4, 3f, x2, 968,0)

# rs2_val == 67108864, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000004000000; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffbfffffffff, 0x0000000004000000, 2, 3f, x2, 976,0)

# rs2_val == 134217728, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000800000; op2val:0x0000000008000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000800000, 0x0000000008000000, 1024, 3f, x2, 984,0)

# rs2_val == 1073741824, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0x0000000040000000; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000080000000, 0x0000000040000000, 0, 3f, x2, 992,0)

# rs2_val == 2147483648, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0000000080000000; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffff7ff, 0x0000000080000000, 6, 3f, x2, 1000,0)

# rs2_val == 4294967296, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000003; op2val:0x0000000100000000; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000000003, 0x0000000100000000, 8, 3f, x2, 1008,0)

# rs2_val == 17179869184, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x0000000400000000; immval:256; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000020000000000, 0x0000000400000000, 256, 3f, x2, 1016,0)

# rs2_val == 68719476736, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0x0000001000000000; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffdfffffff, 0x0000001000000000, 4, 3f, x2, 1024,0)

# rs2_val == 137438953472, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0000002000000000; immval:1366; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffffffdf, 0x0000002000000000, 1366, 1b, x2, 1032,0)

# rs2_val == 549755813888, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x0000008000000000; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffff7ff, 0x0000008000000000, 0, 3f, x2, 1040,0)

# rs2_val == 2199023255552, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000020000000000; immval:16; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0800000000000000, 0x0000020000000000, 16, 3f, x2, 1048,0)

# rs2_val == 4503599627370496, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000010; op2val:0x0010000000000000; immval:512; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000000010, 0x0010000000000000, 512, 3f, x2, 1056,0)

# rs2_val == 9007199254740992, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0x0020000000000000; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000001000000, 0x0020000000000000, 1024, 1b, x2, 1064,0)

# rs2_val == 18014398509481984, 
# opcode: bge, op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0x0040000000000000; immval:16; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xbfffffffffffffff, 0x0040000000000000, 16, 3f, x2, 1072,0)

# rs2_val == 144115188075855872, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0x0200000000000000; immval:128; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000004000000, 0x0200000000000000, 128, 3f, x2, 1080,0)

# rs2_val == 1152921504606846976, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x1000000000000000; immval:2; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffefffffffffff, 0x1000000000000000, 2, 3f, x2, 1088,0)

# rs2_val == 2305843009213693952, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000002; op2val:0x2000000000000000; immval:256; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000000002, 0x2000000000000000, 256, 3f, x2, 1096,0)

# rs2_val == -2, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xfffffffffffffffe; immval:64; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffffdfff, 0xfffffffffffffffe, 64, 3f, x2, 1104,0)

# rs2_val == -17, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0xffffffffffffffef; immval:64; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffff7ffff, 0xffffffffffffffef, 64, 3f, x2, 1112,0)

# rs2_val == -129, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xffffffffffffff7f; immval:32; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000004000000000, 0xffffffffffffff7f, 32, 3f, x2, 1120,0)

# rs2_val == -257, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xfffffffffffffeff; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffffdfff, 0xfffffffffffffeff, 6, 3f, x2, 1128,0)

# rs2_val == -513, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0xfffffffffffffdff; immval:512; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffffffffdf, 0xfffffffffffffdff, 512, 3f, x2, 1136,0)

# rs2_val == -1025, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xfffffffffffffbff; immval:32; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffffe, 0xfffffffffffffbff, 32, 3f, x2, 1144,0)

# rs2_val == -2049, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfffffffffffff7ff; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0010000000000000, 0xfffffffffffff7ff, 8, 1b, x2, 1152,0)

# rs2_val == -4097, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0xffffffffffffefff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000080000000000, 0xffffffffffffefff, 0, 3f, x2, 1160,0)

# rs2_val == -16385, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xffffffffffffbfff; immval:512; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfdffffffffffffff, 0xffffffffffffbfff, 512, 3f, x2, 1168,0)

# rs2_val == -4194305, 
# opcode: bge, op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xffffffffffbfffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x4000000000000000, 0xffffffffffbfffff, 1024, 1b, x2, 1176,0)

# rs2_val == -16777217, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xfffffffffeffffff; immval:256; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffffff7fffff, 0xfffffffffeffffff, 256, 3f, x2, 1184,0)

# rs2_val == -134217729, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0xfffffffff7ffffff; immval:64; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000008000, 0xfffffffff7ffffff, 64, 3f, x2, 1192,0)

# rs2_val == -536870913, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xffffffffdfffffff; immval:256; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000040000000000, 0xffffffffdfffffff, 256, 3f, x2, 1200,0)

# rs2_val == -1073741825, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xffffffffbfffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffbfffffffffff, 0xffffffffbfffffff, 0, 1b, x2, 1208,0)

# rs2_val == -4294967297, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xfffffffeffffffff; immval:128; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000800000000, 0xfffffffeffffffff, 128, 3f, x2, 1216,0)

# rs2_val == -8589934593, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000006; op2val:0xfffffffdffffffff; immval:4; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000000006, 0xfffffffdffffffff, 4, 3f, x2, 1224,0)

# rs2_val == -140737488355329, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xffff7fffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0040000000000000, 0xffff7fffffffffff, 1024, 3f, x2, 1232,0)

# rs2_val == -68719476737, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0xffffffefffffffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffff7ffffffff, 0xffffffefffffffff, 1024, 3f, x2, 1240,0)

# rs2_val == -549755813889, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xffffff7fffffffff; immval:8; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffffffdfffffffff, 0xffffff7fffffffff, 8, 3f, x2, 1248,0)

# rs2_val == 70368744177664, 
# opcode: bge, op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0000400000000000; immval:10; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xffff7fffffffffff, 0x0000400000000000, 10, 1b, x2, 1256,0)

# rs2_val == 140737488355328, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000004000; op2val:0x0000800000000000; immval:128; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000004000, 0x0000800000000000, 128, 3f, x2, 1264,0)

# rs2_val == 281474976710656, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0001000000000000; immval:256; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffdffffffff, 0x0001000000000000, 256, 3f, x2, 1272,0)

# rs2_val == -562949953421313, 
# opcode: bge, op1:x10; op2:x11; op1val:0xfffffffffffffff6; op2val:0xfffdffffffffffff; immval:1024; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0xfffffffffffffff6, 0xfffdffffffffffff, 1024, 3f, x2, 1280,0)

# rs2_val == 1125899906842624, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x0004000000000000; immval:6; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000200000000, 0x0004000000000000, 6, 1b, x2, 1288,0)

# rs2_val == 2251799813685248, 
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000020000; op2val:0x0008000000000000; immval:1366; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000020000, 0x0008000000000000, 1366, 1b, x2, 1296,0)

# rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs1_val == 72057594037927936, rs2_val == -18014398509481985, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0
# opcode: bge, op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0xffbfffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0100000000000000, 0xffbfffffffffffff, 0, 1b, x2, 1304,0)

# rs1_val == 64, rs2_val == -131073
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0xfffffffffffdffff; immval:32; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000000040, 0xfffffffffffdffff, 32, 3f, x2, 1312,0)

# rs1_val == 512, rs2_val == -4611686018427387905
# opcode: bge, op1:x10; op2:x11; op1val:0x0000000000000200; op2val:0xbfffffffffffffff; immval:0; align:0
TEST_BRANCH_OP(bge, x3, x10, x11, 0x0000000000000200, 0xbfffffffffffffff, 0, 1b, x2, 1320,0)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x12_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 166*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
