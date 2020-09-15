
#This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

la x9,signature_x9_1

# opcode: slli ; op1:x13; dest:x13; op1val:0xfffffffffffffff8;  immval:31
TEST_IMM_OP( slli, x13, x13, 0xfffffffc00000000, 0xfffffffffffffff8, 31, x9, 0, x12)

# opcode: slli ; op1:x17; dest:x8; op1val:0x0000000000800000;  immval:3
TEST_IMM_OP( slli, x8, x17, 0x4000000, 0x0000000000800000, 3, x9, 8, x12)

# opcode: slli ; op1:x8; dest:x20; op1val:0xffffffffffffffef;  immval:0
TEST_IMM_OP( slli, x20, x8, 0xffffffffffffffef, 0xffffffffffffffef, 0, x9, 16, x12)

# opcode: slli ; op1:x25; dest:x11; op1val:0x0000000000010000;  immval:0
TEST_IMM_OP( slli, x11, x25, 0x10000, 0x0000000000010000, 0, x9, 24, x12)

# opcode: slli ; op1:x24; dest:x31; op1val:0xffffffffffbfffff;  immval:63
TEST_IMM_OP( slli, x31, x24, 0x8000000000000000, 0xffffffffffbfffff, 63, x9, 32, x12)

# opcode: slli ; op1:x15; dest:x27; op1val:0x0000002000000000;  immval:63
TEST_IMM_OP( slli, x27, x15, 0x0, 0x0000002000000000, 63, x9, 40, x12)

# opcode: slli ; op1:x21; dest:x1; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( slli, x1, x21, 0x40, 0x0000000000000004, 4, x9, 48, x12)

# opcode: slli ; op1:x2; dest:x22; op1val:0x8000000000000000;  immval:55
TEST_IMM_OP( slli, x22, x2, 0x0, 0x8000000000000000, 55, x9, 56, x12)

# opcode: slli ; op1:x1; dest:x29; op1val:0x0000000000000000;  immval:32
TEST_IMM_OP( slli, x29, x1, 0x0, 0x0000000000000000, 32, x9, 64, x12)

# opcode: slli ; op1:x30; dest:x4; op1val:0x7fffffffffffffff;  immval:31
TEST_IMM_OP( slli, x4, x30, 0xffffffff80000000, 0x7fffffffffffffff, 31, x9, 72, x12)

# opcode: slli ; op1:x19; dest:x5; op1val:0x0000000000000001;  immval:21
TEST_IMM_OP( slli, x5, x19, 0x200000, 0x0000000000000001, 21, x9, 80, x12)

# opcode: slli ; op1:x0; dest:x30; op1val:0xffffffffffffffef;  immval:1
TEST_IMM_OP( slli, x30, x0, 0xffffffffffffffde, 0xffffffffffffffef, 1, x9, 88, x12)

# opcode: slli ; op1:x11; dest:x28; op1val:0xfffffffffdffffff;  immval:2
TEST_IMM_OP( slli, x28, x11, 0xfffffffff7fffffc, 0xfffffffffdffffff, 2, x9, 96, x12)

# opcode: slli ; op1:x10; dest:x3; op1val:0x0000000000000009;  immval:8
TEST_IMM_OP( slli, x3, x10, 0x900, 0x0000000000000009, 8, x9, 104, x12)

# opcode: slli ; op1:x5; dest:x18; op1val:0xffffffefffffffff;  immval:16
TEST_IMM_OP( slli, x18, x5, 0xffefffffffff0000, 0xffffffefffffffff, 16, x9, 112, x12)

# opcode: slli ; op1:x31; dest:x2; op1val:0xffffdfffffffffff;  immval:62
TEST_IMM_OP( slli, x2, x31, 0xc000000000000000, 0xffffdfffffffffff, 62, x9, 120, x12)

# opcode: slli ; op1:x28; dest:x6; op1val:0x0000000000000007;  immval:61
TEST_IMM_OP( slli, x6, x28, 0xe000000000000000, 0x0000000000000007, 61, x9, 128, x12)

# opcode: slli ; op1:x26; dest:x21; op1val:0x0000000800000000;  immval:59
TEST_IMM_OP( slli, x21, x26, 0x0, 0x0000000800000000, 59, x9, 136, x12)

