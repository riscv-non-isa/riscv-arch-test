
#This assembly file tests the add instruction of the RISC-V I extension for the add covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",add)

la x4,signature_x4_1

# opcode: add ; op1:x27; op2:x19; dest:x27; op1val:0x8000000000000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(add, x27, x27, x19, 0x7ffffffffff7ffff, 0x8000000000000000, 0xfffffffffff7ffff, x4, 0, x13)

# opcode: add ; op1:x29; op2:x7; dest:x10; op1val:0x0000000000000000;  op2val:0x0000000080000000
TEST_RR_OP(add, x10, x29, x7, 0x80000000, 0x0000000000000000, 0x0000000080000000, x4, 8, x13)

# opcode: add ; op1:x16; op2:x16; dest:x24; op1val:0x7fffffffffffffff;  op2val:0x0400000000000000
TEST_RR_OP(add, x24, x16, x16, 0x83ffffffffffffff, 0x7fffffffffffffff, 0x0400000000000000, x4, 16, x13)

# opcode: add ; op1:x22; op2:x31; dest:x31; op1val:0x0000000000000001;  op2val:0xfffffff7ffffffff
TEST_RR_OP(add, x31, x22, x31, 0xfffffff800000000, 0x0000000000000001, 0xfffffff7ffffffff, x4, 24, x13)

# opcode: add ; op1:x26; op2:x26; dest:x26; op1val:0xfffffffffeffffff;  op2val:0x8000000000000000
TEST_RR_OP(add, x26, x26, x26, 0x7ffffffffeffffff, 0xfffffffffeffffff, 0x8000000000000000, x4, 32, x13)

# opcode: add ; op1:x8; op2:x29; dest:x5; op1val:0xffffffffffff7fff;  op2val:0x0000000000000000
TEST_RR_OP(add, x5, x8, x29, 0xffffffffffff7fff, 0xffffffffffff7fff, 0x0000000000000000, x4, 40, x13)

# opcode: add ; op1:x30; op2:x12; dest:x21; op1val:0x0400000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(add, x21, x30, x12, 0x83ffffffffffffff, 0x0400000000000000, 0x7fffffffffffffff, x4, 48, x13)

# opcode: add ; op1:x6; op2:x23; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(add, x12, x6, x23, 0xffc0000000000000, 0xffbfffffffffffff, 0x0000000000000001, x4, 56, x13)

# opcode: add ; op1:x3; op2:x6; dest:x2; op1val:0x0000000000000100;  op2val:0x0000000000000100
TEST_RR_OP(add, x2, x3, x6, 0x200, 0x0000000000000100, 0x0000000000000100, x4, 64, x13)

# opcode: add ; op1:x1; op2:x0; dest:x8; op1val:0x0000000000000002;  op2val:0xffffffffbfffffff
TEST_RR_OP(add, x8, x1, x0, 0xffffffffc0000001, 0x0000000000000002, 0xffffffffbfffffff, x4, 72, x13)

# opcode: add ; op1:x14; op2:x11; dest:x22; op1val:0x0000000000000004;  op2val:0xfffffffffffffffb
TEST_RR_OP(add, x22, x14, x11, 0xffffffffffffffff, 0x0000000000000004, 0xfffffffffffffffb, x4, 80, x13)

# opcode: add ; op1:x5; op2:x3; dest:x23; op1val:0x0000000000000008;  op2val:0xfffeffffffffffff
TEST_RR_OP(add, x23, x5, x3, 0xffff000000000007, 0x0000000000000008, 0xfffeffffffffffff, x4, 88, x13)

# opcode: add ; op1:x10; op2:x24; dest:x18; op1val:0x0000000000000010;  op2val:0x0008000000000000
TEST_RR_OP(add, x18, x10, x24, 0x8000000000010, 0x0000000000000010, 0x0008000000000000, x4, 96, x13)

