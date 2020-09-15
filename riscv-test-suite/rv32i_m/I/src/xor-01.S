
#This assembly file tests the xor instruction of the RISC-V I extension for the xor covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xor)

la x1,signature_x1_1

# opcode: xor ; op1:x9; op2:x8; dest:x9; op1val:0x80000000;  op2val:0xefffffff
TEST_RR_OP(xor, x9, x9, x8, 0x6fffffff, 0x80000000, 0xefffffff, x1, 0, x2)

# opcode: xor ; op1:x0; op2:x0; dest:x19; op1val:0x00000000;  op2val:0x00400000
TEST_RR_OP(xor, x19, x0, x0, 0x400000, 0x00000000, 0x00400000, x1, 4, x2)

# opcode: xor ; op1:x12; op2:x7; dest:x13; op1val:0x7fffffff;  op2val:0x00000400
TEST_RR_OP(xor, x13, x12, x7, 0x7ffffbff, 0x7fffffff, 0x00000400, x1, 8, x2)

# opcode: xor ; op1:x23; op2:x23; dest:x23; op1val:0x00000001;  op2val:0x00000040
TEST_RR_OP(xor, x23, x23, x23, 0x41, 0x00000001, 0x00000040, x1, 12, x2)

# opcode: xor ; op1:x24; op2:x25; dest:x25; op1val:0x00002000;  op2val:0x80000000
TEST_RR_OP(xor, x25, x24, x25, 0x80002000, 0x00002000, 0x80000000, x1, 16, x2)

# opcode: xor ; op1:x13; op2:x29; dest:x0; op1val:0x7fffffff;  op2val:0x00000000
TEST_RR_OP(xor, x0, x13, x29, 0x7fffffff, 0x7fffffff, 0x00000000, x1, 20, x2)

# opcode: xor ; op1:x31; op2:x3; dest:x27; op1val:0x00020000;  op2val:0x7fffffff
TEST_RR_OP(xor, x27, x31, x3, 0x7ffdffff, 0x00020000, 0x7fffffff, x1, 24, x2)

# opcode: xor ; op1:x15; op2:x19; dest:x4; op1val:0xffffbfff;  op2val:0x00000001
TEST_RR_OP(xor, x4, x15, x19, 0xffffbffe, 0xffffbfff, 0x00000001, x1, 28, x2)

# opcode: xor ; op1:x18; op2:x6; dest:x20; op1val:0x00000080;  op2val:0x00000080
TEST_RR_OP(xor, x20, x18, x6, 0x0, 0x00000080, 0x00000080, x1, 32, x2)

# opcode: xor ; op1:x11; op2:x16; dest:x22; op1val:0x00000002;  op2val:0x04000000
TEST_RR_OP(xor, x22, x11, x16, 0x4000002, 0x00000002, 0x04000000, x1, 36, x2)

# opcode: xor ; op1:x21; op2:x20; dest:x7; op1val:0x00000004;  op2val:0xfffffeff
TEST_RR_OP(xor, x7, x21, x20, 0xfffffefb, 0x00000004, 0xfffffeff, x1, 40, x2)

# opcode: xor ; op1:x28; op2:x11; dest:x14; op1val:0x00000008;  op2val:0x3fffffff
TEST_RR_OP(xor, x14, x28, x11, 0x3ffffff7, 0x00000008, 0x3fffffff, x1, 44, x2)

# opcode: xor ; op1:x29; op2:x28; dest:x30; op1val:0x00000010;  op2val:0xffbfffff
TEST_RR_OP(xor, x30, x29, x28, 0xffbfffef, 0x00000010, 0xffbfffff, x1, 48, x2)

# opcode: xor ; op1:x6; op2:x10; dest:x3; op1val:0x00000020;  op2val:0x00000100
TEST_RR_OP(xor, x3, x6, x10, 0x120, 0x00000020, 0x00000100, x1, 52, x2)

# opcode: xor ; op1:x25; op2:x22; dest:x8; op1val:0x00000040;  op2val:0x00004000
TEST_RR_OP(xor, x8, x25, x22, 0x4040, 0x00000040, 0x00004000, x1, 56, x2)

# opcode: xor ; op1:x16; op2:x26; dest:x6; op1val:0x00000100;  op2val:0xfffbffff
TEST_RR_OP(xor, x6, x16, x26, 0xfffbfeff, 0x00000100, 0xfffbffff, x1, 60, x2)

