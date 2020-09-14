
#This assembly file tests the sraiw instruction of the RISC-V I extension for the sraiw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sraiw)

la x13,signature_x13_1

# opcode: sraiw ; op1:x25; dest:x25; op1val:0xffffffffffbfffff;  immval:27
TEST_IMM_OP( sraiw, x25, x25, 0x1f, 0xffffffffffbfffff, 27, x13, 0, x10)

# opcode: sraiw ; op1:x6; dest:x2; op1val:0x0000020000000000;  immval:8
TEST_IMM_OP( sraiw, x2, x6, 0x0, 0x0000020000000000, 8, x13, 8, x10)

# opcode: sraiw ; op1:x30; dest:x19; op1val:0xfffffdffffffffff;  immval:0
TEST_IMM_OP( sraiw, x19, x30, 0xffffffff, 0xfffffdffffffffff, 0, x13, 16, x10)

# opcode: sraiw ; op1:x16; dest:x20; op1val:0x0000008000000000;  immval:0
TEST_IMM_OP( sraiw, x20, x16, 0x0, 0x0000008000000000, 0, x13, 24, x10)

# opcode: sraiw ; op1:x14; dest:x9; op1val:0xffffffffffbfffff;  immval:31
TEST_IMM_OP( sraiw, x9, x14, 0x1, 0xffffffffffbfffff, 31, x13, 32, x10)

# opcode: sraiw ; op1:x3; dest:x29; op1val:0x5555555555555555;  immval:31
TEST_IMM_OP( sraiw, x29, x3, 0x0, 0x5555555555555555, 31, x13, 40, x10)

# opcode: sraiw ; op1:x8; dest:x1; op1val:0x0000000000000002;  immval:2
TEST_IMM_OP( sraiw, x1, x8, 0x0, 0x0000000000000002, 2, x13, 48, x10)

# opcode: sraiw ; op1:x27; dest:x30; op1val:0x8000000000000000;  immval:14
TEST_IMM_OP( sraiw, x30, x27, 0x0, 0x8000000000000000, 14, x13, 56, x10)

# opcode: sraiw ; op1:x29; dest:x15; op1val:0x0000000000000000;  immval:5
TEST_IMM_OP( sraiw, x15, x29, 0x0, 0x0000000000000000, 5, x13, 64, x10)

# opcode: sraiw ; op1:x5; dest:x3; op1val:0x7fffffffffffffff;  immval:23
TEST_IMM_OP( sraiw, x3, x5, 0x1ff, 0x7fffffffffffffff, 23, x13, 72, x10)

# opcode: sraiw ; op1:x31; dest:x26; op1val:0x0000000000000001;  immval:7
TEST_IMM_OP( sraiw, x26, x31, 0x0, 0x0000000000000001, 7, x13, 80, x10)

# opcode: sraiw ; op1:x7; dest:x27; op1val:0x0200000000000000;  immval:1
TEST_IMM_OP( sraiw, x27, x7, 0x0, 0x0200000000000000, 1, x13, 88, x10)

# opcode: sraiw ; op1:x11; dest:x12; op1val:0x0000000000000008;  immval:4
TEST_IMM_OP( sraiw, x12, x11, 0x0, 0x0000000000000008, 4, x13, 96, x10)

# opcode: sraiw ; op1:x15; dest:x4; op1val:0xffffffffffdfffff;  immval:16
TEST_IMM_OP( sraiw, x4, x15, 0xffdf, 0xffffffffffdfffff, 16, x13, 104, x10)

# opcode: sraiw ; op1:x23; dest:x6; op1val:0x0001000000000000;  immval:30
TEST_IMM_OP( sraiw, x6, x23, 0x0, 0x0001000000000000, 30, x13, 112, x10)

# opcode: sraiw ; op1:x28; dest:x16; op1val:0xfffffffffffff7ff;  immval:29
TEST_IMM_OP( sraiw, x16, x28, 0x7, 0xfffffffffffff7ff, 29, x13, 120, x10)

# opcode: sraiw ; op1:x19; dest:x7; op1val:0x0010000000000000;  immval:15
TEST_IMM_OP( sraiw, x7, x19, 0x0, 0x0010000000000000, 15, x13, 128, x10)

# opcode: sraiw ; op1:x17; dest:x18; op1val:0x0000000000040000;  immval:21
TEST_IMM_OP( sraiw, x18, x17, 0x0, 0x0000000000040000, 21, x13, 136, x10)

# opcode: sraiw ; op1:x0; dest:x21; op1val:0x0000000000000000;  immval:10
TEST_IMM_OP( sraiw, x21, x0, 0x0, 0x0000000000000000, 10, x13, 144, x10)

