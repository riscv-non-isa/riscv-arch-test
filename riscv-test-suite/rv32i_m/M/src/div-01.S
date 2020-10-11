
#This assembly file tests the div instruction of the RISC-V M extension for the div covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",div)

la x11,signature_x11_1

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x19, rs2==x2, rd==x1, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs2_val == -536870913, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: div ; op1:x19; op2:x2; dest:x1; op1val:0x80000000;  op2val:0xdfffffff
TEST_RR_OP(div, x1, x19, x2, 0x00000000, 0x80000000, 0xdfffffff, x11, 0, x22)

# rs1 == rs2 == rd, rs1==x10, rs2==x10, rd==x10, rs1_val == 0, rs2_val == 16
# opcode: div ; op1:x10; op2:x10; dest:x10; op1val:0x00000000;  op2val:0x00000010
TEST_RR_OP(div, x10, x10, x10, 0x00000000, 0x00000000, 0x00000010, x11, 4, x22)

# rs1 == rd != rs2, rs1==x14, rs2==x18, rd==x14, rs1_val == (2**(xlen-1)-1), rs2_val == -67108865, rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647
# opcode: div ; op1:x14; op2:x18; dest:x14; op1val:0x7fffffff;  op2val:0xfbffffff
TEST_RR_OP(div, x14, x14, x18, 0x00000000, 0x7fffffff, 0xfbffffff, x11, 8, x22)

# rs1 == rs2 != rd, rs1==x17, rs2==x17, rd==x8, rs1_val == 1, rs2_val == -2097153
# opcode: div ; op1:x17; op2:x17; dest:x8; op1val:0x00000001;  op2val:0xffdfffff
TEST_RR_OP(div, x8, x17, x17, 0x00000000, 0x00000001, 0xffdfffff, x11, 12, x22)

# rs2 == rd != rs1, rs1==x1, rs2==x0, rd==x0, rs2_val == (-2**(xlen-1)), rs1_val == 8, rs2_val == -2147483648
# opcode: div ; op1:x1; op2:x0; dest:x0; op1val:0x00000008;  op2val:0x80000000
TEST_RR_OP(div, x0, x1, x0, 0x00000000, 0x00000008, 0x80000000, x11, 16, x22)

# rs1==x0, rs2==x25, rd==x13, rs2_val == 0, rs1_val == -2
# opcode: div ; op1:x0; op2:x25; dest:x13; op1val:0xfffffffe;  op2val:0x00000000
TEST_RR_OP(div, x13, x0, x25, 0x00000000, 0xfffffffe, 0x00000000, x11, 20, x22)

# rs1==x12, rs2==x16, rd==x3, rs2_val == (2**(xlen-1)-1), rs1_val < 0 and rs2_val > 0, rs1_val == -129, rs2_val == 2147483647
# opcode: div ; op1:x12; op2:x16; dest:x3; op1val:0xffffff7f;  op2val:0x7fffffff
TEST_RR_OP(div, x3, x12, x16, 0x00000000, 0xffffff7f, 0x7fffffff, x11, 24, x22)

# rs1==x31, rs2==x7, rd==x5, rs2_val == 1, 
# opcode: div ; op1:x31; op2:x7; dest:x5; op1val:0xfffffffe;  op2val:0x00000001
TEST_RR_OP(div, x5, x31, x7, 0x00000000, 0xfffffffe, 0x00000001, x11, 28, x22)

# rs1==x18, rs2==x24, rd==x31, rs1_val > 0 and rs2_val > 0, rs2_val == 4096, rs1_val == 1431655765
# opcode: div ; op1:x18; op2:x24; dest:x31; op1val:0x55555555;  op2val:0x00001000
TEST_RR_OP(div, x31, x18, x24, 0x00000000, 0x55555555, 0x00001000, x11, 32, x22)

# rs1==x7, rs2==x9, rd==x23, rs1_val == rs2_val, rs1_val == 2048, rs2_val == 2048
# opcode: div ; op1:x7; op2:x9; dest:x23; op1val:0x00000800;  op2val:0x00000800
TEST_RR_OP(div, x23, x7, x9, 0x00000000, 0x00000800, 0x00000800, x11, 36, x22)

