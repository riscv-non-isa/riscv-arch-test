
#This assembly file tests the mul instruction of the RISC-V M extension for the mul covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mul)

la x18,signature_x18_1

# opcode: mul ; op1:x15; op2:x15; dest:x10; op1val:0x80000000;  op2val:0x00200000
TEST_RR_OP(mul, x10, x15, x15, 0x00000000, 0x80000000, 0x00200000, x18, 0, x19)

# opcode: mul ; op1:x24; op2:x16; dest:x24; op1val:0x00000000;  op2val:0x00000040
TEST_RR_OP(mul, x24, x24, x16, 0x00000000, 0x00000000, 0x00000040, x18, 4, x19)

# opcode: mul ; op1:x3; op2:x3; dest:x3; op1val:0x7fffffff;  op2val:0xfffffbff
TEST_RR_OP(mul, x3, x3, x3, 0x00000000, 0x7fffffff, 0xfffffbff, x18, 8, x19)

# opcode: mul ; op1:x8; op2:x1; dest:x16; op1val:0x00000001;  op2val:0x00002000
TEST_RR_OP(mul, x16, x8, x1, 0x00000000, 0x00000001, 0x00002000, x18, 12, x19)

# opcode: mul ; op1:x26; op2:x14; dest:x14; op1val:0x08000000;  op2val:0x80000000
TEST_RR_OP(mul, x14, x26, x14, 0x00000000, 0x08000000, 0x80000000, x18, 16, x19)

# opcode: mul ; op1:x16; op2:x13; dest:x12; op1val:0x00001000;  op2val:0x00000000
TEST_RR_OP(mul, x12, x16, x13, 0x00000000, 0x00001000, 0x00000000, x18, 20, x19)

# opcode: mul ; op1:x29; op2:x7; dest:x30; op1val:0x00000006;  op2val:0x7fffffff
TEST_RR_OP(mul, x30, x29, x7, 0x00000000, 0x00000006, 0x7fffffff, x18, 24, x19)

# opcode: mul ; op1:x11; op2:x26; dest:x4; op1val:0xfffffffc;  op2val:0x00000001
TEST_RR_OP(mul, x4, x11, x26, 0x00000000, 0xfffffffc, 0x00000001, x18, 28, x19)

# opcode: mul ; op1:x23; op2:x4; dest:x6; op1val:0xffffffdf;  op2val:0xffffefff
TEST_RR_OP(mul, x6, x23, x4, 0x00000000, 0xffffffdf, 0xffffefff, x18, 32, x19)

# opcode: mul ; op1:x0; op2:x23; dest:x2; op1val:0xfffffffc;  op2val:0xfffffffc
TEST_RR_OP(mul, x2, x0, x23, 0x00000000, 0xfffffffc, 0xfffffffc, x18, 36, x19)

# opcode: mul ; op1:x4; op2:x22; dest:x23; op1val:0x00000002;  op2val:0xefffffff
TEST_RR_OP(mul, x23, x4, x22, 0x00000000, 0x00000002, 0xefffffff, x18, 40, x19)

# opcode: mul ; op1:x20; op2:x5; dest:x31; op1val:0x00000004;  op2val:0xfbffffff
TEST_RR_OP(mul, x31, x20, x5, 0x00000000, 0x00000004, 0xfbffffff, x18, 44, x19)

# opcode: mul ; op1:x1; op2:x27; dest:x0; op1val:0x00000008;  op2val:0xfffffffc
TEST_RR_OP(mul, x0, x1, x27, 0x00000000, 0x00000008, 0xfffffffc, x18, 48, x19)

# opcode: mul ; op1:x30; op2:x28; dest:x11; op1val:0x00000010;  op2val:0xfffffffa
TEST_RR_OP(mul, x11, x30, x28, 0x00000000, 0x00000010, 0xfffffffa, x18, 52, x19)

# opcode: mul ; op1:x5; op2:x10; dest:x29; op1val:0x00000020;  op2val:0x00002000
TEST_RR_OP(mul, x29, x5, x10, 0x00000000, 0x00000020, 0x00002000, x18, 56, x19)

# opcode: mul ; op1:x10; op2:x11; dest:x20; op1val:0x00000040;  op2val:0xfdffffff
TEST_RR_OP(mul, x20, x10, x11, 0x00000000, 0x00000040, 0xfdffffff, x18, 60, x19)

