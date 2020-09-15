
#This assembly file tests the and instruction of the RISC-V I extension for the and covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",and)

la x20,signature_x20_1

# opcode: and ; op1:x31; op2:x18; dest:x31; op1val:0x80000000;  op2val:0xffffffff
TEST_RR_OP(and, x31, x31, x18, 0x80000000, 0x80000000, 0xffffffff, x20, 0, x22)

# opcode: and ; op1:x14; op2:x14; dest:x8; op1val:0x00000000;  op2val:0xfbffffff
TEST_RR_OP(and, x8, x14, x14, 0x0, 0x00000000, 0xfbffffff, x20, 4, x22)

# opcode: and ; op1:x12; op2:x17; dest:x1; op1val:0x7fffffff;  op2val:0xffefffff
TEST_RR_OP(and, x1, x12, x17, 0x7fefffff, 0x7fffffff, 0xffefffff, x20, 8, x22)

# opcode: and ; op1:x26; op2:x26; dest:x26; op1val:0x00000001;  op2val:0x00080000
TEST_RR_OP(and, x26, x26, x26, 0x0, 0x00000001, 0x00080000, x20, 12, x22)

# opcode: and ; op1:x15; op2:x30; dest:x30; op1val:0x00000007;  op2val:0x80000000
TEST_RR_OP(and, x30, x15, x30, 0x0, 0x00000007, 0x80000000, x20, 16, x22)

# opcode: and ; op1:x4; op2:x5; dest:x2; op1val:0xffffbfff;  op2val:0x00000000
TEST_RR_OP(and, x2, x4, x5, 0x0, 0xffffbfff, 0x00000000, x20, 20, x22)

# opcode: and ; op1:x21; op2:x7; dest:x23; op1val:0xfffffffe;  op2val:0x7fffffff
TEST_RR_OP(and, x23, x21, x7, 0x7ffffffe, 0xfffffffe, 0x7fffffff, x20, 24, x22)

# opcode: and ; op1:x17; op2:x8; dest:x13; op1val:0x00000080;  op2val:0x00000001
TEST_RR_OP(and, x13, x17, x8, 0x0, 0x00000080, 0x00000001, x20, 28, x22)

# opcode: and ; op1:x5; op2:x19; dest:x15; op1val:0x00000006;  op2val:0x00000006
TEST_RR_OP(and, x15, x5, x19, 0x6, 0x00000006, 0x00000006, x20, 32, x22)

# opcode: and ; op1:x2; op2:x11; dest:x4; op1val:0x00000002;  op2val:0x00000200
TEST_RR_OP(and, x4, x2, x11, 0x0, 0x00000002, 0x00000200, x20, 36, x22)

# opcode: and ; op1:x28; op2:x0; dest:x10; op1val:0x00000004;  op2val:0x08000000
TEST_RR_OP(and, x10, x28, x0, 0x0, 0x00000004, 0x08000000, x20, 40, x22)

# opcode: and ; op1:x3; op2:x4; dest:x16; op1val:0x00000008;  op2val:0x00000009
TEST_RR_OP(and, x16, x3, x4, 0x8, 0x00000008, 0x00000009, x20, 44, x22)

# opcode: and ; op1:x19; op2:x31; dest:x29; op1val:0x00000010;  op2val:0x00000003
TEST_RR_OP(and, x29, x19, x31, 0x0, 0x00000010, 0x00000003, x20, 48, x22)

# opcode: and ; op1:x1; op2:x28; dest:x19; op1val:0x00000020;  op2val:0xffffefff
TEST_RR_OP(and, x19, x1, x28, 0x20, 0x00000020, 0xffffefff, x20, 52, x22)

# opcode: and ; op1:x13; op2:x2; dest:x12; op1val:0x00000040;  op2val:0xffffbfff
TEST_RR_OP(and, x12, x13, x2, 0x40, 0x00000040, 0xffffbfff, x20, 56, x22)

# opcode: and ; op1:x16; op2:x27; dest:x28; op1val:0x00000100;  op2val:0xfffffeff
TEST_RR_OP(and, x28, x16, x27, 0x0, 0x00000100, 0xfffffeff, x20, 60, x22)

# opcode: and ; op1:x29; op2:x9; dest:x0; op1val:0x00000200;  op2val:0x00200000
TEST_RR_OP(and, x0, x29, x9, 0x0, 0x00000200, 0x00200000, x20, 64, x22)