# rs1==x27, rs2==x30, rd==x16, rs1_val == 2, 
# opcode: div ; op1:x27; op2:x30; dest:x16; op1val:0x00000002;  op2val:0xc0000000
TEST_RR_OP(div, x16, x27, x30, 0x00000000, 0x00000002, 0xc0000000, x11, 40, x22)

# rs1==x2, rs2==x31, rd==x21, rs1_val == 4, rs2_val == 262144
# opcode: div ; op1:x2; op2:x31; dest:x21; op1val:0x00000004;  op2val:0x00040000
TEST_RR_OP(div, x21, x2, x31, 0x00000000, 0x00000004, 0x00040000, x11, 44, x22)

# rs1==x20, rs2==x4, rd==x29, rs1_val == 16, 
# opcode: div ; op1:x20; op2:x4; dest:x29; op1val:0x00000010;  op2val:0x00000009
TEST_RR_OP(div, x29, x20, x4, 0x00000000, 0x00000010, 0x00000009, x11, 48, x22)

# rs1==x13, rs2==x20, rd==x17, rs1_val == 32, rs2_val == 64
# opcode: div ; op1:x13; op2:x20; dest:x17; op1val:0x00000020;  op2val:0x00000040
TEST_RR_OP(div, x17, x13, x20, 0x00000000, 0x00000020, 0x00000040, x11, 52, x22)

# rs1==x4, rs2==x14, rd==x7, rs1_val == 64, rs2_val == -33554433
# opcode: div ; op1:x4; op2:x14; dest:x7; op1val:0x00000040;  op2val:0xfdffffff
TEST_RR_OP(div, x7, x4, x14, 0x00000000, 0x00000040, 0xfdffffff, x11, 56, x22)

# rs1==x15, rs2==x6, rd==x4, rs1_val == 128, 
# opcode: div ; op1:x15; op2:x6; dest:x4; op1val:0x00000080;  op2val:0xc0000000
TEST_RR_OP(div, x4, x15, x6, 0x00000000, 0x00000080, 0xc0000000, x11, 60, x22)

# rs1==x5, rs2==x13, rd==x24, rs1_val == 256, rs2_val == 16777216
# opcode: div ; op1:x5; op2:x13; dest:x24; op1val:0x00000100;  op2val:0x01000000
TEST_RR_OP(div, x24, x5, x13, 0x00000000, 0x00000100, 0x01000000, x11, 64, x7)

# rs1==x24, rs2==x3, rd==x18, rs1_val == 512, 
# opcode: div ; op1:x24; op2:x3; dest:x18; op1val:0x00000200;  op2val:0xfffffffc
TEST_RR_OP(div, x18, x24, x3, 0x00000000, 0x00000200, 0xfffffffc, x11, 68, x7)

# rs1==x21, rs2==x26, rd==x25, rs1_val == 1024, rs2_val == 1024
# opcode: div ; op1:x21; op2:x26; dest:x25; op1val:0x00000400;  op2val:0x00000400
TEST_RR_OP(div, x25, x21, x26, 0x00000000, 0x00000400, 0x00000400, x11, 72, x7)
la x4,signature_x4_0

# rs1==x9, rs2==x22, rd==x28, rs1_val == 4096, rs2_val == -4194305
# opcode: div ; op1:x9; op2:x22; dest:x28; op1val:0x00001000;  op2val:0xffbfffff
TEST_RR_OP(div, x28, x9, x22, 0x00000000, 0x00001000, 0xffbfffff, x4, 0, x7)

# rs1==x26, rs2==x1, rd==x22, rs1_val == 8192, rs2_val == -524289
# opcode: div ; op1:x26; op2:x1; dest:x22; op1val:0x00002000;  op2val:0xfff7ffff
TEST_RR_OP(div, x22, x26, x1, 0x00000000, 0x00002000, 0xfff7ffff, x4, 4, x7)

