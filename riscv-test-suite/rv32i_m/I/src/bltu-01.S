
#This assembly file tests the bltu instruction of the RISC-V I extension for the bltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bltu)

RVTEST_SIGBASE( x5,signature_x5_1)

# rs1 != rs2, rs1==x24, rs2==x14, rs1_val > 0 and rs2_val > 0, rs2_val == 268435456, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val > 0 , rs1_val == 1
# opcode: bltu, op1:x24; op2:x14; op1val:0x00000001; op2val:0x10000000; immval:256; align:0
TEST_BRANCH_OP(bltu, x16, x24, x14, 0x00000001, 0x10000000, 256, 3f, x5, 0,0)

# rs1 == rs2, rs1==x13, rs2==x13, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, rs1_val == 16, rs2_val == 16
# opcode: bltu, op1:x13; op2:x13; op1val:0x00000010; op2val:0x00000010; immval:32; align:0
TEST_BRANCH_OP(bltu, x16, x13, x13, 0x00000010, 0x00000010, 32, 3f, x5, 4,0)

# rs1==x30, rs2==x29, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val < 0, 
# opcode: bltu, op1:x30; op2:x29; op1val:0x00000005; op2val:0x00000005; immval:6; align:0
TEST_BRANCH_OP(bltu, x16, x30, x29, 0x00000005, 0x00000005, 6, 1b, x5, 8,0)

# rs1==x23, rs2==x18, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val > 0 , rs2_val == 4294934527, rs1_val == 4294966271
# opcode: bltu, op1:x23; op2:x18; op1val:0xfffffbff; op2val:0xffff7fff; immval:4; align:0
TEST_BRANCH_OP(bltu, x16, x23, x18, 0xfffffbff, 0xffff7fff, 4, 3f, x5, 12,0)

# rs1==x6, rs2==x21, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val < 0 , rs2_val == 4294966271, rs1_val == 4294967294
# opcode: bltu, op1:x6; op2:x21; op1val:0xfffffffe; op2val:0xfffffbff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x16, x6, x21, 0xfffffffe, 0xfffffbff, 1024, 1b, x5, 16,0)

# rs1==x12, rs2==x26, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val < 0 , rs2_val == 4294967279, rs1_val == 4290772991
# opcode: bltu, op1:x12; op2:x26; op1val:0xffbfffff; op2val:0xffffffef; immval:1024; align:0
TEST_BRANCH_OP(bltu, x16, x12, x26, 0xffbfffff, 0xffffffef, 1024, 1b, x5, 20,0)

# rs1==x3, rs2==x2, rs1_val == 2, rs2_val == 4227858431
# opcode: bltu, op1:x3; op2:x2; op1val:0x00000002; op2val:0xfbffffff; immval:6; align:0
TEST_BRANCH_OP(bltu, x16, x3, x2, 0x00000002, 0xfbffffff, 6, 1b, x5, 24,0)

# rs1==x1, rs2==x4, rs1_val == 4, rs2_val == 131072
# opcode: bltu, op1:x1; op2:x4; op1val:0x00000004; op2val:0x00020000; immval:512; align:0
TEST_BRANCH_OP(bltu, x16, x1, x4, 0x00000004, 0x00020000, 512, 3f, x5, 28,0)

# rs1==x27, rs2==x19, rs1_val == 8, rs2_val == 4294967263
# opcode: bltu, op1:x27; op2:x19; op1val:0x00000008; op2val:0xffffffdf; immval:0; align:0
TEST_BRANCH_OP(bltu, x16, x27, x19, 0x00000008, 0xffffffdf, 0, 3f, x5, 32,0)

# rs1==x0, rs2==x22, rs1_val == 32, 
# opcode: bltu, op1:x0; op2:x22; op1val:0x00000020; op2val:0x00000007; immval:1366; align:0
TEST_BRANCH_OP(bltu, x16, x0, x22, 0x00000020, 0x00000007, 1366, 1b, x5, 36,0)

# rs1==x29, rs2==x11, rs1_val == 64, rs2_val == 4294836223
# opcode: bltu, op1:x29; op2:x11; op1val:0x00000040; op2val:0xfffdffff; immval:32; align:0
TEST_BRANCH_OP(bltu, x16, x29, x11, 0x00000040, 0xfffdffff, 32, 3f, x5, 40,0)

