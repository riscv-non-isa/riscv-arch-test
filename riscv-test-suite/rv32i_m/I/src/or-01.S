
#This assembly file tests the or instruction of the RISC-V I extension for the or covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",or)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x28, rs2==x15, rd==x21, rs1_val == (-2**(xlen-1)), rs2_val == 262144, rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: or ; op1:x28; op2:x15; dest:x21; op1val:0x80000000;  op2val:0x00040000
TEST_RR_OP(or, x21, x28, x15, 0x80040000, 0x80000000, 0x00040000, x1, 0, x2)

# rs1 == rd != rs2, rs1==x12, rs2==x24, rd==x12, rs1_val == 0, 
# opcode: or ; op1:x12; op2:x24; dest:x12; op1val:0x00000000;  op2val:0xfffffffc
TEST_RR_OP(or, x12, x12, x24, 0xfffffffc, 0x00000000, 0xfffffffc, x1, 4, x2)

# rs1 == rs2 != rd, rs1==x8, rs2==x8, rd==x7, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 4, rs1_val == 2147483647
# opcode: or ; op1:x8; op2:x8; dest:x7; op1val:0x7fffffff;  op2val:0x00000004
TEST_RR_OP(or, x7, x8, x8, 0x7fffffff, 0x7fffffff, 0x00000004, x1, 8, x2)

# rs2 == rd != rs1, rs1==x11, rs2==x19, rd==x19, rs1_val == 1, 
# opcode: or ; op1:x11; op2:x19; dest:x19; op1val:0x00000001;  op2val:0x00000004
TEST_RR_OP(or, x19, x11, x19, 0x5, 0x00000001, 0x00000004, x1, 12, x2)

# rs1 == rs2 == rd, rs1==x4, rs2==x4, rd==x4, rs2_val == (-2**(xlen-1)), rs1_val > 0 and rs2_val < 0, rs2_val == -2147483648, rs1_val == 33554432
# opcode: or ; op1:x4; op2:x4; dest:x4; op1val:0x02000000;  op2val:0x80000000
TEST_RR_OP(or, x4, x4, x4, 0x82000000, 0x02000000, 0x80000000, x1, 16, x2)

# rs1==x24, rs2==x23, rd==x11, rs2_val == 0, 
# opcode: or ; op1:x24; op2:x23; dest:x11; op1val:0x3fffffff;  op2val:0x00000000
TEST_RR_OP(or, x11, x24, x23, 0x3fffffff, 0x3fffffff, 0x00000000, x1, 20, x2)

# rs1==x21, rs2==x7, rd==x14, rs2_val == (2**(xlen-1)-1), rs2_val == 2147483647, rs1_val == 262144
# opcode: or ; op1:x21; op2:x7; dest:x14; op1val:0x00040000;  op2val:0x7fffffff
TEST_RR_OP(or, x14, x21, x7, 0x7fffffff, 0x00040000, 0x7fffffff, x1, 24, x2)

# rs1==x7, rs2==x25, rd==x9, rs2_val == 1, rs1_val == -17
# opcode: or ; op1:x7; op2:x25; dest:x9; op1val:0xffffffef;  op2val:0x00000001
TEST_RR_OP(or, x9, x7, x25, 0xffffffef, 0xffffffef, 0x00000001, x1, 28, x2)

# rs1==x23, rs2==x6, rd==x26, rs1_val < 0 and rs2_val < 0, rs1_val == -134217729
# opcode: or ; op1:x23; op2:x6; dest:x26; op1val:0xf7ffffff;  op2val:0xfffffff8
TEST_RR_OP(or, x26, x23, x6, 0xffffffff, 0xf7ffffff, 0xfffffff8, x1, 32, x2)

# rs1==x25, rs2==x22, rd==x13, rs1_val == rs2_val, 
# opcode: or ; op1:x25; op2:x22; dest:x13; op1val:0x00000003;  op2val:0x00000003
TEST_RR_OP(or, x13, x25, x22, 0x3, 0x00000003, 0x00000003, x1, 36, x2)

