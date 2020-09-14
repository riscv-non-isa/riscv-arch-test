
#This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

la x14,signature_x14_1

# opcode: slli ; op1:x4; dest:x4; op1val:0xfffdffffffffffff;  immval:18
TEST_IMM_OP( slli, x4, x4, 0xfffffffffffc0000, 0xfffdffffffffffff, 18, x14, 0, x16)

# opcode: slli ; op1:x7; dest:x9; op1val:0x7fffffffffffffff;  immval:12
TEST_IMM_OP( slli, x9, x7, 0xfffffffffffff000, 0x7fffffffffffffff, 12, x14, 8, x16)

# opcode: slli ; op1:x6; dest:x3; op1val:0xfffffffffffffffd;  immval:0
TEST_IMM_OP( slli, x3, x6, 0xfffffffffffffffd, 0xfffffffffffffffd, 0, x14, 16, x16)

# opcode: slli ; op1:x15; dest:x25; op1val:0x2000000000000000;  immval:0
TEST_IMM_OP( slli, x25, x15, 0x2000000000000000, 0x2000000000000000, 0, x14, 24, x16)

# opcode: slli ; op1:x25; dest:x29; op1val:0xffffffffffdfffff;  immval:63
TEST_IMM_OP( slli, x29, x25, 0x8000000000000000, 0xffffffffffdfffff, 63, x14, 32, x16)

# opcode: slli ; op1:x1; dest:x27; op1val:0x0000000000000200;  immval:63
TEST_IMM_OP( slli, x27, x1, 0x0, 0x0000000000000200, 63, x14, 40, x16)

# opcode: slli ; op1:x26; dest:x30; op1val:0x0000000000000009;  immval:9
TEST_IMM_OP( slli, x30, x26, 0x1200, 0x0000000000000009, 9, x14, 48, x16)

# opcode: slli ; op1:x12; dest:x1; op1val:0x8000000000000000;  immval:15
TEST_IMM_OP( slli, x1, x12, 0x0, 0x8000000000000000, 15, x14, 56, x16)

# opcode: slli ; op1:x28; dest:x5; op1val:0x0000000000000000;  immval:13
TEST_IMM_OP( slli, x5, x28, 0x0, 0x0000000000000000, 13, x14, 64, x16)

# opcode: slli ; op1:x24; dest:x10; op1val:0x0000000000000001;  immval:7
TEST_IMM_OP( slli, x10, x24, 0x80, 0x0000000000000001, 7, x14, 72, x16)

# opcode: slli ; op1:x17; dest:x31; op1val:0xfff7ffffffffffff;  immval:1
TEST_IMM_OP( slli, x31, x17, 0xffeffffffffffffe, 0xfff7ffffffffffff, 1, x14, 80, x16)

# opcode: slli ; op1:x27; dest:x20; op1val:0xfffffffffffffffb;  immval:2
TEST_IMM_OP( slli, x20, x27, 0xffffffffffffffec, 0xfffffffffffffffb, 2, x14, 88, x16)

# opcode: slli ; op1:x13; dest:x11; op1val:0x0000000000020000;  immval:4
TEST_IMM_OP( slli, x11, x13, 0x200000, 0x0000000000020000, 4, x14, 96, x16)

# opcode: slli ; op1:x2; dest:x19; op1val:0x0000008000000000;  immval:8
TEST_IMM_OP( slli, x19, x2, 0x800000000000, 0x0000008000000000, 8, x14, 104, x16)

# opcode: slli ; op1:x20; dest:x21; op1val:0x0000000000000000;  immval:16
TEST_IMM_OP( slli, x21, x20, 0x0, 0x0000000000000000, 16, x14, 112, x16)

# opcode: slli ; op1:x8; dest:x12; op1val:0x0000000040000000;  immval:32
TEST_IMM_OP( slli, x12, x8, 0x4000000000000000, 0x0000000040000000, 32, x14, 120, x16)

# opcode: slli ; op1:x21; dest:x18; op1val:0x7fffffffffffffff;  immval:62
TEST_IMM_OP( slli, x18, x21, 0xc000000000000000, 0x7fffffffffffffff, 62, x14, 128, x16)

# opcode: slli ; op1:x3; dest:x28; op1val:0xffff7fffffffffff;  immval:61
TEST_IMM_OP( slli, x28, x3, 0xe000000000000000, 0xffff7fffffffffff, 61, x14, 136, x4)

