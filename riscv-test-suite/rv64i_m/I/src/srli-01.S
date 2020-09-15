
#This assembly file tests the srli instruction of the RISC-V I extension for the srli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srli)

la x9,signature_x9_1

# opcode: srli ; op1:x22; dest:x22; op1val:0xffffffffffffffef;  immval:2
TEST_IMM_OP( srli, x22, x22, 0x3ffffffb, 0xffffffffffffffef, 2, x9, 0, x17)

# opcode: srli ; op1:x12; dest:x25; op1val:0x0000000000000002;  immval:14
TEST_IMM_OP( srli, x25, x12, 0x0, 0x0000000000000002, 14, x9, 8, x17)

# opcode: srli ; op1:x29; dest:x28; op1val:0xfffbffffffffffff;  immval:0
TEST_IMM_OP( srli, x28, x29, 0xffffffff, 0xfffbffffffffffff, 0, x9, 16, x17)

# opcode: srli ; op1:x20; dest:x13; op1val:0x0000000000008000;  immval:0
TEST_IMM_OP( srli, x13, x20, 0x8000, 0x0000000000008000, 0, x9, 24, x17)

# opcode: srli ; op1:x15; dest:x31; op1val:0xbfffffffffffffff;  immval:63
TEST_IMM_OP( srli, x31, x15, 0x0, 0xbfffffffffffffff, 63, x9, 32, x17)

# opcode: srli ; op1:x21; dest:x14; op1val:0x0080000000000000;  immval:63
TEST_IMM_OP( srli, x14, x21, 0x0, 0x0080000000000000, 63, x9, 40, x17)

# opcode: srli ; op1:x13; dest:x5; op1val:0x0000000000000007;  immval:7
TEST_IMM_OP( srli, x5, x13, 0x0, 0x0000000000000007, 7, x9, 48, x17)

# opcode: srli ; op1:x0; dest:x24; op1val:0x8000000000000000;  immval:19
TEST_IMM_OP( srli, x24, x0, 0x0, 0x8000000000000000, 19, x9, 56, x17)

# opcode: srli ; op1:x25; dest:x4; op1val:0x0000000000000000;  immval:9
TEST_IMM_OP( srli, x4, x25, 0x0, 0x0000000000000000, 9, x9, 64, x17)

# opcode: srli ; op1:x7; dest:x27; op1val:0x7fffffffffffffff;  immval:47
TEST_IMM_OP( srli, x27, x7, 0x0, 0x7fffffffffffffff, 47, x9, 72, x17)

# opcode: srli ; op1:x18; dest:x1; op1val:0x0000000000000001;  immval:9
TEST_IMM_OP( srli, x1, x18, 0x0, 0x0000000000000001, 9, x9, 80, x17)

# opcode: srli ; op1:x4; dest:x8; op1val:0x0002000000000000;  immval:1
TEST_IMM_OP( srli, x8, x4, 0x0, 0x0002000000000000, 1, x9, 88, x17)

# opcode: srli ; op1:x24; dest:x3; op1val:0x0001000000000000;  immval:4
TEST_IMM_OP( srli, x3, x24, 0x0, 0x0001000000000000, 4, x9, 96, x17)

# opcode: srli ; op1:x5; dest:x19; op1val:0xffdfffffffffffff;  immval:8
TEST_IMM_OP( srli, x19, x5, 0xffffff, 0xffdfffffffffffff, 8, x9, 104, x17)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xff7f, 0xffffffffff7fffff, 16, x9, 112, x17)

# opcode: srli ; op1:x19; dest:x20; op1val:0xfffffffffbffffff;  immval:32
TEST_IMM_OP( srli, x20, x19, 0x0, 0xfffffffffbffffff, 32, x9, 120, x17)

# opcode: srli ; op1:x31; dest:x10; op1val:0x0008000000000000;  immval:62
TEST_IMM_OP( srli, x10, x31, 0x0, 0x0008000000000000, 62, x9, 128, x17)

# opcode: srli ; op1:x14; dest:x15; op1val:0x0000000000000100;  immval:61
TEST_IMM_OP( srli, x15, x14, 0x0, 0x0000000000000100, 61, x9, 136, x17)

# opcode: srli ; op1:x11; dest:x16; op1val:0xffffffff7fffffff;  immval:59
TEST_IMM_OP( srli, x16, x11, 0x0, 0xffffffff7fffffff, 59, x9, 144, x17)

# opcode: srli ; op1:x28; dest:x12; op1val:0x0000000000000080;  immval:55
TEST_IMM_OP( srli, x12, x28, 0x0, 0x0000000000000080, 55, x9, 152, x17)

