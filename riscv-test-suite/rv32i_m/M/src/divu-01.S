
#This assembly file tests the divu instruction of the RISC-V M extension for the divu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",divu)

la x14,signature_x14_1

# opcode: divu ; op1:x5; op2:x5; dest:x9; op1val:0x80000000;  op2val:0xfffffff8
TEST_RR_OP(divu, x9, x5, x5, 0x00000000, 0x80000000, 0xfffffff8, x14, 0, x1)

# opcode: divu ; op1:x28; op2:x27; dest:x28; op1val:0x00000000;  op2val:0xc0000000
TEST_RR_OP(divu, x28, x28, x27, 0x00000000, 0x00000000, 0xc0000000, x14, 4, x1)

# opcode: divu ; op1:x20; op2:x4; dest:x4; op1val:0x7fffffff;  op2val:0x00000010
TEST_RR_OP(divu, x4, x20, x4, 0x00000000, 0x7fffffff, 0x00000010, x14, 8, x1)

# opcode: divu ; op1:x23; op2:x23; dest:x23; op1val:0x00000001;  op2val:0x00080000
TEST_RR_OP(divu, x23, x23, x23, 0x00000000, 0x00000001, 0x00080000, x14, 12, x1)

# opcode: divu ; op1:x2; op2:x22; dest:x12; op1val:0xfbffffff;  op2val:0x80000000
TEST_RR_OP(divu, x12, x2, x22, 0x00000000, 0xfbffffff, 0x80000000, x14, 16, x1)

# opcode: divu ; op1:x22; op2:x3; dest:x7; op1val:0xfffbffff;  op2val:0x00000000
TEST_RR_OP(divu, x7, x22, x3, 0x00000000, 0xfffbffff, 0x00000000, x14, 20, x1)

# opcode: divu ; op1:x15; op2:x17; dest:x31; op1val:0xfffffff8;  op2val:0x7fffffff
TEST_RR_OP(divu, x31, x15, x17, 0x00000000, 0xfffffff8, 0x7fffffff, x14, 24, x1)

# opcode: divu ; op1:x12; op2:x0; dest:x6; op1val:0x00000007;  op2val:0x00000001
TEST_RR_OP(divu, x6, x12, x0, 0x00000000, 0x00000007, 0x00000001, x14, 28, x1)

# opcode: divu ; op1:x4; op2:x28; dest:x21; op1val:0x40000000;  op2val:0xfeffffff
TEST_RR_OP(divu, x21, x4, x28, 0x00000000, 0x40000000, 0xfeffffff, x14, 32, x1)

# opcode: divu ; op1:x27; op2:x11; dest:x18; op1val:0xefffffff;  op2val:0xefffffff
TEST_RR_OP(divu, x18, x27, x11, 0x00000000, 0xefffffff, 0xefffffff, x14, 36, x1)

# opcode: divu ; op1:x8; op2:x16; dest:x10; op1val:0x00000002;  op2val:0x00008000
TEST_RR_OP(divu, x10, x8, x16, 0x00000000, 0x00000002, 0x00008000, x14, 40, x1)

# opcode: divu ; op1:x30; op2:x9; dest:x17; op1val:0x00000004;  op2val:0xfffffbff
TEST_RR_OP(divu, x17, x30, x9, 0x00000000, 0x00000004, 0xfffffbff, x14, 44, x1)

# opcode: divu ; op1:x9; op2:x30; dest:x16; op1val:0x00000008;  op2val:0x00000001
TEST_RR_OP(divu, x16, x9, x30, 0x00000000, 0x00000008, 0x00000001, x14, 48, x1)

# opcode: divu ; op1:x25; op2:x19; dest:x3; op1val:0x00000010;  op2val:0x00040000
TEST_RR_OP(divu, x3, x25, x19, 0x00000000, 0x00000010, 0x00040000, x14, 52, x1)

# opcode: divu ; op1:x17; op2:x12; dest:x22; op1val:0x00000020;  op2val:0xff7fffff
TEST_RR_OP(divu, x22, x17, x12, 0x00000000, 0x00000020, 0xff7fffff, x14, 56, x1)

# opcode: divu ; op1:x16; op2:x15; dest:x0; op1val:0x00000040;  op2val:0x00400000
TEST_RR_OP(divu, x0, x16, x15, 0x00000000, 0x00000040, 0x00400000, x14, 60, x1)