# opcode: xor ; op1:x10; op2:x2; dest:x29; op1val:0x00000200;  op2val:0xfffffffb
TEST_RR_OP(xor, x29, x10, x2, 0xfffffdfb, 0x00000200, 0xfffffffb, x1, 64, x23)
la x6,signature_x6_0

# opcode: xor ; op1:x7; op2:x4; dest:x15; op1val:0x00000400;  op2val:0xfffffff6
TEST_RR_OP(xor, x15, x7, x4, 0xfffffbf6, 0x00000400, 0xfffffff6, x6, 0, x23)

# opcode: xor ; op1:x27; op2:x31; dest:x2; op1val:0x00000800;  op2val:0x20000000
TEST_RR_OP(xor, x2, x27, x31, 0x20000800, 0x00000800, 0x20000000, x6, 4, x23)

# opcode: xor ; op1:x20; op2:x12; dest:x31; op1val:0x00001000;  op2val:0x00100000
TEST_RR_OP(xor, x31, x20, x12, 0x101000, 0x00001000, 0x00100000, x6, 8, x23)

# opcode: xor ; op1:x1; op2:x24; dest:x12; op1val:0x00004000;  op2val:0xffefffff
TEST_RR_OP(xor, x12, x1, x24, 0xffefbfff, 0x00004000, 0xffefffff, x6, 12, x23)

# opcode: xor ; op1:x30; op2:x13; dest:x10; op1val:0x00008000;  op2val:0x00100000
TEST_RR_OP(xor, x10, x30, x13, 0x108000, 0x00008000, 0x00100000, x6, 16, x23)

# opcode: xor ; op1:x2; op2:x30; dest:x11; op1val:0x00010000;  op2val:0x00001000
TEST_RR_OP(xor, x11, x2, x30, 0x11000, 0x00010000, 0x00001000, x6, 20, x23)

# opcode: xor ; op1:x17; op2:x5; dest:x24; op1val:0x00040000;  op2val:0x00008000
TEST_RR_OP(xor, x24, x17, x5, 0x48000, 0x00040000, 0x00008000, x6, 24, x23)

# opcode: xor ; op1:x3; op2:x18; dest:x21; op1val:0x00080000;  op2val:0xc0000000
TEST_RR_OP(xor, x21, x3, x18, 0xc0080000, 0x00080000, 0xc0000000, x6, 28, x23)

# opcode: xor ; op1:x22; op2:x1; dest:x17; op1val:0x00100000;  op2val:0x00002000
TEST_RR_OP(xor, x17, x22, x1, 0x102000, 0x00100000, 0x00002000, x6, 32, x23)

# opcode: xor ; op1:x14; op2:x17; dest:x16; op1val:0x00200000;  op2val:0x00000080
TEST_RR_OP(xor, x16, x14, x17, 0x200080, 0x00200000, 0x00000080, x6, 36, x23)

# opcode: xor ; op1:x5; op2:x9; dest:x1; op1val:0x00400000;  op2val:0xfffffff7
TEST_RR_OP(xor, x1, x5, x9, 0xffbffff7, 0x00400000, 0xfffffff7, x6, 40, x23)

# opcode: xor ; op1:x8; op2:x21; dest:x28; op1val:0x00800000;  op2val:0x3fffffff
TEST_RR_OP(xor, x28, x8, x21, 0x3f7fffff, 0x00800000, 0x3fffffff, x6, 44, x23)

# opcode: xor ; op1:x19; op2:x14; dest:x26; op1val:0x01000000;  op2val:0xfffffff8
TEST_RR_OP(xor, x26, x19, x14, 0xfefffff8, 0x01000000, 0xfffffff8, x6, 48, x23)

# opcode: xor ; op1:x26; op2:x27; dest:x18; op1val:0x02000000;  op2val:0x00004000
TEST_RR_OP(xor, x18, x26, x27, 0x2004000, 0x02000000, 0x00004000, x6, 52, x1)