# opcode: srli ; op1:x1; dest:x23; op1val:0x0010000000000000;  immval:31
TEST_IMM_OP( srli, x23, x1, 0x0, 0x0010000000000000, 31, x9, 160, x17)

# opcode: srli ; op1:x30; dest:x18; op1val:0xfffffffbffffffff;  immval:21
TEST_IMM_OP( srli, x18, x30, 0x7ff, 0xfffffffbffffffff, 21, x9, 168, x17)

# opcode: srli ; op1:x2; dest:x6; op1val:0x0000000000000200;  immval:42
TEST_IMM_OP( srli, x6, x2, 0x0, 0x0000000000000200, 42, x9, 176, x17)
la x1,signature_x1_0

# opcode: srli ; op1:x16; dest:x17; op1val:0x0000000000000004;  immval:5
TEST_IMM_OP( srli, x17, x16, 0x0, 0x0000000000000004, 5, x1, 0, x4)

# opcode: srli ; op1:x9; dest:x26; op1val:0x0000000000000008;  immval:12
TEST_IMM_OP( srli, x26, x9, 0x0, 0x0000000000000008, 12, x1, 8, x4)

# opcode: srli ; op1:x26; dest:x9; op1val:0x0000000000000010;  immval:47
TEST_IMM_OP( srli, x9, x26, 0x0, 0x0000000000000010, 47, x1, 16, x4)

# opcode: srli ; op1:x6; dest:x2; op1val:0x0000000000000020;  immval:19
TEST_IMM_OP( srli, x2, x6, 0x0, 0x0000000000000020, 19, x1, 24, x4)

# opcode: srli ; op1:x3; dest:x0; op1val:0x0000000000000040;  immval:2
TEST_IMM_OP( srli, x0, x3, 0x10, 0x0000000000000040, 2, x1, 32, x4)

# opcode: srli ; op1:x23; dest:x7; op1val:0x0000000000000400;  immval:18
TEST_IMM_OP( srli, x7, x23, 0x0, 0x0000000000000400, 18, x1, 40, x4)

# opcode: srli ; op1:x17; dest:x30; op1val:0x0000000000000800;  immval:8
TEST_IMM_OP( srli, x30, x17, 0x8, 0x0000000000000800, 8, x1, 48, x4)

# opcode: srli ; op1:x27; dest:x21; op1val:0x0000000000001000;  immval:21
TEST_IMM_OP( srli, x21, x27, 0x0, 0x0000000000001000, 21, x1, 56, x4)

