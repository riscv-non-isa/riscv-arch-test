
#This assembly file tests the sub instruction of the RISC-V I extension for the sub covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sub)

la x3,signature_x3_1

# opcode: sub ; op1:x21; op2:x6; dest:x20; op1val:0x8000000000000000;  op2val:0x0000010000000000
TEST_RR_OP(sub, x20, x21, x6, 0x7fffff0000000000, 0x8000000000000000, 0x0000010000000000, x3, 0, x5)

# opcode: sub ; op1:x11; op2:x11; dest:x11; op1val:0x0000000000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sub, x11, x11, x11, 0x5555555555555556, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, x3, 8, x5)

# opcode: sub ; op1:x29; op2:x15; dest:x15; op1val:0x7fffffffffffffff;  op2val:0x0400000000000000
TEST_RR_OP(sub, x15, x29, x15, 0x7bffffffffffffff, 0x7fffffffffffffff, 0x0400000000000000, x3, 16, x5)

# opcode: sub ; op1:x16; op2:x31; dest:x16; op1val:0x0000000000000001;  op2val:0x0000000002000000
TEST_RR_OP(sub, x16, x16, x31, 0xfffffffffe000001, 0x0000000000000001, 0x0000000002000000, x3, 24, x5)

# opcode: sub ; op1:x19; op2:x19; dest:x6; op1val:0xffffbfffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(sub, x6, x19, x19, 0x7fffbfffffffffff, 0xffffbfffffffffff, 0x8000000000000000, x3, 32, x5)

# opcode: sub ; op1:x15; op2:x12; dest:x24; op1val:0x0000000001000000;  op2val:0x0000000000000000
TEST_RR_OP(sub, x24, x15, x12, 0x1000000, 0x0000000001000000, 0x0000000000000000, x3, 40, x5)

# opcode: sub ; op1:x12; op2:x9; dest:x18; op1val:0xffffffffff7fffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(sub, x18, x12, x9, 0x7fffffffff800000, 0xffffffffff7fffff, 0x7fffffffffffffff, x3, 48, x5)

# opcode: sub ; op1:x7; op2:x24; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000001
TEST_RR_OP(sub, x12, x7, x24, 0x1fffffff, 0x0000000020000000, 0x0000000000000001, x3, 56, x5)

# opcode: sub ; op1:x8; op2:x2; dest:x10; op1val:0x0000001000000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(sub, x10, x8, x2, 0x1000000004, 0x0000001000000000, 0xfffffffffffffffc, x3, 64, x5)

# opcode: sub ; op1:x23; op2:x27; dest:x30; op1val:0xffffefffffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(sub, x30, x23, x27, 0x0, 0xffffefffffffffff, 0xffffefffffffffff, x3, 72, x5)

# opcode: sub ; op1:x27; op2:x13; dest:x8; op1val:0x0000000000000002;  op2val:0x0000000000000020
TEST_RR_OP(sub, x8, x27, x13, 0xffffffffffffffe2, 0x0000000000000002, 0x0000000000000020, x3, 80, x5)

# opcode: sub ; op1:x4; op2:x8; dest:x2; op1val:0x0000000000000004;  op2val:0xfffbffffffffffff
TEST_RR_OP(sub, x2, x4, x8, 0x4000000000005, 0x0000000000000004, 0xfffbffffffffffff, x3, 88, x5)

# opcode: sub ; op1:x26; op2:x25; dest:x9; op1val:0x0000000000000008;  op2val:0xffffffffffffffdf
TEST_RR_OP(sub, x9, x26, x25, 0x29, 0x0000000000000008, 0xffffffffffffffdf, x3, 96, x5)

# opcode: sub ; op1:x9; op2:x1; dest:x29; op1val:0x0000000000000010;  op2val:0x0000000000000001
TEST_RR_OP(sub, x29, x9, x1, 0xf, 0x0000000000000010, 0x0000000000000001, x3, 104, x5)

# opcode: sub ; op1:x25; op2:x18; dest:x14; op1val:0x0000000000000020;  op2val:0x0000000004000000
TEST_RR_OP(sub, x14, x25, x18, 0xfffffffffc000020, 0x0000000000000020, 0x0000000004000000, x3, 112, x5)

