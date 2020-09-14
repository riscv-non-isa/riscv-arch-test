
#This assembly file tests the divu instruction of the RISC-V M extension for the divu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",divu)

la x4,signature_x4_1

# opcode: divu ; op1:x15; op2:x15; dest:x1; op1val:0x80000000;  op2val:0x00000007
TEST_RR_OP(divu, x1, x15, x15, 0x00000000, 0x80000000, 0x00000007, x4, 0, x14)

# opcode: divu ; op1:x17; op2:x29; dest:x17; op1val:0x00000000;  op2val:0x00800000
TEST_RR_OP(divu, x17, x17, x29, 0x00000000, 0x00000000, 0x00800000, x4, 4, x14)

# opcode: divu ; op1:x8; op2:x8; dest:x8; op1val:0x7fffffff;  op2val:0x08000000
TEST_RR_OP(divu, x8, x8, x8, 0x00000000, 0x7fffffff, 0x08000000, x4, 8, x14)

# opcode: divu ; op1:x20; op2:x16; dest:x23; op1val:0x00000001;  op2val:0x00400000
TEST_RR_OP(divu, x23, x20, x16, 0x00000000, 0x00000001, 0x00400000, x4, 12, x14)

# opcode: divu ; op1:x19; op2:x27; dest:x27; op1val:0xffbfffff;  op2val:0x80000000
TEST_RR_OP(divu, x27, x19, x27, 0x00000000, 0xffbfffff, 0x80000000, x4, 16, x14)

# opcode: divu ; op1:x27; op2:x28; dest:x3; op1val:0x00200000;  op2val:0x00000000
TEST_RR_OP(divu, x3, x27, x28, 0x00000000, 0x00200000, 0x00000000, x4, 20, x14)

# opcode: divu ; op1:x10; op2:x25; dest:x15; op1val:0x3fffffff;  op2val:0x7fffffff
TEST_RR_OP(divu, x15, x10, x25, 0x00000000, 0x3fffffff, 0x7fffffff, x4, 24, x14)

# opcode: divu ; op1:x3; op2:x31; dest:x26; op1val:0xfffbffff;  op2val:0x00000001
TEST_RR_OP(divu, x26, x3, x31, 0x00000000, 0xfffbffff, 0x00000001, x4, 28, x14)

# opcode: divu ; op1:x1; op2:x11; dest:x19; op1val:0x00000400;  op2val:0xfffffffc
TEST_RR_OP(divu, x19, x1, x11, 0x00000000, 0x00000400, 0xfffffffc, x4, 32, x14)

# opcode: divu ; op1:x2; op2:x13; dest:x28; op1val:0x00000010;  op2val:0x00000010
TEST_RR_OP(divu, x28, x2, x13, 0x00000000, 0x00000010, 0x00000010, x4, 36, x14)

# opcode: divu ; op1:x13; op2:x23; dest:x30; op1val:0x00000002;  op2val:0x00008000
TEST_RR_OP(divu, x30, x13, x23, 0x00000000, 0x00000002, 0x00008000, x4, 40, x14)

# opcode: divu ; op1:x23; op2:x6; dest:x25; op1val:0x00000004;  op2val:0xfffffff7
TEST_RR_OP(divu, x25, x23, x6, 0x00000000, 0x00000004, 0xfffffff7, x4, 44, x14)

# opcode: divu ; op1:x12; op2:x5; dest:x29; op1val:0x00000008;  op2val:0x00000007
TEST_RR_OP(divu, x29, x12, x5, 0x00000000, 0x00000008, 0x00000007, x4, 48, x14)

# opcode: divu ; op1:x16; op2:x20; dest:x7; op1val:0x00000020;  op2val:0xfffffffb
TEST_RR_OP(divu, x7, x16, x20, 0x00000000, 0x00000020, 0xfffffffb, x4, 52, x14)

# opcode: divu ; op1:x9; op2:x17; dest:x31; op1val:0x00000040;  op2val:0xbfffffff
TEST_RR_OP(divu, x31, x9, x17, 0x00000000, 0x00000040, 0xbfffffff, x4, 56, x14)

# opcode: divu ; op1:x28; op2:x26; dest:x2; op1val:0x00000080;  op2val:0x00800000
TEST_RR_OP(divu, x2, x28, x26, 0x00000000, 0x00000080, 0x00800000, x4, 60, x14)