# rs1==x18, rs2==x3, rd==x23, rs1_val == 2, 
# opcode: or ; op1:x18; op2:x3; dest:x23; op1val:0x00000002;  op2val:0xfffffff9
TEST_RR_OP(or, x23, x18, x3, 0xfffffffb, 0x00000002, 0xfffffff9, x1, 40, x2)

# rs1==x9, rs2==x27, rd==x5, rs1_val == 4, rs2_val == 256
# opcode: or ; op1:x9; op2:x27; dest:x5; op1val:0x00000004;  op2val:0x00000100
TEST_RR_OP(or, x5, x9, x27, 0x104, 0x00000004, 0x00000100, x1, 44, x2)

# rs1==x19, rs2==x30, rd==x24, rs1_val == 8, rs2_val == -33
# opcode: or ; op1:x19; op2:x30; dest:x24; op1val:0x00000008;  op2val:0xffffffdf
TEST_RR_OP(or, x24, x19, x30, 0xffffffdf, 0x00000008, 0xffffffdf, x1, 48, x2)

# rs1==x6, rs2==x5, rd==x31, rs1_val == 16, rs2_val == 32
# opcode: or ; op1:x6; op2:x5; dest:x31; op1val:0x00000010;  op2val:0x00000020
TEST_RR_OP(or, x31, x6, x5, 0x30, 0x00000010, 0x00000020, x1, 52, x2)

# rs1==x16, rs2==x0, rd==x6, rs1_val == 32, rs2_val == -268435457
# opcode: or ; op1:x16; op2:x0; dest:x6; op1val:0x00000020;  op2val:0xefffffff
TEST_RR_OP(or, x6, x16, x0, 0xefffffff, 0x00000020, 0xefffffff, x1, 56, x2)

# rs1==x29, rs2==x11, rd==x30, rs1_val == 64, rs2_val == 16
# opcode: or ; op1:x29; op2:x11; dest:x30; op1val:0x00000040;  op2val:0x00000010
TEST_RR_OP(or, x30, x29, x11, 0x50, 0x00000040, 0x00000010, x1, 60, x2)

# rs1==x20, rs2==x29, rd==x17, rs1_val == 128, rs2_val == -16385
# opcode: or ; op1:x20; op2:x29; dest:x17; op1val:0x00000080;  op2val:0xffffbfff
TEST_RR_OP(or, x17, x20, x29, 0xffffbfff, 0x00000080, 0xffffbfff, x1, 64, x2)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x30, rs2==x31, rd==x2, rs1_val == 256, 
# opcode: or ; op1:x30; op2:x31; dest:x2; op1val:0x00000100;  op2val:0x00000007
TEST_RR_OP(or, x2, x30, x31, 0x107, 0x00000100, 0x00000007, x4, 0, x6)

# rs1==x26, rs2==x16, rd==x27, rs1_val == 512, rs2_val == -1048577
# opcode: or ; op1:x26; op2:x16; dest:x27; op1val:0x00000200;  op2val:0xffefffff
TEST_RR_OP(or, x27, x26, x16, 0xffefffff, 0x00000200, 0xffefffff, x4, 4, x6)

# rs1==x15, rs2==x10, rd==x1, rs1_val == 1024, rs2_val == 4096
# opcode: or ; op1:x15; op2:x10; dest:x1; op1val:0x00000400;  op2val:0x00001000
TEST_RR_OP(or, x1, x15, x10, 0x1400, 0x00000400, 0x00001000, x4, 8, x6)

# rs1==x1, rs2==x17, rd==x10, rs1_val == 2048, rs2_val == -4097
# opcode: or ; op1:x1; op2:x17; dest:x10; op1val:0x00000800;  op2val:0xffffefff
TEST_RR_OP(or, x10, x1, x17, 0xffffefff, 0x00000800, 0xffffefff, x4, 12, x6)

