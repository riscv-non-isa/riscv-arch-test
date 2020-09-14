
#This assembly file tests the c.slli instruction of the RISC-V C extension for the cslli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cslli)

la x1,signature_x1_1

#opcode:c.slli; op1:x11; dest:x11 op1val:0xfffffffff7ffffff; immval:55
TEST_CI_OP( c.slli, x11, 0x0000000000000000, 0xfffffffff7ffffff, 55, x1, 0, x2)

#opcode:c.slli; op1:x13; dest:x13 op1val:0x0000000400000000; immval:14
TEST_CI_OP( c.slli, x13, 0x0000000000000000, 0x0000000400000000, 14, x1, 8, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000010; immval:16
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000010, 16, x1, 16, x2)

#opcode:c.slli; op1:x9; dest:x9 op1val:0x8000000000000000; immval:47
TEST_CI_OP( c.slli, x9, 0x0000000000000000, 0x8000000000000000, 47, x1, 24, x2)

#opcode:c.slli; op1:x14; dest:x14 op1val:0x0000000000000000; immval:6
TEST_CI_OP( c.slli, x14, 0x0000000000000000, 0x0000000000000000, 6, x1, 32, x2)

#opcode:c.slli; op1:x15; dest:x15 op1val:0x7fffffffffffffff; immval:11
TEST_CI_OP( c.slli, x15, 0x0000000000000000, 0x7fffffffffffffff, 11, x1, 40, x2)

#opcode:c.slli; op1:x12; dest:x12 op1val:0x0000000000000001; immval:1
TEST_CI_OP( c.slli, x12, 0x0000000000000000, 0x0000000000000001, 1, x1, 48, x2)

