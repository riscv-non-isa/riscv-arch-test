
#This assembly file tests the c.addiw instruction of the RISC-V C extension for the caddiw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*C.*);def TEST_CASE_1=True;",caddiw)

la x9,signature_x9_1

#opcode:c.addiw; op1:x11; dest:x11 op1val:0x8000000000000000; immval:-3
TEST_CI_OP( c.addiw, x11, 0x0000000000000000, 0x8000000000000000, -3, x9, 0, x1)

#opcode:c.addiw; op1:x28; dest:x28 op1val:0x0000000000000000; immval:5
TEST_CI_OP( c.addiw, x28, 0x0000000000000000, 0x0000000000000000, 5, x9, 8, x1)

#opcode:c.addiw; op1:x27; dest:x27 op1val:0x7fffffffffffffff; immval:8
TEST_CI_OP( c.addiw, x27, 0x0000000000000000, 0x7fffffffffffffff, 8, x9, 16, x1)

#opcode:c.addiw; op1:x7; dest:x7 op1val:0x0000000000000001; immval:0
TEST_CI_OP( c.addiw, x7, 0x0000000000000000, 0x0000000000000001, 0, x9, 24, x1)

#opcode:c.addiw; op1:x8; dest:x8 op1val:0xfffffffffffffffd; immval:-32
TEST_CI_OP( c.addiw, x8, 0x0000000000000000, 0xfffffffffffffffd, -32, x9, 32, x1)

#opcode:c.addiw; op1:x15; dest:x15 op1val:0xffffffffffffffef; immval:31
TEST_CI_OP( c.addiw, x15, 0x0000000000000000, 0xffffffffffffffef, 31, x9, 40, x1)

#opcode:c.addiw; op1:x14; dest:x14 op1val:0x0000400000000000; immval:1
TEST_CI_OP( c.addiw, x14, 0x0000000000000000, 0x0000400000000000, 1, x9, 48, x1)

#opcode:c.addiw; op1:x22; dest:x22 op1val:0x0000000000000001; immval:1
TEST_CI_OP( c.addiw, x22, 0x0000000000000000, 0x0000000000000001, 1, x9, 56, x1)

#opcode:c.addiw; op1:x6; dest:x6 op1val:0x0000000000000200; immval:-4
TEST_CI_OP( c.addiw, x6, 0x0000000000000000, 0x0000000000000200, -4, x9, 64, x1)

#opcode:c.addiw; op1:x18; dest:x18 op1val:0x0000000000000002; immval:21
TEST_CI_OP( c.addiw, x18, 0x0000000000000000, 0x0000000000000002, 21, x9, 72, x1)

#opcode:c.addiw; op1:x5; dest:x5 op1val:0x0000000000000004; immval:-8
TEST_CI_OP( c.addiw, x5, 0x0000000000000000, 0x0000000000000004, -8, x9, 80, x1)

#opcode:c.addiw; op1:x12; dest:x12 op1val:0x0000000000000008; immval:-17
TEST_CI_OP( c.addiw, x12, 0x0000000000000000, 0x0000000000000008, -17, x9, 88, x1)

#opcode:c.addiw; op1:x26; dest:x26 op1val:0x0000000000000010; immval:-22
TEST_CI_OP( c.addiw, x26, 0x0000000000000000, 0x0000000000000010, -22, x9, 96, x1)

#opcode:c.addiw; op1:x3; dest:x3 op1val:0x0000000000000020; immval:9
TEST_CI_OP( c.addiw, x3, 0x0000000000000000, 0x0000000000000020, 9, x9, 104, x1)

#opcode:c.addiw; op1:x20; dest:x20 op1val:0x0000000000000040; immval:16
TEST_CI_OP( c.addiw, x20, 0x0000000000000000, 0x0000000000000040, 16, x9, 112, x1)

#opcode:c.addiw; op1:x16; dest:x16 op1val:0x0000000000000080; immval:-9
TEST_CI_OP( c.addiw, x16, 0x0000000000000000, 0x0000000000000080, -9, x9, 120, x1)

