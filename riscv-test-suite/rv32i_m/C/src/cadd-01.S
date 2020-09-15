
#This assembly file tests the c.add instruction of the RISC-V C extension for the cadd covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cadd)

la x19,signature_x19_1

# opcode: c.add; op1:x3; op2:x3; op1val:0xffefffff; op2val:0x00100000
TEST_CR_OP( c.add, x3, x3, 0x00000000, 0xffefffff, 0x00100000, x19, 0, x21)

# opcode: c.add; op1:x5; op2:x22; op1val:0xffffffff; op2val:0xfeffffff
TEST_CR_OP( c.add, x5, x22, 0x00000000, 0xffffffff, 0xfeffffff, x19, 4, x21)

# opcode: c.add; op1:x8; op2:x1; op1val:0x80000000; op2val:0x00000004
TEST_CR_OP( c.add, x8, x1, 0x00000000, 0x80000000, 0x00000004, x19, 8, x21)

# opcode: c.add; op1:x10; op2:x12; op1val:0x00000000; op2val:0x08000000
TEST_CR_OP( c.add, x10, x12, 0x00000000, 0x00000000, 0x08000000, x19, 12, x21)

# opcode: c.add; op1:x7; op2:x24; op1val:0x7fffffff; op2val:0x00000001
TEST_CR_OP( c.add, x7, x24, 0x00000000, 0x7fffffff, 0x00000001, x19, 16, x21)

# opcode: c.add; op1:x14; op2:x26; op1val:0x00000001; op2val:0x3fffffff
TEST_CR_OP( c.add, x14, x26, 0x00000000, 0x00000001, 0x3fffffff, x19, 20, x21)

# opcode: c.add; op1:x18; op2:x2; op1val:0xfffffffe; op2val:0x80000000
TEST_CR_OP( c.add, x18, x2, 0x00000000, 0xfffffffe, 0x80000000, x19, 24, x21)

# opcode: c.add; op1:x17; op2:x11; op1val:0xffffffef; op2val:0x00000000
TEST_CR_OP( c.add, x17, x11, 0x00000000, 0xffffffef, 0x00000000, x19, 28, x21)

# opcode: c.add; op1:x16; op2:x28; op1val:0xfffffffb; op2val:0x7fffffff
TEST_CR_OP( c.add, x16, x28, 0x00000000, 0xfffffffb, 0x7fffffff, x19, 32, x21)

# opcode: c.add; op1:x30; op2:x4; op1val:0x00000002; op2val:0xffdfffff
TEST_CR_OP( c.add, x30, x4, 0x00000000, 0x00000002, 0xffdfffff, x19, 36, x21)

# opcode: c.add; op1:x12; op2:x17; op1val:0x00000004; op2val:0x00000200
TEST_CR_OP( c.add, x12, x17, 0x00000000, 0x00000004, 0x00000200, x19, 40, x21)

# opcode: c.add; op1:x13; op2:x6; op1val:0x00000008; op2val:0x00000008
TEST_CR_OP( c.add, x13, x6, 0x00000000, 0x00000008, 0x00000008, x19, 44, x21)

# opcode: c.add; op1:x25; op2:x30; op1val:0x00000010; op2val:0x00000200
TEST_CR_OP( c.add, x25, x30, 0x00000000, 0x00000010, 0x00000200, x19, 48, x21)

# opcode: c.add; op1:x20; op2:x14; op1val:0x00000020; op2val:0xffffffbf
TEST_CR_OP( c.add, x20, x14, 0x00000000, 0x00000020, 0xffffffbf, x19, 52, x21)

# opcode: c.add; op1:x29; op2:x15; op1val:0x00000040; op2val:0xfffffff6
TEST_CR_OP( c.add, x29, x15, 0x00000000, 0x00000040, 0xfffffff6, x19, 56, x21)

# opcode: c.add; op1:x24; op2:x10; op1val:0x00000080; op2val:0x08000000
TEST_CR_OP( c.add, x24, x10, 0x00000000, 0x00000080, 0x08000000, x19, 60, x21)

# opcode: c.add; op1:x11; op2:x16; op1val:0x00000100; op2val:0x20000000
TEST_CR_OP( c.add, x11, x16, 0x00000000, 0x00000100, 0x20000000, x19, 64, x21)

# opcode: c.add; op1:x4; op2:x23; op1val:0x00000200; op2val:0x00100000
TEST_CR_OP( c.add, x4, x23, 0x00000000, 0x00000200, 0x00100000, x19, 68, x21)

# opcode: c.add; op1:x9; op2:x18; op1val:0x00000400; op2val:0xffffefff
TEST_CR_OP( c.add, x9, x18, 0x00000000, 0x00000400, 0xffffefff, x19, 72, x21)

