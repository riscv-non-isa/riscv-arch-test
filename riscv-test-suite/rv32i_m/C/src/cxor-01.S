
#This assembly file tests the c.xor instruction of the RISC-V C extension for the cxor covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cxor)

la x1,signature_x1_1

# opcode: c.xor; op1:x10; op2:x10; op1val:0x80000000; op2val:0x00000040
TEST_CR_OP( c.xor, x10, x10, 0x00000000, 0x80000000, 0x00000040, x1, 0, x2)

# opcode: c.xor; op1:x13; op2:x15; op1val:0xffefffff; op2val:0xfffffff9
TEST_CR_OP( c.xor, x13, x15, 0x00000000, 0xffefffff, 0xfffffff9, x1, 4, x2)

# opcode: c.xor; op1:x15; op2:x13; op1val:0x00000000; op2val:0xffffffbf
TEST_CR_OP( c.xor, x15, x13, 0x00000000, 0x00000000, 0xffffffbf, x1, 8, x2)

# opcode: c.xor; op1:x14; op2:x12; op1val:0x7fffffff; op2val:0x00000800
TEST_CR_OP( c.xor, x14, x12, 0x00000000, 0x7fffffff, 0x00000800, x1, 12, x2)

# opcode: c.xor; op1:x9; op2:x11; op1val:0x00000001; op2val:0xfffeffff
TEST_CR_OP( c.xor, x9, x11, 0x00000000, 0x00000001, 0xfffeffff, x1, 16, x2)

# opcode: c.xor; op1:x12; op2:x14; op1val:0x3fffffff; op2val:0x80000000
TEST_CR_OP( c.xor, x12, x14, 0x00000000, 0x3fffffff, 0x80000000, x1, 20, x2)

# opcode: c.xor; op1:x11; op2:x8; op1val:0x00000040; op2val:0x00000000
TEST_CR_OP( c.xor, x11, x8, 0x00000000, 0x00000040, 0x00000000, x1, 24, x2)