# opcode: and ; op1:x11; op2:x12; dest:x3; op1val:0x00000400;  op2val:0x04000000
TEST_RR_OP(and, x3, x11, x12, 0x0, 0x00000400, 0x04000000, x20, 68, x22)

# opcode: and ; op1:x7; op2:x21; dest:x6; op1val:0x00000800;  op2val:0x00010000
TEST_RR_OP(and, x6, x7, x21, 0x0, 0x00000800, 0x00010000, x20, 72, x22)

# opcode: and ; op1:x24; op2:x13; dest:x22; op1val:0x00001000;  op2val:0xfffeffff
TEST_RR_OP(and, x22, x24, x13, 0x1000, 0x00001000, 0xfffeffff, x20, 76, x4)
la x2,signature_x2_0

# opcode: and ; op1:x8; op2:x25; dest:x20; op1val:0x00002000;  op2val:0x00004000
TEST_RR_OP(and, x20, x8, x25, 0x0, 0x00002000, 0x00004000, x2, 0, x4)

# opcode: and ; op1:x0; op2:x15; dest:x18; op1val:0x00004000;  op2val:0x55555555
TEST_RR_OP(and, x18, x0, x15, 0x4000, 0x00004000, 0x55555555, x2, 4, x4)

# opcode: and ; op1:x18; op2:x20; dest:x27; op1val:0x00008000;  op2val:0xffff7fff
TEST_RR_OP(and, x27, x18, x20, 0x0, 0x00008000, 0xffff7fff, x2, 8, x4)

# opcode: and ; op1:x23; op2:x22; dest:x9; op1val:0x00010000;  op2val:0xffffefff
TEST_RR_OP(and, x9, x23, x22, 0x10000, 0x00010000, 0xffffefff, x2, 12, x4)

# opcode: and ; op1:x9; op2:x16; dest:x25; op1val:0x00020000;  op2val:0xffffffbf
TEST_RR_OP(and, x25, x9, x16, 0x20000, 0x00020000, 0xffffffbf, x2, 16, x4)

# opcode: and ; op1:x20; op2:x24; dest:x14; op1val:0x00040000;  op2val:0x80000000
TEST_RR_OP(and, x14, x20, x24, 0x0, 0x00040000, 0x80000000, x2, 20, x4)

# opcode: and ; op1:x22; op2:x1; dest:x21; op1val:0x00080000;  op2val:0xffffffef
TEST_RR_OP(and, x21, x22, x1, 0x80000, 0x00080000, 0xffffffef, x2, 24, x4)

# opcode: and ; op1:x27; op2:x29; dest:x7; op1val:0x00100000;  op2val:0xfffffffd
TEST_RR_OP(and, x7, x27, x29, 0x100000, 0x00100000, 0xfffffffd, x2, 28, x4)

# opcode: and ; op1:x25; op2:x6; dest:x17; op1val:0x00200000;  op2val:0xffefffff
TEST_RR_OP(and, x17, x25, x6, 0x200000, 0x00200000, 0xffefffff, x2, 32, x4)

# opcode: and ; op1:x10; op2:x23; dest:x11; op1val:0x00400000;  op2val:0x00000004
TEST_RR_OP(and, x11, x10, x23, 0x0, 0x00400000, 0x00000004, x2, 36, x4)

# opcode: and ; op1:x30; op2:x3; dest:x24; op1val:0x00800000;  op2val:0xfbffffff
TEST_RR_OP(and, x24, x30, x3, 0x800000, 0x00800000, 0xfbffffff, x2, 40, x4)