# opcode: mul ; op1:x17; op2:x21; dest:x9; op1val:0x00000080;  op2val:0xffefffff
TEST_RR_OP(mul, x9, x17, x21, 0x00000000, 0x00000080, 0xffefffff, x18, 64, x19)
la x3,signature_x3_0

# opcode: mul ; op1:x25; op2:x20; dest:x22; op1val:0x00000100;  op2val:0xfffffbff
TEST_RR_OP(mul, x22, x25, x20, 0x00000000, 0x00000100, 0xfffffbff, x3, 0, x4)

# opcode: mul ; op1:x9; op2:x6; dest:x15; op1val:0x00000200;  op2val:0x3fffffff
TEST_RR_OP(mul, x15, x9, x6, 0x00000000, 0x00000200, 0x3fffffff, x3, 4, x4)

# opcode: mul ; op1:x31; op2:x18; dest:x7; op1val:0x00000400;  op2val:0x00000020
TEST_RR_OP(mul, x7, x31, x18, 0x00000000, 0x00000400, 0x00000020, x3, 8, x4)

# opcode: mul ; op1:x19; op2:x12; dest:x28; op1val:0x00000800;  op2val:0xfffffffb
TEST_RR_OP(mul, x28, x19, x12, 0x00000000, 0x00000800, 0xfffffffb, x3, 12, x4)

# opcode: mul ; op1:x22; op2:x8; dest:x26; op1val:0x00002000;  op2val:0x00400000
TEST_RR_OP(mul, x26, x22, x8, 0x00000000, 0x00002000, 0x00400000, x3, 16, x4)

# opcode: mul ; op1:x14; op2:x31; dest:x21; op1val:0x00004000;  op2val:0xdfffffff
TEST_RR_OP(mul, x21, x14, x31, 0x00000000, 0x00004000, 0xdfffffff, x3, 20, x4)

# opcode: mul ; op1:x2; op2:x9; dest:x27; op1val:0x00008000;  op2val:0xfbffffff
TEST_RR_OP(mul, x27, x2, x9, 0x00000000, 0x00008000, 0xfbffffff, x3, 24, x4)

# opcode: mul ; op1:x18; op2:x24; dest:x13; op1val:0x00010000;  op2val:0xfffffbff
TEST_RR_OP(mul, x13, x18, x24, 0x00000000, 0x00010000, 0xfffffbff, x3, 28, x4)

# opcode: mul ; op1:x12; op2:x29; dest:x5; op1val:0x00020000;  op2val:0x20000000
TEST_RR_OP(mul, x5, x12, x29, 0x00000000, 0x00020000, 0x20000000, x3, 32, x4)

# opcode: mul ; op1:x28; op2:x30; dest:x17; op1val:0x00040000;  op2val:0x80000000
TEST_RR_OP(mul, x17, x28, x30, 0x00000000, 0x00040000, 0x80000000, x3, 36, x4)

# opcode: mul ; op1:x6; op2:x17; dest:x18; op1val:0x00080000;  op2val:0x00400000
TEST_RR_OP(mul, x18, x6, x17, 0x00000000, 0x00080000, 0x00400000, x3, 40, x4)

# opcode: mul ; op1:x27; op2:x19; dest:x1; op1val:0x00100000;  op2val:0x00000003
TEST_RR_OP(mul, x1, x27, x19, 0x00000000, 0x00100000, 0x00000003, x3, 44, x4)

# opcode: mul ; op1:x21; op2:x0; dest:x19; op1val:0x00200000;  op2val:0xfeffffff
TEST_RR_OP(mul, x19, x21, x0, 0x00000000, 0x00200000, 0xfeffffff, x3, 48, x4)

# opcode: mul ; op1:x7; op2:x25; dest:x8; op1val:0x00400000;  op2val:0x01000000
TEST_RR_OP(mul, x8, x7, x25, 0x00000000, 0x00400000, 0x01000000, x3, 52, x4)

