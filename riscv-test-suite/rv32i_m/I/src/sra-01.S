
#This assembly file tests the sra instruction of the RISC-V i extension for the sra covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sra)

RVTEST_SIGBASE( x6,signature_x6_1)

# rs1 == rs2 != rd, rs1==x12, rs2==x12, rd==x2, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 23, rs1_val == -262145
# opcode: sra ; op1:x12; op2:x12; dest:x2; op1val:0xfffbffff;  op2val:0x00000017
TEST_RR_OP(sra, x2, x12, x12, 0x1ff, 0xfffbffff, 0x00000017, x6, 0, x16)

# rs2 == rd != rs1, rs1==x1, rs2==x15, rd==x15, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 32
# opcode: sra ; op1:x1; op2:x15; dest:x15; op1val:0x00000020;  op2val:0x00000017
TEST_RR_OP(sra, x15, x1, x15, 0x0, 0x00000020, 0x00000017, x6, 4, x16)

# rs1 == rd != rs2, rs1==x26, rs2==x9, rd==x26, rs1_val < 0 and rs2_val == 0, rs1_val == -32769
# opcode: sra ; op1:x26; op2:x9; dest:x26; op1val:0xffff7fff;  op2val:0x00000000
TEST_RR_OP(sra, x26, x26, x9, 0xffff7fff, 0xffff7fff, 0x00000000, x6, 8, x16)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x9, rs2==x7, rd==x5, rs1_val > 0 and rs2_val == 0, rs1_val == 1048576
# opcode: sra ; op1:x9; op2:x7; dest:x5; op1val:0x00100000;  op2val:0x00000000
TEST_RR_OP(sra, x5, x9, x7, 0x100000, 0x00100000, 0x00000000, x6, 12, x16)

# rs1 == rs2 == rd, rs1==x4, rs2==x4, rd==x4, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 8, rs2_val == 8
# opcode: sra ; op1:x4; op2:x4; dest:x4; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(sra, x4, x4, x4, 0x0, 0x00000008, 0x00000008, x6, 16, x16)

# rs1==x20, rs2==x29, rd==x7, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 1, rs1_val == -2147483648
# opcode: sra ; op1:x20; op2:x29; dest:x7; op1val:0x80000000;  op2val:0x00000001
TEST_RR_OP(sra, x7, x20, x29, 0x40000000, 0x80000000, 0x00000001, x6, 20, x16)

# rs1==x30, rs2==x17, rd==x27, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, 
# opcode: sra ; op1:x30; op2:x17; dest:x27; op1val:0x00000000;  op2val:0x00000017
TEST_RR_OP(sra, x27, x30, x17, 0x0, 0x00000000, 0x00000017, x6, 24, x16)

# rs1==x15, rs2==x0, rd==x28, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 2147483647
# opcode: sra ; op1:x15; op2:x0; dest:x28; op1val:0x7fffffff;  op2val:0x00000017
TEST_RR_OP(sra, x28, x15, x0, 0xff, 0x7fffffff, 0x00000017, x6, 28, x16)

# rs1==x25, rs2==x8, rd==x3, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 27, rs1_val == 1
# opcode: sra ; op1:x25; op2:x8; dest:x3; op1val:0x00000001;  op2val:0x0000001b
TEST_RR_OP(sra, x3, x25, x8, 0x0, 0x00000001, 0x0000001b, x6, 32, x16)

# rs1==x18, rs2==x20, rd==x9, rs2_val == 2, rs1_val == 65536
# opcode: sra ; op1:x18; op2:x20; dest:x9; op1val:0x00010000;  op2val:0x00000002
TEST_RR_OP(sra, x9, x18, x20, 0x4000, 0x00010000, 0x00000002, x6, 36, x16)

# rs1==x31, rs2==x14, rd==x19, rs2_val == 4, rs1_val == 256
# opcode: sra ; op1:x31; op2:x14; dest:x19; op1val:0x00000100;  op2val:0x00000004
TEST_RR_OP(sra, x19, x31, x14, 0x10, 0x00000100, 0x00000004, x6, 40, x16)

# rs1==x29, rs2==x13, rd==x8, rs2_val == 16, rs1_val == -134217729
# opcode: sra ; op1:x29; op2:x13; dest:x8; op1val:0xf7ffffff;  op2val:0x00000010
TEST_RR_OP(sra, x8, x29, x13, 0xf7ff, 0xf7ffffff, 0x00000010, x6, 44, x16)

