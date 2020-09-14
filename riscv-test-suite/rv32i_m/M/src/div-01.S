
#This assembly file tests the div instruction of the RISC-V M extension for the div covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",div)

la x5,signature_x5_1

# opcode: div ; op1:x31; op2:x31; dest:x11; op1val:0x80000000;  op2val:0x00000001
TEST_RR_OP(div, x11, x31, x31, 0x00000000, 0x80000000, 0x00000001, x5, 0, x10)

# opcode: div ; op1:x22; op2:x3; dest:x22; op1val:0x00000000;  op2val:0x00000200
TEST_RR_OP(div, x22, x22, x3, 0x00000000, 0x00000000, 0x00000200, x5, 4, x10)

# opcode: div ; op1:x28; op2:x28; dest:x28; op1val:0x7fffffff;  op2val:0x00080000
TEST_RR_OP(div, x28, x28, x28, 0x00000000, 0x7fffffff, 0x00080000, x5, 8, x10)

# opcode: div ; op1:x1; op2:x11; dest:x16; op1val:0x00000001;  op2val:0xfffffffe
TEST_RR_OP(div, x16, x1, x11, 0x00000000, 0x00000001, 0xfffffffe, x5, 12, x10)

# opcode: div ; op1:x21; op2:x25; dest:x25; op1val:0xfffdffff;  op2val:0x80000000
TEST_RR_OP(div, x25, x21, x25, 0x00000000, 0xfffdffff, 0x80000000, x5, 16, x10)

# opcode: div ; op1:x9; op2:x4; dest:x19; op1val:0x00002000;  op2val:0x00000000
TEST_RR_OP(div, x19, x9, x4, 0x00000000, 0x00002000, 0x00000000, x5, 20, x10)

# opcode: div ; op1:x0; op2:x13; dest:x18; op1val:0x00000000;  op2val:0x7fffffff
TEST_RR_OP(div, x18, x0, x13, 0x00000000, 0x00000000, 0x7fffffff, x5, 24, x10)

# opcode: div ; op1:x18; op2:x7; dest:x20; op1val:0x00000006;  op2val:0x00000006
TEST_RR_OP(div, x20, x18, x7, 0x00000000, 0x00000006, 0x00000006, x5, 28, x10)

# opcode: div ; op1:x20; op2:x17; dest:x0; op1val:0x00000002;  op2val:0xffbfffff
TEST_RR_OP(div, x0, x20, x17, 0x00000000, 0x00000002, 0xffbfffff, x5, 32, x10)

# opcode: div ; op1:x12; op2:x18; dest:x26; op1val:0x00000004;  op2val:0xffffffff
TEST_RR_OP(div, x26, x12, x18, 0x00000000, 0x00000004, 0xffffffff, x5, 36, x10)

# opcode: div ; op1:x19; op2:x30; dest:x6; op1val:0x00000008;  op2val:0x00000009
TEST_RR_OP(div, x6, x19, x30, 0x00000000, 0x00000008, 0x00000009, x5, 40, x10)

# opcode: div ; op1:x17; op2:x26; dest:x29; op1val:0x00000010;  op2val:0x01000000
TEST_RR_OP(div, x29, x17, x26, 0x00000000, 0x00000010, 0x01000000, x5, 44, x10)

# opcode: div ; op1:x16; op2:x29; dest:x2; op1val:0x00000020;  op2val:0x00000007
TEST_RR_OP(div, x2, x16, x29, 0x00000000, 0x00000020, 0x00000007, x5, 48, x10)

# opcode: div ; op1:x2; op2:x8; dest:x27; op1val:0x00000040;  op2val:0x00080000
TEST_RR_OP(div, x27, x2, x8, 0x00000000, 0x00000040, 0x00080000, x5, 52, x10)

# opcode: div ; op1:x29; op2:x14; dest:x15; op1val:0x00000080;  op2val:0xffefffff
TEST_RR_OP(div, x15, x29, x14, 0x00000000, 0x00000080, 0xffefffff, x5, 56, x10)

# opcode: div ; op1:x13; op2:x22; dest:x1; op1val:0x00000100;  op2val:0x7fffffff
TEST_RR_OP(div, x1, x13, x22, 0x00000000, 0x00000100, 0x7fffffff, x5, 60, x12)

# opcode: div ; op1:x11; op2:x9; dest:x23; op1val:0x00000200;  op2val:0x00000003
TEST_RR_OP(div, x23, x11, x9, 0x00000000, 0x00000200, 0x00000003, x5, 64, x12)
la x18,signature_x18_0

