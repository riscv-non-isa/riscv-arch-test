
#This assembly file tests the slti instruction of the RISC-V I extension for the slti covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slti)

la x17,signature_x17_1

# opcode: slti ; op1:x28; dest:x28; op1val:0x0000000000000000;  immval:0
TEST_IMM_OP( slti, x28, x28, 0x0, 0x0000000000000000, 0, x17, 0, x23)

# opcode: slti ; op1:x9; dest:x19; op1val:0xffffffffffff7fff;  immval:2047
TEST_IMM_OP( slti, x19, x9, 0x1, 0xffffffffffff7fff, 2047, x17, 8, x23)

# opcode: slti ; op1:x6; dest:x18; op1val:0x0001000000000000;  immval:1
TEST_IMM_OP( slti, x18, x6, 0x0, 0x0001000000000000, 1, x17, 16, x23)

# opcode: slti ; op1:x29; dest:x24; op1val:0x0000000000000800;  immval:-2048
TEST_IMM_OP( slti, x24, x29, 0x0, 0x0000000000000800, -2048, x17, 24, x23)

# opcode: slti ; op1:x5; dest:x11; op1val:0x8000000000000000;  immval:-1366
TEST_IMM_OP( slti, x11, x5, 0x1, 0x8000000000000000, -1366, x17, 32, x23)

# opcode: slti ; op1:x30; dest:x2; op1val:0x7fffffffffffffff;  immval:16
TEST_IMM_OP( slti, x2, x30, 0x0, 0x7fffffffffffffff, 16, x17, 40, x23)

# opcode: slti ; op1:x3; dest:x7; op1val:0x0000000000000001;  immval:128
TEST_IMM_OP( slti, x7, x3, 0x1, 0x0000000000000001, 128, x17, 48, x23)

# opcode: slti ; op1:x13; dest:x5; op1val:0x0000000000000002;  immval:-1024
TEST_IMM_OP( slti, x5, x13, 0x0, 0x0000000000000002, -1024, x17, 56, x23)

# opcode: slti ; op1:x21; dest:x9; op1val:0x0000000000000004;  immval:9
TEST_IMM_OP( slti, x9, x21, 0x1, 0x0000000000000004, 9, x17, 64, x23)

# opcode: slti ; op1:x22; dest:x14; op1val:0x0000000000000008;  immval:128
TEST_IMM_OP( slti, x14, x22, 0x1, 0x0000000000000008, 128, x17, 72, x23)

# opcode: slti ; op1:x20; dest:x13; op1val:0x0000000000000010;  immval:-1366
TEST_IMM_OP( slti, x13, x20, 0x0, 0x0000000000000010, -1366, x17, 80, x23)

# opcode: slti ; op1:x0; dest:x31; op1val:0x0000000000000020;  immval:-2048
TEST_IMM_OP( slti, x31, x0, 0x0, 0x0000000000000020, -2048, x17, 88, x23)

# opcode: slti ; op1:x11; dest:x10; op1val:0x0000000000000040;  immval:9
TEST_IMM_OP( slti, x10, x11, 0x0, 0x0000000000000040, 9, x17, 96, x23)

# opcode: slti ; op1:x24; dest:x30; op1val:0x0000000000000080;  immval:-33
TEST_IMM_OP( slti, x30, x24, 0x0, 0x0000000000000080, -33, x17, 104, x23)

# opcode: slti ; op1:x8; dest:x1; op1val:0x0000000000000100;  immval:3
TEST_IMM_OP( slti, x1, x8, 0x0, 0x0000000000000100, 3, x17, 112, x23)

# opcode: slti ; op1:x15; dest:x20; op1val:0x0000000000000200;  immval:-1366
TEST_IMM_OP( slti, x20, x15, 0x0, 0x0000000000000200, -1366, x17, 120, x23)

# opcode: slti ; op1:x2; dest:x15; op1val:0x0000000000000400;  immval:-65
TEST_IMM_OP( slti, x15, x2, 0x0, 0x0000000000000400, -65, x17, 128, x23)

