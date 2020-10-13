
#This assembly file tests the add instruction of the RISC-V I extension for the add covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",add)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x1, rs2==x5, rd==x8, rs1_val == (-2**(xlen-1)), rs2_val == 128, rs1_val < 0 and rs2_val > 0, rs1_val == -2147483648, rs1_val != rs2_val
# opcode: add ; op1:x1; op2:x5; dest:x8; op1val:0x80000000;  op2val:0x00000080
TEST_RR_OP(add, x8, x1, x5, 0x80000080, 0x80000000, 0x00000080, x3, 0, x4)

# rs1 == rs2 != rd, rs1==x22, rs2==x22, rd==x30, rs1_val == 0, rs2_val == -16777217
# opcode: add ; op1:x22; op2:x22; dest:x30; op1val:0x00000000;  op2val:0xfeffffff
TEST_RR_OP(add, x30, x22, x22, 0xfeffffff, 0x00000000, 0xfeffffff, x3, 4, x4)

# rs1 == rd != rs2, rs1==x9, rs2==x17, rd==x9, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647
# opcode: add ; op1:x9; op2:x17; dest:x9; op1val:0x7fffffff;  op2val:0xfeffffff
TEST_RR_OP(add, x9, x9, x17, 0x7efffffe, 0x7fffffff, 0xfeffffff, x3, 8, x4)

# rs2 == rd != rs1, rs1==x23, rs2==x26, rd==x26, rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 1024
# opcode: add ; op1:x23; op2:x26; dest:x26; op1val:0x00000001;  op2val:0x00000400
TEST_RR_OP(add, x26, x23, x26, 0x401, 0x00000001, 0x00000400, x3, 12, x4)

# rs1 == rs2 == rd, rs1==x19, rs2==x19, rd==x19, rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: add ; op1:x19; op2:x19; dest:x19; op1val:0x00000007;  op2val:0x80000000
TEST_RR_OP(add, x19, x19, x19, 0x80000007, 0x00000007, 0x80000000, x3, 16, x4)

# rs1==x28, rs2==x0, rd==x25, rs2_val == 0, rs1_val == 131072
# opcode: add ; op1:x28; op2:x0; dest:x25; op1val:0x00020000;  op2val:0x00000000
TEST_RR_OP(add, x25, x28, x0, 0x20000, 0x00020000, 0x00000000, x3, 20, x4)

# rs1==x14, rs2==x23, rd==x13, rs2_val == (2**(xlen-1)-1), rs1_val == -9, rs2_val == 2147483647
# opcode: add ; op1:x14; op2:x23; dest:x13; op1val:0xfffffff7;  op2val:0x7fffffff
TEST_RR_OP(add, x13, x14, x23, 0x7ffffff6, 0xfffffff7, 0x7fffffff, x3, 24, x4)

# rs1==x18, rs2==x2, rd==x5, rs2_val == 1, 
# opcode: add ; op1:x18; op2:x2; dest:x5; op1val:0xfffffff8;  op2val:0x00000001
TEST_RR_OP(add, x5, x18, x2, 0xfffffff9, 0xfffffff8, 0x00000001, x3, 28, x4)

# rs1==x24, rs2==x14, rd==x7, rs1_val < 0 and rs2_val < 0, rs1_val == -3
# opcode: add ; op1:x24; op2:x14; dest:x7; op1val:0xfffffffd;  op2val:0xfffffff9
TEST_RR_OP(add, x7, x24, x14, 0xfffffff6, 0xfffffffd, 0xfffffff9, x3, 32, x4)

# rs1==x13, rs2==x31, rd==x1, rs1_val == rs2_val, 
# opcode: add ; op1:x13; op2:x31; dest:x1; op1val:0xfffffffc;  op2val:0xfffffffc
TEST_RR_OP(add, x1, x13, x31, 0xfffffff8, 0xfffffffc, 0xfffffffc, x3, 36, x4)

# rs1==x16, rs2==x30, rd==x20, rs1_val == 2, rs2_val == -1431655766
# opcode: add ; op1:x16; op2:x30; dest:x20; op1val:0x00000002;  op2val:0xaaaaaaaa
TEST_RR_OP(add, x20, x16, x30, 0xaaaaaaac, 0x00000002, 0xaaaaaaaa, x3, 40, x4)

