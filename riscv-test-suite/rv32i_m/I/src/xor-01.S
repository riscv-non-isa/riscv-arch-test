
#This assembly file tests the xor instruction of the RISC-V I extension for the xor covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xor)

la x2,signature_x2_1

# opcode: xor ; op1:x22; op2:x5; dest:x5; op1val:0x80000000;  op2val:0xffffdfff
TEST_RR_OP(xor, x5, x22, x5, 0x7fffdfff, 0x80000000, 0xffffdfff, x2, 0, x8)

# opcode: xor ; op1:x25; op2:x7; dest:x25; op1val:0x00000000;  op2val:0x02000000
TEST_RR_OP(xor, x25, x25, x7, 0x2000000, 0x00000000, 0x02000000, x2, 4, x8)

# opcode: xor ; op1:x16; op2:x16; dest:x16; op1val:0x7fffffff;  op2val:0x00000100
TEST_RR_OP(xor, x16, x16, x16, 0x7ffffeff, 0x7fffffff, 0x00000100, x2, 8, x8)

# opcode: xor ; op1:x9; op2:x9; dest:x1; op1val:0x00000001;  op2val:0xffefffff
TEST_RR_OP(xor, x1, x9, x9, 0xffeffffe, 0x00000001, 0xffefffff, x2, 12, x8)

# opcode: xor ; op1:x4; op2:x27; dest:x23; op1val:0x00000009;  op2val:0x80000000
TEST_RR_OP(xor, x23, x4, x27, 0x80000009, 0x00000009, 0x80000000, x2, 16, x8)

# opcode: xor ; op1:x12; op2:x0; dest:x19; op1val:0xfffffffc;  op2val:0x00000000
TEST_RR_OP(xor, x19, x12, x0, 0xfffffffc, 0xfffffffc, 0x00000000, x2, 20, x8)

# opcode: xor ; op1:x13; op2:x31; dest:x3; op1val:0xdfffffff;  op2val:0x7fffffff
TEST_RR_OP(xor, x3, x13, x31, 0xa0000000, 0xdfffffff, 0x7fffffff, x2, 24, x8)

# opcode: xor ; op1:x21; op2:x26; dest:x17; op1val:0x80000000;  op2val:0x00000001
TEST_RR_OP(xor, x17, x21, x26, 0x80000001, 0x80000000, 0x00000001, x2, 28, x8)

# opcode: xor ; op1:x27; op2:x12; dest:x11; op1val:0xc0000000;  op2val:0xc0000000
TEST_RR_OP(xor, x11, x27, x12, 0x0, 0xc0000000, 0xc0000000, x2, 32, x8)

# opcode: xor ; op1:x11; op2:x14; dest:x6; op1val:0x00000002;  op2val:0xfffffffd
TEST_RR_OP(xor, x6, x11, x14, 0xffffffff, 0x00000002, 0xfffffffd, x2, 36, x8)

# opcode: xor ; op1:x1; op2:x23; dest:x12; op1val:0x00000004;  op2val:0x00000010
TEST_RR_OP(xor, x12, x1, x23, 0x14, 0x00000004, 0x00000010, x2, 40, x8)

# opcode: xor ; op1:x0; op2:x15; dest:x21; op1val:0x00000008;  op2val:0x00000006
TEST_RR_OP(xor, x21, x0, x15, 0xe, 0x00000008, 0x00000006, x2, 44, x8)

# opcode: xor ; op1:x18; op2:x29; dest:x15; op1val:0x00000010;  op2val:0x10000000
TEST_RR_OP(xor, x15, x18, x29, 0x10000010, 0x00000010, 0x10000000, x2, 48, x8)

# opcode: xor ; op1:x28; op2:x1; dest:x10; op1val:0x00000020;  op2val:0xfbffffff
TEST_RR_OP(xor, x10, x28, x1, 0xfbffffdf, 0x00000020, 0xfbffffff, x2, 52, x8)

