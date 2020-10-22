
#This assembly file tests the bgeu instruction of the RISC-V I extension for the bgeu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bgeu)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 != rs2, rs1==x13, rs2==x10, rs1_val > 0 and rs2_val > 0, rs2_val == 4294934527, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val > 0 , rs1_val == 4286578687
# opcode: bgeu, op1:x13; op2:x10; op1val:0xff7fffff; op2val:0xffff7fff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x1, x13, x10, 0xff7fffff, 0xffff7fff, 1024, 3f, x4, 0,0)

# rs1 == rs2, rs1==x16, rs2==x16, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, 
# opcode: bgeu, op1:x16; op2:x16; op1val:0xffffffff; op2val:0xffffffff; immval:512; align:0
TEST_BRANCH_OP(bgeu, x1, x16, x16, 0xffffffff, 0xffffffff, 512, 3f, x4, 4,0)

# rs1==x3, rs2==x31, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val < 0, rs1_val == 16384, rs2_val == 16384
# opcode: bgeu, op1:x3; op2:x31; op1val:0x00004000; op2val:0x00004000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x1, x3, x31, 0x00004000, 0x00004000, 2, 1b, x4, 8,0)

# rs1==x28, rs2==x19, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val > 0 , rs1_val == 4294443007, rs2_val == 4292870143
# opcode: bgeu, op1:x28; op2:x19; op1val:0xfff7ffff; op2val:0xffdfffff; immval:32; align:0
TEST_BRANCH_OP(bgeu, x1, x28, x19, 0xfff7ffff, 0xffdfffff, 32, 3f, x4, 12,0)

# rs1==x8, rs2==x24, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val < 0 , rs1_val == 4294967287
# opcode: bgeu, op1:x8; op2:x24; op1val:0xfffffff7; op2val:0xffdfffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x1, x8, x24, 0xfffffff7, 0xffdfffff, 0, 1b, x4, 16,0)

# rs1==x10, rs2==x3, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val < 0 , rs2_val == 512, rs1_val == 64
# opcode: bgeu, op1:x10; op2:x3; op1val:0x00000040; op2val:0x00000200; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x1, x10, x3, 0x00000040, 0x00000200, 1024, 1b, x4, 20,0)

# rs1==x27, rs2==x9, rs1_val == 1, rs2_val == 256
# opcode: bgeu, op1:x27; op2:x9; op1val:0x00000001; op2val:0x00000100; immval:10; align:0
TEST_BRANCH_OP(bgeu, x1, x27, x9, 0x00000001, 0x00000100, 10, 1b, x4, 24,0)

# rs1==x18, rs2==x6, rs1_val == 2, 
# opcode: bgeu, op1:x18; op2:x6; op1val:0x00000002; op2val:0x00000200; immval:128; align:0
TEST_BRANCH_OP(bgeu, x1, x18, x6, 0x00000002, 0x00000200, 128, 3f, x4, 28,0)

# rs1==x29, rs2==x30, rs1_val == 4, rs2_val == 3221225471
# opcode: bgeu, op1:x29; op2:x30; op1val:0x00000004; op2val:0xbfffffff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x1, x29, x30, 0x00000004, 0xbfffffff, 64, 3f, x4, 32,0)

# rs1==x25, rs2==x20, rs1_val == 8, 
# opcode: bgeu, op1:x25; op2:x20; op1val:0x00000008; op2val:0x00000009; immval:512; align:0
TEST_BRANCH_OP(bgeu, x1, x25, x20, 0x00000008, 0x00000009, 512, 3f, x4, 36,0)

# rs1==x21, rs2==x28, rs1_val == 16, 
# opcode: bgeu, op1:x21; op2:x28; op1val:0x00000010; op2val:0x00000007; immval:4; align:0
TEST_BRANCH_OP(bgeu, x1, x21, x28, 0x00000010, 0x00000007, 4, 3f, x4, 40,0)

# rs1==x14, rs2==x13, rs1_val == 32, rs2_val == 1
# opcode: bgeu, op1:x14; op2:x13; op1val:0x00000020; op2val:0x00000001; immval:10; align:0
TEST_BRANCH_OP(bgeu, x1, x14, x13, 0x00000020, 0x00000001, 10, 1b, x4, 44,0)

