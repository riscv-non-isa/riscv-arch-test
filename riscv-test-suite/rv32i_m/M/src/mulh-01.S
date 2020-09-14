
#This assembly file tests the mulh instruction of the RISC-V M extension for the mulh covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mulh)

la x1,signature_x1_1

# opcode: mulh ; op1:x24; op2:x24; dest:x14; op1val:0x80000000;  op2val:0x00000040
TEST_RR_OP(mulh, x14, x24, x24, 0x00000000, 0x80000000, 0x00000040, x1, 0, x12)

# opcode: mulh ; op1:x22; op2:x27; dest:x22; op1val:0x00000000;  op2val:0x01000000
TEST_RR_OP(mulh, x22, x22, x27, 0x00000000, 0x00000000, 0x01000000, x1, 4, x12)

# opcode: mulh ; op1:x19; op2:x19; dest:x19; op1val:0x7fffffff;  op2val:0xfffffffe
TEST_RR_OP(mulh, x19, x19, x19, 0x00000000, 0x7fffffff, 0xfffffffe, x1, 8, x12)

# opcode: mulh ; op1:x27; op2:x10; dest:x9; op1val:0x00000001;  op2val:0x00020000
TEST_RR_OP(mulh, x9, x27, x10, 0x00000000, 0x00000001, 0x00020000, x1, 12, x12)

# opcode: mulh ; op1:x2; op2:x5; dest:x5; op1val:0x00000020;  op2val:0x80000000
TEST_RR_OP(mulh, x5, x2, x5, 0x00000000, 0x00000020, 0x80000000, x1, 16, x12)

# opcode: mulh ; op1:x5; op2:x13; dest:x30; op1val:0xffffffdf;  op2val:0x00000000
TEST_RR_OP(mulh, x30, x5, x13, 0x00000000, 0xffffffdf, 0x00000000, x1, 20, x12)

# opcode: mulh ; op1:x29; op2:x26; dest:x27; op1val:0x00080000;  op2val:0x7fffffff
TEST_RR_OP(mulh, x27, x29, x26, 0x00000000, 0x00080000, 0x7fffffff, x1, 24, x12)

# opcode: mulh ; op1:x6; op2:x17; dest:x25; op1val:0x00000100;  op2val:0x00000001
TEST_RR_OP(mulh, x25, x6, x17, 0x00000000, 0x00000100, 0x00000001, x1, 28, x12)

# opcode: mulh ; op1:x7; op2:x16; dest:x8; op1val:0xffffffbf;  op2val:0xffffffff
TEST_RR_OP(mulh, x8, x7, x16, 0x00000000, 0xffffffbf, 0xffffffff, x1, 32, x12)

# opcode: mulh ; op1:x4; op2:x31; dest:x16; op1val:0xffffffdf;  op2val:0xffffffdf
TEST_RR_OP(mulh, x16, x4, x31, 0x00000000, 0xffffffdf, 0xffffffdf, x1, 36, x12)

# opcode: mulh ; op1:x30; op2:x18; dest:x6; op1val:0x00000002;  op2val:0xc0000000
TEST_RR_OP(mulh, x6, x30, x18, 0x00000000, 0x00000002, 0xc0000000, x1, 40, x12)

# opcode: mulh ; op1:x15; op2:x0; dest:x24; op1val:0x00000004;  op2val:0xffffffbf
TEST_RR_OP(mulh, x24, x15, x0, 0x00000000, 0x00000004, 0xffffffbf, x1, 44, x12)

# opcode: mulh ; op1:x26; op2:x23; dest:x0; op1val:0x00000008;  op2val:0x00004000
TEST_RR_OP(mulh, x0, x26, x23, 0x00000000, 0x00000008, 0x00004000, x1, 48, x12)

# opcode: mulh ; op1:x3; op2:x29; dest:x23; op1val:0x00000010;  op2val:0x00000200
TEST_RR_OP(mulh, x23, x3, x29, 0x00000000, 0x00000010, 0x00000200, x1, 52, x12)

# opcode: mulh ; op1:x21; op2:x14; dest:x2; op1val:0x00000040;  op2val:0x00000004
TEST_RR_OP(mulh, x2, x21, x14, 0x00000000, 0x00000040, 0x00000004, x1, 56, x12)

# opcode: mulh ; op1:x11; op2:x4; dest:x10; op1val:0x00000080;  op2val:0x00000009
TEST_RR_OP(mulh, x10, x11, x4, 0x00000000, 0x00000080, 0x00000009, x1, 60, x12)

