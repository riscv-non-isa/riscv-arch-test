
#This assembly file tests the sub instruction of the RISC-V I extension for the sub covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sub)

la x3,signature_x3_1

# opcode: sub ; op1:x28; op2:x10; dest:x28; op1val:0x8000000000000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(sub, x28, x28, x10, 0x8000002000000001, 0x8000000000000000, 0xffffffdfffffffff, x3, 0, x14)

# opcode: sub ; op1:x22; op2:x19; dest:x2; op1val:0x0000000000000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(sub, x2, x22, x19, 0x3, 0x0000000000000000, 0xfffffffffffffffd, x3, 8, x14)

# opcode: sub ; op1:x0; op2:x0; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(sub, x12, x0, x0, 0x8000002000000000, 0x7fffffffffffffff, 0xffffffdfffffffff, x3, 16, x14)

# opcode: sub ; op1:x12; op2:x15; dest:x15; op1val:0x0000000000000001;  op2val:0x0000001000000000
TEST_RR_OP(sub, x15, x12, x15, 0xfffffff000000001, 0x0000000000000001, 0x0000001000000000, x3, 24, x14)

# opcode: sub ; op1:x26; op2:x26; dest:x26; op1val:0x0000000002000000;  op2val:0x8000000000000000
TEST_RR_OP(sub, x26, x26, x26, 0x8000000002000000, 0x0000000002000000, 0x8000000000000000, x3, 32, x14)

# opcode: sub ; op1:x20; op2:x21; dest:x17; op1val:0xffffffefffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sub, x17, x20, x21, 0xffffffefffffffff, 0xffffffefffffffff, 0x0000000000000000, x3, 40, x14)

# opcode: sub ; op1:x8; op2:x13; dest:x25; op1val:0x0000000080000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(sub, x25, x8, x13, 0x8000000080000001, 0x0000000080000000, 0x7fffffffffffffff, x3, 48, x14)

# opcode: sub ; op1:x2; op2:x18; dest:x16; op1val:0xfffdffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sub, x16, x2, x18, 0xfffdfffffffffffe, 0xfffdffffffffffff, 0x0000000000000001, x3, 56, x14)

# opcode: sub ; op1:x27; op2:x16; dest:x13; op1val:0xbfffffffffffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x13, x27, x16, 0x0, 0xbfffffffffffffff, 0xbfffffffffffffff, x3, 64, x14)

# opcode: sub ; op1:x29; op2:x31; dest:x30; op1val:0x0000000000000002;  op2val:0x4000000000000000
TEST_RR_OP(sub, x30, x29, x31, 0xc000000000000002, 0x0000000000000002, 0x4000000000000000, x3, 72, x14)

# opcode: sub ; op1:x9; op2:x25; dest:x1; op1val:0x0000000000000004;  op2val:0xfffffffffff7ffff
TEST_RR_OP(sub, x1, x9, x25, 0x80005, 0x0000000000000004, 0xfffffffffff7ffff, x3, 80, x14)

# opcode: sub ; op1:x18; op2:x4; dest:x0; op1val:0x0000000000000008;  op2val:0xffffffefffffffff
TEST_RR_OP(sub, x0, x18, x4, 0x1000000009, 0x0000000000000008, 0xffffffefffffffff, x3, 88, x14)

# opcode: sub ; op1:x17; op2:x6; dest:x24; op1val:0x0000000000000010;  op2val:0x0080000000000000
TEST_RR_OP(sub, x24, x17, x6, 0xff80000000000010, 0x0000000000000010, 0x0080000000000000, x3, 96, x14)

# opcode: sub ; op1:x21; op2:x11; dest:x6; op1val:0x0000000000000020;  op2val:0x0080000000000000
TEST_RR_OP(sub, x6, x21, x11, 0xff80000000000020, 0x0000000000000020, 0x0080000000000000, x3, 104, x14)

# opcode: sub ; op1:x4; op2:x28; dest:x9; op1val:0x0000000000000040;  op2val:0xffffbfffffffffff
TEST_RR_OP(sub, x9, x4, x28, 0x400000000041, 0x0000000000000040, 0xffffbfffffffffff, x3, 112, x14)

