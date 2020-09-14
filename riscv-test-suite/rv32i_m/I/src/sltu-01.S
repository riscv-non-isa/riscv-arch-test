
#This assembly file tests the sltu instruction of the RISC-V I extension for the sltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltu)

la x9,signature_x9_1

# opcode: sltu ; op1:x30; op2:x1; dest:x1; op1val:0x00000000;  op2val:0xffffff7f
TEST_RR_OP(sltu, x1, x30, x1, 0x1, 0x00000000, 0xffffff7f, x9, 0, x13)

# opcode: sltu ; op1:x5; op2:x25; dest:x5; op1val:0xffffffff;  op2val:0x00000005
TEST_RR_OP(sltu, x5, x5, x25, 0x0, 0xffffffff, 0x00000005, x9, 4, x13)

# opcode: sltu ; op1:x12; op2:x12; dest:x12; op1val:0x00000001;  op2val:0x00080000
TEST_RR_OP(sltu, x12, x12, x12, 0x1, 0x00000001, 0x00080000, x9, 8, x13)

# opcode: sltu ; op1:x20; op2:x20; dest:x2; op1val:0xffefffff;  op2val:0x00000000
TEST_RR_OP(sltu, x2, x20, x20, 0x0, 0xffefffff, 0x00000000, x9, 12, x13)

# opcode: sltu ; op1:x0; op2:x21; dest:x7; op1val:0x08000000;  op2val:0xffffffff
TEST_RR_OP(sltu, x7, x0, x21, 0x1, 0x08000000, 0xffffffff, x9, 16, x13)

# opcode: sltu ; op1:x3; op2:x8; dest:x26; op1val:0x0000000c;  op2val:0x00000001
TEST_RR_OP(sltu, x26, x3, x8, 0x0, 0x0000000c, 0x00000001, x9, 20, x13)

# opcode: sltu ; op1:x10; op2:x31; dest:x14; op1val:0x00001000;  op2val:0x00001000
TEST_RR_OP(sltu, x14, x10, x31, 0x0, 0x00001000, 0x00001000, x9, 24, x13)

# opcode: sltu ; op1:x19; op2:x10; dest:x11; op1val:0x00000002;  op2val:0x00001000
TEST_RR_OP(sltu, x11, x19, x10, 0x1, 0x00000002, 0x00001000, x9, 28, x13)

# opcode: sltu ; op1:x27; op2:x17; dest:x10; op1val:0x00000004;  op2val:0xdfffffff
TEST_RR_OP(sltu, x10, x27, x17, 0x1, 0x00000004, 0xdfffffff, x9, 32, x13)

# opcode: sltu ; op1:x21; op2:x29; dest:x27; op1val:0x00000008;  op2val:0x00001000
TEST_RR_OP(sltu, x27, x21, x29, 0x1, 0x00000008, 0x00001000, x9, 36, x13)

# opcode: sltu ; op1:x22; op2:x15; dest:x6; op1val:0x00000010;  op2val:0xefffffff
TEST_RR_OP(sltu, x6, x22, x15, 0x1, 0x00000010, 0xefffffff, x9, 40, x13)

# opcode: sltu ; op1:x18; op2:x5; dest:x25; op1val:0x00000020;  op2val:0x04000000
TEST_RR_OP(sltu, x25, x18, x5, 0x1, 0x00000020, 0x04000000, x9, 44, x13)

# opcode: sltu ; op1:x24; op2:x22; dest:x20; op1val:0x00000040;  op2val:0x00000002
TEST_RR_OP(sltu, x20, x24, x22, 0x0, 0x00000040, 0x00000002, x9, 48, x13)

# opcode: sltu ; op1:x14; op2:x19; dest:x24; op1val:0x00000080;  op2val:0x00000001
TEST_RR_OP(sltu, x24, x14, x19, 0x0, 0x00000080, 0x00000001, x9, 52, x13)

# opcode: sltu ; op1:x7; op2:x2; dest:x28; op1val:0x00000100;  op2val:0x00008000
TEST_RR_OP(sltu, x28, x7, x2, 0x1, 0x00000100, 0x00008000, x9, 56, x13)

# opcode: sltu ; op1:x15; op2:x30; dest:x22; op1val:0x00000200;  op2val:0x00001000
TEST_RR_OP(sltu, x22, x15, x30, 0x1, 0x00000200, 0x00001000, x9, 60, x13)