# opcode: c.add; op1:x6; op2:x9; op1val:0x00000800; op2val:0x00000000
TEST_CR_OP( c.add, x6, x9, 0x00000000, 0x00000800, 0x00000000, x19, 76, x4)

# opcode: c.add; op1:x15; op2:x20; op1val:0x00001000; op2val:0x20000000
TEST_CR_OP( c.add, x15, x20, 0x00000000, 0x00001000, 0x20000000, x19, 80, x4)

# opcode: c.add; op1:x27; op2:x21; op1val:0x00002000; op2val:0xffffefff
TEST_CR_OP( c.add, x27, x21, 0x00000000, 0x00002000, 0xffffefff, x19, 84, x4)
la x3,signature_x3_0

# opcode: c.add; op1:x26; op2:x19; op1val:0x00004000; op2val:0xfffffffe
TEST_CR_OP( c.add, x26, x19, 0x00000000, 0x00004000, 0xfffffffe, x3, 0, x4)

# opcode: c.add; op1:x2; op2:x29; op1val:0x00008000; op2val:0x00000010
TEST_CR_OP( c.add, x2, x29, 0x00000000, 0x00008000, 0x00000010, x3, 4, x4)

# opcode: c.add; op1:x31; op2:x27; op1val:0x00010000; op2val:0xfeffffff
TEST_CR_OP( c.add, x31, x27, 0x00000000, 0x00010000, 0xfeffffff, x3, 8, x4)

# opcode: c.add; op1:x0; op2:x25; op1val:0x00020000; op2val:0xfbffffff
TEST_CR_OP( c.add, x0, x25, 0x00000000, 0x00020000, 0xfbffffff, x3, 12, x4)

# opcode: c.add; op1:x28; op2:x5; op1val:0x00040000; op2val:0x00200000
TEST_CR_OP( c.add, x28, x5, 0x00000000, 0x00040000, 0x00200000, x3, 16, x4)

# opcode: c.add; op1:x21; op2:x13; op1val:0x00080000; op2val:0xffffff7f
TEST_CR_OP( c.add, x21, x13, 0x00000000, 0x00080000, 0xffffff7f, x3, 20, x4)

# opcode: c.add; op1:x19; op2:x8; op1val:0x00100000; op2val:0x00001000
TEST_CR_OP( c.add, x19, x8, 0x00000000, 0x00100000, 0x00001000, x3, 24, x4)

# opcode: c.add; op1:x1; op2:x31; op1val:0x00200000; op2val:0x00000003
TEST_CR_OP( c.add, x1, x31, 0x00000000, 0x00200000, 0x00000003, x3, 28, x4)

# opcode: c.add; op1:x23; op2:x7; op1val:0x00400000; op2val:0xffffbfff
TEST_CR_OP( c.add, x23, x7, 0x00000000, 0x00400000, 0xffffbfff, x3, 32, x4)