# opcode: mulh ; op1:x9; op2:x28; dest:x26; op1val:0x00000200;  op2val:0xffffdfff
TEST_RR_OP(mulh, x26, x9, x28, 0x00000000, 0x00000200, 0xffffdfff, x1, 64, x19)
la x5,signature_x5_0

# opcode: mulh ; op1:x8; op2:x7; dest:x28; op1val:0x00000400;  op2val:0xff7fffff
TEST_RR_OP(mulh, x28, x8, x7, 0x00000000, 0x00000400, 0xff7fffff, x5, 0, x19)

# opcode: mulh ; op1:x12; op2:x21; dest:x17; op1val:0x00000800;  op2val:0x00000080
TEST_RR_OP(mulh, x17, x12, x21, 0x00000000, 0x00000800, 0x00000080, x5, 4, x19)

# opcode: mulh ; op1:x16; op2:x8; dest:x7; op1val:0x00001000;  op2val:0xffffffdf
TEST_RR_OP(mulh, x7, x16, x8, 0x00000000, 0x00001000, 0xffffffdf, x5, 8, x19)

# opcode: mulh ; op1:x28; op2:x15; dest:x4; op1val:0x00002000;  op2val:0x00040000
TEST_RR_OP(mulh, x4, x28, x15, 0x00000000, 0x00002000, 0x00040000, x5, 12, x19)

# opcode: mulh ; op1:x17; op2:x3; dest:x15; op1val:0x00004000;  op2val:0xfffffff7
TEST_RR_OP(mulh, x15, x17, x3, 0x00000000, 0x00004000, 0xfffffff7, x5, 16, x19)

# opcode: mulh ; op1:x14; op2:x30; dest:x20; op1val:0x00008000;  op2val:0xefffffff
TEST_RR_OP(mulh, x20, x14, x30, 0x00000000, 0x00008000, 0xefffffff, x5, 20, x19)

# opcode: mulh ; op1:x25; op2:x1; dest:x18; op1val:0x00010000;  op2val:0x00008000
TEST_RR_OP(mulh, x18, x25, x1, 0x00000000, 0x00010000, 0x00008000, x5, 24, x19)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0xfffff7ff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00020000, 0xfffff7ff, x5, 28, x19)

# opcode: mulh ; op1:x20; op2:x25; dest:x21; op1val:0x00040000;  op2val:0x00000007
TEST_RR_OP(mulh, x21, x20, x25, 0x00000000, 0x00040000, 0x00000007, x5, 32, x19)

# opcode: mulh ; op1:x31; op2:x22; dest:x3; op1val:0x00100000;  op2val:0xfffff7ff
TEST_RR_OP(mulh, x3, x31, x22, 0x00000000, 0x00100000, 0xfffff7ff, x5, 36, x19)

# opcode: mulh ; op1:x13; op2:x2; dest:x29; op1val:0x00200000;  op2val:0xfffbffff
TEST_RR_OP(mulh, x29, x13, x2, 0x00000000, 0x00200000, 0xfffbffff, x5, 40, x19)

# opcode: mulh ; op1:x23; op2:x20; dest:x13; op1val:0x00400000;  op2val:0x08000000
TEST_RR_OP(mulh, x13, x23, x20, 0x00000000, 0x00400000, 0x08000000, x5, 44, x19)

# opcode: mulh ; op1:x0; op2:x6; dest:x31; op1val:0x00800000;  op2val:0xffffff7f
TEST_RR_OP(mulh, x31, x0, x6, 0x00000000, 0x00800000, 0xffffff7f, x5, 48, x19)

# opcode: mulh ; op1:x1; op2:x9; dest:x11; op1val:0x01000000;  op2val:0xffffffef
TEST_RR_OP(mulh, x11, x1, x9, 0x00000000, 0x01000000, 0xffffffef, x5, 52, x2)

