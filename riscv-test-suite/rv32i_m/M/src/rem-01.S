
#This assembly file tests the rem instruction of the RISC-V M extension for the rem covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",rem)

la x3,signature_x3_1

# opcode: rem ; op1:x7; op2:x7; dest:x25; op1val:0x80000000;  op2val:0xfffffffa
TEST_RR_OP(rem, x25, x7, x7, 0x00000000, 0x80000000, 0xfffffffa, x3, 0, x6)

# opcode: rem ; op1:x31; op2:x17; dest:x31; op1val:0x00000000;  op2val:0xefffffff
TEST_RR_OP(rem, x31, x31, x17, 0x00000000, 0x00000000, 0xefffffff, x3, 4, x6)

# opcode: rem ; op1:x15; op2:x22; dest:x22; op1val:0x7fffffff;  op2val:0x00400000
TEST_RR_OP(rem, x22, x15, x22, 0x00000000, 0x7fffffff, 0x00400000, x3, 8, x6)

# opcode: rem ; op1:x29; op2:x29; dest:x29; op1val:0x00000001;  op2val:0xfffffffa
TEST_RR_OP(rem, x29, x29, x29, 0x00000000, 0x00000001, 0xfffffffa, x3, 12, x6)

# opcode: rem ; op1:x30; op2:x20; dest:x23; op1val:0x00000007;  op2val:0x80000000
TEST_RR_OP(rem, x23, x30, x20, 0x00000000, 0x00000007, 0x80000000, x3, 16, x6)

# opcode: rem ; op1:x26; op2:x14; dest:x11; op1val:0x7fffffff;  op2val:0x00000000
TEST_RR_OP(rem, x11, x26, x14, 0x00000000, 0x7fffffff, 0x00000000, x3, 20, x6)

# opcode: rem ; op1:x2; op2:x26; dest:x21; op1val:0xffffffbf;  op2val:0x7fffffff
TEST_RR_OP(rem, x21, x2, x26, 0x00000000, 0xffffffbf, 0x7fffffff, x3, 24, x6)

# opcode: rem ; op1:x27; op2:x0; dest:x8; op1val:0xfffffffb;  op2val:0x00000001
TEST_RR_OP(rem, x8, x27, x0, 0x00000000, 0xfffffffb, 0x00000001, x3, 28, x6)

# opcode: rem ; op1:x22; op2:x18; dest:x4; op1val:0x00000004;  op2val:0x00000004
TEST_RR_OP(rem, x4, x22, x18, 0x00000000, 0x00000004, 0x00000004, x3, 32, x6)

# opcode: rem ; op1:x11; op2:x9; dest:x27; op1val:0x00000002;  op2val:0x00020000
TEST_RR_OP(rem, x27, x11, x9, 0x00000000, 0x00000002, 0x00020000, x3, 36, x6)

# opcode: rem ; op1:x12; op2:x30; dest:x10; op1val:0x00000008;  op2val:0xfdffffff
TEST_RR_OP(rem, x10, x12, x30, 0x00000000, 0x00000008, 0xfdffffff, x3, 40, x6)

# opcode: rem ; op1:x17; op2:x21; dest:x12; op1val:0x00000010;  op2val:0x00000800
TEST_RR_OP(rem, x12, x17, x21, 0x00000000, 0x00000010, 0x00000800, x3, 44, x6)

# opcode: rem ; op1:x1; op2:x13; dest:x24; op1val:0x00000020;  op2val:0xffffefff
TEST_RR_OP(rem, x24, x1, x13, 0x00000000, 0x00000020, 0xffffefff, x3, 48, x6)

# opcode: rem ; op1:x24; op2:x8; dest:x19; op1val:0x00000040;  op2val:0xfffdffff
TEST_RR_OP(rem, x19, x24, x8, 0x00000000, 0x00000040, 0xfffdffff, x3, 52, x6)

# opcode: rem ; op1:x18; op2:x5; dest:x28; op1val:0x00000080;  op2val:0xfffff7ff
TEST_RR_OP(rem, x28, x18, x5, 0x00000000, 0x00000080, 0xfffff7ff, x3, 56, x6)
la x11,signature_x11_0

# opcode: rem ; op1:x0; op2:x4; dest:x18; op1val:0x00000100;  op2val:0x80000000
TEST_RR_OP(rem, x18, x0, x4, 0x00000000, 0x00000100, 0x80000000, x11, 0, x10)

# opcode: rem ; op1:x6; op2:x31; dest:x26; op1val:0x00000200;  op2val:0x00080000
TEST_RR_OP(rem, x26, x6, x31, 0x00000000, 0x00000200, 0x00080000, x11, 4, x10)

