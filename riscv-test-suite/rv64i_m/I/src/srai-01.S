
#This assembly file tests the srai instruction of the RISC-V I extension for the srai covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srai)

la x13,signature_x13_1

# opcode: srai ; op1:x9; dest:x9; op1val:0xfffffdffffffffff;  immval:10
TEST_IMM_OP( srai, x9, x9, 0x3fffff, 0xfffffdffffffffff, 10, x13, 0, x16)

# opcode: srai ; op1:x30; dest:x5; op1val:0x0000000000400000;  immval:17
TEST_IMM_OP( srai, x5, x30, 0x20, 0x0000000000400000, 17, x13, 8, x16)

# opcode: srai ; op1:x11; dest:x20; op1val:0xfffffffffff7ffff;  immval:0
TEST_IMM_OP( srai, x20, x11, 0xfff7ffff, 0xfffffffffff7ffff, 0, x13, 16, x16)

# opcode: srai ; op1:x3; dest:x7; op1val:0x0008000000000000;  immval:0
TEST_IMM_OP( srai, x7, x3, 0x0, 0x0008000000000000, 0, x13, 24, x16)

# opcode: srai ; op1:x8; dest:x6; op1val:0xffffbfffffffffff;  immval:63
TEST_IMM_OP( srai, x6, x8, 0x1, 0xffffbfffffffffff, 63, x13, 32, x16)

# opcode: srai ; op1:x28; dest:x17; op1val:0x0010000000000000;  immval:63
TEST_IMM_OP( srai, x17, x28, 0x0, 0x0010000000000000, 63, x13, 40, x16)

# opcode: srai ; op1:x14; dest:x12; op1val:0x0000000000000007;  immval:7
TEST_IMM_OP( srai, x12, x14, 0x0, 0x0000000000000007, 7, x13, 48, x16)

# opcode: srai ; op1:x1; dest:x19; op1val:0x8000000000000000;  immval:4
TEST_IMM_OP( srai, x19, x1, 0x0, 0x8000000000000000, 4, x13, 56, x16)

# opcode: srai ; op1:x6; dest:x15; op1val:0x0000000000000000;  immval:42
TEST_IMM_OP( srai, x15, x6, 0x0, 0x0000000000000000, 42, x13, 64, x16)

# opcode: srai ; op1:x20; dest:x26; op1val:0x7fffffffffffffff;  immval:6
TEST_IMM_OP( srai, x26, x20, 0x3ffffff, 0x7fffffffffffffff, 6, x13, 72, x16)

# opcode: srai ; op1:x10; dest:x18; op1val:0x0000000000000001;  immval:16
TEST_IMM_OP( srai, x18, x10, 0x0, 0x0000000000000001, 16, x13, 80, x16)

# opcode: srai ; op1:x25; dest:x24; op1val:0x0000000001000000;  immval:1
TEST_IMM_OP( srai, x24, x25, 0x800000, 0x0000000001000000, 1, x13, 88, x16)

# opcode: srai ; op1:x27; dest:x21; op1val:0x0000001000000000;  immval:2
TEST_IMM_OP( srai, x21, x27, 0x0, 0x0000001000000000, 2, x13, 96, x16)

# opcode: srai ; op1:x0; dest:x10; op1val:0x0000000040000000;  immval:8
TEST_IMM_OP( srai, x10, x0, 0x400000, 0x0000000040000000, 8, x13, 104, x16)

# opcode: srai ; op1:x4; dest:x25; op1val:0xffffffdfffffffff;  immval:32
TEST_IMM_OP( srai, x25, x4, 0xffffffff, 0xffffffdfffffffff, 32, x13, 112, x16)

# opcode: srai ; op1:x19; dest:x4; op1val:0xffffffffffffffff;  immval:62
TEST_IMM_OP( srai, x4, x19, 0x3, 0xffffffffffffffff, 62, x13, 120, x16)

# opcode: srai ; op1:x15; dest:x31; op1val:0x0000000001000000;  immval:61
TEST_IMM_OP( srai, x31, x15, 0x0, 0x0000000001000000, 61, x13, 128, x16)

