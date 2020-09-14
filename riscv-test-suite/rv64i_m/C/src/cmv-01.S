
#This assembly file tests the c.mv instruction of the RISC-V C extension for the cmv covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cmv)

la x10,signature_x10_1

# opcode: c.mv; op2:x5; dest:x5; op2val:0x8000000000000000
TEST_CMV_OP( c.mv, x5, x5, 0x0000000000000000, 0x8000000000000000, x10, 0, x17)

# opcode: c.mv; op2:x25; dest:x16; op2val:0x0000000000000000
TEST_CMV_OP( c.mv, x16, x25, 0x0000000000000000, 0x0000000000000000, x10, 8, x17)

# opcode: c.mv; op2:x1; dest:x26; op2val:0x7fffffffffffffff
TEST_CMV_OP( c.mv, x26, x1, 0x0000000000000000, 0x7fffffffffffffff, x10, 16, x17)

# opcode: c.mv; op2:x9; dest:x23; op2val:0x0000000000000001
TEST_CMV_OP( c.mv, x23, x9, 0x0000000000000000, 0x0000000000000001, x10, 24, x17)

# opcode: c.mv; op2:x8; dest:x11; op2val:0x0000000000000002
TEST_CMV_OP( c.mv, x11, x8, 0x0000000000000000, 0x0000000000000002, x10, 32, x17)

# opcode: c.mv; op2:x30; dest:x24; op2val:0x0000000000000004
TEST_CMV_OP( c.mv, x24, x30, 0x0000000000000000, 0x0000000000000004, x10, 40, x17)

# opcode: c.mv; op2:x20; dest:x15; op2val:0x0000000000000008
TEST_CMV_OP( c.mv, x15, x20, 0x0000000000000000, 0x0000000000000008, x10, 48, x17)

# opcode: c.mv; op2:x27; dest:x2; op2val:0x0000000000000010
TEST_CMV_OP( c.mv, x2, x27, 0x0000000000000000, 0x0000000000000010, x10, 56, x17)

# opcode: c.mv; op2:x22; dest:x12; op2val:0x0000000000000020
TEST_CMV_OP( c.mv, x12, x22, 0x0000000000000000, 0x0000000000000020, x10, 64, x17)

# opcode: c.mv; op2:x14; dest:x4; op2val:0x0000000000000040
TEST_CMV_OP( c.mv, x4, x14, 0x0000000000000000, 0x0000000000000040, x10, 72, x17)

# opcode: c.mv; op2:x23; dest:x18; op2val:0x0000000000000080
TEST_CMV_OP( c.mv, x18, x23, 0x0000000000000000, 0x0000000000000080, x10, 80, x17)

# opcode: c.mv; op2:x15; dest:x25; op2val:0x0000000000000100
TEST_CMV_OP( c.mv, x25, x15, 0x0000000000000000, 0x0000000000000100, x10, 88, x17)

# opcode: c.mv; op2:x16; dest:x29; op2val:0x0000000000000200
TEST_CMV_OP( c.mv, x29, x16, 0x0000000000000000, 0x0000000000000200, x10, 96, x17)

# opcode: c.mv; op2:x24; dest:x21; op2val:0x0000000000000400
TEST_CMV_OP( c.mv, x21, x24, 0x0000000000000000, 0x0000000000000400, x10, 104, x17)

# opcode: c.mv; op2:x3; dest:x20; op2val:0x0000000000000800
TEST_CMV_OP( c.mv, x20, x3, 0x0000000000000000, 0x0000000000000800, x10, 112, x17)

# opcode: c.mv; op2:x26; dest:x19; op2val:0x0000000000001000
TEST_CMV_OP( c.mv, x19, x26, 0x0000000000000000, 0x0000000000001000, x10, 120, x17)

# opcode: c.mv; op2:x12; dest:x1; op2val:0x0000000000002000
TEST_CMV_OP( c.mv, x1, x12, 0x0000000000000000, 0x0000000000002000, x10, 128, x17)

# opcode: c.mv; op2:x31; dest:x22; op2val:0x0000000000004000
TEST_CMV_OP( c.mv, x22, x31, 0x0000000000000000, 0x0000000000004000, x10, 136, x17)

# opcode: c.mv; op2:x6; dest:x30; op2val:0x0000000000008000
TEST_CMV_OP( c.mv, x30, x6, 0x0000000000000000, 0x0000000000008000, x10, 144, x17)

# opcode: c.mv; op2:x13; dest:x7; op2val:0x0000000000010000
TEST_CMV_OP( c.mv, x7, x13, 0x0000000000000000, 0x0000000000010000, x10, 152, x17)
la x1,signature_x1_0

# opcode: c.mv; op2:x29; dest:x8; op2val:0x0000000000020000
TEST_CMV_OP( c.mv, x8, x29, 0x0000000000000000, 0x0000000000020000, x1, 0, x5)

# opcode: c.mv; op2:x10; dest:x6; op2val:0x0000000000040000
TEST_CMV_OP( c.mv, x6, x10, 0x0000000000000000, 0x0000000000040000, x1, 8, x5)

# opcode: c.mv; op2:x28; dest:x0; op2val:0x0000000000080000
TEST_CMV_OP( c.mv, x0, x28, 0x0000000000000000, 0x0000000000080000, x1, 16, x5)

# opcode: c.mv; op2:x21; dest:x14; op2val:0x0000000000100000
TEST_CMV_OP( c.mv, x14, x21, 0x0000000000000000, 0x0000000000100000, x1, 24, x5)

# opcode: c.mv; op2:x17; dest:x10; op2val:0x0000000000200000
TEST_CMV_OP( c.mv, x10, x17, 0x0000000000000000, 0x0000000000200000, x1, 32, x5)