# opcode: divu ; op1:x5; op2:x10; dest:x6; op1val:0x00000100;  op2val:0x20000000
TEST_RR_OP(divu, x6, x5, x10, 0x00000000, 0x00000100, 0x20000000, x4, 64, x14)

# opcode: divu ; op1:x11; op2:x18; dest:x22; op1val:0x00000200;  op2val:0xffefffff
TEST_RR_OP(divu, x22, x11, x18, 0x00000000, 0x00000200, 0xffefffff, x4, 68, x14)

# opcode: divu ; op1:x0; op2:x2; dest:x14; op1val:0x00000800;  op2val:0xefffffff
TEST_RR_OP(divu, x14, x0, x2, 0x00000000, 0x00000800, 0xefffffff, x4, 72, x8)
la x2,signature_x2_0

# opcode: divu ; op1:x25; op2:x19; dest:x18; op1val:0x00001000;  op2val:0xfeffffff
TEST_RR_OP(divu, x18, x25, x19, 0x00000000, 0x00001000, 0xfeffffff, x2, 0, x8)

# opcode: divu ; op1:x31; op2:x9; dest:x4; op1val:0x00002000;  op2val:0x80000000
TEST_RR_OP(divu, x4, x31, x9, 0x00000000, 0x00002000, 0x80000000, x2, 4, x8)

# opcode: divu ; op1:x4; op2:x1; dest:x12; op1val:0x00004000;  op2val:0xffffbfff
TEST_RR_OP(divu, x12, x4, x1, 0x00000000, 0x00004000, 0xffffbfff, x2, 8, x8)

# opcode: divu ; op1:x29; op2:x12; dest:x20; op1val:0x00008000;  op2val:0x00080000
TEST_RR_OP(divu, x20, x29, x12, 0x00000000, 0x00008000, 0x00080000, x2, 12, x8)

# opcode: divu ; op1:x21; op2:x4; dest:x0; op1val:0x00010000;  op2val:0xfeffffff
TEST_RR_OP(divu, x0, x21, x4, 0x00000000, 0x00010000, 0xfeffffff, x2, 16, x8)

# opcode: divu ; op1:x6; op2:x30; dest:x11; op1val:0x00020000;  op2val:0xfffdffff
TEST_RR_OP(divu, x11, x6, x30, 0x00000000, 0x00020000, 0xfffdffff, x2, 20, x8)

# opcode: divu ; op1:x30; op2:x14; dest:x24; op1val:0x00040000;  op2val:0x00000200
TEST_RR_OP(divu, x24, x30, x14, 0x00000000, 0x00040000, 0x00000200, x2, 24, x8)

# opcode: divu ; op1:x14; op2:x7; dest:x16; op1val:0x00080000;  op2val:0x00000005
TEST_RR_OP(divu, x16, x14, x7, 0x00000000, 0x00080000, 0x00000005, x2, 28, x8)

# opcode: divu ; op1:x26; op2:x24; dest:x21; op1val:0x00100000;  op2val:0xdfffffff
TEST_RR_OP(divu, x21, x26, x24, 0x00000000, 0x00100000, 0xdfffffff, x2, 32, x8)

# opcode: divu ; op1:x22; op2:x3; dest:x10; op1val:0x00400000;  op2val:0xffefffff
TEST_RR_OP(divu, x10, x22, x3, 0x00000000, 0x00400000, 0xffefffff, x2, 36, x8)

# opcode: divu ; op1:x18; op2:x22; dest:x9; op1val:0x00800000;  op2val:0x00000003
TEST_RR_OP(divu, x9, x18, x22, 0x00000000, 0x00800000, 0x00000003, x2, 40, x8)

# opcode: divu ; op1:x7; op2:x0; dest:x5; op1val:0x01000000;  op2val:0x3fffffff
TEST_RR_OP(divu, x5, x7, x0, 0x00000000, 0x01000000, 0x3fffffff, x2, 44, x8)

