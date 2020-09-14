
#This assembly file tests the and instruction of the RISC-V I extension for the and covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",and)

la x5,signature_x5_1

# opcode: and ; op1:x3; op2:x8; dest:x8; op1val:0x80000000;  op2val:0x02000000
TEST_RR_OP(and, x8, x3, x8, 0x0, 0x80000000, 0x02000000, x5, 0, x16)

# opcode: and ; op1:x27; op2:x26; dest:x27; op1val:0x00000000;  op2val:0xffefffff
TEST_RR_OP(and, x27, x27, x26, 0x0, 0x00000000, 0xffefffff, x5, 4, x16)

# opcode: and ; op1:x15; op2:x15; dest:x15; op1val:0x7fffffff;  op2val:0x00000002
TEST_RR_OP(and, x15, x15, x15, 0x2, 0x7fffffff, 0x00000002, x5, 8, x16)

# opcode: and ; op1:x14; op2:x14; dest:x25; op1val:0x00000001;  op2val:0x00000004
TEST_RR_OP(and, x25, x14, x14, 0x0, 0x00000001, 0x00000004, x5, 12, x16)

# opcode: and ; op1:x9; op2:x24; dest:x30; op1val:0x01000000;  op2val:0x80000000
TEST_RR_OP(and, x30, x9, x24, 0x0, 0x01000000, 0x80000000, x5, 16, x16)

# opcode: and ; op1:x4; op2:x12; dest:x3; op1val:0x00000080;  op2val:0x00000000
TEST_RR_OP(and, x3, x4, x12, 0x0, 0x00000080, 0x00000000, x5, 20, x16)

# opcode: and ; op1:x6; op2:x10; dest:x13; op1val:0xfffdffff;  op2val:0x7fffffff
TEST_RR_OP(and, x13, x6, x10, 0x7ffdffff, 0xfffdffff, 0x7fffffff, x5, 24, x16)

# opcode: and ; op1:x1; op2:x28; dest:x17; op1val:0x00000080;  op2val:0x00000001
TEST_RR_OP(and, x17, x1, x28, 0x0, 0x00000080, 0x00000001, x5, 28, x16)

# opcode: and ; op1:x21; op2:x20; dest:x31; op1val:0xffff7fff;  op2val:0xffffefff
TEST_RR_OP(and, x31, x21, x20, 0xffff6fff, 0xffff7fff, 0xffffefff, x5, 32, x16)

# opcode: and ; op1:x2; op2:x23; dest:x1; op1val:0x00002000;  op2val:0x00002000
TEST_RR_OP(and, x1, x2, x23, 0x2000, 0x00002000, 0x00002000, x5, 36, x16)

# opcode: and ; op1:x25; op2:x17; dest:x20; op1val:0x00000002;  op2val:0x00000200
TEST_RR_OP(and, x20, x25, x17, 0x0, 0x00000002, 0x00000200, x5, 40, x16)

# opcode: and ; op1:x17; op2:x11; dest:x2; op1val:0x00000004;  op2val:0x00000007
TEST_RR_OP(and, x2, x17, x11, 0x4, 0x00000004, 0x00000007, x5, 44, x16)

# opcode: and ; op1:x28; op2:x13; dest:x18; op1val:0x00000008;  op2val:0x01000000
TEST_RR_OP(and, x18, x28, x13, 0x0, 0x00000008, 0x01000000, x5, 48, x16)

# opcode: and ; op1:x22; op2:x7; dest:x26; op1val:0x00000010;  op2val:0x00800000
TEST_RR_OP(and, x26, x22, x7, 0x0, 0x00000010, 0x00800000, x5, 52, x16)

# opcode: and ; op1:x30; op2:x27; dest:x29; op1val:0x00000020;  op2val:0xfffff7ff
TEST_RR_OP(and, x29, x30, x27, 0x20, 0x00000020, 0xfffff7ff, x5, 56, x13)
la x15,signature_x15_0

# opcode: and ; op1:x20; op2:x3; dest:x10; op1val:0x00000040;  op2val:0x00400000
TEST_RR_OP(and, x10, x20, x3, 0x0, 0x00000040, 0x00400000, x15, 0, x13)

# opcode: and ; op1:x29; op2:x31; dest:x11; op1val:0x00000100;  op2val:0x08000000
TEST_RR_OP(and, x11, x29, x31, 0x0, 0x00000100, 0x08000000, x15, 4, x13)