# rs1==x27, rs2==x13, rd==x20, rs1_val == 4096, rs2_val == 1048576
# opcode: or ; op1:x27; op2:x13; dest:x20; op1val:0x00001000;  op2val:0x00100000
TEST_RR_OP(or, x20, x27, x13, 0x101000, 0x00001000, 0x00100000, x4, 16, x6)

# rs1==x31, rs2==x1, rd==x3, rs1_val == 8192, rs2_val == -67108865
# opcode: or ; op1:x31; op2:x1; dest:x3; op1val:0x00002000;  op2val:0xfbffffff
TEST_RR_OP(or, x3, x31, x1, 0xfbffffff, 0x00002000, 0xfbffffff, x4, 20, x6)

# rs1==x0, rs2==x2, rd==x18, rs1_val == 16384, rs2_val == 2048
# opcode: or ; op1:x0; op2:x2; dest:x18; op1val:0x00004000;  op2val:0x00000800
TEST_RR_OP(or, x18, x0, x2, 0x4800, 0x00004000, 0x00000800, x4, 24, x6)

# rs1==x5, rs2==x26, rd==x28, rs1_val == 32768, rs2_val == -2049
# opcode: or ; op1:x5; op2:x26; dest:x28; op1val:0x00008000;  op2val:0xfffff7ff
TEST_RR_OP(or, x28, x5, x26, 0xfffff7ff, 0x00008000, 0xfffff7ff, x4, 28, x6)

# rs1==x17, rs2==x28, rd==x22, rs1_val == 65536, rs2_val == 4194304
# opcode: or ; op1:x17; op2:x28; dest:x22; op1val:0x00010000;  op2val:0x00400000
TEST_RR_OP(or, x22, x17, x28, 0x410000, 0x00010000, 0x00400000, x4, 32, x6)

# rs1==x13, rs2==x21, rd==x15, rs1_val == 131072, rs2_val == -17
# opcode: or ; op1:x13; op2:x21; dest:x15; op1val:0x00020000;  op2val:0xffffffef
TEST_RR_OP(or, x15, x13, x21, 0xffffffef, 0x00020000, 0xffffffef, x4, 36, x6)

# rs1==x3, rs2==x14, rd==x29, rs1_val == 524288, rs2_val == -1073741825
# opcode: or ; op1:x3; op2:x14; dest:x29; op1val:0x00080000;  op2val:0xbfffffff
TEST_RR_OP(or, x29, x3, x14, 0xbfffffff, 0x00080000, 0xbfffffff, x4, 40, x6)

# rs1==x2, rs2==x20, rd==x25, rs1_val == 1048576, 
# opcode: or ; op1:x2; op2:x20; dest:x25; op1val:0x00100000;  op2val:0x00001000
TEST_RR_OP(or, x25, x2, x20, 0x101000, 0x00100000, 0x00001000, x4, 44, x6)

# rs1==x22, rs2==x9, rd==x0, rs1_val == 2097152, rs2_val == 64
# opcode: or ; op1:x22; op2:x9; dest:x0; op1val:0x00200000;  op2val:0x00000040
TEST_RR_OP(or, x0, x22, x9, 0x200040, 0x00200000, 0x00000040, x4, 48, x6)

# rs1==x14, rs2==x18, rd==x8, rs1_val == 4194304, 
# opcode: or ; op1:x14; op2:x18; dest:x8; op1val:0x00400000;  op2val:0xefffffff
TEST_RR_OP(or, x8, x14, x18, 0xefffffff, 0x00400000, 0xefffffff, x4, 52, x6)

# rs1==x10, rs2==x12, rd==x16, rs1_val == 8388608, 
# opcode: or ; op1:x10; op2:x12; dest:x16; op1val:0x00800000;  op2val:0xffffffef
TEST_RR_OP(or, x16, x10, x12, 0xffffffef, 0x00800000, 0xffffffef, x4, 56, x6)