# rs1==x8, rs2==x1, rs1_val == 128, 
# opcode: bltu, op1:x8; op2:x1; op1val:0x00000080; op2val:0x00000003; immval:0; align:0
TEST_BRANCH_OP(bltu, x16, x8, x1, 0x00000080, 0x00000003, 0, 3f, x5, 44,0)

# rs1==x26, rs2==x27, rs1_val == 256, rs2_val == 4294967293
# opcode: bltu, op1:x26; op2:x27; op1val:0x00000100; op2val:0xfffffffd; immval:2; align:0
TEST_BRANCH_OP(bltu, x16, x26, x27, 0x00000100, 0xfffffffd, 2, 3f, x5, 48,0)

# rs1==x11, rs2==x10, rs1_val == 512, 
# opcode: bltu, op1:x11; op2:x10; op1val:0x00000200; op2val:0xfbffffff; immval:6; align:0
TEST_BRANCH_OP(bltu, x16, x11, x10, 0x00000200, 0xfbffffff, 6, 1b, x5, 52,0)

# rs1==x7, rs2==x15, rs1_val == 1024, 
# opcode: bltu, op1:x7; op2:x15; op1val:0x00000400; op2val:0x0000000e; immval:0; align:0
TEST_BRANCH_OP(bltu, x16, x7, x15, 0x00000400, 0x0000000e, 0, 1b, x5, 56,0)

# rs1==x22, rs2==x6, rs1_val == 2048, rs2_val == 2097152
# opcode: bltu, op1:x22; op2:x6; op1val:0x00000800; op2val:0x00200000; immval:10; align:0
TEST_BRANCH_OP(bltu, x16, x22, x6, 0x00000800, 0x00200000, 10, 1b, x5, 60,0)

# rs1==x9, rs2==x7, rs1_val == 4096, 
# opcode: bltu, op1:x9; op2:x7; op1val:0x00001000; op2val:0x0000000e; immval:16; align:0
TEST_BRANCH_OP(bltu, x16, x9, x7, 0x00001000, 0x0000000e, 16, 3f, x5, 64,0)

# rs1==x18, rs2==x25, rs1_val == 8192, 
# opcode: bltu, op1:x18; op2:x25; op1val:0x00002000; op2val:0x10000000; immval:4; align:0
TEST_BRANCH_OP(bltu, x16, x18, x25, 0x00002000, 0x10000000, 4, 1b, x5, 68,0)

# rs1==x15, rs2==x0, rs1_val == 16384, rs2_val == 134217728
# opcode: bltu, op1:x15; op2:x0; op1val:0x00004000; op2val:0x08000000; immval:1024; align:0
TEST_BRANCH_OP(bltu, x16, x15, x0, 0x00004000, 0x08000000, 1024, 1b, x5, 72,0)

# rs1==x20, rs2==x23, rs1_val == 32768, rs2_val == 2147483647
# opcode: bltu, op1:x20; op2:x23; op1val:0x00008000; op2val:0x7fffffff; immval:0; align:0
TEST_BRANCH_OP(bltu, x16, x20, x23, 0x00008000, 0x7fffffff, 0, 3f, x5, 76,0)

# rs1==x25, rs2==x12, rs1_val == 65536, rs2_val == 256
# opcode: bltu, op1:x25; op2:x12; op1val:0x00010000; op2val:0x00000100; immval:512; align:0
TEST_BRANCH_OP(bltu, x16, x25, x12, 0x00010000, 0x00000100, 512, 3f, x5, 80,0)

# rs1==x31, rs2==x17, rs1_val == 131072, 
# opcode: bltu, op1:x31; op2:x17; op1val:0x00020000; op2val:0xffffffdf; immval:16; align:0
TEST_BRANCH_OP(bltu, x16, x31, x17, 0x00020000, 0xffffffdf, 16, 3f, x5, 84,0)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x28, rs2==x8, rs1_val == 262144, 
# opcode: bltu, op1:x28; op2:x8; op1val:0x00040000; op2val:0xffff7fff; immval:32; align:0
TEST_BRANCH_OP(bltu, x6, x28, x8, 0x00040000, 0xffff7fff, 32, 3f, x1, 0,0)

# rs1==x17, rs2==x30, rs1_val == 524288, rs2_val == 2048
# opcode: bltu, op1:x17; op2:x30; op1val:0x00080000; op2val:0x00000800; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x17, x30, 0x00080000, 0x00000800, 4, 1b, x1, 4,0)