# opcode: slli ; op1:x14; dest:x25; op1val:0xffffffffffdfffff;  immval:47
TEST_IMM_OP( slli, x25, x14, 0xffff800000000000, 0xffffffffffdfffff, 47, x9, 144, x12)

# opcode: slli ; op1:x27; dest:x7; op1val:0xfffffffffffbffff;  immval:42
TEST_IMM_OP( slli, x7, x27, 0xeffffc0000000000, 0xfffffffffffbffff, 42, x9, 152, x12)

# opcode: slli ; op1:x29; dest:x26; op1val:0x0000000000000002;  immval:7
TEST_IMM_OP( slli, x26, x29, 0x100, 0x0000000000000002, 7, x9, 160, x2)

# opcode: slli ; op1:x20; dest:x0; op1val:0x0000000000000008;  immval:0
TEST_IMM_OP( slli, x0, x20, 0x8, 0x0000000000000008, 0, x9, 168, x2)

# opcode: slli ; op1:x3; dest:x14; op1val:0x0000000000000010;  immval:0
TEST_IMM_OP( slli, x14, x3, 0x10, 0x0000000000000010, 0, x9, 176, x2)

# opcode: slli ; op1:x4; dest:x19; op1val:0x0000000000000020;  immval:13
TEST_IMM_OP( slli, x19, x4, 0x40000, 0x0000000000000020, 13, x9, 184, x2)

# opcode: slli ; op1:x12; dest:x15; op1val:0x0000000000000040;  immval:42
TEST_IMM_OP( slli, x15, x12, 0x1000000000000, 0x0000000000000040, 42, x9, 192, x2)
la x1,signature_x1_0

# opcode: slli ; op1:x16; dest:x9; op1val:0x0000000000000080;  immval:15
TEST_IMM_OP( slli, x9, x16, 0x400000, 0x0000000000000080, 15, x1, 0, x2)

# opcode: slli ; op1:x9; dest:x12; op1val:0x0000000000000100;  immval:12
TEST_IMM_OP( slli, x12, x9, 0x100000, 0x0000000000000100, 12, x1, 8, x2)

# opcode: slli ; op1:x18; dest:x16; op1val:0x0000000000000200;  immval:7
TEST_IMM_OP( slli, x16, x18, 0x10000, 0x0000000000000200, 7, x1, 16, x2)

# opcode: slli ; op1:x7; dest:x24; op1val:0x0000000000000400;  immval:16
TEST_IMM_OP( slli, x24, x7, 0x4000000, 0x0000000000000400, 16, x1, 24, x2)

# opcode: slli ; op1:x6; dest:x17; op1val:0x0000000000000800;  immval:10
TEST_IMM_OP( slli, x17, x6, 0x200000, 0x0000000000000800, 10, x1, 32, x2)

# opcode: slli ; op1:x22; dest:x23; op1val:0x0000000000001000;  immval:61
TEST_IMM_OP( slli, x23, x22, 0x0, 0x0000000000001000, 61, x1, 40, x2)