# rs1==x25, rs2==x19, rd==x20, rs1_val == 16384, 
# opcode: div ; op1:x25; op2:x19; dest:x20; op1val:0x00004000;  op2val:0x00000000
TEST_RR_OP(div, x20, x25, x19, 0x00000000, 0x00004000, 0x00000000, x4, 8, x7)

# rs1==x16, rs2==x21, rd==x30, rs1_val == 32768, rs2_val == 8388608
# opcode: div ; op1:x16; op2:x21; dest:x30; op1val:0x00008000;  op2val:0x00800000
TEST_RR_OP(div, x30, x16, x21, 0x00000000, 0x00008000, 0x00800000, x4, 12, x7)

# rs1==x29, rs2==x15, rd==x2, rs1_val == 65536, 
# opcode: div ; op1:x29; op2:x15; dest:x2; op1val:0x00010000;  op2val:0xffffffff
TEST_RR_OP(div, x2, x29, x15, 0x00000000, 0x00010000, 0xffffffff, x4, 16, x7)

# rs1==x22, rs2==x29, rd==x26, rs1_val == 131072, 
# opcode: div ; op1:x22; op2:x29; dest:x26; op1val:0x00020000;  op2val:0xfffffff9
TEST_RR_OP(div, x26, x22, x29, 0x00000000, 0x00020000, 0xfffffff9, x4, 20, x7)

# rs1==x23, rs2==x27, rd==x19, rs1_val == 262144, rs2_val == -129
# opcode: div ; op1:x23; op2:x27; dest:x19; op1val:0x00040000;  op2val:0xffffff7f
TEST_RR_OP(div, x19, x23, x27, 0x00000000, 0x00040000, 0xffffff7f, x4, 24, x7)

# rs1==x6, rs2==x12, rd==x11, rs1_val == 524288, rs2_val == -8193
# opcode: div ; op1:x6; op2:x12; dest:x11; op1val:0x00080000;  op2val:0xffffdfff
TEST_RR_OP(div, x11, x6, x12, 0x00000000, 0x00080000, 0xffffdfff, x4, 28, x7)

# rs1==x30, rs2==x28, rd==x6, rs1_val == 1048576, 
# opcode: div ; op1:x30; op2:x28; dest:x6; op1val:0x00100000;  op2val:0x00000001
TEST_RR_OP(div, x6, x30, x28, 0x00000000, 0x00100000, 0x00000001, x4, 32, x7)

# rs1==x3, rs2==x23, rd==x27, rs1_val == 2097152, 
# opcode: div ; op1:x3; op2:x23; dest:x27; op1val:0x00200000;  op2val:0x00001000
TEST_RR_OP(div, x27, x3, x23, 0x00000000, 0x00200000, 0x00001000, x4, 36, x7)

# rs1==x28, rs2==x11, rd==x15, rs1_val == 4194304, 
# opcode: div ; op1:x28; op2:x11; dest:x15; op1val:0x00400000;  op2val:0x80000000
TEST_RR_OP(div, x15, x28, x11, 0x00000000, 0x00400000, 0x80000000, x4, 40, x7)

# rs1==x11, rs2==x8, rd==x9, rs1_val == 8388608, rs2_val == -2049
# opcode: div ; op1:x11; op2:x8; dest:x9; op1val:0x00800000;  op2val:0xfffff7ff
TEST_RR_OP(div, x9, x11, x8, 0x00000000, 0x00800000, 0xfffff7ff, x4, 44, x7)

# rs1==x8, rs2==x5, rd==x12, rs1_val == 16777216, 
# opcode: div ; op1:x8; op2:x5; dest:x12; op1val:0x01000000;  op2val:0x00000040
TEST_RR_OP(div, x12, x8, x5, 0x00000000, 0x01000000, 0x00000040, x4, 48, x7)

# rs1_val == 33554432, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000003
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x02000000, 0x00000003, x4, 52, x7)

# rs1_val == 67108864, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xc0000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x04000000, 0xc0000000, x4, 56, x7)

