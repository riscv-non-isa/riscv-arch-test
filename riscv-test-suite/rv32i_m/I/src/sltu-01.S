
#This assembly file tests the sltu instruction of the RISC-V I extension for the sltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltu)

la x3,signature_x3_1

# opcode: sltu ; op1:x20; op2:x0; dest:x20; op1val:0x00000000;  op2val:0x00004000
TEST_RR_OP(sltu, x20, x20, x0, 0x1, 0x00000000, 0x00004000, x3, 0, x7)

# opcode: sltu ; op1:x10; op2:x10; dest:x25; op1val:0xffffffff;  op2val:0x02000000
TEST_RR_OP(sltu, x25, x10, x10, 0x0, 0xffffffff, 0x02000000, x3, 4, x7)

# opcode: sltu ; op1:x27; op2:x30; dest:x12; op1val:0x00000001;  op2val:0x7fffffff
TEST_RR_OP(sltu, x12, x27, x30, 0x1, 0x00000001, 0x7fffffff, x3, 8, x7)

# opcode: sltu ; op1:x14; op2:x14; dest:x14; op1val:0x00000005;  op2val:0x00000000
TEST_RR_OP(sltu, x14, x14, x14, 0x0, 0x00000005, 0x00000000, x3, 12, x7)

# opcode: sltu ; op1:x6; op2:x1; dest:x1; op1val:0x00000080;  op2val:0xffffffff
TEST_RR_OP(sltu, x1, x6, x1, 0x1, 0x00000080, 0xffffffff, x3, 16, x7)

# opcode: sltu ; op1:x25; op2:x19; dest:x22; op1val:0x00020000;  op2val:0x00000001
TEST_RR_OP(sltu, x22, x25, x19, 0x0, 0x00020000, 0x00000001, x3, 20, x7)

# opcode: sltu ; op1:x2; op2:x9; dest:x8; op1val:0x00000012;  op2val:0x00000012
TEST_RR_OP(sltu, x8, x2, x9, 0x0, 0x00000012, 0x00000012, x3, 24, x7)

# opcode: sltu ; op1:x23; op2:x26; dest:x15; op1val:0x00000002;  op2val:0x00000800
TEST_RR_OP(sltu, x15, x23, x26, 0x1, 0x00000002, 0x00000800, x3, 28, x7)

# opcode: sltu ; op1:x22; op2:x24; dest:x5; op1val:0x00000004;  op2val:0xffffffef
TEST_RR_OP(sltu, x5, x22, x24, 0x1, 0x00000004, 0xffffffef, x3, 32, x7)

# opcode: sltu ; op1:x11; op2:x12; dest:x10; op1val:0x00000008;  op2val:0xffffffef
TEST_RR_OP(sltu, x10, x11, x12, 0x1, 0x00000008, 0xffffffef, x3, 36, x7)

# opcode: sltu ; op1:x21; op2:x31; dest:x30; op1val:0x00000010;  op2val:0x80000000
TEST_RR_OP(sltu, x30, x21, x31, 0x1, 0x00000010, 0x80000000, x3, 40, x7)

# opcode: sltu ; op1:x13; op2:x18; dest:x2; op1val:0x00000020;  op2val:0x00200000
TEST_RR_OP(sltu, x2, x13, x18, 0x1, 0x00000020, 0x00200000, x3, 44, x7)

# opcode: sltu ; op1:x16; op2:x5; dest:x26; op1val:0x00000040;  op2val:0xffffdfff
TEST_RR_OP(sltu, x26, x16, x5, 0x1, 0x00000040, 0xffffdfff, x3, 48, x7)

# opcode: sltu ; op1:x30; op2:x20; dest:x31; op1val:0x00000100;  op2val:0x00008000
TEST_RR_OP(sltu, x31, x30, x20, 0x1, 0x00000100, 0x00008000, x3, 52, x7)

# opcode: sltu ; op1:x9; op2:x16; dest:x17; op1val:0x00000200;  op2val:0xfffff7ff
TEST_RR_OP(sltu, x17, x9, x16, 0x1, 0x00000200, 0xfffff7ff, x3, 56, x7)

# opcode: sltu ; op1:x4; op2:x27; dest:x28; op1val:0x00000400;  op2val:0x0000000b
TEST_RR_OP(sltu, x28, x4, x27, 0x0, 0x00000400, 0x0000000b, x3, 60, x7)
la x14,signature_x14_0

# opcode: sltu ; op1:x17; op2:x23; dest:x29; op1val:0x00000800;  op2val:0x00004000
TEST_RR_OP(sltu, x29, x17, x23, 0x1, 0x00000800, 0x00004000, x14, 0, x10)