# opcode: and ; op1:x6; op2:x10; dest:x5; op1val:0x01000000;  op2val:0x00400000
TEST_RR_OP(and, x5, x6, x10, 0x0, 0x01000000, 0x00400000, x2, 44, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00100000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x02000000, 0x00100000, x2, 48, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000004
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x04000000, 0x00000004, x2, 52, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x55555555
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x08000000, 0x55555555, x2, 56, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x02000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x10000000, 0x02000000, x2, 60, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000001
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x20000000, 0x00000001, x2, 64, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00008000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x40000000, 0x00008000, x2, 68, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000001
TEST_RR_OP(and, x12, x10, x11, 0x1, 0xfffffffd, 0x00000001, x2, 72, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xffffffef
TEST_RR_OP(and, x12, x10, x11, 0xffffffeb, 0xfffffffb, 0xffffffef, x2, 76, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000001
TEST_RR_OP(and, x12, x10, x11, 0x1, 0xfffffff7, 0x00000001, x2, 80, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xfffbffff
TEST_RR_OP(and, x12, x10, x11, 0xfffbffef, 0xffffffef, 0xfffbffff, x2, 84, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xffffbfff
TEST_RR_OP(and, x12, x10, x11, 0xffffbfdf, 0xffffffdf, 0xffffbfff, x2, 88, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000400
TEST_RR_OP(and, x12, x10, x11, 0x400, 0xffffffbf, 0x00000400, x2, 92, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000006
TEST_RR_OP(and, x12, x10, x11, 0x6, 0xffffff7f, 0x00000006, x2, 96, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xfff7ffff
TEST_RR_OP(and, x12, x10, x11, 0xfff7ff7f, 0xffffff7f, 0xfff7ffff, x2, 100, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xffdfffff
TEST_RR_OP(and, x12, x10, x11, 0xffdfdfff, 0xffffdfff, 0xffdfffff, x2, 104, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xffbfffff
TEST_RR_OP(and, x12, x10, x11, 0xffbf7fff, 0xffff7fff, 0xffbfffff, x2, 108, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0xff7fffff
TEST_RR_OP(and, x12, x10, x11, 0xff7ffff9, 0xfffffff9, 0xff7fffff, x2, 112, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0xfeffffff
TEST_RR_OP(and, x12, x10, x11, 0x40000, 0x00040000, 0xfeffffff, x2, 116, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfdffffff
TEST_RR_OP(and, x12, x10, x11, 0xfdfffffd, 0xfffffffd, 0xfdffffff, x2, 120, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xf7ffffff
TEST_RR_OP(and, x12, x10, x11, 0xf7ffff7f, 0xffffff7f, 0xf7ffffff, x2, 124, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xefffffff
TEST_RR_OP(and, x12, x10, x11, 0xefdfffff, 0xffdfffff, 0xefffffff, x2, 128, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xdfffffff
TEST_RR_OP(and, x12, x10, x11, 0xddffffff, 0xfdffffff, 0xdfffffff, x2, 132, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0xbfffffff
TEST_RR_OP(and, x12, x10, x11, 0x80000000, 0xc0000000, 0xbfffffff, x2, 136, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0xaaaaaaaa
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00010000, 0xaaaaaaaa, x2, 140, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xaaaaaaaa
TEST_RR_OP(and, x12, x10, x11, 0xaaaaaaaa, 0xfffffeff, 0xaaaaaaaa, x2, 144, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfeffffff
TEST_RR_OP(and, x12, x10, x11, 0xfefffdff, 0xfffffdff, 0xfeffffff, x2, 148, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xffffffdf
TEST_RR_OP(and, x12, x10, x11, 0xfffffbdf, 0xfffffbff, 0xffffffdf, x2, 152, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000040
TEST_RR_OP(and, x12, x10, x11, 0x40, 0xfffff7ff, 0x00000040, x2, 156, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfbffffff
TEST_RR_OP(and, x12, x10, x11, 0xfbffefff, 0xffffefff, 0xfbffffff, x2, 160, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xfff7ffff
TEST_RR_OP(and, x12, x10, x11, 0xfff6ffff, 0xfffeffff, 0xfff7ffff, x2, 164, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000010
TEST_RR_OP(and, x12, x10, x11, 0x10, 0xfffdffff, 0x00000010, x2, 168, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000200
TEST_RR_OP(and, x12, x10, x11, 0x200, 0xfffbffff, 0x00000200, x2, 172, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x04000000
TEST_RR_OP(and, x12, x10, x11, 0x4000000, 0xfff7ffff, 0x04000000, x2, 176, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00010000
TEST_RR_OP(and, x12, x10, x11, 0x10000, 0xffefffff, 0x00010000, x2, 180, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xfffffff9
TEST_RR_OP(and, x12, x10, x11, 0xffbffff9, 0xffbfffff, 0xfffffff9, x2, 184, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x40000000
TEST_RR_OP(and, x12, x10, x11, 0x40000000, 0xff7fffff, 0x40000000, x2, 188, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00400000
TEST_RR_OP(and, x12, x10, x11, 0x400000, 0xfeffffff, 0x00400000, x2, 192, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfffdffff
TEST_RR_OP(and, x12, x10, x11, 0xfbfdffff, 0xfbffffff, 0xfffdffff, x2, 196, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000200
TEST_RR_OP(and, x12, x10, x11, 0x200, 0xf7ffffff, 0x00000200, x2, 200, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xffdfffff
TEST_RR_OP(and, x12, x10, x11, 0xefdfffff, 0xefffffff, 0xffdfffff, x2, 204, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00800000
TEST_RR_OP(and, x12, x10, x11, 0x800000, 0xdfffffff, 0x00800000, x2, 208, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfffffffd
TEST_RR_OP(and, x12, x10, x11, 0xbffffffd, 0xbfffffff, 0xfffffffd, x2, 212, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xc0000000
TEST_RR_OP(and, x12, x10, x11, 0x40000000, 0x55555555, 0xc0000000, x2, 216, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000400
TEST_RR_OP(and, x12, x10, x11, 0x0, 0xaaaaaaaa, 0x00000400, x2, 220, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0x00000002
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000009, 0x00000002, x2, 224, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0x00000008
TEST_RR_OP(and, x12, x10, x11, 0x0, 0xc0000000, 0x00000008, x2, 228, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000020
TEST_RR_OP(and, x12, x10, x11, 0x20, 0xfffffffd, 0x00000020, x2, 232, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000080
TEST_RR_OP(and, x12, x10, x11, 0x80, 0xfdffffff, 0x00000080, x2, 236, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000100
TEST_RR_OP(and, x12, x10, x11, 0x100, 0xffffffbf, 0x00000100, x2, 240, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000800
TEST_RR_OP(and, x12, x10, x11, 0x800, 0xffffff7f, 0x00000800, x2, 244, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0x00040000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000006, 0x00040000, x2, 248, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0x01000000
TEST_RR_OP(and, x12, x10, x11, 0x1000000, 0xfffffffa, 0x01000000, x2, 252, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x10000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x80000000, 0x10000000, x2, 256, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00002000
TEST_RR_OP(and, x12, x10, x11, 0x2000, 0xffffffbf, 0x00002000, x2, 260, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x20000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x04000000, 0x20000000, x2, 264, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0xfffffffe
TEST_RR_OP(and, x12, x10, x11, 0xfffffff8, 0xfffffff8, 0xfffffffe, x2, 268, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xfffffffb
TEST_RR_OP(and, x12, x10, x11, 0x1000000, 0x01000000, 0xfffffffb, x2, 272, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffff7
TEST_RR_OP(and, x12, x10, x11, 0xffffffb7, 0xffffffbf, 0xfffffff7, x2, 276, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xffffff7f
TEST_RR_OP(and, x12, x10, x11, 0x800, 0x00000800, 0xffffff7f, x2, 280, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0xfffffdff
TEST_RR_OP(and, x12, x10, x11, 0x1000, 0x00001000, 0xfffffdff, x2, 284, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xfffffbff
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000400, 0xfffffbff, x2, 288, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0xfffff7ff
TEST_RR_OP(and, x12, x10, x11, 0x9, 0x00000009, 0xfffff7ff, x2, 292, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00001000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000003, 0x00001000, x2, 296, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xffffdfff
TEST_RR_OP(and, x12, x10, x11, 0x800, 0x00000800, 0xffffdfff, x2, 300, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00020000
TEST_RR_OP(and, x12, x10, x11, 0x20000, 0xfffffbff, 0x00020000, x2, 304, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xffffffff
TEST_RR_OP(and, x12, x10, x11, 0x80000000, 0x80000000, 0xffffffff, x2, 308, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfbffffff
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000000, 0xfbffffff, x2, 312, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00080000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000001, 0x00080000, x2, 316, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0x80000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000007, 0x80000000, x2, 320, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0x08000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000004, 0x08000000, x2, 324, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00200000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000200, 0x00200000, x2, 328, x4)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x55555555
TEST_RR_OP(and, x12, x10, x11, 0x4000, 0x00004000, 0x55555555, x2, 332, x4)
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

signature_x20_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x20_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 84*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
