
#This assembly file tests the srliw instruction of the RISC-V I extension for the srliw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",srliw)

la x16,signature_x16_1

# opcode: srliw ; op1:x22; dest:x22; op1val:0xffbfffffffffffff;  immval:21
TEST_IMM_OP( srliw, x22, x22, 0x7ff, 0xffbfffffffffffff, 21, x16, 0, x11)

# opcode: srliw ; op1:x30; dest:x20; op1val:0x0000000000000003;  immval:10
TEST_IMM_OP( srliw, x20, x30, 0x0, 0x0000000000000003, 10, x16, 8, x11)

# opcode: srliw ; op1:x19; dest:x26; op1val:0xffffffdfffffffff;  immval:0
TEST_IMM_OP( srliw, x26, x19, 0xffffffff, 0xffffffdfffffffff, 0, x16, 16, x11)

# opcode: srliw ; op1:x3; dest:x5; op1val:0x0000000004000000;  immval:0
TEST_IMM_OP( srliw, x5, x3, 0x4000000, 0x0000000004000000, 0, x16, 24, x11)

# opcode: srliw ; op1:x8; dest:x24; op1val:0xffffffefffffffff;  immval:31
TEST_IMM_OP( srliw, x24, x8, 0x1, 0xffffffefffffffff, 31, x16, 32, x11)

# opcode: srliw ; op1:x24; dest:x31; op1val:0x0000000000000200;  immval:31
TEST_IMM_OP( srliw, x31, x24, 0x0, 0x0000000000000200, 31, x16, 40, x11)

# opcode: srliw ; op1:x26; dest:x12; op1val:0x0000000000000010;  immval:16
TEST_IMM_OP( srliw, x12, x26, 0x0, 0x0000000000000010, 16, x16, 48, x11)

# opcode: srliw ; op1:x20; dest:x29; op1val:0x8000000000000000;  immval:17
TEST_IMM_OP( srliw, x29, x20, 0x0, 0x8000000000000000, 17, x16, 56, x11)

# opcode: srliw ; op1:x2; dest:x23; op1val:0x0000000000000000;  immval:6
TEST_IMM_OP( srliw, x23, x2, 0x0, 0x0000000000000000, 6, x16, 64, x11)

# opcode: srliw ; op1:x6; dest:x9; op1val:0x7fffffffffffffff;  immval:16
TEST_IMM_OP( srliw, x9, x6, 0xffff, 0x7fffffffffffffff, 16, x16, 72, x11)

# opcode: srliw ; op1:x17; dest:x1; op1val:0x0000000000000001;  immval:12
TEST_IMM_OP( srliw, x1, x17, 0x0, 0x0000000000000001, 12, x16, 80, x11)

# opcode: srliw ; op1:x15; dest:x7; op1val:0xffffffffffffbfff;  immval:1
TEST_IMM_OP( srliw, x7, x15, 0x7fffdfff, 0xffffffffffffbfff, 1, x16, 88, x11)

# opcode: srliw ; op1:x4; dest:x13; op1val:0xfffffffffffffeff;  immval:2
TEST_IMM_OP( srliw, x13, x4, 0x3fffffbf, 0xfffffffffffffeff, 2, x16, 96, x11)

# opcode: srliw ; op1:x10; dest:x14; op1val:0x0080000000000000;  immval:4
TEST_IMM_OP( srliw, x14, x10, 0x0, 0x0080000000000000, 4, x16, 104, x11)

# opcode: srliw ; op1:x7; dest:x21; op1val:0xfffffffffffffff9;  immval:8
TEST_IMM_OP( srliw, x21, x7, 0xffffff, 0xfffffffffffffff9, 8, x16, 112, x11)

# opcode: srliw ; op1:x25; dest:x18; op1val:0x0000000020000000;  immval:30
TEST_IMM_OP( srliw, x18, x25, 0x0, 0x0000000020000000, 30, x16, 120, x11)

