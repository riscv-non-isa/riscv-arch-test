
#This assembly file tests the remu instruction of the RISC-V M extension for the remu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",remu)

la x2,signature_x2_1

# opcode: remu ; op1:x31; op2:x31; dest:x8; op1val:0x80000000;  op2val:0x00000007
TEST_RR_OP(remu, x8, x31, x31, 0x00000000, 0x80000000, 0x00000007, x2, 0, x3)

# opcode: remu ; op1:x5; op2:x1; dest:x5; op1val:0x00000000;  op2val:0xfffffeff
TEST_RR_OP(remu, x5, x5, x1, 0x00000000, 0x00000000, 0xfffffeff, x2, 4, x3)

# opcode: remu ; op1:x26; op2:x25; dest:x25; op1val:0x7fffffff;  op2val:0xffdfffff
TEST_RR_OP(remu, x25, x26, x25, 0x00000000, 0x7fffffff, 0xffdfffff, x2, 8, x3)

# opcode: remu ; op1:x10; op2:x10; dest:x10; op1val:0x00000001;  op2val:0x01000000
TEST_RR_OP(remu, x10, x10, x10, 0x00000000, 0x00000001, 0x01000000, x2, 12, x3)

# opcode: remu ; op1:x22; op2:x16; dest:x19; op1val:0x00002000;  op2val:0x80000000
TEST_RR_OP(remu, x19, x22, x16, 0x00000000, 0x00002000, 0x80000000, x2, 16, x3)

# opcode: remu ; op1:x29; op2:x4; dest:x7; op1val:0xbfffffff;  op2val:0x00000000
TEST_RR_OP(remu, x7, x29, x4, 0x00000000, 0xbfffffff, 0x00000000, x2, 20, x3)

# opcode: remu ; op1:x17; op2:x26; dest:x22; op1val:0xffff7fff;  op2val:0x7fffffff
TEST_RR_OP(remu, x22, x17, x26, 0x00000000, 0xffff7fff, 0x7fffffff, x2, 24, x3)

# opcode: remu ; op1:x12; op2:x11; dest:x9; op1val:0xfffffbff;  op2val:0x00000001
TEST_RR_OP(remu, x9, x12, x11, 0x00000000, 0xfffffbff, 0x00000001, x2, 28, x3)

# opcode: remu ; op1:x14; op2:x29; dest:x21; op1val:0xfffffbff;  op2val:0xfffffffe
TEST_RR_OP(remu, x21, x14, x29, 0x00000000, 0xfffffbff, 0xfffffffe, x2, 32, x3)

# opcode: remu ; op1:x4; op2:x9; dest:x14; op1val:0xfffffffa;  op2val:0xfffffffa
TEST_RR_OP(remu, x14, x4, x9, 0x00000000, 0xfffffffa, 0xfffffffa, x2, 36, x3)

# opcode: remu ; op1:x25; op2:x5; dest:x31; op1val:0x00000002;  op2val:0xfeffffff
TEST_RR_OP(remu, x31, x25, x5, 0x00000000, 0x00000002, 0xfeffffff, x2, 40, x3)

# opcode: remu ; op1:x20; op2:x21; dest:x0; op1val:0x00000004;  op2val:0xffff7fff
TEST_RR_OP(remu, x0, x20, x21, 0x00000000, 0x00000004, 0xffff7fff, x2, 44, x3)

# opcode: remu ; op1:x19; op2:x15; dest:x6; op1val:0x00000008;  op2val:0x00000100
TEST_RR_OP(remu, x6, x19, x15, 0x00000000, 0x00000008, 0x00000100, x2, 48, x3)

# opcode: remu ; op1:x6; op2:x13; dest:x18; op1val:0x00000010;  op2val:0x00000008
TEST_RR_OP(remu, x18, x6, x13, 0x00000000, 0x00000010, 0x00000008, x2, 52, x3)

# opcode: remu ; op1:x1; op2:x18; dest:x30; op1val:0x00000020;  op2val:0x00100000
TEST_RR_OP(remu, x30, x1, x18, 0x00000000, 0x00000020, 0x00100000, x2, 56, x3)

# opcode: remu ; op1:x28; op2:x23; dest:x20; op1val:0x00000040;  op2val:0xfffeffff
TEST_RR_OP(remu, x20, x28, x23, 0x00000000, 0x00000040, 0xfffeffff, x2, 60, x3)

# opcode: remu ; op1:x27; op2:x17; dest:x3; op1val:0x00000080;  op2val:0x00040000
TEST_RR_OP(remu, x3, x27, x17, 0x00000000, 0x00000080, 0x00040000, x2, 64, x10)
la x5,signature_x5_0