# opcode: sltu ; op1:x26; op2:x4; dest:x17; op1val:0x00000400;  op2val:0xffffffbf
TEST_RR_OP(sltu, x17, x26, x4, 0x1, 0x00000400, 0xffffffbf, x9, 64, x13)

# opcode: sltu ; op1:x8; op2:x11; dest:x15; op1val:0x00000800;  op2val:0x0000000a
TEST_RR_OP(sltu, x15, x8, x11, 0x0, 0x00000800, 0x0000000a, x9, 68, x20)

# opcode: sltu ; op1:x28; op2:x27; dest:x16; op1val:0x00002000;  op2val:0xfffffffe
TEST_RR_OP(sltu, x16, x28, x27, 0x1, 0x00002000, 0xfffffffe, x9, 72, x20)
la x5,signature_x5_0

# opcode: sltu ; op1:x1; op2:x3; dest:x19; op1val:0x00004000;  op2val:0xffffffdf
TEST_RR_OP(sltu, x19, x1, x3, 0x1, 0x00004000, 0xffffffdf, x5, 0, x20)

# opcode: sltu ; op1:x25; op2:x24; dest:x30; op1val:0x00008000;  op2val:0x00004000
TEST_RR_OP(sltu, x30, x25, x24, 0x0, 0x00008000, 0x00004000, x5, 4, x20)

# opcode: sltu ; op1:x13; op2:x14; dest:x21; op1val:0x00010000;  op2val:0x00000007
TEST_RR_OP(sltu, x21, x13, x14, 0x0, 0x00010000, 0x00000007, x5, 8, x20)

# opcode: sltu ; op1:x2; op2:x13; dest:x4; op1val:0x00020000;  op2val:0xfbffffff
TEST_RR_OP(sltu, x4, x2, x13, 0x1, 0x00020000, 0xfbffffff, x5, 12, x20)

# opcode: sltu ; op1:x17; op2:x16; dest:x13; op1val:0x00040000;  op2val:0xfffff7ff
TEST_RR_OP(sltu, x13, x17, x16, 0x1, 0x00040000, 0xfffff7ff, x5, 16, x20)

# opcode: sltu ; op1:x31; op2:x28; dest:x29; op1val:0x00080000;  op2val:0x08000000
TEST_RR_OP(sltu, x29, x31, x28, 0x1, 0x00080000, 0x08000000, x5, 20, x20)

# opcode: sltu ; op1:x16; op2:x26; dest:x18; op1val:0x00100000;  op2val:0x0000000f
TEST_RR_OP(sltu, x18, x16, x26, 0x0, 0x00100000, 0x0000000f, x5, 24, x20)

# opcode: sltu ; op1:x29; op2:x0; dest:x3; op1val:0x00200000;  op2val:0x01000000
TEST_RR_OP(sltu, x3, x29, x0, 0x1, 0x00200000, 0x01000000, x5, 28, x20)

# opcode: sltu ; op1:x23; op2:x6; dest:x9; op1val:0x00400000;  op2val:0xffffffbf
TEST_RR_OP(sltu, x9, x23, x6, 0x1, 0x00400000, 0xffffffbf, x5, 32, x20)

# opcode: sltu ; op1:x11; op2:x18; dest:x8; op1val:0x00800000;  op2val:0x00000003
TEST_RR_OP(sltu, x8, x11, x18, 0x0, 0x00800000, 0x00000003, x5, 36, x20)

# opcode: sltu ; op1:x6; op2:x7; dest:x23; op1val:0x01000000;  op2val:0xfffeffff
TEST_RR_OP(sltu, x23, x6, x7, 0x1, 0x01000000, 0xfffeffff, x5, 40, x20)

# opcode: sltu ; op1:x4; op2:x9; dest:x0; op1val:0x02000000;  op2val:0x08000000
TEST_RR_OP(sltu, x0, x4, x9, 0x1, 0x02000000, 0x08000000, x5, 44, x20)