# rs1==x7, rs2==x11, rd==x24, rs2_val == 30, rs1_val == -4194305
# opcode: sra ; op1:x7; op2:x11; dest:x24; op1val:0xffbfffff;  op2val:0x0000001e
TEST_RR_OP(sra, x24, x7, x11, 0x3, 0xffbfffff, 0x0000001e, x6, 48, x16)

# rs1==x23, rs2==x18, rd==x0, rs2_val == 29, rs1_val == 1431655765
# opcode: sra ; op1:x23; op2:x18; dest:x0; op1val:0x55555555;  op2val:0x0000001d
TEST_RR_OP(sra, x0, x23, x18, 0x2, 0x55555555, 0x0000001d, x6, 52, x16)

# rs1==x5, rs2==x10, rd==x25, rs2_val == 15, rs1_val == -3
# opcode: sra ; op1:x5; op2:x10; dest:x25; op1val:0xfffffffd;  op2val:0x0000000f
TEST_RR_OP(sra, x25, x5, x10, 0x1ffff, 0xfffffffd, 0x0000000f, x6, 56, x16)

# rs1==x10, rs2==x24, rd==x21, rs2_val == 21, rs1_val == 4096
# opcode: sra ; op1:x10; op2:x24; dest:x21; op1val:0x00001000;  op2val:0x00000015
TEST_RR_OP(sra, x21, x10, x24, 0x0, 0x00001000, 0x00000015, x6, 60, x7)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x0, rs2==x28, rd==x13, rs2_val == 10, rs1_val == -1025
# opcode: sra ; op1:x0; op2:x28; dest:x13; op1val:0xfffffbff;  op2val:0x0000000a
TEST_RR_OP(sra, x13, x0, x28, 0x3ffffe, 0xfffffbff, 0x0000000a, x4, 0, x7)

# rs1==x19, rs2==x26, rd==x29, rs1_val == 2, 
# opcode: sra ; op1:x19; op2:x26; dest:x29; op1val:0x00000002;  op2val:0x0000001f
TEST_RR_OP(sra, x29, x19, x26, 0x0, 0x00000002, 0x0000001f, x4, 4, x7)

# rs1==x22, rs2==x21, rd==x30, rs1_val == 4, 
# opcode: sra ; op1:x22; op2:x21; dest:x30; op1val:0x00000004;  op2val:0x00000015
TEST_RR_OP(sra, x30, x22, x21, 0x0, 0x00000004, 0x00000015, x4, 8, x7)

# rs1==x21, rs2==x27, rd==x12, rs1_val == 16, 
# opcode: sra ; op1:x21; op2:x27; dest:x12; op1val:0x00000010;  op2val:0x0000000c
TEST_RR_OP(sra, x12, x21, x27, 0x0, 0x00000010, 0x0000000c, x4, 12, x7)

# rs1==x28, rs2==x2, rd==x22, rs1_val == 64, 
# opcode: sra ; op1:x28; op2:x2; dest:x22; op1val:0x00000040;  op2val:0x00000000
TEST_RR_OP(sra, x22, x28, x2, 0x40, 0x00000040, 0x00000000, x4, 16, x7)

# rs1==x6, rs2==x5, rd==x31, rs1_val == 128, 
# opcode: sra ; op1:x6; op2:x5; dest:x31; op1val:0x00000080;  op2val:0x00000017
TEST_RR_OP(sra, x31, x6, x5, 0x0, 0x00000080, 0x00000017, x4, 20, x7)

# rs1==x11, rs2==x19, rd==x14, rs1_val == 512, 
# opcode: sra ; op1:x11; op2:x19; dest:x14; op1val:0x00000200;  op2val:0x00000000
TEST_RR_OP(sra, x14, x11, x19, 0x200, 0x00000200, 0x00000000, x4, 24, x7)

# rs1==x14, rs2==x6, rd==x23, rs1_val == 1024, 
# opcode: sra ; op1:x14; op2:x6; dest:x23; op1val:0x00000400;  op2val:0x0000000f
TEST_RR_OP(sra, x23, x14, x6, 0x0, 0x00000400, 0x0000000f, x4, 28, x7)