# opcode: srai ; op1:x18; dest:x2; op1val:0xffffffffffffbfff;  immval:59
TEST_IMM_OP( srai, x2, x18, 0x1f, 0xffffffffffffbfff, 59, x13, 136, x16)

# opcode: srai ; op1:x17; dest:x8; op1val:0x0800000000000000;  immval:55
TEST_IMM_OP( srai, x8, x17, 0x0, 0x0800000000000000, 55, x13, 144, x16)

# opcode: srai ; op1:x31; dest:x14; op1val:0xfffffbffffffffff;  immval:47
TEST_IMM_OP( srai, x14, x31, 0x1ffff, 0xfffffbffffffffff, 47, x13, 152, x16)

# opcode: srai ; op1:x23; dest:x1; op1val:0xffffefffffffffff;  immval:31
TEST_IMM_OP( srai, x1, x23, 0x1, 0xffffefffffffffff, 31, x13, 160, x16)

# opcode: srai ; op1:x21; dest:x16; op1val:0xfbffffffffffffff;  immval:21
TEST_IMM_OP( srai, x16, x21, 0x7ff, 0xfbffffffffffffff, 21, x13, 168, x4)
la x1,signature_x1_0

# opcode: srai ; op1:x12; dest:x22; op1val:0x0000000000000002;  immval:9
TEST_IMM_OP( srai, x22, x12, 0x0, 0x0000000000000002, 9, x1, 0, x4)

# opcode: srai ; op1:x5; dest:x3; op1val:0x0000000000000004;  immval:61
TEST_IMM_OP( srai, x3, x5, 0x0, 0x0000000000000004, 61, x1, 8, x4)

# opcode: srai ; op1:x13; dest:x0; op1val:0x0000000000000008;  immval:0
TEST_IMM_OP( srai, x0, x13, 0x8, 0x0000000000000008, 0, x1, 16, x4)

# opcode: srai ; op1:x16; dest:x13; op1val:0x0000000000000010;  immval:21
TEST_IMM_OP( srai, x13, x16, 0x0, 0x0000000000000010, 21, x1, 24, x4)

# opcode: srai ; op1:x24; dest:x27; op1val:0x0000000000000020;  immval:31
TEST_IMM_OP( srai, x27, x24, 0x0, 0x0000000000000020, 31, x1, 32, x4)

# opcode: srai ; op1:x7; dest:x11; op1val:0x0000000000000040;  immval:10
TEST_IMM_OP( srai, x11, x7, 0x0, 0x0000000000000040, 10, x1, 40, x4)

# opcode: srai ; op1:x2; dest:x29; op1val:0x0000000000000080;  immval:19
TEST_IMM_OP( srai, x29, x2, 0x0, 0x0000000000000080, 19, x1, 48, x4)

# opcode: srai ; op1:x26; dest:x28; op1val:0x0000000000000100;  immval:47
TEST_IMM_OP( srai, x28, x26, 0x0, 0x0000000000000100, 47, x1, 56, x4)

# opcode: srai ; op1:x22; dest:x30; op1val:0x0000000000000200;  immval:2
TEST_IMM_OP( srai, x30, x22, 0x80, 0x0000000000000200, 2, x1, 64, x4)

