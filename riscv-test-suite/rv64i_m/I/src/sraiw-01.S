
#This assembly file tests the sraiw instruction of the RISC-V I extension for the sraiw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sraiw)

la x2,signature_x2_1

# opcode: sraiw ; op1:x12; dest:x12; op1val:0xffffffffdfffffff;  immval:30
TEST_IMM_OP( sraiw, x12, x12, 0x3, 0xffffffffdfffffff, 30, x2, 0, x11)

# opcode: sraiw ; op1:x23; dest:x18; op1val:0x0000000020000000;  immval:15
TEST_IMM_OP( sraiw, x18, x23, 0x4000, 0x0000000020000000, 15, x2, 8, x11)

# opcode: sraiw ; op1:x10; dest:x3; op1val:0xfffffffffdffffff;  immval:0
TEST_IMM_OP( sraiw, x3, x10, 0xfdffffff, 0xfffffffffdffffff, 0, x2, 16, x11)

# opcode: sraiw ; op1:x3; dest:x17; op1val:0x0010000000000000;  immval:0
TEST_IMM_OP( sraiw, x17, x3, 0x0, 0x0010000000000000, 0, x2, 24, x11)

# opcode: sraiw ; op1:x25; dest:x27; op1val:0xffefffffffffffff;  immval:31
TEST_IMM_OP( sraiw, x27, x25, 0x1, 0xffefffffffffffff, 31, x2, 32, x11)

# opcode: sraiw ; op1:x22; dest:x24; op1val:0x0800000000000000;  immval:31
TEST_IMM_OP( sraiw, x24, x22, 0x0, 0x0800000000000000, 31, x2, 40, x11)

# opcode: sraiw ; op1:x0; dest:x7; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( sraiw, x7, x0, 0x0, 0x0000000000000004, 4, x2, 48, x11)

# opcode: sraiw ; op1:x16; dest:x14; op1val:0x8000000000000000;  immval:31
TEST_IMM_OP( sraiw, x14, x16, 0x0, 0x8000000000000000, 31, x2, 56, x11)

# opcode: sraiw ; op1:x7; dest:x10; op1val:0x0000000000000000;  immval:10
TEST_IMM_OP( sraiw, x10, x7, 0x0, 0x0000000000000000, 10, x2, 64, x11)

# opcode: sraiw ; op1:x9; dest:x30; op1val:0x7fffffffffffffff;  immval:0
TEST_IMM_OP( sraiw, x30, x9, 0xffffffff, 0x7fffffffffffffff, 0, x2, 72, x11)

# opcode: sraiw ; op1:x4; dest:x28; op1val:0x0000000000000001;  immval:21
TEST_IMM_OP( sraiw, x28, x4, 0x0, 0x0000000000000001, 21, x2, 80, x11)

# opcode: sraiw ; op1:x27; dest:x0; op1val:0xfffffffffeffffff;  immval:1
TEST_IMM_OP( sraiw, x0, x27, 0x7f7fffff, 0xfffffffffeffffff, 1, x2, 88, x11)

# opcode: sraiw ; op1:x5; dest:x31; op1val:0x0000010000000000;  immval:2
TEST_IMM_OP( sraiw, x31, x5, 0x0, 0x0000010000000000, 2, x2, 96, x11)

# opcode: sraiw ; op1:x15; dest:x1; op1val:0xfeffffffffffffff;  immval:8
TEST_IMM_OP( sraiw, x1, x15, 0xffffff, 0xfeffffffffffffff, 8, x2, 104, x11)

# opcode: sraiw ; op1:x14; dest:x23; op1val:0x0000000000800000;  immval:16
TEST_IMM_OP( sraiw, x23, x14, 0x80, 0x0000000000800000, 16, x2, 112, x11)

# opcode: sraiw ; op1:x28; dest:x15; op1val:0xfffffffffffffffa;  immval:29
TEST_IMM_OP( sraiw, x15, x28, 0x7, 0xfffffffffffffffa, 29, x2, 120, x11)

# opcode: sraiw ; op1:x29; dest:x13; op1val:0xffffffffffffffbf;  immval:27
TEST_IMM_OP( sraiw, x13, x29, 0x1f, 0xffffffffffffffbf, 27, x2, 128, x11)

# opcode: sraiw ; op1:x1; dest:x4; op1val:0xfffffdffffffffff;  immval:23
TEST_IMM_OP( sraiw, x4, x1, 0x1ff, 0xfffffdffffffffff, 23, x2, 136, x11)

# opcode: sraiw ; op1:x8; dest:x6; op1val:0x0000000000000002;  immval:14
TEST_IMM_OP( sraiw, x6, x8, 0x0, 0x0000000000000002, 14, x2, 144, x11)

# opcode: sraiw ; op1:x26; dest:x5; op1val:0x0000000000000008;  immval:16
TEST_IMM_OP( sraiw, x5, x26, 0x0, 0x0000000000000008, 16, x2, 152, x11)

# opcode: sraiw ; op1:x6; dest:x21; op1val:0x0000000000000010;  immval:17
TEST_IMM_OP( sraiw, x21, x6, 0x0, 0x0000000000000010, 17, x2, 160, x11)

