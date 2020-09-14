
#This assembly file tests the add instruction of the RISC-V I extension for the add covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",add)

la x4,signature_x4_1

# opcode: add ; op1:x3; op2:x11; dest:x11; op1val:0x80000000;  op2val:0x00000010
TEST_RR_OP(add, x11, x3, x11, 0x80000010, 0x80000000, 0x00000010, x4, 0, x9)

# opcode: add ; op1:x8; op2:x19; dest:x8; op1val:0x00000000;  op2val:0xfffffffa
TEST_RR_OP(add, x8, x8, x19, 0xfffffffa, 0x00000000, 0xfffffffa, x4, 4, x9)

# opcode: add ; op1:x10; op2:x10; dest:x10; op1val:0x7fffffff;  op2val:0xffdfffff
TEST_RR_OP(add, x10, x10, x10, 0x7fdffffe, 0x7fffffff, 0xffdfffff, x4, 8, x9)

# opcode: add ; op1:x30; op2:x30; dest:x21; op1val:0x00000001;  op2val:0xdfffffff
TEST_RR_OP(add, x21, x30, x30, 0xe0000000, 0x00000001, 0xdfffffff, x4, 12, x9)

# opcode: add ; op1:x6; op2:x27; dest:x17; op1val:0xff7fffff;  op2val:0x80000000
TEST_RR_OP(add, x17, x6, x27, 0x7f7fffff, 0xff7fffff, 0x80000000, x4, 16, x9)

# opcode: add ; op1:x12; op2:x18; dest:x27; op1val:0x00002000;  op2val:0x00000000
TEST_RR_OP(add, x27, x12, x18, 0x2000, 0x00002000, 0x00000000, x4, 20, x9)

# opcode: add ; op1:x0; op2:x29; dest:x28; op1val:0x10000000;  op2val:0x7fffffff
TEST_RR_OP(add, x28, x0, x29, 0x8fffffff, 0x10000000, 0x7fffffff, x4, 24, x9)

# opcode: add ; op1:x1; op2:x21; dest:x12; op1val:0xffdfffff;  op2val:0x00000001
TEST_RR_OP(add, x12, x1, x21, 0xffe00000, 0xffdfffff, 0x00000001, x4, 28, x9)

# opcode: add ; op1:x21; op2:x14; dest:x25; op1val:0xc0000000;  op2val:0xc0000000
TEST_RR_OP(add, x25, x21, x14, 0x80000000, 0xc0000000, 0xc0000000, x4, 32, x9)

# opcode: add ; op1:x16; op2:x1; dest:x2; op1val:0x00000002;  op2val:0x00002000
TEST_RR_OP(add, x2, x16, x1, 0x2002, 0x00000002, 0x00002000, x4, 36, x9)

# opcode: add ; op1:x15; op2:x22; dest:x14; op1val:0x00000004;  op2val:0x00000002
TEST_RR_OP(add, x14, x15, x22, 0x6, 0x00000004, 0x00000002, x4, 40, x9)

# opcode: add ; op1:x27; op2:x0; dest:x22; op1val:0x00000008;  op2val:0xffefffff
TEST_RR_OP(add, x22, x27, x0, 0xfff00007, 0x00000008, 0xffefffff, x4, 44, x9)

# opcode: add ; op1:x7; op2:x24; dest:x20; op1val:0x00000010;  op2val:0x80000000
TEST_RR_OP(add, x20, x7, x24, 0x80000010, 0x00000010, 0x80000000, x4, 48, x9)

# opcode: add ; op1:x18; op2:x17; dest:x0; op1val:0x00000020;  op2val:0x00020000
TEST_RR_OP(add, x0, x18, x17, 0x20020, 0x00000020, 0x00020000, x4, 52, x9)

# opcode: add ; op1:x5; op2:x20; dest:x26; op1val:0x00000040;  op2val:0x00000040
TEST_RR_OP(add, x26, x5, x20, 0x80, 0x00000040, 0x00000040, x4, 56, x9)

# opcode: add ; op1:x24; op2:x7; dest:x23; op1val:0x00000080;  op2val:0xfffffffd
TEST_RR_OP(add, x23, x24, x7, 0x7d, 0x00000080, 0xfffffffd, x4, 60, x9)

# opcode: add ; op1:x26; op2:x15; dest:x7; op1val:0x00000100;  op2val:0x00000002
TEST_RR_OP(add, x7, x26, x15, 0x102, 0x00000100, 0x00000002, x4, 64, x10)

# opcode: add ; op1:x11; op2:x23; dest:x30; op1val:0x00000200;  op2val:0x10000000
TEST_RR_OP(add, x30, x11, x23, 0x10000200, 0x00000200, 0x10000000, x4, 68, x10)

