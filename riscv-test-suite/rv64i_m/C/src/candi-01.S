
#This assembly file tests the c.andi instruction of the RISC-V C extension for the candi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",candi)

la x1,signature_x1_1

# opcode: c.andi; op1:x9; immval:-17
TEST_CI_OP( c.andi, x9, 0x0000000000000000, 0x8000000000000000, -17, x1, 0, x2)

# opcode: c.andi; op1:x14; immval:3
TEST_CI_OP( c.andi, x14, 0x0000000000000000, 0x0000000000000000, 3, x1, 8, x2)

# opcode: c.andi; op1:x12; immval:4
TEST_CI_OP( c.andi, x12, 0x0000000000000000, 0x7fffffffffffffff, 4, x1, 16, x2)

# opcode: c.andi; op1:x13; immval:-7
TEST_CI_OP( c.andi, x13, 0x0000000000000000, 0x0000000000000001, -7, x1, 24, x2)

# opcode: c.andi; op1:x10; immval:-32
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffdffffffffff, -32, x1, 32, x2)

# opcode: c.andi; op1:x15; immval:0
TEST_CI_OP( c.andi, x15, 0x0000000000000000, 0xfffffffff7ffffff, 0, x1, 40, x2)

# opcode: c.andi; op1:x8; immval:31
TEST_CI_OP( c.andi, x8, 0x0000000000000000, 0x0000100000000000, 31, x1, 48, x2)

# opcode: c.andi; op1:x11; immval:1
TEST_CI_OP( c.andi, x11, 0x0000000000000000, 0x0000000000000080, 1, x1, 56, x2)

# opcode: c.andi; op1:x10; immval:3
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000000003, 3, x1, 64, x2)

# opcode: c.andi; op1:x10; immval:9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffffffffe, 9, x1, 72, x2)

# opcode: c.andi; op1:x10; immval:-6
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000000002, -6, x1, 80, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000000004, 31, x1, 88, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000000008, 31, x1, 96, x2)

# opcode: c.andi; op1:x10; immval:6
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000000010, 6, x1, 104, x2)

# opcode: c.andi; op1:x10; immval:9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000000020, 9, x1, 112, x2)

# opcode: c.andi; op1:x10; immval:-9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000000040, -9, x1, 120, x2)

# opcode: c.andi; op1:x10; immval:6
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000000100, 6, x1, 128, x2)

# opcode: c.andi; op1:x10; immval:7
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000000200, 7, x1, 136, x2)

# opcode: c.andi; op1:x10; immval:-2
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000000400, -2, x1, 144, x2)

# opcode: c.andi; op1:x10; immval:-22
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000000800, -22, x1, 152, x2)

# opcode: c.andi; op1:x10; immval:-16
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000001000, -16, x1, 160, x2)

# opcode: c.andi; op1:x10; immval:7
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000002000, 7, x1, 168, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000004000, 31, x1, 176, x2)

# opcode: c.andi; op1:x10; immval:-17
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000008000, -17, x1, 184, x2)

# opcode: c.andi; op1:x10; immval:-4
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000010000, -4, x1, 192, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000020000, 31, x1, 200, x2)

# opcode: c.andi; op1:x10; immval:0
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000040000, 0, x1, 208, x2)

# opcode: c.andi; op1:x10; immval:8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000080000, 8, x1, 216, x2)

# opcode: c.andi; op1:x10; immval:-8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000100000, -8, x1, 224, x2)

# opcode: c.andi; op1:x10; immval:9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000200000, 9, x1, 232, x2)

# opcode: c.andi; op1:x10; immval:2
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000400000, 2, x1, 240, x2)

# opcode: c.andi; op1:x10; immval:-5
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000000800000, -5, x1, 248, x2)

# opcode: c.andi; op1:x10; immval:-1
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000001000000, -1, x1, 256, x2)

# opcode: c.andi; op1:x10; immval:-9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000002000000, -9, x1, 264, x2)

# opcode: c.andi; op1:x10; immval:5
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000004000000, 5, x1, 272, x2)

# opcode: c.andi; op1:x10; immval:16
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000008000000, 16, x1, 280, x2)

# opcode: c.andi; op1:x10; immval:3
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000010000000, 3, x1, 288, x2)

# opcode: c.andi; op1:x10; immval:-1
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000020000000, -1, x1, 296, x2)

# opcode: c.andi; op1:x10; immval:-22
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000040000000, -22, x1, 304, x2)

# opcode: c.andi; op1:x10; immval:-1
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000080000000, -1, x1, 312, x2)

# opcode: c.andi; op1:x10; immval:6
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000100000000, 6, x1, 320, x2)

# opcode: c.andi; op1:x10; immval:-3
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000200000000, -3, x1, 328, x2)

# opcode: c.andi; op1:x10; immval:-5
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000400000000, -5, x1, 336, x2)