#opcode:c.slli; op1:x8; dest:x8 op1val:0xfffffffffffeffff; immval:2
TEST_CI_OP( c.slli, x8, 0x0000000000000000, 0xfffffffffffeffff, 2, x1, 56, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xf7ffffffffffffff; immval:4
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xf7ffffffffffffff, 4, x1, 64, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffff7ff; immval:8
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffff7ff, 8, x1, 72, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0001000000000000; immval:32
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0001000000000000, 32, x1, 80, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffefffffffffffff; immval:62
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffefffffffffffff, 62, x1, 88, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffff7ffff; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffff7ffff, 61, x1, 96, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000004000000000; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000004000000000, 59, x1, 104, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffdfff; immval:31
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffdfff, 31, x1, 112, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffeffff; immval:21
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffeffff, 21, x1, 120, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000004; immval:42
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000004, 42, x1, 128, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000002; immval:13
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000002, 13, x1, 136, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000008; immval:31
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000008, 31, x1, 144, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000020; immval:9
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000020, 9, x1, 152, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000040; immval:6
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000040, 6, x1, 160, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000080; immval:62
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000080, 62, x1, 168, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000100; immval:16
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000100, 16, x1, 176, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000200; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000200, 19, x1, 184, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000400; immval:17
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000400, 17, x1, 192, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000000800; immval:5
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000000800, 5, x1, 200, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000001000; immval:7
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000001000, 7, x1, 208, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000002000; immval:47
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000002000, 47, x1, 216, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000004000; immval:13
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000004000, 13, x1, 224, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000008000; immval:6
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000008000, 6, x1, 232, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000010000; immval:4
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000010000, 4, x1, 240, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000020000; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000020000, 59, x1, 248, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000040000; immval:15
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000040000, 15, x1, 256, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000080000; immval:62
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000080000, 62, x1, 264, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000100000; immval:12
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000100000, 12, x1, 272, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000200000; immval:8
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000200000, 8, x1, 280, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000400000; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000400000, 63, x1, 288, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000000800000; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000000800000, 63, x1, 296, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000001000000; immval:42
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000001000000, 42, x1, 304, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000002000000; immval:1
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000002000000, 1, x1, 312, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000004000000; immval:6
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000004000000, 6, x1, 320, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000008000000; immval:16
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000008000000, 16, x1, 328, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000010000000; immval:31
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000010000000, 31, x1, 336, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000020000000; immval:18
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000020000000, 18, x1, 344, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000040000000; immval:13
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000040000000, 13, x1, 352, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000080000000; immval:47
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000080000000, 47, x1, 360, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000100000000; immval:10
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000100000000, 10, x1, 368, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000200000000; immval:2
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000200000000, 2, x1, 376, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000000800000000; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000000800000000, 59, x1, 384, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000001000000000; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000001000000000, 63, x1, 392, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000002000000000; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000002000000000, 63, x1, 400, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000008000000000; immval:11
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000008000000000, 11, x1, 408, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000010000000000; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000010000000000, 59, x1, 416, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000020000000000; immval:31
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000020000000000, 31, x1, 424, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000040000000000; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000040000000000, 19, x1, 432, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000080000000000; immval:55
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000080000000000, 55, x1, 440, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000100000000000; immval:18
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000100000000000, 18, x1, 448, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000200000000000; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000200000000000, 61, x1, 456, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000400000000000; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000400000000000, 59, x1, 464, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0000800000000000; immval:17
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0000800000000000, 17, x1, 472, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0002000000000000; immval:47
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0002000000000000, 47, x1, 480, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0004000000000000; immval:10
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0004000000000000, 10, x1, 488, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0008000000000000; immval:1
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0008000000000000, 1, x1, 496, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0010000000000000; immval:62
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0010000000000000, 62, x1, 504, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0020000000000000; immval:21
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0020000000000000, 21, x1, 512, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0040000000000000; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0040000000000000, 59, x1, 520, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0080000000000000; immval:42
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0080000000000000, 42, x1, 528, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0100000000000000; immval:31
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0100000000000000, 31, x1, 536, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0200000000000000; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0200000000000000, 19, x1, 544, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffff7ffffffffff; immval:47
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffff7ffffffffff, 47, x1, 552, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffefffffffffff; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffefffffffffff, 59, x1, 560, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffdfffffffffff; immval:62
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffdfffffffffff, 62, x1, 568, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffbfffffffffff; immval:9
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffbfffffffffff, 9, x1, 576, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffff7fffffffffff; immval:17
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffff7fffffffffff, 17, x1, 584, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffeffffffffffff; immval:59
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffeffffffffffff, 59, x1, 592, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffdffffffffffff; immval:13
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffdffffffffffff, 13, x1, 600, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffbffffffffffff; immval:32
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffbffffffffffff, 32, x1, 608, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfff7ffffffffffff; immval:18
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfff7ffffffffffff, 18, x1, 616, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffdfffffffffffff; immval:47
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffdfffffffffffff, 47, x1, 624, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffbfffffffffffff; immval:5
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffbfffffffffffff, 5, x1, 632, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xff7fffffffffffff; immval:10
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xff7fffffffffffff, 10, x1, 640, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfeffffffffffffff; immval:12
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfeffffffffffffff, 12, x1, 648, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfdffffffffffffff; immval:5
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfdffffffffffffff, 5, x1, 656, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfbffffffffffffff; immval:14
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfbffffffffffffff, 14, x1, 664, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xefffffffffffffff; immval:5
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xefffffffffffffff, 5, x1, 672, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xdfffffffffffffff; immval:1
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xdfffffffffffffff, 1, x1, 680, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xbfffffffffffffff; immval:62
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xbfffffffffffffff, 62, x1, 688, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x5555555555555555; immval:17
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x5555555555555555, 17, x1, 696, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xaaaaaaaaaaaaaaaa; immval:16
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 16, x1, 704, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0400000000000000; immval:21
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0400000000000000, 21, x1, 712, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x0800000000000000; immval:11
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x0800000000000000, 11, x1, 720, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x1000000000000000; immval:18
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x1000000000000000, 18, x1, 728, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x2000000000000000; immval:15
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x2000000000000000, 15, x1, 736, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0x4000000000000000; immval:9
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0x4000000000000000, 9, x1, 744, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffffe; immval:18
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffffe, 18, x1, 752, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffffd; immval:1
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffffd, 1, x1, 760, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffffb; immval:13
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffffb, 13, x1, 768, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffff7; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffff7, 19, x1, 776, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffffef; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffffef, 63, x1, 784, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffffdf; immval:18
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffffdf, 18, x1, 792, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffffbf; immval:12
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffffbf, 12, x1, 800, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffff7f; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffff7f, 19, x1, 808, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffeff; immval:1
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffeff, 1, x1, 816, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffdff; immval:13
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffdff, 13, x1, 824, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffffbff; immval:14
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffffbff, 14, x1, 832, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffefff; immval:4
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffefff, 4, x1, 840, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffffbfff; immval:11
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffffbfff, 11, x1, 848, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffff7fff; immval:11
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffff7fff, 11, x1, 856, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffdffff; immval:9
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffdffff, 9, x1, 864, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffffbffff; immval:9
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffffbffff, 9, x1, 872, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffefffff; immval:32
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffefffff, 32, x1, 880, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffdfffff; immval:21
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffdfffff, 21, x1, 888, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffffbfffff; immval:2
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffffbfffff, 2, x1, 896, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffff7fffff; immval:61
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffff7fffff, 61, x1, 904, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffeffffff; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffeffffff, 63, x1, 912, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffdffffff; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffdffffff, 19, x1, 920, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffffbffffff; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffffbffffff, 19, x1, 928, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffefffffff; immval:42
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffefffffff, 42, x1, 936, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffdfffffff; immval:47
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffdfffffff, 47, x1, 944, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffffbfffffff; immval:15
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffffbfffffff, 15, x1, 952, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffff7fffffff; immval:18
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffff7fffffff, 18, x1, 960, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffeffffffff; immval:10
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffeffffffff, 10, x1, 968, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffdffffffff; immval:11
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffdffffffff, 11, x1, 976, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffffbffffffff; immval:8
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffffbffffffff, 8, x1, 984, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffff7ffffffff; immval:10
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffff7ffffffff, 10, x1, 992, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffefffffffff; immval:9
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffefffffffff, 9, x1, 1000, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffdfffffffff; immval:13
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffdfffffffff, 13, x1, 1008, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffffbfffffffff; immval:10
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffffbfffffffff, 10, x1, 1016, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xffffff7fffffffff; immval:17
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xffffff7fffffffff, 17, x1, 1024, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffeffffffffff; immval:7
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffeffffffffff, 7, x1, 1032, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffdffffffffff; immval:19
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffdffffffffff, 19, x1, 1040, x2)

#opcode:c.slli; op1:x10; dest:x10 op1val:0xfffffbffffffffff; immval:63
TEST_CI_OP( c.slli, x10, 0x0000000000000000, 0xfffffbffffffffff, 63, x1, 1048, x2)
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
