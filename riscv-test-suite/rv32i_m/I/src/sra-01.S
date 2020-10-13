
#This assembly file tests the sra instruction of the RISC-V i extension for the sra covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sra)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x24, rs2==x26, rd==x27, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -65
# opcode: sra ; op1:x24; op2:x26; dest:x27; op1val:0xffffffbf;  op2val:0x00000005
TEST_RR_OP(sra, x27, x24, x26, 0x7fffffd, 0xffffffbf, 0x00000005, x1, 0, x7)

# rs1 == rs2 != rd, rs1==x6, rs2==x6, rd==x13, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 2, rs1_val == 67108864
# opcode: sra ; op1:x6; op2:x6; dest:x13; op1val:0x04000000;  op2val:0x00000002
TEST_RR_OP(sra, x13, x6, x6, 0x1000000, 0x04000000, 0x00000002, x1, 4, x7)

# rs1 == rd != rs2, rs1==x21, rs2==x12, rd==x21, rs1_val < 0 and rs2_val == 0, rs1_val == -32769
# opcode: sra ; op1:x21; op2:x12; dest:x21; op1val:0xffff7fff;  op2val:0x00000000
TEST_RR_OP(sra, x21, x21, x12, 0xffff7fff, 0xffff7fff, 0x00000000, x1, 8, x7)

# rs2 == rd != rs1, rs1==x28, rs2==x10, rd==x10, rs1_val > 0 and rs2_val == 0, rs1_val == 512
# opcode: sra ; op1:x28; op2:x10; dest:x10; op1val:0x00000200;  op2val:0x00000000
TEST_RR_OP(sra, x10, x28, x10, 0x200, 0x00000200, 0x00000000, x1, 12, x7)

# rs1 == rs2 == rd, rs1==x5, rs2==x5, rd==x5, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs2_val == 4, rs1_val == 4
# opcode: sra ; op1:x5; op2:x5; dest:x5; op1val:0x00000004;  op2val:0x00000004
TEST_RR_OP(sra, x5, x5, x5, 0x0, 0x00000004, 0x00000004, x1, 16, x7)

# rs1==x13, rs2==x18, rd==x31, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs1_val == -2147483648
# opcode: sra ; op1:x13; op2:x18; dest:x31; op1val:0x80000000;  op2val:0x00000006
TEST_RR_OP(sra, x31, x13, x18, 0x2000000, 0x80000000, 0x00000006, x1, 20, x7)

# rs1==x27, rs2==x14, rd==x4, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, 
# opcode: sra ; op1:x27; op2:x14; dest:x4; op1val:0x00000000;  op2val:0x00000005
TEST_RR_OP(sra, x4, x27, x14, 0x0, 0x00000000, 0x00000005, x1, 24, x7)

# rs1==x4, rs2==x20, rd==x29, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 21, rs1_val == 2147483647
# opcode: sra ; op1:x4; op2:x20; dest:x29; op1val:0x7fffffff;  op2val:0x00000015
TEST_RR_OP(sra, x29, x4, x20, 0x3ff, 0x7fffffff, 0x00000015, x1, 28, x7)

# rs1==x29, rs2==x23, rd==x19, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1
# opcode: sra ; op1:x29; op2:x23; dest:x19; op1val:0x00000001;  op2val:0x00000006
TEST_RR_OP(sra, x19, x29, x23, 0x0, 0x00000001, 0x00000006, x1, 32, x7)

# rs1==x20, rs2==x29, rd==x3, rs2_val == 1, rs1_val == -2049
# opcode: sra ; op1:x20; op2:x29; dest:x3; op1val:0xfffff7ff;  op2val:0x00000001
TEST_RR_OP(sra, x3, x20, x29, 0x7ffffbff, 0xfffff7ff, 0x00000001, x1, 36, x7)

# rs1==x10, rs2==x28, rd==x2, rs2_val == 8, 
# opcode: sra ; op1:x10; op2:x28; dest:x2; op1val:0x3fffffff;  op2val:0x00000008
TEST_RR_OP(sra, x2, x10, x28, 0x3fffff, 0x3fffffff, 0x00000008, x1, 40, x7)

# rs1==x16, rs2==x9, rd==x23, rs2_val == 16, rs1_val == -129
# opcode: sra ; op1:x16; op2:x9; dest:x23; op1val:0xffffff7f;  op2val:0x00000010
TEST_RR_OP(sra, x23, x16, x9, 0xffff, 0xffffff7f, 0x00000010, x1, 44, x7)