# opcode: and ; op1:x8; op2:x0; dest:x24; op1val:0x00000200;  op2val:0x00000004
TEST_RR_OP(and, x24, x8, x0, 0x0, 0x00000200, 0x00000004, x15, 8, x13)

# opcode: and ; op1:x7; op2:x9; dest:x16; op1val:0x00000400;  op2val:0xffffefff
TEST_RR_OP(and, x16, x7, x9, 0x400, 0x00000400, 0xffffefff, x15, 12, x13)

# opcode: and ; op1:x16; op2:x29; dest:x19; op1val:0x00000800;  op2val:0x00000200
TEST_RR_OP(and, x19, x16, x29, 0x0, 0x00000800, 0x00000200, x15, 16, x13)

# opcode: and ; op1:x18; op2:x30; dest:x23; op1val:0x00001000;  op2val:0xffffefff
TEST_RR_OP(and, x23, x18, x30, 0x0, 0x00001000, 0xffffefff, x15, 20, x13)

# opcode: and ; op1:x31; op2:x16; dest:x0; op1val:0x00004000;  op2val:0x3fffffff
TEST_RR_OP(and, x0, x31, x16, 0x4000, 0x00004000, 0x3fffffff, x15, 24, x13)

# opcode: and ; op1:x0; op2:x5; dest:x21; op1val:0x00008000;  op2val:0x3fffffff
TEST_RR_OP(and, x21, x0, x5, 0x8000, 0x00008000, 0x3fffffff, x15, 28, x13)

# opcode: and ; op1:x23; op2:x18; dest:x4; op1val:0x00010000;  op2val:0x00000008
TEST_RR_OP(and, x4, x23, x18, 0x0, 0x00010000, 0x00000008, x15, 32, x13)

# opcode: and ; op1:x19; op2:x25; dest:x5; op1val:0x00020000;  op2val:0x00008000
TEST_RR_OP(and, x5, x19, x25, 0x0, 0x00020000, 0x00008000, x15, 36, x13)

# opcode: and ; op1:x24; op2:x2; dest:x6; op1val:0x00040000;  op2val:0x00001000
TEST_RR_OP(and, x6, x24, x2, 0x0, 0x00040000, 0x00001000, x15, 40, x13)

# opcode: and ; op1:x11; op2:x4; dest:x9; op1val:0x00080000;  op2val:0xdfffffff
TEST_RR_OP(and, x9, x11, x4, 0x80000, 0x00080000, 0xdfffffff, x15, 44, x13)

# opcode: and ; op1:x10; op2:x22; dest:x12; op1val:0x00100000;  op2val:0x00000010
TEST_RR_OP(and, x12, x10, x22, 0x0, 0x00100000, 0x00000010, x15, 48, x13)

# opcode: and ; op1:x26; op2:x1; dest:x14; op1val:0x00200000;  op2val:0x00000009
TEST_RR_OP(and, x14, x26, x1, 0x0, 0x00200000, 0x00000009, x15, 52, x13)

# opcode: and ; op1:x12; op2:x6; dest:x28; op1val:0x00400000;  op2val:0xdfffffff
TEST_RR_OP(and, x28, x12, x6, 0x400000, 0x00400000, 0xdfffffff, x15, 56, x2)

# opcode: and ; op1:x5; op2:x19; dest:x7; op1val:0x00800000;  op2val:0xffffffff
TEST_RR_OP(and, x7, x5, x19, 0x800000, 0x00800000, 0xffffffff, x15, 60, x2)