# opcode: c.andi; op1:x10; immval:-16
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000000800000000, -16, x1, 344, x2)

# opcode: c.andi; op1:x10; immval:21
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000001000000000, 21, x1, 352, x2)

# opcode: c.andi; op1:x10; immval:-5
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000002000000000, -5, x1, 360, x2)

# opcode: c.andi; op1:x10; immval:-22
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000004000000000, -22, x1, 368, x2)

# opcode: c.andi; op1:x10; immval:8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000008000000000, 8, x1, 376, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000010000000000, 31, x1, 384, x2)

# opcode: c.andi; op1:x10; immval:15
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000020000000000, 15, x1, 392, x2)

# opcode: c.andi; op1:x10; immval:5
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000040000000000, 5, x1, 400, x2)

# opcode: c.andi; op1:x10; immval:1
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000080000000000, 1, x1, 408, x2)

# opcode: c.andi; op1:x10; immval:21
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000200000000000, 21, x1, 416, x2)

# opcode: c.andi; op1:x10; immval:-9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000400000000000, -9, x1, 424, x2)

# opcode: c.andi; op1:x10; immval:16
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0000800000000000, 16, x1, 432, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0001000000000000, 31, x1, 440, x2)

# opcode: c.andi; op1:x10; immval:5
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0002000000000000, 5, x1, 448, x2)

# opcode: c.andi; op1:x10; immval:9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0004000000000000, 9, x1, 456, x2)

# opcode: c.andi; op1:x10; immval:4
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0008000000000000, 4, x1, 464, x2)

# opcode: c.andi; op1:x10; immval:-2
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0010000000000000, -2, x1, 472, x2)

# opcode: c.andi; op1:x10; immval:-5
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0020000000000000, -5, x1, 480, x2)

# opcode: c.andi; op1:x10; immval:16
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0040000000000000, 16, x1, 488, x2)

# opcode: c.andi; op1:x10; immval:-1
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0080000000000000, -1, x1, 496, x2)

# opcode: c.andi; op1:x10; immval:-6
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0100000000000000, -6, x1, 504, x2)

# opcode: c.andi; op1:x10; immval:-6
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0200000000000000, -6, x1, 512, x2)

# opcode: c.andi; op1:x10; immval:2
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0400000000000000, 2, x1, 520, x2)

# opcode: c.andi; op1:x10; immval:3
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x0800000000000000, 3, x1, 528, x2)

# opcode: c.andi; op1:x10; immval:-8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x1000000000000000, -8, x1, 536, x2)

# opcode: c.andi; op1:x10; immval:-3
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x2000000000000000, -3, x1, 544, x2)

# opcode: c.andi; op1:x10; immval:-8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfff7ffffffffffff, -8, x1, 552, x2)

# opcode: c.andi; op1:x10; immval:4
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffefffffffffffff, 4, x1, 560, x2)

# opcode: c.andi; op1:x10; immval:-3
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffdfffffffffffff, -3, x1, 568, x2)

# opcode: c.andi; op1:x10; immval:8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffbfffffffffffff, 8, x1, 576, x2)

# opcode: c.andi; op1:x10; immval:-17
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xff7fffffffffffff, -17, x1, 584, x2)

# opcode: c.andi; op1:x10; immval:15
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfeffffffffffffff, 15, x1, 592, x2)

# opcode: c.andi; op1:x10; immval:0
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfdffffffffffffff, 0, x1, 600, x2)

# opcode: c.andi; op1:x10; immval:-17
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfbffffffffffffff, -17, x1, 608, x2)

# opcode: c.andi; op1:x10; immval:-4
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xf7ffffffffffffff, -4, x1, 616, x2)

# opcode: c.andi; op1:x10; immval:5
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xefffffffffffffff, 5, x1, 624, x2)

# opcode: c.andi; op1:x10; immval:-32
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xdfffffffffffffff, -32, x1, 632, x2)

# opcode: c.andi; op1:x10; immval:-1
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xbfffffffffffffff, -1, x1, 640, x2)

# opcode: c.andi; op1:x10; immval:1
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x5555555555555555, 1, x1, 648, x2)

# opcode: c.andi; op1:x10; immval:9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 9, x1, 656, x2)

# opcode: c.andi; op1:x10; immval:9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0x4000000000000000, 9, x1, 664, x2)

# opcode: c.andi; op1:x10; immval:-2
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffffffffd, -2, x1, 672, x2)

# opcode: c.andi; op1:x10; immval:-1
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffffffffb, -1, x1, 680, x2)

# opcode: c.andi; op1:x10; immval:15
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffffffff7, 15, x1, 688, x2)

# opcode: c.andi; op1:x10; immval:7
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffffffffef, 7, x1, 696, x2)

# opcode: c.andi; op1:x10; immval:16
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffffffffdf, 16, x1, 704, x2)