# opcode: xor ; op1:x26; op2:x30; dest:x14; op1val:0x00000040;  op2val:0xfbffffff
TEST_RR_OP(xor, x14, x26, x30, 0xfbffffbf, 0x00000040, 0xfbffffff, x2, 56, x8)

# opcode: xor ; op1:x10; op2:x28; dest:x29; op1val:0x00000080;  op2val:0xffbfffff
TEST_RR_OP(xor, x29, x10, x28, 0xffbfff7f, 0x00000080, 0xffbfffff, x2, 60, x12)

# opcode: xor ; op1:x17; op2:x3; dest:x26; op1val:0x00000100;  op2val:0x00000003
TEST_RR_OP(xor, x26, x17, x3, 0x103, 0x00000100, 0x00000003, x2, 64, x12)

# opcode: xor ; op1:x23; op2:x19; dest:x28; op1val:0x00000200;  op2val:0xfffff7ff
TEST_RR_OP(xor, x28, x23, x19, 0xfffff5ff, 0x00000200, 0xfffff7ff, x2, 68, x12)

# opcode: xor ; op1:x29; op2:x6; dest:x20; op1val:0x00000400;  op2val:0xfeffffff
TEST_RR_OP(xor, x20, x29, x6, 0xfefffbff, 0x00000400, 0xfeffffff, x2, 72, x12)
la x1,signature_x1_0

# opcode: xor ; op1:x31; op2:x18; dest:x13; op1val:0x00000800;  op2val:0xfffffff9
TEST_RR_OP(xor, x13, x31, x18, 0xfffff7f9, 0x00000800, 0xfffffff9, x1, 0, x12)

# opcode: xor ; op1:x8; op2:x21; dest:x18; op1val:0x00001000;  op2val:0xffffffbf
TEST_RR_OP(xor, x18, x8, x21, 0xffffefbf, 0x00001000, 0xffffffbf, x1, 4, x12)

# opcode: xor ; op1:x3; op2:x10; dest:x22; op1val:0x00002000;  op2val:0x00000200
TEST_RR_OP(xor, x22, x3, x10, 0x2200, 0x00002000, 0x00000200, x1, 8, x12)

# opcode: xor ; op1:x2; op2:x20; dest:x4; op1val:0x00004000;  op2val:0xfdffffff
TEST_RR_OP(xor, x4, x2, x20, 0xfdffbfff, 0x00004000, 0xfdffffff, x1, 12, x12)

# opcode: xor ; op1:x5; op2:x25; dest:x30; op1val:0x00008000;  op2val:0x10000000
TEST_RR_OP(xor, x30, x5, x25, 0x10008000, 0x00008000, 0x10000000, x1, 16, x12)

# opcode: xor ; op1:x24; op2:x22; dest:x7; op1val:0x00010000;  op2val:0xfeffffff
TEST_RR_OP(xor, x7, x24, x22, 0xfefeffff, 0x00010000, 0xfeffffff, x1, 20, x12)

# opcode: xor ; op1:x15; op2:x4; dest:x9; op1val:0x00020000;  op2val:0x08000000
TEST_RR_OP(xor, x9, x15, x4, 0x8020000, 0x00020000, 0x08000000, x1, 24, x12)

# opcode: xor ; op1:x6; op2:x8; dest:x2; op1val:0x00040000;  op2val:0x00000003
TEST_RR_OP(xor, x2, x6, x8, 0x40003, 0x00040000, 0x00000003, x1, 28, x12)

# opcode: xor ; op1:x20; op2:x2; dest:x31; op1val:0x00080000;  op2val:0x00100000
TEST_RR_OP(xor, x31, x20, x2, 0x180000, 0x00080000, 0x00100000, x1, 32, x12)

# opcode: xor ; op1:x30; op2:x13; dest:x24; op1val:0x00100000;  op2val:0x00000100
TEST_RR_OP(xor, x24, x30, x13, 0x100100, 0x00100000, 0x00000100, x1, 36, x12)

