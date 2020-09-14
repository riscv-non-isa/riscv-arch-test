
#This assembly file tests the slliw instruction of the RISC-V I extension for the slliw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",slliw)

la x12,signature_x12_1

# opcode: slliw ; op1:x26; dest:x26; op1val:0xfffffffffffffffa;  immval:30
TEST_IMM_OP( slliw, x26, x26, 0xfffffffe80000000, 0xfffffffffffffffa, 30, x12, 0, x16)

# opcode: slliw ; op1:x0; dest:x31; op1val:0x0000020000000000;  immval:5
TEST_IMM_OP( slliw, x31, x0, 0x400000000000, 0x0000020000000000, 5, x12, 8, x16)

# opcode: slliw ; op1:x20; dest:x4; op1val:0xfffffffffffffffe;  immval:0
TEST_IMM_OP( slliw, x4, x20, 0xfffffffffffffffe, 0xfffffffffffffffe, 0, x12, 16, x16)

# opcode: slliw ; op1:x9; dest:x5; op1val:0x0000000000000005;  immval:0
TEST_IMM_OP( slliw, x5, x9, 0x5, 0x0000000000000005, 0, x12, 24, x16)

# opcode: slliw ; op1:x21; dest:x23; op1val:0xfffffffffeffffff;  immval:31
TEST_IMM_OP( slliw, x23, x21, 0xff7fffff80000000, 0xfffffffffeffffff, 31, x12, 32, x16)

# opcode: slliw ; op1:x15; dest:x8; op1val:0x0000000000000008;  immval:31
TEST_IMM_OP( slliw, x8, x15, 0x400000000, 0x0000000000000008, 31, x12, 40, x16)

# opcode: slliw ; op1:x8; dest:x20; op1val:0x0000000000000010;  immval:16
TEST_IMM_OP( slliw, x20, x8, 0x100000, 0x0000000000000010, 16, x12, 48, x16)

# opcode: slliw ; op1:x7; dest:x24; op1val:0x8000000000000000;  immval:8
TEST_IMM_OP( slliw, x24, x7, 0x0, 0x8000000000000000, 8, x12, 56, x16)

# opcode: slliw ; op1:x28; dest:x1; op1val:0x0000000000000000;  immval:19
TEST_IMM_OP( slliw, x1, x28, 0x0, 0x0000000000000000, 19, x12, 64, x16)

# opcode: slliw ; op1:x25; dest:x10; op1val:0x7fffffffffffffff;  immval:3
TEST_IMM_OP( slliw, x10, x25, 0xfffffffffffffff8, 0x7fffffffffffffff, 3, x12, 72, x16)

# opcode: slliw ; op1:x2; dest:x19; op1val:0x0000000000000001;  immval:2
TEST_IMM_OP( slliw, x19, x2, 0x4, 0x0000000000000001, 2, x12, 80, x16)

# opcode: slliw ; op1:x3; dest:x30; op1val:0xfffffffffffffff8;  immval:1
TEST_IMM_OP( slliw, x30, x3, 0xfffffffffffffff0, 0xfffffffffffffff8, 1, x12, 88, x16)

# opcode: slliw ; op1:x30; dest:x27; op1val:0xffffffffffdfffff;  immval:4
TEST_IMM_OP( slliw, x27, x30, 0xfffffffffdfffff0, 0xffffffffffdfffff, 4, x12, 96, x16)

# opcode: slliw ; op1:x18; dest:x2; op1val:0x0000004000000000;  immval:29
TEST_IMM_OP( slliw, x2, x18, 0x0, 0x0000004000000000, 29, x12, 104, x16)

# opcode: slliw ; op1:x4; dest:x14; op1val:0xffffffffffffffbf;  immval:27
TEST_IMM_OP( slliw, x14, x4, 0xfffffffdf8000000, 0xffffffffffffffbf, 27, x12, 112, x16)

# opcode: slliw ; op1:x6; dest:x29; op1val:0xffffffffbfffffff;  immval:23
TEST_IMM_OP( slliw, x29, x6, 0xffdfffffff800000, 0xffffffffbfffffff, 23, x12, 120, x16)

# opcode: slliw ; op1:x13; dest:x21; op1val:0xffffffffefffffff;  immval:15
TEST_IMM_OP( slliw, x21, x13, 0xfffff7ffffff8000, 0xffffffffefffffff, 15, x12, 128, x16)

