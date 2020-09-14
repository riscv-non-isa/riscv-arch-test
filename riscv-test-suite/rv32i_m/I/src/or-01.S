
#This assembly file tests the or instruction of the RISC-V I extension for the or covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",or)

la x4,signature_x4_1

# opcode: or ; op1:x14; op2:x13; dest:x13; op1val:0x80000000;  op2val:0xffffefff
TEST_RR_OP(or, x13, x14, x13, 0xffffefff, 0x80000000, 0xffffefff, x4, 0, x6)

# opcode: or ; op1:x25; op2:x5; dest:x25; op1val:0x00000000;  op2val:0x00000010
TEST_RR_OP(or, x25, x25, x5, 0x10, 0x00000000, 0x00000010, x4, 4, x6)

# opcode: or ; op1:x11; op2:x11; dest:x11; op1val:0x7fffffff;  op2val:0x00000002
TEST_RR_OP(or, x11, x11, x11, 0x7fffffff, 0x7fffffff, 0x00000002, x4, 8, x6)

# opcode: or ; op1:x1; op2:x1; dest:x28; op1val:0x00000001;  op2val:0xfffffffe
TEST_RR_OP(or, x28, x1, x1, 0xffffffff, 0x00000001, 0xfffffffe, x4, 12, x6)

# opcode: or ; op1:x13; op2:x16; dest:x15; op1val:0xfdffffff;  op2val:0x80000000
TEST_RR_OP(or, x15, x13, x16, 0xfdffffff, 0xfdffffff, 0x80000000, x4, 16, x6)

# opcode: or ; op1:x17; op2:x19; dest:x21; op1val:0x08000000;  op2val:0x00000000
TEST_RR_OP(or, x21, x17, x19, 0x8000000, 0x08000000, 0x00000000, x4, 20, x6)

# opcode: or ; op1:x23; op2:x17; dest:x20; op1val:0xfffffdff;  op2val:0x7fffffff
TEST_RR_OP(or, x20, x23, x17, 0xffffffff, 0xfffffdff, 0x7fffffff, x4, 24, x6)

# opcode: or ; op1:x31; op2:x18; dest:x14; op1val:0x40000000;  op2val:0x00000001
TEST_RR_OP(or, x14, x31, x18, 0x40000001, 0x40000000, 0x00000001, x4, 28, x6)

# opcode: or ; op1:x18; op2:x31; dest:x12; op1val:0xfffffffb;  op2val:0xfffffffb
TEST_RR_OP(or, x12, x18, x31, 0xfffffffb, 0xfffffffb, 0xfffffffb, x4, 32, x6)

# opcode: or ; op1:x28; op2:x26; dest:x22; op1val:0x00000002;  op2val:0x00080000
TEST_RR_OP(or, x22, x28, x26, 0x80002, 0x00000002, 0x00080000, x4, 36, x6)

# opcode: or ; op1:x3; op2:x30; dest:x2; op1val:0x00000004;  op2val:0xfffffffe
TEST_RR_OP(or, x2, x3, x30, 0xfffffffe, 0x00000004, 0xfffffffe, x4, 40, x6)

# opcode: or ; op1:x24; op2:x27; dest:x30; op1val:0x00000008;  op2val:0x00000009
TEST_RR_OP(or, x30, x24, x27, 0x9, 0x00000008, 0x00000009, x4, 44, x6)

# opcode: or ; op1:x0; op2:x29; dest:x10; op1val:0x00000010;  op2val:0x20000000
TEST_RR_OP(or, x10, x0, x29, 0x20000010, 0x00000010, 0x20000000, x4, 48, x6)

# opcode: or ; op1:x20; op2:x8; dest:x7; op1val:0x00000020;  op2val:0x00000000
TEST_RR_OP(or, x7, x20, x8, 0x20, 0x00000020, 0x00000000, x4, 52, x6)
la x11,signature_x11_0

# opcode: or ; op1:x29; op2:x6; dest:x1; op1val:0x00000040;  op2val:0xfffffffe
TEST_RR_OP(or, x1, x29, x6, 0xfffffffe, 0x00000040, 0xfffffffe, x11, 0, x7)

# opcode: or ; op1:x6; op2:x2; dest:x3; op1val:0x00000080;  op2val:0xfffffbff
TEST_RR_OP(or, x3, x6, x2, 0xfffffbff, 0x00000080, 0xfffffbff, x11, 4, x7)