# opcode: srli ; op1:x8; dest:x29; op1val:0x0000000000002000;  immval:55
TEST_IMM_OP( srli, x29, x8, 0x0, 0x0000000000002000, 55, x1, 64, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000004000, 61, x1, 72, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:0
TEST_IMM_OP( srli, x11, x10, 0x10000, 0x0000000000010000, 0, x1, 80, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x400, 0x0000000000020000, 7, x1, 88, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000040000, 47, x1, 96, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1000, 0x0000000000080000, 7, x1, 104, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x40, 0x0000000000100000, 14, x1, 112, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000200000, 47, x1, 120, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x20000, 0x0000000000400000, 5, x1, 128, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:4
TEST_IMM_OP( srli, x11, x10, 0x80000, 0x0000000000800000, 4, x1, 136, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x2000, 0x0000000001000000, 11, x1, 144, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x10, 0x0000000002000000, 21, x1, 152, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000004000000, 62, x1, 160, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000008000000, 61, x1, 168, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x2000, 0x0000000010000000, 15, x1, 176, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x1000, 0x0000000020000000, 17, x1, 184, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x8000, 0x0000000040000000, 15, x1, 192, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:12
TEST_IMM_OP( srli, x11, x10, 0x80000, 0x0000000080000000, 12, x1, 200, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000100000000, 47, x1, 208, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000200000000, 1, x1, 216, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000400000000, 9, x1, 224, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:8
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000800000000, 8, x1, 232, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000001000000000, 2, x1, 240, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000002000000000, 16, x1, 248, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000004000000000, 15, x1, 256, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000008000000000, 62, x1, 264, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000010000000000, 59, x1, 272, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000020000000000, 19, x1, 280, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000040000000000, 18, x1, 288, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000080000000000, 15, x1, 296, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000100000000000, 5, x1, 304, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000200000000000, 7, x1, 312, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000400000000000, 62, x1, 320, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000800000000000, 62, x1, 328, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:0
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0004000000000000, 0, x1, 336, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0020000000000000, 15, x1, 344, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0040000000000000, 47, x1, 352, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0100000000000000, 61, x1, 360, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xffffff7fffffffff, 17, x1, 368, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffeffffffffff, 47, x1, 376, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1ffff, 0xfffffdffffffffff, 15, x1, 384, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x7fffffff, 0xfffffbffffffffff, 1, x1, 392, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffff7ffffffffff, 61, x1, 400, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1ffff, 0xffffefffffffffff, 15, x1, 408, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7ffffff, 0xffffdfffffffffff, 5, x1, 416, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3ffff, 0xffffbfffffffffff, 14, x1, 424, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xffff7fffffffffff, 17, x1, 432, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xfffeffffffffffff, 19, x1, 440, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x7fffff, 0xfffdffffffffffff, 9, x1, 448, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfff7ffffffffffff, 47, x1, 456, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffefffffffffffff, 63, x1, 464, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7ffffff, 0xffbfffffffffffff, 5, x1, 472, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x1fffffff, 0xff7fffffffffffff, 3, x1, 480, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1ffffff, 0xfeffffffffffffff, 7, x1, 488, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x3fffff, 0xfdffffffffffffff, 10, x1, 496, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x3ffffff, 0xfbffffffffffffff, 6, x1, 504, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x3ffffff, 0xf7ffffffffffffff, 6, x1, 512, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xefffffffffffffff, 12, x1, 520, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xdfffffffffffffff, 17, x1, 528, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:55
TEST_IMM_OP( srli, x11, x10, 0x0, 0x5555555555555555, 55, x1, 536, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1555, 0xaaaaaaaaaaaaaaaa, 19, x1, 544, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:55
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0200000000000000, 55, x1, 552, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0400000000000000, 63, x1, 560, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0800000000000000, 3, x1, 568, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x1000000000000000, 47, x1, 576, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x0, 0x2000000000000000, 10, x1, 584, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x0, 0x4000000000000000, 18, x1, 592, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xfffffffffffffffe, 19, x1, 600, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffffffd, 42, x1, 608, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1ffff, 0xfffffffffffffffb, 15, x1, 616, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1ffff, 0xfffffffffffffff7, 15, x1, 624, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x1ffffffb, 0xffffffffffffffdf, 3, x1, 632, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x1ffffff7, 0xffffffffffffffbf, 3, x1, 640, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xffffffffffffff7f, 31, x1, 648, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x3fffffb, 0xfffffffffffffeff, 6, x1, 656, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:21
TEST_IMM_OP( srli, x11, x10, 0x7ff, 0xfffffffffffffdff, 21, x1, 664, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffbf, 0xfffffffffffffbff, 4, x1, 672, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1ffff, 0xfffffffffffff7ff, 15, x1, 680, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x1ffffdff, 0xffffffffffffefff, 3, x1, 688, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3fff, 0xffffffffffffdfff, 18, x1, 696, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3fffe, 0xffffffffffffbfff, 14, x1, 704, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3fffd, 0xffffffffffff7fff, 14, x1, 712, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x7fff7f, 0xfffffffffffeffff, 9, x1, 720, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0xfffdffff, 0xfffffffffffdffff, 0, x1, 728, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffbffff, 59, x1, 736, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xfffffffffff7ffff, 31, x1, 744, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x3ffb, 0xffffffffffefffff, 18, x1, 752, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x7feff, 0xffffffffffdfffff, 13, x1, 760, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x7fdfff, 0xffffffffffbfffff, 9, x1, 768, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1fdff, 0xfffffffffeffffff, 15, x1, 776, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7eff, 0xfffffffffdffffff, 17, x1, 784, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3dfff, 0xfffffffff7ffffff, 14, x1, 792, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3bfff, 0xffffffffefffffff, 14, x1, 800, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffdfffffff, 59, x1, 808, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x17ff, 0xffffffffbfffffff, 19, x1, 816, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x1ffff, 0xfffffffeffffffff, 15, x1, 824, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xfffffffdffffffff, 12, x1, 832, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xfffffff7ffffffff, 19, x1, 840, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xffff, 0xffffffefffffffff, 16, x1, 848, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x3fffffff, 0xffffffdfffffffff, 2, x1, 856, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xffffffbfffffffff, 19, x1, 864, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x3ffffffb, 0xffffffffffffffef, 2, x1, 872, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x8000000000000000;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x0, 0x8000000000000000, 19, x1, 880, x4)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000000040;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x10, 0x0000000000000040, 2, x1, 888, x4)
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
    .fill 23*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 112*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
