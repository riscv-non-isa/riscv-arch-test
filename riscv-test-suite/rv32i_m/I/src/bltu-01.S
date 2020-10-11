
#This assembly file tests the bltu instruction of the RISC-V I extension for the bltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",bltu)

la x11,signature_x11_1

# rs1 != rs2, rs1==x30, rs2==x18, rs1_val > 0 and rs2_val > 0, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val < 0 , rs2_val == 8, rs1_val == 4278190079
# opcode: bltu, op1:x30; op2:x18; op1val:0xfeffffff; op2val:0x00000008; immval:0; align:0
TEST_BRANCH_OP(bltu, x2, x30, x18, 0xfeffffff, 0x00000008, 0, 1b, x11, 0,0)

# rs1 == rs2, rs1==x20, rs2==x20, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, rs2_val == 65536, rs1_val == 65536
# opcode: bltu, op1:x20; op2:x20; op1val:0x00010000; op2val:0x00010000; immval:64; align:0
TEST_BRANCH_OP(bltu, x2, x20, x20, 0x00010000, 0x00010000, 64, 3f, x11, 4,0)

# rs1==x14, rs2==x24, rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val < 0, 
# opcode: bltu, op1:x14; op2:x24; op1val:0x00000006; op2val:0x00000006; immval:1366; align:0
TEST_BRANCH_OP(bltu, x2, x14, x24, 0x00000006, 0x00000006, 1366, 1b, x11, 8,0)

# rs1==x9, rs2==x22, rs1_val > 0 and rs2_val > 0 and rs1_val > rs2_val and imm_val > 0 , rs1_val == 256
# opcode: bltu, op1:x9; op2:x22; op1val:0x00000100; op2val:0x00000008; immval:1024; align:0
TEST_BRANCH_OP(bltu, x2, x9, x22, 0x00000100, 0x00000008, 1024, 3f, x11, 12,0)

# rs1==x25, rs2==x19, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val > 0 , rs2_val == 4294959103, rs1_val == 32768
# opcode: bltu, op1:x25; op2:x19; op1val:0x00008000; op2val:0xffffdfff; immval:16; align:0
TEST_BRANCH_OP(bltu, x2, x25, x19, 0x00008000, 0xffffdfff, 16, 3f, x11, 16,0)

# rs1==x5, rs2==x23, rs1_val > 0 and rs2_val > 0 and rs1_val < rs2_val and imm_val < 0 , rs2_val == 4294967293, rs1_val == 4294950911
# opcode: bltu, op1:x5; op2:x23; op1val:0xffffbfff; op2val:0xfffffffd; immval:8; align:0
TEST_BRANCH_OP(bltu, x2, x5, x23, 0xffffbfff, 0xfffffffd, 8, 1b, x11, 20,0)

# rs1==x8, rs2==x15, rs1_val == 1, rs2_val == 134217728
# opcode: bltu, op1:x8; op2:x15; op1val:0x00000001; op2val:0x08000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x2, x8, x15, 0x00000001, 0x08000000, 0, 1b, x11, 24,0)

# rs1==x1, rs2==x28, rs1_val == 2, rs2_val == 4294967279
# opcode: bltu, op1:x1; op2:x28; op1val:0x00000002; op2val:0xffffffef; immval:4; align:0
TEST_BRANCH_OP(bltu, x2, x1, x28, 0x00000002, 0xffffffef, 4, 3f, x11, 28,0)

# rs1==x6, rs2==x16, rs1_val == 4, rs2_val == 4294963199
# opcode: bltu, op1:x6; op2:x16; op1val:0x00000004; op2val:0xffffefff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x2, x6, x16, 0x00000004, 0xffffefff, 1024, 3f, x11, 32,0)

# rs1==x31, rs2==x29, rs1_val == 8, rs2_val == 512
# opcode: bltu, op1:x31; op2:x29; op1val:0x00000008; op2val:0x00000200; immval:1024; align:0
TEST_BRANCH_OP(bltu, x2, x31, x29, 0x00000008, 0x00000200, 1024, 1b, x11, 36,0)

# rs1==x21, rs2==x25, rs1_val == 16, rs2_val == 4294966783
# opcode: bltu, op1:x21; op2:x25; op1val:0x00000010; op2val:0xfffffdff; immval:4; align:0
TEST_BRANCH_OP(bltu, x2, x21, x25, 0x00000010, 0xfffffdff, 4, 3f, x11, 40,0)