# opcode: slli ; op1:x30; dest:x7; op1val:0xfff7ffffffffffff;  immval:59
TEST_IMM_OP( slli, x7, x30, 0xf800000000000000, 0xfff7ffffffffffff, 59, x14, 144, x4)

# opcode: slli ; op1:x9; dest:x13; op1val:0x0020000000000000;  immval:55
TEST_IMM_OP( slli, x13, x9, 0x0, 0x0020000000000000, 55, x14, 152, x4)

# opcode: slli ; op1:x31; dest:x6; op1val:0xfffffffffffffdff;  immval:47
TEST_IMM_OP( slli, x6, x31, 0xfeff800000000000, 0xfffffffffffffdff, 47, x14, 160, x4)

# opcode: slli ; op1:x5; dest:x15; op1val:0x5555555555555555;  immval:31
TEST_IMM_OP( slli, x15, x5, 0xaaaaaaaa80000000, 0x5555555555555555, 31, x14, 168, x4)

# opcode: slli ; op1:x16; dest:x24; op1val:0x0000000000800000;  immval:21
TEST_IMM_OP( slli, x24, x16, 0x100000000000, 0x0000000000800000, 21, x14, 176, x4)
la x1,signature_x1_0

# opcode: slli ; op1:x18; dest:x17; op1val:0xfbffffffffffffff;  immval:42
TEST_IMM_OP( slli, x17, x18, 0xfffffc0000000000, 0xfbffffffffffffff, 42, x1, 0, x4)

# opcode: slli ; op1:x22; dest:x26; op1val:0x0000000000000002;  immval:42
TEST_IMM_OP( slli, x26, x22, 0x80000000000, 0x0000000000000002, 42, x1, 8, x4)

# opcode: slli ; op1:x11; dest:x14; op1val:0x0000000000000004;  immval:32
TEST_IMM_OP( slli, x14, x11, 0x400000000, 0x0000000000000004, 32, x1, 16, x4)

# opcode: slli ; op1:x19; dest:x16; op1val:0x0000000000000008;  immval:59
TEST_IMM_OP( slli, x16, x19, 0x4000000000000000, 0x0000000000000008, 59, x1, 24, x4)

# opcode: slli ; op1:x29; dest:x8; op1val:0x0000000000000010;  immval:59
TEST_IMM_OP( slli, x8, x29, 0x8000000000000000, 0x0000000000000010, 59, x1, 32, x4)

# opcode: slli ; op1:x10; dest:x2; op1val:0x0000000000000020;  immval:15
TEST_IMM_OP( slli, x2, x10, 0x100000, 0x0000000000000020, 15, x1, 40, x4)

# opcode: slli ; op1:x23; dest:x22; op1val:0x0000000000000040;  immval:10
TEST_IMM_OP( slli, x22, x23, 0x10000, 0x0000000000000040, 10, x1, 48, x4)

# opcode: slli ; op1:x14; dest:x0; op1val:0x0000000000000080;  immval:16
TEST_IMM_OP( slli, x0, x14, 0x800000, 0x0000000000000080, 16, x1, 56, x4)