# rs1_val == 134217728, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfff7ffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x08000000, 0xfff7ffff, x4, 60, x7)

# rs1_val == 268435456, rs2_val == 2
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000002
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x10000000, 0x00000002, x4, 64, x7)

# rs1_val == 536870912, rs2_val == 8192
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00002000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x20000000, 0x00002000, x4, 68, x7)

# rs1_val == 1073741824, rs2_val == 16384
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00004000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x40000000, 0x00004000, x4, 72, x7)

# rs1_val == -3, rs2_val == 8
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000008
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffd, 0x00000008, x4, 76, x7)

# rs1_val == -5, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00002000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffb, 0x00002000, x4, 80, x7)

# rs1_val == -9, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xc0000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffff7, 0xc0000000, x4, 84, x7)

# rs1_val == -17, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xfffffff6
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffffef, 0xfffffff6, x4, 88, x7)

# rs1_val == -33, rs2_val == 268435456
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x10000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffffdf, 0x10000000, x4, 92, x7)

# rs1_val == -65, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00040000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffffbf, 0x00040000, x4, 96, x7)

# rs1_val == -257, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000010
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffeff, 0x00000010, x4, 100, x7)

# rs1_val == -513, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00800000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffdff, 0x00800000, x4, 104, x7)

# rs2_val == -262145, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0xfffbffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00040000, 0xfffbffff, x4, 108, x7)

# rs2_val == -1048577, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xffefffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000008, 0xffefffff, x4, 112, x7)

# rs2_val == -8388609, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0xff7fffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00004000, 0xff7fffff, x4, 116, x7)

# rs2_val == -16777217, rs1_val == -524289
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfeffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfff7ffff, 0xfeffffff, x4, 120, x7)

# rs2_val == -134217729, rs1_val == -2049
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xf7ffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xf7ffffff, x4, 124, x7)

# rs2_val == -268435457, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0xefffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00400000, 0xefffffff, x4, 128, x7)

# rs2_val == -1073741825, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0xbfffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xc0000000, 0xbfffffff, x4, 132, x7)

# rs2_val == 1431655765, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff6;  op2val:0x55555555
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffff6, 0x55555555, x4, 136, x7)

# rs2_val == -1431655766, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xaaaaaaaa
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000006, 0xaaaaaaaa, x4, 140, x7)

# rs1_val == -1025, rs2_val == -65537
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfffeffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffbff, 0xfffeffff, x4, 144, x7)

# rs1_val == -4097, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfbffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffefff, 0xfbffffff, x4, 148, x7)

# rs1_val == -8193, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffffff9
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffdfff, 0xfffffff9, x4, 152, x7)

# rs1_val == -16385, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xffdfffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffbfff, 0xffdfffff, x4, 156, x7)

# rs1_val == -32769, rs2_val == 1073741824
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x40000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffff7fff, 0x40000000, x4, 160, x7)

# rs1_val == -65537, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xfbffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffeffff, 0xfbffffff, x4, 164, x7)

# rs1_val == -131073, rs2_val == -33
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xffffffdf
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffdffff, 0xffffffdf, x4, 168, x7)

# rs1_val == -262145, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xdfffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffbffff, 0xdfffffff, x4, 172, x7)

# rs1_val == -1048577, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffffffa
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffefffff, 0xfffffffa, x4, 176, x7)

# rs1_val == -2097153, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xff7fffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffdfffff, 0xff7fffff, x4, 180, x7)

# rs1_val == -4194305, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000800
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffbfffff, 0x00000800, x4, 184, x7)

# rs1_val == -8388609, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfffffff6
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xff7fffff, 0xfffffff6, x4, 188, x7)

# rs1_val == -16777217, rs2_val == -5
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xfffffffb
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfeffffff, 0xfffffffb, x4, 192, x7)

# rs1_val == -33554433, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xbfffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfdffffff, 0xbfffffff, x4, 196, x7)

# rs1_val == -67108865, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00002000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfbffffff, 0x00002000, x4, 200, x7)

