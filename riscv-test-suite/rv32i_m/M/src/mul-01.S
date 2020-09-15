
#This assembly file tests the mul instruction of the RISC-V M extension for the mul covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mul)

la x2,signature_x2_1

# opcode: mul ; op1:x15; op2:x15; dest:x25; op1val:0x80000000;  op2val:0x00000005
TEST_RR_OP(mul, x25, x15, x15, 0x00000000, 0x80000000, 0x00000005, x2, 0, x22)

# opcode: mul ; op1:x13; op2:x30; dest:x13; op1val:0x00000000;  op2val:0xfffffff6
TEST_RR_OP(mul, x13, x13, x30, 0x00000000, 0x00000000, 0xfffffff6, x2, 4, x22)

# opcode: mul ; op1:x17; op2:x28; dest:x28; op1val:0x7fffffff;  op2val:0x20000000
TEST_RR_OP(mul, x28, x17, x28, 0x00000000, 0x7fffffff, 0x20000000, x2, 8, x22)

# opcode: mul ; op1:x19; op2:x19; dest:x19; op1val:0x00000001;  op2val:0x00000020
TEST_RR_OP(mul, x19, x19, x19, 0x00000000, 0x00000001, 0x00000020, x2, 12, x22)

# opcode: mul ; op1:x3; op2:x9; dest:x7; op1val:0xfffffff6;  op2val:0x80000000
TEST_RR_OP(mul, x7, x3, x9, 0x00000000, 0xfffffff6, 0x80000000, x2, 16, x22)

# opcode: mul ; op1:x5; op2:x13; dest:x11; op1val:0xfffffffe;  op2val:0x00000000
TEST_RR_OP(mul, x11, x5, x13, 0x00000000, 0xfffffffe, 0x00000000, x2, 20, x22)

# opcode: mul ; op1:x16; op2:x4; dest:x26; op1val:0xffff7fff;  op2val:0x7fffffff
TEST_RR_OP(mul, x26, x16, x4, 0x00000000, 0xffff7fff, 0x7fffffff, x2, 24, x22)

# opcode: mul ; op1:x21; op2:x20; dest:x18; op1val:0xaaaaaaaa;  op2val:0x00000001
TEST_RR_OP(mul, x18, x21, x20, 0x00000000, 0xaaaaaaaa, 0x00000001, x2, 28, x22)

# opcode: mul ; op1:x31; op2:x0; dest:x1; op1val:0x04000000;  op2val:0xfffffeff
TEST_RR_OP(mul, x1, x31, x0, 0x00000000, 0x04000000, 0xfffffeff, x2, 32, x22)

# opcode: mul ; op1:x12; op2:x31; dest:x0; op1val:0x00000080;  op2val:0x00000080
TEST_RR_OP(mul, x0, x12, x31, 0x00000000, 0x00000080, 0x00000080, x2, 36, x22)

# opcode: mul ; op1:x18; op2:x1; dest:x10; op1val:0x00000002;  op2val:0x00200000
TEST_RR_OP(mul, x10, x18, x1, 0x00000000, 0x00000002, 0x00200000, x2, 40, x22)

# opcode: mul ; op1:x28; op2:x5; dest:x8; op1val:0x00000004;  op2val:0x01000000
TEST_RR_OP(mul, x8, x28, x5, 0x00000000, 0x00000004, 0x01000000, x2, 44, x22)

# opcode: mul ; op1:x14; op2:x7; dest:x30; op1val:0x00000008;  op2val:0xfff7ffff
TEST_RR_OP(mul, x30, x14, x7, 0x00000000, 0x00000008, 0xfff7ffff, x2, 48, x22)

# opcode: mul ; op1:x4; op2:x25; dest:x20; op1val:0x00000010;  op2val:0xc0000000
TEST_RR_OP(mul, x20, x4, x25, 0x00000000, 0x00000010, 0xc0000000, x2, 52, x22)

# opcode: mul ; op1:x1; op2:x18; dest:x23; op1val:0x00000020;  op2val:0xfbffffff
TEST_RR_OP(mul, x23, x1, x18, 0x00000000, 0x00000020, 0xfbffffff, x2, 56, x22)

# opcode: mul ; op1:x6; op2:x29; dest:x5; op1val:0x00000040;  op2val:0xff7fffff
TEST_RR_OP(mul, x5, x6, x29, 0x00000000, 0x00000040, 0xff7fffff, x2, 60, x22)