# opcode: c.mv; op2:x11; dest:x27; op2val:0x0000000000400000
TEST_CMV_OP( c.mv, x27, x11, 0x0000000000000000, 0x0000000000400000, x1, 40, x5)

# opcode: c.mv; op2:x18; dest:x31; op2val:0x0000000000800000
TEST_CMV_OP( c.mv, x31, x18, 0x0000000000000000, 0x0000000000800000, x1, 48, x5)

# opcode: c.mv; op2:x4; dest:x3; op2val:0x0000000001000000
TEST_CMV_OP( c.mv, x3, x4, 0x0000000000000000, 0x0000000001000000, x1, 56, x5)

# opcode: c.mv; op2:x19; dest:x28; op2val:0x0000000002000000
TEST_CMV_OP( c.mv, x28, x19, 0x0000000000000000, 0x0000000002000000, x1, 64, x5)

# opcode: c.mv; op2:x7; dest:x9; op2val:0x0000000004000000
TEST_CMV_OP( c.mv, x9, x7, 0x0000000000000000, 0x0000000004000000, x1, 72, x5)

# opcode: c.mv; op2:x2; dest:x17; op2val:0x0000000008000000
TEST_CMV_OP( c.mv, x17, x2, 0x0000000000000000, 0x0000000008000000, x1, 80, x5)

# opcode: c.mv; op2:x6; dest:x13; op2val:0x0000000010000000
TEST_CMV_OP( c.mv, x13, x6, 0x0000000000000000, 0x0000000010000000, x1, 88, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000020000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000020000000, x1, 96, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000040000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000040000000, x1, 104, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000080000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000080000000, x1, 112, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000100000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000100000000, x1, 120, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000200000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000200000000, x1, 128, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000400000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000400000000, x1, 136, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000800000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000800000000, x1, 144, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000001000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000001000000000, x1, 152, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000002000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000002000000000, x1, 160, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000004000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000004000000000, x1, 168, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000008000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000008000000000, x1, 176, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000010000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000010000000000, x1, 184, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000020000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000020000000000, x1, 192, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000040000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000040000000000, x1, 200, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000080000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000080000000000, x1, 208, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000100000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000100000000000, x1, 216, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000200000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000200000000000, x1, 224, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000400000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000400000000000, x1, 232, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000800000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000800000000000, x1, 240, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0001000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0001000000000000, x1, 248, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0002000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0002000000000000, x1, 256, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0004000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0004000000000000, x1, 264, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0008000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0008000000000000, x1, 272, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0010000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0010000000000000, x1, 280, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0020000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0020000000000000, x1, 288, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0040000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0040000000000000, x1, 296, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0080000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0080000000000000, x1, 304, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0100000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0100000000000000, x1, 312, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0200000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0200000000000000, x1, 320, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0400000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0400000000000000, x1, 328, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0800000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0800000000000000, x1, 336, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x1000000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x1000000000000000, x1, 344, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x2000000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x2000000000000000, x1, 352, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x4000000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x4000000000000000, x1, 360, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffffe
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, x1, 368, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffffd
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, x1, 376, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xdfffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, x1, 384, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xbfffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, x1, 392, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x5555555555555555
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x5555555555555555, x1, 400, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xaaaaaaaaaaaaaaaa
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, x1, 408, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffffb
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, x1, 416, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffff7
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, x1, 424, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffffef
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffffef, x1, 432, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffffdf
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, x1, 440, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffffbf
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, x1, 448, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffff7f
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, x1, 456, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffeff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, x1, 464, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffdff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, x1, 472, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffffbff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, x1, 480, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffff7ff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, x1, 488, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffefff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffefff, x1, 496, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffdfff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, x1, 504, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffffbfff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, x1, 512, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffff7fff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, x1, 520, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffeffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, x1, 528, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffdffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, x1, 536, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffffbffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, x1, 544, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffff7ffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, x1, 552, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffefffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffefffff, x1, 560, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffdfffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, x1, 568, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffffbfffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, x1, 576, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffff7fffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, x1, 584, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffeffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, x1, 592, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffdffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, x1, 600, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffffbffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, x1, 608, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffff7ffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, x1, 616, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffefffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffefffffff, x1, 624, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffdfffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, x1, 632, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffffbfffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, x1, 640, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffff7fffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, x1, 648, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffeffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, x1, 656, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffdffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, x1, 664, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffbffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, x1, 672, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffff7ffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, x1, 680, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffefffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffefffffffff, x1, 688, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffdfffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, x1, 696, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffbfffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, x1, 704, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffff7fffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, x1, 712, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffeffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, x1, 720, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffdffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, x1, 728, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffbffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, x1, 736, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffff7ffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, x1, 744, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffefffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffefffffffffff, x1, 752, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffdfffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, x1, 760, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffbfffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, x1, 768, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffff7fffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, x1, 776, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffeffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, x1, 784, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffdffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, x1, 792, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffbffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, x1, 800, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfff7ffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, x1, 808, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffefffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffefffffffffffff, x1, 816, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffdfffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, x1, 824, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffbfffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, x1, 832, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xff7fffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, x1, 840, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfeffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, x1, 848, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfdffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, x1, 856, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfbffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, x1, 864, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xf7ffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, x1, 872, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xefffffffffffffff
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0xefffffffffffffff, x1, 880, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x8000000000000000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x8000000000000000, x1, 888, x5)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x0000000000080000
TEST_CMV_OP( c.mv, x10, x11, 0x0000000000000000, 0x0000000000080000, x1, 896, x5)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x10_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 113*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