# opcode: remu ; op1:x9; op2:x20; dest:x15; op1val:0x00000100;  op2val:0xffffff7f
TEST_RR_OP(remu, x15, x9, x20, 0x00000000, 0x00000100, 0xffffff7f, x5, 0, x10)

# opcode: remu ; op1:x24; op2:x2; dest:x16; op1val:0x00000200;  op2val:0x55555555
TEST_RR_OP(remu, x16, x24, x2, 0x00000000, 0x00000200, 0x55555555, x5, 4, x10)

# opcode: remu ; op1:x23; op2:x30; dest:x29; op1val:0x00000400;  op2val:0x80000000
TEST_RR_OP(remu, x29, x23, x30, 0x00000000, 0x00000400, 0x80000000, x5, 8, x10)

# opcode: remu ; op1:x18; op2:x8; dest:x17; op1val:0x00000800;  op2val:0x00000200
TEST_RR_OP(remu, x17, x18, x8, 0x00000000, 0x00000800, 0x00000200, x5, 12, x10)

# opcode: remu ; op1:x8; op2:x3; dest:x11; op1val:0x00001000;  op2val:0x08000000
TEST_RR_OP(remu, x11, x8, x3, 0x00000000, 0x00001000, 0x08000000, x5, 16, x10)

# opcode: remu ; op1:x15; op2:x19; dest:x24; op1val:0x00004000;  op2val:0x00002000
TEST_RR_OP(remu, x24, x15, x19, 0x00000000, 0x00004000, 0x00002000, x5, 20, x10)

# opcode: remu ; op1:x7; op2:x14; dest:x1; op1val:0x00008000;  op2val:0xfffffff9
TEST_RR_OP(remu, x1, x7, x14, 0x00000000, 0x00008000, 0xfffffff9, x5, 24, x10)

# opcode: remu ; op1:x3; op2:x7; dest:x26; op1val:0x00010000;  op2val:0xfffffffc
TEST_RR_OP(remu, x26, x3, x7, 0x00000000, 0x00010000, 0xfffffffc, x5, 28, x10)

# opcode: remu ; op1:x30; op2:x28; dest:x2; op1val:0x00020000;  op2val:0x00000001
TEST_RR_OP(remu, x2, x30, x28, 0x00000000, 0x00020000, 0x00000001, x5, 32, x10)

# opcode: remu ; op1:x21; op2:x27; dest:x28; op1val:0x00040000;  op2val:0x00100000
TEST_RR_OP(remu, x28, x21, x27, 0x00000000, 0x00040000, 0x00100000, x5, 36, x10)

# opcode: remu ; op1:x2; op2:x24; dest:x4; op1val:0x00080000;  op2val:0x01000000
TEST_RR_OP(remu, x4, x2, x24, 0x00000000, 0x00080000, 0x01000000, x5, 40, x10)

# opcode: remu ; op1:x13; op2:x22; dest:x23; op1val:0x00100000;  op2val:0xfffffff8
TEST_RR_OP(remu, x23, x13, x22, 0x00000000, 0x00100000, 0xfffffff8, x5, 44, x10)

# opcode: remu ; op1:x11; op2:x12; dest:x27; op1val:0x00200000;  op2val:0x00000004
TEST_RR_OP(remu, x27, x11, x12, 0x00000000, 0x00200000, 0x00000004, x5, 48, x10)

# opcode: remu ; op1:x16; op2:x6; dest:x12; op1val:0x00400000;  op2val:0x00000800
TEST_RR_OP(remu, x12, x16, x6, 0x00000000, 0x00400000, 0x00000800, x5, 52, x10)

# opcode: remu ; op1:x0; op2:x21; dest:x9; op1val:0x00800000;  op2val:0xfff7ffff
TEST_RR_OP(remu, x9, x0, x21, 0x00000000, 0x00800000, 0xfff7ffff, x5, 56, x2)

# opcode: remu ; op1:x27; op2:x0; dest:x18; op1val:0x01000000;  op2val:0xaaaaaaaa
TEST_RR_OP(remu, x18, x27, x0, 0x00000000, 0x01000000, 0xaaaaaaaa, x5, 60, x2)

