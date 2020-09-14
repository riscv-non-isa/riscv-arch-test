
#This assembly file tests the srliw instruction of the RISC-V I extension for the srliw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",srliw)

la x5,signature_x5_1

# opcode: srliw ; op1:x7; dest:x7; op1val:0xffffffffbfffffff;  immval:2
TEST_IMM_OP( srliw, x7, x7, 0x2fffffff, 0xffffffffbfffffff, 2, x5, 0, x12)

# opcode: srliw ; op1:x29; dest:x21; op1val:0x0001000000000000;  immval:21
TEST_IMM_OP( srliw, x21, x29, 0x0, 0x0001000000000000, 21, x5, 8, x12)

# opcode: srliw ; op1:x30; dest:x4; op1val:0xffffffefffffffff;  immval:0
TEST_IMM_OP( srliw, x4, x30, 0xffffffff, 0xffffffefffffffff, 0, x5, 16, x12)

# opcode: srliw ; op1:x24; dest:x15; op1val:0x0000000200000000;  immval:0
TEST_IMM_OP( srliw, x15, x24, 0x0, 0x0000000200000000, 0, x5, 24, x12)

# opcode: srliw ; op1:x11; dest:x19; op1val:0xffffffffffffffff;  immval:31
TEST_IMM_OP( srliw, x19, x11, 0x1, 0xffffffffffffffff, 31, x5, 32, x12)

# opcode: srliw ; op1:x8; dest:x9; op1val:0x0000100000000000;  immval:31
TEST_IMM_OP( srliw, x9, x8, 0x0, 0x0000100000000000, 31, x5, 40, x12)

# opcode: srliw ; op1:x17; dest:x16; op1val:0x0000000000000005;  immval:5
TEST_IMM_OP( srliw, x16, x17, 0x0, 0x0000000000000005, 5, x5, 48, x12)

# opcode: srliw ; op1:x2; dest:x0; op1val:0x8000000000000000;  immval:8
TEST_IMM_OP( srliw, x0, x2, 0x0, 0x8000000000000000, 8, x5, 56, x12)

# opcode: srliw ; op1:x27; dest:x1; op1val:0x0000000000000000;  immval:9
TEST_IMM_OP( srliw, x1, x27, 0x0, 0x0000000000000000, 9, x5, 64, x12)

# opcode: srliw ; op1:x6; dest:x30; op1val:0x7fffffffffffffff;  immval:27
TEST_IMM_OP( srliw, x30, x6, 0x1f, 0x7fffffffffffffff, 27, x5, 72, x12)

# opcode: srliw ; op1:x28; dest:x20; op1val:0x0000000000000001;  immval:2
TEST_IMM_OP( srliw, x20, x28, 0x0, 0x0000000000000001, 2, x5, 80, x12)

# opcode: srliw ; op1:x22; dest:x10; op1val:0x0000400000000000;  immval:1
TEST_IMM_OP( srliw, x10, x22, 0x0, 0x0000400000000000, 1, x5, 88, x12)

# opcode: srliw ; op1:x4; dest:x31; op1val:0xffffffffffff7fff;  immval:4
TEST_IMM_OP( srliw, x31, x4, 0xffff7ff, 0xffffffffffff7fff, 4, x5, 96, x12)

# opcode: srliw ; op1:x31; dest:x13; op1val:0xffffdfffffffffff;  immval:16
TEST_IMM_OP( srliw, x13, x31, 0xffff, 0xffffdfffffffffff, 16, x5, 104, x12)

# opcode: srliw ; op1:x18; dest:x2; op1val:0x0004000000000000;  immval:30
TEST_IMM_OP( srliw, x2, x18, 0x0, 0x0004000000000000, 30, x5, 112, x12)

# opcode: srliw ; op1:x13; dest:x6; op1val:0xfffffffffffffff8;  immval:29
TEST_IMM_OP( srliw, x6, x13, 0x7, 0xfffffffffffffff8, 29, x5, 120, x12)

# opcode: srliw ; op1:x21; dest:x23; op1val:0xfffdffffffffffff;  immval:23
TEST_IMM_OP( srliw, x23, x21, 0x1ff, 0xfffdffffffffffff, 23, x5, 128, x12)

# opcode: srliw ; op1:x14; dest:x24; op1val:0x0000000000000004;  immval:15
TEST_IMM_OP( srliw, x24, x14, 0x0, 0x0000000000000004, 15, x5, 136, x12)

# opcode: srliw ; op1:x3; dest:x26; op1val:0x0040000000000000;  immval:10
TEST_IMM_OP( srliw, x26, x3, 0x0, 0x0040000000000000, 10, x5, 144, x12)
la x2,signature_x2_0