# rs1==x0, rs2==x31, rs1_val == 32, rs2_val == 16384
# opcode: bltu, op1:x0; op2:x31; op1val:0x00000020; op2val:0x00004000; immval:6; align:0
TEST_BRANCH_OP(bltu, x2, x0, x31, 0x00000020, 0x00004000, 6, 3f, x11, 44,0)

# rs1==x13, rs2==x17, rs1_val == 64, rs2_val == 4278190079
# opcode: bltu, op1:x13; op2:x17; op1val:0x00000040; op2val:0xfeffffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x2, x13, x17, 0x00000040, 0xfeffffff, 1024, 1b, x11, 48,0)

# rs1==x4, rs2==x27, rs1_val == 128, rs2_val == 4294967167
# opcode: bltu, op1:x4; op2:x27; op1val:0x00000080; op2val:0xffffff7f; immval:0; align:0
TEST_BRANCH_OP(bltu, x2, x4, x27, 0x00000080, 0xffffff7f, 0, 3f, x11, 52,0)

# rs1==x10, rs2==x9, rs1_val == 512, 
# opcode: bltu, op1:x10; op2:x9; op1val:0x00000200; op2val:0xffffefff; immval:4; align:0
TEST_BRANCH_OP(bltu, x2, x10, x9, 0x00000200, 0xffffefff, 4, 3f, x11, 56,0)

# rs1==x7, rs2==x3, rs1_val == 1024, 
# opcode: bltu, op1:x7; op2:x3; op1val:0x00000400; op2val:0x00000009; immval:1024; align:0
TEST_BRANCH_OP(bltu, x2, x7, x3, 0x00000400, 0x00000009, 1024, 3f, x11, 60,0)

# rs1==x19, rs2==x8, rs1_val == 2048, rs2_val == 4026531839
# opcode: bltu, op1:x19; op2:x8; op1val:0x00000800; op2val:0xefffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x19, x8, 0x00000800, 0xefffffff, 8, 1b, x11, 64,0)

# rs1==x28, rs2==x2, rs1_val == 4096, 
# opcode: bltu, op1:x28; op2:x2; op1val:0x00001000; op2val:0x00000012; immval:512; align:0
TEST_BRANCH_OP(bltu, x9, x28, x2, 0x00001000, 0x00000012, 512, 3f, x11, 68,0)
la x8,signature_x8_0

# rs1==x3, rs2==x11, rs1_val == 8192, rs2_val == 1431655765
# opcode: bltu, op1:x3; op2:x11; op1val:0x00002000; op2val:0x55555555; immval:4; align:0
TEST_BRANCH_OP(bltu, x9, x3, x11, 0x00002000, 0x55555555, 4, 1b, x8, 0,0)

# rs1==x11, rs2==x4, rs1_val == 16384, 
# opcode: bltu, op1:x11; op2:x4; op1val:0x00004000; op2val:0xffffefff; immval:1366; align:0
TEST_BRANCH_OP(bltu, x9, x11, x4, 0x00004000, 0xffffefff, 1366, 1b, x8, 4,0)

# rs1==x24, rs2==x12, rs1_val == 131072, rs2_val == 2863311530
# opcode: bltu, op1:x24; op2:x12; op1val:0x00020000; op2val:0xaaaaaaaa; immval:2; align:0
TEST_BRANCH_OP(bltu, x9, x24, x12, 0x00020000, 0xaaaaaaaa, 2, 1b, x8, 8,0)

# rs1==x12, rs2==x1, rs1_val == 262144, 
# opcode: bltu, op1:x12; op2:x1; op1val:0x00040000; op2val:0xffffff7f; immval:64; align:0
TEST_BRANCH_OP(bltu, x9, x12, x1, 0x00040000, 0xffffff7f, 64, 3f, x8, 12,0)

# rs1==x29, rs2==x14, rs1_val == 524288, rs2_val == 4293918719
# opcode: bltu, op1:x29; op2:x14; op1val:0x00080000; op2val:0xffefffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x9, x29, x14, 0x00080000, 0xffefffff, 1024, 3f, x8, 16,0)

# rs1==x17, rs2==x21, rs1_val == 1048576, 
# opcode: bltu, op1:x17; op2:x21; op1val:0x00100000; op2val:0x0000000a; immval:1366; align:0
TEST_BRANCH_OP(bltu, x9, x17, x21, 0x00100000, 0x0000000a, 1366, 1b, x8, 20,0)

# rs1==x22, rs2==x0, rs1_val == 2097152, rs2_val == 4294443007
# opcode: bltu, op1:x22; op2:x0; op1val:0x00200000; op2val:0xfff7ffff; immval:4; align:0
TEST_BRANCH_OP(bltu, x9, x22, x0, 0x00200000, 0xfff7ffff, 4, 1b, x8, 24,0)