# rs1==x30, rs2==x5, rs1_val == 128, 
# opcode: bgeu, op1:x30; op2:x5; op1val:0x00000080; op2val:0x0000000d; immval:2; align:0
TEST_BRANCH_OP(bgeu, x1, x30, x5, 0x00000080, 0x0000000d, 2, 1b, x4, 48,0)

# rs1==x26, rs2==x18, rs1_val == 256, rs2_val == 4227858431
# opcode: bgeu, op1:x26; op2:x18; op1val:0x00000100; op2val:0xfbffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x1, x26, x18, 0x00000100, 0xfbffffff, 1024, 3f, x4, 52,0)

# rs1==x31, rs2==x25, rs1_val == 512, 
# opcode: bgeu, op1:x31; op2:x25; op1val:0x00000200; op2val:0xfbffffff; immval:128; align:0
TEST_BRANCH_OP(bgeu, x1, x31, x25, 0x00000200, 0xfbffffff, 128, 3f, x4, 56,0)

# rs1==x12, rs2==x29, rs1_val == 1024, 
# opcode: bgeu, op1:x12; op2:x29; op1val:0x00000400; op2val:0x0000000a; immval:4; align:0
TEST_BRANCH_OP(bgeu, x1, x12, x29, 0x00000400, 0x0000000a, 4, 3f, x4, 60,0)

# rs1==x23, rs2==x17, rs1_val == 2048, rs2_val == 2
# opcode: bgeu, op1:x23; op2:x17; op1val:0x00000800; op2val:0x00000002; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x1, x23, x17, 0x00000800, 0x00000002, 1024, 1b, x4, 64,0)

# rs1==x17, rs2==x21, rs1_val == 4096, rs2_val == 4293918719
# opcode: bgeu, op1:x17; op2:x21; op1val:0x00001000; op2val:0xffefffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x1, x17, x21, 0x00001000, 0xffefffff, 4, 3f, x4, 68,0)

# rs1==x24, rs2==x0, rs1_val == 8192, rs2_val == 4294967263
# opcode: bgeu, op1:x24; op2:x0; op1val:0x00002000; op2val:0xffffffdf; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x1, x24, x0, 0x00002000, 0xffffffdf, 1024, 3f, x4, 72,0)

# rs1==x11, rs2==x27, rs1_val == 32768, rs2_val == 4294965247
# opcode: bgeu, op1:x11; op2:x27; op1val:0x00008000; op2val:0xfffff7ff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x1, x11, x27, 0x00008000, 0xfffff7ff, 8, 1b, x4, 76,0)

# rs1==x15, rs2==x2, rs1_val == 65536, rs2_val == 1431655765
# opcode: bgeu, op1:x15; op2:x2; op1val:0x00010000; op2val:0x55555555; immval:16; align:0
TEST_BRANCH_OP(bgeu, x1, x15, x2, 0x00010000, 0x55555555, 16, 3f, x4, 80,0)

# rs1==x7, rs2==x1, rs1_val == 131072, 
# opcode: bgeu, op1:x7; op2:x1; op1val:0x00020000; op2val:0x00000013; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x7, x1, 0x00020000, 0x00000013, 0, 1b, x4, 84,0)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x4, rs2==x8, rs1_val == 262144, 
# opcode: bgeu, op1:x4; op2:x8; op1val:0x00040000; op2val:0x00000005; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x13, x4, x8, 0x00040000, 0x00000005, 1024, 1b, x3, 0,0)

# rs1==x19, rs2==x4, rs1_val == 524288, rs2_val == 4096
# opcode: bgeu, op1:x19; op2:x4; op1val:0x00080000; op2val:0x00001000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x13, x19, x4, 0x00080000, 0x00001000, 6, 1b, x3, 4,0)

# rs1==x6, rs2==x23, rs1_val == 1048576, rs2_val == 4
# opcode: bgeu, op1:x6; op2:x23; op1val:0x00100000; op2val:0x00000004; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x13, x6, x23, 0x00100000, 0x00000004, 1024, 1b, x3, 8,0)

