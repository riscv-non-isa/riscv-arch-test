
#This assembly file tests the sub instruction of the RISC-V I extension for the sub covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sub)

la x5,signature_x5_1

# opcode: sub ; op1:x1; op2:x21; dest:x1; op1val:0x80000000;  op2val:0xffffdfff
TEST_RR_OP(sub, x1, x1, x21, 0x80002001, 0x80000000, 0xffffdfff, x5, 0, x7)

# opcode: sub ; op1:x9; op2:x9; dest:x25; op1val:0x00000000;  op2val:0x00000040
TEST_RR_OP(sub, x25, x9, x9, 0xffffffc0, 0x00000000, 0x00000040, x5, 4, x7)

# opcode: sub ; op1:x22; op2:x26; dest:x11; op1val:0x7fffffff;  op2val:0xffffefff
TEST_RR_OP(sub, x11, x22, x26, 0x80001000, 0x7fffffff, 0xffffefff, x5, 8, x7)

# opcode: sub ; op1:x15; op2:x15; dest:x15; op1val:0x00000001;  op2val:0xf7ffffff
TEST_RR_OP(sub, x15, x15, x15, 0x8000002, 0x00000001, 0xf7ffffff, x5, 12, x7)

# opcode: sub ; op1:x26; op2:x22; dest:x22; op1val:0x40000000;  op2val:0x80000000
TEST_RR_OP(sub, x22, x26, x22, 0xc0000000, 0x40000000, 0x80000000, x5, 16, x7)

# opcode: sub ; op1:x8; op2:x2; dest:x24; op1val:0xefffffff;  op2val:0x00000000
TEST_RR_OP(sub, x24, x8, x2, 0xefffffff, 0xefffffff, 0x00000000, x5, 20, x7)

# opcode: sub ; op1:x16; op2:x17; dest:x2; op1val:0xffbfffff;  op2val:0x7fffffff
TEST_RR_OP(sub, x2, x16, x17, 0x7fc00000, 0xffbfffff, 0x7fffffff, x5, 24, x7)

# opcode: sub ; op1:x29; op2:x30; dest:x6; op1val:0xffdfffff;  op2val:0x00000001
TEST_RR_OP(sub, x6, x29, x30, 0xffdffffe, 0xffdfffff, 0x00000001, x5, 28, x7)

# opcode: sub ; op1:x12; op2:x20; dest:x13; op1val:0x00000003;  op2val:0x40000000
TEST_RR_OP(sub, x13, x12, x20, 0xc0000003, 0x00000003, 0x40000000, x5, 32, x7)

# opcode: sub ; op1:x18; op2:x23; dest:x26; op1val:0x00000003;  op2val:0x00000003
TEST_RR_OP(sub, x26, x18, x23, 0x0, 0x00000003, 0x00000003, x5, 36, x7)

# opcode: sub ; op1:x24; op2:x6; dest:x19; op1val:0x00000002;  op2val:0xfffffffd
TEST_RR_OP(sub, x19, x24, x6, 0x5, 0x00000002, 0xfffffffd, x5, 40, x7)

# opcode: sub ; op1:x13; op2:x4; dest:x17; op1val:0x00000004;  op2val:0x00400000
TEST_RR_OP(sub, x17, x13, x4, 0xffc00004, 0x00000004, 0x00400000, x5, 44, x7)

# opcode: sub ; op1:x2; op2:x8; dest:x9; op1val:0x00000008;  op2val:0xfdffffff
TEST_RR_OP(sub, x9, x2, x8, 0x2000009, 0x00000008, 0xfdffffff, x5, 48, x7)

# opcode: sub ; op1:x25; op2:x18; dest:x14; op1val:0x00000010;  op2val:0xfdffffff
TEST_RR_OP(sub, x14, x25, x18, 0x2000011, 0x00000010, 0xfdffffff, x5, 52, x7)

# opcode: sub ; op1:x30; op2:x3; dest:x16; op1val:0x00000020;  op2val:0xfffffff7
TEST_RR_OP(sub, x16, x30, x3, 0x29, 0x00000020, 0xfffffff7, x5, 56, x7)

# opcode: sub ; op1:x19; op2:x28; dest:x4; op1val:0x00000040;  op2val:0x00000000
TEST_RR_OP(sub, x4, x19, x28, 0x40, 0x00000040, 0x00000000, x5, 60, x7)

# opcode: sub ; op1:x6; op2:x19; dest:x0; op1val:0x00000080;  op2val:0x00001000
TEST_RR_OP(sub, x0, x6, x19, 0xfffff080, 0x00000080, 0x00001000, x5, 64, x7)