# rs1==x15, rs2==x7, rs1_val == 4194304, rs2_val == 4294966271
# opcode: bltu, op1:x15; op2:x7; op1val:0x00400000; op2val:0xfffffbff; immval:64; align:0
TEST_BRANCH_OP(bltu, x9, x15, x7, 0x00400000, 0xfffffbff, 64, 3f, x8, 28,0)

# rs1==x23, rs2==x13, rs1_val == 8388608, rs2_val == 2048
# opcode: bltu, op1:x23; op2:x13; op1val:0x00800000; op2val:0x00000800; immval:512; align:0
TEST_BRANCH_OP(bltu, x9, x23, x13, 0x00800000, 0x00000800, 512, 3f, x8, 32,0)

# rs1==x18, rs2==x5, rs1_val == 16777216, 
# opcode: bltu, op1:x18; op2:x5; op1val:0x01000000; op2val:0xffefffff; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x18, x5, 0x01000000, 0xffefffff, 0, 1b, x8, 36,0)

# rs1==x2, rs2==x30, rs1_val == 33554432, 
# opcode: bltu, op1:x2; op2:x30; op1val:0x02000000; op2val:0x00000200; immval:16; align:0
TEST_BRANCH_OP(bltu, x9, x2, x30, 0x02000000, 0x00000200, 16, 3f, x8, 40,0)

# rs1==x16, rs2==x26, rs1_val == 67108864, 
# opcode: bltu, op1:x16; op2:x26; op1val:0x04000000; op2val:0xaaaaaaaa; immval:1024; align:0
TEST_BRANCH_OP(bltu, x9, x16, x26, 0x04000000, 0xaaaaaaaa, 1024, 3f, x8, 44,0)

# rs1==x26, rs2==x6, rs1_val == 134217728, 
# opcode: bltu, op1:x26; op2:x6; op1val:0x08000000; op2val:0x00000005; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x26, x6, 0x08000000, 0x00000005, 0, 3f, x8, 48,0)

# rs1==x27, rs2==x10, rs1_val == 268435456, rs2_val == 8192
# opcode: bltu, op1:x27; op2:x10; op1val:0x10000000; op2val:0x00002000; immval:512; align:0
TEST_BRANCH_OP(bltu, x9, x27, x10, 0x10000000, 0x00002000, 512, 3f, x8, 52,0)

# rs1_val == 536870912, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x20000000; op2val:0xffffff7f; immval:64; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x20000000, 0xffffff7f, 64, 3f, x8, 56,0)

# rs1_val == 1073741824, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x40000000; op2val:0x00000007; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x40000000, 0x00000007, 8, 3f, x8, 60,0)

# rs1_val == 2147483648, rs2_val == 268435456
# opcode: bltu, op1:x10; op2:x11; op1val:0x80000000; op2val:0x10000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x80000000, 0x10000000, 0, 1b, x8, 64,0)

# rs1_val == 4294967294, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x0000000d; immval:2; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffffffe, 0x0000000d, 2, 3f, x8, 68,0)

# rs1_val == 4294967293, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xfffffbff; immval:4; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffffffd, 0xfffffbff, 4, 3f, x8, 72,0)

# rs1_val == 4294967291, rs2_val == 4294967294
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xfffffffe; immval:128; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffffffb, 0xfffffffe, 128, 3f, x8, 76,0)

# rs1_val == 4294967287, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x10000000; immval:64; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffffff7, 0x10000000, 64, 3f, x8, 80,0)

# rs1_val == 4294967279, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffef; op2val:0x00004000; immval:6; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffffffef, 0x00004000, 6, 3f, x8, 84,0)

# rs1_val == 4294967263, rs2_val == 4096
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x00001000; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffffffdf, 0x00001000, 0, 1b, x8, 88,0)

# rs1_val == 4294967231, rs2_val == 524288
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x00080000; immval:2; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffffffbf, 0x00080000, 2, 3f, x8, 92,0)

# rs1_val == 4294967167, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0xfffffbff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffffff7f, 0xfffffbff, 1024, 3f, x8, 96,0)

# rs1_val == 4294967039, rs2_val == 16
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x00000010; immval:32; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffffeff, 0x00000010, 32, 3f, x8, 100,0)

# rs1_val == 4294966783, rs2_val == 128
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0x00000080; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffffdff, 0x00000080, 8, 1b, x8, 104,0)