# opcode: sraiw ; op1:x10; dest:x28; op1val:0x0000000000000004;  immval:9
TEST_IMM_OP( sraiw, x28, x10, 0x0, 0x0000000000000004, 9, x13, 152, x6)
la x3,signature_x3_0

# opcode: sraiw ; op1:x26; dest:x5; op1val:0x0000000000000010;  immval:15
TEST_IMM_OP( sraiw, x5, x26, 0x0, 0x0000000000000010, 15, x3, 0, x6)

# opcode: sraiw ; op1:x1; dest:x8; op1val:0x0000000000000020;  immval:12
TEST_IMM_OP( sraiw, x8, x1, 0x0, 0x0000000000000020, 12, x3, 8, x6)

# opcode: sraiw ; op1:x2; dest:x10; op1val:0x0000000000000040;  immval:13
TEST_IMM_OP( sraiw, x10, x2, 0x0, 0x0000000000000040, 13, x3, 16, x6)

# opcode: sraiw ; op1:x18; dest:x23; op1val:0x0000000000000080;  immval:18
TEST_IMM_OP( sraiw, x23, x18, 0x0, 0x0000000000000080, 18, x3, 24, x6)

# opcode: sraiw ; op1:x22; dest:x14; op1val:0x0000000000000100;  immval:23
TEST_IMM_OP( sraiw, x14, x22, 0x0, 0x0000000000000100, 23, x3, 32, x6)

# opcode: sraiw ; op1:x9; dest:x22; op1val:0x0000000000000200;  immval:17
TEST_IMM_OP( sraiw, x22, x9, 0x0, 0x0000000000000200, 17, x3, 40, x6)

# opcode: sraiw ; op1:x12; dest:x11; op1val:0x0000000000000400;  immval:5
TEST_IMM_OP( sraiw, x11, x12, 0x20, 0x0000000000000400, 5, x3, 48, x6)

# opcode: sraiw ; op1:x20; dest:x24; op1val:0x0000000000000800;  immval:2
TEST_IMM_OP( sraiw, x24, x20, 0x200, 0x0000000000000800, 2, x3, 56, x6)

# opcode: sraiw ; op1:x4; dest:x17; op1val:0x0000000000001000;  immval:1
TEST_IMM_OP( sraiw, x17, x4, 0x800, 0x0000000000001000, 1, x3, 64, x6)

# opcode: sraiw ; op1:x21; dest:x13; op1val:0x0000000000002000;  immval:16
TEST_IMM_OP( sraiw, x13, x21, 0x0, 0x0000000000002000, 16, x3, 72, x6)

# opcode: sraiw ; op1:x13; dest:x0; op1val:0x0000000000004000;  immval:6
TEST_IMM_OP( sraiw, x0, x13, 0x100, 0x0000000000004000, 6, x3, 80, x6)

