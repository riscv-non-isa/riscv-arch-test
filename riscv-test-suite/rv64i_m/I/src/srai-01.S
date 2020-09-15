
#This assembly file tests the srai instruction of the RISC-V I extension for the srai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)

la x10,signature_x10_1

# opcode: srai ; op1:x8; dest:x8; op1val:0xffffffffffbfffff;  immval:16
TEST_IMM_OP( srai, x8, x8, 0xffbf, 0xffffffffffbfffff, 16, x10, 0, x16)

# opcode: srai ; op1:x22; dest:x0; op1val:0x0000000000000800;  immval:21
TEST_IMM_OP( srai, x0, x22, 0x0, 0x0000000000000800, 21, x10, 8, x16)

# opcode: srai ; op1:x27; dest:x18; op1val:0xfffffffffffbffff;  immval:0
TEST_IMM_OP( srai, x18, x27, 0xfffbffff, 0xfffffffffffbffff, 0, x10, 16, x16)

# opcode: srai ; op1:x4; dest:x3; op1val:0x0000000100000000;  immval:0
TEST_IMM_OP( srai, x3, x4, 0x0, 0x0000000100000000, 0, x10, 24, x16)

# opcode: srai ; op1:x6; dest:x11; op1val:0xffffffffffbfffff;  immval:63
TEST_IMM_OP( srai, x11, x6, 0x1, 0xffffffffffbfffff, 63, x10, 32, x16)

# opcode: srai ; op1:x24; dest:x26; op1val:0x0000000000000002;  immval:63
TEST_IMM_OP( srai, x26, x24, 0x0, 0x0000000000000002, 63, x10, 40, x16)

# opcode: srai ; op1:x12; dest:x28; op1val:0x0000000000000001;  immval:1
TEST_IMM_OP( srai, x28, x12, 0x0, 0x0000000000000001, 1, x10, 48, x16)

# opcode: srai ; op1:x18; dest:x13; op1val:0x8000000000000000;  immval:7
TEST_IMM_OP( srai, x13, x18, 0x0, 0x8000000000000000, 7, x10, 56, x16)

# opcode: srai ; op1:x13; dest:x30; op1val:0x0000000000000000;  immval:17
TEST_IMM_OP( srai, x30, x13, 0x0, 0x0000000000000000, 17, x10, 64, x16)

# opcode: srai ; op1:x14; dest:x21; op1val:0x7fffffffffffffff;  immval:0
TEST_IMM_OP( srai, x21, x14, 0xffffffff, 0x7fffffffffffffff, 0, x10, 72, x16)

# opcode: srai ; op1:x30; dest:x1; op1val:0xbfffffffffffffff;  immval:2
TEST_IMM_OP( srai, x1, x30, 0x3fffffff, 0xbfffffffffffffff, 2, x10, 80, x16)

# opcode: srai ; op1:x29; dest:x31; op1val:0x8000000000000000;  immval:4
TEST_IMM_OP( srai, x31, x29, 0x0, 0x8000000000000000, 4, x10, 88, x16)

# opcode: srai ; op1:x5; dest:x7; op1val:0xffffffffffffffdf;  immval:8
TEST_IMM_OP( srai, x7, x5, 0xffffff, 0xffffffffffffffdf, 8, x10, 96, x16)

# opcode: srai ; op1:x11; dest:x9; op1val:0x0000000000004000;  immval:32
TEST_IMM_OP( srai, x9, x11, 0x4000, 0x0000000000004000, 32, x10, 104, x16)

# opcode: srai ; op1:x26; dest:x25; op1val:0xffffdfffffffffff;  immval:62
TEST_IMM_OP( srai, x25, x26, 0x3, 0xffffdfffffffffff, 62, x10, 112, x16)

# opcode: srai ; op1:x31; dest:x19; op1val:0x0000200000000000;  immval:61
TEST_IMM_OP( srai, x19, x31, 0x0, 0x0000200000000000, 61, x10, 120, x16)

# opcode: srai ; op1:x25; dest:x22; op1val:0xfffffbffffffffff;  immval:59
TEST_IMM_OP( srai, x22, x25, 0x1f, 0xfffffbffffffffff, 59, x10, 128, x16)

# opcode: srai ; op1:x21; dest:x29; op1val:0xffffffffbfffffff;  immval:55
TEST_IMM_OP( srai, x29, x21, 0x17f, 0xffffffffbfffffff, 55, x10, 136, x16)

# opcode: srai ; op1:x15; dest:x12; op1val:0xfffffffffffdffff;  immval:47
TEST_IMM_OP( srai, x12, x15, 0x1fffb, 0xfffffffffffdffff, 47, x10, 144, x16)

