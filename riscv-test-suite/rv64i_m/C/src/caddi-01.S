
#This assembly file tests the c.addi instruction of the RISC-V C extension for the caddi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi)

la x1,signature_x1_1

#opcode:c.addi; op1:x12; dest:x12 op1val:0x8000000000000000; immval:-3
TEST_CI_OP( c.addi, x12, 0x0000000000000000, 0x8000000000000000, -3, x1, 0, x7)

#opcode:c.addi; op1:x24; dest:x24 op1val:0x0000000000000000; immval:-5
TEST_CI_OP( c.addi, x24, 0x0000000000000000, 0x0000000000000000, -5, x1, 8, x7)

#opcode:c.addi; op1:x20; dest:x20 op1val:0x7fffffffffffffff; immval:-10
TEST_CI_OP( c.addi, x20, 0x0000000000000000, 0x7fffffffffffffff, -10, x1, 16, x7)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000000000001; immval:0
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000000000001, 0, x1, 24, x7)

#opcode:c.addi; op1:x9; dest:x9 op1val:0x0000000000100000; immval:-32
TEST_CI_OP( c.addi, x9, 0x0000000000000000, 0x0000000000100000, -32, x1, 32, x7)

#opcode:c.addi; op1:x8; dest:x8 op1val:0x0000200000000000; immval:31
TEST_CI_OP( c.addi, x8, 0x0000000000000000, 0x0000200000000000, 31, x1, 40, x7)

#opcode:c.addi; op1:x4; dest:x4 op1val:0xfdffffffffffffff; immval:1
TEST_CI_OP( c.addi, x4, 0x0000000000000000, 0xfdffffffffffffff, 1, x1, 48, x7)

#opcode:c.addi; op1:x5; dest:x5 op1val:0x0000000000000006; immval:6
TEST_CI_OP( c.addi, x5, 0x0000000000000000, 0x0000000000000006, 6, x1, 56, x7)

#opcode:c.addi; op1:x25; dest:x25 op1val:0x0000000000000002; immval:-5
TEST_CI_OP( c.addi, x25, 0x0000000000000000, 0x0000000000000002, -5, x1, 64, x7)

#opcode:c.addi; op1:x19; dest:x19 op1val:0x0000000000000004; immval:8
TEST_CI_OP( c.addi, x19, 0x0000000000000000, 0x0000000000000004, 8, x1, 72, x7)

#opcode:c.addi; op1:x31; dest:x31 op1val:0x0000000000000008; immval:0
TEST_CI_OP( c.addi, x31, 0x0000000000000000, 0x0000000000000008, 0, x1, 80, x7)

#opcode:c.addi; op1:x6; dest:x6 op1val:0x0000000000000010; immval:-6
TEST_CI_OP( c.addi, x6, 0x0000000000000000, 0x0000000000000010, -6, x1, 88, x7)

#opcode:c.addi; op1:x29; dest:x29 op1val:0x0000000000000020; immval:-3
TEST_CI_OP( c.addi, x29, 0x0000000000000000, 0x0000000000000020, -3, x1, 96, x7)

#opcode:c.addi; op1:x11; dest:x11 op1val:0x0000000000000040; immval:-5
TEST_CI_OP( c.addi, x11, 0x0000000000000000, 0x0000000000000040, -5, x1, 104, x7)

#opcode:c.addi; op1:x30; dest:x30 op1val:0x0000000000000080; immval:-6
TEST_CI_OP( c.addi, x30, 0x0000000000000000, 0x0000000000000080, -6, x1, 112, x7)

#opcode:c.addi; op1:x21; dest:x21 op1val:0x0000000000000100; immval:8
TEST_CI_OP( c.addi, x21, 0x0000000000000000, 0x0000000000000100, 8, x1, 120, x7)

#opcode:c.addi; op1:x2; dest:x2 op1val:0x0000000000000200; immval:31
TEST_CI_OP( c.addi, x2, 0x0000000000000000, 0x0000000000000200, 31, x1, 128, x7)

#opcode:c.addi; op1:x13; dest:x13 op1val:0x0000000000000400; immval:3
TEST_CI_OP( c.addi, x13, 0x0000000000000000, 0x0000000000000400, 3, x1, 136, x7)

#opcode:c.addi; op1:x18; dest:x18 op1val:0x0000000000000800; immval:-10
TEST_CI_OP( c.addi, x18, 0x0000000000000000, 0x0000000000000800, -10, x1, 144, x7)

#opcode:c.addi; op1:x3; dest:x3 op1val:0x0000000000001000; immval:21
TEST_CI_OP( c.addi, x3, 0x0000000000000000, 0x0000000000001000, 21, x1, 152, x7)

#opcode:c.addi; op1:x23; dest:x23 op1val:0x0000000000002000; immval:7
TEST_CI_OP( c.addi, x23, 0x0000000000000000, 0x0000000000002000, 7, x1, 160, x7)

#opcode:c.addi; op1:x28; dest:x28 op1val:0x0000000000004000; immval:3
TEST_CI_OP( c.addi, x28, 0x0000000000000000, 0x0000000000004000, 3, x1, 168, x7)

