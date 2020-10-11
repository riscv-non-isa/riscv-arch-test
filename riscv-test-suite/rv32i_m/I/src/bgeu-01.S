
#This assembly file tests the bgeu instruction of the RISC-V I extension for the bgeu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bgeu)

la x26,signature_x26_1

# rs1 != rs2, rs1==x8, rs2==x0, rs1_val > 0 and rs2_val > 0, rs2_val == 32768, rs1_val == 134217728, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val < 0 
# opcode: bgeu, op1:x8; op2:x0; op1val:0x08000000; op2val:0x00008000; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x5, x8, x0, 0x08000000, 0x00008000, 1366, 1b, x26, 0,0)

# rs1 == rs2, rs1==x24, rs2==x24, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, rs2_val == 4278190079, rs1_val == 4278190079
# opcode: bgeu, op1:x24; op2:x24; op1val:0xfeffffff; op2val:0xfeffffff; immval:128; align:0
TEST_BRANCH_OP(bgeu, x5, x24, x24, 0xfeffffff, 0xfeffffff, 128, 3f, x26, 4,0)

# rs1==x10, rs2==x8, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val < 0, rs1_val == 268435456, rs2_val == 268435456
# opcode: bgeu, op1:x10; op2:x8; op1val:0x10000000; op2val:0x10000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x5, x10, x8, 0x10000000, 0x10000000, 8, 1b, x26, 8,0)

# rs1==x22, rs2==x6, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val > 0 , rs2_val == 4160749567, rs1_val == 4292870143
# opcode: bgeu, op1:x22; op2:x6; op1val:0xffdfffff; op2val:0xf7ffffff; immval:512; align:0
TEST_BRANCH_OP(bgeu, x5, x22, x6, 0xffdfffff, 0xf7ffffff, 512, 3f, x26, 12,0)

# rs1==x9, rs2==x19, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val > 0 , rs1_val == 1
# opcode: bgeu, op1:x9; op2:x19; op1val:0x00000001; op2val:0x00000006; immval:6; align:0
TEST_BRANCH_OP(bgeu, x5, x9, x19, 0x00000001, 0x00000006, 6, 3f, x26, 16,0)

# rs1==x13, rs2==x3, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val < 0 , rs1_val == 1048576, rs2_val == 2097152
# opcode: bgeu, op1:x13; op2:x3; op1val:0x00100000; op2val:0x00200000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x5, x13, x3, 0x00100000, 0x00200000, 1024, 1b, x26, 20,0)

# rs1==x16, rs2==x11, rs1_val == 2, rs2_val == 4293918719
# opcode: bgeu, op1:x16; op2:x11; op1val:0x00000002; op2val:0xffefffff; immval:512; align:0
TEST_BRANCH_OP(bgeu, x5, x16, x11, 0x00000002, 0xffefffff, 512, 3f, x26, 24,0)

# rs1==x25, rs2==x21, rs1_val == 4, rs2_val == 1073741824
# opcode: bgeu, op1:x25; op2:x21; op1val:0x00000004; op2val:0x40000000; immval:64; align:0
TEST_BRANCH_OP(bgeu, x5, x25, x21, 0x00000004, 0x40000000, 64, 3f, x26, 28,0)

# rs1==x18, rs2==x31, rs1_val == 8, 
# opcode: bgeu, op1:x18; op2:x31; op1val:0x00000008; op2val:0x00000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x5, x18, x31, 0x00000008, 0x00000000, 8, 1b, x26, 32,0)

# rs1==x7, rs2==x13, rs1_val == 16, rs2_val == 3758096383
# opcode: bgeu, op1:x7; op2:x13; op1val:0x00000010; op2val:0xdfffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x5, x7, x13, 0x00000010, 0xdfffffff, 4, 3f, x26, 36,0)

# rs1==x1, rs2==x23, rs1_val == 32, 
# opcode: bgeu, op1:x1; op2:x23; op1val:0x00000020; op2val:0x00000005; immval:512; align:0
TEST_BRANCH_OP(bgeu, x5, x1, x23, 0x00000020, 0x00000005, 512, 3f, x26, 40,0)