# rs1==x2, rs2==x22, rs1_val == 2097152, rs2_val == 33554432
# opcode: bgeu, op1:x2; op2:x22; op1val:0x00200000; op2val:0x02000000; immval:128; align:0
TEST_BRANCH_OP(bgeu, x13, x2, x22, 0x00200000, 0x02000000, 128, 3f, x3, 12,0)

# rs1==x9, rs2==x7, rs1_val == 4194304, rs2_val == 4294967231
# opcode: bgeu, op1:x9; op2:x7; op1val:0x00400000; op2val:0xffffffbf; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x13, x9, x7, 0x00400000, 0xffffffbf, 1366, 1b, x3, 16,0)

# rs1==x0, rs2==x11, rs1_val == 8388608, rs2_val == 4261412863
# opcode: bgeu, op1:x0; op2:x11; op1val:0x00800000; op2val:0xfdffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x13, x0, x11, 0x00800000, 0xfdffffff, 8, 1b, x3, 20,0)

# rs1==x20, rs2==x15, rs1_val == 16777216, rs2_val == 4286578687
# opcode: bgeu, op1:x20; op2:x15; op1val:0x01000000; op2val:0xff7fffff; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x13, x20, x15, 0x01000000, 0xff7fffff, 1366, 1b, x3, 24,0)

# rs1==x5, rs2==x26, rs1_val == 33554432, 
# opcode: bgeu, op1:x5; op2:x26; op1val:0x02000000; op2val:0x0000000c; immval:8; align:0
TEST_BRANCH_OP(bgeu, x13, x5, x26, 0x02000000, 0x0000000c, 8, 3f, x3, 28,0)

# rs1==x1, rs2==x14, rs1_val == 67108864, 
# opcode: bgeu, op1:x1; op2:x14; op1val:0x04000000; op2val:0x00000002; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x13, x1, x14, 0x04000000, 0x00000002, 1024, 1b, x3, 32,0)

# rs1==x22, rs2==x12, rs1_val == 134217728, rs2_val == 131072
# opcode: bgeu, op1:x22; op2:x12; op1val:0x08000000; op2val:0x00020000; immval:64; align:0
TEST_BRANCH_OP(bgeu, x13, x22, x12, 0x08000000, 0x00020000, 64, 3f, x3, 36,0)

# rs1_val == 268435456, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x10000000; op2val:0x0000000f; immval:4; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x10000000, 0x0000000f, 4, 3f, x3, 40,0)

# rs1_val == 536870912, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x20000000; op2val:0x0000000d; immval:4; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x20000000, 0x0000000d, 4, 1b, x3, 44,0)

# rs1_val == 1073741824, rs2_val == 16777216
# opcode: bgeu, op1:x10; op2:x11; op1val:0x40000000; op2val:0x01000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x40000000, 0x01000000, 0, 3f, x3, 48,0)

# rs1_val == 2147483648, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x80000000; op2val:0xbfffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x80000000, 0xbfffffff, 0, 1b, x3, 52,0)

# rs1_val == 4294967294, rs2_val == 524288
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x00080000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffffffe, 0x00080000, 0, 3f, x3, 56,0)

# rs1_val == 4294967293, rs2_val == 268435456
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0x10000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffffffd, 0x10000000, 8, 3f, x3, 60,0)

# rs1_val == 4294967291, rs2_val == 4294966783
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xfffffdff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffffffb, 0xfffffdff, 0, 1b, x3, 64,0)

# rs1_val == 4294967279, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xfffff7ff; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffffffef, 0xfffff7ff, 1366, 1b, x3, 68,0)

# rs1_val == 4294967263, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x0000000e; immval:128; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffffffdf, 0x0000000e, 128, 3f, x3, 72,0)

# rs1_val == 4294967231, rs2_val == 4294959103
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0xffffdfff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffffffbf, 0xffffdfff, 0, 1b, x3, 76,0)

# rs1_val == 4294967167, rs2_val == 67108864
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x04000000; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffffff7f, 0x04000000, 1366, 1b, x3, 80,0)

# rs1_val == 4294967039, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0xffffffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffffeff, 0xffffffff, 10, 1b, x3, 84,0)

