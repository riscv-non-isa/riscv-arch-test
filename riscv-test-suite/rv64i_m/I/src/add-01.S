
#This assembly file tests the add instruction of the RISC-V I extension for the add covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",add)

la x6,signature_x6_1

# opcode: add ; op1:x4; op2:x20; dest:x29; op1val:0x8000000000000000;  op2val:0x0000000000800000
TEST_RR_OP(add, x29, x4, x20, 0x8000000000800000, 0x8000000000000000, 0x0000000000800000, x6, 0, x16)

# opcode: add ; op1:x31; op2:x31; dest:x31; op1val:0x0000000000000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(add, x31, x31, x31, 0xfffffffffbffffff, 0x0000000000000000, 0xfffffffffbffffff, x6, 8, x16)

# opcode: add ; op1:x26; op2:x21; dest:x21; op1val:0x7fffffffffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(add, x21, x26, x21, 0x7ffffffffefffffe, 0x7fffffffffffffff, 0xfffffffffeffffff, x6, 16, x16)

# opcode: add ; op1:x2; op2:x5; dest:x2; op1val:0x0000000000000001;  op2val:0xffffffff7fffffff
TEST_RR_OP(add, x2, x2, x5, 0xffffffff80000000, 0x0000000000000001, 0xffffffff7fffffff, x6, 24, x16)

# opcode: add ; op1:x19; op2:x19; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x8000000000000000
TEST_RR_OP(add, x12, x19, x19, 0x7ffffffeffffffff, 0xfffffffeffffffff, 0x8000000000000000, x6, 32, x16)

# opcode: add ; op1:x15; op2:x18; dest:x22; op1val:0x0000000200000000;  op2val:0x0000000000000000
TEST_RR_OP(add, x22, x15, x18, 0x200000000, 0x0000000200000000, 0x0000000000000000, x6, 40, x16)

# opcode: add ; op1:x25; op2:x15; dest:x20; op1val:0xffbfffffffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(add, x20, x25, x15, 0x7fbffffffffffffe, 0xffbfffffffffffff, 0x7fffffffffffffff, x6, 48, x16)

# opcode: add ; op1:x5; op2:x17; dest:x9; op1val:0x0000000000000400;  op2val:0x0000000000000001
TEST_RR_OP(add, x9, x5, x17, 0x401, 0x0000000000000400, 0x0000000000000001, x6, 56, x16)

# opcode: add ; op1:x14; op2:x0; dest:x26; op1val:0x0000000000000004;  op2val:0x0000000000000004
TEST_RR_OP(add, x26, x14, x0, 0x8, 0x0000000000000004, 0x0000000000000004, x6, 64, x16)

# opcode: add ; op1:x3; op2:x7; dest:x13; op1val:0x0000000000000002;  op2val:0x0010000000000000
TEST_RR_OP(add, x13, x3, x7, 0x10000000000002, 0x0000000000000002, 0x0010000000000000, x6, 72, x16)

# opcode: add ; op1:x20; op2:x12; dest:x11; op1val:0x0000000000000008;  op2val:0x0000000000010000
TEST_RR_OP(add, x11, x20, x12, 0x10008, 0x0000000000000008, 0x0000000000010000, x6, 80, x16)

# opcode: add ; op1:x28; op2:x1; dest:x0; op1val:0x0000000000000010;  op2val:0xfffff7ffffffffff
TEST_RR_OP(add, x0, x28, x1, 0xfffff8000000000f, 0x0000000000000010, 0xfffff7ffffffffff, x6, 88, x16)

# opcode: add ; op1:x29; op2:x9; dest:x19; op1val:0x0000000000000020;  op2val:0x0000000000000000
TEST_RR_OP(add, x19, x29, x9, 0x20, 0x0000000000000020, 0x0000000000000000, x6, 96, x16)

# opcode: add ; op1:x8; op2:x2; dest:x3; op1val:0x0000000000000040;  op2val:0xfffffffbffffffff
TEST_RR_OP(add, x3, x8, x2, 0xfffffffc0000003f, 0x0000000000000040, 0xfffffffbffffffff, x6, 104, x16)