#opcode:c.addi; op1:x16; dest:x16 op1val:0x0000000000008000; immval:-2
TEST_CI_OP( c.addi, x16, 0x0000000000000000, 0x0000000000008000, -2, x1, 176, x7)

#opcode:c.addi; op1:x17; dest:x17 op1val:0x0000000000010000; immval:2
TEST_CI_OP( c.addi, x17, 0x0000000000000000, 0x0000000000010000, 2, x1, 184, x7)

#opcode:c.addi; op1:x26; dest:x26 op1val:0x0000000000020000; immval:1
TEST_CI_OP( c.addi, x26, 0x0000000000000000, 0x0000000000020000, 1, x1, 192, x7)

#opcode:c.addi; op1:x22; dest:x22 op1val:0x0000000000040000; immval:2
TEST_CI_OP( c.addi, x22, 0x0000000000000000, 0x0000000000040000, 2, x1, 200, x7)

#opcode:c.addi; op1:x27; dest:x27 op1val:0x0000000000080000; immval:2
TEST_CI_OP( c.addi, x27, 0x0000000000000000, 0x0000000000080000, 2, x1, 208, x7)

#opcode:c.addi; op1:x14; dest:x14 op1val:0x0000000000200000; immval:-22
TEST_CI_OP( c.addi, x14, 0x0000000000000000, 0x0000000000200000, -22, x1, 216, x3)
la x2,signature_x2_0

#opcode:c.addi; op1:x1; dest:x1 op1val:0x0000000000400000; immval:-5
TEST_CI_OP( c.addi, x1, 0x0000000000000000, 0x0000000000400000, -5, x2, 0, x3)

#opcode:c.addi; op1:x7; dest:x7 op1val:0x0000000000800000; immval:-1
TEST_CI_OP( c.addi, x7, 0x0000000000000000, 0x0000000000800000, -1, x2, 8, x3)