# rs1==x9, rs2==x16, rd==x24, rs2_val == 30, 
# opcode: sra ; op1:x9; op2:x16; dest:x24; op1val:0xffffffbf;  op2val:0x0000001e
TEST_RR_OP(sra, x24, x9, x16, 0x3, 0xffffffbf, 0x0000001e, x1, 48, x7)

# rs1==x2, rs2==x17, rd==x12, rs2_val == 29, rs1_val == -257
# opcode: sra ; op1:x2; op2:x17; dest:x12; op1val:0xfffffeff;  op2val:0x0000001d
TEST_RR_OP(sra, x12, x2, x17, 0x7, 0xfffffeff, 0x0000001d, x1, 52, x7)

# rs1==x19, rs2==x11, rd==x18, rs2_val == 27, rs1_val == -3
# opcode: sra ; op1:x19; op2:x11; dest:x18; op1val:0xfffffffd;  op2val:0x0000001b
TEST_RR_OP(sra, x18, x19, x11, 0x1f, 0xfffffffd, 0x0000001b, x1, 56, x7)

# rs1==x17, rs2==x30, rd==x15, rs2_val == 23, rs1_val == -1048577
# opcode: sra ; op1:x17; op2:x30; dest:x15; op1val:0xffefffff;  op2val:0x00000017
TEST_RR_OP(sra, x15, x17, x30, 0x1ff, 0xffefffff, 0x00000017, x1, 60, x7)

# rs1==x23, rs2==x8, rd==x22, rs2_val == 15, rs1_val == -8388609
# opcode: sra ; op1:x23; op2:x8; dest:x22; op1val:0xff7fffff;  op2val:0x0000000f
TEST_RR_OP(sra, x22, x23, x8, 0x1feff, 0xff7fffff, 0x0000000f, x1, 64, x7)
RVTEST_SIGBASE( x5,signature_x5_0)

# rs1==x18, rs2==x31, rd==x7, rs2_val == 10, 
# opcode: sra ; op1:x18; op2:x31; dest:x7; op1val:0x00000007;  op2val:0x0000000a
TEST_RR_OP(sra, x7, x18, x31, 0x0, 0x00000007, 0x0000000a, x5, 0, x10)

# rs1==x3, rs2==x27, rd==x30, rs1_val == 2, 
# opcode: sra ; op1:x3; op2:x27; dest:x30; op1val:0x00000002;  op2val:0x00000011
TEST_RR_OP(sra, x30, x3, x27, 0x0, 0x00000002, 0x00000011, x5, 4, x10)

# rs1==x14, rs2==x15, rd==x16, rs1_val == 8, 
# opcode: sra ; op1:x14; op2:x15; dest:x16; op1val:0x00000008;  op2val:0x00000011
TEST_RR_OP(sra, x16, x14, x15, 0x0, 0x00000008, 0x00000011, x5, 8, x10)

# rs1==x31, rs2==x22, rd==x0, rs1_val == 16, 
# opcode: sra ; op1:x31; op2:x22; dest:x0; op1val:0x00000010;  op2val:0x00000011
TEST_RR_OP(sra, x0, x31, x22, 0x0, 0x00000010, 0x00000011, x5, 12, x10)

# rs1==x25, rs2==x2, rd==x1, rs1_val == 32, 
# opcode: sra ; op1:x25; op2:x2; dest:x1; op1val:0x00000020;  op2val:0x0000000b
TEST_RR_OP(sra, x1, x25, x2, 0x0, 0x00000020, 0x0000000b, x5, 16, x10)

# rs1==x15, rs2==x19, rd==x11, rs1_val == 64, 
# opcode: sra ; op1:x15; op2:x19; dest:x11; op1val:0x00000040;  op2val:0x0000000b
TEST_RR_OP(sra, x11, x15, x19, 0x0, 0x00000040, 0x0000000b, x5, 20, x10)

# rs1==x8, rs2==x0, rd==x28, rs1_val == 128, 
# opcode: sra ; op1:x8; op2:x0; dest:x28; op1val:0x00000080;  op2val:0x00000013
TEST_RR_OP(sra, x28, x8, x0, 0x0, 0x00000080, 0x00000013, x5, 24, x10)

# rs1==x12, rs2==x13, rd==x25, rs1_val == 256, 
# opcode: sra ; op1:x12; op2:x13; dest:x25; op1val:0x00000100;  op2val:0x00000000
TEST_RR_OP(sra, x25, x12, x13, 0x100, 0x00000100, 0x00000000, x5, 28, x10)