# opcode: add ; op1:x0; op2:x13; dest:x23; op1val:0x0000000000000080;  op2val:0x0800000000000000
TEST_RR_OP(add, x23, x0, x13, 0x800000000000080, 0x0000000000000080, 0x0800000000000000, x6, 112, x16)

# opcode: add ; op1:x21; op2:x8; dest:x25; op1val:0x0000000000000100;  op2val:0xffffffffffffdfff
TEST_RR_OP(add, x25, x21, x8, 0xffffffffffffe0ff, 0x0000000000000100, 0xffffffffffffdfff, x6, 120, x16)

# opcode: add ; op1:x11; op2:x10; dest:x17; op1val:0x0000000000000200;  op2val:0xfffffffffff7ffff
TEST_RR_OP(add, x17, x11, x10, 0xfffffffffff801ff, 0x0000000000000200, 0xfffffffffff7ffff, x6, 128, x16)

# opcode: add ; op1:x12; op2:x4; dest:x18; op1val:0x0000000000000800;  op2val:0x8000000000000000
TEST_RR_OP(add, x18, x12, x4, 0x8000000000000800, 0x0000000000000800, 0x8000000000000000, x6, 136, x16)

# opcode: add ; op1:x27; op2:x30; dest:x24; op1val:0x0000000000001000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(add, x24, x27, x30, 0xfff8000000000fff, 0x0000000000001000, 0xfff7ffffffffffff, x6, 144, x16)
la x19,signature_x19_0

# opcode: add ; op1:x18; op2:x3; dest:x1; op1val:0x0000000000002000;  op2val:0xffffffffffefffff
TEST_RR_OP(add, x1, x18, x3, 0xfffffffffff01fff, 0x0000000000002000, 0xffffffffffefffff, x19, 0, x20)

# opcode: add ; op1:x9; op2:x6; dest:x27; op1val:0x0000000000004000;  op2val:0xfeffffffffffffff
TEST_RR_OP(add, x27, x9, x6, 0xff00000000003fff, 0x0000000000004000, 0xfeffffffffffffff, x19, 8, x20)

# opcode: add ; op1:x1; op2:x22; dest:x4; op1val:0x0000000000008000;  op2val:0xffff7fffffffffff
TEST_RR_OP(add, x4, x1, x22, 0xffff800000007fff, 0x0000000000008000, 0xffff7fffffffffff, x19, 16, x20)

# opcode: add ; op1:x22; op2:x27; dest:x14; op1val:0x0000000000010000;  op2val:0x0004000000000000
TEST_RR_OP(add, x14, x22, x27, 0x4000000010000, 0x0000000000010000, 0x0004000000000000, x19, 24, x20)

# opcode: add ; op1:x7; op2:x23; dest:x6; op1val:0x0000000000020000;  op2val:0x0000001000000000
TEST_RR_OP(add, x6, x7, x23, 0x1000020000, 0x0000000000020000, 0x0000001000000000, x19, 32, x20)

# opcode: add ; op1:x10; op2:x25; dest:x16; op1val:0x0000000000040000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(add, x16, x10, x25, 0xfffffffffffbffff, 0x0000000000040000, 0xfffffffffff7ffff, x19, 40, x20)

# opcode: add ; op1:x17; op2:x24; dest:x10; op1val:0x0000000000080000;  op2val:0x8000000000000000
TEST_RR_OP(add, x10, x17, x24, 0x8000000000080000, 0x0000000000080000, 0x8000000000000000, x19, 48, x20)

# opcode: add ; op1:x13; op2:x29; dest:x15; op1val:0x0000000000100000;  op2val:0xffdfffffffffffff
TEST_RR_OP(add, x15, x13, x29, 0xffe00000000fffff, 0x0000000000100000, 0xffdfffffffffffff, x19, 56, x20)

