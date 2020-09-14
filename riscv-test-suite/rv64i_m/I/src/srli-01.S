
#This assembly file tests the srli instruction of the RISC-V I extension for the srli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srli)

la x22,signature_x22_1

# opcode: srli ; op1:x17; dest:x17; op1val:0xffffffffffffbfff;  immval:47
TEST_IMM_OP( srli, x17, x17, 0x0, 0xffffffffffffbfff, 47, x22, 0, x3)

# opcode: srli ; op1:x18; dest:x29; op1val:0x0000000080000000;  immval:13
TEST_IMM_OP( srli, x29, x18, 0x40000, 0x0000000080000000, 13, x22, 8, x3)

# opcode: srli ; op1:x23; dest:x8; op1val:0xfffff7ffffffffff;  immval:0
TEST_IMM_OP( srli, x8, x23, 0xffffffff, 0xfffff7ffffffffff, 0, x22, 16, x3)

# opcode: srli ; op1:x2; dest:x27; op1val:0x0000000080000000;  immval:0
TEST_IMM_OP( srli, x27, x2, 0x80000000, 0x0000000080000000, 0, x22, 24, x3)

# opcode: srli ; op1:x9; dest:x21; op1val:0xfffffffffffff7ff;  immval:63
TEST_IMM_OP( srli, x21, x9, 0x0, 0xfffffffffffff7ff, 63, x22, 32, x3)

# opcode: srli ; op1:x14; dest:x13; op1val:0x0000000000010000;  immval:63
TEST_IMM_OP( srli, x13, x14, 0x0, 0x0000000000010000, 63, x22, 40, x3)

# opcode: srli ; op1:x10; dest:x9; op1val:0x0000000000000010;  immval:16
TEST_IMM_OP( srli, x9, x10, 0x0, 0x0000000000000010, 16, x22, 48, x3)

# opcode: srli ; op1:x5; dest:x12; op1val:0x8000000000000000;  immval:6
TEST_IMM_OP( srli, x12, x5, 0x0, 0x8000000000000000, 6, x22, 56, x3)

# opcode: srli ; op1:x26; dest:x31; op1val:0x0000000000000000;  immval:1
TEST_IMM_OP( srli, x31, x26, 0x0, 0x0000000000000000, 1, x22, 64, x3)

# opcode: srli ; op1:x1; dest:x26; op1val:0x7fffffffffffffff;  immval:3
TEST_IMM_OP( srli, x26, x1, 0x1fffffff, 0x7fffffffffffffff, 3, x22, 72, x3)

# opcode: srli ; op1:x24; dest:x4; op1val:0x0000000000000001;  immval:61
TEST_IMM_OP( srli, x4, x24, 0x0, 0x0000000000000001, 61, x22, 80, x3)

# opcode: srli ; op1:x11; dest:x19; op1val:0x4000000000000000;  immval:2
TEST_IMM_OP( srli, x19, x11, 0x0, 0x4000000000000000, 2, x22, 88, x3)

# opcode: srli ; op1:x30; dest:x5; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( srli, x5, x30, 0x0, 0x0000000000000004, 4, x22, 96, x3)

# opcode: srli ; op1:x15; dest:x16; op1val:0xffffffffffffdfff;  immval:8
TEST_IMM_OP( srli, x16, x15, 0xffffdf, 0xffffffffffffdfff, 8, x22, 104, x3)

# opcode: srli ; op1:x29; dest:x18; op1val:0x0000000000000080;  immval:32
TEST_IMM_OP( srli, x18, x29, 0x0, 0x0000000000000080, 32, x22, 112, x3)

# opcode: srli ; op1:x13; dest:x28; op1val:0xffffffff7fffffff;  immval:62
TEST_IMM_OP( srli, x28, x13, 0x0, 0xffffffff7fffffff, 62, x22, 120, x3)

# opcode: srli ; op1:x4; dest:x0; op1val:0xfdffffffffffffff;  immval:59
TEST_IMM_OP( srli, x0, x4, 0x0, 0xfdffffffffffffff, 59, x22, 128, x3)

# opcode: srli ; op1:x20; dest:x1; op1val:0xff7fffffffffffff;  immval:55
TEST_IMM_OP( srli, x1, x20, 0x0, 0xff7fffffffffffff, 55, x22, 136, x3)

# opcode: srli ; op1:x16; dest:x2; op1val:0xfffffffffeffffff;  immval:31
TEST_IMM_OP( srli, x2, x16, 0x1, 0xfffffffffeffffff, 31, x22, 144, x3)

# opcode: srli ; op1:x27; dest:x20; op1val:0x0040000000000000;  immval:21
TEST_IMM_OP( srli, x20, x27, 0x0, 0x0040000000000000, 21, x22, 152, x3)

# opcode: srli ; op1:x0; dest:x7; op1val:0x0000000000000200;  immval:42
TEST_IMM_OP( srli, x7, x0, 0x0, 0x0000000000000200, 42, x22, 160, x3)