# rs1_val == 16777216, rs2_val == -65
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xffffffbf
TEST_RR_OP(or, x12, x10, x11, 0xffffffbf, 0x01000000, 0xffffffbf, x4, 60, x6)

# rs1_val == 67108864, rs2_val == 1431655765
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x55555555
TEST_RR_OP(or, x12, x10, x11, 0x55555555, 0x04000000, 0x55555555, x4, 64, x6)

# rs1_val == 134217728, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffffff6
TEST_RR_OP(or, x12, x10, x11, 0xfffffff6, 0x08000000, 0xfffffff6, x4, 68, x6)

# rs1_val == 268435456, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xfffffff6
TEST_RR_OP(or, x12, x10, x11, 0xfffffff6, 0x10000000, 0xfffffff6, x4, 72, x6)

# rs1_val == 536870912, rs2_val == -9
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xfffffff7
TEST_RR_OP(or, x12, x10, x11, 0xfffffff7, 0x20000000, 0xfffffff7, x4, 76, x6)

# rs1_val == 1073741824, rs2_val == 1024
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000400
TEST_RR_OP(or, x12, x10, x11, 0x40000400, 0x40000000, 0x00000400, x4, 80, x6)

# rs1_val == -2, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00001000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffe, 0xfffffffe, 0x00001000, x4, 84, x6)

# rs1_val == -3, rs2_val == -262145
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfffbffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffffd, 0xfffbffff, x4, 88, x6)

# rs1_val == -5, rs2_val == -33554433
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfdffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffffb, 0xfdffffff, x4, 92, x6)

# rs1_val == -9, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xffffffdf
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffff7, 0xffffffdf, x4, 96, x6)

# rs1_val == -33, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xfffbffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffffdf, 0xfffbffff, x4, 100, x6)

# rs1_val == -65, rs2_val == -134217729
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xf7ffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffffbf, 0xf7ffffff, x4, 104, x6)

# rs2_val == -524289, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xfff7ffff
TEST_RR_OP(or, x12, x10, x11, 0xfff7ffff, 0x00000800, 0xfff7ffff, x4, 108, x6)

# rs2_val == -2097153, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffdfffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xf7ffffff, 0xffdfffff, x4, 112, x6)

# rs2_val == -4194305, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0xffbfffff
TEST_RR_OP(or, x12, x10, x11, 0xffbfffff, 0x00000010, 0xffbfffff, x4, 116, x6)

# rs2_val == -8388609, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0xff7fffff
TEST_RR_OP(or, x12, x10, x11, 0xff7fffff, 0x00004000, 0xff7fffff, x4, 120, x6)

# rs2_val == -16777217, rs1_val == -33554433
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfeffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfdffffff, 0xfeffffff, x4, 124, x6)

# rs2_val == -536870913, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xdfffffff
TEST_RR_OP(or, x12, x10, x11, 0xdfffffff, 0x00000001, 0xdfffffff, x4, 128, x6)

# rs2_val == -1431655766, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0xaaaaaaaa
TEST_RR_OP(or, x12, x10, x11, 0xfffffffa, 0xfffffffa, 0xaaaaaaaa, x4, 132, x6)

# rs1_val == -129, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xff7fffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffff7f, 0xff7fffff, x4, 136, x6)

# rs1_val == -257, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffbffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffeff, 0xfffbffff, x4, 140, x6)

# rs1_val == -513, rs2_val == 512
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000200
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffdff, 0x00000200, x4, 144, x6)

# rs1_val == -1025, rs2_val == -513
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfffffdff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffbff, 0xfffffdff, x4, 148, x6)

# rs1_val == -2049, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffbffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffff7ff, 0xfffbffff, x4, 152, x6)

# rs1_val == -4097, rs2_val == -257
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffffeff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffefff, 0xfffffeff, x4, 156, x6)

# rs1_val == -8193, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00100000
TEST_RR_OP(or, x12, x10, x11, 0xffffdfff, 0xffffdfff, 0x00100000, x4, 160, x6)