# rs1==x23, rs2==x17, rs1_val == 64, rs2_val == 8
# opcode: bgeu, op1:x23; op2:x17; op1val:0x00000040; op2val:0x00000008; immval:6; align:0
TEST_BRANCH_OP(bgeu, x5, x23, x17, 0x00000040, 0x00000008, 6, 1b, x26, 44,0)

# rs1==x27, rs2==x29, rs1_val == 128, 
# opcode: bgeu, op1:x27; op2:x29; op1val:0x00000080; op2val:0x00000003; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x5, x27, x29, 0x00000080, 0x00000003, 1366, 1b, x26, 48,0)

# rs1==x4, rs2==x10, rs1_val == 256, rs2_val == 8192
# opcode: bgeu, op1:x4; op2:x10; op1val:0x00000100; op2val:0x00002000; immval:4; align:0
TEST_BRANCH_OP(bgeu, x5, x4, x10, 0x00000100, 0x00002000, 4, 3f, x26, 52,0)

# rs1==x6, rs2==x27, rs1_val == 512, rs2_val == 262144
# opcode: bgeu, op1:x6; op2:x27; op1val:0x00000200; op2val:0x00040000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x5, x6, x27, 0x00000200, 0x00040000, 1024, 1b, x26, 56,0)

# rs1==x15, rs2==x16, rs1_val == 1024, rs2_val == 4026531839
# opcode: bgeu, op1:x15; op2:x16; op1val:0x00000400; op2val:0xefffffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x5, x15, x16, 0x00000400, 0xefffffff, 10, 1b, x26, 60,0)

# rs1==x20, rs2==x12, rs1_val == 2048, rs2_val == 4294959103
# opcode: bgeu, op1:x20; op2:x12; op1val:0x00000800; op2val:0xffffdfff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x5, x20, x12, 0x00000800, 0xffffdfff, 6, 3f, x26, 64,0)

# rs1==x2, rs2==x18, rs1_val == 4096, rs2_val == 1024
# opcode: bgeu, op1:x2; op2:x18; op1val:0x00001000; op2val:0x00000400; immval:6; align:0
TEST_BRANCH_OP(bgeu, x5, x2, x18, 0x00001000, 0x00000400, 6, 1b, x26, 68,0)

# rs1==x14, rs2==x22, rs1_val == 8192, 
# opcode: bgeu, op1:x14; op2:x22; op1val:0x00002000; op2val:0xf7ffffff; immval:128; align:0
TEST_BRANCH_OP(bgeu, x5, x14, x22, 0x00002000, 0xf7ffffff, 128, 3f, x26, 72,0)

# rs1==x0, rs2==x15, rs1_val == 16384, rs2_val == 2147483648
# opcode: bgeu, op1:x0; op2:x15; op1val:0x00004000; op2val:0x80000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x6, x0, x15, 0x00004000, 0x80000000, 0, 1b, x26, 76,0)

# rs1==x31, rs2==x14, rs1_val == 32768, rs2_val == 64
# opcode: bgeu, op1:x31; op2:x14; op1val:0x00008000; op2val:0x00000040; immval:128; align:0
TEST_BRANCH_OP(bgeu, x6, x31, x14, 0x00008000, 0x00000040, 128, 3f, x26, 80,0)

# rs1==x12, rs2==x2, rs1_val == 65536, 
# opcode: bgeu, op1:x12; op2:x2; op1val:0x00010000; op2val:0x00000011; immval:256; align:0
TEST_BRANCH_OP(bgeu, x6, x12, x2, 0x00010000, 0x00000011, 256, 3f, x26, 84,0)

# rs1==x11, rs2==x4, rs1_val == 131072, 
# opcode: bgeu, op1:x11; op2:x4; op1val:0x00020000; op2val:0xffffdfff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x6, x11, x4, 0x00020000, 0xffffdfff, 1024, 1b, x26, 88,0)

# rs1==x5, rs2==x30, rs1_val == 262144, rs2_val == 4294967287
# opcode: bgeu, op1:x5; op2:x30; op1val:0x00040000; op2val:0xfffffff7; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x6, x5, x30, 0x00040000, 0xfffffff7, 1366, 1b, x26, 92,0)
la x2,signature_x2_0