# opcode: srai ; op1:x2; dest:x23; op1val:0x0200000000000000;  immval:31
TEST_IMM_OP( srai, x23, x2, 0x0, 0x0200000000000000, 31, x10, 152, x16)

# opcode: srai ; op1:x9; dest:x5; op1val:0x2000000000000000;  immval:42
TEST_IMM_OP( srai, x5, x9, 0x0, 0x2000000000000000, 42, x10, 160, x8)

# opcode: srai ; op1:x16; dest:x4; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( srai, x4, x16, 0x0, 0x0000000000000004, 4, x10, 168, x8)
la x4,signature_x4_0

# opcode: srai ; op1:x7; dest:x10; op1val:0x0000000000000008;  immval:2
TEST_IMM_OP( srai, x10, x7, 0x2, 0x0000000000000008, 2, x4, 0, x8)

# opcode: srai ; op1:x20; dest:x15; op1val:0x0000000000000010;  immval:11
TEST_IMM_OP( srai, x15, x20, 0x0, 0x0000000000000010, 11, x4, 8, x8)

# opcode: srai ; op1:x0; dest:x14; op1val:0x0000000000000020;  immval:10
TEST_IMM_OP( srai, x14, x0, 0x0, 0x0000000000000020, 10, x4, 16, x8)

# opcode: srai ; op1:x1; dest:x6; op1val:0x0000000000000040;  immval:62
TEST_IMM_OP( srai, x6, x1, 0x0, 0x0000000000000040, 62, x4, 24, x8)

# opcode: srai ; op1:x23; dest:x24; op1val:0x0000000000000080;  immval:9
TEST_IMM_OP( srai, x24, x23, 0x0, 0x0000000000000080, 9, x4, 32, x8)

# opcode: srai ; op1:x3; dest:x17; op1val:0x0000000000000100;  immval:2
TEST_IMM_OP( srai, x17, x3, 0x40, 0x0000000000000100, 2, x4, 40, x8)

# opcode: srai ; op1:x17; dest:x27; op1val:0x0000000000000200;  immval:0
TEST_IMM_OP( srai, x27, x17, 0x200, 0x0000000000000200, 0, x4, 48, x8)

# opcode: srai ; op1:x28; dest:x2; op1val:0x0000000000000400;  immval:8
TEST_IMM_OP( srai, x2, x28, 0x4, 0x0000000000000400, 8, x4, 56, x8)

# opcode: srai ; op1:x10; dest:x20; op1val:0x0000000000001000;  immval:12
TEST_IMM_OP( srai, x20, x10, 0x1, 0x0000000000001000, 12, x4, 64, x8)

