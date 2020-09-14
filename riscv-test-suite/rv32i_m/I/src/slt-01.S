
#This assembly file tests the slt instruction of the RISC-V I extension for the slt covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slt)

la x7,signature_x7_1

# opcode: slt ; op1:x22; op2:x1; dest:x1; op1val:0x80000000;  op2val:0xfffffffd
TEST_RR_OP(slt, x1, x22, x1, 0x1, 0x80000000, 0xfffffffd, x7, 0, x18)

# opcode: slt ; op1:x15; op2:x12; dest:x15; op1val:0x00000000;  op2val:0xfffff7ff
TEST_RR_OP(slt, x15, x15, x12, 0x0, 0x00000000, 0xfffff7ff, x7, 4, x18)

# opcode: slt ; op1:x26; op2:x26; dest:x26; op1val:0x7fffffff;  op2val:0x00200000
TEST_RR_OP(slt, x26, x26, x26, 0x0, 0x7fffffff, 0x00200000, x7, 8, x18)

# opcode: slt ; op1:x31; op2:x31; dest:x21; op1val:0x00000001;  op2val:0x08000000
TEST_RR_OP(slt, x21, x31, x31, 0x1, 0x00000001, 0x08000000, x7, 12, x18)

# opcode: slt ; op1:x30; op2:x28; dest:x13; op1val:0xffffffef;  op2val:0x80000000
TEST_RR_OP(slt, x13, x30, x28, 0x0, 0xffffffef, 0x80000000, x7, 16, x18)

# opcode: slt ; op1:x23; op2:x17; dest:x27; op1val:0xfffff7ff;  op2val:0x00000000
TEST_RR_OP(slt, x27, x23, x17, 0x1, 0xfffff7ff, 0x00000000, x7, 20, x18)

# opcode: slt ; op1:x14; op2:x3; dest:x4; op1val:0x02000000;  op2val:0x7fffffff
TEST_RR_OP(slt, x4, x14, x3, 0x1, 0x02000000, 0x7fffffff, x7, 24, x18)

# opcode: slt ; op1:x13; op2:x9; dest:x16; op1val:0x00080000;  op2val:0x00000001
TEST_RR_OP(slt, x16, x13, x9, 0x0, 0x00080000, 0x00000001, x7, 28, x18)

# opcode: slt ; op1:x12; op2:x19; dest:x22; op1val:0x00020000;  op2val:0xffffefff
TEST_RR_OP(slt, x22, x12, x19, 0x0, 0x00020000, 0xffffefff, x7, 32, x18)

# opcode: slt ; op1:x5; op2:x6; dest:x3; op1val:0xaaaaaaaa;  op2val:0x00000003
TEST_RR_OP(slt, x3, x5, x6, 0x1, 0xaaaaaaaa, 0x00000003, x7, 36, x18)

# opcode: slt ; op1:x6; op2:x16; dest:x19; op1val:0xfff7ffff;  op2val:0xfff7ffff
TEST_RR_OP(slt, x19, x6, x16, 0x0, 0xfff7ffff, 0xfff7ffff, x7, 40, x18)

# opcode: slt ; op1:x28; op2:x24; dest:x6; op1val:0x00000002;  op2val:0xf7ffffff
TEST_RR_OP(slt, x6, x28, x24, 0x0, 0x00000002, 0xf7ffffff, x7, 44, x18)

# opcode: slt ; op1:x19; op2:x15; dest:x2; op1val:0x00000004;  op2val:0xefffffff
TEST_RR_OP(slt, x2, x19, x15, 0x0, 0x00000004, 0xefffffff, x7, 48, x18)

# opcode: slt ; op1:x8; op2:x5; dest:x28; op1val:0x00000008;  op2val:0xf7ffffff
TEST_RR_OP(slt, x28, x8, x5, 0x0, 0x00000008, 0xf7ffffff, x7, 52, x18)

# opcode: slt ; op1:x24; op2:x10; dest:x8; op1val:0x00000010;  op2val:0xfffffffe
TEST_RR_OP(slt, x8, x24, x10, 0x0, 0x00000010, 0xfffffffe, x7, 56, x18)

# opcode: slt ; op1:x16; op2:x8; dest:x11; op1val:0x00000020;  op2val:0xfffffff8
TEST_RR_OP(slt, x11, x16, x8, 0x0, 0x00000020, 0xfffffff8, x7, 60, x18)

