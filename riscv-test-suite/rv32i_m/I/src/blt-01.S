
#This assembly file tests the blt instruction of the RISC-V I extension for the blt covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",blt)

la x23,signature_x23_1

# rs1 != rs2, rs1==x21, rs2==x7, rs1_val > 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val == 64, rs1_val < rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == 1073741824
# opcode: blt, op1:x21; op2:x7; op1val:0x00000040; op2val:0x40000000; immval:8; align:0
TEST_BRANCH_OP(blt, x25, x21, x7, 0x00000040, 0x40000000, 8, 1b, x23, 0,0)

# rs1 == rs2, rs1==x9, rs2==x9, rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -1431655766, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 8192
# opcode: blt, op1:x9; op2:x9; op1val:0x00002000; op2val:0xaaaaaaaa; immval:128; align:0
TEST_BRANCH_OP(blt, x25, x9, x9, 0x00002000, 0xaaaaaaaa, 128, 3f, x23, 4,0)

# rs1==x17, rs2==x3, rs1_val < 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -3, rs1_val == -33
# opcode: blt, op1:x17; op2:x3; op1val:0xffffffdf; op2val:0xfffffffd; immval:0; align:0
TEST_BRANCH_OP(blt, x25, x17, x3, 0xffffffdf, 0xfffffffd, 0, 1b, x23, 8,0)

# rs1==x27, rs2==x15, rs1_val < 0 and rs2_val > 0 and imm_val & 0x03 == 0, rs1_val < rs2_val and imm_val > 0 and imm_val & 0x03 == 0
# opcode: blt, op1:x27; op2:x15; op1val:0xfffffff9; op2val:0x40000000; immval:1024; align:0
TEST_BRANCH_OP(blt, x25, x27, x15, 0xfffffff9, 0x40000000, 1024, 3f, x23, 12,0)

# rs1==x29, rs2==x8, rs1_val == rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == -16777217, rs2_val == -16777217
# opcode: blt, op1:x29; op2:x8; op1val:0xfeffffff; op2val:0xfeffffff; immval:4; align:0
TEST_BRANCH_OP(blt, x25, x29, x8, 0xfeffffff, 0xfeffffff, 4, 3f, x23, 16,0)

# rs1==x18, rs2==x28, rs1_val == rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs1_val == -2147483648, rs2_val == -2147483648
# opcode: blt, op1:x18; op2:x28; op1val:0x80000000; op2val:0x80000000; immval:8; align:0
TEST_BRANCH_OP(blt, x25, x18, x28, 0x80000000, 0x80000000, 8, 1b, x23, 20,0)

# rs1==x30, rs2==x6, rs1_val > rs2_val and imm_val < 0 and imm_val & 0x03 == 0, rs2_val == -2097153, rs1_val == -3
# opcode: blt, op1:x30; op2:x6; op1val:0xfffffffd; op2val:0xffdfffff; immval:8; align:0
TEST_BRANCH_OP(blt, x25, x30, x6, 0xfffffffd, 0xffdfffff, 8, 1b, x23, 24,0)

# rs1==x8, rs2==x16, rs1_val == 1, rs2_val == 32
# opcode: blt, op1:x8; op2:x16; op1val:0x00000001; op2val:0x00000020; immval:10; align:0
TEST_BRANCH_OP(blt, x25, x8, x16, 0x00000001, 0x00000020, 10, 1b, x23, 28,0)

# rs1==x5, rs2==x14, rs1_val == 2, rs2_val == 524288
# opcode: blt, op1:x5; op2:x14; op1val:0x00000002; op2val:0x00080000; immval:256; align:0
TEST_BRANCH_OP(blt, x25, x5, x14, 0x00000002, 0x00080000, 256, 3f, x23, 32,0)

# rs1==x12, rs2==x24, rs1_val == 4, rs2_val == 2097152
# opcode: blt, op1:x12; op2:x24; op1val:0x00000004; op2val:0x00200000; immval:4; align:0
TEST_BRANCH_OP(blt, x25, x12, x24, 0x00000004, 0x00200000, 4, 3f, x23, 36,0)