# opcode: c.andi; op1:x10; immval:4
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffffffffbf, 4, x1, 712, x2)

# opcode: c.andi; op1:x10; immval:7
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffffffff7f, 7, x1, 720, x2)

# opcode: c.andi; op1:x10; immval:16
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffffffeff, 16, x1, 728, x2)

# opcode: c.andi; op1:x10; immval:-10
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffffffdff, -10, x1, 736, x2)

# opcode: c.andi; op1:x10; immval:-8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffffffbff, -8, x1, 744, x2)

# opcode: c.andi; op1:x10; immval:-22
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffffff7ff, -22, x1, 752, x2)

# opcode: c.andi; op1:x10; immval:-17
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffffffefff, -17, x1, 760, x2)

# opcode: c.andi; op1:x10; immval:15
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffffffdfff, 15, x1, 768, x2)

# opcode: c.andi; op1:x10; immval:-22
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffffffbfff, -22, x1, 776, x2)

# opcode: c.andi; op1:x10; immval:-6
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffffff7fff, -6, x1, 784, x2)

# opcode: c.andi; op1:x10; immval:-10
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffffeffff, -10, x1, 792, x2)

# opcode: c.andi; op1:x10; immval:-16
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffffdffff, -16, x1, 800, x2)

# opcode: c.andi; op1:x10; immval:8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffffbffff, 8, x1, 808, x2)

# opcode: c.andi; op1:x10; immval:5
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffff7ffff, 5, x1, 816, x2)

# opcode: c.andi; op1:x10; immval:-16
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffffefffff, -16, x1, 824, x2)

# opcode: c.andi; op1:x10; immval:-8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffffdfffff, -8, x1, 832, x2)

# opcode: c.andi; op1:x10; immval:15
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffffbfffff, 15, x1, 840, x2)

# opcode: c.andi; op1:x10; immval:-5
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffff7fffff, -5, x1, 848, x2)

# opcode: c.andi; op1:x10; immval:15
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffeffffff, 15, x1, 856, x2)

# opcode: c.andi; op1:x10; immval:2
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffdffffff, 2, x1, 864, x2)

# opcode: c.andi; op1:x10; immval:-32
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffffbffffff, -32, x1, 872, x2)

# opcode: c.andi; op1:x10; immval:-6
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffefffffff, -6, x1, 880, x2)

# opcode: c.andi; op1:x10; immval:4
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffdfffffff, 4, x1, 888, x2)

# opcode: c.andi; op1:x10; immval:7
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffffbfffffff, 7, x1, 896, x2)

# opcode: c.andi; op1:x10; immval:-22
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffff7fffffff, -22, x1, 904, x2)

# opcode: c.andi; op1:x10; immval:-6
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffeffffffff, -6, x1, 912, x2)

# opcode: c.andi; op1:x10; immval:8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffdffffffff, 8, x1, 920, x2)

# opcode: c.andi; op1:x10; immval:21
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffffbffffffff, 21, x1, 928, x2)

# opcode: c.andi; op1:x10; immval:-8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffff7ffffffff, -8, x1, 936, x2)

# opcode: c.andi; op1:x10; immval:5
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffefffffffff, 5, x1, 944, x2)

# opcode: c.andi; op1:x10; immval:3
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffdfffffffff, 3, x1, 952, x2)

# opcode: c.andi; op1:x10; immval:-9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffffbfffffffff, -9, x1, 960, x2)

# opcode: c.andi; op1:x10; immval:9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffff7fffffffff, 9, x1, 968, x2)

# opcode: c.andi; op1:x10; immval:-2
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffeffffffffff, -2, x1, 976, x2)

# opcode: c.andi; op1:x10; immval:-6
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffffbffffffffff, -6, x1, 984, x2)

# opcode: c.andi; op1:x10; immval:8
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffff7ffffffffff, 8, x1, 992, x2)

# opcode: c.andi; op1:x10; immval:-17
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffefffffffffff, -17, x1, 1000, x2)

# opcode: c.andi; op1:x10; immval:-22
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffdfffffffffff, -22, x1, 1008, x2)

# opcode: c.andi; op1:x10; immval:-2
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffffbfffffffffff, -2, x1, 1016, x2)

# opcode: c.andi; op1:x10; immval:9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xffff7fffffffffff, 9, x1, 1024, x2)

# opcode: c.andi; op1:x10; immval:6
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffeffffffffffff, 6, x1, 1032, x2)

# opcode: c.andi; op1:x10; immval:-9
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffdffffffffffff, -9, x1, 1040, x2)

# opcode: c.andi; op1:x10; immval:15
TEST_CI_OP( c.andi, x10, 0x0000000000000000, 0xfffbffffffffffff, 15, x1, 1048, x2)
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
    .fill 132*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