# opcode: sltu ; op1:x24; op2:x15; dest:x13; op1val:0x00001000;  op2val:0xfffffffd
TEST_RR_OP(sltu, x13, x24, x15, 0x1, 0x00001000, 0xfffffffd, x14, 4, x10)

# opcode: sltu ; op1:x31; op2:x17; dest:x16; op1val:0x00002000;  op2val:0xefffffff
TEST_RR_OP(sltu, x16, x31, x17, 0x1, 0x00002000, 0xefffffff, x14, 8, x10)

# opcode: sltu ; op1:x5; op2:x28; dest:x19; op1val:0x00004000;  op2val:0x00100000
TEST_RR_OP(sltu, x19, x5, x28, 0x1, 0x00004000, 0x00100000, x14, 12, x10)

# opcode: sltu ; op1:x26; op2:x6; dest:x9; op1val:0x00008000;  op2val:0x00000010
TEST_RR_OP(sltu, x9, x26, x6, 0x0, 0x00008000, 0x00000010, x14, 16, x10)

# opcode: sltu ; op1:x15; op2:x29; dest:x23; op1val:0x00010000;  op2val:0x00000040
TEST_RR_OP(sltu, x23, x15, x29, 0x0, 0x00010000, 0x00000040, x14, 20, x10)

# opcode: sltu ; op1:x3; op2:x22; dest:x0; op1val:0x00040000;  op2val:0x0000000d
TEST_RR_OP(sltu, x0, x3, x22, 0x0, 0x00040000, 0x0000000d, x14, 24, x10)

# opcode: sltu ; op1:x28; op2:x13; dest:x6; op1val:0x00080000;  op2val:0x00000001
TEST_RR_OP(sltu, x6, x28, x13, 0x0, 0x00080000, 0x00000001, x14, 28, x10)

# opcode: sltu ; op1:x18; op2:x7; dest:x27; op1val:0x00100000;  op2val:0x00020000
TEST_RR_OP(sltu, x27, x18, x7, 0x0, 0x00100000, 0x00020000, x14, 32, x10)

# opcode: sltu ; op1:x19; op2:x25; dest:x24; op1val:0x00200000;  op2val:0x00100000
TEST_RR_OP(sltu, x24, x19, x25, 0x0, 0x00200000, 0x00100000, x14, 36, x10)

# opcode: sltu ; op1:x0; op2:x21; dest:x4; op1val:0x00400000;  op2val:0xffffffbf
TEST_RR_OP(sltu, x4, x0, x21, 0x1, 0x00400000, 0xffffffbf, x14, 40, x10)

# opcode: sltu ; op1:x12; op2:x8; dest:x18; op1val:0x00800000;  op2val:0xfffff7ff
TEST_RR_OP(sltu, x18, x12, x8, 0x1, 0x00800000, 0xfffff7ff, x14, 44, x10)

# opcode: sltu ; op1:x1; op2:x4; dest:x11; op1val:0x01000000;  op2val:0xfffffbff
TEST_RR_OP(sltu, x11, x1, x4, 0x1, 0x01000000, 0xfffffbff, x14, 48, x10)

# opcode: sltu ; op1:x8; op2:x2; dest:x3; op1val:0x02000000;  op2val:0x7fffffff
TEST_RR_OP(sltu, x3, x8, x2, 0x1, 0x02000000, 0x7fffffff, x14, 52, x10)

# opcode: sltu ; op1:x29; op2:x11; dest:x21; op1val:0x04000000;  op2val:0x00000400
TEST_RR_OP(sltu, x21, x29, x11, 0x0, 0x04000000, 0x00000400, x14, 56, x2)

# opcode: sltu ; op1:x7; op2:x19; dest:x8; op1val:0x08000000;  op2val:0x00008000
TEST_RR_OP(sltu, x8, x7, x19, 0x0, 0x08000000, 0x00008000, x14, 60, x2)

# opcode: sltu ; op1:x16; op2:x3; dest:x10; op1val:0x10000000;  op2val:0x40000000
TEST_RR_OP(sltu, x10, x16, x3, 0x1, 0x10000000, 0x40000000, x14, 64, x2)
la x1,signature_x1_0