# opcode: srliw ; op1:x11; dest:x15; op1val:0x0002000000000000;  immval:29
TEST_IMM_OP( srliw, x15, x11, 0x0, 0x0002000000000000, 29, x16, 128, x20)
la x7,signature_x7_0

# opcode: srliw ; op1:x29; dest:x11; op1val:0x0000000000000006;  immval:27
TEST_IMM_OP( srliw, x11, x29, 0x0, 0x0000000000000006, 27, x7, 0, x20)

# opcode: srliw ; op1:x21; dest:x19; op1val:0xfffeffffffffffff;  immval:23
TEST_IMM_OP( srliw, x19, x21, 0x1ff, 0xfffeffffffffffff, 23, x7, 8, x20)

# opcode: srliw ; op1:x5; dest:x17; op1val:0x0000000000004000;  immval:15
TEST_IMM_OP( srliw, x17, x5, 0x0, 0x0000000000004000, 15, x7, 16, x20)

# opcode: srliw ; op1:x23; dest:x8; op1val:0x0000000000000002;  immval:1
TEST_IMM_OP( srliw, x8, x23, 0x1, 0x0000000000000002, 1, x7, 24, x20)

# opcode: srliw ; op1:x16; dest:x3; op1val:0x0000000000000004;  immval:18
TEST_IMM_OP( srliw, x3, x16, 0x0, 0x0000000000000004, 18, x7, 32, x20)

# opcode: srliw ; op1:x13; dest:x27; op1val:0x0000000000000008;  immval:23
TEST_IMM_OP( srliw, x27, x13, 0x0, 0x0000000000000008, 23, x7, 40, x20)

# opcode: srliw ; op1:x1; dest:x4; op1val:0x0000000000000020;  immval:4
TEST_IMM_OP( srliw, x4, x1, 0x2, 0x0000000000000020, 4, x7, 48, x20)

# opcode: srliw ; op1:x27; dest:x0; op1val:0x0000000000000040;  immval:1
TEST_IMM_OP( srliw, x0, x27, 0x20, 0x0000000000000040, 1, x7, 56, x20)

# opcode: srliw ; op1:x31; dest:x30; op1val:0x0000000000000080;  immval:6
TEST_IMM_OP( srliw, x30, x31, 0x2, 0x0000000000000080, 6, x7, 64, x20)

# opcode: srliw ; op1:x0; dest:x25; op1val:0x0000000000000100;  immval:8
TEST_IMM_OP( srliw, x25, x0, 0x1, 0x0000000000000100, 8, x7, 72, x20)

# opcode: srliw ; op1:x14; dest:x28; op1val:0x0000000000000400;  immval:12
TEST_IMM_OP( srliw, x28, x14, 0x0, 0x0000000000000400, 12, x7, 80, x20)

# opcode: srliw ; op1:x18; dest:x6; op1val:0x0000000000000800;  immval:1
TEST_IMM_OP( srliw, x6, x18, 0x400, 0x0000000000000800, 1, x7, 88, x20)

# opcode: srliw ; op1:x28; dest:x16; op1val:0x0000000000001000;  immval:6
TEST_IMM_OP( srliw, x16, x28, 0x40, 0x0000000000001000, 6, x7, 96, x20)

# opcode: srliw ; op1:x9; dest:x2; op1val:0x0000000000002000;  immval:1
TEST_IMM_OP( srliw, x2, x9, 0x1000, 0x0000000000002000, 1, x7, 104, x20)