# opcode: divu ; op1:x0; op2:x13; dest:x8; op1val:0x00000080;  op2val:0x00100000
TEST_RR_OP(divu, x8, x0, x13, 0x00000000, 0x00000080, 0x00100000, x14, 64, x1)

# opcode: divu ; op1:x7; op2:x29; dest:x11; op1val:0x00000100;  op2val:0xaaaaaaaa
TEST_RR_OP(divu, x11, x7, x29, 0x00000000, 0x00000100, 0xaaaaaaaa, x14, 68, x1)

# opcode: divu ; op1:x21; op2:x10; dest:x1; op1val:0x00000200;  op2val:0xffff7fff
TEST_RR_OP(divu, x1, x21, x10, 0x00000000, 0x00000200, 0xffff7fff, x14, 72, x9)
la x4,signature_x4_0

# opcode: divu ; op1:x10; op2:x31; dest:x30; op1val:0x00000400;  op2val:0x00100000
TEST_RR_OP(divu, x30, x10, x31, 0x00000000, 0x00000400, 0x00100000, x4, 0, x9)

# opcode: divu ; op1:x29; op2:x6; dest:x26; op1val:0x00000800;  op2val:0xfdffffff
TEST_RR_OP(divu, x26, x29, x6, 0x00000000, 0x00000800, 0xfdffffff, x4, 4, x9)

# opcode: divu ; op1:x3; op2:x18; dest:x25; op1val:0x00001000;  op2val:0xffffff7f
TEST_RR_OP(divu, x25, x3, x18, 0x00000000, 0x00001000, 0xffffff7f, x4, 8, x9)

# opcode: divu ; op1:x11; op2:x21; dest:x27; op1val:0x00002000;  op2val:0xfffffff9
TEST_RR_OP(divu, x27, x11, x21, 0x00000000, 0x00002000, 0xfffffff9, x4, 12, x9)

# opcode: divu ; op1:x14; op2:x24; dest:x5; op1val:0x00004000;  op2val:0x00000002
TEST_RR_OP(divu, x5, x14, x24, 0x00000000, 0x00004000, 0x00000002, x4, 16, x9)

# opcode: divu ; op1:x26; op2:x8; dest:x14; op1val:0x00008000;  op2val:0x04000000
TEST_RR_OP(divu, x14, x26, x8, 0x00000000, 0x00008000, 0x04000000, x4, 20, x9)

# opcode: divu ; op1:x6; op2:x20; dest:x15; op1val:0x00010000;  op2val:0xf7ffffff
TEST_RR_OP(divu, x15, x6, x20, 0x00000000, 0x00010000, 0xf7ffffff, x4, 24, x9)

# opcode: divu ; op1:x13; op2:x2; dest:x19; op1val:0x00020000;  op2val:0xffffffff
TEST_RR_OP(divu, x19, x13, x2, 0x00000000, 0x00020000, 0xffffffff, x4, 28, x9)

# opcode: divu ; op1:x31; op2:x25; dest:x2; op1val:0x00040000;  op2val:0xfffffffd
TEST_RR_OP(divu, x2, x31, x25, 0x00000000, 0x00040000, 0xfffffffd, x4, 32, x9)

# opcode: divu ; op1:x19; op2:x14; dest:x20; op1val:0x00080000;  op2val:0x02000000
TEST_RR_OP(divu, x20, x19, x14, 0x00000000, 0x00080000, 0x02000000, x4, 36, x9)

# opcode: divu ; op1:x18; op2:x26; dest:x13; op1val:0x00100000;  op2val:0xffbfffff
TEST_RR_OP(divu, x13, x18, x26, 0x00000000, 0x00100000, 0xffbfffff, x4, 40, x9)

# opcode: divu ; op1:x1; op2:x7; dest:x24; op1val:0x00200000;  op2val:0x80000000
TEST_RR_OP(divu, x24, x1, x7, 0x00000000, 0x00200000, 0x80000000, x4, 44, x9)