# opcode: add ; op1:x15; op2:x9; dest:x25; op1val:0x0000000000000020;  op2val:0xffffffffbfffffff
TEST_RR_OP(add, x25, x15, x9, 0xffffffffc000001f, 0x0000000000000020, 0xffffffffbfffffff, x4, 104, x13)

# opcode: add ; op1:x24; op2:x8; dest:x28; op1val:0x0000000000000040;  op2val:0xffefffffffffffff
TEST_RR_OP(add, x28, x24, x8, 0xfff000000000003f, 0x0000000000000040, 0xffefffffffffffff, x4, 112, x13)

# opcode: add ; op1:x31; op2:x21; dest:x6; op1val:0x0000000000000080;  op2val:0x0000000008000000
TEST_RR_OP(add, x6, x31, x21, 0x8000080, 0x0000000000000080, 0x0000000008000000, x4, 120, x8)

# opcode: add ; op1:x28; op2:x10; dest:x13; op1val:0x0000000000000200;  op2val:0x0000000010000000
TEST_RR_OP(add, x13, x28, x10, 0x10000200, 0x0000000000000200, 0x0000000010000000, x4, 128, x8)
la x6,signature_x6_0

# opcode: add ; op1:x23; op2:x15; dest:x30; op1val:0x0000000000000400;  op2val:0xffffffefffffffff
TEST_RR_OP(add, x30, x23, x15, 0xfffffff0000003ff, 0x0000000000000400, 0xffffffefffffffff, x6, 0, x8)

# opcode: add ; op1:x13; op2:x2; dest:x16; op1val:0x0000000000000800;  op2val:0x0000000000001000
TEST_RR_OP(add, x16, x13, x2, 0x1800, 0x0000000000000800, 0x0000000000001000, x6, 8, x8)

# opcode: add ; op1:x7; op2:x17; dest:x4; op1val:0x0000000000001000;  op2val:0xffffffdfffffffff
TEST_RR_OP(add, x4, x7, x17, 0xffffffe000000fff, 0x0000000000001000, 0xffffffdfffffffff, x6, 16, x8)

# opcode: add ; op1:x21; op2:x20; dest:x11; op1val:0x0000000000002000;  op2val:0x0000000002000000
TEST_RR_OP(add, x11, x21, x20, 0x2002000, 0x0000000000002000, 0x0000000002000000, x6, 24, x8)

# opcode: add ; op1:x19; op2:x1; dest:x9; op1val:0x0000000000004000;  op2val:0x0000000000002000
TEST_RR_OP(add, x9, x19, x1, 0x6000, 0x0000000000004000, 0x0000000000002000, x6, 32, x8)

# opcode: add ; op1:x11; op2:x25; dest:x14; op1val:0x0000000000008000;  op2val:0x0000000000008000
TEST_RR_OP(add, x14, x11, x25, 0x10000, 0x0000000000008000, 0x0000000000008000, x6, 40, x8)

# opcode: add ; op1:x0; op2:x30; dest:x29; op1val:0x0000000000010000;  op2val:0xffffffff7fffffff
TEST_RR_OP(add, x29, x0, x30, 0xffffffff8000ffff, 0x0000000000010000, 0xffffffff7fffffff, x6, 48, x8)

# opcode: add ; op1:x18; op2:x14; dest:x7; op1val:0x0000000000020000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(add, x7, x18, x14, 0xaaaaaaaaaaacaaaa, 0x0000000000020000, 0xaaaaaaaaaaaaaaaa, x6, 56, x8)

# opcode: add ; op1:x17; op2:x28; dest:x1; op1val:0x0000000000040000;  op2val:0x1000000000000000
TEST_RR_OP(add, x1, x17, x28, 0x1000000000040000, 0x0000000000040000, 0x1000000000000000, x6, 64, x8)

# opcode: add ; op1:x9; op2:x4; dest:x15; op1val:0x0000000000080000;  op2val:0xffdfffffffffffff
TEST_RR_OP(add, x15, x9, x4, 0xffe000000007ffff, 0x0000000000080000, 0xffdfffffffffffff, x6, 72, x8)