# opcode: srai ; op1:x19; dest:x16; op1val:0x0000000000002000;  immval:3
TEST_IMM_OP( srai, x16, x19, 0x400, 0x0000000000002000, 3, x4, 72, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x10, 0x0000000000008000, 11, x4, 80, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x2, 0x0000000000010000, 47, x4, 88, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x10000, 0x0000000000020000, 1, x4, 96, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x2, 0x0000000000040000, 17, x4, 104, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x20000, 0x0000000000080000, 2, x4, 112, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x80000, 0x0000000000100000, 1, x4, 120, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x80000, 0x0000000000200000, 2, x4, 128, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000400000, 59, x4, 136, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x2000, 0x0000000000800000, 42, x4, 144, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x40000, 0x0000000001000000, 6, x4, 152, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:8
TEST_IMM_OP( srai, x11, x10, 0x20000, 0x0000000002000000, 8, x4, 160, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000004000000, 31, x4, 168, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000008000000, 31, x4, 176, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x200, 0x0000000010000000, 19, x4, 184, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x80000, 0x0000000020000000, 42, x4, 192, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x20000000, 0x0000000040000000, 1, x4, 200, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:12
TEST_IMM_OP( srai, x11, x10, 0x80000, 0x0000000080000000, 12, x4, 208, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000200000000, 14, x4, 216, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000400000000, 62, x4, 224, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000800000000, 9, x4, 232, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000001000000000, 1, x4, 240, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000002000000000, 42, x4, 248, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000004000000000, 13, x4, 256, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000008000000000, 5, x4, 264, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000010000000000, 47, x4, 272, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000020000000000, 42, x4, 280, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000040000000000, 5, x4, 288, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000080000000000, 1, x4, 296, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:8
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000100000000000, 8, x4, 304, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000400000000000, 19, x4, 312, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000800000000000, 21, x4, 320, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0001000000000000, 47, x4, 328, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0002000000000000, 2, x4, 336, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0004000000000000, 31, x4, 344, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0008000000000000, 5, x4, 352, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0010000000000000, 0, x4, 360, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0020000000000000, 47, x4, 368, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0040000000000000, 5, x4, 376, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffff, 0xffffff7fffffffff, 14, x4, 384, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xfffffeffffffffff, 21, x4, 392, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1fffff, 0xfffffdffffffffff, 11, x4, 400, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xfffff7ffffffffff, 59, x4, 408, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:63
TEST_IMM_OP( srai, x11, x10, 0x1, 0xffffefffffffffff, 63, x4, 416, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x7, 0xffffbfffffffffff, 61, x4, 424, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xffff7fffffffffff, 21, x4, 432, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xffffffff, 0xfffeffffffffffff, 0, x4, 440, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xfffdffffffffffff, 31, x4, 448, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3fffffff, 0xfffbffffffffffff, 2, x4, 456, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffff, 0xfff7ffffffffffff, 14, x4, 464, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x3fffffff, 0xffefffffffffffff, 2, x4, 472, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xffdfffffffffffff, 62, x4, 480, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xffbfffffffffffff, 5, x4, 488, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xff7fffffffffffff, 62, x4, 496, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xfeffffffffffffff, 42, x4, 504, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:32
TEST_IMM_OP( srai, x11, x10, 0xffffffff, 0xfdffffffffffffff, 32, x4, 512, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x7fff, 0xfbffffffffffffff, 17, x4, 520, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xf7ffffffffffffff, 5, x4, 528, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x7fffff, 0xefffffffffffffff, 9, x4, 536, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7ffff, 0xdfffffffffffffff, 13, x4, 544, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x1555, 0x5555555555555555, 18, x4, 552, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x5, 0xaaaaaaaaaaaaaaaa, 61, x4, 560, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0080000000000000, 2, x4, 568, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0100000000000000, 4, x4, 576, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:16
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0400000000000000, 16, x4, 584, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0800000000000000, 7, x4, 592, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x0, 0x1000000000000000, 4, x4, 600, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:4
TEST_IMM_OP( srai, x11, x10, 0x0, 0x4000000000000000, 4, x4, 608, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7ffff, 0xfffffffffffffffe, 13, x4, 616, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xfffffffffffffffd, 62, x4, 624, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xfffffffffffffffb, 5, x4, 632, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xfffffffffffffff7, 19, x4, 640, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x7fff, 0xffffffffffffffef, 17, x4, 648, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffff, 0xffffffffffffffbf, 14, x4, 656, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x7ffff, 0xffffffffffffff7f, 13, x4, 664, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xfffffffffffffeff, 42, x4, 672, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:16
TEST_IMM_OP( srai, x11, x10, 0xffff, 0xfffffffffffffdff, 16, x4, 680, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xfffffffffffffbff, 15, x4, 688, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1ffffeff, 0xfffffffffffff7ff, 3, x4, 696, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xffffffffffffefff, 55, x4, 704, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xffffdf, 0xffffffffffffdfff, 8, x4, 712, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7fffdfff, 0xffffffffffffbfff, 1, x4, 720, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xffffffffffff7fff, 62, x4, 728, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffefff, 0xfffffffffffeffff, 4, x4, 736, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1ffefff, 0xfffffffffff7ffff, 7, x4, 744, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ff7fff, 0xffffffffffefffff, 5, x4, 752, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:32
TEST_IMM_OP( srai, x11, x10, 0xffdfffff, 0xffffffffffdfffff, 32, x4, 760, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3fdffff, 0xffffffffff7fffff, 6, x4, 768, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fbf, 0xfffffffffeffffff, 18, x4, 776, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfdfffff, 0xfffffffffdffffff, 4, x4, 784, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x1f7, 0xfffffffffbffffff, 55, x4, 792, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xf7fffff, 0xfffffffff7ffffff, 4, x4, 800, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x77f, 0xffffffffefffffff, 21, x4, 808, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x37ff, 0xffffffffdfffffff, 18, x4, 816, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x1fffff, 0xffffffff7fffffff, 42, x4, 824, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:32
TEST_IMM_OP( srai, x11, x10, 0xffffffff, 0xfffffffeffffffff, 32, x4, 832, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xfffffffdffffffff, 5, x4, 840, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xfffffffbffffffff, 12, x4, 848, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xfffffff7ffffffff, 62, x4, 856, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xffffffefffffffff, 5, x4, 864, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1fffffff, 0xffffffdfffffffff, 3, x4, 872, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7fffffff, 0xffffffbfffffffff, 1, x4, 880, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:16
TEST_IMM_OP( srai, x11, x10, 0xffbf, 0xffffffffffbfffff, 16, x4, 888, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000000800;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000000800, 21, x4, 896, x8)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000000020;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000000020, 10, x4, 904, x8)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x10_1:
    .fill 22*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 114*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