# rs2_val == 4278190079, rs1_val == 3758096383
# opcode: bgeu, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0xfeffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xdfffffff, 0xfeffffff, 1024, 3f, x3, 88,0)

# rs2_val == 4160749567, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000800; op2val:0xf7ffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000800, 0xf7ffffff, 0, 1b, x3, 92,0)

# rs2_val == 4026531839, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000005; op2val:0xefffffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000005, 0xefffffff, 0, 1b, x3, 96,0)

# rs2_val == 3758096383, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00002000; op2val:0xdfffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00002000, 0xdfffffff, 8, 1b, x3, 100,0)

# rs2_val == 2147483647, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000013; op2val:0x7fffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000013, 0x7fffffff, 4, 3f, x3, 104,0)

# rs2_val == 2863311530, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00200000; op2val:0xaaaaaaaa; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00200000, 0xaaaaaaaa, 1024, 1b, x3, 108,0)

# rs1_val == 4294966783, rs2_val == 16
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0x00000010; immval:4; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffffdff, 0x00000010, 4, 1b, x3, 112,0)

# rs1_val == 4294966271, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0x00000009; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffffbff, 0x00000009, 1024, 1b, x3, 116,0)

# rs1_val == 4294965247, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0xefffffff; immval:256; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffff7ff, 0xefffffff, 256, 3f, x3, 120,0)

# rs1_val == 4294963199, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffefff; op2val:0xffefffff; immval:256; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffffefff, 0xffefffff, 256, 3f, x3, 124,0)

# rs1_val == 4294959103, rs2_val == 4194304
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00400000; immval:10; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffffdfff, 0x00400000, 10, 1b, x3, 128,0)

# rs1_val == 4294950911, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00000009; immval:64; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffffbfff, 0x00000009, 64, 3f, x3, 132,0)

# rs1_val == 4294934527, rs2_val == 4294967287
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xfffffff7; immval:64; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffff7fff, 0xfffffff7, 64, 3f, x3, 136,0)

# rs1_val == 4294901759, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x00004000; immval:32; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffeffff, 0x00004000, 32, 3f, x3, 140,0)

# rs1_val == 4294836223, rs2_val == 4294967039
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0xfffffeff; immval:512; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffdffff, 0xfffffeff, 512, 3f, x3, 144,0)

# rs1_val == 4294705151, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x00004000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffbffff, 0x00004000, 6, 3f, x3, 148,0)

# rs1_val == 4293918719, rs2_val == 2147483648
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x80000000; immval:64; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffefffff, 0x80000000, 64, 3f, x3, 152,0)

# rs1_val == 4292870143, rs2_val == 4294443007
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0xfff7ffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffdfffff, 0xfff7ffff, 4, 3f, x3, 156,0)

# rs1_val == 4290772991, rs2_val == 8388608
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00800000; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffbfffff, 0x00800000, 1366, 1b, x3, 160,0)

# rs1_val == 4278190079, rs2_val == 4294705151
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0xfffbffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfeffffff, 0xfffbffff, 4, 3f, x3, 164,0)

# rs1_val == 4261412863, rs2_val == 4294966271
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0xfffffbff; immval:32; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfdffffff, 0xfffffbff, 32, 3f, x3, 168,0)

# rs1_val == 4227858431, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xfdffffff; immval:32; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfbffffff, 0xfdffffff, 32, 3f, x3, 172,0)

# rs1_val == 4160749567, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xaaaaaaaa; immval:2; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xf7ffffff, 0xaaaaaaaa, 2, 1b, x3, 176,0)

# rs1_val == 4026531839, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xefffffff; op2val:0x00020000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xefffffff, 0x00020000, 4, 3f, x3, 180,0)

# rs1_val == 3221225471, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xfff7ffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xbfffffff, 0xfff7ffff, 10, 1b, x3, 184,0)

# rs1_val == 2147483647, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x00000001; immval:10; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x7fffffff, 0x00000001, 10, 1b, x3, 188,0)