# rs1==x31, rs2==x18, rd==x0, rs1_val == 4, 
# opcode: add ; op1:x31; op2:x18; dest:x0; op1val:0x00000004;  op2val:0x00000080
TEST_RR_OP(add, x0, x31, x18, 0x84, 0x00000004, 0x00000080, x3, 44, x4)

# rs1==x26, rs2==x1, rd==x16, rs1_val == 8, rs2_val == 536870912
# opcode: add ; op1:x26; op2:x1; dest:x16; op1val:0x00000008;  op2val:0x20000000
TEST_RR_OP(add, x16, x26, x1, 0x20000008, 0x00000008, 0x20000000, x3, 48, x4)

# rs1==x11, rs2==x9, rd==x24, rs1_val == 16, rs2_val == 4194304
# opcode: add ; op1:x11; op2:x9; dest:x24; op1val:0x00000010;  op2val:0x00400000
TEST_RR_OP(add, x24, x11, x9, 0x400010, 0x00000010, 0x00400000, x3, 52, x4)

# rs1==x15, rs2==x11, rd==x21, rs1_val == 32, rs2_val == -32769
# opcode: add ; op1:x15; op2:x11; dest:x21; op1val:0x00000020;  op2val:0xffff7fff
TEST_RR_OP(add, x21, x15, x11, 0xffff801f, 0x00000020, 0xffff7fff, x3, 56, x4)

# rs1==x7, rs2==x29, rd==x12, rs1_val == 64, rs2_val == 32768
# opcode: add ; op1:x7; op2:x29; dest:x12; op1val:0x00000040;  op2val:0x00008000
TEST_RR_OP(add, x12, x7, x29, 0x8040, 0x00000040, 0x00008000, x3, 60, x4)

# rs1==x30, rs2==x16, rd==x18, rs1_val == 128, 
# opcode: add ; op1:x30; op2:x16; dest:x18; op1val:0x00000080;  op2val:0xfffffffa
TEST_RR_OP(add, x18, x30, x16, 0x7a, 0x00000080, 0xfffffffa, x3, 64, x4)

# rs1==x21, rs2==x12, rd==x28, rs1_val == 256, rs2_val == 512
# opcode: add ; op1:x21; op2:x12; dest:x28; op1val:0x00000100;  op2val:0x00000200
TEST_RR_OP(add, x28, x21, x12, 0x300, 0x00000100, 0x00000200, x3, 68, x4)

# rs1==x20, rs2==x13, rd==x10, rs1_val == 512, 
# opcode: add ; op1:x20; op2:x13; dest:x10; op1val:0x00000200;  op2val:0xaaaaaaaa
TEST_RR_OP(add, x10, x20, x13, 0xaaaaacaa, 0x00000200, 0xaaaaaaaa, x3, 72, x4)

# rs1==x0, rs2==x27, rd==x23, rs1_val == 1024, rs2_val == 8192
# opcode: add ; op1:x0; op2:x27; dest:x23; op1val:0x00000400;  op2val:0x00002000
TEST_RR_OP(add, x23, x0, x27, 0x2400, 0x00000400, 0x00002000, x3, 76, x9)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x2, rs2==x10, rd==x31, rs1_val == 2048, rs2_val == -2097153
# opcode: add ; op1:x2; op2:x10; dest:x31; op1val:0x00000800;  op2val:0xffdfffff
TEST_RR_OP(add, x31, x2, x10, 0xffe007ff, 0x00000800, 0xffdfffff, x1, 0, x9)

# rs1==x4, rs2==x7, rd==x14, rs1_val == 4096, 
# opcode: add ; op1:x4; op2:x7; dest:x14; op1val:0x00001000;  op2val:0x80000000
TEST_RR_OP(add, x14, x4, x7, 0x80001000, 0x00001000, 0x80000000, x1, 4, x9)

# rs1==x6, rs2==x24, rd==x17, rs1_val == 8192, rs2_val == -3
# opcode: add ; op1:x6; op2:x24; dest:x17; op1val:0x00002000;  op2val:0xfffffffd
TEST_RR_OP(add, x17, x6, x24, 0x1ffd, 0x00002000, 0xfffffffd, x1, 8, x9)