# rs1==x2, rs2==x5, rs1_val == 1048576, 
# opcode: bltu, op1:x2; op2:x5; op1val:0x00100000; op2val:0x00000011; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x2, x5, 0x00100000, 0x00000011, 2, 1b, x1, 8,0)

# rs1==x4, rs2==x31, rs1_val == 2097152, rs2_val == 4294967039
# opcode: bltu, op1:x4; op2:x31; op1val:0x00200000; op2val:0xfffffeff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x4, x31, 0x00200000, 0xfffffeff, 1024, 3f, x1, 12,0)

# rs1==x21, rs2==x16, rs1_val == 4194304, rs2_val == 8
# opcode: bltu, op1:x21; op2:x16; op1val:0x00400000; op2val:0x00000008; immval:8; align:0
TEST_BRANCH_OP(bltu, x6, x21, x16, 0x00400000, 0x00000008, 8, 3f, x1, 16,0)

# rs1==x16, rs2==x24, rs1_val == 8388608, 
# opcode: bltu, op1:x16; op2:x24; op1val:0x00800000; op2val:0x00000010; immval:16; align:0
TEST_BRANCH_OP(bltu, x6, x16, x24, 0x00800000, 0x00000010, 16, 3f, x1, 20,0)

# rs1==x10, rs2==x3, rs1_val == 16777216, rs2_val == 4294967287
# opcode: bltu, op1:x10; op2:x3; op1val:0x01000000; op2val:0xfffffff7; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x10, x3, 0x01000000, 0xfffffff7, 1024, 3f, x1, 24,0)

# rs1==x14, rs2==x28, rs1_val == 33554432, 
# opcode: bltu, op1:x14; op2:x28; op1val:0x02000000; op2val:0x08000000; immval:8; align:0
TEST_BRANCH_OP(bltu, x6, x14, x28, 0x02000000, 0x08000000, 8, 3f, x1, 28,0)

# rs1==x5, rs2==x9, rs1_val == 67108864, rs2_val == 16777216
# opcode: bltu, op1:x5; op2:x9; op1val:0x04000000; op2val:0x01000000; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x5, x9, 0x04000000, 0x01000000, 4, 1b, x1, 32,0)

# rs1==x19, rs2==x20, rs1_val == 134217728, 
# opcode: bltu, op1:x19; op2:x20; op1val:0x08000000; op2val:0x00020000; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x19, x20, 0x08000000, 0x00020000, 4, 3f, x1, 36,0)

# rs1_val == 268435456, rs2_val == 2
# opcode: bltu, op1:x10; op2:x11; op1val:0x10000000; op2val:0x00000002; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x10000000, 0x00000002, 4, 3f, x1, 40,0)

# rs1_val == 536870912, rs2_val == 4294959103
# opcode: bltu, op1:x10; op2:x11; op1val:0x20000000; op2val:0xffffdfff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x20000000, 0xffffdfff, 1024, 1b, x1, 44,0)

# rs1_val == 1073741824, rs2_val == 32
# opcode: bltu, op1:x10; op2:x11; op1val:0x40000000; op2val:0x00000020; immval:1366; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x40000000, 0x00000020, 1366, 1b, x1, 48,0)

# rs1_val == 2147483648, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x80000000; op2val:0xfbffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x80000000, 0xfbffffff, 8, 1b, x1, 52,0)

# rs1_val == 4294967293, rs2_val == 32768
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0x00008000; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfffffffd, 0x00008000, 1024, 3f, x1, 56,0)

# rs1_val == 4294967291, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x00000013; immval:10; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfffffffb, 0x00000013, 10, 1b, x1, 60,0)

# rs1_val == 4294967287, rs2_val == 128
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00000080; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfffffff7, 0x00000080, 2, 3f, x1, 64,0)

# rs1_val == 4294967279, rs2_val == 4160749567
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xf7ffffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffffffef, 0xf7ffffff, 1024, 1b, x1, 68,0)

# rs1_val == 4294967263, rs2_val == 4294950911
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0xffffbfff; immval:6; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffffffdf, 0xffffbfff, 6, 3f, x1, 72,0)

# rs1_val == 4294967231, rs2_val == 4294967294
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0xfffffffe; immval:6; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffffffbf, 0xfffffffe, 6, 1b, x1, 76,0)

# rs1_val == 4294967167, rs2_val == 1
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x00000001; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffffff7f, 0x00000001, 2, 1b, x1, 80,0)