# opcode: slt ; op1:x29; op2:x14; dest:x31; op1val:0x00000040;  op2val:0xffffffdf
TEST_RR_OP(slt, x31, x29, x14, 0x0, 0x00000040, 0xffffffdf, x7, 64, x18)

# opcode: slt ; op1:x9; op2:x21; dest:x18; op1val:0x00000080;  op2val:0x00000010
TEST_RR_OP(slt, x18, x9, x21, 0x0, 0x00000080, 0x00000010, x7, 68, x8)
la x6,signature_x6_0

# opcode: slt ; op1:x11; op2:x7; dest:x24; op1val:0x00000100;  op2val:0x00400000
TEST_RR_OP(slt, x24, x11, x7, 0x1, 0x00000100, 0x00400000, x6, 0, x8)

# opcode: slt ; op1:x4; op2:x23; dest:x7; op1val:0x00000200;  op2val:0xfdffffff
TEST_RR_OP(slt, x7, x4, x23, 0x0, 0x00000200, 0xfdffffff, x6, 4, x8)

# opcode: slt ; op1:x0; op2:x30; dest:x20; op1val:0x00000400;  op2val:0x00080000
TEST_RR_OP(slt, x20, x0, x30, 0x1, 0x00000400, 0x00080000, x6, 8, x8)

# opcode: slt ; op1:x10; op2:x25; dest:x23; op1val:0x00000800;  op2val:0x00000006
TEST_RR_OP(slt, x23, x10, x25, 0x0, 0x00000800, 0x00000006, x6, 12, x8)

# opcode: slt ; op1:x1; op2:x22; dest:x0; op1val:0x00001000;  op2val:0x00000400
TEST_RR_OP(slt, x0, x1, x22, 0x0, 0x00001000, 0x00000400, x6, 16, x8)

# opcode: slt ; op1:x3; op2:x4; dest:x29; op1val:0x00002000;  op2val:0xfffffffb
TEST_RR_OP(slt, x29, x3, x4, 0x0, 0x00002000, 0xfffffffb, x6, 20, x8)

# opcode: slt ; op1:x17; op2:x0; dest:x14; op1val:0x00004000;  op2val:0xfffffdff
TEST_RR_OP(slt, x14, x17, x0, 0x0, 0x00004000, 0xfffffdff, x6, 24, x8)

# opcode: slt ; op1:x2; op2:x18; dest:x5; op1val:0x00008000;  op2val:0xfffffdff
TEST_RR_OP(slt, x5, x2, x18, 0x0, 0x00008000, 0xfffffdff, x6, 28, x8)

# opcode: slt ; op1:x27; op2:x11; dest:x9; op1val:0x00010000;  op2val:0xffefffff
TEST_RR_OP(slt, x9, x27, x11, 0x0, 0x00010000, 0xffefffff, x6, 32, x8)

# opcode: slt ; op1:x18; op2:x20; dest:x17; op1val:0x00040000;  op2val:0x40000000
TEST_RR_OP(slt, x17, x18, x20, 0x1, 0x00040000, 0x40000000, x6, 36, x8)

# opcode: slt ; op1:x21; op2:x27; dest:x12; op1val:0x00100000;  op2val:0x7fffffff
TEST_RR_OP(slt, x12, x21, x27, 0x1, 0x00100000, 0x7fffffff, x6, 40, x8)

# opcode: slt ; op1:x20; op2:x29; dest:x10; op1val:0x00200000;  op2val:0xffffffbf
TEST_RR_OP(slt, x10, x20, x29, 0x0, 0x00200000, 0xffffffbf, x6, 44, x8)

# opcode: slt ; op1:x7; op2:x2; dest:x25; op1val:0x00400000;  op2val:0x00000040
TEST_RR_OP(slt, x25, x7, x2, 0x0, 0x00400000, 0x00000040, x6, 48, x8)