# opcode: srli ; op1:x6; dest:x3; op1val:0x0000000000000002;  immval:16
TEST_IMM_OP( srli, x3, x6, 0x0, 0x0000000000000002, 16, x22, 168, x2)
la x1,signature_x1_0

# opcode: srli ; op1:x7; dest:x23; op1val:0x0000000000000008;  immval:12
TEST_IMM_OP( srli, x23, x7, 0x0, 0x0000000000000008, 12, x1, 0, x2)

# opcode: srli ; op1:x31; dest:x25; op1val:0x0000000000000020;  immval:32
TEST_IMM_OP( srli, x25, x31, 0x0, 0x0000000000000020, 32, x1, 8, x2)

# opcode: srli ; op1:x19; dest:x14; op1val:0x0000000000000040;  immval:21
TEST_IMM_OP( srli, x14, x19, 0x0, 0x0000000000000040, 21, x1, 16, x2)

# opcode: srli ; op1:x25; dest:x6; op1val:0x0000000000000100;  immval:5
TEST_IMM_OP( srli, x6, x25, 0x8, 0x0000000000000100, 5, x1, 24, x2)

# opcode: srli ; op1:x22; dest:x15; op1val:0x0000000000000400;  immval:55
TEST_IMM_OP( srli, x15, x22, 0x0, 0x0000000000000400, 55, x1, 32, x2)

# opcode: srli ; op1:x8; dest:x22; op1val:0x0000000000000800;  immval:0
TEST_IMM_OP( srli, x22, x8, 0x800, 0x0000000000000800, 0, x1, 40, x2)

# opcode: srli ; op1:x12; dest:x30; op1val:0x0000000000001000;  immval:4
TEST_IMM_OP( srli, x30, x12, 0x100, 0x0000000000001000, 4, x1, 48, x2)

# opcode: srli ; op1:x28; dest:x10; op1val:0x0000000000002000;  immval:4
TEST_IMM_OP( srli, x10, x28, 0x200, 0x0000000000002000, 4, x1, 56, x2)

# opcode: srli ; op1:x21; dest:x11; op1val:0x0000000000004000;  immval:10
TEST_IMM_OP( srli, x11, x21, 0x10, 0x0000000000004000, 10, x1, 64, x2)