# rs1_val == 1431655765, rs2_val == 65536
# opcode: bgeu, op1:x10; op2:x11; op1val:0x55555555; op2val:0x00010000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x55555555, 0x00010000, 4, 3f, x3, 192,0)

# rs1_val == 2863311530, rs2_val == 4294967279
# opcode: bgeu, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xffffffef; immval:8; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xaaaaaaaa, 0xffffffef, 8, 1b, x3, 196,0)

# rs2_val == 8, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x00000008; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffbffff, 0x00000008, 1366, 1b, x3, 200,0)

# rs2_val == 32, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000400; op2val:0x00000020; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000400, 0x00000020, 1366, 1b, x3, 204,0)

# rs2_val == 64, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000f; op2val:0x00000040; immval:2; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x0000000f, 0x00000040, 2, 3f, x3, 208,0)

# rs2_val == 128, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00010000; op2val:0x00000080; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00010000, 0x00000080, 0, 1b, x3, 212,0)

# rs2_val == 1024, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000c; op2val:0x00000400; immval:2; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x0000000c, 0x00000400, 2, 1b, x3, 216,0)

# rs2_val == 2048, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000020; op2val:0x00000800; immval:2; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000020, 0x00000800, 2, 1b, x3, 220,0)

# rs2_val == 8192, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x20000000; op2val:0x00002000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x20000000, 0x00002000, 0, 1b, x3, 224,0)

# rs2_val == 32768, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000400; op2val:0x00008000; immval:32; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000400, 0x00008000, 32, 3f, x3, 228,0)

# rs2_val == 134217728, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00400000; op2val:0x08000000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00400000, 0x08000000, 6, 3f, x3, 232,0)

# rs2_val == 536870912, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000800; op2val:0x20000000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000800, 0x20000000, 6, 3f, x3, 236,0)

# rs2_val == 1073741824, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00100000; op2val:0x40000000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00100000, 0x40000000, 1024, 1b, x3, 240,0)

# rs2_val == 4294967294, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000013; op2val:0xfffffffe; immval:512; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000013, 0xfffffffe, 512, 3f, x3, 244,0)

# rs2_val == 4294967293, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0xfffffffd; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffffeff, 0xfffffffd, 1366, 1b, x3, 248,0)

# rs2_val == 4294967291, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0xfffffffb; immval:4; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfffbffff, 0xfffffffb, 4, 1b, x3, 252,0)

# rs2_val == 4294967167, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00002000; op2val:0xffffff7f; immval:512; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00002000, 0xffffff7f, 512, 3f, x3, 256,0)

# rs2_val == 4294963199, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000006; op2val:0xffffefff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000006, 0xffffefff, 1024, 3f, x3, 260,0)

# rs2_val == 4294950911, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000012; op2val:0xffffbfff; immval:2; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000012, 0xffffbfff, 2, 3f, x3, 264,0)

# rs2_val == 4294901759, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000100; op2val:0xfffeffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000100, 0xfffeffff, 10, 1b, x3, 268,0)

# rs2_val == 4294836223, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000020; op2val:0xfffdffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000020, 0xfffdffff, 8, 3f, x3, 272,0)

# rs2_val == 262144, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0x00040000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfeffffff, 0x00040000, 8, 1b, x3, 276,0)

# rs2_val == 1048576, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000006; op2val:0x00100000; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00000006, 0x00100000, 1366, 1b, x3, 280,0)

# rs2_val == 2097152, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0x00200000; immval:32; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xfbffffff, 0x00200000, 32, 3f, x3, 284,0)

# rs2_val == 4290772991, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00002000; op2val:0xffbfffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00002000, 0xffbfffff, 4, 1b, x3, 288,0)

# rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffff; op2val:0xffffffff; immval:512; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0xffffffff, 0xffffffff, 512, 3f, x3, 292,0)

# rs1_val == 8192, rs2_val == 4294967263
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00002000; op2val:0xffffffdf; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00002000, 0xffffffdf, 1024, 3f, x3, 296,0)

# rs1_val == 8388608, rs2_val == 4261412863
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00800000; op2val:0xfdffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x13, x10, x11, 0x00800000, 0xfdffffff, 8, 1b, x3, 300,0)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 76*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