#opcode:c.addiw; op1:x21; dest:x21 op1val:0x0000000000000100; immval:9
TEST_CI_OP( c.addiw, x21, 0x0000000000000000, 0x0000000000000100, 9, x9, 128, x1)

#opcode:c.addiw; op1:x25; dest:x25 op1val:0x0000000000000400; immval:6
TEST_CI_OP( c.addiw, x25, 0x0000000000000000, 0x0000000000000400, 6, x9, 136, x1)

#opcode:c.addiw; op1:x4; dest:x4 op1val:0x0000000000000800; immval:5
TEST_CI_OP( c.addiw, x4, 0x0000000000000000, 0x0000000000000800, 5, x9, 144, x1)

#opcode:c.addiw; op1:x2; dest:x2 op1val:0x0000000000001000; immval:-16
TEST_CI_OP( c.addiw, x2, 0x0000000000000000, 0x0000000000001000, -16, x9, 152, x1)

#opcode:c.addiw; op1:x17; dest:x17 op1val:0x0000000000002000; immval:8
TEST_CI_OP( c.addiw, x17, 0x0000000000000000, 0x0000000000002000, 8, x9, 160, x1)

#opcode:c.addiw; op1:x29; dest:x29 op1val:0x0000000000004000; immval:8
TEST_CI_OP( c.addiw, x29, 0x0000000000000000, 0x0000000000004000, 8, x9, 168, x1)

#opcode:c.addiw; op1:x31; dest:x31 op1val:0x0000000000008000; immval:9
TEST_CI_OP( c.addiw, x31, 0x0000000000000000, 0x0000000000008000, 9, x9, 176, x1)

#opcode:c.addiw; op1:x13; dest:x13 op1val:0x0000000000010000; immval:16
TEST_CI_OP( c.addiw, x13, 0x0000000000000000, 0x0000000000010000, 16, x9, 184, x1)

#opcode:c.addiw; op1:x30; dest:x30 op1val:0x0000000000020000; immval:6
TEST_CI_OP( c.addiw, x30, 0x0000000000000000, 0x0000000000020000, 6, x9, 192, x1)

#opcode:c.addiw; op1:x19; dest:x19 op1val:0x0000000000040000; immval:15
TEST_CI_OP( c.addiw, x19, 0x0000000000000000, 0x0000000000040000, 15, x9, 200, x1)

#opcode:c.addiw; op1:x24; dest:x24 op1val:0x0000000000080000; immval:-6
TEST_CI_OP( c.addiw, x24, 0x0000000000000000, 0x0000000000080000, -6, x9, 208, x1)

#opcode:c.addiw; op1:x1; dest:x1 op1val:0x0000000000100000; immval:9
TEST_CI_OP( c.addiw, x1, 0x0000000000000000, 0x0000000000100000, 9, x9, 216, x2)
la x1,signature_x1_0

#opcode:c.addiw; op1:x9; dest:x9 op1val:0x0000000000200000; immval:-7
TEST_CI_OP( c.addiw, x9, 0x0000000000000000, 0x0000000000200000, -7, x1, 0, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000000400000; immval:0
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000000400000, 0, x1, 8, x2)

