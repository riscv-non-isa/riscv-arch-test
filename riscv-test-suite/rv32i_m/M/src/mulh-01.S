
#This assembly file tests the mulh instruction of the RISC-V M extension for the mulh covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mulh)

la x6,signature_x6_1

# opcode: mulh ; op1:x2; op2:x2; dest:x30; op1val:0x80000000;  op2val:0x00010000
TEST_RR_OP(mulh, x30, x2, x2, 0x00000000, 0x80000000, 0x00010000, x6, 0, x9)

# opcode: mulh ; op1:x31; op2:x14; dest:x31; op1val:0x00000000;  op2val:0xffffbfff
TEST_RR_OP(mulh, x31, x31, x14, 0x00000000, 0x00000000, 0xffffbfff, x6, 4, x9)

# opcode: mulh ; op1:x7; op2:x0; dest:x0; op1val:0x7fffffff;  op2val:0xffffff7f
TEST_RR_OP(mulh, x0, x7, x0, 0x00000000, 0x7fffffff, 0xffffff7f, x6, 8, x9)

# opcode: mulh ; op1:x4; op2:x4; dest:x4; op1val:0x00000001;  op2val:0xffffffbf
TEST_RR_OP(mulh, x4, x4, x4, 0x00000000, 0x00000001, 0xffffffbf, x6, 12, x9)

# opcode: mulh ; op1:x0; op2:x15; dest:x21; op1val:0x00000008;  op2val:0x80000000
TEST_RR_OP(mulh, x21, x0, x15, 0x00000000, 0x00000008, 0x80000000, x6, 16, x9)

# opcode: mulh ; op1:x23; op2:x25; dest:x15; op1val:0x00080000;  op2val:0x00000000
TEST_RR_OP(mulh, x15, x23, x25, 0x00000000, 0x00080000, 0x00000000, x6, 20, x9)

# opcode: mulh ; op1:x15; op2:x18; dest:x26; op1val:0xfff7ffff;  op2val:0x7fffffff
TEST_RR_OP(mulh, x26, x15, x18, 0x00000000, 0xfff7ffff, 0x7fffffff, x6, 24, x9)

# opcode: mulh ; op1:x30; op2:x13; dest:x20; op1val:0x00800000;  op2val:0x00000001
TEST_RR_OP(mulh, x20, x30, x13, 0x00000000, 0x00800000, 0x00000001, x6, 28, x9)

# opcode: mulh ; op1:x12; op2:x11; dest:x16; op1val:0xfff7ffff;  op2val:0xfffffffb
TEST_RR_OP(mulh, x16, x12, x11, 0x00000000, 0xfff7ffff, 0xfffffffb, x6, 32, x9)

# opcode: mulh ; op1:x24; op2:x21; dest:x12; op1val:0x00001000;  op2val:0x00001000
TEST_RR_OP(mulh, x12, x24, x21, 0x00000000, 0x00001000, 0x00001000, x6, 36, x9)

# opcode: mulh ; op1:x13; op2:x24; dest:x7; op1val:0x00000002;  op2val:0x00000003
TEST_RR_OP(mulh, x7, x13, x24, 0x00000000, 0x00000002, 0x00000003, x6, 40, x9)

# opcode: mulh ; op1:x22; op2:x16; dest:x17; op1val:0x00000004;  op2val:0xfffffff6
TEST_RR_OP(mulh, x17, x22, x16, 0x00000000, 0x00000004, 0xfffffff6, x6, 44, x9)

# opcode: mulh ; op1:x21; op2:x28; dest:x1; op1val:0x00000010;  op2val:0xffffffef
TEST_RR_OP(mulh, x1, x21, x28, 0x00000000, 0x00000010, 0xffffffef, x6, 48, x9)

# opcode: mulh ; op1:x3; op2:x5; dest:x8; op1val:0x00000020;  op2val:0x00000200
TEST_RR_OP(mulh, x8, x3, x5, 0x00000000, 0x00000020, 0x00000200, x6, 52, x9)

# opcode: mulh ; op1:x19; op2:x7; dest:x25; op1val:0x00000040;  op2val:0x00000200
TEST_RR_OP(mulh, x25, x19, x7, 0x00000000, 0x00000040, 0x00000200, x6, 56, x9)

# opcode: mulh ; op1:x11; op2:x30; dest:x28; op1val:0x00000080;  op2val:0x00000040
TEST_RR_OP(mulh, x28, x11, x30, 0x00000000, 0x00000080, 0x00000040, x6, 60, x9)