# rs1==x5, rs2==x20, rd==x15, rs1_val == 16384, rs2_val == -131073
# opcode: add ; op1:x5; op2:x20; dest:x15; op1val:0x00004000;  op2val:0xfffdffff
TEST_RR_OP(add, x15, x5, x20, 0xfffe3fff, 0x00004000, 0xfffdffff, x1, 12, x9)

# rs1==x3, rs2==x21, rd==x2, rs1_val == 32768, 
# opcode: add ; op1:x3; op2:x21; dest:x2; op1val:0x00008000;  op2val:0xffdfffff
TEST_RR_OP(add, x2, x3, x21, 0xffe07fff, 0x00008000, 0xffdfffff, x1, 16, x9)

# rs1==x25, rs2==x8, rd==x22, rs1_val == 65536, rs2_val == -65
# opcode: add ; op1:x25; op2:x8; dest:x22; op1val:0x00010000;  op2val:0xffffffbf
TEST_RR_OP(add, x22, x25, x8, 0xffbf, 0x00010000, 0xffffffbf, x1, 20, x9)

# rs1==x12, rs2==x15, rd==x27, rs1_val == 262144, rs2_val == -4194305
# opcode: add ; op1:x12; op2:x15; dest:x27; op1val:0x00040000;  op2val:0xffbfffff
TEST_RR_OP(add, x27, x12, x15, 0xffc3ffff, 0x00040000, 0xffbfffff, x1, 24, x9)

# rs1==x8, rs2==x4, rd==x3, rs1_val == 524288, rs2_val == -67108865
# opcode: add ; op1:x8; op2:x4; dest:x3; op1val:0x00080000;  op2val:0xfbffffff
TEST_RR_OP(add, x3, x8, x4, 0xfc07ffff, 0x00080000, 0xfbffffff, x1, 28, x9)

# rs1==x29, rs2==x25, rd==x4, rs1_val == 1048576, rs2_val == 65536
# opcode: add ; op1:x29; op2:x25; dest:x4; op1val:0x00100000;  op2val:0x00010000
TEST_RR_OP(add, x4, x29, x25, 0x110000, 0x00100000, 0x00010000, x1, 32, x9)

# rs1==x10, rs2==x28, rd==x11, rs1_val == 2097152, rs2_val == 33554432
# opcode: add ; op1:x10; op2:x28; dest:x11; op1val:0x00200000;  op2val:0x02000000
TEST_RR_OP(add, x11, x10, x28, 0x2200000, 0x00200000, 0x02000000, x1, 36, x9)

# rs1==x17, rs2==x3, rd==x6, rs1_val == 4194304, 
# opcode: add ; op1:x17; op2:x3; dest:x6; op1val:0x00400000;  op2val:0x80000000
TEST_RR_OP(add, x6, x17, x3, 0x80400000, 0x00400000, 0x80000000, x1, 40, x9)

# rs1==x27, rs2==x6, rd==x29, rs1_val == 8388608, 
# opcode: add ; op1:x27; op2:x6; dest:x29; op1val:0x00800000;  op2val:0x02000000
TEST_RR_OP(add, x29, x27, x6, 0x2800000, 0x00800000, 0x02000000, x1, 44, x9)

# rs1_val == 16777216, rs2_val == 1048576
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00100000
TEST_RR_OP(add, x12, x10, x11, 0x1100000, 0x01000000, 0x00100000, x1, 48, x9)

# rs1_val == 33554432, rs2_val == -2049
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xfffff7ff
TEST_RR_OP(add, x12, x10, x11, 0x1fff7ff, 0x02000000, 0xfffff7ff, x1, 52, x9)

# rs1_val == 67108864, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000006
TEST_RR_OP(add, x12, x10, x11, 0x4000006, 0x04000000, 0x00000006, x1, 56, x9)

# rs1_val == 134217728, rs2_val == -65537
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffeffff
TEST_RR_OP(add, x12, x10, x11, 0x7feffff, 0x08000000, 0xfffeffff, x1, 60, x9)

# rs1_val == 268435456, rs2_val == -257
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xfffffeff
TEST_RR_OP(add, x12, x10, x11, 0xffffeff, 0x10000000, 0xfffffeff, x1, 64, x9)

# rs1_val == 536870912, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000006
TEST_RR_OP(add, x12, x10, x11, 0x20000006, 0x20000000, 0x00000006, x1, 68, x9)