# rs1==x30, rs2==x1, rd==x17, rs1_val == 1024, 
# opcode: sra ; op1:x30; op2:x1; dest:x17; op1val:0x00000400;  op2val:0x0000001f
TEST_RR_OP(sra, x17, x30, x1, 0x0, 0x00000400, 0x0000001f, x5, 32, x10)

# rs1==x7, rs2==x25, rd==x20, rs1_val == 2048, 
# opcode: sra ; op1:x7; op2:x25; dest:x20; op1val:0x00000800;  op2val:0x00000002
TEST_RR_OP(sra, x20, x7, x25, 0x200, 0x00000800, 0x00000002, x5, 36, x10)

# rs1==x26, rs2==x24, rd==x14, rs1_val == 4096, 
# opcode: sra ; op1:x26; op2:x24; dest:x14; op1val:0x00001000;  op2val:0x00000017
TEST_RR_OP(sra, x14, x26, x24, 0x0, 0x00001000, 0x00000017, x5, 40, x10)

# rs1==x1, rs2==x7, rd==x26, rs1_val == 8192, 
# opcode: sra ; op1:x1; op2:x7; dest:x26; op1val:0x00002000;  op2val:0x00000009
TEST_RR_OP(sra, x26, x1, x7, 0x10, 0x00002000, 0x00000009, x5, 44, x10)

# rs1==x22, rs2==x4, rd==x6, rs1_val == 16384, 
# opcode: sra ; op1:x22; op2:x4; dest:x6; op1val:0x00004000;  op2val:0x0000000e
TEST_RR_OP(sra, x6, x22, x4, 0x1, 0x00004000, 0x0000000e, x5, 48, x10)

# rs1==x11, rs2==x21, rd==x9, rs1_val == 32768, 
# opcode: sra ; op1:x11; op2:x21; dest:x9; op1val:0x00008000;  op2val:0x00000009
TEST_RR_OP(sra, x9, x11, x21, 0x40, 0x00008000, 0x00000009, x5, 52, x10)

# rs1==x0, rs2==x3, rd==x8, rs1_val == 65536, 
# opcode: sra ; op1:x0; op2:x3; dest:x8; op1val:0x00010000;  op2val:0x00000010
TEST_RR_OP(sra, x8, x0, x3, 0x1, 0x00010000, 0x00000010, x5, 56, x2)

# rs1_val == 131072, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0x00000013
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00020000, 0x00000013, x5, 60, x2)
RVTEST_SIGBASE( x1,signature_x1_2)

# rs1_val == 262144, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x10000, 0x00040000, 0x00000002, x1, 0, x2)

# rs1_val == 524288, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x0000001d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00080000, 0x0000001d, x1, 4, x2)

# rs1_val == 1048576, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x00000011
TEST_RR_OP(sra, x12, x10, x11, 0x8, 0x00100000, 0x00000011, x1, 8, x2)

# rs1_val == 2097152, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x00000006
TEST_RR_OP(sra, x12, x10, x11, 0x8000, 0x00200000, 0x00000006, x1, 12, x2)

# rs1_val == 4194304, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000008
TEST_RR_OP(sra, x12, x10, x11, 0x4000, 0x00400000, 0x00000008, x1, 16, x2)

# rs1_val == 8388608, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000017
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0x00800000, 0x00000017, x1, 20, x2)

# rs1_val == -4097, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00000001
TEST_RR_OP(sra, x12, x10, x11, 0x7ffff7ff, 0xffffefff, 0x00000001, x1, 24, x2)

# rs1_val == -8193, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000005
TEST_RR_OP(sra, x12, x10, x11, 0x7fffeff, 0xffffdfff, 0x00000005, x1, 28, x2)

# rs1_val == -16385, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x3fffefff, 0xffffbfff, 0x00000002, x1, 32, x2)

# rs1_val == -65537, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000004
TEST_RR_OP(sra, x12, x10, x11, 0xfffefff, 0xfffeffff, 0x00000004, x1, 36, x2)

# rs1_val == -131073, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000017
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xfffdffff, 0x00000017, x1, 40, x2)

# rs1_val == -262145, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x0000000d
TEST_RR_OP(sra, x12, x10, x11, 0x7ffdf, 0xfffbffff, 0x0000000d, x1, 44, x2)

# rs1_val == -524289, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000007
TEST_RR_OP(sra, x12, x10, x11, 0x1ffefff, 0xfff7ffff, 0x00000007, x1, 48, x2)