# opcode: srliw ; op1:x1; dest:x28; op1val:0x0000000000000002;  immval:8
TEST_IMM_OP( srliw, x28, x1, 0x0, 0x0000000000000002, 8, x2, 0, x4)

# opcode: srliw ; op1:x25; dest:x22; op1val:0x0000000000000008;  immval:21
TEST_IMM_OP( srliw, x22, x25, 0x0, 0x0000000000000008, 21, x2, 8, x4)

# opcode: srliw ; op1:x15; dest:x8; op1val:0x0000000000000010;  immval:1
TEST_IMM_OP( srliw, x8, x15, 0x8, 0x0000000000000010, 1, x2, 16, x4)

# opcode: srliw ; op1:x16; dest:x3; op1val:0x0000000000000020;  immval:7
TEST_IMM_OP( srliw, x3, x16, 0x0, 0x0000000000000020, 7, x2, 24, x4)

# opcode: srliw ; op1:x9; dest:x12; op1val:0x0000000000000040;  immval:15
TEST_IMM_OP( srliw, x12, x9, 0x0, 0x0000000000000040, 15, x2, 32, x4)

# opcode: srliw ; op1:x12; dest:x17; op1val:0x0000000000000080;  immval:16
TEST_IMM_OP( srliw, x17, x12, 0x0, 0x0000000000000080, 16, x2, 40, x4)

# opcode: srliw ; op1:x19; dest:x18; op1val:0x0000000000000100;  immval:17
TEST_IMM_OP( srliw, x18, x19, 0x0, 0x0000000000000100, 17, x2, 48, x4)

# opcode: srliw ; op1:x26; dest:x14; op1val:0x0000000000000200;  immval:14
TEST_IMM_OP( srliw, x14, x26, 0x0, 0x0000000000000200, 14, x2, 56, x4)

# opcode: srliw ; op1:x0; dest:x29; op1val:0x0000000000000400;  immval:9
TEST_IMM_OP( srliw, x29, x0, 0x2, 0x0000000000000400, 9, x2, 64, x4)

# opcode: srliw ; op1:x20; dest:x5; op1val:0x0000000000000800;  immval:8
TEST_IMM_OP( srliw, x5, x20, 0x8, 0x0000000000000800, 8, x2, 72, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000001000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000001000, 17, x2, 80, x4)

# opcode: srliw ; op1:x23; dest:x27; op1val:0x0000000000002000;  immval:18
TEST_IMM_OP( srliw, x27, x23, 0x0, 0x0000000000002000, 18, x2, 88, x4)

