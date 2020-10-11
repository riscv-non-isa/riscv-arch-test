
#This assembly file tests the sra instruction of the RISC-V i extension for the sra covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sra)

la x18,signature_x18_1

# rs1 == rs2 != rd, rs1==x30, rs2==x30, rd==x25, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 2, rs1_val == -32769
# opcode: sra ; op1:x30; op2:x30; dest:x25; op1val:0xffff7fff;  op2val:0x00000002
TEST_RR_OP(sra, x25, x30, x30, 0x3fffdfff, 0xffff7fff, 0x00000002, x18, 0, x5)

# rs2 == rd != rs1, rs1==x28, rs2==x6, rd==x6, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 1073741824, rs2_val == 16
# opcode: sra ; op1:x28; op2:x6; dest:x6; op1val:0x40000000;  op2val:0x00000010
TEST_RR_OP(sra, x6, x28, x6, 0x4000, 0x40000000, 0x00000010, x18, 4, x5)

# rs1 == rs2 == rd, rs1==x21, rs2==x21, rd==x21, rs1_val < 0 and rs2_val == 0, rs1_val == -2
# opcode: sra ; op1:x21; op2:x21; dest:x21; op1val:0xfffffffe;  op2val:0x00000000
TEST_RR_OP(sra, x21, x21, x21, 0xfffffffe, 0xfffffffe, 0x00000000, x18, 8, x5)

# rs1 == rd != rs2, rs1==x4, rs2==x23, rd==x4, rs1_val > 0 and rs2_val == 0, 
# opcode: sra ; op1:x4; op2:x23; dest:x4; op1val:0x00000009;  op2val:0x00000000
TEST_RR_OP(sra, x4, x4, x23, 0x9, 0x00000009, 0x00000000, x18, 12, x5)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x7, rs2==x31, rd==x2, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 1, rs1_val == 1
# opcode: sra ; op1:x7; op2:x31; dest:x2; op1val:0x00000001;  op2val:0x00000001
TEST_RR_OP(sra, x2, x7, x31, 0x0, 0x00000001, 0x00000001, x18, 16, x5)

# rs1==x14, rs2==x15, rd==x30, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs1_val == -2147483648
# opcode: sra ; op1:x14; op2:x15; dest:x30; op1val:0x80000000;  op2val:0x00000006
TEST_RR_OP(sra, x30, x14, x15, 0x2000000, 0x80000000, 0x00000006, x18, 20, x5)

# rs1==x6, rs2==x13, rd==x3, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, 
# opcode: sra ; op1:x6; op2:x13; dest:x3; op1val:0x00000000;  op2val:0x0000000c
TEST_RR_OP(sra, x3, x6, x13, 0x0, 0x00000000, 0x0000000c, x18, 24, x5)

# rs1==x0, rs2==x8, rd==x24, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 2147483647
# opcode: sra ; op1:x0; op2:x8; dest:x24; op1val:0x7fffffff;  op2val:0x0000000e
TEST_RR_OP(sra, x24, x0, x8, 0x1ffff, 0x7fffffff, 0x0000000e, x18, 28, x5)

# rs1==x27, rs2==x2, rd==x31, rs2_val == 4, rs1_val == 33554432
# opcode: sra ; op1:x27; op2:x2; dest:x31; op1val:0x02000000;  op2val:0x00000004
TEST_RR_OP(sra, x31, x27, x2, 0x200000, 0x02000000, 0x00000004, x18, 32, x5)

# rs1==x10, rs2==x24, rd==x11, rs2_val == 8, rs1_val == -67108865
# opcode: sra ; op1:x10; op2:x24; dest:x11; op1val:0xfbffffff;  op2val:0x00000008
TEST_RR_OP(sra, x11, x10, x24, 0xfbffff, 0xfbffffff, 0x00000008, x18, 36, x5)

# rs1==x1, rs2==x22, rd==x29, rs2_val == 30, 
# opcode: sra ; op1:x1; op2:x22; dest:x29; op1val:0xfffffff6;  op2val:0x0000001e
TEST_RR_OP(sra, x29, x1, x22, 0x3, 0xfffffff6, 0x0000001e, x18, 40, x5)

# rs1==x15, rs2==x7, rd==x1, rs2_val == 29, rs1_val == 16384
# opcode: sra ; op1:x15; op2:x7; dest:x1; op1val:0x00004000;  op2val:0x0000001d
TEST_RR_OP(sra, x1, x15, x7, 0x0, 0x00004000, 0x0000001d, x18, 44, x5)