# opcode: sub ; op1:x13; op2:x24; dest:x8; op1val:0x0000000000000080;  op2val:0x4000000000000000
TEST_RR_OP(sub, x8, x13, x24, 0xc000000000000080, 0x0000000000000080, 0x4000000000000000, x3, 120, x14)

# opcode: sub ; op1:x31; op2:x7; dest:x5; op1val:0x0000000000000100;  op2val:0x0000000000000000
TEST_RR_OP(sub, x5, x31, x7, 0x100, 0x0000000000000100, 0x0000000000000000, x3, 128, x14)
la x13,signature_x13_0

# opcode: sub ; op1:x15; op2:x14; dest:x31; op1val:0x0000000000000200;  op2val:0x8000000000000000
TEST_RR_OP(sub, x31, x15, x14, 0x8000000000000200, 0x0000000000000200, 0x8000000000000000, x13, 0, x25)

# opcode: sub ; op1:x3; op2:x5; dest:x21; op1val:0x0000000000000400;  op2val:0x0000000020000000
TEST_RR_OP(sub, x21, x3, x5, 0xffffffffe0000400, 0x0000000000000400, 0x0000000020000000, x13, 8, x25)

# opcode: sub ; op1:x7; op2:x20; dest:x14; op1val:0x0000000000000800;  op2val:0x0000400000000000
TEST_RR_OP(sub, x14, x7, x20, 0xffffc00000000800, 0x0000000000000800, 0x0000400000000000, x13, 16, x25)

# opcode: sub ; op1:x10; op2:x8; dest:x3; op1val:0x0000000000001000;  op2val:0x7fffffffffffffff
TEST_RR_OP(sub, x3, x10, x8, 0x8000000000001001, 0x0000000000001000, 0x7fffffffffffffff, x13, 24, x25)

# opcode: sub ; op1:x6; op2:x30; dest:x29; op1val:0x0000000000002000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(sub, x29, x6, x30, 0x82001, 0x0000000000002000, 0xfffffffffff7ffff, x13, 32, x25)

# opcode: sub ; op1:x14; op2:x27; dest:x19; op1val:0x0000000000004000;  op2val:0x0000010000000000
TEST_RR_OP(sub, x19, x14, x27, 0xffffff0000004000, 0x0000000000004000, 0x0000010000000000, x13, 40, x25)

# opcode: sub ; op1:x1; op2:x23; dest:x18; op1val:0x0000000000008000;  op2val:0xfffffffffffffff9
TEST_RR_OP(sub, x18, x1, x23, 0x8007, 0x0000000000008000, 0xfffffffffffffff9, x13, 48, x25)

# opcode: sub ; op1:x5; op2:x29; dest:x23; op1val:0x0000000000010000;  op2val:0x0000000000000006
TEST_RR_OP(sub, x23, x5, x29, 0xfffa, 0x0000000000010000, 0x0000000000000006, x13, 56, x25)

# opcode: sub ; op1:x24; op2:x9; dest:x20; op1val:0x0000000000020000;  op2val:0x0000080000000000
TEST_RR_OP(sub, x20, x24, x9, 0xfffff80000020000, 0x0000000000020000, 0x0000080000000000, x13, 64, x25)

# opcode: sub ; op1:x30; op2:x22; dest:x27; op1val:0x0000000000040000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(sub, x27, x30, x22, 0x8040001, 0x0000000000040000, 0xfffffffff7ffffff, x13, 72, x25)

# opcode: sub ; op1:x11; op2:x2; dest:x10; op1val:0x0000000000080000;  op2val:0x0000000000200000
TEST_RR_OP(sub, x10, x11, x2, 0xffffffffffe80000, 0x0000000000080000, 0x0000000000200000, x13, 80, x25)

# opcode: sub ; op1:x16; op2:x12; dest:x4; op1val:0x0000000000100000;  op2val:0xffffffffffffffdf
TEST_RR_OP(sub, x4, x16, x12, 0x100021, 0x0000000000100000, 0xffffffffffffffdf, x13, 88, x25)