# opcode: mul ; op1:x24; op2:x22; dest:x21; op1val:0x00000100;  op2val:0x02000000
TEST_RR_OP(mul, x21, x24, x22, 0x00000000, 0x00000100, 0x02000000, x2, 64, x5)
la x1,signature_x1_0

# opcode: mul ; op1:x20; op2:x24; dest:x9; op1val:0x00000200;  op2val:0xffffff7f
TEST_RR_OP(mul, x9, x20, x24, 0x00000000, 0x00000200, 0xffffff7f, x1, 0, x5)

# opcode: mul ; op1:x11; op2:x23; dest:x15; op1val:0x00000400;  op2val:0x7fffffff
TEST_RR_OP(mul, x15, x11, x23, 0x00000000, 0x00000400, 0x7fffffff, x1, 4, x5)

# opcode: mul ; op1:x7; op2:x26; dest:x22; op1val:0x00000800;  op2val:0x00000002
TEST_RR_OP(mul, x22, x7, x26, 0x00000000, 0x00000800, 0x00000002, x1, 8, x5)

# opcode: mul ; op1:x8; op2:x14; dest:x3; op1val:0x00001000;  op2val:0x00000003
TEST_RR_OP(mul, x3, x8, x14, 0x00000000, 0x00001000, 0x00000003, x1, 12, x5)

# opcode: mul ; op1:x30; op2:x6; dest:x14; op1val:0x00002000;  op2val:0xfffffffb
TEST_RR_OP(mul, x14, x30, x6, 0x00000000, 0x00002000, 0xfffffffb, x1, 16, x5)

# opcode: mul ; op1:x26; op2:x21; dest:x17; op1val:0x00004000;  op2val:0xfffffffc
TEST_RR_OP(mul, x17, x26, x21, 0x00000000, 0x00004000, 0xfffffffc, x1, 20, x5)

# opcode: mul ; op1:x22; op2:x3; dest:x31; op1val:0x00008000;  op2val:0x00000010
TEST_RR_OP(mul, x31, x22, x3, 0x00000000, 0x00008000, 0x00000010, x1, 24, x5)

# opcode: mul ; op1:x25; op2:x17; dest:x12; op1val:0x00010000;  op2val:0x00000007
TEST_RR_OP(mul, x12, x25, x17, 0x00000000, 0x00010000, 0x00000007, x1, 28, x5)

# opcode: mul ; op1:x23; op2:x12; dest:x27; op1val:0x00020000;  op2val:0x00000800
TEST_RR_OP(mul, x27, x23, x12, 0x00000000, 0x00020000, 0x00000800, x1, 32, x5)

# opcode: mul ; op1:x0; op2:x27; dest:x16; op1val:0x00040000;  op2val:0x00000080
TEST_RR_OP(mul, x16, x0, x27, 0x00000000, 0x00040000, 0x00000080, x1, 36, x5)

# opcode: mul ; op1:x27; op2:x16; dest:x24; op1val:0x00080000;  op2val:0xffffff7f
TEST_RR_OP(mul, x24, x27, x16, 0x00000000, 0x00080000, 0xffffff7f, x1, 40, x5)

# opcode: mul ; op1:x9; op2:x10; dest:x29; op1val:0x00100000;  op2val:0x00000001
TEST_RR_OP(mul, x29, x9, x10, 0x00000000, 0x00100000, 0x00000001, x1, 44, x5)

# opcode: mul ; op1:x2; op2:x8; dest:x4; op1val:0x00200000;  op2val:0x00000008
TEST_RR_OP(mul, x4, x2, x8, 0x00000000, 0x00200000, 0x00000008, x1, 48, x5)