# opcode: sub ; op1:x21; op2:x27; dest:x3; op1val:0x00000100;  op2val:0xfffffdff
TEST_RR_OP(sub, x3, x21, x27, 0x301, 0x00000100, 0xfffffdff, x5, 68, x7)

# opcode: sub ; op1:x11; op2:x14; dest:x20; op1val:0x00000200;  op2val:0xfffdffff
TEST_RR_OP(sub, x20, x11, x14, 0x20201, 0x00000200, 0xfffdffff, x5, 72, x6)

# opcode: sub ; op1:x10; op2:x24; dest:x7; op1val:0x00000400;  op2val:0xffffffbf
TEST_RR_OP(sub, x7, x10, x24, 0x441, 0x00000400, 0xffffffbf, x5, 76, x6)
la x2,signature_x2_0

# opcode: sub ; op1:x23; op2:x10; dest:x27; op1val:0x00000800;  op2val:0x00000006
TEST_RR_OP(sub, x27, x23, x10, 0x7fa, 0x00000800, 0x00000006, x2, 0, x6)

# opcode: sub ; op1:x3; op2:x16; dest:x5; op1val:0x00001000;  op2val:0x80000000
TEST_RR_OP(sub, x5, x3, x16, 0x80001000, 0x00001000, 0x80000000, x2, 4, x6)

# opcode: sub ; op1:x27; op2:x31; dest:x21; op1val:0x00002000;  op2val:0x00000003
TEST_RR_OP(sub, x21, x27, x31, 0x1ffd, 0x00002000, 0x00000003, x2, 8, x6)

# opcode: sub ; op1:x0; op2:x25; dest:x30; op1val:0x00004000;  op2val:0x00000004
TEST_RR_OP(sub, x30, x0, x25, 0x3ffc, 0x00004000, 0x00000004, x2, 12, x6)

# opcode: sub ; op1:x14; op2:x7; dest:x23; op1val:0x00008000;  op2val:0x80000000
TEST_RR_OP(sub, x23, x14, x7, 0x80008000, 0x00008000, 0x80000000, x2, 16, x6)

# opcode: sub ; op1:x31; op2:x0; dest:x29; op1val:0x00010000;  op2val:0xfffffffe
TEST_RR_OP(sub, x29, x31, x0, 0x10002, 0x00010000, 0xfffffffe, x2, 20, x6)

# opcode: sub ; op1:x28; op2:x29; dest:x8; op1val:0x00020000;  op2val:0xaaaaaaaa
TEST_RR_OP(sub, x8, x28, x29, 0x55575556, 0x00020000, 0xaaaaaaaa, x2, 24, x6)

# opcode: sub ; op1:x17; op2:x13; dest:x12; op1val:0x00040000;  op2val:0x80000000
TEST_RR_OP(sub, x12, x17, x13, 0x80040000, 0x00040000, 0x80000000, x2, 28, x6)

# opcode: sub ; op1:x7; op2:x5; dest:x31; op1val:0x00080000;  op2val:0xffffffff
TEST_RR_OP(sub, x31, x7, x5, 0x80001, 0x00080000, 0xffffffff, x2, 32, x6)

# opcode: sub ; op1:x20; op2:x11; dest:x28; op1val:0x00100000;  op2val:0x00000009
TEST_RR_OP(sub, x28, x20, x11, 0xffff7, 0x00100000, 0x00000009, x2, 36, x6)

# opcode: sub ; op1:x5; op2:x12; dest:x18; op1val:0x00200000;  op2val:0x00000005
TEST_RR_OP(sub, x18, x5, x12, 0x1ffffb, 0x00200000, 0x00000005, x2, 40, x6)