# opcode: sraiw ; op1:x24; dest:x20; op1val:0x0000000000000020;  immval:1
TEST_IMM_OP( sraiw, x20, x24, 0x10, 0x0000000000000020, 1, x2, 168, x3)
la x1,signature_x1_0

# opcode: sraiw ; op1:x17; dest:x25; op1val:0x0000000000000040;  immval:3
TEST_IMM_OP( sraiw, x25, x17, 0x8, 0x0000000000000040, 3, x1, 0, x3)

# opcode: sraiw ; op1:x21; dest:x19; op1val:0x0000000000000080;  immval:16
TEST_IMM_OP( sraiw, x19, x21, 0x0, 0x0000000000000080, 16, x1, 8, x3)

# opcode: sraiw ; op1:x30; dest:x9; op1val:0x0000000000000100;  immval:7
TEST_IMM_OP( sraiw, x9, x30, 0x2, 0x0000000000000100, 7, x1, 16, x3)

# opcode: sraiw ; op1:x2; dest:x11; op1val:0x0000000000000200;  immval:27
TEST_IMM_OP( sraiw, x11, x2, 0x0, 0x0000000000000200, 27, x1, 24, x3)

# opcode: sraiw ; op1:x13; dest:x22; op1val:0x0000000000000400;  immval:21
TEST_IMM_OP( sraiw, x22, x13, 0x0, 0x0000000000000400, 21, x1, 32, x3)

# opcode: sraiw ; op1:x19; dest:x16; op1val:0x0000000000000800;  immval:7
TEST_IMM_OP( sraiw, x16, x19, 0x10, 0x0000000000000800, 7, x1, 40, x3)

# opcode: sraiw ; op1:x20; dest:x8; op1val:0x0000000000001000;  immval:31
TEST_IMM_OP( sraiw, x8, x20, 0x0, 0x0000000000001000, 31, x1, 48, x3)

# opcode: sraiw ; op1:x11; dest:x26; op1val:0x0000000000002000;  immval:29
TEST_IMM_OP( sraiw, x26, x11, 0x0, 0x0000000000002000, 29, x1, 56, x3)

# opcode: sraiw ; op1:x31; dest:x29; op1val:0x0000000000004000;  immval:0
TEST_IMM_OP( sraiw, x29, x31, 0x4000, 0x0000000000004000, 0, x1, 64, x3)