# opcode: slt ; op1:x25; op2:x13; dest:x30; op1val:0x00800000;  op2val:0xfff7ffff
TEST_RR_OP(slt, x30, x25, x13, 0x0, 0x00800000, 0xfff7ffff, x6, 52, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xffffbfff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x01000000, 0xffffbfff, x6, 56, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00100000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x04000000, 0x00100000, x6, 60, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffffbff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x08000000, 0xfffffbff, x6, 64, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x40000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x10000000, 0x40000000, x6, 68, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000001
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x20000000, 0x00000001, x6, 72, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000001
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x40000000, 0x00000001, x6, 76, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000006
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffe, 0x00000006, x6, 80, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000007
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffd, 0x00000007, x6, 84, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xff7fffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffb, 0xff7fffff, x6, 88, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffff7ff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffff7, 0xfffff7ff, x6, 92, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfffbffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xff7fffff, 0xfffbffff, x6, 96, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xffdfffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00000800, 0xffdfffff, x6, 100, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xffbfffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfdffffff, 0xffbfffff, x6, 104, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xfeffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00000005, 0xfeffffff, x6, 108, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xfbffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xefffffff, 0xfbffffff, x6, 112, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xdfffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffb, 0xdfffffff, x6, 116, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xbfffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00000020, 0xbfffffff, x6, 120, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x55555555
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x10000000, 0x55555555, x6, 124, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xaaaaaaaa
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffff7, 0xaaaaaaaa, x6, 128, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xfffff7ff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffdf, 0xfffff7ff, x6, 132, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000800
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffbf, 0x00000800, x6, 136, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xc0000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffff7f, 0xc0000000, x6, 140, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x20000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffeff, 0x20000000, x6, 144, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000008
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffdff, 0x00000008, x6, 148, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000005
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffbff, 0x00000005, x6, 152, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00010000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffefff, 0x00010000, x6, 156, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffffbff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffdfff, 0xfffffbff, x6, 160, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000200
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffbfff, 0x00000200, x6, 164, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00800000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffff7fff, 0x00800000, x6, 168, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000001
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffeffff, 0x00000001, x6, 172, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000080
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffdffff, 0x00000080, x6, 176, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x3fffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffbffff, 0x3fffffff, x6, 180, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xffdfffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffefffff, 0xffdfffff, x6, 184, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00100000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffdfffff, 0x00100000, x6, 188, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xfffffff7
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffbfffff, 0xfffffff7, x6, 192, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000200
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfeffffff, 0x00000200, x6, 196, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xbfffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfbffffff, 0xbfffffff, x6, 200, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffbfffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xf7ffffff, 0xffbfffff, x6, 204, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x01000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xdfffffff, 0x01000000, x6, 208, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000200
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xbfffffff, 0x00000200, x6, 212, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xaaaaaaaa
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x55555555, 0xaaaaaaaa, x6, 216, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00000002
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffff, 0x00000002, x6, 220, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000004
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x04000000, 0x00000004, x6, 224, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000020
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffd, 0x00000020, x6, 228, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0x00000100
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x00000007, 0x00000100, x6, 232, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00001000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffbfff, 0x00001000, x6, 236, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x00040000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00200000, 0x00040000, x6, 240, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x02000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x20000000, 0x02000000, x6, 244, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x04000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffdff, 0x04000000, x6, 248, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0x10000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffa, 0x10000000, x6, 252, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0xffffdfff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00000002, 0xffffdfff, x6, 256, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0xffffffef
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00000009, 0xffffffef, x6, 260, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfffdffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffbfff, 0xfffdffff, x6, 264, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00008000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x00000003, 0x00008000, x6, 268, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0xffffff7f
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00080000, 0xffffff7f, x6, 272, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0xfffffeff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffa, 0xfffffeff, x6, 276, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x00002000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x00000005, 0x00002000, x6, 280, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0x00004000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xc0000000, 0x00004000, x6, 284, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xffff7fff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00200000, 0xffff7fff, x6, 288, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffeffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffdfffff, 0xfffeffff, x6, 292, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00020000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffdfffff, 0x00020000, x6, 296, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xfffffffd
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x80000000, 0xfffffffd, x6, 300, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffff7ff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00000000, 0xfffff7ff, x6, 304, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00200000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x7fffffff, 0x00200000, x6, 308, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x08000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x00000001, 0x08000000, x6, 312, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00080000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x00000400, 0x00080000, x6, 316, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x00000400
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00001000, 0x00000400, x6, 320, x8)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0xfffffdff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x00004000, 0xfffffdff, x6, 324, x8)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x7_1:
    .fill 18*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 82*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