# rs1==x24, rs2==x1, rd==x16, rs1_val == 2048, 
# opcode: sra ; op1:x24; op2:x1; dest:x16; op1val:0x00000800;  op2val:0x0000000c
TEST_RR_OP(sra, x16, x24, x1, 0x0, 0x00000800, 0x0000000c, x4, 32, x7)

# rs1==x17, rs2==x30, rd==x10, rs1_val == 8192, 
# opcode: sra ; op1:x17; op2:x30; dest:x10; op1val:0x00002000;  op2val:0x00000005
TEST_RR_OP(sra, x10, x17, x30, 0x100, 0x00002000, 0x00000005, x4, 36, x7)

# rs1==x2, rs2==x22, rd==x18, rs1_val == 16384, 
# opcode: sra ; op1:x2; op2:x22; dest:x18; op1val:0x00004000;  op2val:0x00000007
TEST_RR_OP(sra, x18, x2, x22, 0x80, 0x00004000, 0x00000007, x4, 40, x7)

# rs1==x13, rs2==x3, rd==x17, rs1_val == 32768, 
# opcode: sra ; op1:x13; op2:x3; dest:x17; op1val:0x00008000;  op2val:0x0000001f
TEST_RR_OP(sra, x17, x13, x3, 0x0, 0x00008000, 0x0000001f, x4, 44, x7)

# rs1==x16, rs2==x31, rd==x6, rs1_val == 131072, 
# opcode: sra ; op1:x16; op2:x31; dest:x6; op1val:0x00020000;  op2val:0x0000001d
TEST_RR_OP(sra, x6, x16, x31, 0x0, 0x00020000, 0x0000001d, x4, 48, x7)

# rs1==x3, rs2==x23, rd==x20, rs1_val == 262144, 
# opcode: sra ; op1:x3; op2:x23; dest:x20; op1val:0x00040000;  op2val:0x00000006
TEST_RR_OP(sra, x20, x3, x23, 0x1000, 0x00040000, 0x00000006, x4, 52, x7)

# rs1==x27, rs2==x25, rd==x11, rs1_val == 524288, 
# opcode: sra ; op1:x27; op2:x25; dest:x11; op1val:0x00080000;  op2val:0x00000007
TEST_RR_OP(sra, x11, x27, x25, 0x1000, 0x00080000, 0x00000007, x4, 56, x7)

# rs1==x8, rs2==x16, rd==x1, rs1_val == 2097152, 
# opcode: sra ; op1:x8; op2:x16; dest:x1; op1val:0x00200000;  op2val:0x0000000c
TEST_RR_OP(sra, x1, x8, x16, 0x200, 0x00200000, 0x0000000c, x4, 60, x7)

# rs1_val == 4194304, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000015
TEST_RR_OP(sra, x12, x10, x11, 0x2, 0x00400000, 0x00000015, x4, 64, x1)

# rs1_val == 8388608, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x0000001e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00800000, 0x0000001e, x4, 68, x1)

# rs1_val == 16777216, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000006
TEST_RR_OP(sra, x12, x10, x11, 0x40000, 0x01000000, 0x00000006, x4, 72, x1)

# rs1_val == 33554432, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x800, 0x02000000, 0x0000000e, x4, 76, x1)

# rs1_val == -2049, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffdff, 0xfffff7ff, 0x00000002, x4, 80, x1)

# rs1_val == -4097, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00000001
TEST_RR_OP(sra, x12, x10, x11, 0x7ffff7ff, 0xffffefff, 0x00000001, x4, 84, x1)

# rs1_val == -8193, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000017
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xffffdfff, 0x00000017, x4, 88, x1)

# rs1_val == -16385, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x0000000c
TEST_RR_OP(sra, x12, x10, x11, 0xffffb, 0xffffbfff, 0x0000000c, x4, 92, x1)

# rs1_val == -65537, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x0000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffbf, 0xfffeffff, 0x0000000a, x4, 96, x1)

# rs1_val == -131073, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000005
TEST_RR_OP(sra, x12, x10, x11, 0x7ffefff, 0xfffdffff, 0x00000005, x4, 100, x1)

# rs1_val == -524289, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x0000000c
TEST_RR_OP(sra, x12, x10, x11, 0xfff7f, 0xfff7ffff, 0x0000000c, x4, 104, x1)

# rs1_val == -1048577, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000005
TEST_RR_OP(sra, x12, x10, x11, 0x7ff7fff, 0xffefffff, 0x00000005, x4, 108, x1)