# rs1==x11, rs2==x19, rs1_val == 8, rs2_val == 1048576
# opcode: blt, op1:x11; op2:x19; op1val:0x00000008; op2val:0x00100000; immval:16; align:0
TEST_BRANCH_OP(blt, x25, x11, x19, 0x00000008, 0x00100000, 16, 3f, x23, 40,0)

# rs1==x2, rs2==x20, rs1_val == 16, rs2_val == 32768
# opcode: blt, op1:x2; op2:x20; op1val:0x00000010; op2val:0x00008000; immval:2; align:0
TEST_BRANCH_OP(blt, x25, x2, x20, 0x00000010, 0x00008000, 2, 3f, x23, 44,0)

# rs1==x4, rs2==x12, rs1_val == 32, rs2_val == 131072
# opcode: blt, op1:x4; op2:x12; op1val:0x00000020; op2val:0x00020000; immval:0; align:0
TEST_BRANCH_OP(blt, x25, x4, x12, 0x00000020, 0x00020000, 0, 1b, x23, 48,0)

# rs1==x0, rs2==x29, rs1_val == 128, rs2_val == 2048
# opcode: blt, op1:x0; op2:x29; op1val:0x00000080; op2val:0x00000800; immval:1366; align:0
TEST_BRANCH_OP(blt, x25, x0, x29, 0x00000080, 0x00000800, 1366, 1b, x23, 52,0)

# rs1==x22, rs2==x11, rs1_val == 256, rs2_val == -2049
# opcode: blt, op1:x22; op2:x11; op1val:0x00000100; op2val:0xfffff7ff; immval:2; align:0
TEST_BRANCH_OP(blt, x25, x22, x11, 0x00000100, 0xfffff7ff, 2, 3f, x23, 56,0)

# rs1==x1, rs2==x10, rs1_val == 512, 
# opcode: blt, op1:x1; op2:x10; op1val:0x00000200; op2val:0xfffffff8; immval:1366; align:0
TEST_BRANCH_OP(blt, x25, x1, x10, 0x00000200, 0xfffffff8, 1366, 1b, x23, 60,0)

# rs1==x13, rs2==x27, rs1_val == 1024, 
# opcode: blt, op1:x13; op2:x27; op1val:0x00000400; op2val:0x3fffffff; immval:128; align:0
TEST_BRANCH_OP(blt, x25, x13, x27, 0x00000400, 0x3fffffff, 128, 3f, x23, 64,0)

# rs1==x15, rs2==x18, rs1_val == 2048, rs2_val == 128
# opcode: blt, op1:x15; op2:x18; op1val:0x00000800; op2val:0x00000080; immval:8; align:0
TEST_BRANCH_OP(blt, x8, x15, x18, 0x00000800, 0x00000080, 8, 1b, x23, 68,0)

# rs1==x14, rs2==x2, rs1_val == 4096, 
# opcode: blt, op1:x14; op2:x2; op1val:0x00001000; op2val:0x00000003; immval:2; align:0
TEST_BRANCH_OP(blt, x8, x14, x2, 0x00001000, 0x00000003, 2, 1b, x23, 72,0)

# rs1==x16, rs2==x0, rs1_val == 16384, rs2_val == 4194304
# opcode: blt, op1:x16; op2:x0; op1val:0x00004000; op2val:0x00400000; immval:10; align:0
TEST_BRANCH_OP(blt, x8, x16, x0, 0x00004000, 0x00400000, 10, 1b, x23, 76,0)

# rs1==x26, rs2==x21, rs1_val == 32768, rs2_val == -33554433
# opcode: blt, op1:x26; op2:x21; op1val:0x00008000; op2val:0xfdffffff; immval:32; align:0
TEST_BRANCH_OP(blt, x8, x26, x21, 0x00008000, 0xfdffffff, 32, 3f, x23, 80,0)
la x2,signature_x2_0