# opcode: add ; op1:x13; op2:x9; dest:x29; op1val:0x00000400;  op2val:0xfffffffa
TEST_RR_OP(add, x29, x13, x9, 0x3fa, 0x00000400, 0xfffffffa, x4, 72, x10)
la x7,signature_x7_0

# opcode: add ; op1:x9; op2:x4; dest:x24; op1val:0x00000800;  op2val:0x08000000
TEST_RR_OP(add, x24, x9, x4, 0x8000800, 0x00000800, 0x08000000, x7, 0, x10)

# opcode: add ; op1:x31; op2:x28; dest:x1; op1val:0x00001000;  op2val:0xfffff7ff
TEST_RR_OP(add, x1, x31, x28, 0x7ff, 0x00001000, 0xfffff7ff, x7, 4, x10)

# opcode: add ; op1:x20; op2:x31; dest:x18; op1val:0x00004000;  op2val:0x7fffffff
TEST_RR_OP(add, x18, x20, x31, 0x80003fff, 0x00004000, 0x7fffffff, x7, 8, x10)

# opcode: add ; op1:x23; op2:x13; dest:x6; op1val:0x00008000;  op2val:0x00000800
TEST_RR_OP(add, x6, x23, x13, 0x8800, 0x00008000, 0x00000800, x7, 12, x10)

# opcode: add ; op1:x4; op2:x2; dest:x13; op1val:0x00010000;  op2val:0x00000040
TEST_RR_OP(add, x13, x4, x2, 0x10040, 0x00010000, 0x00000040, x7, 16, x10)

# opcode: add ; op1:x29; op2:x5; dest:x15; op1val:0x00020000;  op2val:0x00000007
TEST_RR_OP(add, x15, x29, x5, 0x20007, 0x00020000, 0x00000007, x7, 20, x10)

# opcode: add ; op1:x17; op2:x25; dest:x4; op1val:0x00040000;  op2val:0x00000001
TEST_RR_OP(add, x4, x17, x25, 0x40001, 0x00040000, 0x00000001, x7, 24, x10)

# opcode: add ; op1:x25; op2:x8; dest:x16; op1val:0x00080000;  op2val:0x00000008
TEST_RR_OP(add, x16, x25, x8, 0x80008, 0x00080000, 0x00000008, x7, 28, x10)

# opcode: add ; op1:x28; op2:x12; dest:x3; op1val:0x00100000;  op2val:0xffffbfff
TEST_RR_OP(add, x3, x28, x12, 0xfbfff, 0x00100000, 0xffffbfff, x7, 32, x10)

# opcode: add ; op1:x14; op2:x26; dest:x9; op1val:0x00200000;  op2val:0x00000001
TEST_RR_OP(add, x9, x14, x26, 0x200001, 0x00200000, 0x00000001, x7, 36, x10)

# opcode: add ; op1:x19; op2:x3; dest:x5; op1val:0x00400000;  op2val:0xfffffff7
TEST_RR_OP(add, x5, x19, x3, 0x3ffff7, 0x00400000, 0xfffffff7, x7, 40, x10)

# opcode: add ; op1:x22; op2:x16; dest:x19; op1val:0x00800000;  op2val:0x00100000
TEST_RR_OP(add, x19, x22, x16, 0x900000, 0x00800000, 0x00100000, x7, 44, x10)