# rs1_val == -2097153, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x3ff7ffff, 0xffdfffff, 0x00000002, x4, 112, x1)

# rs1_val == -8388609, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000015
TEST_RR_OP(sra, x12, x10, x11, 0x7fb, 0xff7fffff, 0x00000015, x4, 116, x1)

# rs1_val == -16777217, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000007
TEST_RR_OP(sra, x12, x10, x11, 0x1fdffff, 0xfeffffff, 0x00000007, x4, 120, x1)

# rs1_val == -33554433, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000003
TEST_RR_OP(sra, x12, x10, x11, 0x1fbfffff, 0xfdffffff, 0x00000003, x4, 124, x1)

# rs1_val == -67108865, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000007
TEST_RR_OP(sra, x12, x10, x11, 0x1f7ffff, 0xfbffffff, 0x00000007, x4, 128, x1)

# rs1_val == -268435457, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000017
TEST_RR_OP(sra, x12, x10, x11, 0x1df, 0xefffffff, 0x00000017, x4, 132, x1)

# rs1_val == -536870913, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000003
TEST_RR_OP(sra, x12, x10, x11, 0x1bffffff, 0xdfffffff, 0x00000003, x4, 136, x1)

# rs1_val == -1073741825, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000007
TEST_RR_OP(sra, x12, x10, x11, 0x17fffff, 0xbfffffff, 0x00000007, x4, 140, x1)

# rs1_val == 67108864, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000015
TEST_RR_OP(sra, x12, x10, x11, 0x20, 0x04000000, 0x00000015, x4, 144, x1)

# rs1_val == 134217728, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000009
TEST_RR_OP(sra, x12, x10, x11, 0x40000, 0x08000000, 0x00000009, x4, 148, x1)

# rs1_val == 268435456, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x0000001d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x10000000, 0x0000001d, x4, 152, x1)

# rs1_val == 536870912, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x0000000a
TEST_RR_OP(sra, x12, x10, x11, 0x80000, 0x20000000, 0x0000000a, x4, 156, x1)

# rs1_val == 1073741824, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x10000, 0x40000000, 0x0000000e, x4, 160, x1)

# rs1_val == -2, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000009
TEST_RR_OP(sra, x12, x10, x11, 0x7fffff, 0xfffffffe, 0x00000009, x4, 164, x1)

# rs1_val == -1431655766, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x0000001f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xaaaaaaaa, 0x0000001f, x4, 168, x1)

# rs1_val == -5, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000010
TEST_RR_OP(sra, x12, x10, x11, 0xffff, 0xfffffffb, 0x00000010, x4, 172, x1)

# rs1_val == -9, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x0000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xfffffff7, 0x0000000f, x4, 176, x1)

# rs1_val == -17, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x0000001b
TEST_RR_OP(sra, x12, x10, x11, 0x1f, 0xffffffef, 0x0000001b, x4, 180, x1)

# rs1_val == -33, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000008
TEST_RR_OP(sra, x12, x10, x11, 0xffffff, 0xffffffdf, 0x00000008, x4, 184, x1)

# rs1_val == -65, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff, 0xffffffbf, 0x0000000e, x4, 188, x1)

# rs1_val == -129, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x0000000b
TEST_RR_OP(sra, x12, x10, x11, 0x1fffff, 0xffffff7f, 0x0000000b, x4, 192, x1)

# rs1_val == -257, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x3fffffbf, 0xfffffeff, 0x00000002, x4, 196, x1)

# rs1_val == -513, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000005
TEST_RR_OP(sra, x12, x10, x11, 0x7ffffef, 0xfffffdff, 0x00000005, x4, 200, x1)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 23, rs1_val == -262145
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000017
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xfffbffff, 0x00000017, x4, 204, x1)

# rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 8, rs2_val == 8
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00000008, 0x00000008, x4, 208, x1)

# rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 2147483647
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000017
TEST_RR_OP(sra, x12, x10, x11, 0xff, 0x7fffffff, 0x00000017, x4, 212, x1)

# rs2_val == 29, rs1_val == 1431655765
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x0000001d
TEST_RR_OP(sra, x12, x10, x11, 0x2, 0x55555555, 0x0000001d, x4, 216, x1)

# rs2_val == 10, rs1_val == -1025
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x0000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffe, 0xfffffbff, 0x0000000a, x4, 220, x1)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x6_1:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 56*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
