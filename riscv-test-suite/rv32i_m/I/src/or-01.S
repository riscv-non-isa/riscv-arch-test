
#This assembly file tests the or instruction of the RISC-V I extension for the or covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",or)

la x15,signature_x15_1

# opcode: or ; op1:x4; op2:x2; dest:x4; op1val:0x80000000;  op2val:0xffffdfff
TEST_RR_OP(or, x4, x4, x2, 0xffffdfff, 0x80000000, 0xffffdfff, x15, 0, x21)

# opcode: or ; op1:x5; op2:x5; dest:x0; op1val:0x00000000;  op2val:0xfffdffff
TEST_RR_OP(or, x0, x5, x5, 0xfffdffff, 0x00000000, 0xfffdffff, x15, 4, x21)

# opcode: or ; op1:x23; op2:x16; dest:x18; op1val:0x7fffffff;  op2val:0x00000007
TEST_RR_OP(or, x18, x23, x16, 0x7fffffff, 0x7fffffff, 0x00000007, x15, 8, x21)

# opcode: or ; op1:x13; op2:x13; dest:x13; op1val:0x00000001;  op2val:0xfffffbff
TEST_RR_OP(or, x13, x13, x13, 0xfffffbff, 0x00000001, 0xfffffbff, x15, 12, x21)

# opcode: or ; op1:x3; op2:x8; dest:x8; op1val:0xfffffdff;  op2val:0x80000000
TEST_RR_OP(or, x8, x3, x8, 0xfffffdff, 0xfffffdff, 0x80000000, x15, 16, x21)

# opcode: or ; op1:x16; op2:x4; dest:x25; op1val:0xffffefff;  op2val:0x00000000
TEST_RR_OP(or, x25, x16, x4, 0xffffefff, 0xffffefff, 0x00000000, x15, 20, x21)

# opcode: or ; op1:x27; op2:x0; dest:x26; op1val:0xffffffdf;  op2val:0x7fffffff
TEST_RR_OP(or, x26, x27, x0, 0xffffffff, 0xffffffdf, 0x7fffffff, x15, 24, x21)

# opcode: or ; op1:x22; op2:x31; dest:x10; op1val:0x20000000;  op2val:0x00000001
TEST_RR_OP(or, x10, x22, x31, 0x20000001, 0x20000000, 0x00000001, x15, 28, x21)

# opcode: or ; op1:x8; op2:x11; dest:x6; op1val:0x00000004;  op2val:0x00000004
TEST_RR_OP(or, x6, x8, x11, 0x4, 0x00000004, 0x00000004, x15, 32, x21)

# opcode: or ; op1:x26; op2:x17; dest:x2; op1val:0x00000002;  op2val:0xfffffff6
TEST_RR_OP(or, x2, x26, x17, 0xfffffff6, 0x00000002, 0xfffffff6, x15, 36, x21)

# opcode: or ; op1:x12; op2:x14; dest:x22; op1val:0x00000008;  op2val:0xfffffff7
TEST_RR_OP(or, x22, x12, x14, 0xffffffff, 0x00000008, 0xfffffff7, x15, 40, x21)

# opcode: or ; op1:x25; op2:x9; dest:x19; op1val:0x00000010;  op2val:0x00000100
TEST_RR_OP(or, x19, x25, x9, 0x110, 0x00000010, 0x00000100, x15, 44, x21)

# opcode: or ; op1:x31; op2:x12; dest:x30; op1val:0x00000020;  op2val:0xfffffbff
TEST_RR_OP(or, x30, x31, x12, 0xfffffbff, 0x00000020, 0xfffffbff, x15, 48, x21)

# opcode: or ; op1:x19; op2:x23; dest:x9; op1val:0x00000040;  op2val:0xfffffffc
TEST_RR_OP(or, x9, x19, x23, 0xfffffffc, 0x00000040, 0xfffffffc, x15, 52, x21)

# opcode: or ; op1:x29; op2:x22; dest:x5; op1val:0x00000080;  op2val:0xffffffef
TEST_RR_OP(or, x5, x29, x22, 0xffffffef, 0x00000080, 0xffffffef, x15, 56, x21)

# opcode: or ; op1:x20; op2:x28; dest:x14; op1val:0x00000100;  op2val:0x00000008
TEST_RR_OP(or, x14, x20, x28, 0x108, 0x00000100, 0x00000008, x15, 60, x21)