# rs2_val == 4286578687, rs1_val == 4026531839
# opcode: bltu, op1:x10; op2:x11; op1val:0xefffffff; op2val:0xff7fffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xefffffff, 0xff7fffff, 1024, 1b, x1, 84,0)

# rs2_val == 4278190079, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000d; op2val:0xfeffffff; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x0000000d, 0xfeffffff, 2, 1b, x1, 88,0)

# rs2_val == 4261412863, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x04000000; op2val:0xfdffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x04000000, 0xfdffffff, 8, 3f, x1, 92,0)

# rs2_val == 4026531839, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x40000000; op2val:0xefffffff; immval:6; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x40000000, 0xefffffff, 6, 1b, x1, 96,0)

# rs2_val == 3758096383, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00020000; op2val:0xdfffffff; immval:6; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00020000, 0xdfffffff, 6, 1b, x1, 100,0)

# rs2_val == 3221225471, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00020000; op2val:0xbfffffff; immval:64; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00020000, 0xbfffffff, 64, 3f, x1, 104,0)

# rs2_val == 1431655765, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xefffffff; op2val:0x55555555; immval:8; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xefffffff, 0x55555555, 8, 3f, x1, 108,0)

# rs2_val == 2863311530, rs1_val == 2863311530
# opcode: bltu, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xaaaaaaaa; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xaaaaaaaa, 0xaaaaaaaa, 2, 3f, x1, 112,0)

# rs1_val == 4294967039, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x00000001; immval:6; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfffffeff, 0x00000001, 6, 3f, x1, 116,0)

# rs1_val == 4294966783, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0x00200000; immval:1366; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfffffdff, 0x00200000, 1366, 1b, x1, 120,0)

# rs1_val == 4294965247, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0xffffffef; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfffff7ff, 0xffffffef, 2, 1b, x1, 124,0)

# rs1_val == 4294963199, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffefff; op2val:0xfffffeff; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffffefff, 0xfffffeff, 2, 3f, x1, 128,0)

# rs1_val == 4294959103, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00200000; immval:6; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffffdfff, 0x00200000, 6, 3f, x1, 132,0)

# rs1_val == 4294950911, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00000006; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffffbfff, 0x00000006, 4, 3f, x1, 136,0)

# rs1_val == 4294934527, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0x0000000a; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffff7fff, 0x0000000a, 4, 1b, x1, 140,0)

# rs1_val == 4294901759, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x0000000e; immval:0; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfffeffff, 0x0000000e, 0, 1b, x1, 144,0)

# rs1_val == 4294836223, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0xffffdfff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfffdffff, 0xffffdfff, 1024, 3f, x1, 148,0)

# rs1_val == 4294705151, rs2_val == 8192
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x00002000; immval:0; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfffbffff, 0x00002000, 0, 3f, x1, 152,0)

# rs1_val == 4294443007, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x00000008; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfff7ffff, 0x00000008, 2, 1b, x1, 156,0)

# rs1_val == 4293918719, rs2_val == 262144
# opcode: bltu, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x00040000; immval:32; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffefffff, 0x00040000, 32, 3f, x1, 160,0)

# rs1_val == 4292870143, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x00000003; immval:16; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffdfffff, 0x00000003, 16, 3f, x1, 164,0)

# rs1_val == 4286578687, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xffffffdf; immval:6; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xff7fffff, 0xffffffdf, 6, 1b, x1, 168,0)

# rs1_val == 4278190079, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0x00000005; immval:8; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfeffffff, 0x00000005, 8, 3f, x1, 172,0)

# rs1_val == 4261412863, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0xfffffbff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfdffffff, 0xfffffbff, 1024, 1b, x1, 176,0)

# rs1_val == 4227858431, rs2_val == 67108864
# opcode: bltu, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0x04000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfbffffff, 0x04000000, 2, 1b, x1, 180,0)

# rs1_val == 4160749567, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xfdffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xf7ffffff, 0xfdffffff, 8, 1b, x1, 184,0)

# rs1_val == 3758096383, rs2_val == 33554432
# opcode: bltu, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x02000000; immval:6; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xdfffffff, 0x02000000, 6, 1b, x1, 188,0)

# rs1_val == 3221225471, rs2_val == 1048576
# opcode: bltu, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x00100000; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xbfffffff, 0x00100000, 4, 1b, x1, 192,0)

# rs1_val == 2147483647, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x02000000; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x7fffffff, 0x02000000, 1024, 3f, x1, 196,0)