# rs1==x28, rs2==x1, rs1_val == 65536, rs2_val == -268435457
# opcode: blt, op1:x28; op2:x1; op1val:0x00010000; op2val:0xefffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x8, x28, x1, 0x00010000, 0xefffffff, 0, 1b, x2, 0,0)

# rs1==x3, rs2==x26, rs1_val == 131072, 
# opcode: blt, op1:x3; op2:x26; op1val:0x00020000; op2val:0x00008000; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x3, x26, 0x00020000, 0x00008000, 4, 1b, x2, 4,0)

# rs1==x31, rs2==x23, rs1_val == 262144, 
# opcode: blt, op1:x31; op2:x23; op1val:0x00040000; op2val:0x00000006; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x31, x23, 0x00040000, 0x00000006, 6, 3f, x2, 8,0)

# rs1==x6, rs2==x13, rs1_val == 524288, 
# opcode: blt, op1:x6; op2:x13; op1val:0x00080000; op2val:0x00008000; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x6, x13, 0x00080000, 0x00008000, 1024, 1b, x2, 12,0)

# rs1==x19, rs2==x31, rs1_val == 1048576, rs2_val == -8388609
# opcode: blt, op1:x19; op2:x31; op1val:0x00100000; op2val:0xff7fffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x19, x31, 0x00100000, 0xff7fffff, 1024, 1b, x2, 16,0)

# rs1==x23, rs2==x22, rs1_val == 2097152, 
# opcode: blt, op1:x23; op2:x22; op1val:0x00200000; op2val:0x00080000; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x23, x22, 0x00200000, 0x00080000, 4, 3f, x2, 20,0)

# rs1==x25, rs2==x5, rs1_val == 4194304, rs2_val == -8193
# opcode: blt, op1:x25; op2:x5; op1val:0x00400000; op2val:0xffffdfff; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x25, x5, 0x00400000, 0xffffdfff, 4, 1b, x2, 24,0)

# rs1==x20, rs2==x17, rs1_val == 8388608, rs2_val == -134217729
# opcode: blt, op1:x20; op2:x17; op1val:0x00800000; op2val:0xf7ffffff; immval:8; align:0
TEST_BRANCH_OP(blt, x8, x20, x17, 0x00800000, 0xf7ffffff, 8, 1b, x2, 28,0)

# rs1==x7, rs2==x25, rs1_val == 16777216, rs2_val == 2
# opcode: blt, op1:x7; op2:x25; op1val:0x01000000; op2val:0x00000002; immval:1366; align:0
TEST_BRANCH_OP(blt, x8, x7, x25, 0x01000000, 0x00000002, 1366, 1b, x2, 32,0)

# rs1==x10, rs2==x30, rs1_val == 33554432, rs2_val == -33
# opcode: blt, op1:x10; op2:x30; op1val:0x02000000; op2val:0xffffffdf; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x10, x30, 0x02000000, 0xffffffdf, 4, 1b, x2, 36,0)

# rs1==x24, rs2==x4, rs1_val == 67108864, 
# opcode: blt, op1:x24; op2:x4; op1val:0x04000000; op2val:0x00000080; immval:32; align:0
TEST_BRANCH_OP(blt, x8, x24, x4, 0x04000000, 0x00000080, 32, 3f, x2, 40,0)

# rs1_val == 134217728, rs2_val == 4096
# opcode: blt, op1:x10; op2:x11; op1val:0x08000000; op2val:0x00001000; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x08000000, 0x00001000, 6, 1b, x2, 44,0)

# rs1_val == 268435456, 
# opcode: blt, op1:x10; op2:x11; op1val:0x10000000; op2val:0x00000003; immval:10; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x10000000, 0x00000003, 10, 1b, x2, 48,0)

# rs1_val == 536870912, 
# opcode: blt, op1:x10; op2:x11; op1val:0x20000000; op2val:0xff7fffff; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x20000000, 0xff7fffff, 4, 1b, x2, 52,0)