# rs2_val == 4286578687, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffffdf; op2val:0xff7fffff; immval:128; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffffffdf, 0xff7fffff, 128, 3f, x8, 108,0)

# rs2_val == 4261412863, rs1_val == 4026531839
# opcode: bltu, op1:x10; op2:x11; op1val:0xefffffff; op2val:0xfdffffff; immval:128; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xefffffff, 0xfdffffff, 128, 3f, x8, 112,0)

# rs2_val == 4227858431, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x10000000; op2val:0xfbffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x10000000, 0xfbffffff, 8, 3f, x8, 116,0)

# rs2_val == 4160749567, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000001; op2val:0xf7ffffff; immval:16; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000001, 0xf7ffffff, 16, 3f, x8, 120,0)

# rs2_val == 3758096383, rs1_val == 4294705151
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0xdfffffff; immval:4; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffbffff, 0xdfffffff, 4, 1b, x8, 124,0)

# rs2_val == 3221225471, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000100; op2val:0xbfffffff; immval:16; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000100, 0xbfffffff, 16, 3f, x8, 128,0)

# rs2_val == 2147483647, rs1_val == 4294443007
# opcode: bltu, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x7fffffff; immval:16; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfff7ffff, 0x7fffffff, 16, 3f, x8, 132,0)

# rs1_val == 4294966271, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0x0000000f; immval:128; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffffbff, 0x0000000f, 128, 3f, x8, 136,0)

# rs1_val == 4294965247, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0xefffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffff7ff, 0xefffffff, 8, 1b, x8, 140,0)

# rs1_val == 4294963199, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffefff; op2val:0x00000006; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffffefff, 0x00000006, 0, 3f, x8, 144,0)

# rs1_val == 4294959103, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00001000; immval:2; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffffdfff, 0x00001000, 2, 1b, x8, 148,0)

# rs1_val == 4294934527, rs2_val == 1
# opcode: bltu, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0x00000001; immval:2; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffff7fff, 0x00000001, 2, 3f, x8, 152,0)

# rs1_val == 4294901759, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0xefffffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffeffff, 0xefffffff, 8, 3f, x8, 156,0)

# rs1_val == 4294836223, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x08000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffdffff, 0x08000000, 0, 1b, x8, 160,0)

# rs1_val == 4293918719, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffefffff; op2val:0xbfffffff; immval:1366; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffefffff, 0xbfffffff, 1366, 1b, x8, 164,0)

# rs1_val == 4292870143, rs2_val == 1073741824
# opcode: bltu, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x40000000; immval:2; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffdfffff, 0x40000000, 2, 1b, x8, 168,0)

# rs1_val == 4290772991, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0xffefffff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffbfffff, 0xffefffff, 1024, 1b, x8, 172,0)

# rs1_val == 4286578687, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xfffffdff; immval:1024; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xff7fffff, 0xfffffdff, 1024, 1b, x8, 176,0)

# rs1_val == 4261412863, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0xfeffffff; immval:6; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfdffffff, 0xfeffffff, 6, 1b, x8, 180,0)

# rs1_val == 4227858431, rs2_val == 4294836223
# opcode: bltu, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xfffdffff; immval:64; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfbffffff, 0xfffdffff, 64, 3f, x8, 184,0)

# rs1_val == 4160749567, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0xfffffdff; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xf7ffffff, 0xfffffdff, 0, 1b, x8, 188,0)

# rs1_val == 3758096383, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x0000000b; immval:64; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xdfffffff, 0x0000000b, 64, 3f, x8, 192,0)

# rs1_val == 3221225471, rs2_val == 2147483648
# opcode: bltu, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x80000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xbfffffff, 0x80000000, 0, 3f, x8, 196,0)

# rs1_val == 2147483647, rs2_val == 8388608
# opcode: bltu, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x00800000; immval:6; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x7fffffff, 0x00800000, 6, 1b, x8, 200,0)

# rs1_val == 1431655765, rs2_val == 4294967287
# opcode: bltu, op1:x10; op2:x11; op1val:0x55555555; op2val:0xfffffff7; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x55555555, 0xfffffff7, 8, 3f, x8, 204,0)

# rs1_val == 2863311530, rs2_val == 4294965247
# opcode: bltu, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xfffff7ff; immval:2; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xaaaaaaaa, 0xfffff7ff, 2, 1b, x8, 208,0)

# rs2_val == 2, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x00000002; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffff7ff, 0x00000002, 0, 1b, x8, 212,0)

# rs2_val == 4, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000006; op2val:0x00000004; immval:16; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000006, 0x00000004, 16, 3f, x8, 216,0)