# opcode: mul ; op1:x29; op2:x2; dest:x6; op1val:0x00400000;  op2val:0x00040000
TEST_RR_OP(mul, x6, x29, x2, 0x00000000, 0x00400000, 0x00040000, x1, 52, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x2; op1val:0x00800000;  op2val:0x80000000
TEST_RR_OP(mul, x2, x10, x11, 0x00000000, 0x00800000, 0x80000000, x1, 56, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000800
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x01000000, 0x00000800, x1, 60, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xffffefff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x02000000, 0xffffefff, x1, 64, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000007
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x08000000, 0x00000007, x1, 68, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000800
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x10000000, 0x00000800, x1, 72, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x3fffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x20000000, 0x3fffffff, x1, 76, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xfbffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x40000000, 0xfbffffff, x1, 80, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00010000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffd, 0x00010000, x1, 84, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfffffff7
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffb, 0xfffffff7, x1, 88, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffffff8
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffff7, 0xfffffff8, x1, 92, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000006
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffffef, 0x00000006, x1, 96, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000002
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffffdf, 0x00000002, x1, 100, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffffd
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffffbf, 0xfffffffd, x1, 104, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000100
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffff7f, 0x00000100, x1, 108, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xc0000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffeff, 0xc0000000, x1, 112, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xfffbffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xefffffff, 0xfffbffff, x1, 116, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0xffefffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000100, 0xffefffff, x1, 120, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffdfffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfbffffff, 0xffdfffff, x1, 124, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xffbfffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x01000000, 0xffbfffff, x1, 128, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfeffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffd, 0xfeffffff, x1, 132, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xfdffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x80000000, 0xfdffffff, x1, 136, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0xf7ffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000010, 0xf7ffffff, x1, 140, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xefffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffefff, 0xefffffff, x1, 144, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xdfffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xefffffff, 0xdfffffff, x1, 148, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0xbfffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00010000, 0xbfffffff, x1, 152, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x55555555
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000008, 0x55555555, x1, 156, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xaaaaaaaa
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x02000000, 0xaaaaaaaa, x1, 160, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000005
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffdff, 0x00000005, x1, 164, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xfffff7ff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffbff, 0xfffff7ff, x1, 168, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xdfffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xdfffffff, x1, 172, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffffff9
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffdfff, 0xfffffff9, x1, 176, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfdffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffbfff, 0xfdffffff, x1, 180, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000007
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffeffff, 0x00000007, x1, 184, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xfff7ffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffdffff, 0xfff7ffff, x1, 188, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffbffff, 0xffffffff, x1, 192, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000010
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x00000010, x1, 196, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000005
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffefffff, 0x00000005, x1, 200, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000005
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffdfffff, 0x00000005, x1, 204, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xfdffffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffbfffff, 0xfdffffff, x1, 208, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00002000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xff7fffff, 0x00002000, x1, 212, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00200000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfeffffff, 0x00200000, x1, 216, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x10000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfdffffff, 0x10000000, x1, 220, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x20000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xf7ffffff, 0x20000000, x1, 224, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfffffff9
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xdfffffff, 0xfffffff9, x1, 228, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00004000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xbfffffff, 0x00004000, x1, 232, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x55555555, 0x00000000, x1, 236, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000004
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffb, 0x00000004, x1, 240, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000040
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xdfffffff, 0x00000040, x1, 244, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x00000200
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00001000, 0x00000200, x1, 248, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000400
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffbfffff, 0x00000400, x1, 252, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00001000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000008, 0x00001000, x1, 256, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00008000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffffd, 0x00008000, x1, 260, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0x00020000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000020, 0x00020000, x1, 264, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00080000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfdffffff, 0x00080000, x1, 268, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00100000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffff7f, 0x00100000, x1, 272, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x3fffffff;  op2val:0x00400000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x3fffffff, 0x00400000, x1, 276, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00800000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000003, 0x00800000, x1, 280, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x04000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffffffef, 0x04000000, x1, 284, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff6;  op2val:0x08000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffff6, 0x08000000, x1, 288, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x3fffffff;  op2val:0x40000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x3fffffff, 0x40000000, x1, 292, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xfffffffe
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000005, 0xfffffffe, x1, 296, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0xffffffef
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00001000, 0xffffffef, x1, 300, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffffffdf
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfbffffff, 0xffffffdf, x1, 304, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xffffffbf
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000005, 0xffffffbf, x1, 308, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffffdff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfffffff7, 0xfffffdff, x1, 312, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0xfffffbff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00400000, 0xfffffbff, x1, 316, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xffffdfff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000800, 0xffffdfff, x1, 320, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xffffbfff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xffdfffff, 0xffffbfff, x1, 324, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xffff7fff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000008, 0xffff7fff, x1, 328, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfffeffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0xfdffffff, 0xfffeffff, x1, 332, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xfffdffff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000400, 0xfffdffff, x1, 336, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000005
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x80000000, 0x00000005, x1, 340, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffffff6
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000000, 0xfffffff6, x1, 344, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x20000000
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x7fffffff, 0x20000000, x1, 348, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000020
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000001, 0x00000020, x1, 352, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xfffffeff
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x04000000, 0xfffffeff, x1, 356, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0x00000080
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00000080, 0x00000080, x1, 360, x5)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x00000080
TEST_RR_OP(mul, x12, x10, x11, 0x00000000, 0x00040000, 0x00000080, x1, 364, x5)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x2_1:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 92*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