# rs1_val == 1073741824, rs2_val == -33554433
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfdffffff
TEST_RR_OP(add, x12, x10, x11, 0x3dffffff, 0x40000000, 0xfdffffff, x1, 72, x9)

# rs1_val == -2, rs2_val == -129
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xffffff7f
TEST_RR_OP(add, x12, x10, x11, 0xffffff7d, 0xfffffffe, 0xffffff7f, x1, 76, x9)

# rs1_val == -5, rs2_val == -33
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xffffffdf
TEST_RR_OP(add, x12, x10, x11, 0xffffffda, 0xfffffffb, 0xffffffdf, x1, 80, x9)

# rs1_val == -17, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000080
TEST_RR_OP(add, x12, x10, x11, 0x6f, 0xffffffef, 0x00000080, x1, 84, x9)

# rs1_val == -33, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xfffdffff
TEST_RR_OP(add, x12, x10, x11, 0xfffdffde, 0xffffffdf, 0xfffdffff, x1, 88, x9)

# rs1_val == -65, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00008000
TEST_RR_OP(add, x12, x10, x11, 0x7fbf, 0xffffffbf, 0x00008000, x1, 92, x9)

# rs1_val == -129, rs2_val == 8388608
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00800000
TEST_RR_OP(add, x12, x10, x11, 0x7fff7f, 0xffffff7f, 0x00800000, x1, 96, x9)

# rs2_val == -262145, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0xfffbffff
TEST_RR_OP(add, x12, x10, x11, 0xfffc007f, 0x00000080, 0xfffbffff, x1, 100, x9)

# rs2_val == -524289, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfff7ffff
TEST_RR_OP(add, x12, x10, x11, 0xfff7fff6, 0xfffffff7, 0xfff7ffff, x1, 104, x9)

# rs2_val == -1048577, rs1_val == -262145
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xffefffff
TEST_RR_OP(add, x12, x10, x11, 0xffebfffe, 0xfffbffff, 0xffefffff, x1, 108, x9)

# rs2_val == -8388609, rs1_val == -65537
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xff7fffff
TEST_RR_OP(add, x12, x10, x11, 0xff7efffe, 0xfffeffff, 0xff7fffff, x1, 112, x9)

# rs2_val == -134217729, rs1_val == -2049
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xf7ffffff
TEST_RR_OP(add, x12, x10, x11, 0xf7fff7fe, 0xfffff7ff, 0xf7ffffff, x1, 116, x9)

# rs2_val == -268435457, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xefffffff
TEST_RR_OP(add, x12, x10, x11, 0x6ffffffe, 0x7fffffff, 0xefffffff, x1, 120, x9)

# rs2_val == -536870913, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0xdfffffff
TEST_RR_OP(add, x12, x10, x11, 0xe0000006, 0x00000007, 0xdfffffff, x1, 124, x9)

# rs2_val == -1073741825, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xbfffffff
TEST_RR_OP(add, x12, x10, x11, 0xbfffffde, 0xffffffdf, 0xbfffffff, x1, 128, x9)

# rs2_val == 1431655765, rs1_val == -1025
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x55555555
TEST_RR_OP(add, x12, x10, x11, 0x55555154, 0xfffffbff, 0x55555555, x1, 132, x9)

# rs1_val == -257, rs2_val == -16385
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xffffbfff
TEST_RR_OP(add, x12, x10, x11, 0xffffbefe, 0xfffffeff, 0xffffbfff, x1, 136, x9)

# rs1_val == -513, rs2_val == -9
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfffffff7
TEST_RR_OP(add, x12, x10, x11, 0xfffffdf6, 0xfffffdff, 0xfffffff7, x1, 140, x9)

# rs1_val == -4097, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffffff8
TEST_RR_OP(add, x12, x10, x11, 0xffffeff7, 0xffffefff, 0xfffffff8, x1, 144, x9)

# rs1_val == -8193, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffffffd
TEST_RR_OP(add, x12, x10, x11, 0xffffdffc, 0xffffdfff, 0xfffffffd, x1, 148, x9)

# rs1_val == -16385, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xffefffff
TEST_RR_OP(add, x12, x10, x11, 0xffefbffe, 0xffffbfff, 0xffefffff, x1, 152, x9)