#opcode:c.addi; op1:x15; dest:x15 op1val:0x0000000001000000; immval:15
TEST_CI_OP( c.addi, x15, 0x0000000000000000, 0x0000000001000000, 15, x2, 16, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000002000000; immval:0
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000002000000, 0, x2, 24, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000004000000; immval:16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000004000000, 16, x2, 32, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000008000000; immval:-17
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000008000000, -17, x2, 40, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000010000000; immval:2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000010000000, 2, x2, 48, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000020000000; immval:-6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000020000000, -6, x2, 56, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000040000000; immval:-1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000040000000, -1, x2, 64, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000080000000; immval:-17
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000080000000, -17, x2, 72, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000100000000; immval:-7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000100000000, -7, x2, 80, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000200000000; immval:-7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000200000000, -7, x2, 88, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000400000000; immval:9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000400000000, 9, x2, 96, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000000800000000; immval:15
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000000800000000, 15, x2, 104, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000001000000000; immval:1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000001000000000, 1, x2, 112, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000002000000000; immval:-22
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000002000000000, -22, x2, 120, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000004000000000; immval:0
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000004000000000, 0, x2, 128, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000008000000000; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000008000000000, 21, x2, 136, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000010000000000; immval:-8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000010000000000, -8, x2, 144, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000020000000000; immval:-7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000020000000000, -7, x2, 152, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000040000000000; immval:-3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000040000000000, -3, x2, 160, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000080000000000; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000080000000000, 21, x2, 168, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000100000000000; immval:-7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000100000000000, -7, x2, 176, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000400000000000; immval:-2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000400000000000, -2, x2, 184, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0000800000000000; immval:-16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0000800000000000, -16, x2, 192, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0001000000000000; immval:-22
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0001000000000000, -22, x2, 200, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0002000000000000; immval:4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0002000000000000, 4, x2, 208, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0004000000000000; immval:4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0004000000000000, 4, x2, 216, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0008000000000000; immval:1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0008000000000000, 1, x2, 224, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0010000000000000; immval:-10
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0010000000000000, -10, x2, 232, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0020000000000000; immval:-22
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0020000000000000, -22, x2, 240, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0040000000000000; immval:16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0040000000000000, 16, x2, 248, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0080000000000000; immval:3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0080000000000000, 3, x2, 256, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0100000000000000; immval:-32
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0100000000000000, -32, x2, 264, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0200000000000000; immval:2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0200000000000000, 2, x2, 272, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0400000000000000; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0400000000000000, 21, x2, 280, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x0800000000000000; immval:-9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x0800000000000000, -9, x2, 288, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x1000000000000000; immval:-6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x1000000000000000, -6, x2, 296, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x2000000000000000; immval:-1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x2000000000000000, -1, x2, 304, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x4000000000000000; immval:-1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x4000000000000000, -1, x2, 312, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffffe; immval:-7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffffe, -7, x2, 320, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfff7ffffffffffff; immval:4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfff7ffffffffffff, 4, x2, 328, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffefffffffffffff; immval:-17
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffefffffffffffff, -17, x2, 336, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffdfffffffffffff; immval:3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffdfffffffffffff, 3, x2, 344, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffbfffffffffffff; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffbfffffffffffff, 21, x2, 352, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xff7fffffffffffff; immval:2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xff7fffffffffffff, 2, x2, 360, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfeffffffffffffff; immval:-3
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfeffffffffffffff, -3, x2, 368, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfbffffffffffffff; immval:-8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfbffffffffffffff, -8, x2, 376, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xf7ffffffffffffff; immval:6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xf7ffffffffffffff, 6, x2, 384, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xefffffffffffffff; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xefffffffffffffff, 21, x2, 392, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xdfffffffffffffff; immval:1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xdfffffffffffffff, 1, x2, 400, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xbfffffffffffffff; immval:-9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xbfffffffffffffff, -9, x2, 408, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0x5555555555555555; immval:-1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0x5555555555555555, -1, x2, 416, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xaaaaaaaaaaaaaaaa; immval:-32
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, -32, x2, 424, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffffd; immval:6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffffd, 6, x2, 432, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffffb; immval:-5
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffffb, -5, x2, 440, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffff7; immval:15
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffff7, 15, x2, 448, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffffef; immval:8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffffef, 8, x2, 456, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffffdf; immval:16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffffdf, 16, x2, 464, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffffbf; immval:-9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffffbf, -9, x2, 472, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffff7f; immval:-4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffff7f, -4, x2, 480, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffeff; immval:0
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffeff, 0, x2, 488, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffdff; immval:0
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffdff, 0, x2, 496, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffffbff; immval:5
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffffbff, 5, x2, 504, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffff7ff; immval:9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffff7ff, 9, x2, 512, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffefff; immval:-5
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffefff, -5, x2, 520, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffdfff; immval:-10
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffdfff, -10, x2, 528, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffffbfff; immval:16
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffffbfff, 16, x2, 536, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffff7fff; immval:1
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffff7fff, 1, x2, 544, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffeffff; immval:-22
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffeffff, -22, x2, 552, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffdffff; immval:7
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffdffff, 7, x2, 560, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffffbffff; immval:-5
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffffbffff, -5, x2, 568, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffff7ffff; immval:-9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffff7ffff, -9, x2, 576, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffefffff; immval:-22
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffefffff, -22, x2, 584, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffdfffff; immval:6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffdfffff, 6, x2, 592, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffffbfffff; immval:2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffffbfffff, 2, x2, 600, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffff7fffff; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffff7fffff, 21, x2, 608, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffeffffff; immval:15
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffeffffff, 15, x2, 616, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffdffffff; immval:4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffdffffff, 4, x2, 624, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffffbffffff; immval:0
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffffbffffff, 0, x2, 632, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffff7ffffff; immval:-8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffff7ffffff, -8, x2, 640, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffefffffff; immval:-9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffefffffff, -9, x2, 648, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffdfffffff; immval:-22
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffdfffffff, -22, x2, 656, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffffbfffffff; immval:-2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffffbfffffff, -2, x2, 664, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffff7fffffff; immval:-10
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffff7fffffff, -10, x2, 672, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffeffffffff; immval:9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffeffffffff, 9, x2, 680, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffdffffffff; immval:-5
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffdffffffff, -5, x2, 688, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffffbffffffff; immval:-2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffffbffffffff, -2, x2, 696, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffff7ffffffff; immval:31
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffff7ffffffff, 31, x2, 704, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffefffffffff; immval:15
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffefffffffff, 15, x2, 712, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffdfffffffff; immval:-6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffdfffffffff, -6, x2, 720, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffffbfffffffff; immval:5
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffffbfffffffff, 5, x2, 728, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffff7fffffffff; immval:-5
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffff7fffffffff, -5, x2, 736, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffeffffffffff; immval:-10
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffeffffffffff, -10, x2, 744, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffdffffffffff; immval:0
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffdffffffffff, 0, x2, 752, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffffbffffffffff; immval:-4
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffffbffffffffff, -4, x2, 760, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffff7ffffffffff; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffff7ffffffffff, 21, x2, 768, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffefffffffffff; immval:21
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffefffffffffff, 21, x2, 776, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffdfffffffffff; immval:15
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffdfffffffffff, 15, x2, 784, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffffbfffffffffff; immval:-8
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffffbfffffffffff, -8, x2, 792, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xffff7fffffffffff; immval:6
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xffff7fffffffffff, 6, x2, 800, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffeffffffffffff; immval:-2
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffeffffffffffff, -2, x2, 808, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffdffffffffffff; immval:-10
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffdffffffffffff, -10, x2, 816, x3)

#opcode:c.addi; op1:x10; dest:x10 op1val:0xfffbffffffffffff; immval:9
TEST_CI_OP( c.addi, x10, 0x0000000000000000, 0xfffbffffffffffff, 9, x2, 824, x3)
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
    .fill 28*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 104*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