# opcode: mulh ; op1:x29; op2:x8; dest:x11; op1val:0x00000100;  op2val:0x04000000
TEST_RR_OP(mulh, x11, x29, x8, 0x00000000, 0x00000100, 0x04000000, x6, 64, x9)

# opcode: mulh ; op1:x26; op2:x31; dest:x5; op1val:0x00000200;  op2val:0xfffeffff
TEST_RR_OP(mulh, x5, x26, x31, 0x00000000, 0x00000200, 0xfffeffff, x6, 68, x7)

# opcode: mulh ; op1:x9; op2:x1; dest:x27; op1val:0x00000400;  op2val:0x00000000
TEST_RR_OP(mulh, x27, x9, x1, 0x00000000, 0x00000400, 0x00000000, x6, 72, x7)
la x4,signature_x4_0

# opcode: mulh ; op1:x10; op2:x27; dest:x9; op1val:0x00000800;  op2val:0x00800000
TEST_RR_OP(mulh, x9, x10, x27, 0x00000000, 0x00000800, 0x00800000, x4, 0, x7)

# opcode: mulh ; op1:x6; op2:x29; dest:x3; op1val:0x00002000;  op2val:0x00400000
TEST_RR_OP(mulh, x3, x6, x29, 0x00000000, 0x00002000, 0x00400000, x4, 4, x7)

# opcode: mulh ; op1:x28; op2:x6; dest:x29; op1val:0x00004000;  op2val:0x00000001
TEST_RR_OP(mulh, x29, x28, x6, 0x00000000, 0x00004000, 0x00000001, x4, 8, x7)

# opcode: mulh ; op1:x14; op2:x3; dest:x18; op1val:0x00008000;  op2val:0xfdffffff
TEST_RR_OP(mulh, x18, x14, x3, 0x00000000, 0x00008000, 0xfdffffff, x4, 12, x7)

# opcode: mulh ; op1:x5; op2:x26; dest:x10; op1val:0x00010000;  op2val:0x00000008
TEST_RR_OP(mulh, x10, x5, x26, 0x00000000, 0x00010000, 0x00000008, x4, 16, x7)

# opcode: mulh ; op1:x16; op2:x23; dest:x13; op1val:0x00020000;  op2val:0x00000010
TEST_RR_OP(mulh, x13, x16, x23, 0x00000000, 0x00020000, 0x00000010, x4, 20, x7)

# opcode: mulh ; op1:x18; op2:x22; dest:x24; op1val:0x00040000;  op2val:0xfffffffb
TEST_RR_OP(mulh, x24, x18, x22, 0x00000000, 0x00040000, 0xfffffffb, x4, 24, x7)

# opcode: mulh ; op1:x20; op2:x10; dest:x6; op1val:0x00100000;  op2val:0xffbfffff
TEST_RR_OP(mulh, x6, x20, x10, 0x00000000, 0x00100000, 0xffbfffff, x4, 28, x7)

# opcode: mulh ; op1:x27; op2:x12; dest:x14; op1val:0x00200000;  op2val:0xfffffffa
TEST_RR_OP(mulh, x14, x27, x12, 0x00000000, 0x00200000, 0xfffffffa, x4, 32, x7)

# opcode: mulh ; op1:x17; op2:x19; dest:x2; op1val:0x00400000;  op2val:0x00000000
TEST_RR_OP(mulh, x2, x17, x19, 0x00000000, 0x00400000, 0x00000000, x4, 36, x7)

# opcode: mulh ; op1:x8; op2:x17; dest:x19; op1val:0x01000000;  op2val:0x00000040
TEST_RR_OP(mulh, x19, x8, x17, 0x00000000, 0x01000000, 0x00000040, x4, 40, x7)

# opcode: mulh ; op1:x25; op2:x20; dest:x22; op1val:0x02000000;  op2val:0x40000000
TEST_RR_OP(mulh, x22, x25, x20, 0x00000000, 0x02000000, 0x40000000, x4, 44, x7)