# rs1_val == 1073741824, rs2_val == 1024
# opcode: blt, op1:x10; op2:x11; op1val:0x40000000; op2val:0x00000400; immval:8; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x40000000, 0x00000400, 8, 1b, x2, 56,0)

# rs1_val == -2, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0xffffffdf; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffffffe, 0xffffffdf, 1024, 3f, x2, 60,0)

# rs1_val == -5, rs2_val == -32769
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xffff7fff; immval:64; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffffffb, 0xffff7fff, 64, 3f, x2, 64,0)

# rs1_val == -9, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffff7; op2val:0xfeffffff; immval:32; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffffff7, 0xfeffffff, 32, 3f, x2, 68,0)

# rs1_val == -17, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffef; op2val:0xfffffffa; immval:32; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffffffef, 0xfffffffa, 32, 3f, x2, 72,0)

# rs1_val == -65, rs2_val == -65537
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffbf; op2val:0xfffeffff; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffffffbf, 0xfffeffff, 6, 3f, x2, 76,0)

# rs1_val == -129, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x00200000; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffffff7f, 0x00200000, 4, 3f, x2, 80,0)

# rs1_val == -257, rs2_val == 2147483647
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x7fffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffffeff, 0x7fffffff, 0, 3f, x2, 84,0)

# rs2_val == -1048577, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00020000; op2val:0xffefffff; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x00020000, 0xffefffff, 6, 3f, x2, 88,0)

# rs2_val == -4194305, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00000003; op2val:0xffbfffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x00000003, 0xffbfffff, 1024, 3f, x2, 92,0)

# rs2_val == -67108865, rs1_val == -1431655766
# opcode: blt, op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xfbffffff; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xaaaaaaaa, 0xfbffffff, 4, 1b, x2, 96,0)

# rs2_val == -536870913, 
# opcode: blt, op1:x10; op2:x11; op1val:0x80000000; op2val:0xdfffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x80000000, 0xdfffffff, 0, 3f, x2, 100,0)

# rs2_val == -1073741825, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00020000; op2val:0xbfffffff; immval:0; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x00020000, 0xbfffffff, 0, 3f, x2, 104,0)

# rs2_val == 1431655765, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffff; op2val:0x55555555; immval:8; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffffffff, 0x55555555, 8, 1b, x2, 108,0)

# rs1_val == -513, rs2_val == 16384
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffdff; op2val:0x00004000; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffffdff, 0x00004000, 1024, 3f, x2, 112,0)

# rs1_val == -1025, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0xc0000000; immval:8; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffffbff, 0xc0000000, 8, 1b, x2, 116,0)

# rs1_val == -2049, rs2_val == -9
# opcode: blt, op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0xfffffff7; immval:256; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffff7ff, 0xfffffff7, 256, 3f, x2, 120,0)

# rs1_val == -4097, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffefff; op2val:0xff7fffff; immval:0; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffffefff, 0xff7fffff, 0, 1b, x2, 124,0)

# rs1_val == -8193, rs2_val == 16777216
# opcode: blt, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x01000000; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffffdfff, 0x01000000, 6, 1b, x2, 128,0)

# rs1_val == -16385, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0xfffffff7; immval:0; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffffbfff, 0xfffffff7, 0, 1b, x2, 132,0)

# rs1_val == -32769, rs2_val == -2
# opcode: blt, op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xfffffffe; immval:64; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffff7fff, 0xfffffffe, 64, 3f, x2, 136,0)

# rs1_val == -65537, rs2_val == -4097
# opcode: blt, op1:x10; op2:x11; op1val:0xfffeffff; op2val:0xffffefff; immval:16; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffeffff, 0xffffefff, 16, 3f, x2, 140,0)

# rs1_val == -131073, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x00000005; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffdffff, 0x00000005, 6, 1b, x2, 144,0)

# rs1_val == -262145, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x00000003; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffbffff, 0x00000003, 1024, 1b, x2, 148,0)

# rs1_val == -524289, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x00000005; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfff7ffff, 0x00000005, 6, 3f, x2, 152,0)