# rs1_val == -16385, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xc0000000
TEST_RR_OP(or, x12, x10, x11, 0xffffbfff, 0xffffbfff, 0xc0000000, x4, 164, x6)

# rs1_val == -32769, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000400
TEST_RR_OP(or, x12, x10, x11, 0xffff7fff, 0xffff7fff, 0x00000400, x4, 168, x6)

# rs1_val == -65537, rs2_val == -1025
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xfffffbff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffeffff, 0xfffffbff, x4, 172, x6)

# rs1_val == -131073, rs2_val == 8388608
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00800000
TEST_RR_OP(or, x12, x10, x11, 0xfffdffff, 0xfffdffff, 0x00800000, x4, 176, x6)

# rs1_val == -262145, rs2_val == 536870912
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x20000000
TEST_RR_OP(or, x12, x10, x11, 0xfffbffff, 0xfffbffff, 0x20000000, x4, 180, x6)

# rs1_val == -524289, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfffffdff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfff7ffff, 0xfffffdff, x4, 184, x6)

# rs1_val == -1048577, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffffff9
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffefffff, 0xfffffff9, x4, 188, x6)

# rs1_val == -2097153, rs2_val == -32769
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xffff7fff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffdfffff, 0xffff7fff, x4, 192, x6)

# rs1_val == -4194305, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xfffff7ff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffbfffff, 0xfffff7ff, x4, 196, x6)

# rs1_val == -8388609, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xff7fffff
TEST_RR_OP(or, x12, x10, x11, 0xff7fffff, 0xff7fffff, 0xff7fffff, x4, 200, x6)

# rs1_val == -16777217, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x55555555
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfeffffff, 0x55555555, x4, 204, x6)

# rs1_val == -67108865, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000009
TEST_RR_OP(or, x12, x10, x11, 0xfbffffff, 0xfbffffff, 0x00000009, x4, 208, x6)

# rs1_val == -268435457, rs2_val == 32768
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00008000
TEST_RR_OP(or, x12, x10, x11, 0xefffffff, 0xefffffff, 0x00008000, x4, 212, x6)

# rs1_val == -536870913, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000006
TEST_RR_OP(or, x12, x10, x11, 0xdfffffff, 0xdfffffff, 0x00000006, x4, 216, x6)

# rs1_val == -1073741825, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfeffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xbfffffff, 0xfeffffff, x4, 220, x6)

# rs1_val == 1431655765, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xfffffff6
TEST_RR_OP(or, x12, x10, x11, 0xfffffff7, 0x55555555, 0xfffffff6, x4, 224, x6)

# rs1_val == -1431655766, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xfffffff9
TEST_RR_OP(or, x12, x10, x11, 0xfffffffb, 0xaaaaaaaa, 0xfffffff9, x4, 228, x6)

# rs2_val == 2, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0x00000002
TEST_RR_OP(or, x12, x10, x11, 0xfffffffe, 0xfffffffc, 0x00000002, x4, 232, x6)

# rs2_val == 8, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0x00000008
TEST_RR_OP(or, x12, x10, x11, 0xe, 0x00000006, 0x00000008, x4, 236, x6)

# rs2_val == 128, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00000080
TEST_RR_OP(or, x12, x10, x11, 0x480, 0x00000400, 0x00000080, x4, 240, x6)

# rs2_val == 8192, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0x00002000
TEST_RR_OP(or, x12, x10, x11, 0x2100, 0x00000100, 0x00002000, x4, 244, x6)

# rs2_val == 16384, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00004000
TEST_RR_OP(or, x12, x10, x11, 0xfeffffff, 0xfeffffff, 0x00004000, x4, 248, x6)

# rs2_val == 65536, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00010000
TEST_RR_OP(or, x12, x10, x11, 0xffdfffff, 0xffdfffff, 0x00010000, x4, 252, x6)