# opcode: mulh ; op1:x18; op2:x12; dest:x1; op1val:0x02000000;  op2val:0xfffeffff
TEST_RR_OP(mulh, x1, x18, x12, 0x00000000, 0x02000000, 0xfffeffff, x5, 56, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xffdfffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x04000000, 0xffdfffff, x5, 60, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffffff8
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x08000000, 0xfffffff8, x5, 64, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000005
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x10000000, 0x00000005, x5, 68, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xffffefff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x20000000, 0xffffefff, x5, 72, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00080000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x40000000, 0x00080000, x5, 76, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfdffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfdffffff, x5, 80, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xffefffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffffd, 0xffefffff, x5, 84, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfffeffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffffb, 0xfffeffff, x5, 88, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000010
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffff7, 0x00000010, x5, 92, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0xfff7ffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000004, 0xfff7ffff, x5, 96, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xffbfffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffdff, 0xffbfffff, x5, 100, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xfeffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffbfffff, 0xfeffffff, x5, 104, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xfbffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000005, 0xfbffffff, x5, 108, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xf7ffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xff7fffff, 0xf7ffffff, x5, 112, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xdfffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffffc, 0xdfffffff, x5, 116, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xbfffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffbffff, 0xbfffffff, x5, 120, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x55555555
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffdfffff, 0x55555555, x5, 124, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xaaaaaaaa
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x40000000, 0xaaaaaaaa, x5, 128, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xffdfffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffffef, 0xffdfffff, x5, 132, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000005
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffff7f, 0x00000005, x5, 136, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00002000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffeff, 0x00002000, x5, 140, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000007
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffbff, 0x00000007, x5, 144, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00004000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffff7ff, 0x00004000, x5, 148, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xffdfffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffefff, 0xffdfffff, x5, 152, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000009
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffdfff, 0x00000009, x5, 156, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfffffffe
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffbfff, 0xfffffffe, x5, 160, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xffefffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffff7fff, 0xffefffff, x5, 164, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000100
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffeffff, 0x00000100, x5, 168, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xffff7fff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffdffff, 0xffff7fff, x5, 172, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xffdfffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfff7ffff, 0xffdfffff, x5, 176, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00020000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffefffff, 0x00020000, x5, 180, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00080000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfeffffff, 0x00080000, x5, 184, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00100000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfdffffff, 0x00100000, x5, 188, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfffffff8
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfbffffff, 0xfffffff8, x5, 192, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x04000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xf7ffffff, 0x04000000, x5, 196, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xffbfffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xefffffff, 0xffbfffff, x5, 200, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000001
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xdfffffff, 0x00000001, x5, 204, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x3fffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xbfffffff, 0x3fffffff, x5, 208, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000100
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x55555555, 0x00000100, x5, 212, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x04000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0x04000000, x5, 216, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000002
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xff7fffff, 0x00000002, x5, 220, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0x00000008
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000007, 0x00000008, x5, 224, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000020
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xff7fffff, 0x00000020, x5, 228, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000400
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffffef, 0x00000400, x5, 232, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x00000800
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00001000, 0x00000800, x5, 236, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0x00001000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000040, 0x00001000, x5, 240, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0x00200000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000040, 0x00200000, x5, 244, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00400000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000008, 0x00400000, x5, 248, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0x00800000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xc0000000, 0x00800000, x5, 252, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x02000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffefff, 0x02000000, x5, 256, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x10000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffdffff, 0x10000000, x5, 260, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x20000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffdffff, 0x20000000, x5, 264, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x40000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xffffffbf, 0x40000000, x5, 268, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xfffffffd
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00008000, 0xfffffffd, x5, 272, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfffffffb
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfbffffff, 0xfffffffb, x5, 276, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfffffeff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffbff, 0xfffffeff, x5, 280, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff6;  op2val:0xfffffdff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0xfffffff6, 0xfffffdff, x5, 284, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0xfffffbff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000007, 0xfffffbff, x5, 288, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xffffbfff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000005, 0xffffbfff, x5, 292, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00010000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x80000000, 0x00010000, x5, 296, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xfffdffff
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x55555555, 0xfffdffff, x5, 300, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000040
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x80000000, 0x00000040, x5, 304, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x01000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000000, 0x01000000, x5, 308, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xfffffffe
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x7fffffff, 0xfffffffe, x5, 312, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0x80000000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000020, 0x80000000, x5, 316, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0xffffffbf
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000004, 0xffffffbf, x5, 320, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00004000
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00000008, 0x00004000, x5, 324, x2)

# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0xffffff7f
TEST_RR_OP(mulh, x12, x10, x11, 0x00000000, 0x00800000, 0xffffff7f, x5, 328, x2)
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
    .fill 0*(XLEN/32),4,0xafacadee


signature_x1_1:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x5_0:
    .fill 83*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