# opcode: slli ; op1:x0; dest:x23; op1val:0x0000000000000100;  immval:7
TEST_IMM_OP( slli, x23, x0, 0x8000, 0x0000000000000100, 7, x1, 64, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000000400;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0x0000000000000400, 21, x1, 72, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000000800;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x8000, 0x0000000000000800, 4, x1, 80, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000001000;  immval:1
TEST_IMM_OP( slli, x11, x10, 0x2000, 0x0000000000001000, 1, x1, 88, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:42
TEST_IMM_OP( slli, x11, x10, 0x80000000000000, 0x0000000000002000, 42, x1, 96, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:55
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000004000, 55, x1, 104, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x400000, 0x0000000000008000, 7, x1, 112, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:12
TEST_IMM_OP( slli, x11, x10, 0x10000000, 0x0000000000010000, 12, x1, 120, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000040000, 61, x1, 128, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:14
TEST_IMM_OP( slli, x11, x10, 0x200000000, 0x0000000000080000, 14, x1, 136, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:16
TEST_IMM_OP( slli, x11, x10, 0x1000000000, 0x0000000000100000, 16, x1, 144, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x200000, 0x0000000000200000, 0, x1, 152, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x2000000, 0x0000000000400000, 3, x1, 160, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x80000000000, 0x0000000001000000, 19, x1, 168, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x100000000000000, 0x0000000002000000, 31, x1, 176, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x4000000, 0x0000000004000000, 0, x1, 184, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x400000000000, 0x0000000008000000, 19, x1, 192, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:1
TEST_IMM_OP( slli, x11, x10, 0x20000000, 0x0000000010000000, 1, x1, 200, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:47
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000020000000, 47, x1, 208, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000080000000, 61, x1, 216, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:47
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000100000000, 47, x1, 224, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x200000000, 0x0000000200000000, 0, x1, 232, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:5
TEST_IMM_OP( slli, x11, x10, 0x8000000000, 0x0000000400000000, 5, x1, 240, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:12
TEST_IMM_OP( slli, x11, x10, 0x800000000000, 0x0000000800000000, 12, x1, 248, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x200000000000000, 0x0000001000000000, 21, x1, 256, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:5
TEST_IMM_OP( slli, x11, x10, 0x40000000000, 0x0000002000000000, 5, x1, 264, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:5
TEST_IMM_OP( slli, x11, x10, 0x80000000000, 0x0000004000000000, 5, x1, 272, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000010000000000, 63, x1, 280, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x80000000000, 0x0000020000000000, 2, x1, 288, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x200000000000, 0x0000040000000000, 3, x1, 296, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000080000000000, 61, x1, 304, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x10000000000000, 0x0000100000000000, 8, x1, 312, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x10000000000000, 0x0000200000000000, 7, x1, 320, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000400000000000, 21, x1, 328, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000800000000000, 63, x1, 336, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:47
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0001000000000000, 47, x1, 344, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0002000000000000, 19, x1, 352, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:13
TEST_IMM_OP( slli, x11, x10, 0x8000000000000000, 0x0004000000000000, 13, x1, 360, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:55
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0008000000000000, 55, x1, 368, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x800000000000000, 0x0010000000000000, 7, x1, 376, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0040000000000000, 19, x1, 384, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:47
TEST_IMM_OP( slli, x11, x10, 0xffff800000000000, 0xffffff7fffffffff, 47, x1, 392, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xfffbfffffffffc00, 0xfffffeffffffffff, 10, x1, 400, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xffbfffffffffe000, 0xfffffdffffffffff, 13, x1, 408, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xffffbffffffffff0, 0xfffffbffffffffff, 4, x1, 416, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xffffffffffe00000, 0xfffff7ffffffffff, 21, x1, 424, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xffffefffffffffff, 0xffffefffffffffff, 0, x1, 432, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:11
TEST_IMM_OP( slli, x11, x10, 0xfefffffffffff800, 0xffffdfffffffffff, 11, x1, 440, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xffffffffffe00000, 0xffffbfffffffffff, 21, x1, 448, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xfffeffffffffffff, 0xfffeffffffffffff, 0, x1, 456, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xffbffffffffffff0, 0xfffbffffffffffff, 4, x1, 464, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:6
TEST_IMM_OP( slli, x11, x10, 0xfbffffffffffffc0, 0xffefffffffffffff, 6, x1, 472, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xfefffffffffffff8, 0xffdfffffffffffff, 3, x1, 480, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xfdfffffffffffff8, 0xffbfffffffffffff, 3, x1, 488, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:42
TEST_IMM_OP( slli, x11, x10, 0xfffffc0000000000, 0xff7fffffffffffff, 42, x1, 496, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xf7fffffffffffff8, 0xfeffffffffffffff, 3, x1, 504, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfffffffffff80000, 0xfdffffffffffffff, 19, x1, 512, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:14
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffc000, 0xf7ffffffffffffff, 14, x1, 520, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:62
TEST_IMM_OP( slli, x11, x10, 0xc000000000000000, 0xefffffffffffffff, 62, x1, 528, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0xffffffff80000000, 0xdfffffffffffffff, 31, x1, 536, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfffffffffff80000, 0xbfffffffffffffff, 19, x1, 544, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x5555555555400000, 0xaaaaaaaaaaaaaaaa, 21, x1, 552, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:32
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0080000000000000, 32, x1, 560, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x400000000000000, 0x0100000000000000, 2, x1, 568, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:32
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0200000000000000, 32, x1, 576, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:42
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0400000000000000, 42, x1, 584, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:15
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0800000000000000, 15, x1, 592, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:10
TEST_IMM_OP( slli, x11, x10, 0x0, 0x1000000000000000, 10, x1, 600, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x0, 0x4000000000000000, 17, x1, 608, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:32
TEST_IMM_OP( slli, x11, x10, 0xfffffffe00000000, 0xfffffffffffffffe, 32, x1, 616, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffffee, 0xfffffffffffffff7, 1, x1, 624, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:55
TEST_IMM_OP( slli, x11, x10, 0xf780000000000000, 0xffffffffffffffef, 55, x1, 632, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffdf00, 0xffffffffffffffdf, 8, x1, 640, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:31
TEST_IMM_OP( slli, x11, x10, 0xffffffdf80000000, 0xffffffffffffffbf, 31, x1, 648, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xffffffffffefe000, 0xffffffffffffff7f, 13, x1, 656, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffeff0, 0xfffffffffffffeff, 4, x1, 664, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x8000000000000000, 0xfffffffffffffbff, 63, x1, 672, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:59
TEST_IMM_OP( slli, x11, x10, 0xf800000000000000, 0xfffffffffffff7ff, 59, x1, 680, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:59
TEST_IMM_OP( slli, x11, x10, 0xf800000000000000, 0xffffffffffffefff, 59, x1, 688, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xffffffffffdfff00, 0xffffffffffffdfff, 8, x1, 696, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:42
TEST_IMM_OP( slli, x11, x10, 0xfefffc0000000000, 0xffffffffffffbfff, 42, x1, 704, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xffffffffefffe000, 0xffffffffffff7fff, 13, x1, 712, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xfffffffffeffff00, 0xfffffffffffeffff, 8, x1, 720, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xfffffffffdffff00, 0xfffffffffffdffff, 8, x1, 728, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:32
TEST_IMM_OP( slli, x11, x10, 0xfffbffff00000000, 0xfffffffffffbffff, 32, x1, 736, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xffffffffeffffe00, 0xfffffffffff7ffff, 9, x1, 744, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:55
TEST_IMM_OP( slli, x11, x10, 0xff80000000000000, 0xffffffffffefffff, 55, x1, 752, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:59
TEST_IMM_OP( slli, x11, x10, 0xf800000000000000, 0xffffffffffbfffff, 59, x1, 760, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0xffbfffff80000000, 0xffffffffff7fffff, 31, x1, 768, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xffffff7fffff8000, 0xfffffffffeffffff, 15, x1, 776, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xfffffffdffffff00, 0xfffffffffdffffff, 8, x1, 784, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xffffeffffffc0000, 0xfffffffffbffffff, 18, x1, 792, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:62
TEST_IMM_OP( slli, x11, x10, 0xc000000000000000, 0xfffffffff7ffffff, 62, x1, 800, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xffffffffefffffff, 0xffffffffefffffff, 0, x1, 808, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xffff7ffffffc0000, 0xffffffffdfffffff, 18, x1, 816, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:62
TEST_IMM_OP( slli, x11, x10, 0xc000000000000000, 0xffffffffbfffffff, 62, x1, 824, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xfffffffbfffffff8, 0xffffffff7fffffff, 3, x1, 832, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xffffff7fffffff80, 0xfffffffeffffffff, 7, x1, 840, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xfff7fffffffc0000, 0xfffffffdffffffff, 18, x1, 848, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xfffdffffffff8000, 0xfffffffbffffffff, 15, x1, 856, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffffffdffffffffc, 0xfffffff7ffffffff, 2, x1, 864, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xffdffffffffe0000, 0xffffffefffffffff, 17, x1, 872, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xfffdfffffffff000, 0xffffffdfffffffff, 12, x1, 880, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfdfffffffff80000, 0xffffffbfffffffff, 19, x1, 888, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffc0000, 0xfffdffffffffffff, 18, x1, 896, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000000080;  immval:16
TEST_IMM_OP( slli, x11, x10, 0x800000, 0x0000000000000080, 16, x1, 904, x4)

# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000000100;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x8000, 0x0000000000000100, 7, x1, 912, x4)
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

signature_x14_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x14_1:
    .fill 23*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 115*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