# rs1_val == -32769, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xffffbfff
TEST_RR_OP(add, x12, x10, x11, 0xffff3ffe, 0xffff7fff, 0xffffbfff, x1, 156, x9)

# rs1_val == -131073, rs2_val == 1073741824
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x40000000
TEST_RR_OP(add, x12, x10, x11, 0x3ffdffff, 0xfffdffff, 0x40000000, x1, 160, x9)

# rs1_val == -524289, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfffffff8
TEST_RR_OP(add, x12, x10, x11, 0xfff7fff7, 0xfff7ffff, 0xfffffff8, x1, 164, x9)

# rs1_val == -1048577, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xffff7fff
TEST_RR_OP(add, x12, x10, x11, 0xffef7ffe, 0xffefffff, 0xffff7fff, x1, 168, x9)

# rs1_val == -2097153, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000200
TEST_RR_OP(add, x12, x10, x11, 0xffe001ff, 0xffdfffff, 0x00000200, x1, 172, x9)

# rs1_val == -4194305, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xaaaaaaaa
TEST_RR_OP(add, x12, x10, x11, 0xaa6aaaa9, 0xffbfffff, 0xaaaaaaaa, x1, 176, x9)

# rs1_val == -8388609, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xffffff7f
TEST_RR_OP(add, x12, x10, x11, 0xff7fff7e, 0xff7fffff, 0xffffff7f, x1, 180, x9)

# rs1_val == -16777217, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000400
TEST_RR_OP(add, x12, x10, x11, 0xff0003ff, 0xfeffffff, 0x00000400, x1, 184, x9)

# rs1_val == -33554433, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00008000
TEST_RR_OP(add, x12, x10, x11, 0xfe007fff, 0xfdffffff, 0x00008000, x1, 188, x9)

# rs1_val == -67108865, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfffffff7
TEST_RR_OP(add, x12, x10, x11, 0xfbfffff6, 0xfbffffff, 0xfffffff7, x1, 192, x9)

# rs1_val == -134217729, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000005
TEST_RR_OP(add, x12, x10, x11, 0xf8000004, 0xf7ffffff, 0x00000005, x1, 196, x9)

# rs1_val == -268435457, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xfffffeff
TEST_RR_OP(add, x12, x10, x11, 0xeffffefe, 0xefffffff, 0xfffffeff, x1, 200, x9)

# rs1_val == -536870913, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xffbfffff
TEST_RR_OP(add, x12, x10, x11, 0xdfbffffe, 0xdfffffff, 0xffbfffff, x1, 204, x9)

# rs1_val == -1073741825, rs2_val == 16384
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00004000
TEST_RR_OP(add, x12, x10, x11, 0xc0003fff, 0xbfffffff, 0x00004000, x1, 208, x9)

# rs1_val == 1431655765, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x80000000
TEST_RR_OP(add, x12, x10, x11, 0xd5555555, 0x55555555, 0x80000000, x1, 212, x9)

# rs1_val == -1431655766, rs2_val == 268435456
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x10000000
TEST_RR_OP(add, x12, x10, x11, 0xbaaaaaaa, 0xaaaaaaaa, 0x10000000, x1, 216, x9)

# rs2_val == 2, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000002
TEST_RR_OP(add, x12, x10, x11, 0xfffff801, 0xfffff7ff, 0x00000002, x1, 220, x9)

# rs2_val == 4, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x00000004
TEST_RR_OP(add, x12, x10, x11, 0x4004, 0x00004000, 0x00000004, x1, 224, x9)

# rs2_val == 8, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000008
TEST_RR_OP(add, x12, x10, x11, 0xffffffe7, 0xffffffdf, 0x00000008, x1, 228, x9)

# rs2_val == 16, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000010
TEST_RR_OP(add, x12, x10, x11, 0xfe00000f, 0xfdffffff, 0x00000010, x1, 232, x9)

# rs2_val == 32, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0x00000020
TEST_RR_OP(add, x12, x10, x11, 0x8020, 0x00008000, 0x00000020, x1, 236, x9)

# rs2_val == 64, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000040
TEST_RR_OP(add, x12, x10, x11, 0x3b, 0xfffffffb, 0x00000040, x1, 240, x9)

# rs2_val == 256, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0x00000100
TEST_RR_OP(add, x12, x10, x11, 0x120, 0x00000020, 0x00000100, x1, 244, x9)