# opcode: sltu ; op1:x9; op2:x23; dest:x31; op1val:0x04000000;  op2val:0x00020000
TEST_RR_OP(sltu, x31, x9, x23, 0x0, 0x04000000, 0x00020000, x5, 48, x20)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000200
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x10000000, 0x00000200, x5, 52, x20)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xaaaaaaaa
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x20000000, 0xaaaaaaaa, x5, 56, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000007
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x40000000, 0x00000007, x5, 60, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xfffffdff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x80000000, 0xfffffdff, x5, 64, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffffd
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffe, 0xfffffffd, x5, 68, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xf7ffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffd, 0xf7ffffff, x5, 72, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xefffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffb, 0xefffffff, x5, 76, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffffffb
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffff7, 0xfffffffb, x5, 80, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x0000000d
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffef, 0x0000000d, x5, 84, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xaaaaaaaa
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffdf, 0xaaaaaaaa, x5, 88, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x02000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffbf, 0x02000000, x5, 92, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xefffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffff7f, 0xefffffff, x5, 96, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00800000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffeff, 0x00800000, x5, 100, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xffffffbf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffdff, 0xffffffbf, x5, 104, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000b;  op2val:0xff7fffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000b, 0xff7fffff, x5, 108, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfeffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffbfff, 0xfeffffff, x5, 112, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xfdffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x04000000, 0xfdffffff, x5, 116, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000b;  op2val:0xbfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000b, 0xbfffffff, x5, 120, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x7fffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000003, 0x7fffffff, x5, 124, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x55555555
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffdfffff, 0x55555555, x5, 128, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffbff, 0x00000000, x5, 132, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffdffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffff7ff, 0xfffdffff, x5, 136, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffeffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffefff, 0xfffeffff, x5, 140, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000008
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffdfff, 0x00000008, x5, 144, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xffffffef
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffff7fff, 0xffffffef, x5, 148, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xfffffdff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffeffff, 0xfffffdff, x5, 152, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x01000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffdffff, 0x01000000, x5, 156, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfff7ffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffbffff, 0xfff7ffff, x5, 160, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xffffdfff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfff7ffff, 0xffffdfff, x5, 164, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffbfffff, 0xffffffff, x5, 168, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00200000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xff7fffff, 0x00200000, x5, 172, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000200
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfeffffff, 0x00000200, x5, 176, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xfffeffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfdffffff, 0xfffeffff, x5, 180, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xaaaaaaaa
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfbffffff, 0xaaaaaaaa, x5, 184, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x20000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xf7ffffff, 0x20000000, x5, 188, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00080000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xefffffff, 0x00080000, x5, 192, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfdffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xdfffffff, 0xfdffffff, x5, 196, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x08000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xbfffffff, 0x08000000, x5, 200, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000013
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x7fffffff, 0x00000013, x5, 204, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000001
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x55555555, 0x00000001, x5, 208, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xaaaaaaaa, 0x00000000, x5, 212, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000004
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfeffffff, 0x00000004, x5, 216, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x00000010
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00040000, 0x00000010, x5, 220, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x00000020
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00001000, 0x00000020, x5, 224, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000040
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffeff, 0x00000040, x5, 228, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000080
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffdff, 0x00000080, x5, 232, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x00000100
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x00010000, 0x00000100, x5, 236, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000400
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffbfffff, 0x00000400, x5, 240, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000800
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x55555555, 0x00000800, x5, 244, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00002000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffdfff, 0x00002000, x5, 248, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0x00010000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000010, 0x00010000, x5, 252, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00040000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffff7f, 0x00040000, x5, 256, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x10000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfdffffff, 0x10000000, x5, 260, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x40000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffe, 0x40000000, x5, 264, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x80000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xf7ffffff, 0x80000000, x5, 268, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfffffff7
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffbffff, 0xfffffff7, x5, 272, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0xfffffeff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000100, 0xfffffeff, x5, 276, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xfffffbff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffeffff, 0xfffffbff, x5, 280, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0xffffefff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000040, 0xffffefff, x5, 284, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00100000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xdfffffff, 0x00100000, x5, 288, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xffffbfff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffbffff, 0xffffbfff, x5, 292, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000013;  op2val:0x00400000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000013, 0x00400000, x5, 296, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffff7fff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x55555555, 0xffff7fff, x5, 300, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfffbffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffdff, 0xfffbffff, x5, 304, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffefffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xf7ffffff, 0xffefffff, x5, 308, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0xffdfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00001000, 0xffdfffff, x5, 312, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xffbfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffefff, 0xffbfffff, x5, 316, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xffffff7f
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000000, 0xffffff7f, x5, 320, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00000005
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffff, 0x00000005, x5, 324, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00080000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00000001, 0x00080000, x5, 328, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffefffff, 0x00000000, x5, 332, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x08000000, 0xffffffff, x5, 336, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x01000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x00200000, 0x01000000, x5, 340, x1)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x08000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x02000000, 0x08000000, x5, 344, x1)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x9_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x5_0:
    .fill 87*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