# opcode: div ; op1:x24; op2:x1; dest:x10; op1val:0x00000400;  op2val:0x00000007
TEST_RR_OP(div, x10, x24, x1, 0x00000000, 0x00000400, 0x00000007, x18, 0, x12)

# opcode: div ; op1:x4; op2:x6; dest:x21; op1val:0x00000800;  op2val:0xfffffeff
TEST_RR_OP(div, x21, x4, x6, 0x00000000, 0x00000800, 0xfffffeff, x18, 4, x12)

# opcode: div ; op1:x15; op2:x0; dest:x14; op1val:0x00001000;  op2val:0x00040000
TEST_RR_OP(div, x14, x15, x0, 0x00000000, 0x00001000, 0x00040000, x18, 8, x12)

# opcode: div ; op1:x25; op2:x23; dest:x8; op1val:0x00004000;  op2val:0x00000080
TEST_RR_OP(div, x8, x25, x23, 0x00000000, 0x00004000, 0x00000080, x18, 12, x12)

# opcode: div ; op1:x10; op2:x2; dest:x3; op1val:0x00008000;  op2val:0xffffbfff
TEST_RR_OP(div, x3, x10, x2, 0x00000000, 0x00008000, 0xffffbfff, x18, 16, x12)

# opcode: div ; op1:x3; op2:x5; dest:x9; op1val:0x00010000;  op2val:0xc0000000
TEST_RR_OP(div, x9, x3, x5, 0x00000000, 0x00010000, 0xc0000000, x18, 20, x12)

# opcode: div ; op1:x8; op2:x10; dest:x4; op1val:0x00020000;  op2val:0xfbffffff
TEST_RR_OP(div, x4, x8, x10, 0x00000000, 0x00020000, 0xfbffffff, x18, 24, x12)

# opcode: div ; op1:x30; op2:x27; dest:x31; op1val:0x00040000;  op2val:0xffff7fff
TEST_RR_OP(div, x31, x30, x27, 0x00000000, 0x00040000, 0xffff7fff, x18, 28, x12)

# opcode: div ; op1:x27; op2:x20; dest:x17; op1val:0x00080000;  op2val:0x00000007
TEST_RR_OP(div, x17, x27, x20, 0x00000000, 0x00080000, 0x00000007, x18, 32, x12)

# opcode: div ; op1:x26; op2:x19; dest:x13; op1val:0x00100000;  op2val:0x10000000
TEST_RR_OP(div, x13, x26, x19, 0x00000000, 0x00100000, 0x10000000, x18, 36, x12)

# opcode: div ; op1:x23; op2:x16; dest:x30; op1val:0x00200000;  op2val:0xc0000000
TEST_RR_OP(div, x30, x23, x16, 0x00000000, 0x00200000, 0xc0000000, x18, 40, x12)

# opcode: div ; op1:x6; op2:x15; dest:x5; op1val:0x00400000;  op2val:0x00000200
TEST_RR_OP(div, x5, x6, x15, 0x00000000, 0x00400000, 0x00000200, x18, 44, x12)

# opcode: div ; op1:x5; op2:x24; dest:x7; op1val:0x00800000;  op2val:0x00000003
TEST_RR_OP(div, x7, x5, x24, 0x00000000, 0x00800000, 0x00000003, x18, 48, x12)

# opcode: div ; op1:x14; op2:x21; dest:x24; op1val:0x01000000;  op2val:0xfff7ffff
TEST_RR_OP(div, x24, x14, x21, 0x00000000, 0x01000000, 0xfff7ffff, x18, 52, x1)

# opcode: div ; op1:x7; op2:x16; dest:x0; op1val:0x02000000;  op2val:0xffffffbf
TEST_RR_OP(div, x0, x7, x16, 0x00000000, 0x02000000, 0xffffffbf, x18, 56, x1)

# opcode: div ; op1:x3; op2:x12; dest:x27; op1val:0x04000000;  op2val:0x01000000
TEST_RR_OP(div, x27, x3, x12, 0x00000000, 0x04000000, 0x01000000, x18, 60, x1)