# rs1==x16, rs2==x11, rd==x17, rs2_val == 27, rs1_val == 8192
# opcode: sra ; op1:x16; op2:x11; dest:x17; op1val:0x00002000;  op2val:0x0000001b
TEST_RR_OP(sra, x17, x16, x11, 0x0, 0x00002000, 0x0000001b, x18, 48, x5)

# rs1==x20, rs2==x29, rd==x12, rs2_val == 23, rs1_val == -4097
# opcode: sra ; op1:x20; op2:x29; dest:x12; op1val:0xffffefff;  op2val:0x00000017
TEST_RR_OP(sra, x12, x20, x29, 0x1ff, 0xffffefff, 0x00000017, x18, 52, x5)

# rs1==x24, rs2==x27, rd==x22, rs2_val == 15, rs1_val == -129
# opcode: sra ; op1:x24; op2:x27; dest:x22; op1val:0xffffff7f;  op2val:0x0000000f
TEST_RR_OP(sra, x22, x24, x27, 0x1ffff, 0xffffff7f, 0x0000000f, x18, 56, x5)

# rs1==x8, rs2==x17, rd==x9, rs2_val == 21, 
# opcode: sra ; op1:x8; op2:x17; dest:x9; op1val:0xfffffff8;  op2val:0x00000015
TEST_RR_OP(sra, x9, x8, x17, 0x7ff, 0xfffffff8, 0x00000015, x18, 60, x5)

# rs1==x19, rs2==x0, rd==x5, rs2_val == 10, 
# opcode: sra ; op1:x19; op2:x0; dest:x5; op1val:0xffffff7f;  op2val:0x0000000a
TEST_RR_OP(sra, x5, x19, x0, 0x3fffff, 0xffffff7f, 0x0000000a, x18, 64, x21)
la x6,signature_x6_0

# rs1==x2, rs2==x18, rd==x20, rs1_val == 2, 
# opcode: sra ; op1:x2; op2:x18; dest:x20; op1val:0x00000002;  op2val:0x00000002
TEST_RR_OP(sra, x20, x2, x18, 0x0, 0x00000002, 0x00000002, x6, 0, x21)

# rs1==x9, rs2==x20, rd==x28, rs1_val == 4, 
# opcode: sra ; op1:x9; op2:x20; dest:x28; op1val:0x00000004;  op2val:0x0000000c
TEST_RR_OP(sra, x28, x9, x20, 0x0, 0x00000004, 0x0000000c, x6, 4, x21)

# rs1==x31, rs2==x16, rd==x23, rs1_val == 8, 
# opcode: sra ; op1:x31; op2:x16; dest:x23; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(sra, x23, x31, x16, 0x0, 0x00000008, 0x00000008, x6, 8, x21)

# rs1==x29, rs2==x3, rd==x18, rs1_val == 16, 
# opcode: sra ; op1:x29; op2:x3; dest:x18; op1val:0x00000010;  op2val:0x00000017
TEST_RR_OP(sra, x18, x29, x3, 0x0, 0x00000010, 0x00000017, x6, 12, x21)

# rs1==x17, rs2==x10, rd==x0, rs1_val == 32, 
# opcode: sra ; op1:x17; op2:x10; dest:x0; op1val:0x00000020;  op2val:0x00000012
TEST_RR_OP(sra, x0, x17, x10, 0x0, 0x00000020, 0x00000012, x6, 16, x21)

# rs1==x26, rs2==x12, rd==x27, rs1_val == 64, 
# opcode: sra ; op1:x26; op2:x12; dest:x27; op1val:0x00000040;  op2val:0x0000000b
TEST_RR_OP(sra, x27, x26, x12, 0x0, 0x00000040, 0x0000000b, x6, 20, x21)

# rs1==x5, rs2==x25, rd==x13, rs1_val == 128, 
# opcode: sra ; op1:x5; op2:x25; dest:x13; op1val:0x00000080;  op2val:0x00000000
TEST_RR_OP(sra, x13, x5, x25, 0x80, 0x00000080, 0x00000000, x6, 24, x21)

# rs1==x3, rs2==x28, rd==x10, rs1_val == 256, 
# opcode: sra ; op1:x3; op2:x28; dest:x10; op1val:0x00000100;  op2val:0x0000001e
TEST_RR_OP(sra, x10, x3, x28, 0x0, 0x00000100, 0x0000001e, x6, 28, x21)

# rs1==x22, rs2==x9, rd==x19, rs1_val == 512, 
# opcode: sra ; op1:x22; op2:x9; dest:x19; op1val:0x00000200;  op2val:0x00000015
TEST_RR_OP(sra, x19, x22, x9, 0x0, 0x00000200, 0x00000015, x6, 32, x21)