# opcode: rem ; op1:x9; op2:x23; dest:x17; op1val:0x00000400;  op2val:0x00020000
TEST_RR_OP(rem, x17, x9, x23, 0x00000000, 0x00000400, 0x00020000, x11, 8, x10)

# opcode: rem ; op1:x19; op2:x1; dest:x13; op1val:0x00000800;  op2val:0xefffffff
TEST_RR_OP(rem, x13, x19, x1, 0x00000000, 0x00000800, 0xefffffff, x11, 12, x10)

# opcode: rem ; op1:x4; op2:x12; dest:x20; op1val:0x00001000;  op2val:0xffffffbf
TEST_RR_OP(rem, x20, x4, x12, 0x00000000, 0x00001000, 0xffffffbf, x11, 16, x10)

# opcode: rem ; op1:x23; op2:x6; dest:x7; op1val:0x00002000;  op2val:0xffefffff
TEST_RR_OP(rem, x7, x23, x6, 0x00000000, 0x00002000, 0xffefffff, x11, 20, x10)

# opcode: rem ; op1:x3; op2:x24; dest:x30; op1val:0x00004000;  op2val:0xfffffff7
TEST_RR_OP(rem, x30, x3, x24, 0x00000000, 0x00004000, 0xfffffff7, x11, 24, x10)

# opcode: rem ; op1:x13; op2:x2; dest:x3; op1val:0x00008000;  op2val:0x00000009
TEST_RR_OP(rem, x3, x13, x2, 0x00000000, 0x00008000, 0x00000009, x11, 28, x10)

# opcode: rem ; op1:x20; op2:x16; dest:x6; op1val:0x00010000;  op2val:0x00000009
TEST_RR_OP(rem, x6, x20, x16, 0x00000000, 0x00010000, 0x00000009, x11, 32, x10)

# opcode: rem ; op1:x25; op2:x28; dest:x2; op1val:0x00020000;  op2val:0x00200000
TEST_RR_OP(rem, x2, x25, x28, 0x00000000, 0x00020000, 0x00200000, x11, 36, x10)

# opcode: rem ; op1:x28; op2:x3; dest:x5; op1val:0x00040000;  op2val:0xfffff7ff
TEST_RR_OP(rem, x5, x28, x3, 0x00000000, 0x00040000, 0xfffff7ff, x11, 40, x10)

# opcode: rem ; op1:x21; op2:x25; dest:x14; op1val:0x00080000;  op2val:0xfffffffe
TEST_RR_OP(rem, x14, x21, x25, 0x00000000, 0x00080000, 0xfffffffe, x11, 44, x10)

# opcode: rem ; op1:x8; op2:x19; dest:x15; op1val:0x00100000;  op2val:0x00000005
TEST_RR_OP(rem, x15, x8, x19, 0x00000000, 0x00100000, 0x00000005, x11, 48, x10)

# opcode: rem ; op1:x5; op2:x27; dest:x0; op1val:0x00200000;  op2val:0xffbfffff
TEST_RR_OP(rem, x0, x5, x27, 0x00000000, 0x00200000, 0xffbfffff, x11, 52, x10)

# opcode: rem ; op1:x16; op2:x10; dest:x9; op1val:0x00400000;  op2val:0xffffefff
TEST_RR_OP(rem, x9, x16, x10, 0x00000000, 0x00400000, 0xffffefff, x11, 56, x3)
la x2,signature_x2_0

# opcode: rem ; op1:x10; op2:x11; dest:x1; op1val:0x00800000;  op2val:0x55555555
TEST_RR_OP(rem, x1, x10, x11, 0x00000000, 0x00800000, 0x55555555, x2, 0, x3)