# rs2_val == 131072, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0x00020000
TEST_RR_OP(or, x12, x10, x11, 0x20800, 0x00000800, 0x00020000, x4, 256, x6)

# rs2_val == 524288, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x00080000
TEST_RR_OP(or, x12, x10, x11, 0x80009, 0x00000009, 0x00080000, x4, 260, x6)

# rs2_val == 2097152, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00200000
TEST_RR_OP(or, x12, x10, x11, 0xfffffeff, 0xfffffeff, 0x00200000, x4, 264, x6)

# rs2_val == 16777216, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x01000000
TEST_RR_OP(or, x12, x10, x11, 0xfdffffff, 0xfdffffff, 0x01000000, x4, 268, x6)

# rs2_val == 33554432, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x02000000
TEST_RR_OP(or, x12, x10, x11, 0x2000400, 0x00000400, 0x02000000, x4, 272, x6)

# rs2_val == 67108864, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x04000000
TEST_RR_OP(or, x12, x10, x11, 0x14000000, 0x10000000, 0x04000000, x4, 276, x6)

# rs2_val == 134217728, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x08000000
TEST_RR_OP(or, x12, x10, x11, 0x8010000, 0x00010000, 0x08000000, x4, 280, x6)

# rs2_val == 268435456, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x10000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xefffffff, 0x10000000, x4, 284, x6)

# rs2_val == 1073741824, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x40000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffff7, 0xfffffff7, 0x40000000, x4, 288, x6)

# rs2_val == -5, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffffffb
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffff7, 0xfffffffb, x4, 292, x6)

# rs2_val == -129, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0xffffff7f
TEST_RR_OP(or, x12, x10, x11, 0xffffff7f, 0x00004000, 0xffffff7f, x4, 296, x6)

# rs2_val == -65537, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffeffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffefff, 0xfffeffff, x4, 300, x6)

# rs2_val == -8193, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0xffffdfff
TEST_RR_OP(or, x12, x10, x11, 0xffffdfff, 0x00000010, 0xffffdfff, x4, 304, x6)

# rs2_val == -131073, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0xfffdffff
TEST_RR_OP(or, x12, x10, x11, 0xfffdffff, 0x00000040, 0xfffdffff, x4, 308, x6)

# rs2_val == -2, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfffffffe
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffbffff, 0xfffffffe, x4, 312, x6)

# rs2_val == -3, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xfffffffd
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0x00000006, 0xfffffffd, x4, 316, x6)

# rs1_val == 0, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffffffc
TEST_RR_OP(or, x12, x10, x11, 0xfffffffc, 0x00000000, 0xfffffffc, x4, 320, x6)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 4, rs1_val == 2147483647
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000004
TEST_RR_OP(or, x12, x10, x11, 0x7fffffff, 0x7fffffff, 0x00000004, x4, 324, x6)

# rs1_val == 1, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000004
TEST_RR_OP(or, x12, x10, x11, 0x5, 0x00000001, 0x00000004, x4, 328, x6)

# rs2_val == (-2**(xlen-1)), rs1_val > 0 and rs2_val < 0, rs2_val == -2147483648, rs1_val == 33554432
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x80000000
TEST_RR_OP(or, x12, x10, x11, 0x82000000, 0x02000000, 0x80000000, x4, 332, x6)

# rs1_val == 32, rs2_val == -268435457
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xefffffff
TEST_RR_OP(or, x12, x10, x11, 0xefffffff, 0x00000020, 0xefffffff, x4, 336, x6)

# rs1_val == 16384, rs2_val == 2048
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x00000800
TEST_RR_OP(or, x12, x10, x11, 0x4800, 0x00004000, 0x00000800, x4, 340, x6)

# rs1_val == 2097152, rs2_val == 64
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x00000040
TEST_RR_OP(or, x12, x10, x11, 0x200040, 0x00200000, 0x00000040, x4, 344, x6)
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


signature_x4_0:
    .fill 87*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