# rs1==x12, rs2==x4, rd==x7, rs1_val == 1024, 
# opcode: sra ; op1:x12; op2:x4; dest:x7; op1val:0x00000400;  op2val:0x0000001f
TEST_RR_OP(sra, x7, x12, x4, 0x0, 0x00000400, 0x0000001f, x6, 36, x21)

# rs1==x13, rs2==x14, rd==x26, rs1_val == 2048, 
# opcode: sra ; op1:x13; op2:x14; dest:x26; op1val:0x00000800;  op2val:0x00000004
TEST_RR_OP(sra, x26, x13, x14, 0x80, 0x00000800, 0x00000004, x6, 40, x21)

# rs1==x25, rs2==x19, rd==x15, rs1_val == 4096, 
# opcode: sra ; op1:x25; op2:x19; dest:x15; op1val:0x00001000;  op2val:0x00000013
TEST_RR_OP(sra, x15, x25, x19, 0x0, 0x00001000, 0x00000013, x6, 44, x21)

# rs1==x18, rs2==x5, rd==x8, rs1_val == 32768, 
# opcode: sra ; op1:x18; op2:x5; dest:x8; op1val:0x00008000;  op2val:0x0000001b
TEST_RR_OP(sra, x8, x18, x5, 0x0, 0x00008000, 0x0000001b, x6, 48, x21)

# rs1==x11, rs2==x1, rd==x14, rs1_val == 65536, 
# opcode: sra ; op1:x11; op2:x1; dest:x14; op1val:0x00010000;  op2val:0x00000010
TEST_RR_OP(sra, x14, x11, x1, 0x1, 0x00010000, 0x00000010, x6, 52, x21)

# rs1==x23, rs2==x26, rd==x16, rs1_val == 131072, 
# opcode: sra ; op1:x23; op2:x26; dest:x16; op1val:0x00020000;  op2val:0x00000000
TEST_RR_OP(sra, x16, x23, x26, 0x20000, 0x00020000, 0x00000000, x6, 56, x1)

# rs1_val == 262144, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x10000, 0x00040000, 0x00000002, x6, 60, x1)

# rs1_val == 524288, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x00000001
TEST_RR_OP(sra, x12, x10, x11, 0x40000, 0x00080000, 0x00000001, x6, 64, x1)

# rs1_val == 1048576, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x40, 0x00100000, 0x0000000e, x6, 68, x1)

# rs1_val == 2097152, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0x200000, 0x00200000, 0x00000000, x6, 72, x1)

# rs1_val == 4194304, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000008
TEST_RR_OP(sra, x12, x10, x11, 0x4000, 0x00400000, 0x00000008, x6, 76, x1)

# rs1_val == 8388608, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000011
TEST_RR_OP(sra, x12, x10, x11, 0x40, 0x00800000, 0x00000011, x6, 80, x1)

# rs1_val == 16777216, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x0000000d
TEST_RR_OP(sra, x12, x10, x11, 0x800, 0x01000000, 0x0000000d, x6, 84, x1)

# rs1_val == 67108864, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x1000000, 0x04000000, 0x00000002, x6, 88, x1)

# rs1_val == -2049, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000013
TEST_RR_OP(sra, x12, x10, x11, 0x1fff, 0xfffff7ff, 0x00000013, x6, 92, x1)

# rs1_val == -8193, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff, 0xffffdfff, 0x0000000e, x6, 96, x1)

# rs1_val == -16385, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0xffffbfff, 0xffffbfff, 0x00000000, x6, 100, x1)

# rs1_val == -65537, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0xfffeffff, 0xfffeffff, 0x00000000, x6, 104, x1)

# rs1_val == -131073, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x0000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1fffb, 0xfffdffff, 0x0000000f, x6, 108, x1)

# rs1_val == -262145, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000005
TEST_RR_OP(sra, x12, x10, x11, 0x7ffdfff, 0xfffbffff, 0x00000005, x6, 112, x1)

# rs1_val == -524289, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0xfff7ffff, 0xfff7ffff, 0x00000000, x6, 116, x1)

# rs1_val == -1048577, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000001
TEST_RR_OP(sra, x12, x10, x11, 0x7ff7ffff, 0xffefffff, 0x00000001, x6, 120, x1)

# rs1_val == -2097153, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x0000000b
TEST_RR_OP(sra, x12, x10, x11, 0x1ffbff, 0xffdfffff, 0x0000000b, x6, 124, x1)