# opcode: slti ; op1:x26; dest:x16; op1val:0x0000000000001000;  immval:32
TEST_IMM_OP( slti, x16, x26, 0x0, 0x0000000000001000, 32, x17, 136, x23)

# opcode: slti ; op1:x4; dest:x26; op1val:0x0000000000002000;  immval:32
TEST_IMM_OP( slti, x26, x4, 0x0, 0x0000000000002000, 32, x17, 144, x23)

# opcode: slti ; op1:x7; dest:x6; op1val:0x0000000000004000;  immval:-5
TEST_IMM_OP( slti, x6, x7, 0x0, 0x0000000000004000, -5, x17, 152, x23)

# opcode: slti ; op1:x12; dest:x27; op1val:0x0000000000008000;  immval:-8
TEST_IMM_OP( slti, x27, x12, 0x0, 0x0000000000008000, -8, x17, 160, x23)
la x2,signature_x2_0

# opcode: slti ; op1:x19; dest:x17; op1val:0x0000000000010000;  immval:64
TEST_IMM_OP( slti, x17, x19, 0x0, 0x0000000000010000, 64, x2, 0, x5)

# opcode: slti ; op1:x14; dest:x3; op1val:0x0000000000020000;  immval:-257
TEST_IMM_OP( slti, x3, x14, 0x0, 0x0000000000020000, -257, x2, 8, x5)

# opcode: slti ; op1:x1; dest:x0; op1val:0x0000000000040000;  immval:-4
TEST_IMM_OP( slti, x0, x1, 0x0, 0x0000000000040000, -4, x2, 16, x5)

# opcode: slti ; op1:x23; dest:x4; op1val:0x0000000000080000;  immval:-257
TEST_IMM_OP( slti, x4, x23, 0x0, 0x0000000000080000, -257, x2, 24, x5)

# opcode: slti ; op1:x16; dest:x21; op1val:0x0000000000100000;  immval:1024
TEST_IMM_OP( slti, x21, x16, 0x0, 0x0000000000100000, 1024, x2, 32, x5)

# opcode: slti ; op1:x25; dest:x12; op1val:0x0000000000200000;  immval:-129
TEST_IMM_OP( slti, x12, x25, 0x0, 0x0000000000200000, -129, x2, 40, x5)

# opcode: slti ; op1:x31; dest:x8; op1val:0x0000000000400000;  immval:1365
TEST_IMM_OP( slti, x8, x31, 0x0, 0x0000000000400000, 1365, x2, 48, x5)

# opcode: slti ; op1:x18; dest:x22; op1val:0x0000000000800000;  immval:-33
TEST_IMM_OP( slti, x22, x18, 0x0, 0x0000000000800000, -33, x2, 56, x5)

# opcode: slti ; op1:x27; dest:x29; op1val:0x0000000001000000;  immval:-4
TEST_IMM_OP( slti, x29, x27, 0x0, 0x0000000001000000, -4, x2, 64, x5)

# opcode: slti ; op1:x17; dest:x25; op1val:0x0000000002000000;  immval:-6
TEST_IMM_OP( slti, x25, x17, 0x0, 0x0000000002000000, -6, x2, 72, x5)