# opcode: slliw ; op1:x31; dest:x11; op1val:0xfffffffffffeffff;  immval:21
TEST_IMM_OP( slliw, x11, x31, 0xffffffdfffe00000, 0xfffffffffffeffff, 21, x12, 136, x16)

# opcode: slliw ; op1:x1; dest:x22; op1val:0xfbffffffffffffff;  immval:10
TEST_IMM_OP( slliw, x22, x1, 0xfffffffffffffc00, 0xfbffffffffffffff, 10, x12, 144, x2)
la x1,signature_x1_0

# opcode: slliw ; op1:x5; dest:x7; op1val:0x0000000000000002;  immval:9
TEST_IMM_OP( slliw, x7, x5, 0x400, 0x0000000000000002, 9, x1, 0, x2)

# opcode: slliw ; op1:x24; dest:x0; op1val:0x0000000000000004;  immval:15
TEST_IMM_OP( slliw, x0, x24, 0x20000, 0x0000000000000004, 15, x1, 8, x2)

# opcode: slliw ; op1:x12; dest:x25; op1val:0x0000000000000020;  immval:16
TEST_IMM_OP( slliw, x25, x12, 0x200000, 0x0000000000000020, 16, x1, 16, x2)

# opcode: slliw ; op1:x29; dest:x3; op1val:0x0000000000000040;  immval:2
TEST_IMM_OP( slliw, x3, x29, 0x100, 0x0000000000000040, 2, x1, 24, x2)

# opcode: slliw ; op1:x11; dest:x9; op1val:0x0000000000000080;  immval:6
TEST_IMM_OP( slliw, x9, x11, 0x2000, 0x0000000000000080, 6, x1, 32, x2)

# opcode: slliw ; op1:x16; dest:x17; op1val:0x0000000000000100;  immval:31
TEST_IMM_OP( slliw, x17, x16, 0x8000000000, 0x0000000000000100, 31, x1, 40, x2)

# opcode: slliw ; op1:x23; dest:x18; op1val:0x0000000000000200;  immval:0
TEST_IMM_OP( slliw, x18, x23, 0x200, 0x0000000000000200, 0, x1, 48, x2)

# opcode: slliw ; op1:x19; dest:x15; op1val:0x0000000000000400;  immval:31
TEST_IMM_OP( slliw, x15, x19, 0x20000000000, 0x0000000000000400, 31, x1, 56, x2)

# opcode: slliw ; op1:x22; dest:x12; op1val:0x0000000000000800;  immval:18
TEST_IMM_OP( slliw, x12, x22, 0x20000000, 0x0000000000000800, 18, x1, 64, x2)

# opcode: slliw ; op1:x10; dest:x16; op1val:0x0000000000001000;  immval:10
TEST_IMM_OP( slliw, x16, x10, 0x400000, 0x0000000000001000, 10, x1, 72, x2)

# opcode: slliw ; op1:x14; dest:x28; op1val:0x0000000000002000;  immval:1
TEST_IMM_OP( slliw, x28, x14, 0x4000, 0x0000000000002000, 1, x1, 80, x2)

# opcode: slliw ; op1:x27; dest:x6; op1val:0x0000000000004000;  immval:13
TEST_IMM_OP( slliw, x6, x27, 0x8000000, 0x0000000000004000, 13, x1, 88, x2)