# opcode: or ; op1:x26; op2:x9; dest:x6; op1val:0x00000100;  op2val:0xffbfffff
TEST_RR_OP(or, x6, x26, x9, 0xffbfffff, 0x00000100, 0xffbfffff, x11, 8, x7)

# opcode: or ; op1:x27; op2:x3; dest:x8; op1val:0x00000200;  op2val:0x80000000
TEST_RR_OP(or, x8, x27, x3, 0x80000200, 0x00000200, 0x80000000, x11, 12, x7)

# opcode: or ; op1:x21; op2:x24; dest:x31; op1val:0x00000400;  op2val:0xfffffffd
TEST_RR_OP(or, x31, x21, x24, 0xfffffffd, 0x00000400, 0xfffffffd, x11, 16, x7)

# opcode: or ; op1:x2; op2:x0; dest:x18; op1val:0x00000800;  op2val:0xffdfffff
TEST_RR_OP(or, x18, x2, x0, 0xffdfffff, 0x00000800, 0xffdfffff, x11, 20, x7)

# opcode: or ; op1:x19; op2:x12; dest:x17; op1val:0x00001000;  op2val:0x3fffffff
TEST_RR_OP(or, x17, x19, x12, 0x3fffffff, 0x00001000, 0x3fffffff, x11, 24, x7)

# opcode: or ; op1:x5; op2:x25; dest:x23; op1val:0x00002000;  op2val:0xfffffffc
TEST_RR_OP(or, x23, x5, x25, 0xfffffffc, 0x00002000, 0xfffffffc, x11, 28, x7)

# opcode: or ; op1:x12; op2:x23; dest:x0; op1val:0x00004000;  op2val:0x80000000
TEST_RR_OP(or, x0, x12, x23, 0x80004000, 0x00004000, 0x80000000, x11, 32, x7)

# opcode: or ; op1:x30; op2:x28; dest:x5; op1val:0x00008000;  op2val:0xefffffff
TEST_RR_OP(or, x5, x30, x28, 0xefffffff, 0x00008000, 0xefffffff, x11, 36, x7)

# opcode: or ; op1:x22; op2:x15; dest:x26; op1val:0x00010000;  op2val:0x00000007
TEST_RR_OP(or, x26, x22, x15, 0x10007, 0x00010000, 0x00000007, x11, 40, x7)

# opcode: or ; op1:x9; op2:x4; dest:x16; op1val:0x00020000;  op2val:0xc0000000
TEST_RR_OP(or, x16, x9, x4, 0xc0020000, 0x00020000, 0xc0000000, x11, 44, x7)

# opcode: or ; op1:x4; op2:x10; dest:x9; op1val:0x00040000;  op2val:0xfffffffb
TEST_RR_OP(or, x9, x4, x10, 0xfffffffb, 0x00040000, 0xfffffffb, x11, 48, x7)

# opcode: or ; op1:x10; op2:x22; dest:x29; op1val:0x00080000;  op2val:0x00000004
TEST_RR_OP(or, x29, x10, x22, 0x80004, 0x00080000, 0x00000004, x11, 52, x7)

# opcode: or ; op1:x16; op2:x20; dest:x24; op1val:0x00100000;  op2val:0xfffffffa
TEST_RR_OP(or, x24, x16, x20, 0xfffffffa, 0x00100000, 0xfffffffa, x11, 56, x7)

# opcode: or ; op1:x15; op2:x21; dest:x19; op1val:0x00200000;  op2val:0x00080000
TEST_RR_OP(or, x19, x15, x21, 0x280000, 0x00200000, 0x00080000, x11, 60, x2)

# opcode: or ; op1:x7; op2:x14; dest:x27; op1val:0x00400000;  op2val:0xfeffffff
TEST_RR_OP(or, x27, x7, x14, 0xfeffffff, 0x00400000, 0xfeffffff, x11, 64, x2)
la x1,signature_x1_0