# opcode: slti ; op1:x10; dest:x23; op1val:0x0000000004000000;  immval:7
TEST_IMM_OP( slti, x23, x10, 0x0, 0x0000000004000000, 7, x2, 80, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000008000000, -65, x2, 88, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000010000000, -65, x2, 96, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000020000000, 6, x2, 104, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000040000000, -8, x2, 112, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000080000000, 4, x2, 120, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000100000000, -17, x2, 128, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000200000000, 3, x2, 136, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000400000000, -2048, x2, 144, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000800000000, 6, x2, 152, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000001000000000, -1, x2, 160, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000002000000000, 7, x2, 168, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000004000000000, -65, x2, 176, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000008000000000, -257, x2, 184, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000010000000000, -5, x2, 192, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000020000000000, 512, x2, 200, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000040000000000, 6, x2, 208, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000080000000000, 3, x2, 216, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000100000000000, -129, x2, 224, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000200000000000, -17, x2, 232, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000400000000000, -8, x2, 240, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000800000000000, -1024, x2, 248, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0002000000000000, -2, x2, 256, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0004000000000000, -3, x2, 264, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0008000000000000, 8, x2, 272, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0010000000000000, -4, x2, 280, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0020000000000000, 128, x2, 288, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0040000000000000, 3, x2, 296, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0080000000000000, -257, x2, 304, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0100000000000000, -257, x2, 312, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0200000000000000, 64, x2, 320, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:0
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0400000000000000, 0, x2, 328, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0800000000000000, -65, x2, 336, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x0, 0x1000000000000000, 6, x2, 344, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x0, 0x2000000000000000, -5, x2, 352, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x0, 0x4000000000000000, -6, x2, 360, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffffffffffe, -1366, x2, 368, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffffffffffd, -8, x2, 376, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffffffffffb, -5, x2, 384, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffff7, 2, x2, 392, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffffef, -9, x2, 400, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfff7ffffffffffff, -9, x2, 408, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffefffffffffffff, 1024, x2, 416, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffdfffffffffffff, 9, x2, 424, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffbfffffffffffff, 1, x2, 432, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xff7fffffffffffff, -4, x2, 440, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfeffffffffffffff, -2, x2, 448, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfdffffffffffffff, 1024, x2, 456, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfbffffffffffffff, -6, x2, 464, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x1, 0xf7ffffffffffffff, -513, x2, 472, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xefffffffffffffff, 8, x2, 480, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xdfffffffffffffff, -2, x2, 488, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x1, 0xbfffffffffffffff, -10, x2, 496, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x0, 0x5555555555555555, 5, x2, 504, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x1, 0xaaaaaaaaaaaaaaaa, 16, x2, 512, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000040000000, 256, x2, 520, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffff7fffffff, -1025, x2, 528, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffffdf, 128, x2, 536, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffffbf, 2047, x2, 544, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffff7f, 4, x2, 552, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffeff, 64, x2, 560, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffdff, 128, x2, 568, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffbff, 8, x2, 576, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffff7ff, 1, x2, 584, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffefff, 512, x2, 592, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffdfff, 4, x2, 600, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffbfff, -4, x2, 608, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffeffff, 256, x2, 616, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffdffff, -257, x2, 624, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffbffff, 512, x2, 632, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffff7ffff, 16, x2, 640, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffefffff, 2047, x2, 648, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffdfffff, -129, x2, 656, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffbfffff, -2048, x2, 664, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffff7fffff, 128, x2, 672, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffeffffff, -65, x2, 680, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffdffffff, 8, x2, 688, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffbffffff, -257, x2, 696, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffff7ffffff, -8, x2, 704, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffefffffff, 64, x2, 712, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffdfffffff, -65, x2, 720, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffbfffffff, 1365, x2, 728, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffeffffffff, 32, x2, 736, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffdffffffff, -4, x2, 744, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffbffffffff, 256, x2, 752, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffff7ffffffff, 512, x2, 760, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffefffffffff, 64, x2, 768, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffdfffffffff, 128, x2, 776, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:0
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffbfffffffff, 0, x2, 784, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffff7fffffffff, 2, x2, 792, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffeffffffffff, -1025, x2, 800, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffdffffffffff, 6, x2, 808, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffbffffffffff, -2048, x2, 816, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffff7ffffffffff, 6, x2, 824, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffefffffffffff, -1, x2, 832, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffdfffffffffff, -1366, x2, 840, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffbfffffffffff, 2047, x2, 848, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffff7fffffffffff, -1024, x2, 856, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffeffffffffffff, 2, x2, 864, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffdffffffffffff, 2047, x2, 872, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffbffffffffffff, -1024, x2, 880, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000000000;  immval:0
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000000000, 0, x2, 888, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000000020;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000000020, -2048, x2, 896, x5)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000040000, -4, x2, 904, x5)
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

signature_x17_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x17_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 114*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
