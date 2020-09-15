
#This assembly file tests the slliw instruction of the RISC-V I extension for the slliw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",slliw)

la x5,signature_x5_1

# opcode: slliw ; op1:x4; dest:x4; op1val:0xffffffffffffffff;  immval:19
TEST_IMM_OP( slliw, x4, x4, 0xfffffffffff80000, 0xffffffffffffffff, 19, x5, 0, x18)

# opcode: slliw ; op1:x2; dest:x13; op1val:0x0000040000000000;  immval:5
TEST_IMM_OP( slliw, x13, x2, 0x800000000000, 0x0000040000000000, 5, x5, 8, x18)

# opcode: slliw ; op1:x29; dest:x14; op1val:0xffffffdfffffffff;  immval:0
TEST_IMM_OP( slliw, x14, x29, 0xffffffdfffffffff, 0xffffffdfffffffff, 0, x5, 16, x18)

# opcode: slliw ; op1:x7; dest:x26; op1val:0x0000000002000000;  immval:0
TEST_IMM_OP( slliw, x26, x7, 0x2000000, 0x0000000002000000, 0, x5, 24, x18)

# opcode: slliw ; op1:x9; dest:x3; op1val:0xff7fffffffffffff;  immval:31
TEST_IMM_OP( slliw, x3, x9, 0xffffffff80000000, 0xff7fffffffffffff, 31, x5, 32, x18)

# opcode: slliw ; op1:x19; dest:x17; op1val:0x0800000000000000;  immval:31
TEST_IMM_OP( slliw, x17, x19, 0x0, 0x0800000000000000, 31, x5, 40, x18)

# opcode: slliw ; op1:x16; dest:x10; op1val:0x0000000000000004;  immval:4
TEST_IMM_OP( slliw, x10, x16, 0x40, 0x0000000000000004, 4, x5, 48, x18)

# opcode: slliw ; op1:x23; dest:x20; op1val:0x8000000000000000;  immval:8
TEST_IMM_OP( slliw, x20, x23, 0x0, 0x8000000000000000, 8, x5, 56, x18)

# opcode: slliw ; op1:x12; dest:x11; op1val:0x0000000000000000;  immval:12
TEST_IMM_OP( slliw, x11, x12, 0x0, 0x0000000000000000, 12, x5, 64, x18)

# opcode: slliw ; op1:x15; dest:x6; op1val:0x7fffffffffffffff;  immval:5
TEST_IMM_OP( slliw, x6, x15, 0xffffffffffffffe0, 0x7fffffffffffffff, 5, x5, 72, x18)

# opcode: slliw ; op1:x21; dest:x12; op1val:0x0000000000000001;  immval:13
TEST_IMM_OP( slliw, x12, x21, 0x2000, 0x0000000000000001, 13, x5, 80, x18)

# opcode: slliw ; op1:x10; dest:x23; op1val:0x0004000000000000;  immval:1
TEST_IMM_OP( slliw, x23, x10, 0x8000000000000, 0x0004000000000000, 1, x5, 88, x18)

# opcode: slliw ; op1:x28; dest:x22; op1val:0xfeffffffffffffff;  immval:2
TEST_IMM_OP( slliw, x22, x28, 0xfbfffffffffffffc, 0xfeffffffffffffff, 2, x5, 96, x18)

# opcode: slliw ; op1:x0; dest:x1; op1val:0xfffffffff7ffffff;  immval:16
TEST_IMM_OP( slliw, x1, x0, 0xfffff7ffffff0000, 0xfffffffff7ffffff, 16, x5, 104, x18)

# opcode: slliw ; op1:x13; dest:x16; op1val:0xfffffffffdffffff;  immval:30
TEST_IMM_OP( slliw, x16, x13, 0xff7fffffc0000000, 0xfffffffffdffffff, 30, x5, 112, x18)

# opcode: slliw ; op1:x26; dest:x2; op1val:0xfffffffffffffff7;  immval:29
TEST_IMM_OP( slliw, x2, x26, 0xfffffffee0000000, 0xfffffffffffffff7, 29, x5, 120, x18)