# opcode: div ; op1:x25; op2:x2; dest:x12; op1val:0x08000000;  op2val:0xfffdffff
TEST_RR_OP(div, x12, x25, x2, 0x00000000, 0x08000000, 0xfffdffff, x18, 64, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xffefffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x10000000, 0xffefffff, x18, 68, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x3fffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x20000000, 0x3fffffff, x18, 72, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000040
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x40000000, 0x00000040, x18, 76, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffff7
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfffffff7, x18, 80, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xffffdfff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffd, 0xffffdfff, x18, 84, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x02000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffb, 0x02000000, x18, 88, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffbffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffff7, 0xfffbffff, x18, 92, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000400
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffffef, 0x00000400, x18, 96, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000010
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffffdf, 0x00000010, x18, 100, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000080
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffffbf, 0x00000080, x18, 104, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00400000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffff7f, 0x00400000, x18, 108, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffffff6
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffeff, 0xfffffff6, x18, 112, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0xffdfffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffff8, 0xffdfffff, x18, 116, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xff7fffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xff7fffff, 0xff7fffff, x18, 120, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfeffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x40000000, 0xfeffffff, x18, 124, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfdffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfdffffff, x18, 128, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0xf7ffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00020000, 0xf7ffffff, x18, 132, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xefffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffefff, 0xefffffff, x18, 136, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xdfffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x20000000, 0xdfffffff, x18, 140, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0xbfffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00001000, 0xbfffffff, x18, 144, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x55555555
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfeffffff, 0x55555555, x18, 148, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xaaaaaaaa
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x04000000, 0xaaaaaaaa, x18, 152, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x20000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffdff, 0x20000000, x18, 156, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x01000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffbff, 0x01000000, x18, 160, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xffffffbf
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xffffffbf, x18, 164, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000400
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffdfff, 0x00000400, x18, 168, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfff7ffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffbfff, 0xfff7ffff, x18, 172, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xffffffef
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffff7fff, 0xffffffef, x18, 176, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xffefffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffeffff, 0xffefffff, x18, 180, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfffeffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffbffff, 0xfffeffff, x18, 184, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xffffefff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfff7ffff, 0xffffefff, x18, 188, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000007
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffefffff, 0x00000007, x18, 192, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffffeff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffdfffff, 0xfffffeff, x18, 196, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xefffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffbfffff, 0xefffffff, x18, 200, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xf7ffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfdffffff, 0xf7ffffff, x18, 204, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffffffbf
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfbffffff, 0xffffffbf, x18, 208, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xaaaaaaaa
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xf7ffffff, 0xaaaaaaaa, x18, 212, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x01000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xefffffff, 0x01000000, x18, 216, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x55555555
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xdfffffff, 0x55555555, x18, 220, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000004
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xbfffffff, 0x00000004, x18, 224, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00200000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x55555555, 0x00200000, x18, 228, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xbfffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0xbfffffff, x18, 232, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000002
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x10000000, 0x00000002, x18, 236, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000008
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffbff, 0x00000008, x18, 240, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00000020
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000400, 0x00000020, x18, 244, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0x00000100
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000040, 0x00000100, x18, 248, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000800
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffffbf, 0x00000800, x18, 252, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00001000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000400, 0x00001000, x18, 256, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00002000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffffb, 0x00002000, x18, 260, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00004000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x01000000, 0x00004000, x18, 264, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00100000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffffff, 0x00100000, x18, 268, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00800000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x7fffffff, 0x00800000, x18, 272, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x04000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffff7, 0x04000000, x18, 276, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0x08000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00008000, 0x08000000, x18, 280, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x40000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00200000, 0x40000000, x18, 284, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0xfffffffd
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000010, 0xfffffffd, x18, 288, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xfffffffb
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000800, 0xfffffffb, x18, 292, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xffffffdf
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xffffffdf, x18, 296, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0xffffff7f
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffff9, 0xffffff7f, x18, 300, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffffdff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffefff, 0xfffffdff, x18, 304, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xfffffbff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000006, 0xfffffbff, x18, 308, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0xfffff7ff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00400000, 0xfffff7ff, x18, 312, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00008000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000003, 0x00008000, x18, 316, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00010000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffffbff, 0x00010000, x18, 320, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00020000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xffffbfff, 0x00020000, x18, 324, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000001
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x80000000, 0x00000001, x18, 328, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00000200
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000000, 0x00000200, x18, 332, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00080000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x7fffffff, 0x00080000, x18, 336, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x80000000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0xfffdffff, 0x80000000, x18, 340, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x7fffffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000000, 0x7fffffff, x18, 344, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0xffbfffff
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00000002, 0xffbfffff, x18, 348, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x00040000
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x00001000, 0x00040000, x18, 352, x1)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xffffffbf
TEST_RR_OP(div, x12, x10, x11, 0x00000000, 0x02000000, 0xffffffbf, x18, 356, x1)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x5_1:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x18_0:
    .fill 90*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