# opcode: divu ; op1:x24; op2:x1; dest:x29; op1val:0x00400000;  op2val:0x00000001
TEST_RR_OP(divu, x29, x24, x1, 0x00000000, 0x00400000, 0x00000001, x4, 48, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000002
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00800000, 0x00000002, x4, 52, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000004
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x01000000, 0x00000004, x4, 56, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x10000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x02000000, 0x10000000, x4, 60, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x04000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x04000000, 0x04000000, x4, 64, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x10000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x08000000, 0x10000000, x4, 68, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x10000000, 0xffffffff, x4, 72, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xff7fffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x20000000, 0xff7fffff, x4, 76, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffffc
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfffffffc, x4, 80, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfdffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffd, 0xfdffffff, x4, 84, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfeffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffb, 0xfeffffff, x4, 88, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00100000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffff7, 0x00100000, x4, 92, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xffffffdf
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffef, 0xffffffdf, x4, 96, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xfffffbff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffdf, 0xfffffbff, x4, 100, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x10000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffbf, 0x10000000, x4, 104, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffbffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffeff, 0xfffbffff, x4, 108, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xfff7ffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000005, 0xfff7ffff, x4, 112, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0xffefffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00010000, 0xffefffff, x4, 116, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffdfffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x55555555, 0xffdfffff, x4, 120, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfbffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfff7ffff, 0xfbffffff, x4, 124, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0xdfffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000040, 0xdfffffff, x4, 128, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xbfffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffdfffff, 0xbfffffff, x4, 132, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x55555555
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x20000000, 0x55555555, x4, 136, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xffffffbf
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffff7f, 0xffffffbf, x4, 140, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffdff, 0xffffffff, x4, 144, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000007
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffbff, 0x00000007, x4, 148, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000080
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffff7ff, 0x00000080, x4, 152, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xffff7fff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffefff, 0xffff7fff, x4, 156, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00800000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffdfff, 0x00800000, x4, 160, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00100000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffbfff, 0x00100000, x4, 164, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xfffff7ff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffff7fff, 0xfffff7ff, x4, 168, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000400
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffeffff, 0x00000400, x4, 172, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000020
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffdffff, 0x00000020, x4, 176, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xffffffdf
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffefffff, 0xffffffdf, x4, 180, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000006
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffbfffff, 0x00000006, x4, 184, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfffffffd
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xff7fffff, 0xfffffffd, x4, 188, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00020000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfeffffff, 0x00020000, x4, 192, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfdffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfdffffff, 0xfdffffff, x4, 196, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00020000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xf7ffffff, 0x00020000, x4, 200, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000100
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xdfffffff, 0x00000100, x4, 204, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000002
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xbfffffff, 0x00000002, x4, 208, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xfffffffa
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0xfffffffa, x4, 212, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff6;  op2val:0x00000008
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffff6, 0x00000008, x4, 216, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000040
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x00000040, x4, 220, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000200
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffdfffff, 0x00000200, x4, 224, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000800
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffef, 0x00000800, x4, 228, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x3fffffff;  op2val:0x00001000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x3fffffff, 0x00001000, x4, 232, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00002000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x00002000, x4, 236, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00004000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x40000000, 0x00004000, x4, 240, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x00010000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00001000, 0x00010000, x4, 244, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00200000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffff, 0x00200000, x4, 248, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x01000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x80000000, 0x01000000, x4, 252, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x08000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x20000000, 0x08000000, x4, 256, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x20000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x04000000, 0x20000000, x4, 260, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x40000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000400, 0x40000000, x4, 264, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0xfffffffe
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00020000, 0xfffffffe, x4, 268, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xfffffffb
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfeffffff, 0xfffffffb, x4, 272, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffff7
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfffffff7, x4, 276, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xffffffef
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000005, 0xffffffef, x4, 280, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xfffffeff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000001, 0xfffffeff, x4, 284, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0xfffffdff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000004, 0xfffffdff, x4, 288, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0xffffefff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00800000, 0xffffefff, x4, 292, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0xffffdfff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffa, 0xffffdfff, x4, 296, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xffffbfff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000400, 0xffffbfff, x4, 300, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xfffeffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x20000000, 0xfffeffff, x4, 304, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfffdffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffd, 0xfffdffff, x4, 308, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xfffffff8
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x80000000, 0xfffffff8, x4, 312, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xc0000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000000, 0xc0000000, x4, 316, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000010
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x7fffffff, 0x00000010, x4, 320, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00080000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000001, 0x00080000, x4, 324, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0x00000001
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000007, 0x00000001, x4, 328, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0x00400000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000040, 0x00400000, x4, 332, x9)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0x00100000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000080, 0x00100000, x4, 336, x9)
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

signature_x14_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x14_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 85*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