# rs1==x17, rs2==x28, rs1_val == 524288, rs2_val == 4294967263
# opcode: bgeu, op1:x17; op2:x28; op1val:0x00080000; op2val:0xffffffdf; immval:6; align:0
TEST_BRANCH_OP(bgeu, x6, x17, x28, 0x00080000, 0xffffffdf, 6, 1b, x2, 0,0)

# rs1==x21, rs2==x1, rs1_val == 2097152, 
# opcode: bgeu, op1:x21; op2:x1; op1val:0x00200000; op2val:0xfffffff7; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x6, x21, x1, 0x00200000, 0xfffffff7, 1024, 3f, x2, 4,0)

# rs1==x28, rs2==x5, rs1_val == 4194304, rs2_val == 4294967294
# opcode: bgeu, op1:x28; op2:x5; op1val:0x00400000; op2val:0xfffffffe; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x6, x28, x5, 0x00400000, 0xfffffffe, 1366, 1b, x2, 8,0)

# rs1==x30, rs2==x25, rs1_val == 8388608, rs2_val == 4294967293
# opcode: bgeu, op1:x30; op2:x25; op1val:0x00800000; op2val:0xfffffffd; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x6, x30, x25, 0x00800000, 0xfffffffd, 1366, 1b, x2, 12,0)

# rs1==x26, rs2==x20, rs1_val == 16777216, rs2_val == 4294934527
# opcode: bgeu, op1:x26; op2:x20; op1val:0x01000000; op2val:0xffff7fff; immval:512; align:0
TEST_BRANCH_OP(bgeu, x6, x26, x20, 0x01000000, 0xffff7fff, 512, 3f, x2, 16,0)

# rs1==x19, rs2==x7, rs1_val == 33554432, rs2_val == 4294965247
# opcode: bgeu, op1:x19; op2:x7; op1val:0x02000000; op2val:0xfffff7ff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x6, x19, x7, 0x02000000, 0xfffff7ff, 0, 3f, x2, 20,0)

# rs1==x29, rs2==x9, rs1_val == 67108864, rs2_val == 4294967167
# opcode: bgeu, op1:x29; op2:x9; op1val:0x04000000; op2val:0xffffff7f; immval:2; align:0
TEST_BRANCH_OP(bgeu, x6, x29, x9, 0x04000000, 0xffffff7f, 2, 1b, x2, 24,0)

# rs1==x3, rs2==x26, rs1_val == 536870912, rs2_val == 67108864
# opcode: bgeu, op1:x3; op2:x26; op1val:0x20000000; op2val:0x04000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x6, x3, x26, 0x20000000, 0x04000000, 0, 3f, x2, 28,0)

# rs1_val == 1073741824, rs2_val == 4294967231
# opcode: bgeu, op1:x10; op2:x11; op1val:0x40000000; op2val:0xffffffbf; immval:4; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x40000000, 0xffffffbf, 4, 3f, x2, 32,0)

# rs1_val == 2147483648, rs2_val == 4261412863
# opcode: bgeu, op1:x10; op2:x11; op1val:0x80000000; op2val:0xfdffffff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x80000000, 0xfdffffff, 4, 3f, x2, 36,0)

# rs1_val == 4294967294, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x00000008; immval:10; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffffffe, 0x00000008, 10, 1b, x2, 40,0)

# rs1_val == 4294967293, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xffffdfff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffffffd, 0xffffdfff, 6, 3f, x2, 44,0)

# rs1_val == 4294967291, rs2_val == 65536
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x00010000; immval:16; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffffffb, 0x00010000, 16, 3f, x2, 48,0)

# rs1_val == 4294967287, rs2_val == 4294963199
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0xffffefff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffffff7, 0xffffefff, 6, 1b, x2, 52,0)

# rs1_val == 4294967279, rs2_val == 4292870143
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xffdfffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffffffef, 0xffdfffff, 1024, 1b, x2, 56,0)

# rs1_val == 4294967263, rs2_val == 512
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x00000200; immval:10; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffffffdf, 0x00000200, 10, 1b, x2, 60,0)

# rs2_val == 4286578687, rs1_val == 4294934527
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xff7fffff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffff7fff, 0xff7fffff, 64, 3f, x2, 64,0)

# rs2_val == 4227858431, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000100; op2val:0xfbffffff; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x00000100, 0xfbffffff, 1366, 1b, x2, 68,0)