# opcode: slli ; op1:x23; dest:x10; op1val:0x0000000000002000;  immval:7
TEST_IMM_OP( slli, x10, x23, 0x100000, 0x0000000000002000, 7, x1, 48, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:18
TEST_IMM_OP( slli, x11, x10, 0x100000000, 0x0000000000004000, 18, x1, 56, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:59
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000008000, 59, x1, 64, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000020000, 61, x1, 72, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x2000000000000, 0x0000000000040000, 31, x1, 80, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:18
TEST_IMM_OP( slli, x11, x10, 0x2000000000, 0x0000000000080000, 18, x1, 88, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x8000000000000, 0x0000000000100000, 31, x1, 96, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x10000000000, 0x0000000000200000, 19, x1, 104, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:59
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000400000, 59, x1, 112, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:62
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000001000000, 62, x1, 120, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:6
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0x0000000002000000, 6, x1, 128, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:12
TEST_IMM_OP( slli, x11, x10, 0x4000000000, 0x0000000004000000, 12, x1, 136, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:59
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000008000000, 59, x1, 144, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x800000000, 0x0000000010000000, 7, x1, 152, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000020000000, 61, x1, 160, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x2000000000000, 0x0000000040000000, 19, x1, 168, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x1000000000000, 0x0000000080000000, 17, x1, 176, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:5
TEST_IMM_OP( slli, x11, x10, 0x2000000000, 0x0000000100000000, 5, x1, 184, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:9
TEST_IMM_OP( slli, x11, x10, 0x40000000000, 0x0000000200000000, 9, x1, 192, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:9
TEST_IMM_OP( slli, x11, x10, 0x80000000000, 0x0000000400000000, 9, x1, 200, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x1000000000, 0x0000001000000000, 0, x1, 208, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000004000000000, 61, x1, 216, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:10
TEST_IMM_OP( slli, x11, x10, 0x2000000000000, 0x0000008000000000, 10, x1, 224, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x100000000000, 0x0000010000000000, 4, x1, 232, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000020000000000, 61, x1, 240, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:14
TEST_IMM_OP( slli, x11, x10, 0x100000000000000, 0x0000040000000000, 14, x1, 248, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:6
TEST_IMM_OP( slli, x11, x10, 0x2000000000000, 0x0000080000000000, 6, x1, 256, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:55
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000100000000000, 55, x1, 264, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x800000000000, 0x0000200000000000, 2, x1, 272, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:42
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000400000000000, 42, x1, 280, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:5
TEST_IMM_OP( slli, x11, x10, 0x10000000000000, 0x0000800000000000, 5, x1, 288, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x1000000000000, 0x0001000000000000, 0, x1, 296, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:62
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0002000000000000, 62, x1, 304, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:42
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0004000000000000, 42, x1, 312, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:59
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0008000000000000, 59, x1, 320, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x1000000000000000, 0x0010000000000000, 8, x1, 328, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:9
TEST_IMM_OP( slli, x11, x10, 0x4000000000000000, 0x0020000000000000, 9, x1, 336, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x4000000000000000, 0x0040000000000000, 8, x1, 344, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:12
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0080000000000000, 12, x1, 352, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0100000000000000, 61, x1, 360, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0200000000000000, 63, x1, 368, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xfffffdfffffffffc, 0xffffff7fffffffff, 2, x1, 376, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:32
TEST_IMM_OP( slli, x11, x10, 0xffffffff00000000, 0xfffffeffffffffff, 32, x1, 384, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xfffdffffffffff00, 0xfffffdffffffffff, 8, x1, 392, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:59
TEST_IMM_OP( slli, x11, x10, 0xf800000000000000, 0xfffffbffffffffff, 59, x1, 400, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xfffbffffffffff80, 0xfffff7ffffffffff, 7, x1, 408, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:6
TEST_IMM_OP( slli, x11, x10, 0xfffbffffffffffc0, 0xffffefffffffffff, 6, x1, 416, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:42
TEST_IMM_OP( slli, x11, x10, 0xfffffc0000000000, 0xffffbfffffffffff, 42, x1, 424, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfffffffffff80000, 0xffff7fffffffffff, 19, x1, 432, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:61
TEST_IMM_OP( slli, x11, x10, 0xe000000000000000, 0xfffeffffffffffff, 61, x1, 440, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xffdffffffffffff0, 0xfffdffffffffffff, 4, x1, 448, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xdffffffffffff800, 0xfffbffffffffffff, 11, x1, 456, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xf7ffffffffffff00, 0xfff7ffffffffffff, 8, x1, 464, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfffffffffff80000, 0xffefffffffffffff, 19, x1, 472, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffff800, 0xffdfffffffffffff, 11, x1, 480, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfffffffffff80000, 0xffbfffffffffffff, 19, x1, 488, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffffe00, 0xff7fffffffffffff, 9, x1, 496, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x8000000000000000, 0xfeffffffffffffff, 63, x1, 504, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffffc00, 0xfdffffffffffffff, 10, x1, 512, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffe000, 0xfbffffffffffffff, 13, x1, 520, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:32
TEST_IMM_OP( slli, x11, x10, 0xffffffff00000000, 0xf7ffffffffffffff, 32, x1, 528, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffe0000, 0xefffffffffffffff, 17, x1, 536, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:42
TEST_IMM_OP( slli, x11, x10, 0xfffffc0000000000, 0xdfffffffffffffff, 42, x1, 544, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffffff0, 0xbfffffffffffffff, 4, x1, 552, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:31
TEST_IMM_OP( slli, x11, x10, 0xaaaaaaaa80000000, 0x5555555555555555, 31, x1, 560, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:6
TEST_IMM_OP( slli, x11, x10, 0xaaaaaaaaaaaaaa80, 0xaaaaaaaaaaaaaaaa, 6, x1, 568, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0400000000000000, 61, x1, 576, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0800000000000000, 17, x1, 584, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x0, 0x1000000000000000, 31, x1, 592, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:16
TEST_IMM_OP( slli, x11, x10, 0x0, 0x2000000000000000, 16, x1, 600, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:59
TEST_IMM_OP( slli, x11, x10, 0x0, 0x4000000000000000, 59, x1, 608, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffe000, 0xfffffffffffffffe, 12, x1, 616, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:55
TEST_IMM_OP( slli, x11, x10, 0xfe80000000000000, 0xfffffffffffffffd, 55, x1, 624, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xffffffffffff6000, 0xfffffffffffffffb, 13, x1, 632, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffffb80, 0xfffffffffffffff7, 7, x1, 640, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffdf000, 0xffffffffffffffdf, 12, x1, 648, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:6
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffefc0, 0xffffffffffffffbf, 6, x1, 656, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xffffffffefe00000, 0xffffffffffffff7f, 21, x1, 664, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffffdfe, 0xfffffffffffffeff, 1, x1, 672, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffbfe00, 0xfffffffffffffdff, 9, x1, 680, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:42
TEST_IMM_OP( slli, x11, x10, 0xffeffc0000000000, 0xfffffffffffffbff, 42, x1, 688, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xfffffffffff7ff00, 0xfffffffffffff7ff, 8, x1, 696, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:5
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffdffe0, 0xffffffffffffefff, 5, x1, 704, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0xffffefff80000000, 0xffffffffffffdfff, 31, x1, 712, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x8000000000000000, 0xffffffffffffbfff, 63, x1, 720, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfffffffbfff80000, 0xffffffffffff7fff, 19, x1, 728, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffeffff, 0xfffffffffffeffff, 0, x1, 736, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xffffffffffdffff0, 0xfffffffffffdffff, 4, x1, 744, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xfffffff7ffff0000, 0xfffffffffff7ffff, 16, x1, 752, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xfffffffdffffe000, 0xffffffffffefffff, 13, x1, 760, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xfffffffff7fffff0, 0xffffffffff7fffff, 4, x1, 768, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:47
TEST_IMM_OP( slli, x11, x10, 0xffff800000000000, 0xfffffffffeffffff, 47, x1, 776, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x8000000000000000, 0xfffffffffbffffff, 63, x1, 784, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xffffbffffff80000, 0xfffffffff7ffffff, 19, x1, 792, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xffffffff7ffffff8, 0xffffffffefffffff, 3, x1, 800, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xffffffdfffffff00, 0xffffffffdfffffff, 8, x1, 808, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xfff7ffffffe00000, 0xffffffffbfffffff, 21, x1, 816, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xffff7fffffff0000, 0xffffffff7fffffff, 16, x1, 824, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:61
TEST_IMM_OP( slli, x11, x10, 0xe000000000000000, 0xfffffffeffffffff, 61, x1, 832, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xffbfffffffe00000, 0xfffffffdffffffff, 21, x1, 840, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xffffffbffffffff0, 0xfffffffbffffffff, 4, x1, 848, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xffffbffffffff800, 0xfffffff7ffffffff, 11, x1, 856, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xffffffbffffffffe, 0xffffffdfffffffff, 1, x1, 864, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xff7ffffffffe0000, 0xffffffbfffffffff, 17, x1, 872, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffff8;  immval:31
TEST_IMM_OP( slli, x11, x10, 0xfffffffc00000000, 0xfffffffffffffff8, 31, x1, 880, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffffde, 0xffffffffffffffef, 1, x1, 888, x2)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000000008;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x8, 0x0000000000000008, 0, x1, 896, x2)
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
    .fill 25*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 113*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