# rs1_val == -1048577, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffefffff; op2val:0xfbffffff; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffefffff, 0xfbffffff, 1024, 1b, x2, 156,0)

# rs1_val == -2097153, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffdfffff; op2val:0xfffff7ff; immval:512; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffdfffff, 0xfffff7ff, 512, 3f, x2, 160,0)

# rs1_val == -4194305, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x40000000; immval:8; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffbfffff, 0x40000000, 8, 1b, x2, 164,0)

# rs1_val == -8388609, 
# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xffffefff; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xff7fffff, 0xffffefff, 4, 1b, x2, 168,0)

# rs1_val == -33554433, rs2_val == 512
# opcode: blt, op1:x10; op2:x11; op1val:0xfdffffff; op2val:0x00000200; immval:512; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfdffffff, 0x00000200, 512, 3f, x2, 172,0)

# rs1_val == -67108865, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xdfffffff; immval:64; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfbffffff, 0xdfffffff, 64, 3f, x2, 176,0)

# rs1_val == -134217729, 
# opcode: blt, op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0x00080000; immval:128; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xf7ffffff, 0x00080000, 128, 3f, x2, 180,0)

# rs1_val == -268435457, 
# opcode: blt, op1:x10; op2:x11; op1val:0xefffffff; op2val:0x00000007; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xefffffff, 0x00000007, 4, 1b, x2, 184,0)

# rs1_val == -536870913, 
# opcode: blt, op1:x10; op2:x11; op1val:0xdfffffff; op2val:0xbfffffff; immval:16; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xdfffffff, 0xbfffffff, 16, 3f, x2, 188,0)

# rs1_val == -1073741825, 
# opcode: blt, op1:x10; op2:x11; op1val:0xbfffffff; op2val:0xfffffffa; immval:2; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xbfffffff, 0xfffffffa, 2, 1b, x2, 192,0)

# rs1_val == 2147483647, 
# opcode: blt, op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x00020000; immval:2; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x7fffffff, 0x00020000, 2, 3f, x2, 196,0)

# rs1_val == 1431655765, 
# opcode: blt, op1:x10; op2:x11; op1val:0x55555555; op2val:0xffff7fff; immval:2; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x55555555, 0xffff7fff, 2, 1b, x2, 200,0)

# rs2_val == 1, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00100000; op2val:0x00000001; immval:2; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x00100000, 0x00000001, 2, 3f, x2, 204,0)

# rs2_val == 4, 
# opcode: blt, op1:x10; op2:x11; op1val:0x02000000; op2val:0x00000004; immval:2; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x02000000, 0x00000004, 2, 3f, x2, 208,0)

# rs2_val == 8, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00000008; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffffdfff, 0x00000008, 1024, 3f, x2, 212,0)

# rs2_val == 16, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00000002; op2val:0x00000010; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x00000002, 0x00000010, 6, 3f, x2, 216,0)

# rs2_val == 64, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffffff; op2val:0x00000040; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffffffff, 0x00000040, 6, 3f, x2, 220,0)

# rs2_val == 256, 
# opcode: blt, op1:x10; op2:x11; op1val:0x3fffffff; op2val:0x00000100; immval:512; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x3fffffff, 0x00000100, 512, 3f, x2, 224,0)

# rs2_val == 8192, 
# opcode: blt, op1:x10; op2:x11; op1val:0x04000000; op2val:0x00002000; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x04000000, 0x00002000, 1024, 1b, x2, 228,0)

# rs2_val == 65536, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffbff; op2val:0x00010000; immval:0; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffffbff, 0x00010000, 0, 1b, x2, 232,0)

# rs2_val == 262144, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x00040000; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffffbfff, 0x00040000, 4, 3f, x2, 236,0)

# rs2_val == 8388608, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00000007; op2val:0x00800000; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x00000007, 0x00800000, 1024, 3f, x2, 240,0)

# rs2_val == 33554432, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00010000; op2val:0x02000000; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x00010000, 0x02000000, 6, 3f, x2, 244,0)