# opcode: srliw ; op1:x12; dest:x10; op1val:0x0000000000008000;  immval:13
TEST_IMM_OP( srliw, x10, x12, 0x4, 0x0000000000008000, 13, x7, 112, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x2, 0x0000000000010000, 15, x7, 120, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x10000, 0x0000000000020000, 1, x7, 128, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x2, 0x0000000000040000, 17, x7, 136, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x8000, 0x0000000000080000, 4, x7, 144, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x20, 0x0000000000100000, 15, x7, 152, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000000200000, 23, x7, 160, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0x4000, 0x0000000000400000, 8, x7, 168, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x40, 0x0000000000800000, 17, x7, 176, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x20000, 0x0000000001000000, 7, x7, 184, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x8000, 0x0000000002000000, 10, x7, 192, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x4000000, 0x0000000008000000, 1, x7, 200, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x800000, 0x0000000010000000, 5, x7, 208, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x100000, 0x0000000040000000, 10, x7, 216, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x2000000, 0x0000000080000000, 6, x7, 224, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000100000000, 30, x7, 232, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000200000000, 13, x7, 240, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000400000000, 16, x7, 248, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000000800000000, 9, x7, 256, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000001000000000, 4, x7, 264, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000002000000000, 0, x7, 272, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000004000000000, 29, x7, 280, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000008000000000, 9, x7, 288, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000010000000000, 17, x7, 296, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000020000000000, 16, x7, 304, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000040000000000, 31, x7, 312, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000080000000000, 5, x7, 320, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000100000000000, 31, x7, 328, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000200000000000, 11, x7, 336, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000400000000000, 17, x7, 344, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:12
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0000800000000000, 12, x7, 352, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0001000000000000, 7, x7, 360, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0004000000000000, 7, x7, 368, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0008000000000000, 8, x7, 376, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0010000000000000, 6, x7, 384, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0020000000000000, 23, x7, 392, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0040000000000000, 4, x7, 400, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0100000000000000, 13, x7, 408, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0200000000000000, 13, x7, 416, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0400000000000000, 18, x7, 424, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3ffff, 0xfffffdffffffffff, 14, x7, 432, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x3fff, 0xfffffbffffffffff, 18, x7, 440, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xfffff7ffffffffff, 4, x7, 448, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3ffff, 0xffffefffffffffff, 14, x7, 456, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:3
TEST_IMM_OP( srliw, x11, x10, 0x1fffffff, 0xffffdfffffffffff, 3, x7, 464, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x7ffffff, 0xffffbfffffffffff, 5, x7, 472, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x3, 0xffff7fffffffffff, 30, x7, 480, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:3
TEST_IMM_OP( srliw, x11, x10, 0x1fffffff, 0xfffdffffffffffff, 3, x7, 488, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0xffffffff, 0xfffbffffffffffff, 0, x7, 496, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xfff7ffffffffffff, 19, x7, 504, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x3fff, 0xffefffffffffffff, 18, x7, 512, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x1ffffff, 0xffdfffffffffffff, 7, x7, 520, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x1f, 0xff7fffffffffffff, 27, x7, 528, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x7ffffff, 0xfeffffffffffffff, 5, x7, 536, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x1ffffff, 0xfdffffffffffffff, 7, x7, 544, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xfbffffffffffffff, 4, x7, 552, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0xffffffff, 0xf7ffffffffffffff, 0, x7, 560, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x1ff, 0xefffffffffffffff, 23, x7, 568, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xdfffffffffffffff, 4, x7, 576, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x1ffff, 0xbfffffffffffffff, 15, x7, 584, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0x55555555, 0x5555555555555555, 0, x7, 592, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xaaaaaaa, 0xaaaaaaaaaaaaaaaa, 4, x7, 600, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:23
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x0800000000000000, 23, x7, 608, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x1000000000000000, 4, x7, 616, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x2000000000000000, 9, x7, 624, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x0, 0x4000000000000000, 15, x7, 632, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xfffffffffffffffe, 19, x7, 640, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:31
TEST_IMM_OP( srliw, x11, x10, 0x1, 0xfffffffffffffffd, 31, x7, 648, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x3ffffffe, 0xfffffffffffffffb, 2, x7, 656, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:0
TEST_IMM_OP( srliw, x11, x10, 0xfffffff7, 0xfffffffffffffff7, 0, x7, 664, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:14
TEST_IMM_OP( srliw, x11, x10, 0x3ffff, 0xffffffffffffffef, 14, x7, 672, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:2
TEST_IMM_OP( srliw, x11, x10, 0x3ffffff7, 0xffffffffffffffdf, 2, x7, 680, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:19
TEST_IMM_OP( srliw, x11, x10, 0x1fff, 0xffffffffffffffbf, 19, x7, 688, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:16
TEST_IMM_OP( srliw, x11, x10, 0xffff, 0xffffffffffffff7f, 16, x7, 696, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:27
TEST_IMM_OP( srliw, x11, x10, 0x1f, 0xfffffffffffffdff, 27, x7, 704, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7ff, 0xfffffffffffffbff, 21, x7, 712, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x7ffffb, 0xfffffffffffff7ff, 9, x7, 720, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x3ffffb, 0xffffffffffffefff, 10, x7, 728, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0xffffdf, 0xffffffffffffdfff, 8, x7, 736, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:3
TEST_IMM_OP( srliw, x11, x10, 0x1fffefff, 0xffffffffffff7fff, 3, x7, 744, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:9
TEST_IMM_OP( srliw, x11, x10, 0x7fff7f, 0xfffffffffffeffff, 9, x7, 752, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x3fff7f, 0xfffffffffffdffff, 10, x7, 760, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x1fff7, 0xfffffffffffbffff, 15, x7, 768, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x3ffdfff, 0xfffffffffff7ffff, 6, x7, 776, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7ff7f, 0xffffffffffefffff, 13, x7, 784, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x3ff7, 0xffffffffffdfffff, 18, x7, 792, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:13
TEST_IMM_OP( srliw, x11, x10, 0x7fdff, 0xffffffffffbfffff, 13, x7, 800, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:29
TEST_IMM_OP( srliw, x11, x10, 0x7, 0xffffffffff7fffff, 29, x7, 808, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x7f7f, 0xfffffffffeffffff, 17, x7, 816, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x7effffff, 0xfffffffffdffffff, 1, x7, 824, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:7
TEST_IMM_OP( srliw, x11, x10, 0x1f7ffff, 0xfffffffffbffffff, 7, x7, 832, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:15
TEST_IMM_OP( srliw, x11, x10, 0x1efff, 0xfffffffff7ffffff, 15, x7, 840, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:30
TEST_IMM_OP( srliw, x11, x10, 0x3, 0xffffffffefffffff, 30, x7, 848, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:6
TEST_IMM_OP( srliw, x11, x10, 0x37fffff, 0xffffffffdfffffff, 6, x7, 856, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x5ffffff, 0xffffffffbfffffff, 5, x7, 864, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:10
TEST_IMM_OP( srliw, x11, x10, 0x1fffff, 0xffffffff7fffffff, 10, x7, 872, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:11
TEST_IMM_OP( srliw, x11, x10, 0x1fffff, 0xfffffffeffffffff, 11, x7, 880, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:4
TEST_IMM_OP( srliw, x11, x10, 0xfffffff, 0xfffffffdffffffff, 4, x7, 888, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0xffffff, 0xfffffffbffffffff, 8, x7, 896, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:18
TEST_IMM_OP( srliw, x11, x10, 0x3fff, 0xfffffff7ffffffff, 18, x7, 904, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:17
TEST_IMM_OP( srliw, x11, x10, 0x7fff, 0xffffffbfffffffff, 17, x7, 912, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:5
TEST_IMM_OP( srliw, x11, x10, 0x7ffffff, 0xffffff7fffffffff, 5, x7, 920, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7ff, 0xfffffeffffffffff, 21, x7, 928, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:21
TEST_IMM_OP( srliw, x11, x10, 0x7ff, 0xffbfffffffffffff, 21, x7, 936, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000000040;  immval:1
TEST_IMM_OP( srliw, x11, x10, 0x20, 0x0000000000000040, 1, x7, 944, x20)

# opcode: srliw ; op1:x10; dest:x11; op1val:0x0000000000000100;  immval:8
TEST_IMM_OP( srliw, x11, x10, 0x1, 0x0000000000000100, 8, x7, 952, x20)
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

signature_x16_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x16_1:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x7_0:
    .fill 120*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