# opcode: srai ; op1:x29; dest:x23; op1val:0x0000000000000400;  immval:4
TEST_IMM_OP( srai, x23, x29, 0x40, 0x0000000000000400, 4, x1, 72, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000000800;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000000800, 13, x1, 80, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000001000;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x800, 0x0000000000001000, 1, x1, 88, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x10, 0x0000000000002000, 9, x1, 96, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:32
TEST_IMM_OP( srai, x11, x10, 0x4000, 0x0000000000004000, 32, x1, 104, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:16
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000008000, 16, x1, 112, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x2000, 0x0000000000010000, 3, x1, 120, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x10, 0x0000000000020000, 13, x1, 128, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x100, 0x0000000000040000, 42, x1, 136, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x40, 0x0000000000080000, 13, x1, 144, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000000100000, 61, x1, 152, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x100, 0x0000000000200000, 13, x1, 160, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x4000, 0x0000000000800000, 9, x1, 168, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:13
TEST_IMM_OP( srai, x11, x10, 0x1000, 0x0000000002000000, 13, x1, 176, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x200000, 0x0000000004000000, 5, x1, 184, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:63
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000008000000, 63, x1, 192, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x2000, 0x0000000010000000, 15, x1, 200, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x1000000, 0x0000000020000000, 5, x1, 208, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x100, 0x0000000080000000, 55, x1, 216, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000100000000, 18, x1, 224, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000200000000, 10, x1, 232, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000400000000, 17, x1, 240, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:32
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000000800000000, 32, x1, 248, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000002000000000, 6, x1, 256, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000004000000000, 9, x1, 264, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000008000000000, 14, x1, 272, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000010000000000, 47, x1, 280, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000020000000000, 47, x1, 288, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000040000000000, 14, x1, 296, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000080000000000, 6, x1, 304, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000100000000000, 6, x1, 312, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:32
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000200000000000, 32, x1, 320, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000400000000000, 61, x1, 328, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0000800000000000, 15, x1, 336, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:63
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0001000000000000, 63, x1, 344, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0002000000000000, 31, x1, 352, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0004000000000000, 15, x1, 360, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:16
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0020000000000000, 16, x1, 368, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0040000000000000, 61, x1, 376, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0080000000000000, 0, x1, 384, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1fffff, 0xffffff7fffffffff, 11, x1, 392, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3ffffff, 0xfffffeffffffffff, 6, x1, 400, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:47
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xfffff7ffffffffff, 47, x1, 408, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xffffdfffffffffff, 15, x1, 416, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1fffff, 0xffff7fffffffffff, 11, x1, 424, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x7fff, 0xfffeffffffffffff, 17, x1, 432, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:11
TEST_IMM_OP( srai, x11, x10, 0x1fffff, 0xfffdffffffffffff, 11, x1, 440, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fff, 0xfffbffffffffffff, 18, x1, 448, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:62
TEST_IMM_OP( srai, x11, x10, 0x3, 0xfff7ffffffffffff, 62, x1, 456, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xffefffffffffffff, 5, x1, 464, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:42
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xffdfffffffffffff, 42, x1, 472, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:16
TEST_IMM_OP( srai, x11, x10, 0xffff, 0xffbfffffffffffff, 16, x1, 480, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffffff, 0xff7fffffffffffff, 4, x1, 488, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x7, 0xfeffffffffffffff, 61, x1, 496, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:0
TEST_IMM_OP( srai, x11, x10, 0xffffffff, 0xfdffffffffffffff, 0, x1, 504, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:5
TEST_IMM_OP( srai, x11, x10, 0x7ffffff, 0xf7ffffffffffffff, 5, x1, 512, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:9
TEST_IMM_OP( srai, x11, x10, 0x7fffff, 0xefffffffffffffff, 9, x1, 520, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fff, 0xdfffffffffffffff, 18, x1, 528, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xffffff, 0xbfffffffffffffff, 8, x1, 536, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:12
TEST_IMM_OP( srai, x11, x10, 0x55555, 0x5555555555555555, 12, x1, 544, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:16
TEST_IMM_OP( srai, x11, x10, 0xaaaa, 0xaaaaaaaaaaaaaaaa, 16, x1, 552, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0100000000000000, 15, x1, 560, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:12
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0200000000000000, 12, x1, 568, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:63
TEST_IMM_OP( srai, x11, x10, 0x0, 0x0400000000000000, 63, x1, 576, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x0, 0x1000000000000000, 55, x1, 584, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x0, 0x2000000000000000, 14, x1, 592, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x0, 0x4000000000000000, 59, x1, 600, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xfffffffffffffffe, 15, x1, 608, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:4
TEST_IMM_OP( srai, x11, x10, 0xfffffff, 0xfffffffffffffffd, 4, x1, 616, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xfffffffffffffffb, 59, x1, 624, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1ffffffe, 0xfffffffffffffff7, 3, x1, 632, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xffffffffffffffef, 15, x1, 640, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffff, 0xffffffffffffffdf, 14, x1, 648, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3fffffe, 0xffffffffffffffbf, 6, x1, 656, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x3ffff, 0xffffffffffffff7f, 14, x1, 664, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xfffffffffffffeff, 55, x1, 672, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xfffffffffffffdff, 21, x1, 680, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:19
TEST_IMM_OP( srai, x11, x10, 0x1fff, 0xfffffffffffffbff, 19, x1, 688, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7ff, 0xfffffffffffff7ff, 21, x1, 696, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:31
TEST_IMM_OP( srai, x11, x10, 0x1, 0xffffffffffffefff, 31, x1, 704, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:61
TEST_IMM_OP( srai, x11, x10, 0x7, 0xffffffffffffdfff, 61, x1, 712, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:32
TEST_IMM_OP( srai, x11, x10, 0xffff7fff, 0xffffffffffff7fff, 32, x1, 720, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xfffffffffffeffff, 59, x1, 728, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7ffeffff, 0xfffffffffffdffff, 1, x1, 736, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3ffe, 0xfffffffffffbffff, 18, x1, 744, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7ff7ffff, 0xffffffffffefffff, 1, x1, 752, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:7
TEST_IMM_OP( srai, x11, x10, 0x1ffbfff, 0xffffffffffdfffff, 7, x1, 760, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:21
TEST_IMM_OP( srai, x11, x10, 0x7fd, 0xffffffffffbfffff, 21, x1, 768, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:1
TEST_IMM_OP( srai, x11, x10, 0x7fbfffff, 0xffffffffff7fffff, 1, x1, 776, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:63
TEST_IMM_OP( srai, x11, x10, 0x1, 0xfffffffffeffffff, 63, x1, 784, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1f, 0xfffffffffdffffff, 59, x1, 792, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xfbffff, 0xfffffffffbffffff, 8, x1, 800, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:8
TEST_IMM_OP( srai, x11, x10, 0xf7ffff, 0xfffffffff7ffffff, 8, x1, 808, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:59
TEST_IMM_OP( srai, x11, x10, 0x1d, 0xffffffffefffffff, 59, x1, 816, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:14
TEST_IMM_OP( srai, x11, x10, 0x37fff, 0xffffffffdfffffff, 14, x1, 824, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:17
TEST_IMM_OP( srai, x11, x10, 0x5fff, 0xffffffffbfffffff, 17, x1, 832, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:2
TEST_IMM_OP( srai, x11, x10, 0x1fffffff, 0xffffffff7fffffff, 2, x1, 840, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:18
TEST_IMM_OP( srai, x11, x10, 0x3fff, 0xfffffffeffffffff, 18, x1, 848, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:12
TEST_IMM_OP( srai, x11, x10, 0xfffff, 0xfffffffdffffffff, 12, x1, 856, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:3
TEST_IMM_OP( srai, x11, x10, 0x1fffffff, 0xfffffffbffffffff, 3, x1, 864, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:55
TEST_IMM_OP( srai, x11, x10, 0x1ff, 0xfffffff7ffffffff, 55, x1, 872, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:15
TEST_IMM_OP( srai, x11, x10, 0x1ffff, 0xffffffefffffffff, 15, x1, 880, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:6
TEST_IMM_OP( srai, x11, x10, 0x3ffffff, 0xffffffbfffffffff, 6, x1, 888, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:10
TEST_IMM_OP( srai, x11, x10, 0x3fffff, 0xfffffdffffffffff, 10, x1, 896, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:8
TEST_IMM_OP( srai, x11, x10, 0x400000, 0x0000000040000000, 8, x1, 904, x4)

# opcode: srai ; op1:x10; dest:x11; op1val:0x0000000000000008;  immval:0
TEST_IMM_OP( srai, x11, x10, 0x8, 0x0000000000000008, 0, x1, 912, x4)
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
    .fill 22*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 115*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