# opcode: slliw ; op1:x8; dest:x27; op1val:0x0000800000000000;  immval:27
TEST_IMM_OP( slliw, x27, x8, 0x0, 0x0000800000000000, 27, x5, 128, x18)

# opcode: slliw ; op1:x11; dest:x25; op1val:0x0000000000000007;  immval:23
TEST_IMM_OP( slliw, x25, x11, 0x3800000, 0x0000000000000007, 23, x5, 136, x18)

# opcode: slliw ; op1:x30; dest:x0; op1val:0xfffffffffffffff7;  immval:15
TEST_IMM_OP( slliw, x0, x30, 0xfffffffffffb8000, 0xfffffffffffffff7, 15, x5, 144, x18)

# opcode: slliw ; op1:x22; dest:x24; op1val:0x0000000040000000;  immval:21
TEST_IMM_OP( slliw, x24, x22, 0x8000000000000, 0x0000000040000000, 21, x5, 152, x4)
la x2,signature_x2_0

# opcode: slliw ; op1:x20; dest:x31; op1val:0xfffffffffffffff7;  immval:10
TEST_IMM_OP( slliw, x31, x20, 0xffffffffffffdc00, 0xfffffffffffffff7, 10, x2, 0, x4)

# opcode: slliw ; op1:x25; dest:x5; op1val:0x0000000000000002;  immval:12
TEST_IMM_OP( slliw, x5, x25, 0x2000, 0x0000000000000002, 12, x2, 8, x4)

# opcode: slliw ; op1:x27; dest:x21; op1val:0x0000000000000008;  immval:8
TEST_IMM_OP( slliw, x21, x27, 0x800, 0x0000000000000008, 8, x2, 16, x4)

# opcode: slliw ; op1:x31; dest:x30; op1val:0x0000000000000010;  immval:7
TEST_IMM_OP( slliw, x30, x31, 0x800, 0x0000000000000010, 7, x2, 24, x4)

# opcode: slliw ; op1:x14; dest:x9; op1val:0x0000000000000020;  immval:27
TEST_IMM_OP( slliw, x9, x14, 0x100000000, 0x0000000000000020, 27, x2, 32, x4)

# opcode: slliw ; op1:x24; dest:x15; op1val:0x0000000000000040;  immval:5
TEST_IMM_OP( slliw, x15, x24, 0x800, 0x0000000000000040, 5, x2, 40, x4)

# opcode: slliw ; op1:x6; dest:x8; op1val:0x0000000000000080;  immval:2
TEST_IMM_OP( slliw, x8, x6, 0x200, 0x0000000000000080, 2, x2, 48, x4)

# opcode: slliw ; op1:x3; dest:x19; op1val:0x0000000000000100;  immval:14
TEST_IMM_OP( slliw, x19, x3, 0x400000, 0x0000000000000100, 14, x2, 56, x4)

# opcode: slliw ; op1:x18; dest:x7; op1val:0x0000000000000200;  immval:6
TEST_IMM_OP( slliw, x7, x18, 0x8000, 0x0000000000000200, 6, x2, 64, x4)

# opcode: slliw ; op1:x17; dest:x29; op1val:0x0000000000000400;  immval:5
TEST_IMM_OP( slliw, x29, x17, 0x8000, 0x0000000000000400, 5, x2, 72, x4)

# opcode: slliw ; op1:x1; dest:x28; op1val:0x0000000000000800;  immval:19
TEST_IMM_OP( slliw, x28, x1, 0x40000000, 0x0000000000000800, 19, x2, 80, x4)