# opcode: srli ; op1:x3; dest:x24; op1val:0x0000000000008000;  immval:1
TEST_IMM_OP( srli, x24, x3, 0x4000, 0x0000000000008000, 1, x1, 72, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x4000, 0x0000000000020000, 3, x1, 80, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x2, 0x0000000000040000, 17, x1, 88, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x20, 0x0000000000080000, 14, x1, 96, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:4
TEST_IMM_OP( srli, x11, x10, 0x10000, 0x0000000000100000, 4, x1, 104, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:16
TEST_IMM_OP( srli, x11, x10, 0x20, 0x0000000000200000, 16, x1, 112, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x10, 0x0000000000400000, 18, x1, 120, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x40, 0x0000000000800000, 17, x1, 128, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x4000, 0x0000000001000000, 10, x1, 136, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x400000, 0x0000000002000000, 3, x1, 144, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:4
TEST_IMM_OP( srli, x11, x10, 0x400000, 0x0000000004000000, 4, x1, 152, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x200, 0x0000000008000000, 18, x1, 160, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:8
TEST_IMM_OP( srli, x11, x10, 0x100000, 0x0000000010000000, 8, x1, 168, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x1000, 0x0000000020000000, 17, x1, 176, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:15
TEST_IMM_OP( srli, x11, x10, 0x8000, 0x0000000040000000, 15, x1, 184, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000100000000, 32, x1, 192, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:0
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000200000000, 0, x1, 200, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000400000000, 32, x1, 208, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000800000000, 59, x1, 216, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:13
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000001000000000, 13, x1, 224, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000002000000000, 6, x1, 232, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:2
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000004000000000, 2, x1, 240, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000008000000000, 42, x1, 248, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000010000000000, 62, x1, 256, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:4
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000020000000000, 4, x1, 264, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000040000000000, 42, x1, 272, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000080000000000, 19, x1, 280, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000100000000000, 42, x1, 288, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000200000000000, 32, x1, 296, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000400000000000, 17, x1, 304, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000800000000000, 63, x1, 312, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:8
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0001000000000000, 8, x1, 320, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:0
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0002000000000000, 0, x1, 328, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0004000000000000, 47, x1, 336, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0008000000000000, 59, x1, 344, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:3
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0010000000000000, 3, x1, 352, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0020000000000000, 61, x1, 360, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:4
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0080000000000000, 4, x1, 368, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xffffff7fffffffff, 12, x1, 376, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xfffffeffffffffff, 12, x1, 384, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffdffffffffff, 61, x1, 392, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffbffffffffff, 62, x1, 400, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1ffffff, 0xffffefffffffffff, 7, x1, 408, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xffffff, 0xffffdfffffffffff, 8, x1, 416, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xffffbfffffffffff, 12, x1, 424, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xffff, 0xffff7fffffffffff, 16, x1, 432, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:31
TEST_IMM_OP( srli, x11, x10, 0x1, 0xfffeffffffffffff, 31, x1, 440, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:6
TEST_IMM_OP( srli, x11, x10, 0x3ffffff, 0xfffdffffffffffff, 6, x1, 448, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffbffffffffffff, 32, x1, 456, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x3fffff, 0xfff7ffffffffffff, 10, x1, 464, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xffff, 0xffefffffffffffff, 16, x1, 472, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xffffff, 0xffdfffffffffffff, 8, x1, 480, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1fffff, 0xffbfffffffffffff, 11, x1, 488, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x7fffffff, 0xfeffffffffffffff, 1, x1, 496, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7ffffff, 0xfbffffffffffffff, 5, x1, 504, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0xf7ffffffffffffff, 42, x1, 512, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffff, 0xefffffffffffffff, 4, x1, 520, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffff, 0xdfffffffffffffff, 4, x1, 528, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:32
TEST_IMM_OP( srli, x11, x10, 0x0, 0xbfffffffffffffff, 32, x1, 536, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x2aaaaaaa, 0x5555555555555555, 1, x1, 544, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x155555, 0xaaaaaaaaaaaaaaaa, 11, x1, 552, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:9
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0100000000000000, 9, x1, 560, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0200000000000000, 11, x1, 568, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0400000000000000, 18, x1, 576, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:18
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0800000000000000, 18, x1, 584, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x0, 0x1000000000000000, 17, x1, 592, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0x2000000000000000, 59, x1, 600, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffffffe, 63, x1, 608, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffffffd, 63, x1, 616, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:16
TEST_IMM_OP( srli, x11, x10, 0xffff, 0xfffffffffffffffb, 16, x1, 624, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffffff7, 42, x1, 632, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:12
TEST_IMM_OP( srli, x11, x10, 0xfffff, 0xffffffffffffffef, 12, x1, 640, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7fffffe, 0xffffffffffffffdf, 5, x1, 648, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffffffffbf, 47, x1, 656, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:55
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffffffff7f, 55, x1, 664, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:0
TEST_IMM_OP( srli, x11, x10, 0xfffffeff, 0xfffffffffffffeff, 0, x1, 672, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x7ffffeff, 0xfffffffffffffdff, 1, x1, 680, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:63
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffffbff, 63, x1, 688, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:62
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffffffefff, 62, x1, 696, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:7
TEST_IMM_OP( srli, x11, x10, 0x1fffeff, 0xffffffffffff7fff, 7, x1, 704, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:55
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffeffff, 55, x1, 712, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffffdffff, 47, x1, 720, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x3ffef, 0xfffffffffffbffff, 14, x1, 728, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfffffffffff7ffff, 61, x1, 736, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1ffdff, 0xffffffffffefffff, 11, x1, 744, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffffdfffff, 42, x1, 752, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffffbfffff, 61, x1, 760, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:61
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffff7fffff, 61, x1, 768, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7eff, 0xfffffffffdffffff, 17, x1, 776, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:8
TEST_IMM_OP( srli, x11, x10, 0xfbffff, 0xfffffffffbffffff, 8, x1, 784, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:11
TEST_IMM_OP( srli, x11, x10, 0x1effff, 0xfffffffff7ffffff, 11, x1, 792, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:10
TEST_IMM_OP( srli, x11, x10, 0x3bffff, 0xffffffffefffffff, 10, x1, 800, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:14
TEST_IMM_OP( srli, x11, x10, 0x37fff, 0xffffffffdfffffff, 14, x1, 808, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffbfffffff, 47, x1, 816, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:1
TEST_IMM_OP( srli, x11, x10, 0x7fffffff, 0xfffffffeffffffff, 1, x1, 824, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:19
TEST_IMM_OP( srli, x11, x10, 0x1fff, 0xfffffffdffffffff, 19, x1, 832, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:17
TEST_IMM_OP( srli, x11, x10, 0x7fff, 0xfffffffbffffffff, 17, x1, 840, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7ffffff, 0xfffffff7ffffffff, 5, x1, 848, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:4
TEST_IMM_OP( srli, x11, x10, 0xfffffff, 0xffffffefffffffff, 4, x1, 856, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:5
TEST_IMM_OP( srli, x11, x10, 0x7ffffff, 0xffffffdfffffffff, 5, x1, 864, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:55
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffbfffffffff, 55, x1, 872, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:47
TEST_IMM_OP( srli, x11, x10, 0x0, 0xffffffffffffbfff, 47, x1, 880, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:59
TEST_IMM_OP( srli, x11, x10, 0x0, 0xfdffffffffffffff, 59, x1, 888, x2)

# opcode: srli ; op1:x10; dest:x11; op1val:0x0000000000000200;  immval:42
TEST_IMM_OP( srli, x11, x10, 0x0, 0x0000000000000200, 42, x1, 896, x2)
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

signature_x22_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x22_1:
    .fill 22*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 113*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