# rs1_val == -2097153, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000006
TEST_RR_OP(sra, x12, x10, x11, 0x3ff7fff, 0xffdfffff, 0x00000006, x1, 52, x2)

# rs1_val == -4194305, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000008
TEST_RR_OP(sra, x12, x10, x11, 0xffbfff, 0xffbfffff, 0x00000008, x1, 56, x2)

# rs1_val == -16777217, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3fbff, 0xfeffffff, 0x0000000e, x1, 60, x2)

# rs1_val == -33554433, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000017
TEST_RR_OP(sra, x12, x10, x11, 0x1fb, 0xfdffffff, 0x00000017, x1, 64, x2)

# rs1_val == -67108865, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000008
TEST_RR_OP(sra, x12, x10, x11, 0xfbffff, 0xfbffffff, 0x00000008, x1, 68, x2)

# rs1_val == -134217729, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000006
TEST_RR_OP(sra, x12, x10, x11, 0x3dfffff, 0xf7ffffff, 0x00000006, x1, 72, x2)

# rs1_val == -268435457, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000011
TEST_RR_OP(sra, x12, x10, x11, 0x77ff, 0xefffffff, 0x00000011, x1, 76, x2)

# rs1_val == -536870913, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000011
TEST_RR_OP(sra, x12, x10, x11, 0x6fff, 0xdfffffff, 0x00000011, x1, 80, x2)

# rs1_val == -1073741825, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x2ffff, 0xbfffffff, 0x0000000e, x1, 84, x2)

# rs1_val == -33, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x0000000c
TEST_RR_OP(sra, x12, x10, x11, 0xfffff, 0xffffffdf, 0x0000000c, x1, 88, x2)

# rs1_val == 16777216, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x0000001d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x01000000, 0x0000001d, x1, 92, x2)

# rs1_val == 33554432, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0x2000000, 0x02000000, 0x00000000, x1, 96, x2)

# rs1_val == 134217728, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x0000001f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x08000000, 0x0000001f, x1, 100, x2)

# rs1_val == 268435456, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000006
TEST_RR_OP(sra, x12, x10, x11, 0x400000, 0x10000000, 0x00000006, x1, 104, x2)

# rs1_val == 536870912, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x0000000a
TEST_RR_OP(sra, x12, x10, x11, 0x80000, 0x20000000, 0x0000000a, x1, 108, x2)

# rs1_val == 1073741824, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x0000000b
TEST_RR_OP(sra, x12, x10, x11, 0x80000, 0x40000000, 0x0000000b, x1, 112, x2)

# rs1_val == 1431655765, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x0000000f
TEST_RR_OP(sra, x12, x10, x11, 0xaaaa, 0x55555555, 0x0000000f, x1, 116, x2)

# rs1_val == -2, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x0000001d
TEST_RR_OP(sra, x12, x10, x11, 0x7, 0xfffffffe, 0x0000001d, x1, 120, x2)

# rs1_val == -1431655766, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0xaaaaaaaa, 0xaaaaaaaa, 0x00000000, x1, 124, x2)

# rs1_val == -5, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffffe, 0xfffffffb, 0x00000002, x1, 128, x2)

# rs1_val == -9, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000017
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xfffffff7, 0x00000017, x1, 132, x2)

# rs1_val == -17, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0xffffffef, 0xffffffef, 0x00000000, x1, 136, x2)

# rs1_val == -513, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x0000001e
TEST_RR_OP(sra, x12, x10, x11, 0x3, 0xfffffdff, 0x0000001e, x1, 140, x2)

# rs1_val == -1025, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x0000001f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xfffffbff, 0x0000001f, x1, 144, x2)

# rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 2, rs1_val == 67108864
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000002
TEST_RR_OP(sra, x12, x10, x11, 0x1000000, 0x04000000, 0x00000002, x1, 148, x2)

# rs1_val < 0 and rs2_val == 0, rs1_val == -32769
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0xffff7fff, 0xffff7fff, 0x00000000, x1, 152, x2)

# rs1_val > 0 and rs2_val == 0, rs1_val == 512
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0x200, 0x00000200, 0x00000000, x1, 156, x2)

# rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs2_val == 4, rs1_val == 4
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0x00000004
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00000004, 0x00000004, x1, 160, x2)

# rs1_val == 16, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0x00000011
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00000010, 0x00000011, x1, 164, x2)

# rs1_val == 128, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0x00000013
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00000080, 0x00000013, x1, 168, x2)

# rs1_val == 65536, 
# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x00000010
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0x00010000, 0x00000010, x1, 172, x2)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x1_2:
    .fill 44*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