# opcode: mulh ; op1:x1; op2:x9; dest:x23; op1val:0x04000000;  op2val:0xfffbffff
TEST_RR_OP(mulh, x23, x1, x9, 0x00000000, 0x04000000, 0xfffbffff, x4, 48, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xffff7fff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x08000000, 0xffff7fff, x4, 52, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xfeffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x10000000, 0xfeffffff, x4, 56, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xfdffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x20000000, 0xfdffffff, x4, 60, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfffffff6
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x40000000, 0xfffffff6, x4, 64, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffbff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfffffbff, x4, 68, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x80000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffffd, 0x80000000, x4, 72, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000200
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffffb, 0x00000200, x4, 76, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00004000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffff7, 0x00004000, x4, 80, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00010000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffffef, 0x00010000, x4, 84, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xfffffff6
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffffdf, 0xfffffff6, x4, 88, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xffffffdf
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffffbf, 0xffffffdf, x4, 92, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xffefffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffff7f, 0xffefffff, x4, 96, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xfff7ffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000400, 0xfff7ffff, x4, 100, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xffdfffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffbff, 0xffdfffff, x4, 104, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xff7fffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffffd, 0xff7fffff, x4, 108, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xfbffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x10000000, 0xfbffffff, x4, 112, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0xf7ffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffffa, 0xf7ffffff, x4, 116, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xefffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xbfffffff, 0xefffffff, x4, 120, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0xdfffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000002, 0xdfffffff, x4, 124, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xbfffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x10000000, 0xbfffffff, x4, 128, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x55555555
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffeffff, 0x55555555, x4, 132, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xaaaaaaaa
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffff7f, 0xaaaaaaaa, x4, 136, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xffefffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffeff, 0xffefffff, x4, 140, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xf7ffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffdff, 0xf7ffffff, x4, 144, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffffffa
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xfffffffa, x4, 148, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xffffffdf
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffefff, 0xffffffdf, x4, 152, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffbffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffdfff, 0xfffbffff, x4, 156, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000080
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffbfff, 0x00000080, x4, 160, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xfffffeff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffff7fff, 0xfffffeff, x4, 164, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x10000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffdffff, 0x10000000, x4, 168, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000008
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffbffff, 0x00000008, x4, 172, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000003
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffefffff, 0x00000003, x4, 176, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffffffe
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffdfffff, 0xfffffffe, x4, 180, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000040
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffbfffff, 0x00000040, x4, 184, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xffffffef
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xff7fffff, 0xffffffef, x4, 188, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xfdffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfeffffff, 0xfdffffff, x4, 192, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x40000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfdffffff, 0x40000000, x4, 196, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfffffff7
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfbffffff, 0xfffffff7, x4, 200, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xfbffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xf7ffffff, 0xfbffffff, x4, 204, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000009
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xefffffff, 0x00000009, x4, 208, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xffffbfff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xdfffffff, 0xffffbfff, x4, 212, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000007
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x55555555, 0x00000007, x4, 216, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00004000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0x00004000, x4, 220, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000002
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffefffff, 0x00000002, x4, 224, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000004
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x02000000, 0x00000004, x4, 228, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000020
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000001, 0x00000020, x4, 232, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0x00000100
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffffa, 0x00000100, x4, 236, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0x00000400
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000006, 0x00000400, x4, 240, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00000800
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffffff, 0x00000800, x4, 244, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00002000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffffdf, 0x00002000, x4, 248, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00008000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffefffff, 0x00008000, x4, 252, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00040000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xefffffff, 0x00040000, x4, 256, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00080000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffbff, 0x00080000, x4, 260, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x00100000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00004000, 0x00100000, x4, 264, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0x00200000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000004, 0x00200000, x4, 268, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x01000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000009, 0x01000000, x4, 272, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x02000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x55555555, 0x02000000, x4, 276, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x08000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffdfff, 0x08000000, x4, 280, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x20000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffff7f, 0x20000000, x4, 284, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xfffffdff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffffef, 0xfffffdff, x4, 288, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffff7ff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x08000000, 0xfffff7ff, x4, 292, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xffffefff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000006, 0xffffefff, x4, 296, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xffffdfff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffdfffff, 0xffffdfff, x4, 300, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffdffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffeff, 0xfffdffff, x4, 304, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffffffd
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffefffff, 0xfffffffd, x4, 308, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00020000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x55555555, 0x00020000, x4, 312, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00010000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x80000000, 0x00010000, x4, 316, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xffffbfff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000000, 0xffffbfff, x4, 320, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xffffff7f
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x7fffffff, 0xffffff7f, x4, 324, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xffffffbf
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000001, 0xffffffbf, x4, 328, x7)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x80000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000008, 0x80000000, x4, 332, x7)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x6_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 84*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