# opcode: slliw ; op1:x17; dest:x13; op1val:0x0000000000008000;  immval:15
TEST_IMM_OP( slliw, x13, x17, 0x40000000, 0x0000000000008000, 15, x1, 96, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0x2000000, 0x0000000000010000, 9, x1, 104, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0x2000000, 0x0000000000020000, 8, x1, 112, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0x2000000000, 0x0000000000040000, 19, x1, 120, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0x4000000000000, 0x0000000000080000, 31, x1, 128, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0x800000, 0x0000000000100000, 3, x1, 136, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0x400000, 0x0000000000200000, 1, x1, 144, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0x20000000000000, 0x0000000000400000, 31, x1, 152, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0x400000000, 0x0000000000800000, 11, x1, 160, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0x100000000, 0x0000000001000000, 8, x1, 168, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0x10000000000, 0x0000000002000000, 15, x1, 176, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0x8000000000, 0x0000000004000000, 13, x1, 184, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0x40000000000000, 0x0000000008000000, 27, x1, 192, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0x80000000000, 0x0000000010000000, 15, x1, 200, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0x200000000000, 0x0000000020000000, 16, x1, 208, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0x80000000, 0x0000000040000000, 1, x1, 216, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0x8000000000, 0x0000000080000000, 8, x1, 224, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0x4000000000000000, 0x0000000100000000, 30, x1, 232, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:17
TEST_IMM_OP( slliw, x11, x10, 0x4000000000000, 0x0000000200000000, 17, x1, 240, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0x20000000000, 0x0000000400000000, 7, x1, 248, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0x2000000000000, 0x0000000800000000, 14, x1, 256, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0x200000000000000, 0x0000001000000000, 21, x1, 264, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0x400000000000, 0x0000002000000000, 9, x1, 272, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0x800000000000, 0x0000008000000000, 8, x1, 280, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0000010000000000, 30, x1, 288, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0x200000000000, 0x0000040000000000, 3, x1, 296, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0x100000000000, 0x0000080000000000, 1, x1, 304, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0000100000000000, 23, x1, 312, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0x40000000000000, 0x0000200000000000, 9, x1, 320, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0x400000000000000, 0x0000400000000000, 12, x1, 328, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0x1000000000000, 0x0000800000000000, 1, x1, 336, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0x80000000000000, 0x0001000000000000, 7, x1, 344, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:17
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0002000000000000, 17, x1, 352, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0004000000000000, 27, x1, 360, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0x10000000000000, 0x0008000000000000, 1, x1, 368, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0x800000000000000, 0x0010000000000000, 7, x1, 376, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0x800000000000000, 0x0020000000000000, 6, x1, 384, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0040000000000000, 13, x1, 392, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0x8000000000000000, 0x0080000000000000, 8, x1, 400, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0x200000000000000, 0x0100000000000000, 1, x1, 408, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0xfffff7fffffffffc, 0xfffffdffffffffff, 2, x1, 416, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:5
TEST_IMM_OP( slliw, x11, x10, 0xffff7fffffffffe0, 0xfffffbffffffffff, 5, x1, 424, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0xffffbffffffffff8, 0xfffff7ffffffffff, 3, x1, 432, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:17
TEST_IMM_OP( slliw, x11, x10, 0xdffffffffffe0000, 0xffffefffffffffff, 17, x1, 440, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0xffffdfffffffffff, 0xffffdfffffffffff, 0, x1, 448, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:11
TEST_IMM_OP( slliw, x11, x10, 0xfdfffffffffff800, 0xffffbfffffffffff, 11, x1, 456, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:16
TEST_IMM_OP( slliw, x11, x10, 0x7fffffffffff0000, 0xffff7fffffffffff, 16, x1, 464, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0xffffffffff800000, 0xfffeffffffffffff, 23, x1, 472, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffe00000, 0xfffdffffffffffff, 21, x1, 480, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:19
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffff80000, 0xfffbffffffffffff, 19, x1, 488, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffc0000, 0xfff7ffffffffffff, 18, x1, 496, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff8000, 0xffefffffffffffff, 15, x1, 504, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0xdfffffffffffff00, 0xffdfffffffffffff, 8, x1, 512, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0xffbfffffffffffff, 0xffbfffffffffffff, 0, x1, 520, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffe00000, 0xff7fffffffffffff, 21, x1, 528, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0xffffffffc0000000, 0xfeffffffffffffff, 30, x1, 536, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff8000, 0xfdffffffffffffff, 15, x1, 544, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0xbffffffffffffff8, 0xf7ffffffffffffff, 3, x1, 552, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0x7ffffffffffffff8, 0xefffffffffffffff, 3, x1, 560, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:1
TEST_IMM_OP( slliw, x11, x10, 0xbffffffffffffffe, 0xdfffffffffffffff, 1, x1, 568, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0xbfffffffffffffff, 0xbfffffffffffffff, 0, x1, 576, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0x5555555555554000, 0x5555555555555555, 14, x1, 584, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:17
TEST_IMM_OP( slliw, x11, x10, 0x5555555555540000, 0xaaaaaaaaaaaaaaaa, 17, x1, 592, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0x800000000000000, 0x0200000000000000, 2, x1, 600, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0400000000000000, 23, x1, 608, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:27
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x0800000000000000, 27, x1, 616, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:0
TEST_IMM_OP( slliw, x11, x10, 0x1000000000000000, 0x1000000000000000, 0, x1, 624, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x2000000000000000, 12, x1, 632, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0x0, 0x4000000000000000, 23, x1, 640, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffe800000, 0xfffffffffffffffd, 23, x1, 648, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:4
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffffffb0, 0xfffffffffffffffb, 4, x1, 656, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:29
TEST_IMM_OP( slliw, x11, x10, 0xfffffffee0000000, 0xfffffffffffffff7, 29, x1, 664, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffffde000, 0xffffffffffffffef, 13, x1, 672, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0xfffffff7c0000000, 0xffffffffffffffdf, 30, x1, 680, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xffffffbf80000000, 0xffffffffffffff7f, 31, x1, 688, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xffffffffdfe00000, 0xfffffffffffffeff, 21, x1, 696, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:6
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffff7fc0, 0xfffffffffffffdff, 6, x1, 704, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffdff8000, 0xfffffffffffffbff, 15, x1, 712, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xfffffbff80000000, 0xfffffffffffff7ff, 31, x1, 720, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffefff000, 0xffffffffffffefff, 12, x1, 728, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:7
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffefff80, 0xffffffffffffdfff, 7, x1, 736, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0xffffffdfff800000, 0xffffffffffffbfff, 23, x1, 744, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0xfffffffffefffe00, 0xffffffffffff7fff, 9, x1, 752, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:5
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffbfffe0, 0xfffffffffffdffff, 5, x1, 760, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:9
TEST_IMM_OP( slliw, x11, x10, 0xfffffffff7fffe00, 0xfffffffffffbffff, 9, x1, 768, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:8
TEST_IMM_OP( slliw, x11, x10, 0xfffffffff7ffff00, 0xfffffffffff7ffff, 8, x1, 776, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:2
TEST_IMM_OP( slliw, x11, x10, 0xffffffffffbffffc, 0xffffffffffefffff, 2, x1, 784, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xfffff7ffffe00000, 0xffffffffffbfffff, 21, x1, 792, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0xffdfffffc0000000, 0xffffffffff7fffff, 30, x1, 800, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0xfffeffffff800000, 0xfffffffffdffffff, 23, x1, 808, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xffffff7fffffe000, 0xfffffffffbffffff, 13, x1, 816, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xfffffeffffffe000, 0xfffffffff7ffffff, 13, x1, 824, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:21
TEST_IMM_OP( slliw, x11, x10, 0xfffbffffffe00000, 0xffffffffdfffffff, 21, x1, 832, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0xffffdfffffffc000, 0xffffffff7fffffff, 14, x1, 840, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xfffbfffffffc0000, 0xfffffffeffffffff, 18, x1, 848, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:3
TEST_IMM_OP( slliw, x11, x10, 0xffffffeffffffff8, 0xfffffffdffffffff, 3, x1, 856, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:12
TEST_IMM_OP( slliw, x11, x10, 0xffffbffffffff000, 0xfffffffbffffffff, 12, x1, 864, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:13
TEST_IMM_OP( slliw, x11, x10, 0xfffeffffffffe000, 0xfffffff7ffffffff, 13, x1, 872, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:14
TEST_IMM_OP( slliw, x11, x10, 0xfffbffffffffc000, 0xffffffefffffffff, 14, x1, 880, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:31
TEST_IMM_OP( slliw, x11, x10, 0xffffffff80000000, 0xffffffdfffffffff, 31, x1, 888, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:18
TEST_IMM_OP( slliw, x11, x10, 0xfefffffffffc0000, 0xffffffbfffffffff, 18, x1, 896, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:10
TEST_IMM_OP( slliw, x11, x10, 0xfffdfffffffffc00, 0xffffff7fffffffff, 10, x1, 904, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:23
TEST_IMM_OP( slliw, x11, x10, 0x7fffffffff800000, 0xfffffeffffffffff, 23, x1, 912, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0xfffffffffffffffa;  immval:30
TEST_IMM_OP( slliw, x11, x10, 0xfffffffe80000000, 0xfffffffffffffffa, 30, x1, 920, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:5
TEST_IMM_OP( slliw, x11, x10, 0x400000000000, 0x0000020000000000, 5, x1, 928, x2)

# opcode: slliw ; op1:x10; dest:x11; op1val:0x0000000000000004;  immval:15
TEST_IMM_OP( slliw, x11, x10, 0x20000, 0x0000000000000004, 15, x1, 936, x2)
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

signature_x12_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x12_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 118*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
