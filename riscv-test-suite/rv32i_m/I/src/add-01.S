
#This assembly file tests the add instruction of the RISC-V I extension for the add covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",add)

RVTEST_SIGBASE( x16,signature_x16_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x4, rs2==x6, rd==x9, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: add ; op1:x4; op2:x6; dest:x9; op1val:0x80000000;  op2val:0x00000005
TEST_RR_OP(add, x9, x4, x6, 0x80000005, 0x80000000, 0x00000005, x16, 0, x24)

# rs1 == rd != rs2, rs1==x5, rs2==x14, rd==x5, rs1_val == 0, rs2_val == -257
# opcode: add ; op1:x5; op2:x14; dest:x5; op1val:0x00000000;  op2val:0xfffffeff
TEST_RR_OP(add, x5, x5, x14, 0xfffffeff, 0x00000000, 0xfffffeff, x16, 4, x24)

# rs1 == rs2 != rd, rs1==x3, rs2==x3, rd==x15, rs1_val == (2**(xlen-1)-1), rs2_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs1_val == rs2_val, rs2_val == 2147483647, rs1_val == 2147483647
# opcode: add ; op1:x3; op2:x3; dest:x15; op1val:0x7fffffff;  op2val:0x7fffffff
TEST_RR_OP(add, x15, x3, x3, 0xfffffffe, 0x7fffffff, 0x7fffffff, x16, 8, x24)

# rs2 == rd != rs1, rs1==x11, rs2==x25, rd==x25, rs1_val == 1, rs1_val > 0 and rs2_val < 0
# opcode: add ; op1:x11; op2:x25; dest:x25; op1val:0x00000001;  op2val:0xfffffeff
TEST_RR_OP(add, x25, x11, x25, 0xffffff00, 0x00000001, 0xfffffeff, x16, 12, x24)

# rs1 == rs2 == rd, rs1==x20, rs2==x20, rd==x20, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648, rs1_val == 262144
# opcode: add ; op1:x20; op2:x20; dest:x20; op1val:0x00040000;  op2val:0x80000000
TEST_RR_OP(add, x20, x20, x20, 0x80040000, 0x00040000, 0x80000000, x16, 16, x24)

# rs1==x1, rs2==x12, rd==x11, rs2_val == 0, rs1_val == -536870913
# opcode: add ; op1:x1; op2:x12; dest:x11; op1val:0xdfffffff;  op2val:0x00000000
TEST_RR_OP(add, x11, x1, x12, 0xdfffffff, 0xdfffffff, 0x00000000, x16, 20, x24)

# rs1==x29, rs2==x8, rd==x2, rs2_val == 1, rs1_val == 16
# opcode: add ; op1:x29; op2:x8; dest:x2; op1val:0x00000010;  op2val:0x00000001
TEST_RR_OP(add, x2, x29, x8, 0x11, 0x00000010, 0x00000001, x16, 24, x24)

# rs1==x26, rs2==x9, rd==x19, rs1_val < 0 and rs2_val < 0, rs2_val == -17, rs1_val == -3
# opcode: add ; op1:x26; op2:x9; dest:x19; op1val:0xfffffffd;  op2val:0xffffffef
TEST_RR_OP(add, x19, x26, x9, 0xffffffec, 0xfffffffd, 0xffffffef, x16, 28, x24)

# rs1==x23, rs2==x7, rd==x22, rs1_val == 2, rs2_val == 64
# opcode: add ; op1:x23; op2:x7; dest:x22; op1val:0x00000002;  op2val:0x00000040
TEST_RR_OP(add, x22, x23, x7, 0x42, 0x00000002, 0x00000040, x16, 32, x24)

# rs1==x13, rs2==x5, rd==x21, rs1_val == 4, rs2_val == 262144
# opcode: add ; op1:x13; op2:x5; dest:x21; op1val:0x00000004;  op2val:0x00040000
TEST_RR_OP(add, x21, x13, x5, 0x40004, 0x00000004, 0x00040000, x16, 36, x24)

# rs1==x22, rs2==x19, rd==x3, rs1_val == 8, rs2_val == 33554432
# opcode: add ; op1:x22; op2:x19; dest:x3; op1val:0x00000008;  op2val:0x02000000
TEST_RR_OP(add, x3, x22, x19, 0x2000008, 0x00000008, 0x02000000, x16, 40, x24)

# rs1==x15, rs2==x0, rd==x1, rs1_val == 32, rs2_val == -129
# opcode: add ; op1:x15; op2:x0; dest:x1; op1val:0x00000020;  op2val:0xffffff7f
TEST_RR_OP(add, x1, x15, x0, 0xffffff9f, 0x00000020, 0xffffff7f, x16, 44, x24)

# rs1==x2, rs2==x30, rd==x29, rs1_val == 64, rs2_val == -1073741825
# opcode: add ; op1:x2; op2:x30; dest:x29; op1val:0x00000040;  op2val:0xbfffffff
TEST_RR_OP(add, x29, x2, x30, 0xc000003f, 0x00000040, 0xbfffffff, x16, 48, x24)

# rs1==x25, rs2==x4, rd==x18, rs1_val == 128, rs2_val == -33554433
# opcode: add ; op1:x25; op2:x4; dest:x18; op1val:0x00000080;  op2val:0xfdffffff
TEST_RR_OP(add, x18, x25, x4, 0xfe00007f, 0x00000080, 0xfdffffff, x16, 52, x24)

# rs1==x10, rs2==x17, rd==x27, rs1_val == 256, rs2_val == -8388609
# opcode: add ; op1:x10; op2:x17; dest:x27; op1val:0x00000100;  op2val:0xff7fffff
TEST_RR_OP(add, x27, x10, x17, 0xff8000ff, 0x00000100, 0xff7fffff, x16, 56, x24)

# rs1==x31, rs2==x28, rd==x23, rs1_val == 512, rs2_val == -536870913
# opcode: add ; op1:x31; op2:x28; dest:x23; op1val:0x00000200;  op2val:0xdfffffff
TEST_RR_OP(add, x23, x31, x28, 0xe00001ff, 0x00000200, 0xdfffffff, x16, 60, x5)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x24, rs2==x27, rd==x4, rs1_val == 1024, rs2_val == 1431655765
# opcode: add ; op1:x24; op2:x27; dest:x4; op1val:0x00000400;  op2val:0x55555555
TEST_RR_OP(add, x4, x24, x27, 0x55555955, 0x00000400, 0x55555555, x3, 0, x5)

# rs1==x21, rs2==x11, rd==x7, rs1_val == 2048, 
# opcode: add ; op1:x21; op2:x11; dest:x7; op1val:0x00000800;  op2val:0x02000000
TEST_RR_OP(add, x7, x21, x11, 0x2000800, 0x00000800, 0x02000000, x3, 4, x5)

# rs1==x12, rs2==x1, rd==x31, rs1_val == 4096, rs2_val == 128
# opcode: add ; op1:x12; op2:x1; dest:x31; op1val:0x00001000;  op2val:0x00000080
TEST_RR_OP(add, x31, x12, x1, 0x1080, 0x00001000, 0x00000080, x3, 8, x5)

# rs1==x7, rs2==x22, rd==x10, rs1_val == 8192, rs2_val == -2
# opcode: add ; op1:x7; op2:x22; dest:x10; op1val:0x00002000;  op2val:0xfffffffe
TEST_RR_OP(add, x10, x7, x22, 0x1ffe, 0x00002000, 0xfffffffe, x3, 12, x5)

# rs1==x17, rs2==x15, rd==x26, rs1_val == 16384, rs2_val == -16777217
# opcode: add ; op1:x17; op2:x15; dest:x26; op1val:0x00004000;  op2val:0xfeffffff
TEST_RR_OP(add, x26, x17, x15, 0xff003fff, 0x00004000, 0xfeffffff, x3, 16, x5)

# rs1==x8, rs2==x26, rd==x30, rs1_val == 32768, rs2_val == -3
# opcode: add ; op1:x8; op2:x26; dest:x30; op1val:0x00008000;  op2val:0xfffffffd
TEST_RR_OP(add, x30, x8, x26, 0x7ffd, 0x00008000, 0xfffffffd, x3, 20, x5)

# rs1==x6, rs2==x16, rd==x24, rs1_val == 65536, 
# opcode: add ; op1:x6; op2:x16; dest:x24; op1val:0x00010000;  op2val:0xdfffffff
TEST_RR_OP(add, x24, x6, x16, 0xe000ffff, 0x00010000, 0xdfffffff, x3, 24, x5)

# rs1==x28, rs2==x10, rd==x8, rs1_val == 131072, rs2_val == 67108864
# opcode: add ; op1:x28; op2:x10; dest:x8; op1val:0x00020000;  op2val:0x04000000
TEST_RR_OP(add, x8, x28, x10, 0x4020000, 0x00020000, 0x04000000, x3, 28, x5)

# rs1==x14, rs2==x13, rd==x6, rs1_val == 524288, rs2_val == -1048577
# opcode: add ; op1:x14; op2:x13; dest:x6; op1val:0x00080000;  op2val:0xffefffff
TEST_RR_OP(add, x6, x14, x13, 0xfff7ffff, 0x00080000, 0xffefffff, x3, 32, x5)

# rs1==x19, rs2==x29, rd==x13, rs1_val == 1048576, rs2_val == 1048576
# opcode: add ; op1:x19; op2:x29; dest:x13; op1val:0x00100000;  op2val:0x00100000
TEST_RR_OP(add, x13, x19, x29, 0x200000, 0x00100000, 0x00100000, x3, 36, x5)

# rs1==x18, rs2==x21, rd==x16, rs1_val == 2097152, rs2_val == 536870912
# opcode: add ; op1:x18; op2:x21; dest:x16; op1val:0x00200000;  op2val:0x20000000
TEST_RR_OP(add, x16, x18, x21, 0x20200000, 0x00200000, 0x20000000, x3, 40, x5)

# rs1==x27, rs2==x23, rd==x28, rs1_val == 4194304, rs2_val == 131072
# opcode: add ; op1:x27; op2:x23; dest:x28; op1val:0x00400000;  op2val:0x00020000
TEST_RR_OP(add, x28, x27, x23, 0x420000, 0x00400000, 0x00020000, x3, 44, x5)

# rs1==x9, rs2==x2, rd==x0, rs1_val == 8388608, 
# opcode: add ; op1:x9; op2:x2; dest:x0; op1val:0x00800000;  op2val:0xbfffffff
TEST_RR_OP(add, x0, x9, x2, 0xc07fffff, 0x00800000, 0xbfffffff, x3, 48, x5)

# rs1==x16, rs2==x24, rd==x14, rs1_val == 16777216, rs2_val == 256
# opcode: add ; op1:x16; op2:x24; dest:x14; op1val:0x01000000;  op2val:0x00000100
TEST_RR_OP(add, x14, x16, x24, 0x1000100, 0x01000000, 0x00000100, x3, 52, x1)

# rs1==x0, rs2==x18, rd==x17, rs1_val == 33554432, rs2_val == 8
# opcode: add ; op1:x0; op2:x18; dest:x17; op1val:0x02000000;  op2val:0x00000008
TEST_RR_OP(add, x17, x0, x18, 0x2000008, 0x02000000, 0x00000008, x3, 56, x1)

# rs1==x30, rs2==x31, rd==x12, rs1_val == 67108864, rs2_val == 268435456
# opcode: add ; op1:x30; op2:x31; dest:x12; op1val:0x04000000;  op2val:0x10000000
TEST_RR_OP(add, x12, x30, x31, 0x14000000, 0x04000000, 0x10000000, x3, 60, x1)

# rs1_val == 134217728, rs2_val == -4194305
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xffbfffff
TEST_RR_OP(add, x12, x10, x11, 0x7bfffff, 0x08000000, 0xffbfffff, x3, 64, x1)

# rs1_val == 268435456, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000000
TEST_RR_OP(add, x12, x10, x11, 0x10000000, 0x10000000, 0x00000000, x3, 68, x1)

# rs1_val == 536870912, rs2_val == 16
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000010
TEST_RR_OP(add, x12, x10, x11, 0x20000010, 0x20000000, 0x00000010, x3, 72, x1)

# rs1_val == 1073741824, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfffffff6
TEST_RR_OP(add, x12, x10, x11, 0x3ffffff6, 0x40000000, 0xfffffff6, x3, 76, x1)

# rs1_val == -2, rs2_val == -16385
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xffffbfff
TEST_RR_OP(add, x12, x10, x11, 0xffffbffd, 0xfffffffe, 0xffffbfff, x3, 80, x1)

# rs1_val == -5, rs2_val == -5
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfffffffb
TEST_RR_OP(add, x12, x10, x11, 0xfffffff6, 0xfffffffb, 0xfffffffb, x3, 84, x1)

# rs1_val == -9, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x3fffffff
TEST_RR_OP(add, x12, x10, x11, 0x3ffffff6, 0xfffffff7, 0x3fffffff, x3, 88, x1)

# rs1_val == -17, rs2_val == 8192
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00002000
TEST_RR_OP(add, x12, x10, x11, 0x1fef, 0xffffffef, 0x00002000, x3, 92, x1)

# rs2_val == -262145, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xfffbffff
TEST_RR_OP(add, x12, x10, x11, 0xfffc0005, 0x00000006, 0xfffbffff, x3, 96, x1)

# rs2_val == -524289, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xfff7ffff
TEST_RR_OP(add, x12, x10, x11, 0x7ff7fffe, 0x7fffffff, 0xfff7ffff, x3, 100, x1)

# rs2_val == -2097153, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0xffdfffff
TEST_RR_OP(add, x12, x10, x11, 0xffe000ff, 0x00000100, 0xffdfffff, x3, 104, x1)

# rs2_val == -67108865, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xfbffffff
TEST_RR_OP(add, x12, x10, x11, 0xfc007fff, 0x00008000, 0xfbffffff, x3, 108, x1)

# rs2_val == -134217729, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xf7ffffff
TEST_RR_OP(add, x12, x10, x11, 0xf7fffffb, 0xfffffffc, 0xf7ffffff, x3, 112, x1)

# rs2_val == -268435457, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0xefffffff
TEST_RR_OP(add, x12, x10, x11, 0xf00000ff, 0x00000100, 0xefffffff, x3, 116, x1)

# rs2_val == -1431655766, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0xaaaaaaaa
TEST_RR_OP(add, x12, x10, x11, 0xaaaaaaea, 0x00000040, 0xaaaaaaaa, x3, 120, x1)

# rs1_val == -33, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xffdfffff
TEST_RR_OP(add, x12, x10, x11, 0xffdfffde, 0xffffffdf, 0xffdfffff, x3, 124, x1)

# rs1_val == -65, rs2_val == 2048
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000800
TEST_RR_OP(add, x12, x10, x11, 0x7bf, 0xffffffbf, 0x00000800, x3, 128, x1)

# rs1_val == -129, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xefffffff
TEST_RR_OP(add, x12, x10, x11, 0xefffff7e, 0xffffff7f, 0xefffffff, x3, 132, x1)

# rs1_val == -257, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000100
TEST_RR_OP(add, x12, x10, x11, 0xffffffff, 0xfffffeff, 0x00000100, x3, 136, x1)

# rs1_val == -513, rs2_val == -131073
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfffdffff
TEST_RR_OP(add, x12, x10, x11, 0xfffdfdfe, 0xfffffdff, 0xfffdffff, x3, 140, x1)

# rs1_val == -1025, rs2_val == 1073741824
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x40000000
TEST_RR_OP(add, x12, x10, x11, 0x3ffffbff, 0xfffffbff, 0x40000000, x3, 144, x1)

# rs1_val == -2049, rs2_val == 4096
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00001000
TEST_RR_OP(add, x12, x10, x11, 0x7ff, 0xfffff7ff, 0x00001000, x3, 148, x1)

# rs1_val == -4097, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x80000000
TEST_RR_OP(add, x12, x10, x11, 0x7fffefff, 0xffffefff, 0x80000000, x3, 152, x1)

# rs1_val == -8193, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfbffffff
TEST_RR_OP(add, x12, x10, x11, 0xfbffdffe, 0xffffdfff, 0xfbffffff, x3, 156, x1)

# rs1_val == -16385, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000080
TEST_RR_OP(add, x12, x10, x11, 0xffffc07f, 0xffffbfff, 0x00000080, x3, 160, x1)

# rs1_val == -32769, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xefffffff
TEST_RR_OP(add, x12, x10, x11, 0xefff7ffe, 0xffff7fff, 0xefffffff, x3, 164, x1)

# rs1_val == -65537, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00001000
TEST_RR_OP(add, x12, x10, x11, 0xffff0fff, 0xfffeffff, 0x00001000, x3, 168, x1)

# rs1_val == -131073, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xfdffffff
TEST_RR_OP(add, x12, x10, x11, 0xfdfdfffe, 0xfffdffff, 0xfdffffff, x3, 172, x1)

# rs1_val == -262145, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfff7ffff
TEST_RR_OP(add, x12, x10, x11, 0xfff3fffe, 0xfffbffff, 0xfff7ffff, x3, 176, x1)

# rs1_val == -524289, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00001000
TEST_RR_OP(add, x12, x10, x11, 0xfff80fff, 0xfff7ffff, 0x00001000, x3, 180, x1)

# rs1_val == -1048577, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000008
TEST_RR_OP(add, x12, x10, x11, 0xfff00007, 0xffefffff, 0x00000008, x3, 184, x1)

# rs1_val == -2097153, rs2_val == -33
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xffffffdf
TEST_RR_OP(add, x12, x10, x11, 0xffdfffde, 0xffdfffff, 0xffffffdf, x3, 188, x1)

# rs1_val == -4194305, rs2_val == 524288
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00080000
TEST_RR_OP(add, x12, x10, x11, 0xffc7ffff, 0xffbfffff, 0x00080000, x3, 192, x1)

# rs1_val == -8388609, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xbfffffff
TEST_RR_OP(add, x12, x10, x11, 0xbf7ffffe, 0xff7fffff, 0xbfffffff, x3, 196, x1)

# rs1_val == -16777217, rs2_val == -2049
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xfffff7ff
TEST_RR_OP(add, x12, x10, x11, 0xfefff7fe, 0xfeffffff, 0xfffff7ff, x3, 200, x1)

# rs1_val == -33554433, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfffffff6
TEST_RR_OP(add, x12, x10, x11, 0xfdfffff5, 0xfdffffff, 0xfffffff6, x3, 204, x1)

# rs1_val == -67108865, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00002000
TEST_RR_OP(add, x12, x10, x11, 0xfc001fff, 0xfbffffff, 0x00002000, x3, 208, x1)

# rs1_val == -134217729, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00002000
TEST_RR_OP(add, x12, x10, x11, 0xf8001fff, 0xf7ffffff, 0x00002000, x3, 212, x1)

# rs1_val == -268435457, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xffdfffff
TEST_RR_OP(add, x12, x10, x11, 0xefdffffe, 0xefffffff, 0xffdfffff, x3, 216, x1)

# rs1_val == -1073741825, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfffffff8
TEST_RR_OP(add, x12, x10, x11, 0xbffffff7, 0xbfffffff, 0xfffffff8, x3, 220, x1)

# rs1_val == 1431655765, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xf7ffffff
TEST_RR_OP(add, x12, x10, x11, 0x4d555554, 0x55555555, 0xf7ffffff, x3, 224, x1)

# rs1_val == -1431655766, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xf7ffffff
TEST_RR_OP(add, x12, x10, x11, 0xa2aaaaa9, 0xaaaaaaaa, 0xf7ffffff, x3, 228, x1)

# rs2_val == 2, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0x00000002
TEST_RR_OP(add, x12, x10, x11, 0x8, 0x00000006, 0x00000002, x3, 232, x1)

# rs2_val == 4, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000004
TEST_RR_OP(add, x12, x10, x11, 0x8000004, 0x08000000, 0x00000004, x3, 236, x1)

# rs2_val == 32, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x00000020
TEST_RR_OP(add, x12, x10, x11, 0x29, 0x00000009, 0x00000020, x3, 240, x1)

# rs2_val == 512, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0x00000200
TEST_RR_OP(add, x12, x10, x11, 0x220, 0x00000020, 0x00000200, x3, 244, x1)

# rs2_val == 1024, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00000400
TEST_RR_OP(add, x12, x10, x11, 0x403, 0x00000003, 0x00000400, x3, 248, x1)

# rs2_val == 16384, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00004000
TEST_RR_OP(add, x12, x10, x11, 0x2004000, 0x02000000, 0x00004000, x3, 252, x1)

# rs2_val == 2097152, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00200000
TEST_RR_OP(add, x12, x10, x11, 0x1ffdff, 0xfffffdff, 0x00200000, x3, 256, x1)

# rs2_val == 4194304, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0x00400000
TEST_RR_OP(add, x12, x10, x11, 0x400006, 0x00000006, 0x00400000, x3, 260, x1)

# rs2_val == -65537, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffeffff
TEST_RR_OP(add, x12, x10, x11, 0xfffefff6, 0xfffffff7, 0xfffeffff, x3, 264, x1)

# rs2_val == 8388608, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00800000
TEST_RR_OP(add, x12, x10, x11, 0xfe7fffff, 0xfdffffff, 0x00800000, x3, 268, x1)

# rs2_val == 16777216, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x01000000
TEST_RR_OP(add, x12, x10, x11, 0xf8ffffff, 0xf7ffffff, 0x01000000, x3, 272, x1)

# rs2_val == 134217728, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0x08000000
TEST_RR_OP(add, x12, x10, x11, 0x8000080, 0x00000080, 0x08000000, x3, 276, x1)

# rs2_val == -9, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xfffffff7
TEST_RR_OP(add, x12, x10, x11, 0x7f7, 0x00000800, 0xfffffff7, x3, 280, x1)

# rs2_val == -65, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xffffffbf
TEST_RR_OP(add, x12, x10, x11, 0xfffffbf, 0x10000000, 0xffffffbf, x3, 284, x1)

# rs2_val == -32769, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffff7fff
TEST_RR_OP(add, x12, x10, x11, 0xf7ff7ffe, 0xf7ffffff, 0xffff7fff, x3, 288, x1)

# rs2_val == -513, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfffffdff
TEST_RR_OP(add, x12, x10, x11, 0xfff7fdfe, 0xfff7ffff, 0xfffffdff, x3, 292, x1)

# rs2_val == -1025, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xfffffbff
TEST_RR_OP(add, x12, x10, x11, 0x3ff, 0x00000800, 0xfffffbff, x3, 296, x1)

# rs2_val == -4097, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xffffefff
TEST_RR_OP(add, x12, x10, x11, 0xfffff007, 0x00000008, 0xffffefff, x3, 300, x1)

# rs2_val == -8193, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0xffffdfff
TEST_RR_OP(add, x12, x10, x11, 0xffffe008, 0x00000009, 0xffffdfff, x3, 304, x1)

# rs2_val == 32768, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00008000
TEST_RR_OP(add, x12, x10, x11, 0x7fdf, 0xffffffdf, 0x00008000, x3, 308, x1)

# rs2_val == 65536, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00010000
TEST_RR_OP(add, x12, x10, x11, 0x4010000, 0x04000000, 0x00010000, x3, 312, x1)

# rs1_val == 0, rs2_val == -257
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffffeff
TEST_RR_OP(add, x12, x10, x11, 0xfffffeff, 0x00000000, 0xfffffeff, x3, 316, x1)

# rs1_val == (2**(xlen-1)-1), rs2_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs1_val == rs2_val, rs2_val == 2147483647, rs1_val == 2147483647
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x7fffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffffe, 0x7fffffff, 0x7fffffff, x3, 320, x1)

# rs1_val == 1, rs1_val > 0 and rs2_val < 0
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xfffffeff
TEST_RR_OP(add, x12, x10, x11, 0xffffff00, 0x00000001, 0xfffffeff, x3, 324, x1)

# rs2_val == (-2**(xlen-1)), rs2_val == -2147483648, rs1_val == 262144
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x80000000
TEST_RR_OP(add, x12, x10, x11, 0x80040000, 0x00040000, 0x80000000, x3, 328, x1)

# rs1_val == 32, rs2_val == -129
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xffffff7f
TEST_RR_OP(add, x12, x10, x11, 0xffffff9f, 0x00000020, 0xffffff7f, x3, 332, x1)

# rs1_val == 8388608, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0xbfffffff
TEST_RR_OP(add, x12, x10, x11, 0xc07fffff, 0x00800000, 0xbfffffff, x3, 336, x1)

# rs1_val == 33554432, rs2_val == 8
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000008
TEST_RR_OP(add, x12, x10, x11, 0x2000008, 0x02000000, 0x00000008, x3, 340, x1)
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

signature_x16_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x16_1:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 86*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