# opcode: add ; op1:x6; op2:x16; dest:x5; op1val:0x0000000000200000;  op2val:0x0000004000000000
TEST_RR_OP(add, x5, x6, x16, 0x4000200000, 0x0000000000200000, 0x0000004000000000, x19, 64, x20)

# opcode: add ; op1:x16; op2:x26; dest:x7; op1val:0x0000000000400000;  op2val:0x0000000000000100
TEST_RR_OP(add, x7, x16, x26, 0x400100, 0x0000000000400000, 0x0000000000000100, x19, 72, x20)

# opcode: add ; op1:x23; op2:x14; dest:x30; op1val:0x0000000000800000;  op2val:0x0000000000200000
TEST_RR_OP(add, x30, x23, x14, 0xa00000, 0x0000000000800000, 0x0000000000200000, x19, 80, x20)

# opcode: add ; op1:x24; op2:x11; dest:x8; op1val:0x0000000001000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(add, x8, x24, x11, 0x8000000000ffffff, 0x0000000001000000, 0x7fffffffffffffff, x19, 88, x20)

# opcode: add ; op1:x30; op2:x25; dest:x12; op1val:0x0000000002000000;  op2val:0xffffffffefffffff
TEST_RR_OP(add, x12, x30, x25, 0xfffffffff1ffffff, 0x0000000002000000, 0xffffffffefffffff, x19, 96, x20)

# opcode: add ; op1:x11; op2:x28; dest:x2; op1val:0x0000000004000000;  op2val:0x0000000000008000
TEST_RR_OP(add, x2, x11, x28, 0x4008000, 0x0000000004000000, 0x0000000000008000, x19, 104, x20)