# opcode: add ; op1:x12; op2:x5; dest:x20; op1val:0x0000000000100000;  op2val:0x0000040000000000
TEST_RR_OP(add, x20, x12, x5, 0x40000100000, 0x0000000000100000, 0x0000040000000000, x6, 80, x8)

# opcode: add ; op1:x4; op2:x27; dest:x3; op1val:0x0000000000200000;  op2val:0xfffffffffffffff8
TEST_RR_OP(add, x3, x4, x27, 0x1ffff8, 0x0000000000200000, 0xfffffffffffffff8, x6, 88, x8)

# opcode: add ; op1:x20; op2:x18; dest:x0; op1val:0x0000000000400000;  op2val:0xfffdffffffffffff
TEST_RR_OP(add, x0, x20, x18, 0xfffe0000003fffff, 0x0000000000400000, 0xfffdffffffffffff, x6, 96, x8)

# opcode: add ; op1:x25; op2:x22; dest:x17; op1val:0x0000000000800000;  op2val:0x0000000400000000
TEST_RR_OP(add, x17, x25, x22, 0x400800000, 0x0000000000800000, 0x0000000400000000, x6, 104, x8)

# opcode: add ; op1:x2; op2:x13; dest:x19; op1val:0x0000000001000000;  op2val:0xffffffffffffffff
TEST_RR_OP(add, x19, x2, x13, 0xffffff, 0x0000000001000000, 0xffffffffffffffff, x6, 112, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(add, x12, x10, x11, 0x1dfffff, 0x0000000002000000, 0xffffffffffdfffff, x6, 120, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0100000000000000
TEST_RR_OP(add, x12, x10, x11, 0x100000004000000, 0x0000000004000000, 0x0100000000000000, x6, 128, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000200000000
TEST_RR_OP(add, x12, x10, x11, 0x208000000, 0x0000000008000000, 0x0000000200000000, x6, 136, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000040000000000
TEST_RR_OP(add, x12, x10, x11, 0x40010000000, 0x0000000010000000, 0x0000040000000000, x6, 144, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(add, x12, x10, x11, 0x1effffff, 0x0000000020000000, 0xfffffffffeffffff, x6, 152, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffff80003fffffff, 0x0000000040000000, 0xffff7fffffffffff, x6, 160, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000080000
TEST_RR_OP(add, x12, x10, x11, 0x80080000, 0x0000000080000000, 0x0000000000080000, x6, 168, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(add, x12, x10, x11, 0xf7ffffff, 0x0000000100000000, 0xfffffffff7ffffff, x6, 176, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0020000000000000
TEST_RR_OP(add, x12, x10, x11, 0x20000200000000, 0x0000000200000000, 0x0020000000000000, x6, 184, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000001
TEST_RR_OP(add, x12, x10, x11, 0x400000001, 0x0000000400000000, 0x0000000000000001, x6, 192, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(add, x12, x10, x11, 0x77fffffff, 0x0000000800000000, 0xffffffff7fffffff, x6, 200, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(add, x12, x10, x11, 0xffffffff6, 0x0000001000000000, 0xfffffffffffffff6, x6, 208, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(add, x12, x10, x11, 0x1ffffffffb, 0x0000002000000000, 0xfffffffffffffffb, x6, 216, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x2000000000000000
TEST_RR_OP(add, x12, x10, x11, 0x2000004000000000, 0x0000004000000000, 0x2000000000000000, x6, 224, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000100
TEST_RR_OP(add, x12, x10, x11, 0x8000000100, 0x0000008000000000, 0x0000000000000100, x6, 232, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000010
TEST_RR_OP(add, x12, x10, x11, 0x10000000010, 0x0000010000000000, 0x0000000000000010, x6, 240, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(add, x12, x10, x11, 0x1feffffffff, 0x0000020000000000, 0xfffffffeffffffff, x6, 248, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000001000
TEST_RR_OP(add, x12, x10, x11, 0x40000001000, 0x0000040000000000, 0x0000000000001000, x6, 256, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffdffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffe07ffffffffff, 0x0000080000000000, 0xfffdffffffffffff, x6, 264, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000100
TEST_RR_OP(add, x12, x10, x11, 0x100000000100, 0x0000100000000000, 0x0000000000000100, x6, 272, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffffffdfffffff
TEST_RR_OP(add, x12, x10, x11, 0x1fffdfffffff, 0x0000200000000000, 0xffffffffdfffffff, x6, 280, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0080000000000000
TEST_RR_OP(add, x12, x10, x11, 0x80400000000000, 0x0000400000000000, 0x0080000000000000, x6, 288, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000010000000000
TEST_RR_OP(add, x12, x10, x11, 0x810000000000, 0x0000800000000000, 0x0000010000000000, x6, 296, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffdfff, 0x0001000000000000, 0xffffffffffffdfff, x6, 304, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(add, x12, x10, x11, 0x1fffffeffffff, 0x0002000000000000, 0xfffffffffeffffff, x6, 312, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(add, x12, x10, x11, 0x3fbffffffffff, 0x0004000000000000, 0xfffffbffffffffff, x6, 320, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xffffffefffffffff
TEST_RR_OP(add, x12, x10, x11, 0x7ffefffffffff, 0x0008000000000000, 0xffffffefffffffff, x6, 328, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000040000000
TEST_RR_OP(add, x12, x10, x11, 0x10000040000000, 0x0010000000000000, 0x0000000040000000, x6, 336, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0x1effffffffffff, 0x0020000000000000, 0xfffeffffffffffff, x6, 344, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000040000
TEST_RR_OP(add, x12, x10, x11, 0x40000000040000, 0x0040000000000000, 0x0000000000040000, x6, 352, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000007
TEST_RR_OP(add, x12, x10, x11, 0x80000000000007, 0x0080000000000000, 0x0000000000000007, x6, 360, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffff6, 0x0100000000000000, 0xfffffffffffffff6, x6, 368, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(add, x12, x10, x11, 0x1fffffffffffdff, 0x0200000000000000, 0xfffffffffffffdff, x6, 376, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000040
TEST_RR_OP(add, x12, x10, x11, 0x800000000000040, 0x0800000000000000, 0x0000000000000040, x6, 384, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000002000000000
TEST_RR_OP(add, x12, x10, x11, 0x1000002000000000, 0x1000000000000000, 0x0000002000000000, x6, 392, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(add, x12, x10, x11, 0x1fffffbfffffffff, 0x2000000000000000, 0xffffffbfffffffff, x6, 400, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(add, x12, x10, x11, 0x3ffffffffffffffc, 0x4000000000000000, 0xfffffffffffffffc, x6, 408, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfffffffffff7ffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffff7fffd, 0xfffffffffffffffe, 0xfffffffffff7ffff, x6, 416, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000100000000000
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffd, 0xfffffffffffffffd, 0x0000100000000000, x6, 424, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x4000000000000000
TEST_RR_OP(add, x12, x10, x11, 0x3ffffffffffffffb, 0xfffffffffffffffb, 0x4000000000000000, x6, 432, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000001
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffffff8, 0xfffffffffffffff7, 0x0000000000000001, x6, 440, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000800000
TEST_RR_OP(add, x12, x10, x11, 0x7fffef, 0xffffffffffffffef, 0x0000000000800000, x6, 448, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0100000000000000
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffffdf, 0xffffffffffffffdf, 0x0100000000000000, x6, 456, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xffffffffffbfffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffbfffbe, 0xffffffffffffffbf, 0xffffffffffbfffff, x6, 464, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000200000000
TEST_RR_OP(add, x12, x10, x11, 0x1ffffff7f, 0xffffffffffffff7f, 0x0000000200000000, x6, 472, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xffffffffffffbfff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffffbefe, 0xfffffffffffffeff, 0xffffffffffffbfff, x6, 480, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000400000000000
TEST_RR_OP(add, x12, x10, x11, 0x3ffffffffdff, 0xfffffffffffffdff, 0x0000400000000000, x6, 488, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xfffbffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffc000000000007, 0x0000000000000008, 0xfffbffffffffffff, x6, 496, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xeff7fffffffffffe, 0xefffffffffffffff, 0xfff7ffffffffffff, x6, 504, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffc003ffffffffff, 0x0000040000000000, 0xffbfffffffffffff, x6, 512, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0xff7fffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xff80000000000008, 0x0000000000000009, 0xff7fffffffffffff, x6, 520, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfefffdfffffffffe, 0xfffffdffffffffff, 0xfeffffffffffffff, x6, 528, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfe00ffffffffffff, 0x0001000000000000, 0xfdffffffffffffff, x6, 536, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xfbffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfc000000000fffff, 0x0000000000100000, 0xfbffffffffffffff, x6, 544, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xf7ffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xf7ffffffffffffde, 0xffffffffffffffdf, 0xf7ffffffffffffff, x6, 552, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xefffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xf0000000003fffff, 0x0000000000400000, 0xefffffffffffffff, x6, 560, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xe00000003fffffff, 0x0000000040000000, 0xdfffffffffffffff, x6, 568, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0xbfffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xc00000000003ffff, 0x0000000000040000, 0xbfffffffffffffff, x6, 576, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(add, x12, x10, x11, 0x5554555555555554, 0xfffeffffffffffff, 0x5555555555555555, x6, 584, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffffffffffffffb
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffffbfa, 0xfffffffffffffbff, 0xfffffffffffffffb, x6, 592, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0004000000000000
TEST_RR_OP(add, x12, x10, x11, 0x3fffffffff7ff, 0xfffffffffffff7ff, 0x0004000000000000, x6, 600, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffffffffdf
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffffefde, 0xffffffffffffefff, 0xffffffffffffffdf, x6, 608, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000020000000
TEST_RR_OP(add, x12, x10, x11, 0x1fffdfff, 0xffffffffffffdfff, 0x0000000020000000, x6, 616, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xffffffffffffff7f
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffffbf7e, 0xffffffffffffbfff, 0xffffffffffffff7f, x6, 624, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0x7ffffffffffefffe, 0xfffffffffffeffff, 0x7fffffffffffffff, x6, 632, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000006
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffe0005, 0xfffffffffffdffff, 0x0000000000000006, x6, 640, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000400000000
TEST_RR_OP(add, x12, x10, x11, 0x3fffbffff, 0xfffffffffffbffff, 0x0000000400000000, x6, 648, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffbffffff7fffe, 0xfffffffffff7ffff, 0xffffbfffffffffff, x6, 656, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffbeffffe, 0xffffffffffefffff, 0xfffffffffbffffff, x6, 664, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000040000000000
TEST_RR_OP(add, x12, x10, x11, 0x3ffffdfffff, 0xffffffffffdfffff, 0x0000040000000000, x6, 672, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000200000000000
TEST_RR_OP(add, x12, x10, x11, 0x1fffffbfffff, 0xffffffffffbfffff, 0x0000200000000000, x6, 680, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0400000000000000
TEST_RR_OP(add, x12, x10, x11, 0x3ffffffff7fffff, 0xffffffffff7fffff, 0x0400000000000000, x6, 688, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000200000000000
TEST_RR_OP(add, x12, x10, x11, 0x1ffffdffffff, 0xfffffffffdffffff, 0x0000200000000000, x6, 696, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000004000
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffc003fff, 0xfffffffffbffffff, 0x0000000000004000, x6, 704, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffffbf7fffffe, 0xfffffffff7ffffff, 0xfffffffbffffffff, x6, 712, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffef7ffffe, 0xffffffffefffffff, 0xffffffffff7fffff, x6, 720, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffdffefffe, 0xffffffffdfffffff, 0xfffffffffffeffff, x6, 728, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000040
TEST_RR_OP(add, x12, x10, x11, 0xffffffffc000003f, 0xffffffffbfffffff, 0x0000000000000040, x6, 736, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffff7bfffffe, 0xffffffff7fffffff, 0xfffffffffbffffff, x6, 744, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000008000
TEST_RR_OP(add, x12, x10, x11, 0xffffffff00007fff, 0xfffffffeffffffff, 0x0000000000008000, x6, 752, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0040000000000000
TEST_RR_OP(add, x12, x10, x11, 0x3ffffdffffffff, 0xfffffffdffffffff, 0x0040000000000000, x6, 760, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000080000000000
TEST_RR_OP(add, x12, x10, x11, 0x7fbffffffff, 0xfffffffbffffffff, 0x0000080000000000, x6, 768, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000020000
TEST_RR_OP(add, x12, x10, x11, 0xfffffff80001ffff, 0xfffffff7ffffffff, 0x0000000000020000, x6, 776, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffeffffbfffe, 0xffffffefffffffff, 0xfffffffffffbffff, x6, 784, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfffffffffffffffa
TEST_RR_OP(add, x12, x10, x11, 0xffffffdffffffff9, 0xffffffdfffffffff, 0xfffffffffffffffa, x6, 792, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffbffdfffffe, 0xffffffbfffffffff, 0xfffffffffdffffff, x6, 800, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xfffffffffffffff9
TEST_RR_OP(add, x12, x10, x11, 0xffffff7ffffffff8, 0xffffff7fffffffff, 0xfffffffffffffff9, x6, 808, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000000080000
TEST_RR_OP(add, x12, x10, x11, 0xffffff000007ffff, 0xfffffeffffffffff, 0x0000000000080000, x6, 816, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000040
TEST_RR_OP(add, x12, x10, x11, 0xfffffc000000003f, 0xfffffbffffffffff, 0x0000000000000040, x6, 824, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(add, x12, x10, x11, 0x3ff7ffffffffff, 0xfffff7ffffffffff, 0x0040000000000000, x6, 832, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(add, x12, x10, x11, 0xfffff00000000006, 0xffffefffffffffff, 0x0000000000000007, x6, 840, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x2000000000000000
TEST_RR_OP(add, x12, x10, x11, 0x1ff7ffffffffffff, 0xfff7ffffffffffff, 0x2000000000000000, x6, 848, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xefeffffffffffffe, 0xffefffffffffffff, 0xefffffffffffffff, x6, 856, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(add, x12, x10, x11, 0xffe0000000000008, 0xffdfffffffffffff, 0x0000000000000009, x6, 864, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000800000
TEST_RR_OP(add, x12, x10, x11, 0xff800000007fffff, 0xff7fffffffffffff, 0x0000000000800000, x6, 872, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000100000000
TEST_RR_OP(add, x12, x10, x11, 0xff000000ffffffff, 0xfeffffffffffffff, 0x0000000100000000, x6, 880, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(add, x12, x10, x11, 0xfdffffffffffffde, 0xfdffffffffffffff, 0xffffffffffffffdf, x6, 888, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(add, x12, x10, x11, 0xfbfffffffffdfffe, 0xfbffffffffffffff, 0xfffffffffffdffff, x6, 896, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000004000000000
TEST_RR_OP(add, x12, x10, x11, 0xf800003fffffffff, 0xf7ffffffffffffff, 0x0000004000000000, x6, 904, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xdffff7fffffffffe, 0xdfffffffffffffff, 0xfffff7ffffffffff, x6, 912, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(add, x12, x10, x11, 0xbfffffffbffffffe, 0xbfffffffffffffff, 0xffffffffbfffffff, x6, 920, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000080
TEST_RR_OP(add, x12, x10, x11, 0x55555555555555d5, 0x5555555555555555, 0x0000000000000080, x6, 928, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffffffffffefffff
TEST_RR_OP(add, x12, x10, x11, 0xaaaaaaaaaa9aaaa9, 0xaaaaaaaaaaaaaaaa, 0xffffffffffefffff, x6, 936, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000000000000002
TEST_RR_OP(add, x12, x10, x11, 0x12, 0x0000000000000010, 0x0000000000000002, x6, 944, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000004
TEST_RR_OP(add, x12, x10, x11, 0x400000000000004, 0x0400000000000000, 0x0000000000000004, x6, 952, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000008
TEST_RR_OP(add, x12, x10, x11, 0xfffffffff0000007, 0xffffffffefffffff, 0x0000000000000008, x6, 960, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0x0000000000000020
TEST_RR_OP(add, x12, x10, x11, 0x1a, 0xfffffffffffffffa, 0x0000000000000020, x6, 968, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0x0000000000000200
TEST_RR_OP(add, x12, x10, x11, 0xa00, 0x0000000000000800, 0x0000000000000200, x6, 976, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000400
TEST_RR_OP(add, x12, x10, x11, 0x4000000400, 0x0000004000000000, 0x0000000000000400, x6, 984, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000800
TEST_RR_OP(add, x12, x10, x11, 0xffffffe0000007ff, 0xffffffdfffffffff, 0x0000000000000800, x6, 992, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x0000000000010000
TEST_RR_OP(add, x12, x10, x11, 0x10080, 0x0000000000000080, 0x0000000000010000, x6, 1000, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000100000
TEST_RR_OP(add, x12, x10, x11, 0xfffffff8000fffff, 0xfffffff7ffffffff, 0x0000000000100000, x6, 1008, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000200000
TEST_RR_OP(add, x12, x10, x11, 0xffffffffff9fffff, 0xffffffffff7fffff, 0x0000000000200000, x6, 1016, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0x0000000000400000
TEST_RR_OP(add, x12, x10, x11, 0x3ffff8, 0xfffffffffffffff8, 0x0000000000400000, x6, 1024, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000001000000
TEST_RR_OP(add, x12, x10, x11, 0x200001000000, 0x0000200000000000, 0x0000000001000000, x6, 1032, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0x0000000004000000
TEST_RR_OP(add, x12, x10, x11, 0x4000004, 0x0000000000000004, 0x0000000004000000, x6, 1040, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000800000000
TEST_RR_OP(add, x12, x10, x11, 0x1000000800000000, 0x1000000000000000, 0x0000000800000000, x6, 1048, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0010000000000000
TEST_RR_OP(add, x12, x10, x11, 0x10000000000008, 0x0000000000000008, 0x0010000000000000, x6, 1056, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0002000000000000
TEST_RR_OP(add, x12, x10, x11, 0x2001000000000, 0x0000001000000000, 0x0002000000000000, x6, 1064, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0200000000000000
TEST_RR_OP(add, x12, x10, x11, 0x1fffffffff7ffff, 0xfffffffffff7ffff, 0x0200000000000000, x6, 1072, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0800000000000000
TEST_RR_OP(add, x12, x10, x11, 0x7fffffffffffffe, 0xfffffffffffffffe, 0x0800000000000000, x6, 1080, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0xfffffffffffffffe
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffffff7, 0xfffffffffffffff9, 0xfffffffffffffffe, x6, 1088, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0xfffffffffffffffd
TEST_RR_OP(add, x12, x10, x11, 0xffd, 0x0000000000001000, 0xfffffffffffffffd, x6, 1096, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(add, x12, x10, x11, 0xffffffff7, 0x0000001000000000, 0xfffffffffffffff7, x6, 1104, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xffffffffffffffef
TEST_RR_OP(add, x12, x10, x11, 0xfffeffffffffffee, 0xfffeffffffffffff, 0xffffffffffffffef, x6, 1112, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xffffffffffffffbf
TEST_RR_OP(add, x12, x10, x11, 0x3ffffbf, 0x0000000004000000, 0xffffffffffffffbf, x6, 1120, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0xfffffffffffffeff
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffffef8, 0xfffffffffffffff9, 0xfffffffffffffeff, x6, 1128, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(add, x12, x10, x11, 0x3fffbff, 0x0000000004000000, 0xfffffffffffffbff, x6, 1136, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(add, x12, x10, x11, 0x3ff7ff, 0x0000000000400000, 0xfffffffffffff7ff, x6, 1144, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xffffffffffffefff
TEST_RR_OP(add, x12, x10, x11, 0x1fffefff, 0x0000000020000000, 0xffffffffffffefff, x6, 1152, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0x0000020000000000
TEST_RR_OP(add, x12, x10, x11, 0x1fffffffffc, 0xfffffffffffffffc, 0x0000020000000000, x6, 1160, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xffffffffffff7fff
TEST_RR_OP(add, x12, x10, x11, 0x555555555554d554, 0x5555555555555555, 0xffffffffffff7fff, x6, 1168, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(add, x12, x10, x11, 0xffffe003ffffffff, 0xffffdfffffffffff, 0x0000000400000000, x6, 1176, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(add, x12, x10, x11, 0xfffdffffffffbffe, 0xfffdffffffffffff, 0xffffffffffffbfff, x6, 1184, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(add, x12, x10, x11, 0xfdffffffeffffffe, 0xfdffffffffffffff, 0xffffffffefffffff, x6, 1192, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffffffdffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffffdffffffde, 0xffffffffffffffdf, 0xfffffffdffffffff, x6, 1200, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(add, x12, x10, x11, 0xffffbfffffbffffe, 0xffffbfffffffffff, 0xffffffffffbfffff, x6, 1208, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000001000000000
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffffffff, 0xffffffefffffffff, 0x0000001000000000, x6, 1216, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000008000000000
TEST_RR_OP(add, x12, x10, x11, 0x8040000000, 0x0000000040000000, 0x0000008000000000, x6, 1224, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffff7fbffffffe, 0xffffffffbfffffff, 0xffffff7fffffffff, x6, 1232, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffeffeffffffe, 0xffffffffefffffff, 0xfffffeffffffffff, x6, 1240, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffedfffffffffe, 0xffffefffffffffff, 0xfffffdffffffffff, x6, 1248, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xffffefffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffeffffffffdfe, 0xfffffffffffffdff, 0xffffefffffffffff, x6, 1256, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffdffffffdfffe, 0xfffffffffffdffff, 0xffffdfffffffffff, x6, 1264, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(add, x12, x10, x11, 0xffff7ffffffffefe, 0xffff7fffffffffff, 0xfffffffffffffeff, x6, 1272, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000800000000000
TEST_RR_OP(add, x12, x10, x11, 0x7fffffffff7f, 0xffffffffffffff7f, 0x0000800000000000, x6, 1280, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0001000000000000
TEST_RR_OP(add, x12, x10, x11, 0xffffffefffff, 0xffffffffffefffff, 0x0001000000000000, x6, 1288, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(add, x12, x10, x11, 0xfffbfffffffffdfe, 0xfffbffffffffffff, 0xfffffffffffffdff, x6, 1296, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(add, x12, x10, x11, 0x7ffffffffff7ffff, 0x8000000000000000, 0xfffffffffff7ffff, x6, 1304, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0400000000000000
TEST_RR_OP(add, x12, x10, x11, 0x83ffffffffffffff, 0x7fffffffffffffff, 0x0400000000000000, x6, 1312, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xfffffff7ffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffff800000000, 0x0000000000000001, 0xfffffff7ffffffff, x6, 1320, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x8000000000000000
TEST_RR_OP(add, x12, x10, x11, 0x7ffffffffeffffff, 0xfffffffffeffffff, 0x8000000000000000, x6, 1328, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0xffffffffbfffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffc0000001, 0x0000000000000002, 0xffffffffbfffffff, x6, 1336, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0xffffffff7fffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffff8000ffff, 0x0000000000010000, 0xffffffff7fffffff, x6, 1344, x1)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xfffdffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffe0000003fffff, 0x0000000000400000, 0xfffdffffffffffff, x6, 1352, x1)
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
    .fill 17*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 170*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