# opcode: sub ; op1:x4; op2:x1; dest:x10; op1val:0x00400000;  op2val:0xff7fffff
TEST_RR_OP(sub, x10, x4, x1, 0xc00001, 0x00400000, 0xff7fffff, x2, 44, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000100
TEST_RR_OP(sub, x12, x10, x11, 0x7fff00, 0x00800000, 0x00000100, x2, 48, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00100000
TEST_RR_OP(sub, x12, x10, x11, 0xf00000, 0x01000000, 0x00100000, x2, 52, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x04000000
TEST_RR_OP(sub, x12, x10, x11, 0xfe000000, 0x02000000, 0x04000000, x2, 56, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00010000
TEST_RR_OP(sub, x12, x10, x11, 0x3ff0000, 0x04000000, 0x00010000, x2, 60, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xdfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x28000001, 0x08000000, 0xdfffffff, x2, 64, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0xfffffdff
TEST_RR_OP(sub, x12, x10, x11, 0x10000201, 0x10000000, 0xfffffdff, x2, 68, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000020
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffe0, 0x20000000, 0x00000020, x2, 72, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0xffbfffff
TEST_RR_OP(sub, x12, x10, x11, 0x3fffff, 0xfffffffe, 0xffbfffff, x2, 76, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000007
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff6, 0xfffffffd, 0x00000007, x2, 80, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfffbffff
TEST_RR_OP(sub, x12, x10, x11, 0x3fffc, 0xfffffffb, 0xfffbffff, x2, 84, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xffffbfff
TEST_RR_OP(sub, x12, x10, x11, 0x3ff8, 0xfffffff7, 0xffffbfff, x2, 88, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffef, 0xffffffef, 0x00000000, x2, 92, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xfff7ffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ff80, 0xffffff7f, 0xfff7ffff, x2, 96, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffefffff
TEST_RR_OP(sub, x12, x10, x11, 0xf8100000, 0xf7ffffff, 0xffefffff, x2, 100, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0xffdfffff
TEST_RR_OP(sub, x12, x10, x11, 0xa00001, 0x00800000, 0xffdfffff, x2, 104, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xfeffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2000001, 0x01000000, 0xfeffffff, x2, 108, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff9;  op2val:0xfbffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3fffffa, 0xfffffff9, 0xfbffffff, x2, 112, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xefffffff
TEST_RR_OP(sub, x12, x10, x11, 0xf000000, 0xfeffffff, 0xefffffff, x2, 116, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xbfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x40000001, 0x00000000, 0xbfffffff, x2, 120, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x55555555
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaa6aa, 0xfffffbff, 0x55555555, x2, 124, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xfffffff9
TEST_RR_OP(sub, x12, x10, x11, 0xffffffe6, 0xffffffdf, 0xfffffff9, x2, 128, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000008
TEST_RR_OP(sub, x12, x10, x11, 0xffffffb7, 0xffffffbf, 0x00000008, x2, 132, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00010000
TEST_RR_OP(sub, x12, x10, x11, 0xfffefeff, 0xfffffeff, 0x00010000, x2, 136, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000006
TEST_RR_OP(sub, x12, x10, x11, 0xfffffdf9, 0xfffffdff, 0x00000006, x2, 140, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000005
TEST_RR_OP(sub, x12, x10, x11, 0xfffff7fa, 0xfffff7ff, 0x00000005, x2, 144, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00004000
TEST_RR_OP(sub, x12, x10, x11, 0xffffafff, 0xffffefff, 0x00004000, x2, 148, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000002
TEST_RR_OP(sub, x12, x10, x11, 0xffffdffd, 0xffffdfff, 0x00000002, x2, 152, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000800
TEST_RR_OP(sub, x12, x10, x11, 0xffffb7ff, 0xffffbfff, 0x00000800, x2, 156, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000003
TEST_RR_OP(sub, x12, x10, x11, 0xffff7ffc, 0xffff7fff, 0x00000003, x2, 160, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00080000
TEST_RR_OP(sub, x12, x10, x11, 0xfff6ffff, 0xfffeffff, 0x00080000, x2, 164, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x3fffffff
TEST_RR_OP(sub, x12, x10, x11, 0xbffe0000, 0xfffdffff, 0x3fffffff, x2, 168, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000080
TEST_RR_OP(sub, x12, x10, x11, 0xfffbff7f, 0xfffbffff, 0x00000080, x2, 172, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0xffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfff80000, 0xfff7ffff, 0xffffffff, x2, 176, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xfffffffc
TEST_RR_OP(sub, x12, x10, x11, 0xfff00003, 0xffefffff, 0xfffffffc, x2, 180, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xfffbffff
TEST_RR_OP(sub, x12, x10, x11, 0xff840000, 0xff7fffff, 0xfffbffff, x2, 184, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xffffbfff
TEST_RR_OP(sub, x12, x10, x11, 0xfe004000, 0xfdffffff, 0xffffbfff, x2, 188, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffffffef
TEST_RR_OP(sub, x12, x10, x11, 0xfc000010, 0xfbffffff, 0xffffffef, x2, 192, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000200
TEST_RR_OP(sub, x12, x10, x11, 0xdffffdff, 0xdfffffff, 0x00000200, x2, 196, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0xaaaaaaaa
TEST_RR_OP(sub, x12, x10, x11, 0x15555555, 0xbfffffff, 0xaaaaaaaa, x2, 200, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x08000000
TEST_RR_OP(sub, x12, x10, x11, 0x4d555555, 0x55555555, 0x08000000, x2, 204, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00010000
TEST_RR_OP(sub, x12, x10, x11, 0xaaa9aaaa, 0xaaaaaaaa, 0x00010000, x2, 208, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000020;  op2val:0x00000010
TEST_RR_OP(sub, x12, x10, x11, 0x10, 0x00000020, 0x00000010, x2, 212, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000400
TEST_RR_OP(sub, x12, x10, x11, 0x55555155, 0x55555555, 0x00000400, x2, 216, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00002000
TEST_RR_OP(sub, x12, x10, x11, 0xf7ffdfff, 0xf7ffffff, 0x00002000, x2, 220, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffa;  op2val:0x00008000
TEST_RR_OP(sub, x12, x10, x11, 0xffff7ffa, 0xfffffffa, 0x00008000, x2, 224, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x00020000
TEST_RR_OP(sub, x12, x10, x11, 0x60000, 0x00080000, 0x00020000, x2, 228, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00040000
TEST_RR_OP(sub, x12, x10, x11, 0xffc0000, 0x10000000, 0x00040000, x2, 232, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00200000
TEST_RR_OP(sub, x12, x10, x11, 0xfe00000, 0x10000000, 0x00200000, x2, 236, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00800000
TEST_RR_OP(sub, x12, x10, x11, 0xff7fff7f, 0xffffff7f, 0x00800000, x2, 240, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x01000000
TEST_RR_OP(sub, x12, x10, x11, 0xfefffffd, 0xfffffffd, 0x01000000, x2, 244, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x02000000
TEST_RR_OP(sub, x12, x10, x11, 0xfdffff7f, 0xffffff7f, 0x02000000, x2, 248, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0x10000000
TEST_RR_OP(sub, x12, x10, x11, 0xeffffffc, 0xfffffffc, 0x10000000, x2, 252, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x20000000
TEST_RR_OP(sub, x12, x10, x11, 0xf0000000, 0x10000000, 0x20000000, x2, 256, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0xfffffffb
TEST_RR_OP(sub, x12, x10, x11, 0x7, 0x00000002, 0xfffffffb, x2, 260, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0xffffffdf
TEST_RR_OP(sub, x12, x10, x11, 0xe0000020, 0xdfffffff, 0xffffffdf, x2, 264, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xffffff7f
TEST_RR_OP(sub, x12, x10, x11, 0xfffff080, 0xffffefff, 0xffffff7f, x2, 268, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xfffffeff
TEST_RR_OP(sub, x12, x10, x11, 0x501, 0x00000400, 0xfffffeff, x2, 272, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffc;  op2val:0xfffffbff
TEST_RR_OP(sub, x12, x10, x11, 0x3fd, 0xfffffffc, 0xfffffbff, x2, 276, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000400;  op2val:0xfffff7ff
TEST_RR_OP(sub, x12, x10, x11, 0xc01, 0x00000400, 0xfffff7ff, x2, 280, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xffff7fff
TEST_RR_OP(sub, x12, x10, x11, 0x8008001, 0x08000000, 0xffff7fff, x2, 284, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0xfffeffff
TEST_RR_OP(sub, x12, x10, x11, 0x10006, 0x00000005, 0xfffeffff, x2, 288, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0xffffdfff
TEST_RR_OP(sub, x12, x10, x11, 0x80002001, 0x80000000, 0xffffdfff, x2, 292, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0x00000040
TEST_RR_OP(sub, x12, x10, x11, 0xffffffc0, 0x00000000, 0x00000040, x2, 296, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0xf7ffffff
TEST_RR_OP(sub, x12, x10, x11, 0x8000002, 0x00000001, 0xf7ffffff, x2, 300, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x80000000
TEST_RR_OP(sub, x12, x10, x11, 0xc0000000, 0x40000000, 0x80000000, x2, 304, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0x00001000
TEST_RR_OP(sub, x12, x10, x11, 0xfffff080, 0x00000080, 0x00001000, x2, 308, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x00000004
TEST_RR_OP(sub, x12, x10, x11, 0x3ffc, 0x00004000, 0x00000004, x2, 312, x6)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0xfffffffe
TEST_RR_OP(sub, x12, x10, x11, 0x10002, 0x00010000, 0xfffffffe, x2, 316, x6)
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
    .fill 20*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 80*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