# rs2_val == 2048, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x00000800
TEST_RR_OP(add, x12, x10, x11, 0x4800, 0x00004000, 0x00000800, x1, 248, x9)

# rs2_val == 262144, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00040000
TEST_RR_OP(add, x12, x10, x11, 0xc003ffff, 0xbfffffff, 0x00040000, x1, 252, x9)

# rs2_val == 524288, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00080000
TEST_RR_OP(add, x12, x10, x11, 0x7ffff, 0xffffffff, 0x00080000, x1, 256, x9)

# rs2_val == 2097152, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00200000
TEST_RR_OP(add, x12, x10, x11, 0x1effff, 0xfffeffff, 0x00200000, x1, 260, x9)

# rs2_val == 4096, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00001000
TEST_RR_OP(add, x12, x10, x11, 0xff000fff, 0xfeffffff, 0x00001000, x1, 264, x9)

# rs2_val == 16777216, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x01000000
TEST_RR_OP(add, x12, x10, x11, 0xfffffe, 0xfffffffe, 0x01000000, x1, 268, x9)

# rs2_val == 67108864, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x04000000
TEST_RR_OP(add, x12, x10, x11, 0x4000001, 0x00000001, 0x04000000, x1, 272, x9)

# rs2_val == 134217728, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x08000000
TEST_RR_OP(add, x12, x10, x11, 0x8200000, 0x00200000, 0x08000000, x1, 276, x9)

# rs2_val == -2, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xfffffffe
TEST_RR_OP(add, x12, x10, x11, 0xfffffe, 0x01000000, 0xfffffffe, x1, 280, x9)

# rs2_val == -5, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0xfffffffb
TEST_RR_OP(add, x12, x10, x11, 0xfffffffa, 0xffffffff, 0xfffffffb, x1, 284, x9)

# rs2_val == -17, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xffffffef
TEST_RR_OP(add, x12, x10, x11, 0x7ef, 0x00000800, 0xffffffef, x1, 288, x9)

# rs2_val == -513, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0xfffffdff
TEST_RR_OP(add, x12, x10, x11, 0x1dff, 0x00002000, 0xfffffdff, x1, 292, x9)

# rs2_val == -1025, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xfffffbff
TEST_RR_OP(add, x12, x10, x11, 0xffbffbfe, 0xffbfffff, 0xfffffbff, x1, 296, x9)

# rs2_val == -4097, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xffffefff
TEST_RR_OP(add, x12, x10, x11, 0xffffeff6, 0xfffffff7, 0xffffefff, x1, 300, x9)

# rs2_val == -8193, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xffffdfff
TEST_RR_OP(add, x12, x10, x11, 0xffdfdffe, 0xffdfffff, 0xffffdfff, x1, 304, x9)

# rs2_val == 131072, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00020000
TEST_RR_OP(add, x12, x10, x11, 0x1ffdf, 0xffffffdf, 0x00020000, x1, 308, x9)

# rs1_val == 0, rs2_val == -16777217
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfeffffff
TEST_RR_OP(add, x12, x10, x11, 0xfeffffff, 0x00000000, 0xfeffffff, x1, 312, x9)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs1_val == 2147483647
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xfeffffff
TEST_RR_OP(add, x12, x10, x11, 0x7efffffe, 0x7fffffff, 0xfeffffff, x1, 316, x9)

# rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 1024
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000400
TEST_RR_OP(add, x12, x10, x11, 0x401, 0x00000001, 0x00000400, x1, 320, x9)

# rs2_val == (-2**(xlen-1)), rs2_val == -2147483648
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0x80000000
TEST_RR_OP(add, x12, x10, x11, 0x80000007, 0x00000007, 0x80000000, x1, 324, x9)

# rs2_val == 0, rs1_val == 131072
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0x00000000
TEST_RR_OP(add, x12, x10, x11, 0x20000, 0x00020000, 0x00000000, x1, 328, x9)

# rs1_val == 4, 
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0x00000080
TEST_RR_OP(add, x12, x10, x11, 0x84, 0x00000004, 0x00000080, x1, 332, x9)

# rs1_val == 1024, rs2_val == 8192
# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00002000
TEST_RR_OP(add, x12, x10, x11, 0x2400, 0x00000400, 0x00002000, x1, 336, x9)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 85*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