#opcode:c.addiw; op1:x23; dest:x23 op1val:0x0000000000800000; immval:31
TEST_CI_OP( c.addiw, x23, 0x0000000000000000, 0x0000000000800000, 31, x1, 16, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000001000000; immval:-16
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000001000000, -16, x1, 24, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000002000000; immval:15
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000002000000, 15, x1, 32, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000004000000; immval:-9
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000004000000, -9, x1, 40, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000008000000; immval:7
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000008000000, 7, x1, 48, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000010000000; immval:16
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000010000000, 16, x1, 56, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000020000000; immval:-6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000020000000, -6, x1, 64, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000040000000; immval:2
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000040000000, 2, x1, 72, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000080000000; immval:31
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000080000000, 31, x1, 80, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000100000000; immval:-16
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000100000000, -16, x1, 88, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000200000000; immval:4
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000200000000, 4, x1, 96, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000400000000; immval:3
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000400000000, 3, x1, 104, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000800000000; immval:-6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000800000000, -6, x1, 112, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000001000000000; immval:4
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000001000000000, 4, x1, 120, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000002000000000; immval:-17
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000002000000000, -17, x1, 128, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000004000000000; immval:-6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000004000000000, -6, x1, 136, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000008000000000; immval:-32
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000008000000000, -32, x1, 144, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000010000000000; immval:-4
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000010000000000, -4, x1, 152, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000020000000000; immval:-3
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000020000000000, -3, x1, 160, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000040000000000; immval:6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000040000000000, 6, x1, 168, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000080000000000; immval:9
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000080000000000, 9, x1, 176, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000100000000000; immval:-17
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000100000000000, -17, x1, 184, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000200000000000; immval:-2
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000200000000000, -2, x1, 192, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000800000000000; immval:-9
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000800000000000, -9, x1, 200, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0001000000000000; immval:-2
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0001000000000000, -2, x1, 208, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0002000000000000; immval:0
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0002000000000000, 0, x1, 216, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0004000000000000; immval:-17
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0004000000000000, -17, x1, 224, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0008000000000000; immval:-8
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0008000000000000, -8, x1, 232, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0010000000000000; immval:-22
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0010000000000000, -22, x1, 240, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0020000000000000; immval:-17
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0020000000000000, -17, x1, 248, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0040000000000000; immval:0
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0040000000000000, 0, x1, 256, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0080000000000000; immval:-10
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0080000000000000, -10, x1, 264, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0100000000000000; immval:7
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0100000000000000, 7, x1, 272, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0200000000000000; immval:-6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0200000000000000, -6, x1, 280, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0400000000000000; immval:6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0400000000000000, 6, x1, 288, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0800000000000000; immval:16
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0800000000000000, 16, x1, 296, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x1000000000000000; immval:-6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x1000000000000000, -6, x1, 304, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x2000000000000000; immval:-16
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x2000000000000000, -16, x1, 312, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x4000000000000000; immval:0
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x4000000000000000, 0, x1, 320, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffffffffe; immval:-8
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffffffffe, -8, x1, 328, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfff7ffffffffffff; immval:-8
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfff7ffffffffffff, -8, x1, 336, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffefffffffffffff; immval:-3
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffefffffffffffff, -3, x1, 344, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffdfffffffffffff; immval:4
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffdfffffffffffff, 4, x1, 352, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffbfffffffffffff; immval:1
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffbfffffffffffff, 1, x1, 360, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xff7fffffffffffff; immval:-2
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xff7fffffffffffff, -2, x1, 368, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfeffffffffffffff; immval:1
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfeffffffffffffff, 1, x1, 376, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfdffffffffffffff; immval:8
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfdffffffffffffff, 8, x1, 384, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfbffffffffffffff; immval:-16
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfbffffffffffffff, -16, x1, 392, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xf7ffffffffffffff; immval:3
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xf7ffffffffffffff, 3, x1, 400, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xefffffffffffffff; immval:6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xefffffffffffffff, 6, x1, 408, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xdfffffffffffffff; immval:8
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xdfffffffffffffff, 8, x1, 416, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xbfffffffffffffff; immval:-32
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xbfffffffffffffff, -32, x1, 424, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x5555555555555555; immval:-1
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x5555555555555555, -1, x1, 432, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xaaaaaaaaaaaaaaaa; immval:9
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 9, x1, 440, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0x0000000080000000; immval:-5
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0x0000000080000000, -5, x1, 448, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffffffffb; immval:-9
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffffffffb, -9, x1, 456, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffffffff7; immval:-4
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffffffff7, -4, x1, 464, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffffffffdf; immval:2
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffffffffdf, 2, x1, 472, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffffffffbf; immval:-5
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffffffffbf, -5, x1, 480, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffffffff7f; immval:-32
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffffffff7f, -32, x1, 488, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffffffeff; immval:-5
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffffffeff, -5, x1, 496, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffffffdff; immval:-22
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffffffdff, -22, x1, 504, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffffffbff; immval:3
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffffffbff, 3, x1, 512, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffffff7ff; immval:2
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffffff7ff, 2, x1, 520, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffffffefff; immval:-2
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffffffefff, -2, x1, 528, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffffffdfff; immval:9
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffffffdfff, 9, x1, 536, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffffffbfff; immval:7
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffffffbfff, 7, x1, 544, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffffff7fff; immval:2
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffffff7fff, 2, x1, 552, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffffeffff; immval:6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffffeffff, 6, x1, 560, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffffdffff; immval:3
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffffdffff, 3, x1, 568, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffffbffff; immval:9
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffffbffff, 9, x1, 576, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffff7ffff; immval:6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffff7ffff, 6, x1, 584, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffffefffff; immval:-6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffffefffff, -6, x1, 592, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffffdfffff; immval:0
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffffdfffff, 0, x1, 600, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffffbfffff; immval:0
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffffbfffff, 0, x1, 608, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffff7fffff; immval:31
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffff7fffff, 31, x1, 616, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffeffffff; immval:-22
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffeffffff, -22, x1, 624, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffdffffff; immval:-3
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffdffffff, -3, x1, 632, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffffbffffff; immval:9
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffffbffffff, 9, x1, 640, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffff7ffffff; immval:-7
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffff7ffffff, -7, x1, 648, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffefffffff; immval:0
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffefffffff, 0, x1, 656, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffdfffffff; immval:-8
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffdfffffff, -8, x1, 664, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffffbfffffff; immval:5
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffffbfffffff, 5, x1, 672, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffff7fffffff; immval:-1
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffff7fffffff, -1, x1, 680, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffeffffffff; immval:1
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffeffffffff, 1, x1, 688, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffdffffffff; immval:4
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffdffffffff, 4, x1, 696, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffffbffffffff; immval:-9
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffffbffffffff, -9, x1, 704, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffff7ffffffff; immval:31
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffff7ffffffff, 31, x1, 712, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffefffffffff; immval:-22
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffefffffffff, -22, x1, 720, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffdfffffffff; immval:-10
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffdfffffffff, -10, x1, 728, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffffbfffffffff; immval:-2
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffffbfffffffff, -2, x1, 736, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffff7fffffffff; immval:-4
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffff7fffffffff, -4, x1, 744, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffeffffffffff; immval:-7
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffeffffffffff, -7, x1, 752, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffdffffffffff; immval:15
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffdffffffffff, 15, x1, 760, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffffbffffffffff; immval:7
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffffbffffffffff, 7, x1, 768, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffff7ffffffffff; immval:-9
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffff7ffffffffff, -9, x1, 776, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffefffffffffff; immval:-7
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffefffffffffff, -7, x1, 784, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffdfffffffffff; immval:-17
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffdfffffffffff, -17, x1, 792, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffffbfffffffffff; immval:3
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffffbfffffffffff, 3, x1, 800, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xffff7fffffffffff; immval:1
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xffff7fffffffffff, 1, x1, 808, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffeffffffffffff; immval:6
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffeffffffffffff, 6, x1, 816, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffdffffffffffff; immval:8
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffdffffffffffff, 8, x1, 824, x2)

#opcode:c.addiw; op1:x10; dest:x10 op1val:0xfffbffffffffffff; immval:15
TEST_CI_OP( c.addiw, x10, 0x0000000000000000, 0xfffbffffffffffff, 15, x1, 832, x2)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x9_1:
    .fill 28*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 105*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