# opcode: xor ; op1:x4; op2:x15; dest:x5; op1val:0x04000000;  op2val:0xffffffff
TEST_RR_OP(xor, x5, x4, x15, 0xfbffffff, 0x04000000, 0xffffffff, x6, 56, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00800000
TEST_RR_OP(xor, x12, x10, x11, 0x8800000, 0x08000000, 0x00800000, x6, 60, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000010
TEST_RR_OP(xor, x12, x10, x11, 0x10000010, 0x10000000, 0x00000010, x6, 64, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xc0000000
TEST_RR_OP(xor, x12, x10, x11, 0xe0000000, 0x20000000, 0xc0000000, x6, 68, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfffdffff
TEST_RR_OP(xor, x12, x10, x11, 0xbffdffff, 0x40000000, 0xfffdffff, x6, 72, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfff7ffff
TEST_RR_OP(xor, x12, x10, x11, 0x80001, 0xfffffffe, 0xfff7ffff, x6, 76, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00200000
TEST_RR_OP(xor, x12, x10, x11, 0xffdffffd, 0xfffffffd, 0x00200000, x6, 80, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00040000
TEST_RR_OP(xor, x12, x10, x11, 0xfffbfffb, 0xfffffffb, 0x00040000, x6, 84, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x10000000
TEST_RR_OP(xor, x12, x10, x11, 0xeffffff7, 0xfffffff7, 0x10000000, x6, 88, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xffffbfff
TEST_RR_OP(xor, x12, x10, x11, 0x4010, 0xffffffef, 0xffffbfff, x6, 92, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000200
TEST_RR_OP(xor, x12, x10, x11, 0xfffffddf, 0xffffffdf, 0x00000200, x6, 96, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0xffdfffff
TEST_RR_OP(xor, x12, x10, x11, 0xffdfdfff, 0x00002000, 0xffdfffff, x6, 100, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xff7fffff
TEST_RR_OP(xor, x12, x10, x11, 0x800400, 0xfffffbff, 0xff7fffff, x6, 104, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0xfeffffff
TEST_RR_OP(xor, x12, x10, x11, 0x1000000, 0xffffffff, 0xfeffffff, x6, 108, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xfdffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfdfffbff, 0x00000400, 0xfdffffff, x6, 112, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xfbffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfbdfffff, 0x00200000, 0xfbffffff, x6, 116, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0xf7ffffff
TEST_RR_OP(xor, x12, x10, x11, 0xf7f7ffff, 0x00080000, 0xf7ffffff, x6, 120, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xdfffffff
TEST_RR_OP(xor, x12, x10, x11, 0x75555555, 0xaaaaaaaa, 0xdfffffff, x6, 124, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xbfffffff
TEST_RR_OP(xor, x12, x10, x11, 0x40000008, 0xfffffff7, 0xbfffffff, x6, 128, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0x55555555
TEST_RR_OP(xor, x12, x10, x11, 0x55555d55, 0x00000800, 0x55555555, x6, 132, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xaaaaaaaa
TEST_RR_OP(xor, x12, x10, x11, 0xa8aaaaaa, 0x02000000, 0xaaaaaaaa, x6, 136, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xffffffbf
TEST_RR_OP(xor, x12, x10, x11, 0x0, 0xffffffbf, 0xffffffbf, x6, 140, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xfffffffc
TEST_RR_OP(xor, x12, x10, x11, 0x83, 0xffffff7f, 0xfffffffc, x6, 144, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xaaaaaaaa
TEST_RR_OP(xor, x12, x10, x11, 0x55555455, 0xfffffeff, 0xaaaaaaaa, x6, 148, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000001
TEST_RR_OP(xor, x12, x10, x11, 0xfffffdfe, 0xfffffdff, 0x00000001, x6, 152, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xffffefff
TEST_RR_OP(xor, x12, x10, x11, 0x1800, 0xfffff7ff, 0xffffefff, x6, 156, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00000008
TEST_RR_OP(xor, x12, x10, x11, 0xffffeff7, 0xffffefff, 0x00000008, x6, 160, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x01000000
TEST_RR_OP(xor, x12, x10, x11, 0xfeffdfff, 0xffffdfff, 0x01000000, x6, 164, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000800
TEST_RR_OP(xor, x12, x10, x11, 0xffff77ff, 0xffff7fff, 0x00000800, x6, 168, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x40000000
TEST_RR_OP(xor, x12, x10, x11, 0xbffeffff, 0xfffeffff, 0x40000000, x6, 172, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00200000
TEST_RR_OP(xor, x12, x10, x11, 0xffddffff, 0xfffdffff, 0x00200000, x6, 176, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfffffeff
TEST_RR_OP(xor, x12, x10, x11, 0x40100, 0xfffbffff, 0xfffffeff, x6, 180, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xffffefff
TEST_RR_OP(xor, x12, x10, x11, 0x81000, 0xfff7ffff, 0xffffefff, x6, 184, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xff7fffff
TEST_RR_OP(xor, x12, x10, x11, 0x900000, 0xffefffff, 0xff7fffff, x6, 188, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffeffff
TEST_RR_OP(xor, x12, x10, x11, 0x210000, 0xffdfffff, 0xfffeffff, x6, 192, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xffff7fff
TEST_RR_OP(xor, x12, x10, x11, 0x408000, 0xffbfffff, 0xffff7fff, x6, 196, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xffffffbf
TEST_RR_OP(xor, x12, x10, x11, 0x800040, 0xff7fffff, 0xffffffbf, x6, 200, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000200
TEST_RR_OP(xor, x12, x10, x11, 0xfefffdff, 0xfeffffff, 0x00000200, x6, 204, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000200
TEST_RR_OP(xor, x12, x10, x11, 0xfdfffdff, 0xfdffffff, 0x00000200, x6, 208, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00400000
TEST_RR_OP(xor, x12, x10, x11, 0xfbbfffff, 0xfbffffff, 0x00400000, x6, 212, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x7fffffff
TEST_RR_OP(xor, x12, x10, x11, 0x88000000, 0xf7ffffff, 0x7fffffff, x6, 216, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000007
TEST_RR_OP(xor, x12, x10, x11, 0xeffffff8, 0xefffffff, 0x00000007, x6, 220, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x3fffffff
TEST_RR_OP(xor, x12, x10, x11, 0xe0000000, 0xdfffffff, 0x3fffffff, x6, 224, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfffffbff
TEST_RR_OP(xor, x12, x10, x11, 0x40000400, 0xbfffffff, 0xfffffbff, x6, 228, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xaaaaaaaa, 0x55555555, 0xffffffff, x6, 232, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x00000002
TEST_RR_OP(xor, x12, x10, x11, 0x4002, 0x00004000, 0x00000002, x6, 236, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x00080000
TEST_RR_OP(xor, x12, x10, x11, 0x81000, 0x00001000, 0x00080000, x6, 240, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x02000000
TEST_RR_OP(xor, x12, x10, x11, 0x2200000, 0x00200000, 0x02000000, x6, 244, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x08000000
TEST_RR_OP(xor, x12, x10, x11, 0x8001000, 0x00001000, 0x08000000, x6, 248, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0xfffffffe
TEST_RR_OP(xor, x12, x10, x11, 0xffffff7e, 0x00000080, 0xfffffffe, x6, 252, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffffffd
TEST_RR_OP(xor, x12, x10, x11, 0xa, 0xfffffff7, 0xfffffffd, x6, 256, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000004
TEST_RR_OP(xor, x12, x10, x11, 0x80000004, 0x80000000, 0x00000004, x6, 260, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0xffffffef
TEST_RR_OP(xor, x12, x10, x11, 0xfffdffef, 0x00020000, 0xffffffef, x6, 264, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000020
TEST_RR_OP(xor, x12, x10, x11, 0xffffff9f, 0xffffffbf, 0x00000020, x6, 268, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xffffffdf
TEST_RR_OP(xor, x12, x10, x11, 0xf7ffffdf, 0x08000000, 0xffffffdf, x6, 272, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xffffff7f
TEST_RR_OP(xor, x12, x10, x11, 0x880, 0xfffff7ff, 0xffffff7f, x6, 276, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffffdff
TEST_RR_OP(xor, x12, x10, x11, 0x208, 0xfffffff7, 0xfffffdff, x6, 280, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0xfffff7ff
TEST_RR_OP(xor, x12, x10, x11, 0x807, 0xfffffff8, 0xfffff7ff, x6, 284, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xffffdfff
TEST_RR_OP(xor, x12, x10, x11, 0x102000, 0xffefffff, 0xffffdfff, x6, 288, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00010000
TEST_RR_OP(xor, x12, x10, x11, 0xf7feffff, 0xf7ffffff, 0x00010000, x6, 292, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00020000
TEST_RR_OP(xor, x12, x10, x11, 0xffbdffff, 0xffbfffff, 0x00020000, x6, 296, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xefffffff
TEST_RR_OP(xor, x12, x10, x11, 0x6fffffff, 0x80000000, 0xefffffff, x6, 300, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00400000
TEST_RR_OP(xor, x12, x10, x11, 0x400000, 0x00000000, 0x00400000, x6, 304, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000040
TEST_RR_OP(xor, x12, x10, x11, 0x41, 0x00000001, 0x00000040, x6, 308, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0x80000000
TEST_RR_OP(xor, x12, x10, x11, 0x80002000, 0x00002000, 0x80000000, x6, 312, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000000
TEST_RR_OP(xor, x12, x10, x11, 0x7fffffff, 0x7fffffff, 0x00000000, x6, 316, x1)
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


signature_x6_0:
    .fill 80*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