# rs2_val == 67108864, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffefffff; op2val:0x04000000; immval:512; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffefffff, 0x04000000, 512, 3f, x2, 248,0)

# rs2_val == 134217728, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffff6; op2val:0x08000000; immval:32; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffffff6, 0x08000000, 32, 3f, x2, 252,0)

# rs2_val == 268435456, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfeffffff; op2val:0x10000000; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfeffffff, 0x10000000, 1024, 1b, x2, 256,0)

# rs2_val == 536870912, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfbffffff; op2val:0x20000000; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfbffffff, 0x20000000, 4, 3f, x2, 260,0)

# rs2_val == -5, 
# opcode: blt, op1:x10; op2:x11; op1val:0x08000000; op2val:0xfffffffb; immval:8; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x08000000, 0xfffffffb, 8, 3f, x2, 264,0)

# rs2_val == -17, 
# opcode: blt, op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xffffffef; immval:512; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xff7fffff, 0xffffffef, 512, 3f, x2, 268,0)

# rs2_val == -65, 
# opcode: blt, op1:x10; op2:x11; op1val:0x00100000; op2val:0xffffffbf; immval:8; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x00100000, 0xffffffbf, 8, 3f, x2, 272,0)

# rs2_val == -129, 
# opcode: blt, op1:x10; op2:x11; op1val:0x3fffffff; op2val:0xffffff7f; immval:8; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x3fffffff, 0xffffff7f, 8, 3f, x2, 276,0)

# rs2_val == -257, 
# opcode: blt, op1:x10; op2:x11; op1val:0x3fffffff; op2val:0xfffffeff; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x3fffffff, 0xfffffeff, 1024, 3f, x2, 280,0)

# rs2_val == -513, 
# opcode: blt, op1:x10; op2:x11; op1val:0xffffefff; op2val:0xfffffdff; immval:1024; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xffffefff, 0xfffffdff, 1024, 1b, x2, 284,0)

# rs2_val == -1025, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffe; op2val:0xfffffbff; immval:2; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffffffe, 0xfffffbff, 2, 3f, x2, 288,0)

# rs2_val == -16385, 
# opcode: blt, op1:x10; op2:x11; op1val:0x04000000; op2val:0xffffbfff; immval:128; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x04000000, 0xffffbfff, 128, 3f, x2, 292,0)

# rs2_val == -131073, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xfffdffff; immval:4; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfffffffd, 0xfffdffff, 4, 3f, x2, 296,0)

# rs2_val == -262145, 
# opcode: blt, op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0xfffbffff; immval:128; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xfff7ffff, 0xfffbffff, 128, 3f, x2, 300,0)

# rs2_val == -524289, 
# opcode: blt, op1:x10; op2:x11; op1val:0xc0000000; op2val:0xfff7ffff; immval:6; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0xc0000000, 0xfff7ffff, 6, 3f, x2, 304,0)

# rs1_val > 0 and rs2_val < 0 and imm_val & 0x03 == 0, rs2_val == -1431655766, rs1_val > rs2_val and imm_val > 0 and imm_val & 0x03 == 0, rs1_val == 8192
# opcode: blt, op1:x10; op2:x11; op1val:0x00002000; op2val:0xaaaaaaaa; immval:128; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x00002000, 0xaaaaaaaa, 128, 3f, x2, 308,0)

# rs1_val == 128, rs2_val == 2048
# opcode: blt, op1:x10; op2:x11; op1val:0x00000080; op2val:0x00000800; immval:1366; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x00000080, 0x00000800, 1366, 1b, x2, 312,0)

# rs1_val == 16384, rs2_val == 4194304
# opcode: blt, op1:x10; op2:x11; op1val:0x00004000; op2val:0x00400000; immval:10; align:0
TEST_BRANCH_OP(blt, x8, x10, x11, 0x00004000, 0x00400000, 10, 1b, x2, 316,0)
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

signature_x23_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x23_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 80*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