# rs2_val == 32, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00100000; op2val:0x00000020; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00100000, 0x00000020, 0, 3f, x8, 220,0)

# rs2_val == 64, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000020; op2val:0x00000040; immval:10; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000020, 0x00000040, 10, 1b, x8, 224,0)

# rs2_val == 256, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000100; op2val:0x00000100; immval:256; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000100, 0x00000100, 256, 3f, x8, 228,0)

# rs2_val == 1024, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0x00000400; immval:1024; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffff7fff, 0x00000400, 1024, 1b, x8, 232,0)

# rs2_val == 32768, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000006; op2val:0x00008000; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000006, 0x00008000, 8, 3f, x8, 236,0)

# rs2_val == 131072, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x00020000; immval:2; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfff7ffff, 0x00020000, 2, 1b, x8, 240,0)

# rs2_val == 262144, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x10000000; op2val:0x00040000; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x10000000, 0x00040000, 8, 1b, x8, 244,0)

# rs2_val == 1048576, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x00100000; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffffffb, 0x00100000, 0, 3f, x8, 248,0)

# rs2_val == 2097152, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000004; op2val:0x00200000; immval:4; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000004, 0x00200000, 4, 1b, x8, 252,0)

# rs2_val == 16777216, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0x01000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffffffb, 0x01000000, 0, 3f, x8, 256,0)

# rs2_val == 33554432, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0x02000000; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffff7fff, 0x02000000, 0, 1b, x8, 260,0)

# rs2_val == 67108864, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x04000000; immval:128; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfffff7ff, 0x04000000, 128, 3f, x8, 264,0)

# rs2_val == 536870912, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x20000000; immval:128; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xffdfffff, 0x20000000, 128, 3f, x8, 268,0)

# rs2_val == 4294967291, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000020; op2val:0xfffffffb; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000020, 0xfffffffb, 8, 3f, x8, 272,0)

# rs2_val == 4294967263, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000001; op2val:0xffffffdf; immval:2; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000001, 0xffffffdf, 2, 3f, x8, 276,0)

# rs2_val == 4294967231, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000013; op2val:0xffffffbf; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000013, 0xffffffbf, 8, 1b, x8, 280,0)

# rs2_val == 4294967039, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xfffffeff; immval:512; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xff7fffff, 0xfffffeff, 512, 3f, x8, 284,0)

# rs2_val == 4294950911, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x0000000d; op2val:0xffffbfff; immval:4; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x0000000d, 0xffffbfff, 4, 1b, x8, 288,0)

# rs2_val == 4194304, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000011; op2val:0x00400000; immval:256; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000011, 0x00400000, 256, 3f, x8, 292,0)

# rs2_val == 4294934527, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000002; op2val:0xffff7fff; immval:2; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000002, 0xffff7fff, 2, 3f, x8, 296,0)

# rs2_val == 4294901759, 
# opcode: bltu, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0xfffeffff; immval:0; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0xfdffffff, 0xfffeffff, 0, 3f, x8, 300,0)

# rs2_val == 4294705151, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000400; op2val:0xfffbffff; immval:8; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000400, 0xfffbffff, 8, 1b, x8, 304,0)

# rs2_val == 4292870143, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x04000000; op2val:0xffdfffff; immval:64; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x04000000, 0xffdfffff, 64, 3f, x8, 308,0)

# rs2_val == 4290772991, 
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000013; op2val:0xffbfffff; immval:256; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000013, 0xffbfffff, 256, 3f, x8, 312,0)

# rs1_val > 0 and rs2_val > 0 and rs1_val == rs2_val and imm_val > 0, rs2_val == 65536, rs1_val == 65536
# opcode: bltu, op1:x10; op2:x11; op1val:0x00010000; op2val:0x00010000; immval:64; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00010000, 0x00010000, 64, 3f, x8, 316,0)

# rs1_val == 32, rs2_val == 16384
# opcode: bltu, op1:x10; op2:x11; op1val:0x00000020; op2val:0x00004000; immval:6; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00000020, 0x00004000, 6, 3f, x8, 320,0)

# rs1_val == 2097152, rs2_val == 4294443007
# opcode: bltu, op1:x10; op2:x11; op1val:0x00200000; op2val:0xfff7ffff; immval:4; align:0
TEST_BRANCH_OP(bltu, x9, x10, x11, 0x00200000, 0xfff7ffff, 4, 1b, x8, 324,0)
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

signature_x11_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x11_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x8_0:
    .fill 82*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