# opcode: slliw ; op1:x5; dest:x18; op1val:0x0000000000001000;  immval:13
TEST_IMM_OP( slliw, x18, x5, 0x2000000, 0x0000000000001000, 13, x2, 88, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0x10000000, 0x0000000000002000, 15, x2, 96, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0x4000, 0x0000000000004000, 0, x2, 104, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0x2000000, 0x0000000000008000, 10, x2, 112, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0x80000000000, 0x0000000000010000, 27, x2, 120, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0x8000000, 0x0000000000020000, 10, x2, 128, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0x200000000000, 0x0000000000040000, 27, x2, 136, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0x10000000000, 0x0000000000080000, 21, x2, 144, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0x1000000000, 0x0000000000100000, 16, x2, 152, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:17
TEST_IMM_OP( slliw, x11, x10, 0x4000000000, 0x0000000000200000, 17, x2, 160, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0x4000000, 0x0000000000400000, 4, x2, 168, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0x20000000000, 0x0000000000800000, 18, x2, 176, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0x1000000000, 0x0000000001000000, 12, x2, 184, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0x4000000, 0x0000000004000000, 0, x2, 192, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0x40000000, 0x0000000008000000, 3, x2, 200, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:29
TEST_IMM_OP( slliw, x11, x10, 0x200000000000000, 0x0000000010000000, 29, x2, 208, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0x1000000000, 0x0000000020000000, 7, x2, 216, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0x4000000000000000, 0x0000000080000000, 31, x2, 224, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0x4000000000000, 0x0000000100000000, 18, x2, 232, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0x8000000000000000, 0x0000000200000000, 30, x2, 240, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0x20000000000000, 0x0000000400000000, 19, x2, 248, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0x20000000000000, 0x0000000800000000, 18, x2, 256, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0x4000000000, 0x0000001000000000, 2, x2, 264, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0x4000000000, 0x0000002000000000, 1, x2, 272, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0x200000000000, 0x0000004000000000, 7, x2, 280, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:29
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0000008000000000, 29, x2, 288, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0x2000000000000000, 0x0000010000000000, 21, x2, 296, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0x10000000000000, 0x0000020000000000, 11, x2, 304, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0x80000000000, 0x0000080000000000, 0, x2, 312, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0x8000000000000000, 0x0000100000000000, 19, x2, 320, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0x1000000000000, 0x0000200000000000, 3, x2, 328, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0x200000000000000, 0x0000400000000000, 11, x2, 336, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0x400000000000000, 0x0001000000000000, 10, x2, 344, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0x1000000000000000, 0x0002000000000000, 11, x2, 352, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0x4000000000000000, 0x0008000000000000, 11, x2, 360, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0010000000000000, 27, x2, 368, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0x100000000000000, 0x0020000000000000, 3, x2, 376, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0040000000000000, 27, x2, 384, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0080000000000000, 14, x2, 392, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0x200000000000000, 0x0100000000000000, 1, x2, 400, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0200000000000000, 18, x2, 408, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xbfffffffffe00000, 0xfffffdffffffffff, 21, x2, 416, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0xffffffffff800000, 0xfffffbffffffffff, 23, x2, 424, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:17
TEST_IMM_OP( slliw, x11, x10, 0xeffffffffffe0000, 0xfffff7ffffffffff, 17, x2, 432, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xbffffffffffc0000, 0xffffefffffffffff, 18, x2, 440, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffe00000, 0xffffdfffffffffff, 21, x2, 448, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0xfffefffffffffffc, 0xffffbfffffffffff, 2, x2, 456, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:29
TEST_IMM_OP( slliw, x11, x10, 0xffffffffe0000000, 0xffff7fffffffffff, 29, x2, 464, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0xfffbfffffffffffc, 0xfffeffffffffffff, 2, x2, 472, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffe00000, 0xfffdffffffffffff, 21, x2, 480, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0xfff7fffffffffffe, 0xfffbffffffffffff, 1, x2, 488, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0xfff7ffffffffffff, 0xfff7ffffffffffff, 0, x2, 496, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffe000, 0xffefffffffffffff, 13, x2, 504, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffc0000, 0xffdfffffffffffff, 18, x2, 512, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0xff7ffffffffffffe, 0xffbfffffffffffff, 1, x2, 520, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffe000, 0xfdffffffffffffff, 13, x2, 528, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff8000, 0xfbffffffffffffff, 15, x2, 536, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffffe00, 0xf7ffffffffffffff, 9, x2, 544, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffff800, 0xefffffffffffffff, 11, x2, 552, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffff000, 0xdfffffffffffffff, 12, x2, 560, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0xbfffffffffffffff, 0xbfffffffffffffff, 0, x2, 568, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xaaaaaaaaaaaa8000, 0x5555555555555555, 15, x2, 576, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0xaaaaaaaaaaaaaa80, 0xaaaaaaaaaaaaaaaa, 6, x2, 584, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0400000000000000, 21, x2, 592, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:5
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x1000000000000000, 5, x2, 600, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x2000000000000000, 15, x2, 608, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x4000000000000000, 8, x2, 616, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffff000, 0xfffffffffffffffe, 11, x2, 624, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffa000, 0xfffffffffffffffd, 13, x2, 632, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffb0000, 0xfffffffffffffffb, 16, x2, 640, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffff780, 0xffffffffffffffef, 7, x2, 648, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xffffffef80000000, 0xffffffffffffffdf, 31, x2, 656, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffefc0000, 0xffffffffffffffbf, 18, x2, 664, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffbf8000, 0xffffffffffffff7f, 15, x2, 672, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffbfc000, 0xfffffffffffffeff, 14, x2, 680, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff7fc0, 0xfffffffffffffdff, 6, x2, 688, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:5
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff7fe0, 0xfffffffffffffbff, 5, x2, 696, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffdffc0, 0xfffffffffffff7ff, 6, x2, 704, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffbffc, 0xffffffffffffefff, 2, x2, 712, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0xfffffefff8000000, 0xffffffffffffdfff, 27, x2, 720, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xfffffff7ffe00000, 0xffffffffffffbfff, 21, x2, 728, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0xffffffff7fff0000, 0xffffffffffff7fff, 16, x2, 736, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0xfffffffeffff0000, 0xfffffffffffeffff, 16, x2, 744, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0xffffffff7fffc000, 0xfffffffffffdffff, 14, x2, 752, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xffffff7fffe00000, 0xfffffffffffbffff, 21, x2, 760, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:17
TEST_IMM_OP( slliw, x11, x10, 0xffffffeffffe0000, 0xfffffffffff7ffff, 17, x2, 768, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xfff7ffff80000000, 0xffffffffffefffff, 31, x2, 776, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0xffffffffbffffe00, 0xffffffffffdfffff, 9, x2, 784, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0xffefffffc0000000, 0xffffffffffbfffff, 30, x2, 792, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0xfffffffdfffffc00, 0xffffffffff7fffff, 10, x2, 800, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0xffbfffffc0000000, 0xfffffffffeffffff, 30, x2, 808, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0xfffffbffffff0000, 0xfffffffffbffffff, 16, x2, 816, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0xfffffff7ffffff80, 0xffffffffefffffff, 7, x2, 824, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0xffffffffdfffffff, 0xffffffffdfffffff, 0, x2, 832, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0xfdfffffff8000000, 0xffffffffbfffffff, 27, x2, 840, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xffffbfffffff8000, 0xffffffff7fffffff, 15, x2, 848, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0xfffffbfffffffc00, 0xfffffffeffffffff, 10, x2, 856, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xfffeffffffff8000, 0xfffffffdffffffff, 15, x2, 864, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0xdffffffff8000000, 0xfffffffbffffffff, 27, x2, 872, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0xffffff7ffffffff0, 0xfffffff7ffffffff, 4, x2, 880, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0xfffbffffffffc000, 0xffffffefffffffff, 14, x2, 888, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0xffefffffffffc000, 0xffffffbfffffffff, 14, x2, 896, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xffbfffffffff8000, 0xffffff7fffffffff, 15, x2, 904, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0xfffdfffffffffe00, 0xfffffeffffffffff, 9, x2, 912, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffffff;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffff80000, 0xffffffffffffffff, 19, x2, 920, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0xfffff7ffffff0000, 0xfffffffff7ffffff, 16, x2, 928, x4)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffb8000, 0xfffffffffffffff7, 15, x2, 936, x4)
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
    .fill 20*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 118*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