# opcode: add ; op1:x1; op2:x16; dest:x28; op1val:0x0000000008000000;  op2val:0x0000000000400000
TEST_RR_OP(add, x28, x1, x16, 0x8400000, 0x0000000008000000, 0x0000000000400000, x19, 112, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000010000000000
TEST_RR_OP(add, x12, x10, x11, 0x10010000000, 0x0000000010000000, 0x0000010000000000, x19, 120, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xc000000000000000
TEST_RR_OP(add, x12, x10, x11, 0xc000000020000000, 0x0000000020000000, 0xc000000000000000, x19, 128, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(add, x12, x10, x11, 0x3ffffffc, 0x0000000040000000, 0xfffffffffffffffc, x19, 136, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000200000
TEST_RR_OP(add, x12, x10, x11, 0x80200000, 0x0000000080000000, 0x0000000000200000, x19, 144, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000040000
TEST_RR_OP(add, x12, x10, x11, 0x100040000, 0x0000000100000000, 0x0000000000040000, x19, 152, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(add, x12, x10, x11, 0x3bfffffff, 0x0000000400000000, 0xffffffffbfffffff, x19, 160, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffff8007ffffffff, 0x0000000800000000, 0xffff7fffffffffff, x19, 168, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000004000000000
TEST_RR_OP(add, x12, x10, x11, 0x5000000000, 0x0000001000000000, 0x0000004000000000, x19, 176, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(add, x12, x10, x11, 0xaaaaaacaaaaaaaaa, 0x0000002000000000, 0xaaaaaaaaaaaaaaaa, x19, 184, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0008000000000000
TEST_RR_OP(add, x12, x10, x11, 0x8004000000000, 0x0000004000000000, 0x0008000000000000, x19, 192, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000004000
TEST_RR_OP(add, x12, x10, x11, 0x8000004000, 0x0000008000000000, 0x0000000000004000, x19, 200, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xffefffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfff000ffffffffff, 0x0000010000000000, 0xffefffffffffffff, x19, 208, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(add, x12, x10, x11, 0x1fffeffffff, 0x0000020000000000, 0xfffffffffeffffff, x19, 216, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000100
TEST_RR_OP(add, x12, x10, x11, 0x40000000100, 0x0000040000000000, 0x0000000000000100, x19, 224, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xf80007ffffffffff, 0x0000080000000000, 0xf7ffffffffffffff, x19, 232, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(add, x12, x10, x11, 0xaaaabaaaaaaaaaaa, 0x0000100000000000, 0xaaaaaaaaaaaaaaaa, x19, 240, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000010
TEST_RR_OP(add, x12, x10, x11, 0x200000000010, 0x0000200000000000, 0x0000000000000010, x19, 248, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffffffeffff
TEST_RR_OP(add, x12, x10, x11, 0x3ffffffeffff, 0x0000400000000000, 0xfffffffffffeffff, x19, 256, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000200000000000
TEST_RR_OP(add, x12, x10, x11, 0xa00000000000, 0x0000800000000000, 0x0000200000000000, x19, 264, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000007
TEST_RR_OP(add, x12, x10, x11, 0x1000000000007, 0x0001000000000000, 0x0000000000000007, x19, 272, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000004
TEST_RR_OP(add, x12, x10, x11, 0x2000000000004, 0x0002000000000000, 0x0000000000000004, x19, 280, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000080
TEST_RR_OP(add, x12, x10, x11, 0x4000000000080, 0x0004000000000000, 0x0000000000000080, x19, 288, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(add, x12, x10, x11, 0x7ffffffefffff, 0x0008000000000000, 0xffffffffffefffff, x19, 296, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000020
TEST_RR_OP(add, x12, x10, x11, 0x10000000000020, 0x0010000000000000, 0x0000000000000020, x19, 304, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000008000000000
TEST_RR_OP(add, x12, x10, x11, 0x20008000000000, 0x0020000000000000, 0x0000008000000000, x19, 312, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffffffff, 0x0040000000000000, 0xffbfffffffffffff, x19, 320, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffffffffffffffdf
TEST_RR_OP(add, x12, x10, x11, 0x7fffffffffffdf, 0x0080000000000000, 0xffffffffffffffdf, x19, 328, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000800000000000
TEST_RR_OP(add, x12, x10, x11, 0x100800000000000, 0x0100000000000000, 0x0000800000000000, x19, 336, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(add, x12, x10, x11, 0x1ffffffbfffffff, 0x0200000000000000, 0xffffffffbfffffff, x19, 344, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000001
TEST_RR_OP(add, x12, x10, x11, 0x400000000000001, 0x0400000000000000, 0x0000000000000001, x19, 352, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(add, x12, x10, x11, 0x7ffffffffffffef, 0x0800000000000000, 0xffffffffffffffef, x19, 360, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000040000
TEST_RR_OP(add, x12, x10, x11, 0x1000000000040000, 0x1000000000000000, 0x0000000000040000, x19, 368, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(add, x12, x10, x11, 0x1ffffffffffffff7, 0x2000000000000000, 0xfffffffffffffff7, x19, 376, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000080000
TEST_RR_OP(add, x12, x10, x11, 0x4000000000080000, 0x4000000000000000, 0x0000000000080000, x19, 384, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000009
TEST_RR_OP(add, x12, x10, x11, 0x7, 0xfffffffffffffffe, 0x0000000000000009, x19, 392, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xffff7fffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffff7ffffffffffc, 0xfffffffffffffffd, 0xffff7fffffffffff, x19, 400, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000100000
TEST_RR_OP(add, x12, x10, x11, 0xffffb, 0xfffffffffffffffb, 0x0000000000100000, x19, 408, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xffffffffefffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffeffffff6, 0xfffffffffffffff7, 0xffffffffefffffff, x19, 416, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xfbffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfbffffffffffffee, 0xffffffffffffffef, 0xfbffffffffffffff, x19, 424, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000004
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffffffe3, 0xffffffffffffffdf, 0x0000000000000004, x19, 432, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfbffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfbffffffffffffbe, 0xffffffffffffffbf, 0xfbffffffffffffff, x19, 440, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xffffffffff7fffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffff7fff7e, 0xffffffffffffff7f, 0xffffffffff7fffff, x19, 448, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfffffffffffffffd
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffffefc, 0xfffffffffffffeff, 0xfffffffffffffffd, x19, 456, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xfffffffffffeffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffefdfe, 0xfffffffffffffdff, 0xfffffffffffeffff, x19, 464, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0040000000000000
TEST_RR_OP(add, x12, x10, x11, 0x3ffffffffffbff, 0xfffffffffffffbff, 0x0040000000000000, x19, 472, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xfffbffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffbfffffffff7fe, 0xfffffffffffff7ff, 0xfffbffffffffffff, x19, 480, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfff7ffffffffeffe, 0xffffffffffffefff, 0xfff7ffffffffffff, x19, 488, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xff7fffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xff7fffffffffffbe, 0xffffffffffffffbf, 0xff7fffffffffffff, x19, 496, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfd7ffffffffffffe, 0xff7fffffffffffff, 0xfdffffffffffffff, x19, 504, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xefffffbffffffffe, 0xffffffbfffffffff, 0xefffffffffffffff, x19, 512, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0xdfffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xe000000000000008, 0x0000000000000009, 0xdfffffffffffffff, x19, 520, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xbfffbffffffffffe, 0xffffbfffffffffff, 0xbfffffffffffffff, x19, 528, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x5555555555555555
TEST_RR_OP(add, x12, x10, x11, 0x5555553555555554, 0xffffffdfffffffff, 0x5555555555555555, x19, 536, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xffffffffffffff7f
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffffdf7e, 0xffffffffffffdfff, 0xffffffffffffff7f, x19, 544, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000200000
TEST_RR_OP(add, x12, x10, x11, 0x1fbfff, 0xffffffffffffbfff, 0x0000000000200000, x19, 552, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000010
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffff800f, 0xffffffffffff7fff, 0x0000000000000010, x19, 560, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffffefffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffeffffefffe, 0xfffffffffffeffff, 0xffffffefffffffff, x19, 568, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffdf7fe, 0xfffffffffffdffff, 0xfffffffffffff7ff, x19, 576, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffdffbfffe, 0xfffffffffffbffff, 0xffffffffdfffffff, x19, 584, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffff7fffff7fffe, 0xfffffffffff7ffff, 0xfffff7ffffffffff, x19, 592, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffff6ffffe, 0xffffffffffefffff, 0xffffffffff7fffff, x19, 600, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffdfffde, 0xffffffffffdfffff, 0xffffffffffffffdf, x19, 608, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000000
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffbfffff, 0xffffffffffbfffff, 0x0000000000000000, x19, 616, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffbffffff7ffffe, 0xffffffffff7fffff, 0xfffbffffffffffff, x19, 624, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffff7ffefffffe, 0xfffffffffeffffff, 0xffffff7fffffffff, x19, 632, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000100000000
TEST_RR_OP(add, x12, x10, x11, 0xfdffffff, 0xfffffffffdffffff, 0x0000000100000000, x19, 640, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000006
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffc000005, 0xfffffffffbffffff, 0x0000000000000006, x19, 648, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000100000000000
TEST_RR_OP(add, x12, x10, x11, 0xffff7ffffff, 0xfffffffff7ffffff, 0x0000100000000000, x19, 656, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x1000000000000000
TEST_RR_OP(add, x12, x10, x11, 0xfffffffefffffff, 0xffffffffefffffff, 0x1000000000000000, x19, 664, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000020000
TEST_RR_OP(add, x12, x10, x11, 0xffffffffe001ffff, 0xffffffffdfffffff, 0x0000000000020000, x19, 672, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000020000000000
TEST_RR_OP(add, x12, x10, x11, 0x1ffbfffffff, 0xffffffffbfffffff, 0x0000020000000000, x19, 680, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfdffffff7ffffffe, 0xffffffff7fffffff, 0xfdffffffffffffff, x19, 688, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000008000000
TEST_RR_OP(add, x12, x10, x11, 0xfffffffe07ffffff, 0xfffffffdffffffff, 0x0000000008000000, x19, 696, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffff7fbfffffffe, 0xfffffffbffffffff, 0xfffff7ffffffffff, x19, 704, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000010000
TEST_RR_OP(add, x12, x10, x11, 0xfffffff80000ffff, 0xfffffff7ffffffff, 0x0000000000010000, x19, 712, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000020000000
TEST_RR_OP(add, x12, x10, x11, 0xfffffff01fffffff, 0xffffffefffffffff, 0x0000000020000000, x19, 720, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0020000000000000
TEST_RR_OP(add, x12, x10, x11, 0x1fff7fffffffff, 0xffffff7fffffffff, 0x0020000000000000, x19, 728, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xc000000000000000
TEST_RR_OP(add, x12, x10, x11, 0xbffffeffffffffff, 0xfffffeffffffffff, 0xc000000000000000, x19, 736, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x2000000000000000
TEST_RR_OP(add, x12, x10, x11, 0x1ffffdffffffffff, 0xfffffdffffffffff, 0x2000000000000000, x19, 744, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0001000000000000
TEST_RR_OP(add, x12, x10, x11, 0xfbffffffffff, 0xfffffbffffffffff, 0x0001000000000000, x19, 752, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffffffffffffb
TEST_RR_OP(add, x12, x10, x11, 0xfffff7fffffffffa, 0xfffff7ffffffffff, 0xfffffffffffffffb, x19, 760, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(add, x12, x10, x11, 0xffffeffffffffffd, 0xffffefffffffffff, 0xfffffffffffffffe, x19, 768, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(add, x12, x10, x11, 0x5555355555555554, 0xffffdfffffffffff, 0x5555555555555555, x19, 776, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000020000000
TEST_RR_OP(add, x12, x10, x11, 0xffff80001fffffff, 0xffff7fffffffffff, 0x0000000020000000, x19, 784, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0800000000000000
TEST_RR_OP(add, x12, x10, x11, 0x7feffffffffffff, 0xfffeffffffffffff, 0x0800000000000000, x19, 792, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000800000000000
TEST_RR_OP(add, x12, x10, x11, 0xfffe7fffffffffff, 0xfffdffffffffffff, 0x0000800000000000, x19, 800, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000040000000
TEST_RR_OP(add, x12, x10, x11, 0xfffc00003fffffff, 0xfffbffffffffffff, 0x0000000040000000, x19, 808, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfff5fffffffffffe, 0xfff7ffffffffffff, 0xfffdffffffffffff, x19, 816, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfdeffffffffffffe, 0xffefffffffffffff, 0xfdffffffffffffff, x19, 824, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000800000000000
TEST_RR_OP(add, x12, x10, x11, 0xffe07fffffffffff, 0xffdfffffffffffff, 0x0000800000000000, x19, 832, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(add, x12, x10, x11, 0xff000003ffffffff, 0xfeffffffffffffff, 0x0000000400000000, x19, 840, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(add, x12, x10, x11, 0xfe00000007ffffff, 0xfdffffffffffffff, 0x0000000008000000, x19, 848, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(add, x12, x10, x11, 0xfbfffffffffdfffe, 0xfbffffffffffffff, 0xfffffffffffdffff, x19, 856, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xd7fffffffffffffe, 0xf7ffffffffffffff, 0xdfffffffffffffff, x19, 864, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000020000000000
TEST_RR_OP(add, x12, x10, x11, 0xf00001ffffffffff, 0xefffffffffffffff, 0x0000020000000000, x19, 872, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xdffff7fffffffffe, 0xdfffffffffffffff, 0xfffff7ffffffffff, x19, 880, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000080000000000
TEST_RR_OP(add, x12, x10, x11, 0xc00007ffffffffff, 0xbfffffffffffffff, 0x0000080000000000, x19, 888, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000008000000000
TEST_RR_OP(add, x12, x10, x11, 0x555555d555555555, 0x5555555555555555, 0x0000008000000000, x19, 896, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xfeffffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xa9aaaaaaaaaaaaa9, 0xaaaaaaaaaaaaaaaa, 0xfeffffffffffffff, x19, 904, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000000000000002
TEST_RR_OP(add, x12, x10, x11, 0x12, 0x0000000000000010, 0x0000000000000002, x19, 912, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000008
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffffff7, 0xffffffffffffffef, 0x0000000000000008, x19, 920, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000040
TEST_RR_OP(add, x12, x10, x11, 0xc00000000000003f, 0xbfffffffffffffff, 0x0000000000000040, x19, 928, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000200
TEST_RR_OP(add, x12, x10, x11, 0x200000000200, 0x0000200000000000, 0x0000000000000200, x19, 936, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000400
TEST_RR_OP(add, x12, x10, x11, 0xaaaaaaaaaaaaaeaa, 0xaaaaaaaaaaaaaaaa, 0x0000000000000400, x19, 944, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000800
TEST_RR_OP(add, x12, x10, x11, 0x100000000000800, 0x0100000000000000, 0x0000000000000800, x19, 952, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000001000
TEST_RR_OP(add, x12, x10, x11, 0xffffffe000000fff, 0xffffffdfffffffff, 0x0000000000001000, x19, 960, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000002000
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffc1fff, 0xfffffffffffbffff, 0x0000000000002000, x19, 968, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0x0000000001000000
TEST_RR_OP(add, x12, x10, x11, 0x1004000, 0x0000000000004000, 0x0000000001000000, x19, 976, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000002000000
TEST_RR_OP(add, x12, x10, x11, 0x1f7ffff, 0xfffffffffff7ffff, 0x0000000002000000, x19, 984, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000004000000
TEST_RR_OP(add, x12, x10, x11, 0x3ffff7f, 0xffffffffffffff7f, 0x0000000004000000, x19, 992, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000010000000
TEST_RR_OP(add, x12, x10, x11, 0x10010000000, 0x0000010000000000, 0x0000000010000000, x19, 1000, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000080000000
TEST_RR_OP(add, x12, x10, x11, 0xff8000007fffffff, 0xff7fffffffffffff, 0x0000000080000000, x19, 1008, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000200000000
TEST_RR_OP(add, x12, x10, x11, 0xffff0001ffffffff, 0xfffeffffffffffff, 0x0000000200000000, x19, 1016, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000800000000
TEST_RR_OP(add, x12, x10, x11, 0xffe00007ffffffff, 0xffdfffffffffffff, 0x0000000800000000, x19, 1024, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000002000000000
TEST_RR_OP(add, x12, x10, x11, 0xffc0001fffffffff, 0xffbfffffffffffff, 0x0000002000000000, x19, 1032, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000040000000000
TEST_RR_OP(add, x12, x10, x11, 0xffffe3ffffffffff, 0xffffdfffffffffff, 0x0000040000000000, x19, 1040, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0080000000000000
TEST_RR_OP(add, x12, x10, x11, 0x7ffffffffffbff, 0xfffffffffffffbff, 0x0080000000000000, x19, 1048, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0100000000000000
TEST_RR_OP(add, x12, x10, x11, 0xffffffbfffffff, 0xffffffffbfffffff, 0x0100000000000000, x19, 1056, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0200000000000000
TEST_RR_OP(add, x12, x10, x11, 0x201000000000000, 0x0001000000000000, 0x0200000000000000, x19, 1064, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0400000000000000
TEST_RR_OP(add, x12, x10, x11, 0xaeaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 0x0400000000000000, x19, 1072, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x4000000000000000
TEST_RR_OP(add, x12, x10, x11, 0x4000000010000000, 0x0000000010000000, 0x4000000000000000, x19, 1080, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xffffffffffffffbf
TEST_RR_OP(add, x12, x10, x11, 0x1fffffffbf, 0x0000002000000000, 0xffffffffffffffbf, x19, 1088, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xfffffffffffffeff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffffff07, 0x0000000000000008, 0xfffffffffffffeff, x19, 1096, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xfffffffffffffdff
TEST_RR_OP(add, x12, x10, x11, 0xffdff, 0x0000000000100000, 0xfffffffffffffdff, x19, 1104, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0xfffffffffffffbff
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffffffbf8, 0xfffffffffffffff9, 0xfffffffffffffbff, x19, 1112, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xffffffffffffefff
TEST_RR_OP(add, x12, x10, x11, 0x7ffefff, 0x0000000008000000, 0xffffffffffffefff, x19, 1120, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffefbffe, 0xffffffffffefffff, 0xffffffffffffbfff, x19, 1128, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0xffffffffffff7fff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffff8fff, 0x0000000000001000, 0xffffffffffff7fff, x19, 1136, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffbffffbfffe, 0xffffffbfffffffff, 0xfffffffffffbffff, x19, 1144, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(add, x12, x10, x11, 0xdfffffffffdffffe, 0xdfffffffffffffff, 0xffffffffffdfffff, x19, 1152, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffffffbffffe, 0xffffffffffffffff, 0xffffffffffbfffff, x19, 1160, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffff7fdfffffe, 0xfffffff7ffffffff, 0xfffffffffdffffff, x19, 1168, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(add, x12, x10, x11, 0xbffffffff7ffffff, 0xc000000000000000, 0xfffffffff7ffffff, x19, 1176, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffeffffffff, 0x0010000000000000, 0xfffffffeffffffff, x19, 1184, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(add, x12, x10, x11, 0x7ffdffffffff, 0x0000800000000000, 0xfffffffdffffffff, x19, 1192, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(add, x12, x10, x11, 0x3ff7ffffffff, 0x0000400000000000, 0xfffffff7ffffffff, x19, 1200, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xffffffdfffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffe000000007, 0x0000000000000008, 0xffffffdfffffffff, x19, 1208, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0x0000400000000000
TEST_RR_OP(add, x12, x10, x11, 0x400000000004, 0x0000000000000004, 0x0000400000000000, x19, 1216, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffff9ffffffffe, 0xffffffdfffffffff, 0xffffffbfffffffff, x19, 1224, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0xfffffeffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffff00000007ff, 0x0000000000000800, 0xfffffeffffffffff, x19, 1232, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0xfffffdffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffe0000001fff, 0x0000000000002000, 0xfffffdffffffffff, x19, 1240, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffffbffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffbfffffffbfe, 0xfffffffffffffbff, 0xfffffbffffffffff, x19, 1248, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xffffefffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffff001ffffffff, 0x0000000200000000, 0xffffefffffffffff, x19, 1256, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfdffdffffffffffe, 0xfdffffffffffffff, 0xffffdfffffffffff, x19, 1264, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0xffffbfffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffc0000000000f, 0x0000000000000010, 0xffffbfffffffffff, x19, 1272, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffeffffffffffff, 0x0000000000000000, 0xfffeffffffffffff, x19, 1280, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0002000000000000
TEST_RR_OP(add, x12, x10, x11, 0x2000080000000, 0x0000000080000000, 0x0002000000000000, x19, 1288, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffffffffbffffff, 0x0000000000000000, 0xfffffffffbffffff, x19, 1296, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(add, x12, x10, x11, 0x7ffffffffefffffe, 0x7fffffffffffffff, 0xfffffffffeffffff, x19, 1304, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xffffffff7fffffff
TEST_RR_OP(add, x12, x10, x11, 0xffffffff80000000, 0x0000000000000001, 0xffffffff7fffffff, x19, 1312, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x8000000000000000
TEST_RR_OP(add, x12, x10, x11, 0x7ffffffeffffffff, 0xfffffffeffffffff, 0x8000000000000000, x19, 1320, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0x0000000000000004
TEST_RR_OP(add, x12, x10, x11, 0x8, 0x0000000000000004, 0x0000000000000004, x19, 1328, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0xfffff7ffffffffff
TEST_RR_OP(add, x12, x10, x11, 0xfffff8000000000f, 0x0000000000000010, 0xfffff7ffffffffff, x19, 1336, x2)

# opcode: add ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x0800000000000000
TEST_RR_OP(add, x12, x10, x11, 0x800000000000080, 0x0000000000000080, 0x0800000000000000, x19, 1344, x2)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x6_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x19_0:
    .fill 169*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