# opcode: c.xor; op1:x8; op2:x9; op1val:0xfffdffff; op2val:0x7fffffff
TEST_CR_OP( c.xor, x8, x9, 0x00000000, 0xfffdffff, 0x7fffffff, x1, 28, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xf7ffffff; op2val:0x00000001
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xf7ffffff, 0x00000001, x1, 32, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000002; op2val:0xf7ffffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000002, 0xf7ffffff, x1, 36, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000004; op2val:0xfff7ffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000004, 0xfff7ffff, x1, 40, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000008; op2val:0xfffeffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000008, 0xfffeffff, x1, 44, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000010; op2val:0xfffff7ff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000010, 0xfffff7ff, x1, 48, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000020; op2val:0x00000000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000020, 0x00000000, x1, 52, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000080; op2val:0x3fffffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000080, 0x3fffffff, x1, 56, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000100; op2val:0xffffffdf
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000100, 0xffffffdf, x1, 60, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000200; op2val:0x00000009
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000200, 0x00000009, x1, 64, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000400; op2val:0xffbfffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000400, 0xffbfffff, x1, 68, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000800; op2val:0x00400000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000800, 0x00400000, x1, 72, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00001000; op2val:0x00000002
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00001000, 0x00000002, x1, 76, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00002000; op2val:0xffdfffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00002000, 0xffdfffff, x1, 80, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00004000; op2val:0xbfffffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00004000, 0xbfffffff, x1, 84, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00008000; op2val:0x00040000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00008000, 0x00040000, x1, 88, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00010000; op2val:0x00008000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00010000, 0x00008000, x1, 92, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00020000; op2val:0x00001000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00020000, 0x00001000, x1, 96, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00040000; op2val:0x00000400
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00040000, 0x00000400, x1, 100, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00080000; op2val:0xbfffffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00080000, 0xbfffffff, x1, 104, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00100000; op2val:0xfbffffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00100000, 0xfbffffff, x1, 108, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00200000; op2val:0xfffff7ff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00200000, 0xfffff7ff, x1, 112, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00400000; op2val:0x55555555
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00400000, 0x55555555, x1, 116, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00800000; op2val:0x00000007
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00800000, 0x00000007, x1, 120, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x01000000; op2val:0x00800000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x01000000, 0x00800000, x1, 124, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x02000000; op2val:0x02000000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x02000000, 0x02000000, x1, 128, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x04000000; op2val:0x00400000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x04000000, 0x00400000, x1, 132, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x08000000; op2val:0xdfffffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x08000000, 0xdfffffff, x1, 136, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x10000000; op2val:0x00001000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x10000000, 0x00001000, x1, 140, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x20000000; op2val:0xfbffffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x20000000, 0xfbffffff, x1, 144, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x40000000; op2val:0x00000001
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x40000000, 0x00000001, x1, 148, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffe; op2val:0x00000080
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffffe, 0x00000080, x1, 152, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffd; op2val:0x00008000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffffd, 0x00008000, x1, 156, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffb; op2val:0xfffffff9
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffffb, 0xfffffff9, x1, 160, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffff7; op2val:0x00000040
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffff7, 0x00000040, x1, 164, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffef; op2val:0x00800000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffffffef, 0x00800000, x1, 168, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffdf; op2val:0xfffbffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffffffdf, 0xfffbffff, x1, 172, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x10000000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffffffbf, 0x10000000, x1, 176, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xff7fffff; op2val:0xff7fffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xff7fffff, 0xff7fffff, x1, 180, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00002000; op2val:0xfeffffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00002000, 0xfeffffff, x1, 184, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000002; op2val:0xfdffffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000002, 0xfdffffff, x1, 188, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000005; op2val:0xefffffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000005, 0xefffffff, x1, 192, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffff8; op2val:0xaaaaaaaa
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffff8, 0xaaaaaaaa, x1, 196, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffff7f; op2val:0x01000000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffffff7f, 0x01000000, x1, 200, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffeff; op2val:0x00000003
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffeff, 0x00000003, x1, 204, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffdff; op2val:0xffffff7f
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffdff, 0xffffff7f, x1, 208, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffbff; op2val:0x00000007
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffbff, 0x00000007, x1, 212, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x00000009
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffff7ff, 0x00000009, x1, 216, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffefff; op2val:0x08000000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffffefff, 0x08000000, x1, 220, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00000003
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffffdfff, 0x00000003, x1, 224, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffbfff; op2val:0xffffffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffffbfff, 0xffffffff, x1, 228, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffff7fff; op2val:0xfff7ffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffff7fff, 0xfff7ffff, x1, 232, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffeffff; op2val:0x00000002
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffeffff, 0x00000002, x1, 236, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffbffff; op2val:0x00000080
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffbffff, 0x00000080, x1, 240, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfff7ffff; op2val:0xffffbfff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfff7ffff, 0xffffbfff, x1, 244, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffdfffff; op2val:0x00000002
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffdfffff, 0x00000002, x1, 248, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffbfffff; op2val:0xffffffef
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffbfffff, 0xffffffef, x1, 252, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfeffffff; op2val:0x00000004
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfeffffff, 0x00000004, x1, 256, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfdffffff; op2val:0x00000040
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfdffffff, 0x00000040, x1, 260, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfbffffff; op2val:0x40000000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfbffffff, 0x40000000, x1, 264, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xefffffff; op2val:0x00000010
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xefffffff, 0x00000010, x1, 268, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xdfffffff; op2val:0x00000008
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xdfffffff, 0x00000008, x1, 272, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xbfffffff; op2val:0x00000006
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xbfffffff, 0x00000006, x1, 276, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x55555555; op2val:0xc0000000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x55555555, 0xc0000000, x1, 280, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xaaaaaaaa; op2val:0xfffffdff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xaaaaaaaa, 0xfffffdff, x1, 284, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000200; op2val:0x00000020
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000200, 0x00000020, x1, 288, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffbf; op2val:0x00000100
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffffffbf, 0x00000100, x1, 292, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00080000; op2val:0x00000200
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00080000, 0x00000200, x1, 296, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffff7ff; op2val:0x00002000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffff7ff, 0x00002000, x1, 300, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffdfff; op2val:0x00004000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffffdfff, 0x00004000, x1, 304, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000100; op2val:0x00010000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000100, 0x00010000, x1, 308, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffefffff; op2val:0x00020000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffefffff, 0x00020000, x1, 312, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000200; op2val:0x00080000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000200, 0x00080000, x1, 316, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffbff; op2val:0x04000000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffbff, 0x04000000, x1, 320, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000200; op2val:0x20000000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000200, 0x20000000, x1, 324, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffa; op2val:0xfffffffe
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffffa, 0xfffffffe, x1, 328, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffa; op2val:0xfffffffd
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffffa, 0xfffffffd, x1, 332, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x3fffffff; op2val:0xfffffffb
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x3fffffff, 0xfffffffb, x1, 336, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00040000; op2val:0xfffffff7
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00040000, 0xfffffff7, x1, 340, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffff7f; op2val:0xfffffeff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffffff7f, 0xfffffeff, x1, 344, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00040000; op2val:0xfffffbff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00040000, 0xfffffbff, x1, 348, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffbff; op2val:0xffffefff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffbff, 0xffffefff, x1, 352, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffef; op2val:0x00100000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xffffffef, 0x00100000, x1, 356, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffdff; op2val:0xffffdfff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffdff, 0xffffdfff, x1, 360, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfbffffff; op2val:0xffff7fff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfbffffff, 0xffff7fff, x1, 364, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000009; op2val:0xfffdffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000009, 0xfffdffff, x1, 368, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffc; op2val:0xffefffff
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0xfffffffc, 0xffefffff, x1, 372, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x00000007; op2val:0x00200000
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x00000007, 0x00200000, x1, 376, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x80000000; op2val:0x00000040
TEST_CR_OP( c.xor, x10, x11, 0x00000000, 0x80000000, 0x00000040, x1, 380, x2)
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
    .fill 96*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
