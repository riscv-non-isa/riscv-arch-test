
#This assembly file tests the c.xor instruction of the RISC-V C extension for the cxor covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cxor)

la x1,signature_x1_1

# opcode: c.xor; op1:x14; op2:x14; op1val:0x0000000000002000; op2val:0x0000000000100000
TEST_CR_OP( c.xor, x14, x14, 0x0000000000000000, 0x0000000000002000, 0x0000000000100000, x1, 0, x2)

# opcode: c.xor; op1:x10; op2:x8; op1val:0xdfffffffffffffff; op2val:0xffffffffffffffdf
TEST_CR_OP( c.xor, x10, x8, 0x0000000000000000, 0xdfffffffffffffff, 0xffffffffffffffdf, x1, 8, x2)

# opcode: c.xor; op1:x15; op2:x9; op1val:0x8000000000000000; op2val:0xffffffffefffffff
TEST_CR_OP( c.xor, x15, x9, 0x0000000000000000, 0x8000000000000000, 0xffffffffefffffff, x1, 16, x2)

# opcode: c.xor; op1:x12; op2:x10; op1val:0x0000000000000000; op2val:0xfffffffeffffffff
TEST_CR_OP( c.xor, x12, x10, 0x0000000000000000, 0x0000000000000000, 0xfffffffeffffffff, x1, 24, x2)

# opcode: c.xor; op1:x8; op2:x12; op1val:0x7fffffffffffffff; op2val:0x0000001000000000
TEST_CR_OP( c.xor, x8, x12, 0x0000000000000000, 0x7fffffffffffffff, 0x0000001000000000, x1, 32, x2)

# opcode: c.xor; op1:x11; op2:x15; op1val:0x0000000000000001; op2val:0x0000200000000000
TEST_CR_OP( c.xor, x11, x15, 0x0000000000000000, 0x0000000000000001, 0x0000200000000000, x1, 40, x2)

# opcode: c.xor; op1:x13; op2:x11; op1val:0x0000000002000000; op2val:0x8000000000000000
TEST_CR_OP( c.xor, x13, x11, 0x0000000000000000, 0x0000000002000000, 0x8000000000000000, x1, 48, x2)