# opcode: sraiw ; op1:x18; dest:x2; op1val:0x0000000000008000;  immval:16
TEST_IMM_OP( sraiw, x2, x18, 0x0, 0x0000000000008000, 16, x1, 72, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0x10000, 0x0000000000010000, 0, x1, 80, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x2, 0x0000000000020000, 16, x1, 88, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000040000, 27, x1, 96, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000080000, 31, x1, 104, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x80000, 0x0000000000100000, 1, x1, 112, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x80000, 0x0000000000200000, 2, x1, 120, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x10, 0x0000000000400000, 18, x1, 128, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x400, 0x0000000001000000, 14, x1, 136, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x2000, 0x0000000002000000, 12, x1, 144, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x8, 0x0000000004000000, 23, x1, 152, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x800, 0x0000000008000000, 16, x1, 160, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x40000, 0x0000000010000000, 10, x1, 168, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0x40000000, 0x0000000040000000, 0, x1, 176, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:7
TEST_IMM_OP( sraiw, x11, x10, 0x1000000, 0x0000000080000000, 7, x1, 184, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000100000000, 31, x1, 192, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000200000000, 13, x1, 200, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000400000000, 13, x1, 208, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:21
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000800000000, 21, x1, 216, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000001000000000, 9, x1, 224, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000002000000000, 18, x1, 232, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000004000000000, 4, x1, 240, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000008000000000, 11, x1, 248, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000020000000000, 12, x1, 256, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000040000000000, 10, x1, 264, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:15
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000080000000000, 15, x1, 272, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000100000000000, 27, x1, 280, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000200000000000, 0, x1, 288, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000400000000000, 27, x1, 296, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000800000000000, 2, x1, 304, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0001000000000000, 30, x1, 312, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0002000000000000, 1, x1, 320, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0004000000000000, 9, x1, 328, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0008000000000000, 6, x1, 336, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0020000000000000, 23, x1, 344, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0040000000000000, 10, x1, 352, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0080000000000000, 6, x1, 360, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0100000000000000, 18, x1, 368, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x1fffffff, 0xfffffbffffffffff, 3, x1, 376, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xffff, 0xfffff7ffffffffff, 16, x1, 384, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fffff, 0xffffefffffffffff, 10, x1, 392, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0x1fff, 0xffffdfffffffffff, 19, x1, 400, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0xffffff, 0xffffbfffffffffff, 8, x1, 408, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x3, 0xffff7fffffffffff, 30, x1, 416, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:8
TEST_IMM_OP( sraiw, x11, x10, 0xffffff, 0xfffeffffffffffff, 8, x1, 424, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7fffffff, 0xfffdffffffffffff, 1, x1, 432, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xfffbffffffffffff, 12, x1, 440, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xffff, 0xfff7ffffffffffff, 16, x1, 448, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x1fffffff, 0xffdfffffffffffff, 3, x1, 456, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x7, 0xffbfffffffffffff, 29, x1, 464, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xffff, 0xff7fffffffffffff, 16, x1, 472, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xfdffffffffffffff, 31, x1, 480, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x3fffffff, 0xfbffffffffffffff, 2, x1, 488, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x7ffff, 0xf7ffffffffffffff, 13, x1, 496, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0xffff, 0xefffffffffffffff, 16, x1, 504, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xfffff, 0xdfffffffffffffff, 12, x1, 512, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3fffff, 0xbfffffffffffffff, 10, x1, 520, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:19
TEST_IMM_OP( sraiw, x11, x10, 0xaaa, 0x5555555555555555, 19, x1, 528, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0xaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 0, x1, 536, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:23
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0200000000000000, 23, x1, 544, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:18
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0400000000000000, 18, x1, 552, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:6
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x1000000000000000, 6, x1, 560, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x2000000000000000, 9, x1, 568, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x4000000000000000, 4, x1, 576, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x3, 0xfffffffffffffffe, 30, x1, 584, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xfffffffffffffffd, 4, x1, 592, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x1fffffff, 0xfffffffffffffffb, 3, x1, 600, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffffb, 0xfffffffffffffff7, 1, x1, 608, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x3, 0xffffffffffffffef, 30, x1, 616, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x1f, 0xffffffffffffffdf, 27, x1, 624, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:14
TEST_IMM_OP( sraiw, x11, x10, 0x3ffff, 0xffffffffffffff7f, 14, x1, 632, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:9
TEST_IMM_OP( sraiw, x11, x10, 0x7fffff, 0xfffffffffffffeff, 9, x1, 640, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x7, 0xfffffffffffffdff, 29, x1, 648, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffbf, 0xfffffffffffffbff, 4, x1, 656, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x7, 0xfffffffffffff7ff, 29, x1, 664, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xffffe, 0xffffffffffffefff, 12, x1, 672, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x3ffff7ff, 0xffffffffffffdfff, 2, x1, 680, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:3
TEST_IMM_OP( sraiw, x11, x10, 0x1ffff7ff, 0xffffffffffffbfff, 3, x1, 688, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:0
TEST_IMM_OP( sraiw, x11, x10, 0xffff7fff, 0xffffffffffff7fff, 0, x1, 696, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:2
TEST_IMM_OP( sraiw, x11, x10, 0x3fffbfff, 0xfffffffffffeffff, 2, x1, 704, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffbf, 0xfffffffffffdffff, 11, x1, 712, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x7ffdf, 0xfffffffffffbffff, 13, x1, 720, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7ffbffff, 0xfffffffffff7ffff, 1, x1, 728, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x7ff7, 0xffffffffffefffff, 17, x1, 736, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1ffbff, 0xffffffffffdfffff, 11, x1, 744, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1ff7ff, 0xffffffffffbfffff, 11, x1, 752, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:12
TEST_IMM_OP( sraiw, x11, x10, 0xff7ff, 0xffffffffff7fffff, 12, x1, 760, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:10
TEST_IMM_OP( sraiw, x11, x10, 0x3effff, 0xfffffffffbffffff, 10, x1, 768, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7bffffff, 0xfffffffff7ffffff, 1, x1, 776, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:29
TEST_IMM_OP( sraiw, x11, x10, 0x7, 0xffffffffefffffff, 29, x1, 784, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:31
TEST_IMM_OP( sraiw, x11, x10, 0x1, 0xffffffffbfffffff, 31, x1, 792, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:16
TEST_IMM_OP( sraiw, x11, x10, 0x7fff, 0xffffffff7fffffff, 16, x1, 800, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:5
TEST_IMM_OP( sraiw, x11, x10, 0x7ffffff, 0xfffffffeffffffff, 5, x1, 808, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x3, 0xfffffffdffffffff, 30, x1, 816, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:17
TEST_IMM_OP( sraiw, x11, x10, 0x7fff, 0xfffffffbffffffff, 17, x1, 824, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x1f, 0xfffffff7ffffffff, 27, x1, 832, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0xfffffff, 0xffffffefffffffff, 4, x1, 840, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:27
TEST_IMM_OP( sraiw, x11, x10, 0x1f, 0xffffffdfffffffff, 27, x1, 848, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffff, 0xffffffbfffffffff, 11, x1, 856, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:11
TEST_IMM_OP( sraiw, x11, x10, 0x1fffff, 0xffffff7fffffffff, 11, x1, 864, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:13
TEST_IMM_OP( sraiw, x11, x10, 0x7ffff, 0xfffffeffffffffff, 13, x1, 872, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:30
TEST_IMM_OP( sraiw, x11, x10, 0x3, 0xffffffffdfffffff, 30, x1, 880, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( sraiw, x11, x10, 0x0, 0x0000000000000004, 4, x1, 888, x3)

# opcode: sraiw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:1
TEST_IMM_OP( sraiw, x11, x10, 0x7f7fffff, 0xfffffffffeffffff, 1, x1, 896, x3)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x2_1:
    .fill 22*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 113*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