# opcode: add ; op1:x2; op2:x6; dest:x31; op1val:0x01000000;  op2val:0xfffffffa
TEST_RR_OP(add, x31, x2, x6, 0xfffffa, 0x01000000, 0xfffffffa, x7, 48, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00200000
TEST_RR_OP(add, x12, x10, x11, 0x2200000, 0x02000000, 0x00200000, x7, 52, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x40000000
TEST_RR_OP(add, x12, x10, x11, 0x44000000, 0x04000000, 0x40000000, x7, 56, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000005
TEST_RR_OP(add, x12, x10, x11, 0x8000005, 0x08000000, 0x00000005, x7, 60, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x08000000
TEST_RR_OP(add, x12, x10, x11, 0x28000000, 0x20000000, 0x08000000, x7, 64, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000003
TEST_RR_OP(add, x12, x10, x11, 0x40000003, 0x40000000, 0x00000003, x7, 68, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00010000
TEST_RR_OP(add, x12, x10, x11, 0xfffe, 0xfffffffe, 0x00010000, x7, 72, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00004000
TEST_RR_OP(add, x12, x10, x11, 0x3ffd, 0xfffffffd, 0x00004000, x7, 76, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000020
TEST_RR_OP(add, x12, x10, x11, 0x1b, 0xfffffffb, 0x00000020, x7, 80, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00001000
TEST_RR_OP(add, x12, x10, x11, 0xff7, 0xfffffff7, 0x00001000, x7, 84, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000006
TEST_RR_OP(add, x12, x10, x11, 0xfffffff5, 0xffffffef, 0x00000006, x7, 88, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xffdfffff
TEST_RR_OP(add, x12, x10, x11, 0xffdfffde, 0xffffffdf, 0xffdfffff, x7, 92, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffffb
TEST_RR_OP(add, x12, x10, x11, 0xffffffba, 0xffffffbf, 0xfffffffb, x7, 96, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00040000
TEST_RR_OP(add, x12, x10, x11, 0x3ff7f, 0xffffff7f, 0x00040000, x7, 100, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff6;  op2val:0xfffbffff
TEST_RR_OP(add, x12, x10, x11, 0xfffbfff5, 0xfffffff6, 0xfffbffff, x7, 104, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xfff7ffff
TEST_RR_OP(add, x12, x10, x11, 0x7ff7fffe, 0x7fffffff, 0xfff7ffff, x7, 108, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffbfffff
TEST_RR_OP(add, x12, x10, x11, 0xfbbffffe, 0xfbffffff, 0xffbfffff, x7, 112, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xff7fffff
TEST_RR_OP(add, x12, x10, x11, 0xf77ffffe, 0xf7ffffff, 0xff7fffff, x7, 116, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xfeffffff
TEST_RR_OP(add, x12, x10, x11, 0xff0007ff, 0x00000800, 0xfeffffff, x7, 120, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xfdffffff
TEST_RR_OP(add, x12, x10, x11, 0xfdbffffe, 0xffbfffff, 0xfdffffff, x7, 124, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0xfbffffff
TEST_RR_OP(add, x12, x10, x11, 0xfc000005, 0x00000006, 0xfbffffff, x7, 128, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xf7ffffff
TEST_RR_OP(add, x12, x10, x11, 0xf7fbfffe, 0xfffbffff, 0xf7ffffff, x7, 132, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xefffffff
TEST_RR_OP(add, x12, x10, x11, 0xf00007ff, 0x00000800, 0xefffffff, x7, 136, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xbfffffff
TEST_RR_OP(add, x12, x10, x11, 0xc0000007, 0x00000008, 0xbfffffff, x7, 140, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x55555555
TEST_RR_OP(add, x12, x10, x11, 0x55595555, 0x00040000, 0x55555555, x7, 144, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0xaaaaaaaa
TEST_RR_OP(add, x12, x10, x11, 0xaaaaaaac, 0x00000002, 0xaaaaaaaa, x7, 148, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffefe, 0xfffffeff, 0xffffffff, x7, 152, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfffdffff
TEST_RR_OP(add, x12, x10, x11, 0xfffdfdfe, 0xfffffdff, 0xfffdffff, x7, 156, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xffffbfff
TEST_RR_OP(add, x12, x10, x11, 0xffffbbfe, 0xfffffbff, 0xffffbfff, x7, 160, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffdffff
TEST_RR_OP(add, x12, x10, x11, 0xfffdf7fe, 0xfffff7ff, 0xfffdffff, x7, 164, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x80000000
TEST_RR_OP(add, x12, x10, x11, 0x7fffefff, 0xffffefff, 0x80000000, x7, 168, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00004000
TEST_RR_OP(add, x12, x10, x11, 0x1fff, 0xffffdfff, 0x00004000, x7, 172, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfffffbff
TEST_RR_OP(add, x12, x10, x11, 0xffffbbfe, 0xffffbfff, 0xfffffbff, x7, 176, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xffffffef
TEST_RR_OP(add, x12, x10, x11, 0xffff7fee, 0xffff7fff, 0xffffffef, x7, 180, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xffffffbf
TEST_RR_OP(add, x12, x10, x11, 0xfffeffbe, 0xfffeffff, 0xffffffbf, x7, 184, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xffffff7f
TEST_RR_OP(add, x12, x10, x11, 0xfffdff7e, 0xfffdffff, 0xffffff7f, x7, 188, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xff7fffff
TEST_RR_OP(add, x12, x10, x11, 0xff77fffe, 0xfff7ffff, 0xff7fffff, x7, 192, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x20000000
TEST_RR_OP(add, x12, x10, x11, 0x1fefffff, 0xffefffff, 0x20000000, x7, 196, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xaaaaaaaa
TEST_RR_OP(add, x12, x10, x11, 0xa9aaaaa9, 0xfeffffff, 0xaaaaaaaa, x7, 200, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfffeffff
TEST_RR_OP(add, x12, x10, x11, 0xfdfefffe, 0xfdffffff, 0xfffeffff, x7, 204, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xff7fffff
TEST_RR_OP(add, x12, x10, x11, 0xef7ffffe, 0xefffffff, 0xff7fffff, x7, 208, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00040000
TEST_RR_OP(add, x12, x10, x11, 0xe003ffff, 0xdfffffff, 0x00040000, x7, 212, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00010000
TEST_RR_OP(add, x12, x10, x11, 0xc000ffff, 0xbfffffff, 0x00010000, x7, 216, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x20000000
TEST_RR_OP(add, x12, x10, x11, 0x75555555, 0x55555555, 0x20000000, x7, 220, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00008000
TEST_RR_OP(add, x12, x10, x11, 0xaaab2aaa, 0xaaaaaaaa, 0x00008000, x7, 224, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0x00000004
TEST_RR_OP(add, x12, x10, x11, 0xfffffffd, 0xfffffff9, 0x00000004, x7, 228, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00000080
TEST_RR_OP(add, x12, x10, x11, 0x7f, 0xffffffff, 0x00000080, x7, 232, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000100
TEST_RR_OP(add, x12, x10, x11, 0xfffe00ff, 0xfffdffff, 0x00000100, x7, 236, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00080000
TEST_RR_OP(add, x12, x10, x11, 0x80200, 0x00000200, 0x00080000, x7, 240, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00400000
TEST_RR_OP(add, x12, x10, x11, 0xff3fffff, 0xfeffffff, 0x00400000, x7, 244, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00800000
TEST_RR_OP(add, x12, x10, x11, 0x7ffeff, 0xfffffeff, 0x00800000, x7, 248, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x01000000
TEST_RR_OP(add, x12, x10, x11, 0xff7fff, 0xffff7fff, 0x01000000, x7, 252, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x02000000
TEST_RR_OP(add, x12, x10, x11, 0xffffffff, 0xfdffffff, 0x02000000, x7, 256, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x04000000
TEST_RR_OP(add, x12, x10, x11, 0xffffffff, 0xfbffffff, 0x04000000, x7, 260, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xfffffffe
TEST_RR_OP(add, x12, x10, x11, 0xfffffe, 0x01000000, 0xfffffffe, x7, 264, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xffffffdf
TEST_RR_OP(add, x12, x10, x11, 0xffffdf, 0x01000000, 0xffffffdf, x7, 268, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffffeff
TEST_RR_OP(add, x12, x10, x11, 0xffffeefe, 0xffffefff, 0xfffffeff, x7, 272, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000200
TEST_RR_OP(add, x12, x10, x11, 0x1df, 0xffffffdf, 0x00000200, x7, 276, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffffdff
TEST_RR_OP(add, x12, x10, x11, 0xfffffdff, 0x00000000, 0xfffffdff, x7, 280, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000400
TEST_RR_OP(add, x12, x10, x11, 0xf80003ff, 0xf7ffffff, 0x00000400, x7, 284, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xffffefff
TEST_RR_OP(add, x12, x10, x11, 0xffffebfe, 0xfffffbff, 0xffffefff, x7, 288, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0xffffdfff
TEST_RR_OP(add, x12, x10, x11, 0xffffe0ff, 0x00000100, 0xffffdfff, x7, 292, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xffff7fff
TEST_RR_OP(add, x12, x10, x11, 0xfeff7ffe, 0xfeffffff, 0xffff7fff, x7, 296, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000010
TEST_RR_OP(add, x12, x10, x11, 0x80000010, 0x80000000, 0x00000010, x7, 300, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffffffa
TEST_RR_OP(add, x12, x10, x11, 0xfffffffa, 0x00000000, 0xfffffffa, x7, 304, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xffdfffff
TEST_RR_OP(add, x12, x10, x11, 0x7fdffffe, 0x7fffffff, 0xffdfffff, x7, 308, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xdfffffff
TEST_RR_OP(add, x12, x10, x11, 0xe0000000, 0x00000001, 0xdfffffff, x7, 312, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x7fffffff
TEST_RR_OP(add, x12, x10, x11, 0x8fffffff, 0x10000000, 0x7fffffff, x7, 316, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xffefffff
TEST_RR_OP(add, x12, x10, x11, 0xfff00007, 0x00000008, 0xffefffff, x7, 320, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0x00020000
TEST_RR_OP(add, x12, x10, x11, 0x20020, 0x00000020, 0x00020000, x7, 324, x1)
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


signature_x7_0:
    .fill 82*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
