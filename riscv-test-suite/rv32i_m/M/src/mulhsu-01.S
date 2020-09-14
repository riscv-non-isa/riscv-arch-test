
#This assembly file tests the mulhsu instruction of the RISC-V M extension for the mulhsu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mulhsu)

la x8,signature_x8_1

# opcode: mulhsu ; op1:x31; op2:x31; dest:x5; op1val:0x80000000;  op2val:0x00000003
TEST_RR_OP(mulhsu, x5, x31, x31, 0x00000000, 0x80000000, 0x00000003, x8, 0, x20)

# opcode: mulhsu ; op1:x19; op2:x29; dest:x19; op1val:0x00000000;  op2val:0x00001000
TEST_RR_OP(mulhsu, x19, x19, x29, 0x00000000, 0x00000000, 0x00001000, x8, 4, x20)

# opcode: mulhsu ; op1:x15; op2:x15; dest:x15; op1val:0x7fffffff;  op2val:0x00000010
TEST_RR_OP(mulhsu, x15, x15, x15, 0x00000000, 0x7fffffff, 0x00000010, x8, 8, x20)

# opcode: mulhsu ; op1:x18; op2:x26; dest:x6; op1val:0x00000001;  op2val:0x7fffffff
TEST_RR_OP(mulhsu, x6, x18, x26, 0x00000000, 0x00000001, 0x7fffffff, x8, 12, x20)

# opcode: mulhsu ; op1:x22; op2:x16; dest:x16; op1val:0xfffeffff;  op2val:0x80000000
TEST_RR_OP(mulhsu, x16, x22, x16, 0x00000000, 0xfffeffff, 0x80000000, x8, 16, x20)

# opcode: mulhsu ; op1:x21; op2:x22; dest:x0; op1val:0xfffffff9;  op2val:0x00000000
TEST_RR_OP(mulhsu, x0, x21, x22, 0x00000000, 0xfffffff9, 0x00000000, x8, 20, x20)

# opcode: mulhsu ; op1:x27; op2:x14; dest:x1; op1val:0xfffffffd;  op2val:0x00000001
TEST_RR_OP(mulhsu, x1, x27, x14, 0x00000000, 0xfffffffd, 0x00000001, x8, 24, x20)

# opcode: mulhsu ; op1:x2; op2:x6; dest:x22; op1val:0x01000000;  op2val:0xfffffff9
TEST_RR_OP(mulhsu, x22, x2, x6, 0x00000000, 0x01000000, 0xfffffff9, x8, 28, x20)

# opcode: mulhsu ; op1:x10; op2:x24; dest:x4; op1val:0x00400000;  op2val:0x00400000
TEST_RR_OP(mulhsu, x4, x10, x24, 0x00000000, 0x00400000, 0x00400000, x8, 32, x20)

# opcode: mulhsu ; op1:x23; op2:x13; dest:x21; op1val:0x00000002;  op2val:0x00000040
TEST_RR_OP(mulhsu, x21, x23, x13, 0x00000000, 0x00000002, 0x00000040, x8, 36, x20)

# opcode: mulhsu ; op1:x16; op2:x18; dest:x12; op1val:0x00000004;  op2val:0xffffffff
TEST_RR_OP(mulhsu, x12, x16, x18, 0x00000000, 0x00000004, 0xffffffff, x8, 40, x20)

# opcode: mulhsu ; op1:x28; op2:x0; dest:x31; op1val:0x00000008;  op2val:0xffffffdf
TEST_RR_OP(mulhsu, x31, x28, x0, 0x00000000, 0x00000008, 0xffffffdf, x8, 44, x20)

# opcode: mulhsu ; op1:x0; op2:x3; dest:x11; op1val:0x00000010;  op2val:0x00200000
TEST_RR_OP(mulhsu, x11, x0, x3, 0x00000000, 0x00000010, 0x00200000, x8, 48, x20)

# opcode: mulhsu ; op1:x6; op2:x5; dest:x30; op1val:0x00000020;  op2val:0xfeffffff
TEST_RR_OP(mulhsu, x30, x6, x5, 0x00000000, 0x00000020, 0xfeffffff, x8, 52, x20)

# opcode: mulhsu ; op1:x29; op2:x17; dest:x26; op1val:0x00000040;  op2val:0xfffffff9
TEST_RR_OP(mulhsu, x26, x29, x17, 0x00000000, 0x00000040, 0xfffffff9, x8, 56, x20)

# opcode: mulhsu ; op1:x25; op2:x9; dest:x7; op1val:0x00000080;  op2val:0xfffffffe
TEST_RR_OP(mulhsu, x7, x25, x9, 0x00000000, 0x00000080, 0xfffffffe, x8, 60, x20)
la x6,signature_x6_0