# rs1_val == 1431655765, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x55555555; op2val:0x00000003; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x55555555, 0x00000003, 4, 3f, x1, 200,0)

# rs2_val == 4, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0x00000004; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xf7ffffff, 0x00000004, 2, 3f, x1, 204,0)

# rs2_val == 64, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x00000040; immval:10; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x7fffffff, 0x00000040, 10, 1b, x1, 208,0)

# rs2_val == 512, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xefffffff; op2val:0x00000200; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xefffffff, 0x00000200, 1024, 3f, x1, 212,0)

# rs2_val == 1024, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000006; op2val:0x00000400; immval:64; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00000006, 0x00000400, 64, 3f, x1, 216,0)

# rs2_val == 4096, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffefff; op2val:0x00001000; immval:32; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffffefff, 0x00001000, 32, 3f, x1, 220,0)

# rs2_val == 16384, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x40000000; op2val:0x00004000; immval:32; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x40000000, 0x00004000, 32, 3f, x1, 224,0)

# rs2_val == 65536, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffff; op2val:0x00010000; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffffffff, 0x00010000, 4, 3f, x1, 228,0)

# rs2_val == 524288, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x00080000; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffefffff, 0x00080000, 4, 1b, x1, 232,0)

# rs2_val == 4194304, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00040000; op2val:0x00400000; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00040000, 0x00400000, 4, 3f, x1, 236,0)

# rs2_val == 8388608, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x00800000; immval:32; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffdfffff, 0x00800000, 32, 3f, x1, 240,0)

# rs2_val == 536870912, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x20000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfffffffb, 0x20000000, 2, 1b, x1, 244,0)

# rs2_val == 1073741824, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0x40000000; immval:32; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfeffffff, 0x40000000, 32, 3f, x1, 248,0)

# rs2_val == 2147483648, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x80000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffdfffff, 0x80000000, 2, 3f, x1, 252,0)

# rs2_val == 4294967291, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0xfffffffb; immval:2; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xfffffff7, 0xfffffffb, 2, 1b, x1, 256,0)

# rs2_val == 4294967231, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00200000; op2val:0xffffffbf; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00200000, 0xffffffbf, 4, 1b, x1, 260,0)

# rs2_val == 4294967167, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000010; op2val:0xffffff7f; immval:64; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00000010, 0xffffff7f, 64, 3f, x1, 264,0)

# rs2_val == 4294966783, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xfffffdff; immval:16; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffffffef, 0xfffffdff, 16, 3f, x1, 268,0)

# rs2_val == 4294965247, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000010; op2val:0xfffff7ff; immval:32; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00000010, 0xfffff7ff, 32, 3f, x1, 272,0)

# rs2_val == 4294963199, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xffffefff; immval:64; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xffffffef, 0xffffefff, 64, 3f, x1, 276,0)

# rs2_val == 4294901759, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000f; op2val:0xfffeffff; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x0000000f, 0xfffeffff, 4, 3f, x1, 280,0)

# rs2_val == 4294705151, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000006; op2val:0xfffbffff; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00000006, 0xfffbffff, 4, 1b, x1, 284,0)

# rs2_val == 4294443007, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000008; op2val:0xfff7ffff; immval:6; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00000008, 0xfff7ffff, 6, 3f, x1, 288,0)

# rs2_val == 4293918719, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x08000000; op2val:0xffefffff; immval:4; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x08000000, 0xffefffff, 4, 1b, x1, 292,0)

# rs2_val == 4292870143, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xffdfffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0xaaaaaaaa, 0xffdfffff, 1024, 1b, x1, 296,0)

# rs2_val == 4290772991, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00200000; op2val:0xffbfffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00200000, 0xffbfffff, 8, 3f, x1, 300,0)

# rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, rs1_val == 16, rs2_val == 16
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000010; op2val:0x00000010; immval:32; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00000010, 0x00000010, 32, 3f, x1, 304,0)

# rs1_val == 32, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000020; op2val:0x00000007; immval:1366; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00000020, 0x00000007, 1366, 1b, x1, 308,0)

# rs1_val == 16384, rs2_val == 134217728
# opcode: bltu, op1:x10; op2:x11; op1val:0x00004000; op2val:0x08000000; immval:1024; align:0
TEST_BRANCH_OP(bltu, x6, x10, x11, 0x00004000, 0x08000000, 1024, 1b, x1, 312,0)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 79*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