# opcode: srliw ; op1:x5; dest:x25; op1val:0x0000000000004000;  immval:15
TEST_IMM_OP( srliw, x25, x5, 0x0, 0x0000000000004000, 15, x2, 96, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x2000, 0x0000000000008000, 2, x2, 104, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x10, 0x0000000000010000, 12, x2, 112, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000020000, 27, x2, 120, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000040000, 30, x2, 128, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x8000, 0x0000000000080000, 4, x2, 136, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x4000, 0x0000000000100000, 6, x2, 144, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x40, 0x0000000000200000, 15, x2, 152, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x200000, 0x0000000000400000, 1, x2, 160, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000800000, 31, x2, 168, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x400, 0x0000000001000000, 14, x2, 176, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000002000000, 29, x2, 184, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x4000000, 0x0000000004000000, 0, x2, 192, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x8000, 0x0000000008000000, 12, x2, 200, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x10000000, 0x0000000010000000, 0, x2, 208, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x2000000, 0x0000000020000000, 4, x2, 216, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x200000, 0x0000000040000000, 9, x2, 224, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x200000, 0x0000000080000000, 10, x2, 232, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000100000000, 11, x2, 240, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000400000000, 12, x2, 248, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000800000000, 14, x2, 256, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000001000000000, 19, x2, 264, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000002000000000, 7, x2, 272, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000004000000000, 12, x2, 280, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000008000000000, 12, x2, 288, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000010000000000, 18, x2, 296, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000020000000000, 5, x2, 304, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000040000000000, 4, x2, 312, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000080000000000, 21, x2, 320, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000200000000000, 1, x2, 328, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000800000000000, 15, x2, 336, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0002000000000000, 18, x2, 344, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0008000000000000, 10, x2, 352, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:3
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0010000000000000, 3, x2, 360, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0020000000000000, 13, x2, 368, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0080000000000000, 11, x2, 376, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0100000000000000, 17, x2, 384, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0200000000000000, 19, x2, 392, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0400000000000000, 12, x2, 400, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0800000000000000, 17, x2, 408, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffffff, 0xfffffdffffffffff, 6, x2, 416, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x1ffff, 0xfffffbffffffffff, 15, x2, 424, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x3, 0xfffff7ffffffffff, 30, x2, 432, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7ff, 0xffffefffffffffff, 21, x2, 440, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0xffff, 0xffffbfffffffffff, 16, x2, 448, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0xffffffff, 0xffff7fffffffffff, 0, x2, 456, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x7fffffff, 0xfffeffffffffffff, 1, x2, 464, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x7fff, 0xfffbffffffffffff, 17, x2, 472, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7ff, 0xfff7ffffffffffff, 21, x2, 480, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x7fff, 0xffefffffffffffff, 17, x2, 488, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x3fffffff, 0xffdfffffffffffff, 2, x2, 496, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xffbfffffffffffff, 19, x2, 504, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffffff, 0xff7fffffffffffff, 6, x2, 512, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7ff, 0xfeffffffffffffff, 21, x2, 520, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7ffff, 0xfdffffffffffffff, 13, x2, 528, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffffff, 0xfbffffffffffffff, 6, x2, 536, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xf7ffffffffffffff, 23, x2, 544, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7ffff, 0xefffffffffffffff, 13, x2, 552, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffffff, 0xdfffffffffffffff, 6, x2, 560, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x1f, 0xbfffffffffffffff, 27, x2, 568, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x2aaaaaaa, 0x5555555555555555, 1, x2, 576, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x555555, 0xaaaaaaaaaaaaaaaa, 9, x2, 584, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x1000000000000000, 13, x2, 592, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x2000000000000000, 19, x2, 600, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x4000000000000000, 19, x2, 608, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xfffffffffffffffe, 4, x2, 616, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:3
TEST_IMM_OP( srliw, x11, x10, 0x1fffffff, 0xfffffffffffffffd, 3, x2, 624, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x7, 0xfffffffffffffffb, 29, x2, 632, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0xffffff, 0xfffffffffffffff7, 8, x2, 640, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xffffffffffffffef, 23, x2, 648, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x3, 0xffffffffffffffdf, 30, x2, 656, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x7, 0xffffffffffffffbf, 29, x2, 664, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3ffff, 0xffffffffffffff7f, 14, x2, 672, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0xfffff, 0xfffffffffffffeff, 12, x2, 680, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0xfffffd, 0xfffffffffffffdff, 8, x2, 688, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7ff, 0xfffffffffffffbff, 21, x2, 696, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3ffff, 0xfffffffffffff7ff, 14, x2, 704, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x7ffff7, 0xffffffffffffefff, 9, x2, 712, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x1ffff, 0xffffffffffffdfff, 15, x2, 720, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x7fffdff, 0xffffffffffffbfff, 5, x2, 728, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3fffbff, 0xfffffffffffeffff, 6, x2, 736, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0xfffdf, 0xfffffffffffdffff, 12, x2, 744, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x7ffd, 0xfffffffffffbffff, 17, x2, 752, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x7ffbfff, 0xfffffffffff7ffff, 5, x2, 760, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x7ff7, 0xffffffffffefffff, 17, x2, 768, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xffffffffffdfffff, 23, x2, 776, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3feff, 0xffffffffffbfffff, 14, x2, 784, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7fb, 0xffffffffff7fffff, 21, x2, 792, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3fbff, 0xfffffffffeffffff, 14, x2, 800, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x7effff, 0xfffffffffdffffff, 9, x2, 808, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1f7fff, 0xfffffffffbffffff, 11, x2, 816, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x3dff, 0xfffffffff7ffffff, 18, x2, 824, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x1, 0xffffffffefffffff, 31, x2, 832, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x6fffff, 0xffffffffdfffffff, 9, x2, 840, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x1ffffff, 0xffffffff7fffffff, 6, x2, 848, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:3
TEST_IMM_OP( srliw, x11, x10, 0x1fffffff, 0xfffffffeffffffff, 3, x2, 856, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xfffffffdffffffff, 23, x2, 864, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x1f, 0xfffffffbffffffff, 27, x2, 872, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:3
TEST_IMM_OP( srliw, x11, x10, 0x1fffffff, 0xfffffff7ffffffff, 3, x2, 880, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x7fffffff, 0xffffffdfffffffff, 1, x2, 888, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xffffffbfffffffff, 4, x2, 896, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7ffff, 0xffffff7fffffffff, 13, x2, 904, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xfffffeffffffffff, 23, x2, 912, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x2fffffff, 0xffffffffbfffffff, 2, x2, 920, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x8000000000000000;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x8000000000000000, 8, x2, 928, x4)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000000400;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x2, 0x0000000000000400, 9, x2, 936, x4)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x5_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 118*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