# opcode: or ; op1:x8; op2:x7; dest:x4; op1val:0x00800000;  op2val:0xfbffffff
TEST_RR_OP(or, x4, x8, x7, 0xfbffffff, 0x00800000, 0xfbffffff, x1, 0, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000800
TEST_RR_OP(or, x12, x10, x11, 0x1000800, 0x01000000, 0x00000800, x1, 4, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x55555555
TEST_RR_OP(or, x12, x10, x11, 0x57555555, 0x02000000, 0x55555555, x1, 8, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00100000
TEST_RR_OP(or, x12, x10, x11, 0x4100000, 0x04000000, 0x00100000, x1, 12, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00020000
TEST_RR_OP(or, x12, x10, x11, 0x10020000, 0x10000000, 0x00020000, x1, 16, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xfffbffff
TEST_RR_OP(or, x12, x10, x11, 0xfffbffff, 0x20000000, 0xfffbffff, x1, 20, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xffffdfff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffffe, 0xffffdfff, x1, 24, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffd, 0xfffffffd, 0x00000000, x1, 28, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00800000
TEST_RR_OP(or, x12, x10, x11, 0xfffffff7, 0xfffffff7, 0x00800000, x1, 32, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0xfffdffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffffef, 0xfffdffff, x1, 36, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xfffbffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffffdf, 0xfffbffff, x1, 40, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xfffffff9
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffffbf, 0xfffffff9, x1, 44, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00004000
TEST_RR_OP(or, x12, x10, x11, 0xffffff7f, 0xffffff7f, 0x00004000, x1, 48, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xfff7ffff
TEST_RR_OP(or, x12, x10, x11, 0xfff7ffff, 0x80000000, 0xfff7ffff, x1, 52, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0xffefffff
TEST_RR_OP(or, x12, x10, x11, 0xffefffff, 0xc0000000, 0xffefffff, x1, 56, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0xff7fffff
TEST_RR_OP(or, x12, x10, x11, 0xff7fffff, 0x00000003, 0xff7fffff, x1, 60, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000009;  op2val:0xfdffffff
TEST_RR_OP(or, x12, x10, x11, 0xfdffffff, 0x00000009, 0xfdffffff, x1, 64, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xf7ffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffdffff, 0xf7ffffff, x1, 68, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0xdfffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffdfffff, 0xdfffffff, x1, 72, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xbfffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffffc, 0xbfffffff, x1, 76, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00008000;  op2val:0xaaaaaaaa
TEST_RR_OP(or, x12, x10, x11, 0xaaaaaaaa, 0x00008000, 0xaaaaaaaa, x1, 80, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0xfff7ffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffeff, 0xfff7ffff, x1, 84, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x02000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffbff, 0xfffffbff, 0x02000000, x1, 88, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000006
TEST_RR_OP(or, x12, x10, x11, 0xfffff7ff, 0xfffff7ff, 0x00000006, x1, 92, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00000000
TEST_RR_OP(or, x12, x10, x11, 0xffffefff, 0xffffefff, 0x00000000, x1, 96, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0xfffffffc
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffffdfff, 0xfffffffc, x1, 100, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000400
TEST_RR_OP(or, x12, x10, x11, 0xffffbfff, 0xffffbfff, 0x00000400, x1, 104, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xfeffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffff7fff, 0xfeffffff, x1, 108, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000001
TEST_RR_OP(or, x12, x10, x11, 0xfffeffff, 0xfffeffff, 0x00000001, x1, 112, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000200
TEST_RR_OP(or, x12, x10, x11, 0xfffbffff, 0xfffbffff, 0x00000200, x1, 116, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000001
TEST_RR_OP(or, x12, x10, x11, 0xfff7ffff, 0xfff7ffff, 0x00000001, x1, 120, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000001
TEST_RR_OP(or, x12, x10, x11, 0xffefffff, 0xffefffff, 0x00000001, x1, 124, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0xffffbfff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xffbfffff, 0xffffbfff, x1, 128, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000005
TEST_RR_OP(or, x12, x10, x11, 0xff7fffff, 0xff7fffff, 0x00000005, x1, 132, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xbfffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfeffffff, 0xbfffffff, x1, 136, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xfdffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfbffffff, 0xfdffffff, x1, 140, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffffff7f
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xf7ffffff, 0xffffff7f, x1, 144, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0xfffffff6
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xefffffff, 0xfffffff6, x1, 148, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000200
TEST_RR_OP(or, x12, x10, x11, 0xdfffffff, 0xdfffffff, 0x00000200, x1, 152, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000004
TEST_RR_OP(or, x12, x10, x11, 0xbfffffff, 0xbfffffff, 0x00000004, x1, 156, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000800
TEST_RR_OP(or, x12, x10, x11, 0x55555d55, 0x55555555, 0x00000800, x1, 160, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xfffffffe
TEST_RR_OP(or, x12, x10, x11, 0xfffffffe, 0xaaaaaaaa, 0xfffffffe, x1, 164, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000008
TEST_RR_OP(or, x12, x10, x11, 0xffffff7f, 0xffffff7f, 0x00000008, x1, 168, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000020
TEST_RR_OP(or, x12, x10, x11, 0x1000020, 0x01000000, 0x00000020, x1, 172, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000040
TEST_RR_OP(or, x12, x10, x11, 0x1000040, 0x01000000, 0x00000040, x1, 176, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00000080
TEST_RR_OP(or, x12, x10, x11, 0xffffefff, 0xffffefff, 0x00000080, x1, 180, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000100
TEST_RR_OP(or, x12, x10, x11, 0xffffffdf, 0xffffffdf, 0x00000100, x1, 184, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0x00001000
TEST_RR_OP(or, x12, x10, x11, 0xc0001000, 0xc0000000, 0x00001000, x1, 188, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xc0000000;  op2val:0x00002000
TEST_RR_OP(or, x12, x10, x11, 0xc0002000, 0xc0000000, 0x00002000, x1, 192, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00002000;  op2val:0x00008000
TEST_RR_OP(or, x12, x10, x11, 0xa000, 0x00002000, 0x00008000, x1, 196, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00010000
TEST_RR_OP(or, x12, x10, x11, 0xff7fffff, 0xff7fffff, 0x00010000, x1, 200, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00040000
TEST_RR_OP(or, x12, x10, x11, 0xffffffbf, 0xffffffbf, 0x00040000, x1, 204, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00200000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffd, 0xfffffffd, 0x00200000, x1, 208, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x00400000
TEST_RR_OP(or, x12, x10, x11, 0x400200, 0x00000200, 0x00400000, x1, 212, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x01000000
TEST_RR_OP(or, x12, x10, x11, 0x1010000, 0x00010000, 0x01000000, x1, 216, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x04000000
TEST_RR_OP(or, x12, x10, x11, 0x4000002, 0x00000002, 0x04000000, x1, 220, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x08000000
TEST_RR_OP(or, x12, x10, x11, 0x9000000, 0x01000000, 0x08000000, x1, 224, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x10000000
TEST_RR_OP(or, x12, x10, x11, 0xffbfffff, 0xffbfffff, 0x10000000, x1, 228, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x40000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffb, 0xfffffffb, 0x40000000, x1, 232, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xfffffff7
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffffe, 0xfffffff7, x1, 236, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xffffffef
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0x55555555, 0xffffffef, x1, 240, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xffffffdf
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfff7ffff, 0xffffffdf, x1, 244, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0xffffffbf
TEST_RR_OP(or, x12, x10, x11, 0xffffffbf, 0xaaaaaaaa, 0xffffffbf, x1, 248, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0xfffffeff
TEST_RR_OP(or, x12, x10, x11, 0xfffffeff, 0x00040000, 0xfffffeff, x1, 252, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffff7ff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffff7, 0xfffff7ff, x1, 256, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0xffff7fff
TEST_RR_OP(or, x12, x10, x11, 0xffff7fff, 0x00000007, 0xffff7fff, x1, 260, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xfffeffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xdfffffff, 0xfffeffff, x1, 264, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xfffffdff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0xfffffffd, 0xfffffdff, x1, 268, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xffffefff
TEST_RR_OP(or, x12, x10, x11, 0xffffefff, 0x80000000, 0xffffefff, x1, 272, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00000010
TEST_RR_OP(or, x12, x10, x11, 0x10, 0x00000000, 0x00000010, x1, 276, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000002
TEST_RR_OP(or, x12, x10, x11, 0x7fffffff, 0x7fffffff, 0x00000002, x1, 280, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xfffffffe
TEST_RR_OP(or, x12, x10, x11, 0xffffffff, 0x00000001, 0xfffffffe, x1, 284, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0x20000000
TEST_RR_OP(or, x12, x10, x11, 0x20000010, 0x00000010, 0x20000000, x1, 288, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0xffdfffff
TEST_RR_OP(or, x12, x10, x11, 0xffdfffff, 0x00000800, 0xffdfffff, x1, 292, x2)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x80000000
TEST_RR_OP(or, x12, x10, x11, 0x80004000, 0x00004000, 0x80000000, x1, 296, x2)
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
    .fill 14*(XLEN/32),4,0xafacadee


signature_x11_0:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 75*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