# opcode: rem ; op1:x14; op2:x15; dest:x16; op1val:0x01000000;  op2val:0xffdfffff
TEST_RR_OP(rem, x16, x14, x15, 0x00000000, 0x01000000, 0xffdfffff, x2, 4, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xc0000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x02000000, 0xc0000000, x2, 8, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000003
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x04000000, 0x00000003, x2, 12, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffffffc
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x08000000, 0xfffffffc, x2, 16, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x08000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x10000000, 0x08000000, x2, 20, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xfbffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x20000000, 0xfbffffff, x2, 24, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x04000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x40000000, 0x04000000, x2, 28, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffff7
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfffffff7, x2, 32, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xffdfffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffffd, 0xffdfffff, x2, 36, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00080000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffff7, 0x00080000, x2, 40, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xefffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffffef, 0xefffffff, x2, 44, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x08000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffffdf, 0x08000000, x2, 48, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xc0000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffff7f, 0xc0000000, x2, 52, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffffffd
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffeff, 0xfffffffd, x2, 56, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfffffff7
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffdff, 0xfffffff7, x2, 60, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfffffbff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffbff, 0xfffffbff, x2, 64, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfffbffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffbff, 0xfffbffff, x2, 68, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xfff7ffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000400, 0xfff7ffff, x2, 72, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x3fffffff;  op2val:0xff7fffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x3fffffff, 0xff7fffff, x2, 76, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0xfeffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000009, 0xfeffffff, x2, 80, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xf7ffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffdff, 0xf7ffffff, x2, 84, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0xdfffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffff8, 0xdfffffff, x2, 88, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xbfffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000000, 0xbfffffff, x2, 92, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xaaaaaaaa
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000400, 0xaaaaaaaa, x2, 96, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x08000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffff7ff, 0x08000000, x2, 100, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xefffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffefff, 0xefffffff, x2, 104, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xff7fffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffdfff, 0xff7fffff, x2, 108, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfdffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffbfff, 0xfdffffff, x2, 112, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xfffffff8
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffff7fff, 0xfffffff8, x2, 116, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00001000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffeffff, 0x00001000, x2, 120, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000800
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffdffff, 0x00000800, x2, 124, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x55555555
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffbffff, 0x55555555, x2, 128, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000006
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x00000006, x2, 132, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffeffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffefffff, 0xfffeffff, x2, 136, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xffffefff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffdfffff, 0xffffefff, x2, 140, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xffffffdf
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffbfffff, 0xffffffdf, x2, 144, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfffdffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xff7fffff, 0xfffdffff, x2, 148, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xfbffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfeffffff, 0xfbffffff, x2, 152, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000008
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfdffffff, 0x00000008, x2, 156, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffffffef
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfbffffff, 0xffffffef, x2, 160, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x55555555
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xf7ffffff, 0x55555555, x2, 164, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000005
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xefffffff, 0x00000005, x2, 168, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00008000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xdfffffff, 0x00008000, x2, 172, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfffffff6
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xbfffffff, 0xfffffff6, x2, 176, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffefffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x55555555, 0xffefffff, x2, 180, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x7fffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0x7fffffff, x2, 184, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000002
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0x00000002, x2, 188, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000010
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffffef, 0x00000010, x2, 192, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0x00000020
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000004, 0x00000020, x2, 196, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000040
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffbfffff, 0x00000040, x2, 200, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000080
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x08000000, 0x00000080, x2, 204, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000100
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x00000100, x2, 208, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x00000200
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00100000, 0x00000200, x2, 212, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000400
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffff7ff, 0x00000400, x2, 216, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x00002000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00080000, 0x00002000, x2, 220, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00004000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffff7ff, 0x00004000, x2, 224, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00010000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffff7, 0x00010000, x2, 228, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00040000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffbffff, 0x00040000, x2, 232, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00100000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffdffff, 0x00100000, x2, 236, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00800000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfdffffff, 0x00800000, x2, 240, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x01000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000002, 0x01000000, x2, 244, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x02000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffffdf, 0x02000000, x2, 248, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x10000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00004000, 0x10000000, x2, 252, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0x20000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000020, 0x20000000, x2, 256, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0x40000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffffc, 0x40000000, x2, 260, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0xfffffffb
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000100, 0xfffffffb, x2, 264, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0xffffff7f
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffffa, 0xffffff7f, x2, 268, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0xfffffeff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000100, 0xfffffeff, x2, 272, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xffffdfff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00200000, 0xffffdfff, x2, 276, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0xffffbfff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00002000, 0xffffbfff, x2, 280, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0xffff7fff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000004, 0xffff7fff, x2, 284, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xfffffdff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xffffffdf, 0xfffffdff, x2, 288, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xfffffffa
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x80000000, 0xfffffffa, x2, 292, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xefffffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000000, 0xefffffff, x2, 296, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00400000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x7fffffff, 0x00400000, x2, 300, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xfffffffa
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000001, 0xfffffffa, x2, 304, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000001
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0xfffffffb, 0x00000001, x2, 308, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0x80000000
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00000100, 0x80000000, x2, 312, x3)

# opcode: rem ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xffbfffff
TEST_RR_OP(rem, x12, x10, x11, 0x00000000, 0x00200000, 0xffbfffff, x2, 316, x3)
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
    .fill 0*(XLEN/32),4,0xafacadee


signature_x3_1:
    .fill 15*(XLEN/32),4,0xafacadee


signature_x11_0:
    .fill 15*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 80*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