# opcode: divu ; op1:x24; op2:x21; dest:x13; op1val:0x02000000;  op2val:0xff7fffff
TEST_RR_OP(divu, x13, x24, x21, 0x00000000, 0x02000000, 0xff7fffff, x2, 48, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x40000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x04000000, 0x40000000, x2, 52, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffffff8
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x08000000, 0xfffffff8, x2, 56, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xfffffffc
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x10000000, 0xfffffffc, x2, 60, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xfff7ffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x20000000, 0xfff7ffff, x2, 64, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000200
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x40000000, 0x00000200, x2, 68, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000020
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffe, 0x00000020, x2, 72, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x20000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffd, 0x20000000, x2, 76, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000004
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffb, 0x00000004, x2, 80, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x3fffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffff7, 0x3fffffff, x2, 84, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xfffff7ff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffef, 0xfffff7ff, x2, 88, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xfffffff7
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffdf, 0xfffffff7, x2, 92, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000200
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffbf, 0x00000200, x2, 96, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x7fffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffff7f, 0x7fffffff, x2, 100, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffbffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffdfff, 0xfffbffff, x2, 104, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffdfffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x55555555, 0xffdfffff, x2, 108, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xffbfffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x7fffffff, 0xffbfffff, x2, 112, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xfdffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x55555555, 0xfdffffff, x2, 116, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0xfbffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000200, 0xfbffffff, x2, 120, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0xf7ffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000009, 0xf7ffffff, x2, 124, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x55555555
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffbffff, 0x55555555, x2, 128, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xaaaaaaaa
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xefffffff, 0xaaaaaaaa, x2, 132, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffffdff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffeff, 0xfffffdff, x2, 136, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfffffdff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffdff, 0xfffffdff, x2, 140, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00004000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffbff, 0x00004000, x2, 144, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000004
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffff7ff, 0x00000004, x2, 148, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffefff, 0xffffffff, x2, 152, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x10000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffbfff, 0x10000000, x2, 156, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x40000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffff7fff, 0x40000000, x2, 160, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xfffeffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffeffff, 0xfffeffff, x2, 164, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xffdfffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffdffff, 0xffdfffff, x2, 168, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfffffffd
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfff7ffff, 0xfffffffd, x2, 172, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x3fffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffefffff, 0x3fffffff, x2, 176, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x40000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffdfffff, 0x40000000, x2, 180, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00040000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xff7fffff, 0x00040000, x2, 184, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000007
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfeffffff, 0x00000007, x2, 188, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x04000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfdffffff, 0x04000000, x2, 192, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfbffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfbffffff, 0xfbffffff, x2, 196, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xff7fffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xf7ffffff, 0xff7fffff, x2, 200, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000001
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xdfffffff, 0x00000001, x2, 204, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00100000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xbfffffff, 0x00100000, x2, 208, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x01000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0x01000000, x2, 212, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000002
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffff7, 0x00000002, x2, 216, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000008
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffb, 0x00000008, x2, 220, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000040
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x7fffffff, 0x00000040, x2, 224, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000080
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000001, 0x00000080, x2, 228, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x00000100
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000005, 0x00000100, x2, 232, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000400
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffffb, 0x00000400, x2, 236, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x00000800
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000009, 0x00000800, x2, 240, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00001000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000008, 0x00001000, x2, 244, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0x00200000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000800, 0x00200000, x2, 248, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0x02000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00020000, 0x02000000, x2, 252, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xffffdfff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffffffdf, 0xffffdfff, x2, 256, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xfffffffe
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffff7fff, 0xfffffffe, x2, 260, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffffffef
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfbffffff, 0xffffffef, x2, 264, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xffffffdf
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x20000000, 0xffffffdf, x2, 268, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0xffffffbf
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000200, 0xffffffbf, x2, 272, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xffffff7f
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x10000000, 0xffffff7f, x2, 276, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0xfffffeff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00100000, 0xfffffeff, x2, 280, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfffffbff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfdffffff, 0xfffffbff, x2, 284, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xffffefff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffdfffff, 0xffffefff, x2, 288, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0x00002000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xfffffff8, 0x00002000, x2, 292, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xffff7fff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x01000000, 0xffff7fff, x2, 296, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00010000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffefffff, 0x00010000, x2, 300, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00020000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000400, 0x00020000, x2, 304, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000007
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x80000000, 0x00000007, x2, 308, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00800000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000000, 0x00800000, x2, 312, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x08000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x7fffffff, 0x08000000, x2, 316, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x80000000
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0xffbfffff, 0x80000000, x2, 320, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xefffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00000800, 0xefffffff, x2, 324, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0xfeffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x00010000, 0xfeffffff, x2, 328, x8)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x3fffffff
TEST_RR_OP(divu, x12, x10, x11, 0x00000000, 0x01000000, 0x3fffffff, x2, 332, x8)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x4_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 84*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