# rs1_val == -134217729, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xaaaaaaaa
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xf7ffffff, 0xaaaaaaaa, x4, 204, x7)

# rs1_val == -268435457, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000800
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xefffffff, 0x00000800, x4, 208, x7)

# rs1_val == -536870913, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00040000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xdfffffff, 0x00040000, x4, 212, x7)

# rs1_val == -1073741825, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xff7fffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xbfffffff, 0xff7fffff, x4, 216, x7)

# rs1_val == -1431655766, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xfffffffb
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0xfffffffb, x4, 220, x7)

# rs2_val == 4, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000004
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffb, 0x00000004, x4, 224, x7)

# rs2_val == 32, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000020
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffe, 0x00000020, x4, 228, x7)

# rs2_val == 128, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000080
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xdfffffff, 0x00000080, x4, 232, x7)

# rs2_val == 256, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000100
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x80000000, 0x00000100, x4, 236, x7)

# rs2_val == 512, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00000200
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000000, 0x00000200, x4, 240, x7)

# rs2_val == 32768, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00008000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffbff, 0x00008000, x4, 244, x7)

# rs2_val == 65536, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00010000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffff7, 0x00010000, x4, 248, x7)

# rs2_val == 131072, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00020000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffffbf, 0x00020000, x4, 252, x7)

# rs2_val == 524288, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x00080000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000005, 0x00080000, x4, 256, x7)

# rs2_val == 1048576, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x00100000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00100000, 0x00100000, x4, 260, x7)

# rs2_val == 2097152, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00200000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffdff, 0x00200000, x4, 264, x7)

# rs2_val == 4194304, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x00400000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000009, 0x00400000, x4, 268, x7)

# rs2_val == 33554432, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x02000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xbfffffff, 0x02000000, x4, 272, x7)

# rs2_val == 67108864, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x04000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000009, 0x04000000, x4, 276, x7)

# rs2_val == 134217728, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0x08000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000040, 0x08000000, x4, 280, x7)

# rs2_val == 536870912, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0x20000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffc, 0x20000000, x4, 284, x7)

# rs2_val == -2, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xfffffffe
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00200000, 0xfffffffe, x4, 288, x7)

# rs2_val == -3, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffffffd
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xfffffffd, x4, 292, x7)

# rs2_val == -9, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xfffffff7
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00008000, 0xfffffff7, x4, 296, x7)

# rs2_val == -17, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xffffffef
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffbfffff, 0xffffffef, x4, 300, x7)

# rs2_val == -65, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0xffffffbf
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00001000, 0xffffffbf, x4, 304, x7)

# rs2_val == -257, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffeff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffffbf, 0xfffffeff, x4, 308, x7)

# rs2_val == -513, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffdff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfffffdff, x4, 312, x7)

# rs2_val == -1025, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x3fffffff;  op2val:0xfffffbff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x3fffffff, 0xfffffbff, x4, 316, x7)

# rs2_val == -4097, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffffefff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x55555555, 0xffffefff, x4, 320, x7)

# rs2_val == -16385, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0xffffbfff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000200, 0xffffbfff, x4, 324, x7)

# rs2_val == -32769, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0xffff7fff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffffff, 0xffff7fff, x4, 328, x7)

# rs2_val == -131073, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0xfffdffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000009, 0xfffdffff, x4, 332, x7)

# rs1_val == 0, rs2_val == 16
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00000010
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000000, 0x00000010, x4, 336, x7)

# rs1_val == (2**(xlen-1)-1), rs2_val == -67108865, rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xfbffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x7fffffff, 0xfbffffff, x4, 340, x7)

# rs1_val == 1, rs2_val == -2097153
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xffdfffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000001, 0xffdfffff, x4, 344, x7)

# rs2_val == (-2**(xlen-1)), rs1_val == 8, rs2_val == -2147483648
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x80000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000008, 0x80000000, x4, 348, x7)

# rs2_val == 0, rs1_val == -2
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffe, 0x00000000, x4, 352, x7)
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
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 89*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