# opcode: mulhsu ; op1:x20; op2:x7; dest:x9; op1val:0x00000100;  op2val:0xefffffff
TEST_RR_OP(mulhsu, x9, x20, x7, 0x00000000, 0x00000100, 0xefffffff, x6, 0, x15)

# opcode: mulhsu ; op1:x13; op2:x25; dest:x14; op1val:0x00000200;  op2val:0xfdffffff
TEST_RR_OP(mulhsu, x14, x13, x25, 0x00000000, 0x00000200, 0xfdffffff, x6, 4, x15)

# opcode: mulhsu ; op1:x17; op2:x28; dest:x29; op1val:0x00000400;  op2val:0xfffffdff
TEST_RR_OP(mulhsu, x29, x17, x28, 0x00000000, 0x00000400, 0xfffffdff, x6, 8, x15)

# opcode: mulhsu ; op1:x11; op2:x20; dest:x24; op1val:0x00000800;  op2val:0xfffffffa
TEST_RR_OP(mulhsu, x24, x11, x20, 0x00000000, 0x00000800, 0xfffffffa, x6, 12, x15)

# opcode: mulhsu ; op1:x26; op2:x2; dest:x27; op1val:0x00001000;  op2val:0x00000004
TEST_RR_OP(mulhsu, x27, x26, x2, 0x00000000, 0x00001000, 0x00000004, x6, 16, x15)

# opcode: mulhsu ; op1:x9; op2:x11; dest:x25; op1val:0x00002000;  op2val:0x00001000
TEST_RR_OP(mulhsu, x25, x9, x11, 0x00000000, 0x00002000, 0x00001000, x6, 20, x15)

# opcode: mulhsu ; op1:x4; op2:x30; dest:x18; op1val:0x00004000;  op2val:0x10000000
TEST_RR_OP(mulhsu, x18, x4, x30, 0x00000000, 0x00004000, 0x10000000, x6, 24, x15)

# opcode: mulhsu ; op1:x5; op2:x21; dest:x17; op1val:0x00008000;  op2val:0x80000000
TEST_RR_OP(mulhsu, x17, x5, x21, 0x00000000, 0x00008000, 0x80000000, x6, 28, x15)

# opcode: mulhsu ; op1:x30; op2:x10; dest:x13; op1val:0x00010000;  op2val:0xfffffff7
TEST_RR_OP(mulhsu, x13, x30, x10, 0x00000000, 0x00010000, 0xfffffff7, x6, 32, x15)

# opcode: mulhsu ; op1:x3; op2:x23; dest:x28; op1val:0x00020000;  op2val:0xffffffff
TEST_RR_OP(mulhsu, x28, x3, x23, 0x00000000, 0x00020000, 0xffffffff, x6, 36, x15)

# opcode: mulhsu ; op1:x14; op2:x8; dest:x23; op1val:0x00040000;  op2val:0x00000010
TEST_RR_OP(mulhsu, x23, x14, x8, 0x00000000, 0x00040000, 0x00000010, x6, 40, x15)

# opcode: mulhsu ; op1:x12; op2:x1; dest:x20; op1val:0x00080000;  op2val:0x00100000
TEST_RR_OP(mulhsu, x20, x12, x1, 0x00000000, 0x00080000, 0x00100000, x6, 44, x15)

# opcode: mulhsu ; op1:x7; op2:x4; dest:x8; op1val:0x00100000;  op2val:0xffffffef
TEST_RR_OP(mulhsu, x8, x7, x4, 0x00000000, 0x00100000, 0xffffffef, x6, 48, x15)

# opcode: mulhsu ; op1:x1; op2:x12; dest:x2; op1val:0x00200000;  op2val:0x00200000
TEST_RR_OP(mulhsu, x2, x1, x12, 0x00000000, 0x00200000, 0x00200000, x6, 52, x15)

# opcode: mulhsu ; op1:x24; op2:x19; dest:x10; op1val:0x00800000;  op2val:0x00000080
TEST_RR_OP(mulhsu, x10, x24, x19, 0x00000000, 0x00800000, 0x00000080, x6, 56, x15)