# opcode: and ; op1:x13; op2:x21; dest:x22; op1val:0x02000000;  op2val:0xffffdfff
TEST_RR_OP(and, x22, x13, x21, 0x2000000, 0x02000000, 0xffffdfff, x15, 64, x2)
la x1,signature_x1_0

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xffffff7f
TEST_RR_OP(and, x12, x10, x11, 0x4000000, 0x04000000, 0xffffff7f, x1, 0, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffffff9
TEST_RR_OP(and, x12, x10, x11, 0x8000000, 0x08000000, 0xfffffff9, x1, 4, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xffff7fff
TEST_RR_OP(and, x12, x10, x11, 0x10000000, 0x10000000, 0xffff7fff, x1, 8, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000001
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x20000000, 0x00000001, x1, 12, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfffdffff
TEST_RR_OP(and, x12, x10, x11, 0x40000000, 0x40000000, 0xfffdffff, x1, 16, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffffd
TEST_RR_OP(and, x12, x10, x11, 0xfffffffc, 0xfffffffe, 0xfffffffd, x1, 20, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x02000000
TEST_RR_OP(and, x12, x10, x11, 0x2000000, 0xfffffffd, 0x02000000, x1, 24, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x04000000
TEST_RR_OP(and, x12, x10, x11, 0x4000000, 0xfffffffb, 0x04000000, x1, 28, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xffffdfff
TEST_RR_OP(and, x12, x10, x11, 0xffffdff7, 0xfffffff7, 0xffffdfff, x1, 32, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xffffffff
TEST_RR_OP(and, x12, x10, x11, 0xffffffef, 0xffffffef, 0xffffffff, x1, 36, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x7fffffff
TEST_RR_OP(and, x12, x10, x11, 0x7fffffdf, 0xffffffdf, 0x7fffffff, x1, 40, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0xffffffbf, 0x00000000, x1, 44, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00040000
TEST_RR_OP(and, x12, x10, x11, 0x40000, 0xffffff7f, 0x00040000, x1, 48, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xfffbffff
TEST_RR_OP(and, x12, x10, x11, 0x200000, 0x00200000, 0xfffbffff, x1, 52, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xfff7ffff
TEST_RR_OP(and, x12, x10, x11, 0x8, 0x00000008, 0xfff7ffff, x1, 56, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xffdfffff
TEST_RR_OP(and, x12, x10, x11, 0xffdffdff, 0xfffffdff, 0xffdfffff, x1, 60, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xffbfffff
TEST_RR_OP(and, x12, x10, x11, 0xffbfffdf, 0xffffffdf, 0xffbfffff, x1, 64, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xff7fffff
TEST_RR_OP(and, x12, x10, x11, 0xff77ffff, 0xfff7ffff, 0xff7fffff, x1, 68, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xfeffffff
TEST_RR_OP(and, x12, x10, x11, 0xaaaaaaaa, 0xaaaaaaaa, 0xfeffffff, x1, 72, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xfdffffff
TEST_RR_OP(and, x12, x10, x11, 0xf5ffffff, 0xf7ffffff, 0xfdffffff, x1, 76, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfbffffff
TEST_RR_OP(and, x12, x10, x11, 0xfbfffbff, 0xfffffbff, 0xfbffffff, x1, 80, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0xf7ffffff
TEST_RR_OP(and, x12, x10, x11, 0x1000, 0x00001000, 0xf7ffffff, x1, 84, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0xefffffff
TEST_RR_OP(and, x12, x10, x11, 0x3, 0x00000003, 0xefffffff, x1, 88, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xbfffffff
TEST_RR_OP(and, x12, x10, x11, 0x8, 0x00000008, 0xbfffffff, x1, 92, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0x55555555
TEST_RR_OP(and, x12, x10, x11, 0x55555554, 0xfffffffc, 0x55555555, x1, 96, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0xaaaaaaaa
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00040000, 0xaaaaaaaa, x1, 100, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00002000
TEST_RR_OP(and, x12, x10, x11, 0x2000, 0xfffffeff, 0x00002000, x1, 104, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00020000
TEST_RR_OP(and, x12, x10, x11, 0x20000, 0xfffff7ff, 0x00020000, x1, 108, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00000008
TEST_RR_OP(and, x12, x10, x11, 0x8, 0xffffefff, 0x00000008, x1, 112, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0xffffdfff, 0x00000000, x1, 116, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00004000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0xffffbfff, 0x00004000, x1, 120, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00040000
TEST_RR_OP(and, x12, x10, x11, 0x40000, 0xfffeffff, 0x00040000, x1, 124, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xffffbfff
TEST_RR_OP(and, x12, x10, x11, 0xfffbbfff, 0xfffbffff, 0xffffbfff, x1, 128, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x55555555
TEST_RR_OP(and, x12, x10, x11, 0x55455555, 0xffefffff, 0x55555555, x1, 132, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xffdfffff
TEST_RR_OP(and, x12, x10, x11, 0xffdfffff, 0xffdfffff, 0xffdfffff, x1, 136, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000009
TEST_RR_OP(and, x12, x10, x11, 0x9, 0xffbfffff, 0x00000009, x1, 140, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfffffffe
TEST_RR_OP(and, x12, x10, x11, 0xff7ffffe, 0xff7fffff, 0xfffffffe, x1, 144, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xf7ffffff
TEST_RR_OP(and, x12, x10, x11, 0xf6ffffff, 0xfeffffff, 0xf7ffffff, x1, 148, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfffffffd
TEST_RR_OP(and, x12, x10, x11, 0xfdfffffd, 0xfdffffff, 0xfffffffd, x1, 152, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffffffbf
TEST_RR_OP(and, x12, x10, x11, 0xfbffffbf, 0xfbffffff, 0xffffffbf, x1, 156, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00200000
TEST_RR_OP(and, x12, x10, x11, 0x200000, 0xefffffff, 0x00200000, x1, 160, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00100000
TEST_RR_OP(and, x12, x10, x11, 0x100000, 0xdfffffff, 0x00100000, x1, 164, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfffffff6
TEST_RR_OP(and, x12, x10, x11, 0xbffffff6, 0xbfffffff, 0xfffffff6, x1, 168, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000100
TEST_RR_OP(and, x12, x10, x11, 0x100, 0x55555555, 0x00000100, x1, 172, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000020
TEST_RR_OP(and, x12, x10, x11, 0x20, 0xefffffff, 0x00000020, x1, 176, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x00000040
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00040000, 0x00000040, x1, 180, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0x00000080
TEST_RR_OP(and, x12, x10, x11, 0x80, 0xfffffff8, 0x00000080, x1, 184, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00080000
TEST_RR_OP(and, x12, x10, x11, 0x80000, 0xffffff7f, 0x00080000, x1, 188, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x10000000
TEST_RR_OP(and, x12, x10, x11, 0x10000000, 0xffefffff, 0x10000000, x1, 192, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0x20000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000040, 0x20000000, x1, 196, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x40000000
TEST_RR_OP(and, x12, x10, x11, 0x40000000, 0xffbfffff, 0x40000000, x1, 200, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xfffffffb
TEST_RR_OP(and, x12, x10, x11, 0x800, 0x00000800, 0xfffffffb, x1, 204, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xfffffff7
TEST_RR_OP(and, x12, x10, x11, 0xfefffff7, 0xfeffffff, 0xfffffff7, x1, 208, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0xffffffef
TEST_RR_OP(and, x12, x10, x11, 0xffffffef, 0xffffffff, 0xffffffef, x1, 212, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0xffffffdf
TEST_RR_OP(and, x12, x10, x11, 0x100, 0x00000100, 0xffffffdf, x1, 216, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffffeff
TEST_RR_OP(and, x12, x10, x11, 0xffeffeff, 0xffefffff, 0xfffffeff, x1, 220, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00010000
TEST_RR_OP(and, x12, x10, x11, 0x10000, 0xff7fffff, 0x00010000, x1, 224, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0xfffffdff
TEST_RR_OP(and, x12, x10, x11, 0xfffffdfa, 0xfffffffa, 0xfffffdff, x1, 228, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000400
TEST_RR_OP(and, x12, x10, x11, 0x400, 0xefffffff, 0x00000400, x1, 232, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffffbff
TEST_RR_OP(and, x12, x10, x11, 0xfffff3ff, 0xfffff7ff, 0xfffffbff, x1, 236, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000800
TEST_RR_OP(and, x12, x10, x11, 0x800, 0xbfffffff, 0x00000800, x1, 240, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xfffeffff
TEST_RR_OP(and, x12, x10, x11, 0xf7feffff, 0xf7ffffff, 0xfffeffff, x1, 244, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x02000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x80000000, 0x02000000, x1, 248, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xffefffff
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000000, 0xffefffff, x1, 252, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000002
TEST_RR_OP(and, x12, x10, x11, 0x2, 0x7fffffff, 0x00000002, x1, 256, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000004
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000001, 0x00000004, x1, 260, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00000004
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x00000200, 0x00000004, x1, 264, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x3fffffff
TEST_RR_OP(and, x12, x10, x11, 0x4000, 0x00004000, 0x3fffffff, x1, 268, x2)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0x3fffffff
TEST_RR_OP(and, x12, x10, x11, 0x8000, 0x00008000, 0x3fffffff, x1, 272, x2)
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
    .fill 15*(XLEN/32),4,0xafacadee


signature_x15_0:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 69*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