# rs1_val == -4194305, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0xffbfffff, 0xffbfffff, 0x00000000, x6, 128, x1)

# rs1_val == -8388609, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x0000001d
TEST_RR_OP(sra, x12, x10, x11, 0x7, 0xff7fffff, 0x0000001d, x6, 132, x1)

# rs1_val == -16777217, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000003
TEST_RR_OP(sra, x12, x10, x11, 0x1fdfffff, 0xfeffffff, 0x00000003, x6, 136, x1)

# rs1_val == -33554433, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000009
TEST_RR_OP(sra, x12, x10, x11, 0x7effff, 0xfdffffff, 0x00000009, x6, 140, x1)

# rs1_val == -134217729, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000015
TEST_RR_OP(sra, x12, x10, x11, 0x7bf, 0xf7ffffff, 0x00000015, x6, 144, x1)

# rs1_val == -268435457, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000013
TEST_RR_OP(sra, x12, x10, x11, 0x1dff, 0xefffffff, 0x00000013, x6, 148, x1)

# rs1_val == -536870913, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x37ffffff, 0xdfffffff, 0x00000002, x6, 152, x1)

# rs1_val == -33, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000005
TEST_RR_OP(sra, x12, x10, x11, 0x7fffffe, 0xffffffdf, 0x00000005, x6, 156, x1)

# rs1_val == 134217728, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x0000000c
TEST_RR_OP(sra, x12, x10, x11, 0x8000, 0x08000000, 0x0000000c, x6, 160, x1)

# rs1_val == 268435456, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000015
TEST_RR_OP(sra, x12, x10, x11, 0x80, 0x10000000, 0x00000015, x6, 164, x1)

# rs1_val == 536870912, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000015
TEST_RR_OP(sra, x12, x10, x11, 0x100, 0x20000000, 0x00000015, x6, 168, x1)

# rs1_val == -1073741825, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000003
TEST_RR_OP(sra, x12, x10, x11, 0x17ffffff, 0xbfffffff, 0x00000003, x6, 172, x1)

# rs1_val == 1431655765, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000010
TEST_RR_OP(sra, x12, x10, x11, 0x5555, 0x55555555, 0x00000010, x6, 176, x1)

# rs1_val == -5, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x0000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xfffffffb, 0x0000000a, x6, 180, x1)

# rs1_val == -1431655766, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x2aaaaaaa, 0xaaaaaaaa, 0x00000002, x6, 184, x1)

# rs1_val == -3, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x0000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xfffffffd, 0x0000000f, x6, 188, x1)

# rs1_val == -9, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000001
TEST_RR_OP(sra, x12, x10, x11, 0x7ffffffb, 0xfffffff7, 0x00000001, x6, 192, x1)

# rs1_val == -17, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x0000001f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xffffffef, 0x0000001f, x6, 196, x1)

# rs1_val == -65, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000006
TEST_RR_OP(sra, x12, x10, x11, 0x3fffffe, 0xffffffbf, 0x00000006, x6, 200, x1)

# rs1_val == -257, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000013
TEST_RR_OP(sra, x12, x10, x11, 0x1fff, 0xfffffeff, 0x00000013, x6, 204, x1)

# rs1_val == -513, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000012
TEST_RR_OP(sra, x12, x10, x11, 0x3fff, 0xfffffdff, 0x00000012, x6, 208, x1)

# rs1_val == -1025, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x0000001b
TEST_RR_OP(sra, x12, x10, x11, 0x1f, 0xfffffbff, 0x0000001b, x6, 212, x1)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 2, rs1_val == -32769
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x3fffdfff, 0xffff7fff, 0x00000002, x6, 216, x1)

# rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 1073741824, rs2_val == 16
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000010
TEST_RR_OP(sra, x12, x10, x11, 0x4000, 0x40000000, 0x00000010, x6, 220, x1)

# rs1_val < 0 and rs2_val == 0, rs1_val == -2
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0xfffffffe, 0xfffffffe, 0x00000000, x6, 224, x1)

# rs1_val > 0 and rs2_val == 0, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0x9, 0x00000009, 0x00000000, x6, 228, x1)

# rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 2147483647
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0x7fffffff, 0x0000000e, x6, 232, x1)

# rs2_val == 10, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x0000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xffffff7f, 0x0000000a, x6, 236, x1)

# rs1_val == 32, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0x00000012
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00000020, 0x00000012, x6, 240, x1)
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

signature_x18_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x18_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x6_0:
    .fill 61*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