# opcode: mulhsu ; op1:x8; op2:x27; dest:x3; op1val:0x02000000;  op2val:0xfffffffe
TEST_RR_OP(mulhsu, x3, x8, x27, 0x00000000, 0x02000000, 0xfffffffe, x6, 60, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00008000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x04000000, 0x00008000, x6, 64, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00400000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x08000000, 0x00400000, x6, 68, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000004
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x10000000, 0x00000004, x6, 72, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xfffeffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x20000000, 0xfffeffff, x6, 76, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfffffffc
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x40000000, 0xfffffffc, x6, 80, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00080000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffffe, 0x00080000, x6, 84, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfffbffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffffb, 0xfffbffff, x6, 88, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffffffe
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffff7, 0xfffffffe, x6, 92, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xfffffff9
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffffef, 0xfffffff9, x6, 96, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000010
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffffdf, 0x00000010, x6, 100, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000005
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffffbf, 0x00000005, x6, 104, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00001000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffff7f, 0x00001000, x6, 108, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffffffb
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffeff, 0xfffffffb, x6, 112, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00001000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffdff, 0x00001000, x6, 116, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfff7ffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffeff, 0xfff7ffff, x6, 120, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xffefffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffffd, 0xffefffff, x6, 124, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xffdfffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffffdf, 0xffdfffff, x6, 128, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xffbfffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffdfffff, 0xffbfffff, x6, 132, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0xff7fffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000010, 0xff7fffff, x6, 136, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfbffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xfbffffff, x6, 140, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xf7ffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffbff, 0xf7ffffff, x6, 144, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0xdfffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00080000, 0xdfffffff, x6, 148, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xbfffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x01000000, 0xbfffffff, x6, 152, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x55555555
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000009, 0x55555555, x6, 156, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0xaaaaaaaa
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000003, 0xaaaaaaaa, x6, 160, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00008000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffefff, 0x00008000, x6, 164, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffffffd
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffdfff, 0xfffffffd, x6, 168, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfffffff6
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffbfff, 0xfffffff6, x6, 172, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xfffbffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffff7fff, 0xfffbffff, x6, 176, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x04000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffdffff, 0x04000000, x6, 180, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfffffeff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffbffff, 0xfffffeff, x6, 184, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00001000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x00001000, x6, 188, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00080000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffefffff, 0x00080000, x6, 192, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xffffefff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffbfffff, 0xffffefff, x6, 196, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000003
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xff7fffff, 0x00000003, x6, 200, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xffffdfff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfeffffff, 0xffffdfff, x6, 204, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xffffdfff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfdffffff, 0xffffdfff, x6, 208, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffffffef
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfbffffff, 0xffffffef, x6, 212, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xf7ffffff, 0xffffffff, x6, 216, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000007
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xefffffff, 0x00000007, x6, 220, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfff7ffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xdfffffff, 0xfff7ffff, x6, 224, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000020
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xbfffffff, 0x00000020, x6, 228, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xc0000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x55555555, 0xc0000000, x6, 232, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xfffffffe
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0xfffffffe, x6, 236, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000002
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffdff, 0x00000002, x6, 240, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000008
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x80000000, 0x00000008, x6, 244, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000100
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x02000000, 0x00000100, x6, 248, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x3fffffff;  op2val:0x00000200
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x3fffffff, 0x00000200, x6, 252, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000400
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffffd, 0x00000400, x6, 256, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x00000800
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000002, 0x00000800, x6, 260, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0x00002000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000800, 0x00002000, x6, 264, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00004000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffffb, 0x00004000, x6, 268, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00010000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000200, 0x00010000, x6, 272, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00040000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffff7f, 0x00040000, x6, 276, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00800000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffbfffff, 0x00800000, x6, 280, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x01000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00010000, 0x01000000, x6, 284, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x02000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x01000000, 0x02000000, x6, 288, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0x08000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00020000, 0x08000000, x6, 292, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x20000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00080000, 0x20000000, x6, 296, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x40000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffff7f, 0x40000000, x6, 300, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xffffffbf
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x01000000, 0xffffffbf, x6, 304, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xfffdffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000400, 0xfffdffff, x6, 308, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xffffff7f
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00200000, 0xffffff7f, x6, 312, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfffffbff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xffffbfff, 0xfffffbff, x6, 316, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xfffff7ff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000005, 0xfffff7ff, x6, 320, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0xffffbfff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00010000, 0xffffbfff, x6, 324, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0xffff7fff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000003, 0xffff7fff, x6, 328, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00020000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00800000, 0x00020000, x6, 332, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000003
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x80000000, 0x00000003, x6, 336, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00001000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000000, 0x00001000, x6, 340, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000010
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x7fffffff, 0x00000010, x6, 344, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x80000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffeffff, 0x80000000, x6, 348, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0x00000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0xfffffff9, 0x00000000, x6, 352, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xffffffdf
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000008, 0xffffffdf, x6, 356, x15)

# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0x00200000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x00000000, 0x00000010, 0x00200000, x6, 360, x15)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x8_1:
    .fill 16*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 91*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