# opcode: or ; op1:x14; op2:x1; dest:x7; op1val:0x00000200;  op2val:0x00008000
TEST_RR_OP(or, x7, x14, x1, 0x8200, 0x00000200, 0x00008000, x15, 64, x21)
la x4,signature_x4_0

# opcode: or ; op1:x18; op2:x25; dest:x23; op1val:0x00000400;  op2val:0x00000006
TEST_RR_OP(or, x23, x18, x25, 0x406, 0x00000400, 0x00000006, x4, 0, x5)

# opcode: or ; op1:x21; op2:x29; dest:x28; op1val:0x00000800;  op2val:0xdfffffff
TEST_RR_OP(or, x28, x21, x29, 0xdfffffff, 0x00000800, 0xdfffffff, x4, 4, x5)

# opcode: or ; op1:x2; op2:x6; dest:x31; op1val:0x00001000;  op2val:0xffffffef
TEST_RR_OP(or, x31, x2, x6, 0xffffffef, 0x00001000, 0xffffffef, x4, 8, x5)

# opcode: or ; op1:x24; op2:x21; dest:x11; op1val:0x00002000;  op2val:0x00000003
TEST_RR_OP(or, x11, x24, x21, 0x2003, 0x00002000, 0x00000003, x4, 12, x5)

# opcode: or ; op1:x17; op2:x26; dest:x27; op1val:0x00004000;  op2val:0x40000000
TEST_RR_OP(or, x27, x17, x26, 0x40004000, 0x00004000, 0x40000000, x4, 16, x5)

# opcode: or ; op1:x10; op2:x3; dest:x16; op1val:0x00008000;  op2val:0x00020000
TEST_RR_OP(or, x16, x10, x3, 0x28000, 0x00008000, 0x00020000, x4, 20, x5)

# opcode: or ; op1:x15; op2:x18; dest:x1; op1val:0x00010000;  op2val:0x00000004
TEST_RR_OP(or, x1, x15, x18, 0x10004, 0x00010000, 0x00000004, x4, 24, x5)

# opcode: or ; op1:x7; op2:x19; dest:x24; op1val:0x00020000;  op2val:0x00000040
TEST_RR_OP(or, x24, x7, x19, 0x20040, 0x00020000, 0x00000040, x4, 28, x5)

# opcode: or ; op1:x9; op2:x20; dest:x29; op1val:0x00040000;  op2val:0xc0000000
TEST_RR_OP(or, x29, x9, x20, 0xc0040000, 0x00040000, 0xc0000000, x4, 32, x5)

# opcode: or ; op1:x28; op2:x27; dest:x20; op1val:0x00080000;  op2val:0x3fffffff
TEST_RR_OP(or, x20, x28, x27, 0x3fffffff, 0x00080000, 0x3fffffff, x4, 36, x5)

# opcode: or ; op1:x11; op2:x7; dest:x17; op1val:0x00100000;  op2val:0xffff7fff
TEST_RR_OP(or, x17, x11, x7, 0xffff7fff, 0x00100000, 0xffff7fff, x4, 40, x5)

# opcode: or ; op1:x0; op2:x30; dest:x12; op1val:0x00200000;  op2val:0x00000006
TEST_RR_OP(or, x12, x0, x30, 0x200006, 0x00200000, 0x00000006, x4, 44, x5)

# opcode: or ; op1:x30; op2:x10; dest:x21; op1val:0x00400000;  op2val:0xffffff7f
TEST_RR_OP(or, x21, x30, x10, 0xffffff7f, 0x00400000, 0xffffff7f, x4, 48, x5)

# opcode: or ; op1:x1; op2:x24; dest:x15; op1val:0x00800000;  op2val:0xfeffffff
TEST_RR_OP(or, x15, x1, x24, 0xfeffffff, 0x00800000, 0xfeffffff, x4, 52, x5)