# opcode: remu ; op1:x11; op2:x7; dest:x13; op1val:0x02000000;  op2val:0xff7fffff
TEST_RR_OP(remu, x13, x11, x7, 0x00000000, 0x02000000, 0xff7fffff, x5, 64, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xfffdffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x04000000, 0xfffdffff, x5, 68, x2)
la x1,signature_x1_0

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0xfdffffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x08000000, 0xfdffffff, x1, 0, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00040000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x10000000, 0x00040000, x1, 4, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000006
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x20000000, 0x00000006, x1, 8, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00001000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x40000000, 0x00001000, x1, 12, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00100000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffffffe, 0x00100000, x1, 16, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0xdfffffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffffffd, 0xdfffffff, x1, 20, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000008
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffffffb, 0x00000008, x1, 24, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0xfffffff9
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffffff7, 0xfffffff9, x1, 28, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000002
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffffffef, 0x00000002, x1, 32, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0xfffbffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffffffb, 0xfffbffff, x1, 36, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0xffefffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffefffff, 0xffefffff, x1, 40, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0xffbfffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffffffdf, 0xffbfffff, x1, 44, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0xfbffffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00100000, 0xfbffffff, x1, 48, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0xf7ffffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffffff7f, 0xf7ffffff, x1, 52, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0xefffffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x04000000, 0xefffffff, x1, 56, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xbfffffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xbfffffff, x1, 60, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xaaaaaaaa
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffffffbf, 0xaaaaaaaa, x1, 64, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x80000000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffffeff, 0x80000000, x1, 68, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0xfbffffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffffdff, 0xfbffffff, x1, 72, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0xfffffeff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffffefff, 0xfffffeff, x1, 76, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x02000000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffffdfff, 0x02000000, x1, 80, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000002
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffffbfff, 0x00000002, x1, 84, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x08000000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffeffff, 0x08000000, x1, 88, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0xffffffef
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffdffff, 0xffffffef, x1, 92, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0xffffff7f
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffbffff, 0xffffff7f, x1, 96, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00080000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x00080000, x1, 100, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000003
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffdfffff, 0x00000003, x1, 104, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x02000000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffbfffff, 0x02000000, x1, 108, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000020
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xff7fffff, 0x00000020, x1, 112, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0xffffffef
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfeffffff, 0xffffffef, x1, 116, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0xffbfffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfdffffff, 0xffbfffff, x1, 120, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0xffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfbffffff, 0xffffffff, x1, 124, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0xffffffef
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xf7ffffff, 0xffffffef, x1, 128, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00080000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xefffffff, 0x00080000, x1, 132, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000010
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xdfffffff, 0x00000010, x1, 136, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000100
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x55555555, 0x00000100, x1, 140, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000004
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xaaaaaaaa, 0x00000004, x1, 144, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x00000040
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00000002, 0x00000040, x1, 148, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000080
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xbfffffff, 0x00000080, x1, 152, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000400
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffffff7f, 0x00000400, x1, 156, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00004000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffffdff, 0x00004000, x1, 160, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00008000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfdffffff, 0x00008000, x1, 164, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x00010000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00000005, 0x00010000, x1, 168, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00020000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffdffff, 0x00020000, x1, 172, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00200000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xf7ffffff, 0x00200000, x1, 176, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00400000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x40000000, 0x00400000, x1, 180, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00800000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffff7ff, 0x00800000, x1, 184, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00000002;  op2val:0x04000000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00000002, 0x04000000, x1, 188, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x10000000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfff7ffff, 0x10000000, x1, 192, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x20000000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffffffef, 0x20000000, x1, 196, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x40000000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00000200, 0x40000000, x1, 200, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0xfffffffd
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00400000, 0xfffffffd, x1, 204, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0xfffffffb
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xfffff7ff, 0xfffffffb, x1, 208, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0xfffffff7
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffff7fff, 0xfffffff7, x1, 212, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0xffffffdf
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xff7fffff, 0xffffffdf, x1, 216, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0xffffffbf
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00000008, 0xffffffbf, x1, 220, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0xfffffdff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00200000, 0xfffffdff, x1, 224, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xfffffbff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x01000000, 0xfffffbff, x1, 228, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0xfffff7ff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x55555555, 0xfffff7ff, x1, 232, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0xffffefff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0xffffffbf, 0xffffefff, x1, 236, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00000080;  op2val:0xffffdfff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00000080, 0xffffdfff, x1, 240, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0xffffbfff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x20000000, 0xffffbfff, x1, 244, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000007
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x80000000, 0x00000007, x1, 248, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00000000;  op2val:0xfffffeff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00000000, 0xfffffeff, x1, 252, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0xffdfffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x7fffffff, 0xffdfffff, x1, 256, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x01000000
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00000001, 0x01000000, x1, 260, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0xffff7fff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00000004, 0xffff7fff, x1, 264, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0xfff7ffff
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x00800000, 0xfff7ffff, x1, 268, x2)

# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0xaaaaaaaa
TEST_RR_OP(remu, x12, x10, x11, 0x00000000, 0x01000000, 0xaaaaaaaa, x1, 272, x2)
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


signature_x5_0:
    .fill 18*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 69*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