# opcode: c.xor; op1:x9; op2:x13; op1val:0xfffffffffffffffa; op2val:0x0000000000000000
TEST_CR_OP( c.xor, x9, x13, 0x0000000000000000, 0xfffffffffffffffa, 0x0000000000000000, x1, 56, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xc000000000000000; op2val:0x7fffffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xc000000000000000, 0x7fffffffffffffff, x1, 64, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffdffffffffff; op2val:0x0000000000000001
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0x0000000000000001, x1, 72, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000002; op2val:0x0008000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000002, 0x0008000000000000, x1, 80, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000004; op2val:0xfffffffffffff7ff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000004, 0xfffffffffffff7ff, x1, 88, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000008; op2val:0x7fffffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000008, 0x7fffffffffffffff, x1, 96, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000010; op2val:0x0800000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000010, 0x0800000000000000, x1, 104, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000020; op2val:0xfffffffffffffbff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000020, 0xfffffffffffffbff, x1, 112, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000040; op2val:0x0000000000004000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000040, 0x0000000000004000, x1, 120, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0x0000000000020000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000080, 0x0000000000020000, x1, 128, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0x0000000000000004
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000100, 0x0000000000000004, x1, 136, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000200; op2val:0xffff7fffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000200, 0xffff7fffffffffff, x1, 144, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000400; op2val:0x0000000400000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000400, 0x0000000400000000, x1, 152, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000800; op2val:0x0000000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000800, 0x0000000000000000, x1, 160, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000001000; op2val:0xffffffefffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000001000, 0xffffffefffffffff, x1, 168, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000004000; op2val:0x0000040000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000004000, 0x0000040000000000, x1, 176, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000008000; op2val:0x0000000200000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000008000, 0x0000000200000000, x1, 184, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0xfffffffffffffff7
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000010000, 0xfffffffffffffff7, x1, 192, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000020000; op2val:0xfffffffffffeffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000020000, 0xfffffffffffeffff, x1, 200, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000040000; op2val:0xffffffefffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000040000, 0xffffffefffffffff, x1, 208, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000080000; op2val:0x0000000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000080000, 0x0000000000000000, x1, 216, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000100000; op2val:0xffff7fffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000100000, 0xffff7fffffffffff, x1, 224, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000200000; op2val:0xf7ffffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000200000, 0xf7ffffffffffffff, x1, 232, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000400000; op2val:0x0200000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000400000, 0x0200000000000000, x1, 240, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000800000; op2val:0xfffffffffffffff6
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000800000, 0xfffffffffffffff6, x1, 248, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000001000000; op2val:0xdfffffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000001000000, 0xdfffffffffffffff, x1, 256, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000004000000; op2val:0xffffffdfffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000004000000, 0xffffffdfffffffff, x1, 264, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000008000000; op2val:0x0000000000010000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000008000000, 0x0000000000010000, x1, 272, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000010000000; op2val:0x0000000000080000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000010000000, 0x0000000000080000, x1, 280, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000020000000; op2val:0x0000000000800000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000020000000, 0x0000000000800000, x1, 288, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000040000000; op2val:0x0000100000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000040000000, 0x0000100000000000, x1, 296, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000080000000; op2val:0xffbfffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xffbfffffffffffff, x1, 304, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0000000000000020
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x0000000000000020, x1, 312, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x0008000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000200000000, 0x0008000000000000, x1, 320, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000400000000; op2val:0xfffffdffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000400000000, 0xfffffdffffffffff, x1, 328, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000800000000; op2val:0xfffffbffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xfffffbffffffffff, x1, 336, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xffffbfffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xffffbfffffffffff, x1, 344, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000002000000000; op2val:0xffffffffffefffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xffffffffffefffff, x1, 352, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000002000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000002000000, x1, 360, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0xfffffffffffbffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xfffffffffffbffff, x1, 368, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000010000000000; op2val:0x0000040000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000010000000000, 0x0000040000000000, x1, 376, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x0000000020000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000020000000000, 0x0000000020000000, x1, 384, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000040000000000; op2val:0xfffffffffffffff9
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000040000000000, 0xfffffffffffffff9, x1, 392, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000080000000000; op2val:0x0020000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0020000000000000, x1, 400, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000100000000000; op2val:0xfffeffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xfffeffffffffffff, x1, 408, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000200000000000; op2val:0xfffffdffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xfffffdffffffffff, x1, 416, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000200000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000400000000000, 0x0000200000000000, x1, 424, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfdffffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000800000000000, 0xfdffffffffffffff, x1, 432, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0001000000000000; op2val:0xfffffffffffffffb
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0001000000000000, 0xfffffffffffffffb, x1, 440, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0x0010000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0010000000000000, x1, 448, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0004000000000000; op2val:0xfffffffdffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0004000000000000, 0xfffffffdffffffff, x1, 456, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0008000000000000; op2val:0x0000000080000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0008000000000000, 0x0000000080000000, x1, 464, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0x0000000004000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0010000000000000, 0x0000000004000000, x1, 472, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0xfffffffffbffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0020000000000000, 0xfffffffffbffffff, x1, 480, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0040000000000000; op2val:0xfeffffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0040000000000000, 0xfeffffffffffffff, x1, 488, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0xfffffffdffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xfffffffdffffffff, x1, 496, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0100000000000000; op2val:0xfffffffffffffffb
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0100000000000000, 0xfffffffffffffffb, x1, 504, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0200000000000000; op2val:0x0000000000000001
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0000000000000001, x1, 512, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0400000000000000; op2val:0x0020000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0400000000000000, 0x0020000000000000, x1, 520, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0x0000000001000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0800000000000000, 0x0000000001000000, x1, 528, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x0000000000200000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x1000000000000000, 0x0000000000200000, x1, 536, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x2000000000000000; op2val:0xfffffff7ffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x2000000000000000, 0xfffffff7ffffffff, x1, 544, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0x1000000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x4000000000000000, 0x1000000000000000, x1, 552, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffffffe; op2val:0xffffffff7fffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0xffffffff7fffffff, x1, 560, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffffffd; op2val:0x1000000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0x1000000000000000, x1, 568, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xffffffffff7fffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0xffffffffff7fffff, x1, 576, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0x0000000000000010
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0x0000000000000010, x1, 584, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffffffef; op2val:0xfffffffffffdffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xfffffffffffdffff, x1, 592, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffffffdf; op2val:0x0000000000000007
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0x0000000000000007, x1, 600, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffffffbf; op2val:0x0000000000010000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0x0000000000010000, x1, 608, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffffff7f; op2val:0x0000000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0x0000000000000000, x1, 616, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x4000000000000000; op2val:0xff7fffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x4000000000000000, 0xff7fffffffffffff, x1, 624, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000800000000000; op2val:0xfbffffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000800000000000, 0xfbffffffffffffff, x1, 632, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0xefffffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xefffffffffffffff, x1, 640, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffffbff; op2val:0xbfffffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0xbfffffffffffffff, x1, 648, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0x5555555555555555
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000200000000, 0x5555555555555555, x1, 656, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0xaaaaaaaaaaaaaaaa
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000080, 0xaaaaaaaaaaaaaaaa, x1, 664, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffffeff; op2val:0x0000000000000800
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0x0000000000000800, x1, 672, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffffdff; op2val:0x0000000000000001
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0x0000000000000001, x1, 680, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffff7ff; op2val:0x4000000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0x4000000000000000, x1, 688, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0xffffbfffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0xffffbfffffffffff, x1, 696, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffffdfff; op2val:0xffffff7fffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0xffffff7fffffffff, x1, 704, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0x8000000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x8000000000000000, x1, 712, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0xfffffffffff7ffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0xfffffffffff7ffff, x1, 720, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffeffff; op2val:0xffffffffdfffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xffffffffdfffffff, x1, 728, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffdffff; op2val:0xffffffdfffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xffffffdfffffffff, x1, 736, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffbffff; op2val:0xffffffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0xffffffffffffffff, x1, 744, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffff7ffff; op2val:0xfffffffffffffffa
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0xfffffffffffffffa, x1, 752, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffefffff; op2val:0x0002000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0x0002000000000000, x1, 760, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffdfffff; op2val:0x0000020000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0x0000020000000000, x1, 768, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffbfffff; op2val:0x0004000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0x0004000000000000, x1, 776, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffff7fffff; op2val:0xfffffffbffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0xfffffffbffffffff, x1, 784, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffeffffff; op2val:0x0000400000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0000400000000000, x1, 792, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffdffffff; op2val:0x0000000008000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0x0000000008000000, x1, 800, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffbffffff; op2val:0xffefffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0xffefffffffffffff, x1, 808, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffff7ffffff; op2val:0xdfffffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0xdfffffffffffffff, x1, 816, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffefffffff; op2val:0xffff7fffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xffff7fffffffffff, x1, 824, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffdfffffff; op2val:0xfffffffffffffff6
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0xfffffffffffffff6, x1, 832, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffbfffffff; op2val:0xffffffffffdfffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0xffffffffffdfffff, x1, 840, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffff7fffffff; op2val:0x0000000020000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0x0000000020000000, x1, 848, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffeffffffff; op2val:0xffffffffffffff7f
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0xffffffffffffff7f, x1, 856, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffdffffffff; op2val:0x0000400000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0x0000400000000000, x1, 864, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0x0000000000001000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0x0000000000001000, x1, 872, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0x0000002000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0x0000002000000000, x1, 880, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffefffffffff; op2val:0x0000000200000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0x0000000200000000, x1, 888, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0xfffffffeffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0xfffffffeffffffff, x1, 896, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffbfffffffff; op2val:0x0000000000000005
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0x0000000000000005, x1, 904, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffff7fffffffff; op2val:0xffffffffffbfffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0xffffffffffbfffff, x1, 912, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0xfffffffffffffff8
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0xfffffffffffffff8, x1, 920, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffbffffffffff; op2val:0xffffffffffffff7f
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0xffffffffffffff7f, x1, 928, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffff7ffffffffff; op2val:0x0000000002000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0x0000000002000000, x1, 936, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffefffffffffff; op2val:0x0000001000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0x0000001000000000, x1, 944, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffdfffffffffff; op2val:0x0400000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0x0400000000000000, x1, 952, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0x0000000010000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0x0000000010000000, x1, 960, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0040000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0040000000000000, x1, 968, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xff7fffffffffffff; op2val:0x0200000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0x0200000000000000, x1, 976, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0x0000800000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0x0000800000000000, x1, 984, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfdffffffffffffff; op2val:0xfffffffffeffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0xfffffffffeffffff, x1, 992, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfbffffffffffffff; op2val:0x0000000400000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0x0000000400000000, x1, 1000, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffffbfff; op2val:0xffdfffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0xffdfffffffffffff, x1, 1008, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x0000000000001000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0x0000000000001000, x1, 1016, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0xfffffffffffffffb
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0xfffffffffffffffb, x1, 1024, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xbfffffffffffffff; op2val:0xffff7fffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0xffff7fffffffffff, x1, 1032, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x5555555555555555; op2val:0x0000010000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x0000010000000000, x1, 1040, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0x0000000000000200
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0x0000000000000200, x1, 1048, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffdfffffffffffff; op2val:0x0000000000000002
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0x0000000000000002, x1, 1056, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000400000; op2val:0x0000000000000008
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000400000, 0x0000000000000008, x1, 1064, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffbffffffffffff; op2val:0x0000000000000040
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0x0000000000000040, x1, 1072, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffffefff; op2val:0x0000000000000080
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0x0000000000000080, x1, 1080, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x1000000000000000; op2val:0x0000000000000100
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x1000000000000000, 0x0000000000000100, x1, 1088, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xf7ffffffffffffff; op2val:0x0000000000000400
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0x0000000000000400, x1, 1096, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0x0000000000002000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000000002000, x1, 1104, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000020000000000; op2val:0x0000000000008000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000020000000000, 0x0000000000008000, x1, 1112, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0020000000000000; op2val:0x0000000000040000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000000000040000, x1, 1120, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffffffff7fff; op2val:0x0000000000400000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0x0000000000400000, x1, 1128, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffff7fffffffffff; op2val:0x0000000040000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000040000000, x1, 1136, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000100; op2val:0x0000000100000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000100, 0x0000000100000000, x1, 1144, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000008000000000; op2val:0x0000000800000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000008000000000, 0x0000000800000000, x1, 1152, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000080; op2val:0x0000004000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000080, 0x0000004000000000, x1, 1160, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000009; op2val:0x0000008000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000009, 0x0000008000000000, x1, 1168, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffffdfffffffff; op2val:0x0080000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0x0080000000000000, x1, 1176, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000100000000; op2val:0x0100000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x0100000000000000, x1, 1184, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffeffffffffff; op2val:0x2000000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x2000000000000000, x1, 1192, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0010000000000000; op2val:0xfffffffffffffffe
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xfffffffffffffffe, x1, 1200, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000004000000000; op2val:0xfffffffffffffffd
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000004000000000, 0xfffffffffffffffd, x1, 1208, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xefffffffffffffff; op2val:0xffffffffffffffef
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0xffffffffffffffef, x1, 1216, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffffff9; op2val:0xffffffffffffffbf
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffffff9, 0xffffffffffffffbf, x1, 1224, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0xfffffffffffffeff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0xfffffffffffffeff, x1, 1232, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffbffffffff; op2val:0xfffffffffffffdff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0xfffffffffffffdff, x1, 1240, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffffff7; op2val:0xffffffffffffefff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xffffffffffffefff, x1, 1248, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000001000000000; op2val:0xffffffffffffdfff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xffffffffffffdfff, x1, 1256, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffffbfffffffffff; op2val:0xffffffffffffbfff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0xffffffffffffbfff, x1, 1264, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0080000000000000; op2val:0xffffffffffff7fff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xffffffffffff7fff, x1, 1272, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000000400; op2val:0xfffffffffdffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000000400, 0xfffffffffdffffff, x1, 1280, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffff7ffffffff; op2val:0xfffffffff7ffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0xfffffffff7ffffff, x1, 1288, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfeffffffffffffff; op2val:0xffffffffbfffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xffffffffbfffffff, x1, 1296, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0x0000000000200000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0x0000000000200000, x1, 1304, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffffffffffffffb; op2val:0xffffffbfffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0xffffffbfffffffff, x1, 1312, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfff7ffffffffffff; op2val:0x0000004000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x0000004000000000, x1, 1320, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffdffffffffffff; op2val:0xfffffeffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0xfffffeffffffffff, x1, 1328, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000400000000000; op2val:0x0000080000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000400000000000, 0x0000080000000000, x1, 1336, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0002000000000000; op2val:0xfffff7ffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0002000000000000, 0xfffff7ffffffffff, x1, 1344, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000200000000; op2val:0xffffefffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000200000000, 0xffffefffffffffff, x1, 1352, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0800000000000000; op2val:0xffffdfffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0800000000000000, 0xffffdfffffffffff, x1, 1360, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xfffeffffffffffff; op2val:0xffffffefffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0xffffffefffffffff, x1, 1368, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x7fffffffffffffff; op2val:0xfff7ffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x7fffffffffffffff, 0xfff7ffffffffffff, x1, 1376, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000010000; op2val:0x0001000000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000010000, 0x0001000000000000, x1, 1384, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000004000; op2val:0xfffdffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000004000, 0xfffdffffffffffff, x1, 1392, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xaaaaaaaaaaaaaaaa; op2val:0xfffbffffffffffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0xfffbffffffffffff, x1, 1400, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffefffffffffffff; op2val:0x0000040000000000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0x0000040000000000, x1, 1408, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0xffbfffffffffffff; op2val:0xfffffffffffeffff
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0xfffffffffffeffff, x1, 1416, x2)

# opcode: c.xor; op1:x10; op2:x11; op1val:0x0000000000002000; op2val:0x0000000000100000
TEST_CR_OP( c.xor, x10, x11, 0x0000000000000000, 0x0000000000002000, 0x0000000000100000, x1, 1424, x2)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x1_1:
    .fill 179*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