# opcode: or ; op1:x6; op2:x15; dest:x3; op1val:0x01000000;  op2val:0x00000010
TEST_RR_OP(or, x3, x6, x15, 0x1000010, 0x01000000, 0x00000010, x4, 56, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000080
TEST_RR_OP(or, x12, x10, x11, 0x2000080, 0x02000000, 0x00000080, x4, 60, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000007
TEST_RR_OP(or, x12, x10, x11, 0x4000007, 0x04000000, 0x00000007, x4, 64, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffffdff
TEST_RR_OP(or, x12, x10, x11, 0xfffffdff, 0x08000000, 0xfffffdff, x4, 68, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xfffffffd
TEST_RR_OP(or, x12, x10, x11, 0xfffffffd, 0x10000000, 0xfffffffd, x4, 72, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfffffeff
TEST_RR_OP(or, x12, x10, x11, 0xfffffeff, 0x40000000, 0xfffffeff, x4, 76, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xffdfffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffffe, 0xffdfffff, x4, 80, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfffffffb
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffffd, 0xfffffffb, x4, 84, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfffffffd
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffffb, 0xfffffffd, x4, 88, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000800
TEST_RR_OP(or, x12, x10, x11, 0xfffffff7, 0xfffffff7, 0x00000800, x4, 92, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xfffffff7
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffffef, 0xfffffff7, x4, 96, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000004
TEST_RR_OP(or, x12, x10, x11, 0xffffffbf, 0xffffffbf, 0x00000004, x4, 100, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xfffbffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffff7f, 0xfffbffff, x4, 104, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfff7ffff
TEST_RR_OP(or, x12, x10, x11, 0xfff7ffff, 0x00000000, 0xfff7ffff, x4, 108, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0xffefffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffffa, 0xffefffff, x4, 112, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffbfffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xf7ffffff, 0xffbfffff, x4, 116, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xff7fffff
TEST_RR_OP(or, x12, x10, x11, 0xff7fffff, 0x20000000, 0xff7fffff, x4, 120, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfdffffff
TEST_RR_OP(or, x12, x10, x11, 0xfdffffff, 0x40000000, 0xfdffffff, x4, 124, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0xfbffffff
TEST_RR_OP(or, x12, x10, x11, 0xfbffffff, 0x00020000, 0xfbffffff, x4, 128, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0xf7ffffff
TEST_RR_OP(or, x12, x10, x11, 0xf7ffffff, 0x00020000, 0xf7ffffff, x4, 132, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xefffffff
TEST_RR_OP(or, x12, x10, x11, 0xefffffff, 0x02000000, 0xefffffff, x4, 136, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0xbfffffff
TEST_RR_OP(or, x12, x10, x11, 0xbfffffff, 0x00080000, 0xbfffffff, x4, 140, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0x55555555
TEST_RR_OP(or, x12, x10, x11, 0x55555555, 0x00000100, 0x55555555, x4, 144, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xaaaaaaaa
TEST_RR_OP(or, x12, x10, x11, 0xfffffffe, 0xfffffffe, 0xaaaaaaaa, x4, 148, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x40000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffeff, 0xfffffeff, 0x40000000, x4, 152, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xffdfffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffbff, 0xffdfffff, x4, 156, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffffdff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffff7ff, 0xfffffdff, x4, 160, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000007
TEST_RR_OP(or, x12, x10, x11, 0xffffdfff, 0xffffdfff, 0x00000007, x4, 164, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x40000000
TEST_RR_OP(or, x12, x10, x11, 0xffffbfff, 0xffffbfff, 0x40000000, x4, 168, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xffefffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffff7fff, 0xffefffff, x4, 172, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xfffdffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffeffff, 0xfffdffff, x4, 176, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xdfffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffdffff, 0xdfffffff, x4, 180, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000000
TEST_RR_OP(or, x12, x10, x11, 0xfffbffff, 0xfffbffff, 0x00000000, x4, 184, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x04000000
TEST_RR_OP(or, x12, x10, x11, 0xfff7ffff, 0xfff7ffff, 0x04000000, x4, 188, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00200000
TEST_RR_OP(or, x12, x10, x11, 0xffefffff, 0xffefffff, 0x00200000, x4, 192, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000100
TEST_RR_OP(or, x12, x10, x11, 0xffdfffff, 0xffdfffff, 0x00000100, x4, 196, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x01000000
TEST_RR_OP(or, x12, x10, x11, 0xffbfffff, 0xffbfffff, 0x01000000, x4, 200, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00080000
TEST_RR_OP(or, x12, x10, x11, 0xff7fffff, 0xff7fffff, 0x00080000, x4, 204, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xaaaaaaaa
TEST_RR_OP(or, x12, x10, x11, 0xfeffffff, 0xfeffffff, 0xaaaaaaaa, x4, 208, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000007
TEST_RR_OP(or, x12, x10, x11, 0xfdffffff, 0xfdffffff, 0x00000007, x4, 212, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffffdfff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfbffffff, 0xffffdfff, x4, 216, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xbfffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xefffffff, 0xbfffffff, x4, 220, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000004
TEST_RR_OP(or, x12, x10, x11, 0xdfffffff, 0xdfffffff, 0x00000004, x4, 224, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000005
TEST_RR_OP(or, x12, x10, x11, 0xbfffffff, 0xbfffffff, 0x00000005, x4, 228, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffff7fff
TEST_RR_OP(or, x12, x10, x11, 0xffff7fff, 0x55555555, 0xffff7fff, x4, 232, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000000
TEST_RR_OP(or, x12, x10, x11, 0xaaaaaaaa, 0xaaaaaaaa, 0x00000000, x4, 236, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0x00000002
TEST_RR_OP(or, x12, x10, x11, 0x82, 0x00000080, 0x00000002, x4, 240, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000020
TEST_RR_OP(or, x12, x10, x11, 0xf7ffffff, 0xf7ffffff, 0x00000020, x4, 244, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000200
TEST_RR_OP(or, x12, x10, x11, 0x400200, 0x00400000, 0x00000200, x4, 248, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x00000400
TEST_RR_OP(or, x12, x10, x11, 0x10400, 0x00010000, 0x00000400, x4, 252, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0x00001000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffc, 0xfffffffc, 0x00001000, x4, 256, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0x00002000
TEST_RR_OP(or, x12, x10, x11, 0x2004, 0x00000004, 0x00002000, x4, 260, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x00004000
TEST_RR_OP(or, x12, x10, x11, 0x4005, 0x00000005, 0x00004000, x4, 264, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00010000
TEST_RR_OP(or, x12, x10, x11, 0xffff7fff, 0xffff7fff, 0x00010000, x4, 268, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00040000
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffffff, 0x00040000, x4, 272, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00100000
TEST_RR_OP(or, x12, x10, x11, 0x10100000, 0x10000000, 0x00100000, x4, 276, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x00400000
TEST_RR_OP(or, x12, x10, x11, 0x440000, 0x00040000, 0x00400000, x4, 280, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00800000
TEST_RR_OP(or, x12, x10, x11, 0x4800000, 0x04000000, 0x00800000, x4, 284, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x02000000
TEST_RR_OP(or, x12, x10, x11, 0x2000009, 0x00000009, 0x02000000, x4, 288, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x08000000
TEST_RR_OP(or, x12, x10, x11, 0x5d555555, 0x55555555, 0x08000000, x4, 292, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x10000000
TEST_RR_OP(or, x12, x10, x11, 0x10000002, 0x00000002, 0x10000000, x4, 296, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x20000000
TEST_RR_OP(or, x12, x10, x11, 0x21000000, 0x01000000, 0x20000000, x4, 300, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xffffffdf
TEST_RR_OP(or, x12, x10, x11, 0xffffffdf, 0x40000000, 0xffffffdf, x4, 304, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xfffffffe
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfeffffff, 0xfffffffe, x4, 308, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xffffffbf
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffffd, 0xffffffbf, x4, 312, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffff7ff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffdfffff, 0xfffff7ff, x4, 316, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xffffefff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffbffff, 0xffffefff, x4, 320, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0xffffbfff
TEST_RR_OP(or, x12, x10, x11, 0xffffbfff, 0x00010000, 0xffffbfff, x4, 324, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfffeffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfbffffff, 0xfffeffff, x4, 328, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xffffdfff
TEST_RR_OP(or, x12, x10, x11, 0xffffdfff, 0x80000000, 0xffffdfff, x4, 332, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffdffff
TEST_RR_OP(or, x12, x10, x11, 0xfffdffff, 0x00000000, 0xfffdffff, x4, 336, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xfffffbff
TEST_RR_OP(or, x12, x10, x11, 0xfffffbff, 0x00000001, 0xfffffbff, x4, 340, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x80000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffdff, 0xfffffdff, 0x80000000, x4, 344, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x7fffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffffdf, 0x7fffffff, x4, 348, x5)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x00000006
TEST_RR_OP(or, x12, x10, x11, 0x200006, 0x00200000, 0x00000006, x4, 352, x5)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x15_1:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 89*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