# rs2_val == 3221225471, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000013; op2val:0xbfffffff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x00000013, 0xbfffffff, 10, 1b, x2, 72,0)

# rs2_val == 2147483647, rs1_val == 4293918719
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x7fffffff; immval:16; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffefffff, 0x7fffffff, 16, 3f, x2, 76,0)

# rs2_val == 1431655765, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x55555555; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffffffdf, 0x55555555, 1366, 1b, x2, 80,0)

# rs2_val == 2863311530, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000004; op2val:0xaaaaaaaa; immval:4; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x00000004, 0xaaaaaaaa, 4, 3f, x2, 84,0)

# rs1_val == 4294967231, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x00000005; immval:64; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffffffbf, 0x00000005, 64, 3f, x2, 88,0)

# rs1_val == 4294967167, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x0000000d; immval:2; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffffff7f, 0x0000000d, 2, 3f, x2, 92,0)

# rs1_val == 4294967039, rs2_val == 4294705151
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0xfffbffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffffeff, 0xfffbffff, 0, 1b, x2, 96,0)

# rs1_val == 4294966783, rs2_val == 33554432
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0x02000000; immval:6; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffffdff, 0x02000000, 6, 1b, x2, 100,0)

# rs1_val == 4294966271, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0xdfffffff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffffbff, 0xdfffffff, 1024, 1b, x2, 104,0)

# rs1_val == 4294965247, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x80000000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffff7ff, 0x80000000, 1024, 3f, x2, 108,0)

# rs1_val == 4294963199, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffefff; op2val:0xfffffffe; immval:8; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffffefff, 0xfffffffe, 8, 1b, x2, 112,0)

# rs1_val == 4294959103, rs2_val == 536870912
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x20000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffffdfff, 0x20000000, 8, 3f, x2, 116,0)

# rs1_val == 4294950911, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00000400; immval:0; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffffbfff, 0x00000400, 0, 1b, x2, 120,0)

# rs1_val == 4294901759, rs2_val == 256
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x00000100; immval:32; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffeffff, 0x00000100, 32, 3f, x2, 124,0)

# rs1_val == 4294836223, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0xffdfffff; immval:128; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffdffff, 0xffdfffff, 128, 3f, x2, 128,0)

# rs1_val == 4294705151, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x00040000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffbffff, 0x00040000, 1024, 1b, x2, 132,0)

# rs1_val == 4294443007, rs2_val == 524288
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x00080000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfff7ffff, 0x00080000, 0, 3f, x2, 136,0)

# rs1_val == 4290772991, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0xffffefff; immval:10; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffbfffff, 0xffffefff, 10, 1b, x2, 140,0)

# rs1_val == 4286578687, rs2_val == 4294966271
# opcode: bgeu, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xfffffbff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xff7fffff, 0xfffffbff, 1024, 1b, x2, 144,0)

# rs1_val == 4261412863, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0xfdffffff; immval:32; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfdffffff, 0xfdffffff, 32, 3f, x2, 148,0)

# rs1_val == 4227858431, rs2_val == 4290772991
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xffbfffff; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfbffffff, 0xffbfffff, 1366, 1b, x2, 152,0)

# rs1_val == 4160749567, rs2_val == 4294966783
# opcode: bgeu, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xfffffdff; immval:4; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xf7ffffff, 0xfffffdff, 4, 3f, x2, 156,0)

# rs1_val == 4026531839, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xefffffff; op2val:0xffffffff; immval:8; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xefffffff, 0xffffffff, 8, 1b, x2, 160,0)

# rs1_val == 3758096383, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x00000200; immval:16; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xdfffffff, 0x00000200, 16, 3f, x2, 164,0)

# rs1_val == 3221225471, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x00000000; immval:256; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xbfffffff, 0x00000000, 256, 3f, x2, 168,0)

# rs1_val == 2147483647, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x02000000; immval:2; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x7fffffff, 0x02000000, 2, 3f, x2, 172,0)

# rs1_val == 1431655765, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x55555555; op2val:0x55555555; immval:8; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x55555555, 0x55555555, 8, 3f, x2, 176,0)