# opcode: sub ; op1:x17; op2:x4; dest:x23; op1val:0x0000000000000040;  op2val:0xffffffefffffffff
TEST_RR_OP(sub, x23, x17, x4, 0x1000000041, 0x0000000000000040, 0xffffffefffffffff, x3, 120, x5)

# opcode: sub ; op1:x1; op2:x10; dest:x25; op1val:0x0000000000000080;  op2val:0xfffffffffeffffff
TEST_RR_OP(sub, x25, x1, x10, 0x1000081, 0x0000000000000080, 0xfffffffffeffffff, x3, 128, x9)

# opcode: sub ; op1:x14; op2:x22; dest:x26; op1val:0x0000000000000100;  op2val:0x0000000000000400
TEST_RR_OP(sub, x26, x14, x22, 0xfffffffffffffd00, 0x0000000000000100, 0x0000000000000400, x3, 136, x9)
la x8,signature_x8_0

# opcode: sub ; op1:x0; op2:x21; dest:x28; op1val:0x0000000000000200;  op2val:0xffffffffffffffbf
TEST_RR_OP(sub, x28, x0, x21, 0x241, 0x0000000000000200, 0xffffffffffffffbf, x8, 0, x9)

# opcode: sub ; op1:x30; op2:x28; dest:x4; op1val:0x0000000000000400;  op2val:0x0000008000000000
TEST_RR_OP(sub, x4, x30, x28, 0xffffff8000000400, 0x0000000000000400, 0x0000008000000000, x8, 8, x9)

# opcode: sub ; op1:x18; op2:x29; dest:x7; op1val:0x0000000000000800;  op2val:0x0000000008000000
TEST_RR_OP(sub, x7, x18, x29, 0xfffffffff8000800, 0x0000000000000800, 0x0000000008000000, x8, 16, x9)

# opcode: sub ; op1:x13; op2:x26; dest:x19; op1val:0x0000000000001000;  op2val:0x5555555555555555
TEST_RR_OP(sub, x19, x13, x26, 0xaaaaaaaaaaaabaab, 0x0000000000001000, 0x5555555555555555, x8, 24, x9)

# opcode: sub ; op1:x3; op2:x7; dest:x21; op1val:0x0000000000002000;  op2val:0x0000000200000000
TEST_RR_OP(sub, x21, x3, x7, 0xfffffffe00002000, 0x0000000000002000, 0x0000000200000000, x8, 32, x9)

# opcode: sub ; op1:x10; op2:x23; dest:x13; op1val:0x0000000000004000;  op2val:0xdfffffffffffffff
TEST_RR_OP(sub, x13, x10, x23, 0x2000000000004001, 0x0000000000004000, 0xdfffffffffffffff, x8, 40, x9)

# opcode: sub ; op1:x24; op2:x14; dest:x5; op1val:0x0000000000008000;  op2val:0xffffdfffffffffff
TEST_RR_OP(sub, x5, x24, x14, 0x200000008001, 0x0000000000008000, 0xffffdfffffffffff, x8, 48, x9)

# opcode: sub ; op1:x5; op2:x0; dest:x1; op1val:0x0000000000010000;  op2val:0xfffffffffffffbff
TEST_RR_OP(sub, x1, x5, x0, 0x10401, 0x0000000000010000, 0xfffffffffffffbff, x8, 56, x9)

# opcode: sub ; op1:x2; op2:x5; dest:x22; op1val:0x0000000000020000;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x22, x2, x5, 0x40000000020001, 0x0000000000020000, 0xffbfffffffffffff, x8, 64, x9)

# opcode: sub ; op1:x6; op2:x30; dest:x27; op1val:0x0000000000040000;  op2val:0x0000000000000200
TEST_RR_OP(sub, x27, x6, x30, 0x3fe00, 0x0000000000040000, 0x0000000000000200, x8, 72, x9)

# opcode: sub ; op1:x28; op2:x3; dest:x31; op1val:0x0000000000080000;  op2val:0x0000000010000000
TEST_RR_OP(sub, x31, x28, x3, 0xfffffffff0080000, 0x0000000000080000, 0x0000000010000000, x8, 80, x9)