# opcode: sraiw ; op1:x24; dest:x31; op1val:0x0000000000008000;  immval:31
TEST_IMM_OP( sraiw, x31, x24, 0x0, 0x0000000000008000, 31, x3, 88, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x4, 0x0000000000010000, 14, x3, 96, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x40, 0x0000000000020000, 11, x3, 104, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000080000, 21, x3, 112, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000100000, 31, x3, 120, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000200000, 23, x3, 128, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x400, 0x0000000000400000, 12, x3, 136, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0x800000, 0x0000000000800000, 0, x3, 144, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x4000, 0x0000000001000000, 10, x3, 152, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x2000, 0x0000000002000000, 12, x3, 160, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x10000, 0x0000000004000000, 10, x3, 168, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000008000000, 31, x3, 176, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x8000000, 0x0000000010000000, 1, x3, 184, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x20000, 0x0000000020000000, 12, x3, 192, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x800, 0x0000000040000000, 19, x3, 200, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0x80000000, 0x0000000080000000, 0, x3, 208, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:15
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000100000000, 15, x3, 216, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000200000000, 27, x3, 224, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000400000000, 17, x3, 232, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000800000000, 2, x3, 240, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000001000000000, 19, x3, 248, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000002000000000, 5, x3, 256, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000004000000000, 14, x3, 264, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000010000000000, 3, x3, 272, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000040000000000, 11, x3, 280, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000080000000000, 3, x3, 288, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000100000000000, 16, x3, 296, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000200000000000, 13, x3, 304, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000400000000000, 13, x3, 312, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000800000000000, 11, x3, 320, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0002000000000000, 14, x3, 328, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0004000000000000, 12, x3, 336, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0008000000000000, 9, x3, 344, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0020000000000000, 11, x3, 352, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0040000000000000, 10, x3, 360, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0080000000000000, 31, x3, 368, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0100000000000000, 21, x3, 376, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0400000000000000, 16, x3, 384, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0800000000000000, 30, x3, 392, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x7fff, 0xfffffbffffffffff, 17, x3, 400, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xfffff7ffffffffff, 4, x3, 408, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffff, 0xffffefffffffffff, 11, x3, 416, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xffffdfffffffffff, 12, x3, 424, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3ffff, 0xffffbfffffffffff, 14, x3, 432, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x7ff, 0xffff7fffffffffff, 21, x3, 440, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x3fffffff, 0xfffeffffffffffff, 2, x3, 448, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x7ffff, 0xfffdffffffffffff, 13, x3, 456, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xfffbffffffffffff, 4, x3, 464, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0xffffff, 0xfff7ffffffffffff, 8, x3, 472, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xffefffffffffffff, 4, x3, 480, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x7fff, 0xffdfffffffffffff, 17, x3, 488, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:15
TEST_IMM_OP( sraiw, x11, x10, 0x1ffff, 0xffbfffffffffffff, 15, x3, 496, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x3, 0xff7fffffffffffff, 30, x3, 504, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x3fff, 0xfeffffffffffffff, 18, x3, 512, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xfdffffffffffffff, 19, x3, 520, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0xffffff, 0xfbffffffffffffff, 8, x3, 528, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x3, 0xf7ffffffffffffff, 30, x3, 536, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffff, 0xefffffffffffffff, 11, x3, 544, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x3fff, 0xdfffffffffffffff, 18, x3, 552, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xbfffffffffffffff, 4, x3, 560, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x2aaaaa, 0xaaaaaaaaaaaaaaaa, 10, x3, 568, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:15
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x1000000000000000, 15, x3, 576, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x2000000000000000, 12, x3, 584, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x4000000000000000, 5, x3, 592, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x7fffff, 0xfffffffffffffffe, 9, x3, 600, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xfffffffffffffffd, 19, x3, 608, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xfffffffffffffffb, 31, x3, 616, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xfffffffffffffff7, 19, x3, 624, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffff7, 0xffffffffffffffef, 1, x3, 632, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xffff, 0xffffffffffffffdf, 16, x3, 640, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xffffffb, 0xffffffffffffffbf, 4, x3, 648, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3ffff, 0xffffffffffffff7f, 14, x3, 656, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x3fffffb, 0xfffffffffffffeff, 6, x3, 664, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0xfffffd, 0xfffffffffffffdff, 8, x3, 672, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffd, 0xfffffffffffffbff, 9, x3, 680, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x7ffff, 0xffffffffffffefff, 13, x3, 688, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xffffffffffffdfff, 31, x3, 696, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x3fff, 0xffffffffffffbfff, 18, x3, 704, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xffffffffffff7fff, 19, x3, 712, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x7ff, 0xfffffffffffeffff, 21, x3, 720, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0xfffdffff, 0xfffffffffffdffff, 0, x3, 728, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffbfff, 0xfffffffffffbffff, 4, x3, 736, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x3, 0xfffffffffff7ffff, 30, x3, 744, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x3ffb, 0xffffffffffefffff, 18, x3, 752, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0xff7fffff, 0xffffffffff7fffff, 0, x3, 760, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x3fbf, 0xfffffffffeffffff, 18, x3, 768, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfdfffff, 0xfffffffffdffffff, 4, x3, 776, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x7dfff, 0xfffffffffbffffff, 13, x3, 784, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xf7ff, 0xfffffffff7ffffff, 16, x3, 792, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x3bff, 0xffffffffefffffff, 18, x3, 800, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x1bffffff, 0xffffffffdfffffff, 3, x3, 808, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x5fffff, 0xffffffffbfffffff, 9, x3, 816, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:15
TEST_IMM_OP( sraiw, x11, x10, 0xffff, 0xffffffff7fffffff, 15, x3, 824, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x1f, 0xfffffffeffffffff, 27, x3, 832, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffff, 0xfffffffdffffffff, 11, x3, 840, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0xffffff, 0xfffffffbffffffff, 8, x3, 848, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0xffffff, 0xfffffff7ffffffff, 8, x3, 856, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x3ffffff, 0xffffffefffffffff, 6, x3, 864, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xffffffdfffffffff, 31, x3, 872, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x1f, 0xffffffbfffffffff, 27, x3, 880, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x1ffffff, 0xffffff7fffffffff, 7, x3, 888, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x7, 0xfffffeffffffffff, 29, x3, 896, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x1f, 0xffffffffffbfffff, 27, x3, 904, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000000000;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000000000, 10, x3, 912, x6)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x100, 0x0000000000004000, 6, x3, 920, x6)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x13_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 116*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