# opcode: sub ; op1:x19; op2:x17; dest:x7; op1val:0x0000000000200000;  op2val:0x0002000000000000
TEST_RR_OP(sub, x7, x19, x17, 0xfffe000000200000, 0x0000000000200000, 0x0002000000000000, x13, 96, x25)

# opcode: sub ; op1:x25; op2:x3; dest:x11; op1val:0x0000000000400000;  op2val:0x0000000000000040
TEST_RR_OP(sub, x11, x25, x3, 0x3fffc0, 0x0000000000400000, 0x0000000000000040, x13, 104, x4)
la x2,signature_x2_0

# opcode: sub ; op1:x23; op2:x1; dest:x22; op1val:0x0000000000800000;  op2val:0xfffffffffffbffff
TEST_RR_OP(sub, x22, x23, x1, 0x840001, 0x0000000000800000, 0xfffffffffffbffff, x2, 0, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x1000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xf000000001000000, 0x0000000001000000, 0x1000000000000000, x2, 8, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xffffffffdfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x24000001, 0x0000000004000000, 0xffffffffdfffffff, x2, 16, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(sub, x12, x10, x11, 0x8000004, 0x0000000008000000, 0xfffffffffffffffc, x2, 24, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000001000
TEST_RR_OP(sub, x12, x10, x11, 0xffff000, 0x0000000010000000, 0x0000000000001000, x2, 32, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x4000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xc000000020000000, 0x0000000020000000, 0x4000000000000000, x2, 40, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000400000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffc00040000000, 0x0000000040000000, 0x0000400000000000, x2, 48, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2000000100000001, 0x0000000100000000, 0xdfffffffffffffff, x2, 56, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000004000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffc200000000, 0x0000000200000000, 0x0000004000000000, x2, 64, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000200000
TEST_RR_OP(sub, x12, x10, x11, 0x3ffe00000, 0x0000000400000000, 0x0000000000200000, x2, 72, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000040000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffc0800000000, 0x0000000800000000, 0x0000040000000000, x2, 80, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000100001, 0x0000001000000000, 0xffffffffffefffff, x2, 88, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000100000000
TEST_RR_OP(sub, x12, x10, x11, 0x1f00000000, 0x0000002000000000, 0x0000000100000000, x2, 96, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(sub, x12, x10, x11, 0x4000200001, 0x0000004000000000, 0xffffffffffdfffff, x2, 104, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffffffffffe
TEST_RR_OP(sub, x12, x10, x11, 0x8000000002, 0x0000008000000000, 0xfffffffffffffffe, x2, 112, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(sub, x12, x10, x11, 0x10000000801, 0x0000010000000000, 0xfffffffffffff7ff, x2, 120, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffffffffdffffff
TEST_RR_OP(sub, x12, x10, x11, 0x20002000001, 0x0000020000000000, 0xfffffffffdffffff, x2, 128, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x1000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xf000040000000000, 0x0000040000000000, 0x1000000000000000, x2, 136, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0100000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xff00080000000000, 0x0000080000000000, 0x0100000000000000, x2, 144, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(sub, x12, x10, x11, 0x100000400001, 0x0000100000000000, 0xffffffffffbfffff, x2, 152, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000002000
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffffe000, 0x0000200000000000, 0x0000000000002000, x2, 160, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(sub, x12, x10, x11, 0x400004000001, 0x0000400000000000, 0xfffffffffbffffff, x2, 168, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffffffffdffffff
TEST_RR_OP(sub, x12, x10, x11, 0x800002000001, 0x0000800000000000, 0xfffffffffdffffff, x2, 176, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x8000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x8001000000000000, 0x0001000000000000, 0x8000000000000000, x2, 184, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x4000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xc002000000000000, 0x0002000000000000, 0x4000000000000000, x2, 192, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000100
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffffff00, 0x0004000000000000, 0x0000000000000100, x2, 200, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xfffffffffffffffa
TEST_RR_OP(sub, x12, x10, x11, 0x8000000000006, 0x0008000000000000, 0xfffffffffffffffa, x2, 208, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x10080000000001, 0x0010000000000000, 0xfffff7ffffffffff, x2, 216, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000200000000000
TEST_RR_OP(sub, x12, x10, x11, 0x1fe00000000000, 0x0020000000000000, 0x0000200000000000, x2, 224, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0010000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x30000000000000, 0x0040000000000000, 0x0010000000000000, x2, 232, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(sub, x12, x10, x11, 0x80000000008001, 0x0080000000000000, 0xffffffffffff7fff, x2, 240, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(sub, x12, x10, x11, 0x100000000000005, 0x0100000000000000, 0xfffffffffffffffb, x2, 248, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xffffffffffffefff
TEST_RR_OP(sub, x12, x10, x11, 0x200000000001001, 0x0200000000000000, 0xffffffffffffefff, x2, 256, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000040
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffffffffc0, 0x0400000000000000, 0x0000000000000040, x2, 264, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0080000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x780000000000000, 0x0800000000000000, 0x0080000000000000, x2, 272, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfffffffffffffff9
TEST_RR_OP(sub, x12, x10, x11, 0x1000000000000007, 0x1000000000000000, 0xfffffffffffffff9, x2, 280, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(sub, x12, x10, x11, 0x2000000000008001, 0x2000000000000000, 0xffffffffffff7fff, x2, 288, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(sub, x12, x10, x11, 0x4000000000200001, 0x4000000000000000, 0xffffffffffdfffff, x2, 296, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xffffffffffffffbf
TEST_RR_OP(sub, x12, x10, x11, 0x3f, 0xfffffffffffffffe, 0xffffffffffffffbf, x2, 304, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000200000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffdffffffffffd, 0xfffffffffffffffd, 0x0000200000000000, x2, 312, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xefffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffffc, 0xfffffffffffffffb, 0xefffffffffffffff, x2, 320, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000400000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffbffffffffff7, 0xfffffffffffffff7, 0x0000400000000000, x2, 328, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000200000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffdfffef, 0xffffffffffffffef, 0x0000000000200000, x2, 336, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffdffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffffffffe0, 0xffffffffffffffdf, 0xfffdffffffffffff, x2, 344, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000008
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffffb7, 0xffffffffffffffbf, 0x0000000000000008, x2, 352, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000004000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffbf7f, 0xffffffffffffff7f, 0x0000000000004000, x2, 360, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000010
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffffeef, 0xfffffffffffffeff, 0x0000000000000010, x2, 368, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000010000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffefffffffdff, 0xfffffffffffffdff, 0x0000010000000000, x2, 376, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000020
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffffbdf, 0xfffffffffffffbff, 0x0000000000000020, x2, 384, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffffbfffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffff800, 0xfffffffffffff7ff, 0xffffbfffffffffff, x2, 392, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfffffeffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff000, 0xffffffffffffefff, 0xfffffeffffffffff, x2, 400, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffbffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4010000000001, 0x0000010000000000, 0xfffbffffffffffff, x2, 408, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fffff0000000, 0xffffffffefffffff, 0xfff7ffffffffffff, x2, 416, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xffefffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x10000001000001, 0x0000000001000000, 0xffefffffffffffff, x2, 424, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffa0000000000000, 0xff7fffffffffffff, 0xffdfffffffffffff, x2, 432, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x440000000000001, 0x0400000000000000, 0xffbfffffffffffff, x2, 440, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xff7fffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffffffffe00, 0xfffffffffffffdff, 0xff7fffffffffffff, x2, 448, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xff00000000000000, 0xfdffffffffffffff, 0xfeffffffffffffff, x2, 456, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x210000000000001, 0x0010000000000000, 0xfdffffffffffffff, x2, 464, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffe000000000, 0xffffffdfffffffff, 0xfbffffffffffffff, x2, 472, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fc000000000000, 0xfffbffffffffffff, 0xf7ffffffffffffff, x2, 480, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0x5555555555555555
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaaaaaaaaaaaa3, 0xfffffffffffffff8, 0x5555555555555555, x2, 488, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sub, x12, x10, x11, 0x5515555555555555, 0xffbfffffffffffff, 0xaaaaaaaaaaaaaaaa, x2, 496, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000200
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffddff, 0xffffffffffffdfff, 0x0000000000000200, x2, 504, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x4000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xbfffffffffffbfff, 0xffffffffffffbfff, 0x4000000000000000, x2, 512, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0800000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xf7ffffffffff7fff, 0xffffffffffff7fff, 0x0800000000000000, x2, 520, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffffffffffffef
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffff0010, 0xfffffffffffeffff, 0xffffffffffffffef, x2, 528, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000001000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffeffffdffff, 0xfffffffffffdffff, 0x0000001000000000, x2, 536, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffffc0000, 0xfffffffffffbffff, 0xffffdfffffffffff, x2, 544, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000002000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffdf7ffff, 0xfffffffffff7ffff, 0x0000000002000000, x2, 552, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffffff00000, 0xffffffffffefffff, 0xf7ffffffffffffff, x2, 560, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xc000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x3fffffffffdfffff, 0xffffffffffdfffff, 0xc000000000000000, x2, 568, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffffffffffffff9
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffc00006, 0xffffffffffbfffff, 0xfffffffffffffff9, x2, 576, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000020000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffdf7fffff, 0xffffffffff7fffff, 0x0000000020000000, x2, 584, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0004000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffbfffffeffffff, 0xfffffffffeffffff, 0x0004000000000000, x2, 592, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000008000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffff7ffdffffff, 0xfffffffffdffffff, 0x0000008000000000, x2, 600, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3fffc000000, 0xfffffffffbffffff, 0xfffffbffffffffff, x2, 608, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000040
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffff7ffffbf, 0xfffffffff7ffffff, 0x0000000000000040, x2, 616, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000002
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffdffffffd, 0xffffffffdfffffff, 0x0000000000000002, x2, 624, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000007
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffbffffff8, 0xffffffffbfffffff, 0x0000000000000007, x2, 632, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000006
TEST_RR_OP(sub, x12, x10, x11, 0xffffffff7ffffff9, 0xffffffff7fffffff, 0x0000000000000006, x2, 640, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fff00000000, 0xfffffffeffffffff, 0xffff7fffffffffff, x2, 648, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000800000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff5ffffffff, 0xfffffffdffffffff, 0x0000000800000000, x2, 656, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000400000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff7ffffffff, 0xfffffffbffffffff, 0x0000000400000000, x2, 664, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff7fffffffe, 0xfffffff7ffffffff, 0x0000000000000001, x2, 672, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0001000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffeffbfffffffff, 0xffffffbfffffffff, 0x0001000000000000, x2, 680, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000400000
TEST_RR_OP(sub, x12, x10, x11, 0xffffff7fffbfffff, 0xffffff7fffffffff, 0x0000000000400000, x2, 688, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0800000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xf7fffeffffffffff, 0xfffffeffffffffff, 0x0800000000000000, x2, 696, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffcffffffffff, 0xfffffdffffffffff, 0x0000010000000000, x2, 704, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x40000000000, 0xfffffbffffffffff, 0xfffff7ffffffffff, x2, 712, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x180000000000, 0xfffff7ffffffffff, 0xffffdfffffffffff, x2, 720, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sub, x12, x10, x11, 0xffffeffffffffffa, 0xffffefffffffffff, 0x0000000000000005, x2, 728, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xc000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x3fffdfffffffffff, 0xffffdfffffffffff, 0xc000000000000000, x2, 736, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfffffffffffffffa
TEST_RR_OP(sub, x12, x10, x11, 0xffffc00000000005, 0xffffbfffffffffff, 0xfffffffffffffffa, x2, 744, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sub, x12, x10, x11, 0xfff7fffffffffffe, 0xfff7ffffffffffff, 0x0000000000000001, x2, 752, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfeefffffffffffff, 0xffefffffffffffff, 0x0100000000000000, x2, 760, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffe8000000000000, 0xffdfffffffffffff, 0xfff7ffffffffffff, x2, 768, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xff08000000000000, 0xfeffffffffffffff, 0xfff7ffffffffffff, x2, 776, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfe00000000000000, 0xfbffffffffffffff, 0xfdffffffffffffff, x2, 784, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000001000000000
TEST_RR_OP(sub, x12, x10, x11, 0xf7ffffefffffffff, 0xf7ffffffffffffff, 0x0000001000000000, x2, 792, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000002000
TEST_RR_OP(sub, x12, x10, x11, 0xefffffffffffdfff, 0xefffffffffffffff, 0x0000000000002000, x2, 800, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sub, x12, x10, x11, 0xdffffffffffffffb, 0xdfffffffffffffff, 0x0000000000000004, x2, 808, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000040
TEST_RR_OP(sub, x12, x10, x11, 0x5555555555555515, 0x5555555555555555, 0x0000000000000040, x2, 816, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffffffffffbfffff
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaaaaaaaeaaaab, 0xaaaaaaaaaaaaaaaa, 0xffffffffffbfffff, x2, 824, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0000000000000080
TEST_RR_OP(sub, x12, x10, x11, 0xfff80, 0x0000000000100000, 0x0000000000000080, x2, 832, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000400
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffc00, 0x0001000000000000, 0x0000000000000400, x2, 840, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000800
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffff5ff, 0xfffffffffffffdff, 0x0000000000000800, x2, 848, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000008000
TEST_RR_OP(sub, x12, x10, x11, 0xffffefffffff7fff, 0xffffefffffffffff, 0x0000000000008000, x2, 856, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000010000
TEST_RR_OP(sub, x12, x10, x11, 0xfefffffffffeffff, 0xfeffffffffffffff, 0x0000000000010000, x2, 864, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000020000
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffe0000, 0x0000020000000000, 0x0000000000020000, x2, 872, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000040000
TEST_RR_OP(sub, x12, x10, x11, 0xffff7ffffffbffff, 0xffff7fffffffffff, 0x0000000000040000, x2, 880, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000080000
TEST_RR_OP(sub, x12, x10, x11, 0xfff7fffffff7ffff, 0xfff7ffffffffffff, 0x0000000000080000, x2, 888, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000100000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffdffffefffff, 0xfffffdffffffffff, 0x0000000000100000, x2, 896, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000800000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffff7ffbff, 0xfffffffffffffbff, 0x0000000000800000, x2, 904, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000001000000
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffff000000, 0x0002000000000000, 0x0000000001000000, x2, 912, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0x0000000004000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffc002000, 0x0000000000002000, 0x0000000004000000, x2, 920, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(sub, x12, x10, x11, 0xdffffffff7ffffff, 0xdfffffffffffffff, 0x0000000008000000, x2, 928, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0x0000000010000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffeffffff6, 0xfffffffffffffff6, 0x0000000010000000, x2, 936, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000040000000
TEST_RR_OP(sub, x12, x10, x11, 0x3ffc0000000, 0x0000040000000000, 0x0000000040000000, x2, 944, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0000000080000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffff80000002, 0x0000000000000002, 0x0000000080000000, x2, 952, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0x0000000200000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffe00000400, 0x0000000000000400, 0x0000000200000000, x2, 960, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000002000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffe000000000, 0x8000000000000000, 0x0000002000000000, x2, 968, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000020000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffe0000000000, 0x8000000000000000, 0x0000020000000000, x2, 976, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000100000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffff00000000001, 0x0000000000000001, 0x0000100000000000, x2, 984, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0008000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfff8000040000000, 0x0000000040000000, 0x0008000000000000, x2, 992, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0020000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffe0000004000000, 0x0000000004000000, 0x0020000000000000, x2, 1000, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffbfffffffffffff, 0xffffffffffffffff, 0x0040000000000000, x2, 1008, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0200000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfe00000080000000, 0x0000000080000000, 0x0200000000000000, x2, 1016, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0400000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfbffffffff7fffff, 0xffffffffff7fffff, 0x0400000000000000, x2, 1024, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0x2000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xe000000000000004, 0x0000000000000004, 0x2000000000000000, x2, 1032, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(sub, x12, x10, x11, 0x2000000009, 0x0000002000000000, 0xfffffffffffffff7, x2, 1040, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000800000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffff800010000000, 0x0000000010000000, 0x0000800000000000, x2, 1048, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffc000080, 0xfffffffffbffffff, 0xffffffffffffff7f, x2, 1056, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfffffffffffffeff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffc100, 0xffffffffffffbfff, 0xfffffffffffffeff, x2, 1064, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(sub, x12, x10, x11, 0x8000000201, 0x0000008000000000, 0xfffffffffffffdff, x2, 1072, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0xfffffffffffffbff
TEST_RR_OP(sub, x12, x10, x11, 0x3f7, 0xfffffffffffffff6, 0xfffffffffffffbff, x2, 1080, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xffffffffffffdfff
TEST_RR_OP(sub, x12, x10, x11, 0x1c00, 0xfffffffffffffbff, 0xffffffffffffdfff, x2, 1088, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffffffbfff
TEST_RR_OP(sub, x12, x10, x11, 0x3000, 0xffffffffffffefff, 0xffffffffffffbfff, x2, 1096, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffe0010000, 0xffffffffdfffffff, 0xfffffffffffeffff, x2, 1104, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000000020001, 0x0001000000000000, 0xfffffffffffdffff, x2, 1112, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffffffff7fffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000800001, 0x0000001000000000, 0xffffffffff7fffff, x2, 1120, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffff9000000, 0xfffffffff7ffffff, 0xfffffffffeffffff, x2, 1128, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0xffffffffefffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000000a, 0x0000000000000009, 0xffffffffefffffff, x2, 1136, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffe40000000, 0xfffffffdffffffff, 0xffffffffbfffffff, x2, 1144, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(sub, x12, x10, x11, 0x8080000001, 0x0000008000000000, 0xffffffff7fffffff, x2, 1152, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x101000001, 0x0000000001000000, 0xfffffffeffffffff, x2, 1160, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0xfffffffdffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffff9, 0xfffffffffffffff8, 0xfffffffdffffffff, x2, 1168, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x408000001, 0x0000000008000000, 0xfffffffbffffffff, x2, 1176, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffc000800000000, 0xfffbffffffffffff, 0xfffffff7ffffffff, x2, 1184, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x80004000000001, 0x0080000000000000, 0xffffffbfffffffff, x2, 1192, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffff7fffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x10008000000001, 0x0010000000000000, 0xffffff7fffffffff, x2, 1200, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xf000100000000000, 0xefffffffffffffff, 0xffffefffffffffff, x2, 1208, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000400000
TEST_RR_OP(sub, x12, x10, x11, 0xfffeffffffbfffff, 0xfffeffffffffffff, 0x0000000000400000, x2, 1216, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1001000000001, 0x0000001000000000, 0xfffeffffffffffff, x2, 1224, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1ff00000000, 0xfffffffeffffffff, 0xfffffdffffffffff, x2, 1232, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x8000002000000001, 0x8000000000000000, 0xffffffdfffffffff, x2, 1240, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x8000002000000000, 0x7fffffffffffffff, 0xffffffdfffffffff, x2, 1248, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000001000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff000000001, 0x0000000000000001, 0x0000001000000000, x2, 1256, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x8000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x8000000002000000, 0x0000000002000000, 0x8000000000000000, x2, 1264, x4)

# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xffffffefffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000000009, 0x0000000000000008, 0xffffffefffffffff, x2, 1272, x4)
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
    .fill 17*(XLEN/32),4,0xafacadee


signature_x13_0:
    .fill 14*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 160*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