# opcode: sub ; op1:x20; op2:x16; dest:x3; op1val:0x0000000000100000;  op2val:0xefffffffffffffff
TEST_RR_OP(sub, x3, x20, x16, 0x1000000000100001, 0x0000000000100000, 0xefffffffffffffff, x8, 88, x9)

# opcode: sub ; op1:x22; op2:x20; dest:x17; op1val:0x0000000000200000;  op2val:0xfffffffffbffffff
TEST_RR_OP(sub, x17, x22, x20, 0x4200001, 0x0000000000200000, 0xfffffffffbffffff, x8, 96, x9)

# opcode: sub ; op1:x31; op2:x17; dest:x0; op1val:0x0000000000400000;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x0, x31, x17, 0x40000000400001, 0x0000000000400000, 0xffbfffffffffffff, x8, 104, x9)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000002000
TEST_RR_OP(sub, x12, x10, x11, 0x7fe000, 0x0000000000800000, 0x0000000000002000, x8, 112, x9)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000020
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffe0, 0x0000000002000000, 0x0000000000000020, x8, 120, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x100000004000001, 0x0000000004000000, 0xfeffffffffffffff, x8, 128, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffffffff9
TEST_RR_OP(sub, x12, x10, x11, 0x8000007, 0x0000000008000000, 0xfffffffffffffff9, x8, 136, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(sub, x12, x10, x11, 0x10000101, 0x0000000010000000, 0xfffffffffffffeff, x8, 144, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xffffffffefffffff
TEST_RR_OP(sub, x12, x10, x11, 0x50000001, 0x0000000040000000, 0xffffffffefffffff, x8, 152, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfffdffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2000080000001, 0x0000000080000000, 0xfffdffffffffffff, x8, 160, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000008000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffff8100000000, 0x0000000100000000, 0x0000008000000000, x8, 168, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000020000000
TEST_RR_OP(sub, x12, x10, x11, 0x1e0000000, 0x0000000200000000, 0x0000000020000000, x8, 176, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffdffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2000400000001, 0x0000000400000000, 0xfffdffffffffffff, x8, 184, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffffff7fffff
TEST_RR_OP(sub, x12, x10, x11, 0x800800001, 0x0000000800000000, 0xffffffffff7fffff, x8, 192, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x200002000000001, 0x0000002000000000, 0xfdffffffffffffff, x8, 200, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000006
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffffa, 0x0000004000000000, 0x0000000000000006, x8, 208, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x48000000001, 0x0000008000000000, 0xfffffbffffffffff, x8, 216, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4000010000000001, 0x0000010000000000, 0xbfffffffffffffff, x8, 224, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x100020000000001, 0x0000020000000000, 0xfeffffffffffffff, x8, 232, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000001000
TEST_RR_OP(sub, x12, x10, x11, 0x3fffffff000, 0x0000040000000000, 0x0000000000001000, x8, 240, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(sub, x12, x10, x11, 0x80000000004, 0x0000080000000000, 0xfffffffffffffffc, x8, 248, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(sub, x12, x10, x11, 0x100000400001, 0x0000100000000000, 0xffffffffffbfffff, x8, 256, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000008000000
TEST_RR_OP(sub, x12, x10, x11, 0x1ffff8000000, 0x0000200000000000, 0x0000000008000000, x8, 264, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(sub, x12, x10, x11, 0x400000020001, 0x0000400000000000, 0xfffffffffffdffff, x8, 272, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000008000
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffff8000, 0x0000800000000000, 0x0000000000008000, x8, 280, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000000080001, 0x0001000000000000, 0xfffffffffff7ffff, x8, 288, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffffffff8, 0x0002000000000000, 0x0000000000000008, x8, 296, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x84000000000001, 0x0004000000000000, 0xff7fffffffffffff, x8, 304, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x28000000000001, 0x0008000000000000, 0xffdfffffffffffff, x8, 312, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffffffffffeffff
TEST_RR_OP(sub, x12, x10, x11, 0x10000000010001, 0x0010000000000000, 0xfffffffffffeffff, x8, 320, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000080000000000
TEST_RR_OP(sub, x12, x10, x11, 0x1ff80000000000, 0x0020000000000000, 0x0000080000000000, x8, 328, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2040000000000001, 0x0040000000000000, 0xdfffffffffffffff, x8, 336, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(sub, x12, x10, x11, 0x80000008000001, 0x0080000000000000, 0xfffffffff7ffffff, x8, 344, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000004000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffc000000000, 0x0100000000000000, 0x0000004000000000, x8, 352, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xa00000000000001, 0x0200000000000000, 0xf7ffffffffffffff, x8, 360, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000002000000000
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffe000000000, 0x0400000000000000, 0x0000002000000000, x8, 368, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000080000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7fff80000000000, 0x0800000000000000, 0x0000080000000000, x8, 376, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x2000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xf000000000000000, 0x1000000000000000, 0x2000000000000000, x8, 384, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sub, x12, x10, x11, 0x7555555555555556, 0x2000000000000000, 0xaaaaaaaaaaaaaaaa, x8, 392, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4080000000000001, 0x4000000000000000, 0xff7fffffffffffff, x8, 400, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xffefffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffff, 0xfffffffffffffffe, 0xffefffffffffffff, x8, 408, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xffffefffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffe, 0xfffffffffffffffd, 0xffffefffffffffff, x8, 416, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffffffffffdffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffc, 0xfffffffffffffffb, 0xfffffffffffdffff, x8, 424, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xffffffffefffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffff8, 0xfffffffffffffff7, 0xffffffffefffffff, x8, 432, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sub, x12, x10, x11, 0x5555555555555545, 0xffffffffffffffef, 0xaaaaaaaaaaaaaaaa, x8, 440, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffffffff7fffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffe0, 0xffffffffffffffdf, 0xffffffff7fffffff, x8, 448, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfffffffffffffdff
TEST_RR_OP(sub, x12, x10, x11, 0x1c0, 0xffffffffffffffbf, 0xfffffffffffffdff, x8, 456, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffffffff7ffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ff80, 0xffffffffffffff7f, 0xfffffffffff7ffff, x8, 464, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000010
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffffeef, 0xfffffffffffffeff, 0x0000000000000010, x8, 472, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x8000000000101, 0x0000000000000100, 0xfff7ffffffffffff, x8, 480, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0xfbffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x400000000001001, 0x0000000000001000, 0xfbffffffffffffff, x8, 488, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000020
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffffddf, 0xfffffffffffffdff, 0x0000000000000020, x8, 496, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000004000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffbbff, 0xfffffffffffffbff, 0x0000000000004000, x8, 504, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000010000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffeffff7ff, 0xfffffffffffff7ff, 0x0000000010000000, x8, 512, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffefffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffff000, 0xffffffffffffefff, 0xffffffffefffffff, x8, 520, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xffffffffdfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffe000, 0xffffffffffffdfff, 0xffffffffdfffffff, x8, 528, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000020000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffdfffbfff, 0xffffffffffffbfff, 0x0000000020000000, x8, 536, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfffbffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffff8000, 0xffffffffffff7fff, 0xfffbffffffffffff, x8, 544, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000040000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffbffeffff, 0xfffffffffffeffff, 0x0000000040000000, x8, 552, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(sub, x12, x10, x11, 0x0, 0xfffffffffffdffff, 0xfffffffffffdffff, x8, 560, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x1000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xeffffffffffbffff, 0xfffffffffffbffff, 0x1000000000000000, x8, 568, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xfffffffffffffffa
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffff80005, 0xfffffffffff7ffff, 0xfffffffffffffffa, x8, 576, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(sub, x12, x10, x11, 0xf00000, 0xffffffffffefffff, 0xfffffffffeffffff, x8, 584, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000010000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffefdfffff, 0xffffffffffdfffff, 0x0000000010000000, x8, 592, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffc00000, 0xffffffffffbfffff, 0xfffffffeffffffff, x8, 600, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x5555555555555555
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaaaaaa9aaaaaa, 0xfffffffffeffffff, 0x5555555555555555, x8, 608, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000040000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffbdffffff, 0xfffffffffdffffff, 0x0000000040000000, x8, 616, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffc000000, 0xfffffffffbffffff, 0xffbfffffffffffff, x8, 624, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ff8000000, 0xfffffffff7ffffff, 0xffffff7fffffffff, x8, 632, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fffff0000000, 0xffffffffefffffff, 0xfff7ffffffffffff, x8, 640, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x1000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xefffffffdfffffff, 0xffffffffdfffffff, 0x1000000000000000, x8, 648, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffc0000800, 0xffffffffbfffffff, 0xfffffffffffff7ff, x8, 656, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffff80000000, 0xffffffff7fffffff, 0xf7ffffffffffffff, x8, 664, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffff00100000, 0xfffffffeffffffff, 0xffffffffffefffff, x8, 672, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000040
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffdffffffbf, 0xfffffffdffffffff, 0x0000000000000040, x8, 680, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffe00000000, 0xfffffffbffffffff, 0xfffffffdffffffff, x8, 688, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000004000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffb7ffffffff, 0xfffffff7ffffffff, 0x0000004000000000, x8, 696, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffffffffb
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff000000004, 0xffffffefffffffff, 0xfffffffffffffffb, x8, 704, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfffffffffffffffc
TEST_RR_OP(sub, x12, x10, x11, 0xffffffe000000003, 0xffffffdfffffffff, 0xfffffffffffffffc, x8, 712, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sub, x12, x10, x11, 0xffffffbffffffff7, 0xffffffbfffffffff, 0x0000000000000008, x8, 720, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ff8000000000, 0xffffff7fffffffff, 0xfffbffffffffffff, x8, 728, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffeffffffffff, 0xfffffeffffffffff, 0x8000000000000000, x8, 736, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffe0000040000, 0xfffffdffffffffff, 0xfffffffffffbffff, x8, 744, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sub, x12, x10, x11, 0xfffffbffffffffdf, 0xfffffbffffffffff, 0x0000000000000020, x8, 752, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ff80000000000, 0xfffff7ffffffffff, 0xff7fffffffffffff, x8, 760, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3fffe00000000000, 0xffffdfffffffffff, 0xbfffffffffffffff, x8, 768, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1800000000000, 0xffff7fffffffffff, 0xfffdffffffffffff, x8, 776, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xf000000000000, 0xfffeffffffffffff, 0xffefffffffffffff, x8, 784, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffe000000800000, 0xfffdffffffffffff, 0xffffffffff7fffff, x8, 792, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffc000000010000, 0xfffbffffffffffff, 0xfffffffffffeffff, x8, 800, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffffffffffffffb
TEST_RR_OP(sub, x12, x10, x11, 0xfff8000000000004, 0xfff7ffffffffffff, 0xfffffffffffffffb, x8, 808, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000040
TEST_RR_OP(sub, x12, x10, x11, 0xffefffffffffffbf, 0xffefffffffffffff, 0x0000000000000040, x8, 816, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffffffffffff6
TEST_RR_OP(sub, x12, x10, x11, 0xffe0000000000009, 0xffdfffffffffffff, 0xfffffffffffffff6, x8, 824, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(sub, x12, x10, x11, 0xffc0000000002000, 0xffbfffffffffffff, 0xffffffffffffdfff, x8, 832, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000002000000000
TEST_RR_OP(sub, x12, x10, x11, 0xff7fffdfffffffff, 0xff7fffffffffffff, 0x0000002000000000, x8, 840, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(sub, x12, x10, x11, 0xff00000000000080, 0xfeffffffffffffff, 0xffffffffffffff7f, x8, 848, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfe20000000000000, 0xfdffffffffffffff, 0xffdfffffffffffff, x8, 856, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7bffffffffffffff, 0xfbffffffffffffff, 0x8000000000000000, x8, 864, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000001000
TEST_RR_OP(sub, x12, x10, x11, 0xf7ffffffffffefff, 0xf7ffffffffffffff, 0x0000000000001000, x8, 872, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xf040000000000000, 0xefffffffffffffff, 0xffbfffffffffffff, x8, 880, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000080000
TEST_RR_OP(sub, x12, x10, x11, 0xdffffffffff7ffff, 0xdfffffffffffffff, 0x0000000000080000, x8, 888, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000400000000000
TEST_RR_OP(sub, x12, x10, x11, 0xbfffbfffffffffff, 0xbfffffffffffffff, 0x0000400000000000, x8, 896, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffffbffffff
TEST_RR_OP(sub, x12, x10, x11, 0x5555555559555556, 0x5555555555555555, 0xfffffffffbffffff, x8, 904, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffffffffffffffdf
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaaaaaaaaaaacb, 0xaaaaaaaaaaaaaaaa, 0xffffffffffffffdf, x8, 912, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000000000000002
TEST_RR_OP(sub, x12, x10, x11, 0xe, 0x0000000000000010, 0x0000000000000002, x8, 920, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000000000000004
TEST_RR_OP(sub, x12, x10, x11, 0xc, 0x0000000000000010, 0x0000000000000004, x8, 928, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000080
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffbfffff7f, 0xffffffffbfffffff, 0x0000000000000080, x8, 936, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(sub, x12, x10, x11, 0xffdffffffffffeff, 0xffdfffffffffffff, 0x0000000000000100, x8, 944, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000000000800
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffff820, 0x0000000000000020, 0x0000000000000800, x8, 952, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000010000
TEST_RR_OP(sub, x12, x10, x11, 0xffff0000, 0x0000000100000000, 0x0000000000010000, x8, 960, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000020000
TEST_RR_OP(sub, x12, x10, x11, 0x1fe0000, 0x0000000002000000, 0x0000000000020000, x8, 968, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x0000000000040000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffc1000, 0x0000000000001000, 0x0000000000040000, x8, 976, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000100000
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffff00000, 0x0040000000000000, 0x0000000000100000, x8, 984, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000200000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffdfff7f, 0xffffffffffffff7f, 0x0000000000200000, x8, 992, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000400000
TEST_RR_OP(sub, x12, x10, x11, 0xfc00000, 0x0000000010000000, 0x0000000000400000, x8, 1000, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0x0000000000800000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffff7ffffa, 0xfffffffffffffffa, 0x0000000000800000, x8, 1008, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000001000000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffffff000000, 0x0800000000000000, 0x0000000001000000, x8, 1016, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000080000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffff7ff7fffffff, 0xfffff7ffffffffff, 0x0000000080000000, x8, 1024, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0x0000000100000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffefffffff8, 0xfffffffffffffff8, 0x0000000100000000, x8, 1032, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000400000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffc40000000, 0x0000000040000000, 0x0000000400000000, x8, 1040, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0x0000000800000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff7fffffff6, 0xfffffffffffffff6, 0x0000000800000000, x8, 1048, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000001000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffff000000000, 0x0010000000000000, 0x0000001000000000, x8, 1056, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000020000000000
TEST_RR_OP(sub, x12, x10, x11, 0x1fe0000000000, 0x0002000000000000, 0x0000020000000000, x8, 1064, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000040000000000
TEST_RR_OP(sub, x12, x10, x11, 0xdffffbffffffffff, 0xdfffffffffffffff, 0x0000040000000000, x8, 1072, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000100000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffefffffefffff, 0xffffffffffefffff, 0x0000100000000000, x8, 1080, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000200000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffdfffff7fffff, 0xffffffffff7fffff, 0x0000200000000000, x8, 1088, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000800000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffff800400000000, 0x0000000400000000, 0x0000800000000000, x8, 1096, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0001000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffefffffffeffff, 0xfffffffffffeffff, 0x0001000000000000, x8, 1104, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0004000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffc000000000020, 0x0000000000000020, 0x0004000000000000, x8, 1112, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0008000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfff7ffefffffffff, 0xffffffefffffffff, 0x0008000000000000, x8, 1120, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0010000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffefffffffefffff, 0xffffffffffefffff, 0x0010000000000000, x8, 1128, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0020000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffdffffffffffdff, 0xfffffffffffffdff, 0x0020000000000000, x8, 1136, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0x0040000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffc0000000000800, 0x0000000000000800, 0x0040000000000000, x8, 1144, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0080000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xff7fffffff7fffff, 0xffffffffff7fffff, 0x0080000000000000, x8, 1152, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0x0100000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xff00000000000003, 0x0000000000000003, 0x0100000000000000, x8, 1160, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0200000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfe00000000200000, 0x0000000000200000, 0x0200000000000000, x8, 1168, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0800000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x77ffffffffffffff, 0x7fffffffffffffff, 0x0800000000000000, x8, 1176, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x4000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xbfffffffefffffff, 0xffffffffefffffff, 0x4000000000000000, x8, 1184, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0xfffffffffffffffe
TEST_RR_OP(sub, x12, x10, x11, 0x8002, 0x0000000000008000, 0xfffffffffffffffe, x8, 1192, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(sub, x12, x10, x11, 0xff00000000000002, 0xfeffffffffffffff, 0xfffffffffffffffd, x8, 1200, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xfffffffffffffff7
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffffff8, 0xffffffffffffffef, 0xfffffffffffffff7, x8, 1208, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffffffffffffffef
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffff0000010, 0xffffffffefffffff, 0xffffffffffffffef, x8, 1216, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffffffffefff
TEST_RR_OP(sub, x12, x10, x11, 0xff0, 0xffffffffffffffef, 0xffffffffffffefff, x8, 1224, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xffffffffffffbfff
TEST_RR_OP(sub, x12, x10, x11, 0x4081, 0x0000000000000080, 0xffffffffffffbfff, x8, 1232, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffff200000, 0xfffffffffeffffff, 0xffffffffffdfffff, x8, 1240, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0xfffffffffdffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2000101, 0x0000000000000100, 0xfffffffffdffffff, x8, 1248, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0xffffffffbfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffff7, 0xfffffffffffffff6, 0xffffffffbfffffff, x8, 1256, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffe000400000000, 0xfffdffffffffffff, 0xfffffffbffffffff, x8, 1264, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffffff7ffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffffe, 0xfffffffffffffffd, 0xfffffff7ffffffff, x8, 1272, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2080000001, 0x0000000080000000, 0xffffffdfffffffff, x8, 1280, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x84000000001, 0x0000080000000000, 0xffffffbfffffffff, x8, 1288, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7e0000000000, 0xfffffdffffffffff, 0xffff7fffffffffff, x8, 1296, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffff000000, 0xfffffffffeffffff, 0xfffffeffffffffff, x8, 1304, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xfffffdffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x20000800001, 0x0000000000800000, 0xfffffdffffffffff, x8, 1312, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffff7ffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffffffc, 0xfffffffffffffffb, 0xfffff7ffffffffff, x8, 1320, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xffffbfffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x400002000001, 0x0000000002000000, 0xffffbfffffffffff, x8, 1328, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffffffffffff7fff
TEST_RR_OP(sub, x12, x10, x11, 0x7800, 0xfffffffffffff7ff, 0xffffffffffff7fff, x8, 1336, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xf00000000000, 0xffffefffffffffff, 0xfffeffffffffffff, x8, 1344, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0002000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffe000000000000, 0x8000000000000000, 0x0002000000000000, x8, 1352, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sub, x12, x10, x11, 0x5555555555555556, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, x8, 1360, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0400000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7bffffffffffffff, 0x7fffffffffffffff, 0x0400000000000000, x8, 1368, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000002000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffe000001, 0x0000000000000001, 0x0000000002000000, x8, 1376, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7fffbfffffffffff, 0xffffbfffffffffff, 0x8000000000000000, x8, 1384, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0xffffffffffffffbf
TEST_RR_OP(sub, x12, x10, x11, 0x241, 0x0000000000000200, 0xffffffffffffffbf, x8, 1392, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0xfffffffffffffbff
TEST_RR_OP(sub, x12, x10, x11, 0x10401, 0x0000000000010000, 0xfffffffffffffbff, x8, 1400, x1)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x40000000400001, 0x0000000000400000, 0xffbfffffffffffff, x8, 1408, x1)
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
    .fill 18*(XLEN/32),4,0xafacadee


signature_x8_0:
    .fill 177*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