# rs1_val == 2863311530, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xffffdfff; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xaaaaaaaa, 0xffffdfff, 1024, 1b, x2, 180,0)

# rs2_val == 1, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00004000; op2val:0x00000001; immval:6; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x00004000, 0x00000001, 6, 1b, x2, 184,0)

# rs2_val == 2, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x20000000; op2val:0x00000002; immval:128; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x20000000, 0x00000002, 128, 3f, x2, 188,0)

# rs2_val == 4, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffff; op2val:0x00000004; immval:4; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffffffff, 0x00000004, 4, 1b, x2, 192,0)

# rs2_val == 16, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x00000010; immval:10; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffeffff, 0x00000010, 10, 1b, x2, 196,0)

# rs2_val == 32, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0x00000020; immval:6; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffffffd, 0x00000020, 6, 3f, x2, 200,0)

# rs2_val == 128, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x01000000; op2val:0x00000080; immval:4; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x01000000, 0x00000080, 4, 1b, x2, 204,0)

# rs2_val == 2048, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00000800; immval:4; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffffbfff, 0x00000800, 4, 1b, x2, 208,0)

# rs2_val == 8388608, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x00800000; immval:256; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffff7ff, 0x00800000, 256, 3f, x2, 212,0)

# rs2_val == 16777216, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0x01000000; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xaaaaaaaa, 0x01000000, 1366, 1b, x2, 216,0)

# rs2_val == 134217728, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0x08000000; immval:8; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xf7ffffff, 0x08000000, 8, 3f, x2, 220,0)

# rs2_val == 131072, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x0000000d; op2val:0x00020000; immval:32; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x0000000d, 0x00020000, 32, 3f, x2, 224,0)

# rs2_val == 4294967291, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000400; op2val:0xfffffffb; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x00000400, 0xfffffffb, 1024, 3f, x2, 228,0)

# rs2_val == 4294967279, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0xffffffef; immval:0; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffbffff, 0xffffffef, 0, 1b, x2, 232,0)

# rs2_val == 4294967039, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x08000000; op2val:0xfffffeff; immval:6; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x08000000, 0xfffffeff, 6, 3f, x2, 236,0)

# rs2_val == 4096, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00001000; immval:16; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffbfffff, 0x00001000, 16, 3f, x2, 240,0)

# rs2_val == 4294950911, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xffffbfff; immval:512; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffffffd, 0xffffbfff, 512, 3f, x2, 244,0)

# rs2_val == 16384, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x00004000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xdfffffff, 0x00004000, 0, 3f, x2, 248,0)

# rs2_val == 4294901759, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000013; op2val:0xfffeffff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x00000013, 0xfffeffff, 64, 3f, x2, 252,0)

# rs2_val == 4294836223, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000011; op2val:0xfffdffff; immval:0; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x00000011, 0xfffdffff, 0, 3f, x2, 256,0)

# rs2_val == 4294443007, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0xfff7ffff; immval:64; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfffff7ff, 0xfff7ffff, 64, 3f, x2, 260,0)

# rs2_val == 1048576, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0xffffffff; op2val:0x00100000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xffffffff, 0x00100000, 0, 3f, x2, 264,0)

# rs2_val == 4194304, 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00000003; op2val:0x00400000; immval:1024; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x00000003, 0x00400000, 1024, 1b, x2, 268,0)

# rs1_val > 0 and rs2_val > 0, rs2_val == 32768, rs1_val == 134217728, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val < 0 
# opcode: bgeu, op1:x10; op2:x11; op1val:0x08000000; op2val:0x00008000; immval:1366; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x08000000, 0x00008000, 1366, 1b, x2, 272,0)

# rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, rs2_val == 4278190079, rs1_val == 4278190079
# opcode: bgeu, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0xfeffffff; immval:128; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0xfeffffff, 0xfeffffff, 128, 3f, x2, 276,0)

# rs1_val == 16384, rs2_val == 2147483648
# opcode: bgeu, op1:x10; op2:x11; op1val:0x00004000; op2val:0x80000000; immval:0; align:0
TEST_BRANCH_OP(bgeu, x6, x10, x11, 0x00004000, 0x80000000, 0, 1b, x2, 280,0)
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

signature_x26_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x26_1:
    .fill 24*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 71*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