# opcode: mul ; op1:x13; op2:x2; dest:x25; op1val:0x00800000;  op2val:0xffff7fff
TEST_RR_OP(mul, x25, x13, x2, 0x00000000, 0x00800000, 0xffff7fff, x3, 56, x4)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x40000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x01000000, 0x40000000, x3, 60, x4)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00400000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x02000000, 0x00400000, x3, 64, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x40000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x04000000, 0x40000000, x3, 68, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x04000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x10000000, 0x04000000, x3, 72, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00800000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x20000000, 0x00800000, x3, 76, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x40000000, 0xffffffff, x3, 80, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffeffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffe, 0xfffeffff, x3, 84, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xffffffef
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffd, 0xffffffef, x3, 88, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfffffffa
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffb, 0xfffffffa, x3, 92, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x20000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffff7, 0x20000000, x3, 96, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xffffdfff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffffef, 0xffffdfff, x3, 100, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000005
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffffbf, 0x00000005, x3, 104, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xfffffffc
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffff7f, 0xfffffffc, x3, 108, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xffff7fff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffeff, 0xffff7fff, x3, 112, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfffffffd
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffdff, 0xfffffffd, x3, 116, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfffbffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xff7fffff, 0xfffbffff, x3, 120, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0xfff7ffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffa, 0xfff7ffff, x3, 124, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xffdfffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfff7ffff, 0xffdfffff, x3, 128, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0xffbfffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00040000, 0xffbfffff, x3, 132, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xff7fffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfdffffff, 0xff7fffff, x3, 136, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff6;  op2val:0xf7ffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffff6, 0xf7ffffff, x3, 140, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0xbfffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000020, 0xbfffffff, x3, 144, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0x55555555
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00002000, 0x55555555, x3, 148, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xaaaaaaaa
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000400, 0xaaaaaaaa, x3, 152, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xffffff7f
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffbff, 0xffffff7f, x3, 156, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000005
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffff7ff, 0x00000005, x3, 160, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xefffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffefff, 0xefffffff, x3, 164, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000400
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffdfff, 0x00000400, x3, 168, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xffefffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffbfff, 0xffefffff, x3, 172, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x02000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffff7fff, 0x02000000, x3, 176, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x10000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffeffff, 0x10000000, x3, 180, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x80000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffdffff, 0x80000000, x3, 184, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000004
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffbffff, 0x00000004, x3, 188, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000004
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffefffff, 0x00000004, x3, 192, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00100000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffdfffff, 0x00100000, x3, 196, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000001
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffbfffff, 0x00000001, x3, 200, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000003
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfeffffff, 0x00000003, x3, 204, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfffff7ff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfbffffff, 0xfffff7ff, x3, 208, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xfffffffb
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xf7ffffff, 0xfffffffb, x3, 212, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xffffefff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xefffffff, 0xffffefff, x3, 216, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfff7ffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xdfffffff, 0xfff7ffff, x3, 220, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfffffff8
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xbfffffff, 0xfffffff8, x3, 224, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000006
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x55555555, 0x00000006, x3, 228, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xbfffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0xbfffffff, x3, 232, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000002
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffdfff, 0x00000002, x3, 236, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000008
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffd, 0x00000008, x3, 240, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x00000010
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000002, 0x00000010, x3, 244, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000080
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00400000, 0x00000080, x3, 248, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000100
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffffdf, 0x00000100, x3, 252, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000200
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000001, 0x00000200, x3, 256, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00000800
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000008, 0x00000800, x3, 260, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00001000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x80000000, 0x00001000, x3, 264, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00040000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffff7f, 0x00040000, x3, 268, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00080000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffff7, 0x00080000, x3, 272, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x08000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffbfffff, 0x08000000, x3, 276, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffffffe
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000000, 0xfffffffe, x3, 280, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xfffdffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfff7ffff, 0xfffdffff, x3, 284, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00004000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00400000, 0x00004000, x3, 288, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xfffffff7
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x7fffffff, 0xfffffff7, x3, 292, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xffffffdf
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x20000000, 0xffffffdf, x3, 296, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xffffffbf
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00200000, 0xffffffbf, x3, 300, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0xfffffeff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00020000, 0xfffffeff, x3, 304, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xfffffdff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffff7f, 0xfffffdff, x3, 308, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xffffbfff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffb, 0xffffbfff, x3, 312, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x00008000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000002, 0x00008000, x3, 316, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0x00010000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00008000, 0x00010000, x3, 320, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x3fffffff;  op2val:0x00020000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x3fffffff, 0x00020000, x3, 324, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00200000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x80000000, 0x00200000, x3, 328, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00000040
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000000, 0x00000040, x3, 332, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xfffffbff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x7fffffff, 0xfffffbff, x3, 336, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x80000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x08000000, 0x80000000, x3, 340, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xfffffffc
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffc, 0xfffffffc, x3, 344, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xfffffffc
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000008, 0xfffffffc, x3, 348, x1)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xfeffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00200000, 0xfeffffff, x3, 352, x1)
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

signature_x18_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x18_1:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 89*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