# opcode: c.add; op1:x22; op2:x7; op1val:0x00800000; op2val:0x00000005
TEST_CR_OP( c.add, x22, x7, 0x00000000, 0x00800000, 0x00000005, x3, 36, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x01000000; op2val:0xefffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x01000000, 0xefffffff, x3, 40, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x02000000; op2val:0xfffffff6
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x02000000, 0xfffffff6, x3, 44, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x04000000; op2val:0xfffffffb
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x04000000, 0xfffffffb, x3, 48, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x08000000; op2val:0x20000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x08000000, 0x20000000, x3, 52, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x10000000; op2val:0xffffffef
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x10000000, 0xffffffef, x3, 56, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x20000000; op2val:0xfffffffc
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x20000000, 0xfffffffc, x3, 60, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x40000000; op2val:0xfffffff8
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x40000000, 0xfffffff8, x3, 64, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffd; op2val:0xfffffffb
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffffd, 0xfffffffb, x3, 68, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x02000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffff7, 0x02000000, x3, 72, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffdf; op2val:0x40000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffffdf, 0x40000000, x3, 76, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x00000002
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffffbf, 0x00000002, x3, 80, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffffff7f; op2val:0xfffffff9
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffff7f, 0xfffffff9, x3, 84, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffeff; op2val:0xffffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffeff, 0xffffffff, x3, 88, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x55555555; op2val:0xffbfffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x55555555, 0xffbfffff, x3, 92, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00002000; op2val:0xff7fffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00002000, 0xff7fffff, x3, 96, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00000100; op2val:0xfdffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000100, 0xfdffffff, x3, 100, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffeffff; op2val:0xf7ffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffeffff, 0xf7ffffff, x3, 104, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffdffff; op2val:0xdfffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffdffff, 0xdfffffff, x3, 108, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00000080; op2val:0xbfffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000080, 0xbfffffff, x3, 112, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00100000; op2val:0x55555555
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00100000, 0x55555555, x3, 116, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xc0000000; op2val:0xaaaaaaaa
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xc0000000, 0xaaaaaaaa, x3, 120, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffdff; op2val:0xffffbfff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffdff, 0xffffbfff, x3, 124, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffbff; op2val:0xfffffffa
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffbff, 0xfffffffa, x3, 128, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0xffbfffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffff7ff, 0xffbfffff, x3, 132, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffffefff; op2val:0xffefffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffefff, 0xffefffff, x3, 136, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffffdfff; op2val:0xffffffbf
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffdfff, 0xffffffbf, x3, 140, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x40000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffbfff, 0x40000000, x3, 144, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xffffbfff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffff7fff, 0xffffbfff, x3, 148, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffbffff; op2val:0xfbffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffbffff, 0xfbffffff, x3, 152, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x00000200
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfff7ffff, 0x00000200, x3, 156, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffdfffff; op2val:0xfffffffb
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffdfffff, 0xfffffffb, x3, 160, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffbfffff; op2val:0x00020000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffbfffff, 0x00020000, x3, 164, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xff7fffff; op2val:0x20000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xff7fffff, 0x20000000, x3, 168, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfeffffff; op2val:0x00000010
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfeffffff, 0x00000010, x3, 172, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfdffffff; op2val:0xfffffffd
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfdffffff, 0xfffffffd, x3, 176, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfbffffff; op2val:0x00002000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfbffffff, 0x00002000, x3, 180, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0x00000005
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xf7ffffff, 0x00000005, x3, 184, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xefffffff; op2val:0xffbfffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xefffffff, 0xffbfffff, x3, 188, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x02000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xdfffffff, 0x02000000, x3, 192, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x00000400
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xbfffffff, 0x00000400, x3, 196, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0x00000008
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xaaaaaaaa, 0x00000008, x3, 200, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffff9; op2val:0x00000020
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffff9, 0x00000020, x3, 204, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffdffff; op2val:0x00000040
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffdffff, 0x00000040, x3, 208, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x00000080
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffffbf, 0x00000080, x3, 212, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x3fffffff; op2val:0x00000100
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x3fffffff, 0x00000100, x3, 216, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00000040; op2val:0x00000800
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000040, 0x00000800, x3, 220, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x00004000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffffbf, 0x00004000, x3, 224, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffa; op2val:0x00008000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffffa, 0x00008000, x3, 228, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffffc; op2val:0x00010000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffffc, 0x00010000, x3, 232, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x7fffffff; op2val:0x00040000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x7fffffff, 0x00040000, x3, 236, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00000400; op2val:0x00080000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000400, 0x00080000, x3, 240, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00000008; op2val:0x00400000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000008, 0x00400000, x3, 244, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0x00800000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfff7ffff, 0x00800000, x3, 248, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00800000; op2val:0x01000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00800000, 0x01000000, x3, 252, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffffbfff; op2val:0x04000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffffbfff, 0x04000000, x3, 256, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x55555555; op2val:0x10000000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x55555555, 0x10000000, x3, 260, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00000100; op2val:0xfffffff7
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000100, 0xfffffff7, x3, 264, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00010000; op2val:0xffffffdf
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00010000, 0xffffffdf, x3, 268, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00000400; op2val:0xfffffeff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000400, 0xfffffeff, x3, 272, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00000200; op2val:0xfffffdff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000200, 0xfffffdff, x3, 276, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x55555555; op2val:0xfffffbff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x55555555, 0xfffffbff, x3, 280, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xfffffeff; op2val:0xfffff7ff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xfffffeff, 0xfffff7ff, x3, 284, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00004000; op2val:0xffffdfff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00004000, 0xffffdfff, x3, 288, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00000100; op2val:0xffff7fff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00000100, 0xffff7fff, x3, 292, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x02000000; op2val:0xfffeffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x02000000, 0xfffeffff, x3, 296, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x20000000; op2val:0xfffdffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x20000000, 0xfffdffff, x3, 300, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00080000; op2val:0xfffbffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00080000, 0xfffbffff, x3, 304, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffefffff; op2val:0xfff7ffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffefffff, 0xfff7ffff, x3, 308, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0xffefffff; op2val:0x00100000
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0xffefffff, 0x00100000, x3, 312, x4)

# opcode: c.add; op1:x10; op2:x11; op1val:0x00020000; op2val:0xfbffffff
TEST_CR_OP( c.add, x10, x11, 0x00000000, 0x00020000, 0xfbffffff, x3, 316, x4)
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

signature_x19_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x19_1:
    .fill 22*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 80*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