# opcode: xor ; op1:x14; op2:x11; dest:x8; op1val:0x00200000;  op2val:0x10000000
TEST_RR_OP(xor, x8, x14, x11, 0x10200000, 0x00200000, 0x10000000, x1, 40, x12)

# opcode: xor ; op1:x19; op2:x17; dest:x0; op1val:0x00400000;  op2val:0x20000000
TEST_RR_OP(xor, x0, x19, x17, 0x20400000, 0x00400000, 0x20000000, x1, 44, x2)

# opcode: xor ; op1:x7; op2:x24; dest:x27; op1val:0x00800000;  op2val:0xfffffffc
TEST_RR_OP(xor, x27, x7, x24, 0xff7ffffc, 0x00800000, 0xfffffffc, x1, 48, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000100
TEST_RR_OP(xor, x12, x10, x11, 0x1000100, 0x01000000, 0x00000100, x1, 52, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0xfffffff6
TEST_RR_OP(xor, x12, x10, x11, 0xfdfffff6, 0x02000000, 0xfffffff6, x1, 56, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000005
TEST_RR_OP(xor, x12, x10, x11, 0x4000005, 0x04000000, 0x00000005, x1, 60, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xbfffffff
TEST_RR_OP(xor, x12, x10, x11, 0xb7ffffff, 0x08000000, 0xbfffffff, x1, 64, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000003
TEST_RR_OP(xor, x12, x10, x11, 0x10000003, 0x10000000, 0x00000003, x1, 68, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xfffeffff
TEST_RR_OP(xor, x12, x10, x11, 0xdffeffff, 0x20000000, 0xfffeffff, x1, 72, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000004
TEST_RR_OP(xor, x12, x10, x11, 0x40000004, 0x40000000, 0x00000004, x1, 76, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x04000000
TEST_RR_OP(xor, x12, x10, x11, 0xfbfffffe, 0xfffffffe, 0x04000000, x1, 80, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffd, 0xfffffffd, 0x00000000, x1, 84, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000005
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffe, 0xfffffffb, 0x00000005, x1, 88, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000100
TEST_RR_OP(xor, x12, x10, x11, 0xfffffef7, 0xfffffff7, 0x00000100, x1, 92, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000004
TEST_RR_OP(xor, x12, x10, x11, 0xffffffeb, 0xffffffef, 0x00000004, x1, 96, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xfffffffb
TEST_RR_OP(xor, x12, x10, x11, 0x24, 0xffffffdf, 0xfffffffb, x1, 100, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffffb
TEST_RR_OP(xor, x12, x10, x11, 0x44, 0xffffffbf, 0xfffffffb, x1, 104, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00008000
TEST_RR_OP(xor, x12, x10, x11, 0xffff7f7f, 0xffffff7f, 0x00008000, x1, 108, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xdfffffff
TEST_RR_OP(xor, x12, x10, x11, 0x20000100, 0xfffffeff, 0xdfffffff, x1, 112, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0xfffbffff
TEST_RR_OP(xor, x12, x10, x11, 0x44000, 0xffffbfff, 0xfffbffff, x1, 116, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0xfff7ffff
TEST_RR_OP(xor, x12, x10, x11, 0xfff7fffb, 0x00000004, 0xfff7ffff, x1, 120, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xffdfffff
TEST_RR_OP(xor, x12, x10, x11, 0xffdffbff, 0x00000400, 0xffdfffff, x1, 124, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xff7fffff
TEST_RR_OP(xor, x12, x10, x11, 0x1800000, 0xfeffffff, 0xff7fffff, x1, 128, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xf7ffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffff, 0x08000000, 0xf7ffffff, x1, 132, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xefffffff
TEST_RR_OP(xor, x12, x10, x11, 0xefdfffff, 0x00200000, 0xefffffff, x1, 136, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0x55555555
TEST_RR_OP(xor, x12, x10, x11, 0x55555575, 0x00000020, 0x55555555, x1, 140, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xaaaaaaaa
TEST_RR_OP(xor, x12, x10, x11, 0xaa8aaaaa, 0x00200000, 0xaaaaaaaa, x1, 144, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfffffffc
TEST_RR_OP(xor, x12, x10, x11, 0x203, 0xfffffdff, 0xfffffffc, x1, 148, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0xffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x400, 0xfffffbff, 0xffffffff, x1, 152, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xf7ffffff
TEST_RR_OP(xor, x12, x10, x11, 0x8000800, 0xfffff7ff, 0xf7ffffff, x1, 156, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xffffff7f
TEST_RR_OP(xor, x12, x10, x11, 0x1080, 0xffffefff, 0xffffff7f, x1, 160, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00004000
TEST_RR_OP(xor, x12, x10, x11, 0xffff9fff, 0xffffdfff, 0x00004000, x1, 164, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000100
TEST_RR_OP(xor, x12, x10, x11, 0xffff7eff, 0xffff7fff, 0x00000100, x1, 168, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0xfdffffff
TEST_RR_OP(xor, x12, x10, x11, 0x2010000, 0xfffeffff, 0xfdffffff, x1, 172, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00008000
TEST_RR_OP(xor, x12, x10, x11, 0xfffd7fff, 0xfffdffff, 0x00008000, x1, 176, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xfffbffff
TEST_RR_OP(xor, x12, x10, x11, 0x0, 0xfffbffff, 0xfffbffff, x1, 180, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xffbfffff
TEST_RR_OP(xor, x12, x10, x11, 0x480000, 0xfff7ffff, 0xffbfffff, x1, 184, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00100000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffff, 0xffefffff, 0x00100000, x1, 188, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xdfffffff
TEST_RR_OP(xor, x12, x10, x11, 0x20200000, 0xffdfffff, 0xdfffffff, x1, 192, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xfffbffff
TEST_RR_OP(xor, x12, x10, x11, 0x440000, 0xffbfffff, 0xfffbffff, x1, 196, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xffffffbf
TEST_RR_OP(xor, x12, x10, x11, 0x800040, 0xff7fffff, 0xffffffbf, x1, 200, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x20000000
TEST_RR_OP(xor, x12, x10, x11, 0xddffffff, 0xfdffffff, 0x20000000, x1, 204, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xf7ffffff
TEST_RR_OP(xor, x12, x10, x11, 0xc000000, 0xfbffffff, 0xf7ffffff, x1, 208, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000000
TEST_RR_OP(xor, x12, x10, x11, 0xf7ffffff, 0xf7ffffff, 0x00000000, x1, 212, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00020000
TEST_RR_OP(xor, x12, x10, x11, 0xeffdffff, 0xefffffff, 0x00020000, x1, 216, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xfff7ffff
TEST_RR_OP(xor, x12, x10, x11, 0x40080000, 0xbfffffff, 0xfff7ffff, x1, 220, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xfffdffff
TEST_RR_OP(xor, x12, x10, x11, 0xaaa8aaaa, 0x55555555, 0xfffdffff, x1, 224, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xffffffbf
TEST_RR_OP(xor, x12, x10, x11, 0x55555515, 0xaaaaaaaa, 0xffffffbf, x1, 228, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000002
TEST_RR_OP(xor, x12, x10, x11, 0x4000002, 0x04000000, 0x00000002, x1, 232, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0x00000008
TEST_RR_OP(xor, x12, x10, x11, 0xfffffff7, 0xffffffff, 0x00000008, x1, 236, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0x00000020
TEST_RR_OP(xor, x12, x10, x11, 0x8020, 0x00008000, 0x00000020, x1, 240, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000040
TEST_RR_OP(xor, x12, x10, x11, 0x8000040, 0x08000000, 0x00000040, x1, 244, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000080
TEST_RR_OP(xor, x12, x10, x11, 0xffffff7b, 0xfffffffb, 0x00000080, x1, 248, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000400
TEST_RR_OP(xor, x12, x10, x11, 0xff7ffbff, 0xff7fffff, 0x00000400, x1, 252, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0x00000800
TEST_RR_OP(xor, x12, x10, x11, 0x20800, 0x00020000, 0x00000800, x1, 256, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00001000
TEST_RR_OP(xor, x12, x10, x11, 0x1008, 0x00000008, 0x00001000, x1, 260, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00002000
TEST_RR_OP(xor, x12, x10, x11, 0xff7fdfff, 0xff7fffff, 0x00002000, x1, 264, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00010000
TEST_RR_OP(xor, x12, x10, x11, 0xeffeffff, 0xefffffff, 0x00010000, x1, 268, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00040000
TEST_RR_OP(xor, x12, x10, x11, 0x55515555, 0x55555555, 0x00040000, x1, 272, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00080000
TEST_RR_OP(xor, x12, x10, x11, 0xfff7dfff, 0xffffdfff, 0x00080000, x1, 276, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0x00200000
TEST_RR_OP(xor, x12, x10, x11, 0x200100, 0x00000100, 0x00200000, x1, 280, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00400000
TEST_RR_OP(xor, x12, x10, x11, 0xffbfffdf, 0xffffffdf, 0x00400000, x1, 284, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff8;  op2val:0x00800000
TEST_RR_OP(xor, x12, x10, x11, 0xff7ffff8, 0xfffffff8, 0x00800000, x1, 288, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0x01000000
TEST_RR_OP(xor, x12, x10, x11, 0x1020000, 0x00020000, 0x01000000, x1, 292, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x40000000
TEST_RR_OP(xor, x12, x10, x11, 0x40010000, 0x00010000, 0x40000000, x1, 296, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xfffffffe
TEST_RR_OP(xor, x12, x10, x11, 0xeffffffe, 0x10000000, 0xfffffffe, x1, 300, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xfffffff7
TEST_RR_OP(xor, x12, x10, x11, 0x200008, 0xffdfffff, 0xfffffff7, x1, 304, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffffffef
TEST_RR_OP(xor, x12, x10, x11, 0x4000010, 0xfbffffff, 0xffffffef, x1, 308, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0xffffffdf
TEST_RR_OP(xor, x12, x10, x11, 0x20, 0xffffffff, 0xffffffdf, x1, 312, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfffffeff
TEST_RR_OP(xor, x12, x10, x11, 0xf7fffeff, 0x08000000, 0xfffffeff, x1, 316, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff;  op2val:0xfffffdff
TEST_RR_OP(xor, x12, x10, x11, 0x200, 0xffffffff, 0xfffffdff, x1, 320, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffffbff
TEST_RR_OP(xor, x12, x10, x11, 0x1400, 0xffffefff, 0xfffffbff, x1, 324, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xffffefff
TEST_RR_OP(xor, x12, x10, x11, 0x1001, 0xfffffffe, 0xffffefff, x1, 328, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xffffbfff
TEST_RR_OP(xor, x12, x10, x11, 0x4003, 0xfffffffc, 0xffffbfff, x1, 332, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xffff7fff
TEST_RR_OP(xor, x12, x10, x11, 0xf7ff7fff, 0x08000000, 0xffff7fff, x1, 336, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xffffdfff
TEST_RR_OP(xor, x12, x10, x11, 0x7fffdfff, 0x80000000, 0xffffdfff, x1, 340, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x02000000
TEST_RR_OP(xor, x12, x10, x11, 0x2000000, 0x00000000, 0x02000000, x1, 344, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000100
TEST_RR_OP(xor, x12, x10, x11, 0x7ffffeff, 0x7fffffff, 0x00000100, x1, 348, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xffefffff
TEST_RR_OP(xor, x12, x10, x11, 0xffeffffe, 0x00000001, 0xffefffff, x1, 352, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0x00000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffc, 0xfffffffc, 0x00000000, x1, 356, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00000006
TEST_RR_OP(xor, x12, x10, x11, 0xe, 0x00000008, 0x00000006, x1, 360, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x20000000
TEST_RR_OP(xor, x12, x10, x11, 0x20400000, 0x00400000, 0x20000000, x1, 364, x2)
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
    .fill 19*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 92*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