# opcode: sltu ; op1:x0; op2:x18; dest:x7; op1val:0x20000000;  op2val:0xdfffffff
TEST_RR_OP(sltu, x7, x0, x18, 0x1, 0x20000000, 0xdfffffff, x1, 0, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0xefffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x40000000, 0xefffffff, x1, 4, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x08000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x80000000, 0x08000000, x1, 8, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000080
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffe, 0x00000080, x1, 12, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x80000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffd, 0x80000000, x1, 16, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000006
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffb, 0x00000006, x1, 20, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x10000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffff7, 0x10000000, x1, 24, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000007
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffef, 0x00000007, x1, 28, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000013
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffdf, 0x00000013, x1, 32, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffff7
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffbf, 0xfffffff7, x1, 36, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000004
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffff7f, 0x00000004, x1, 40, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfffffeff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffeff, 0xfffffeff, x1, 44, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xffffbfff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffdff, 0xffffbfff, x1, 48, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xff7fffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x20000000, 0xff7fffff, x1, 52, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfeffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffefff, 0xfeffffff, x1, 56, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfdffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffbf, 0xfdffffff, x1, 60, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0xfbffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000080, 0xfbffffff, x1, 64, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0xf7ffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000010, 0xf7ffffff, x1, 68, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xbfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xefffffff, 0xbfffffff, x1, 72, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000f;  op2val:0x55555555
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000f, 0x55555555, x1, 76, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xaaaaaaaa
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000008, 0xaaaaaaaa, x1, 80, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00200000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffbff, 0x00200000, x1, 84, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xffefffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffff7ff, 0xffefffff, x1, 88, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffffff7
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffdfff, 0xfffffff7, x1, 92, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x7fffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffbfff, 0x7fffffff, x1, 96, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xffffefff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffff7fff, 0xffffefff, x1, 100, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00800000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffeffff, 0x00800000, x1, 104, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xfffffffe
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffdffff, 0xfffffffe, x1, 108, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffbffff, 0xffffffff, x1, 112, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xffffbfff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfff7ffff, 0xffffbfff, x1, 116, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffffbff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffefffff, 0xfffffbff, x1, 120, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x01000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffdfffff, 0x01000000, x1, 124, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x08000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffbfffff, 0x08000000, x1, 128, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfffffeff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xff7fffff, 0xfffffeff, x1, 132, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xfffffff7
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfeffffff, 0xfffffff7, x1, 136, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfffbffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfdffffff, 0xfffbffff, x1, 140, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000003
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfbffffff, 0x00000003, x1, 144, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00008000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xf7ffffff, 0x00008000, x1, 148, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfffffffe
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xdfffffff, 0xfffffffe, x1, 152, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000011
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xbfffffff, 0x00000011, x1, 156, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000040
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x7fffffff, 0x00000040, x1, 160, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffefffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x55555555, 0xffefffff, x1, 164, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00200000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xaaaaaaaa, 0x00200000, x1, 168, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000002
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfeffffff, 0x00000002, x1, 172, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000008
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfff7ffff, 0x00000008, x1, 176, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00000020
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00000400, 0x00000020, x1, 180, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000100
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfeffffff, 0x00000100, x1, 184, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000200
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfff7ffff, 0x00000200, x1, 188, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000a;  op2val:0x00001000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000a, 0x00001000, x1, 192, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0x00002000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000400, 0x00002000, x1, 196, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00010000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffdff, 0x00010000, x1, 200, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x04000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x20000000, 0x04000000, x1, 204, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x20000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xaaaaaaaa, 0x20000000, x1, 208, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xfffffffb
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000800, 0xfffffffb, x1, 212, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000a;  op2val:0xffffffdf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000a, 0xffffffdf, x1, 216, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0xffbfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00002000, 0xffbfffff, x1, 220, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00080000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00400000, 0x00080000, x1, 224, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0xffffff7f
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00010000, 0xffffff7f, x1, 228, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0xfffffdff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00020000, 0xfffffdff, x1, 232, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xffff7fff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfeffffff, 0xffff7fff, x1, 236, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xfffeffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000008, 0xfffeffff, x1, 240, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xfffdffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffbfffff, 0xfffdffff, x1, 244, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00040000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000001, 0x00040000, x1, 248, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0xfff7ffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000002, 0xfff7ffff, x1, 252, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xffdfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffeffff, 0xffdfffff, x1, 256, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00400000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000200, 0x00400000, x1, 260, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00004000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000000, 0x00004000, x1, 264, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x02000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffff, 0x02000000, x1, 268, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x00000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00000005, 0x00000000, x1, 272, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0xffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000080, 0xffffffff, x1, 276, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x0000000d
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00040000, 0x0000000d, x1, 280, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0xffffffbf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00400000, 0xffffffbf, x1, 284, x2)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xdfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x20000000, 0xdfffffff, x1, 288, x2)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x3_1:
    .fill 16*(XLEN/32),4,0xafacadee


signature_x14_0:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 73*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
