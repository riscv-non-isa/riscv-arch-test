
#This assembly file tests the slti instruction of the RISC-V I extension for the slti covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slti)

la x11,signature_x11_1

# opcode: slti ; op1:x19; dest:x19; op1val:0x0000000000000400;  immval:1024
TEST_IMM_OP( slti, x19, x19, 0x0, 0x0000000000000400, 1024, x11, 0, x12)

# opcode: slti ; op1:x29; dest:x9; op1val:0x0000000100000000;  immval:2
TEST_IMM_OP( slti, x9, x29, 0x0, 0x0000000100000000, 2, x11, 8, x12)

# opcode: slti ; op1:x8; dest:x24; op1val:0x0000000000010000;  immval:-2
TEST_IMM_OP( slti, x24, x8, 0x0, 0x0000000000010000, -2, x11, 16, x12)

# opcode: slti ; op1:x15; dest:x5; op1val:0xfffffffffffdffff;  immval:3
TEST_IMM_OP( slti, x5, x15, 0x1, 0xfffffffffffdffff, 3, x11, 24, x12)

# opcode: slti ; op1:x27; dest:x0; op1val:0xdfffffffffffffff;  immval:-129
TEST_IMM_OP( slti, x0, x27, 0x1, 0xdfffffffffffffff, -129, x11, 32, x12)

# opcode: slti ; op1:x31; dest:x2; op1val:0x8000000000000000;  immval:5
TEST_IMM_OP( slti, x2, x31, 0x1, 0x8000000000000000, 5, x11, 40, x12)

# opcode: slti ; op1:x2; dest:x3; op1val:0x0000000000000000;  immval:4
TEST_IMM_OP( slti, x3, x2, 0x1, 0x0000000000000000, 4, x11, 48, x12)

# opcode: slti ; op1:x13; dest:x1; op1val:0x7fffffffffffffff;  immval:64
TEST_IMM_OP( slti, x1, x13, 0x0, 0x7fffffffffffffff, 64, x11, 56, x12)

# opcode: slti ; op1:x22; dest:x21; op1val:0x0000000000000001;  immval:-257
TEST_IMM_OP( slti, x21, x22, 0x0, 0x0000000000000001, -257, x11, 64, x12)

# opcode: slti ; op1:x20; dest:x28; op1val:0xfffffffffffffffc;  immval:-2048
TEST_IMM_OP( slti, x28, x20, 0x0, 0xfffffffffffffffc, -2048, x11, 72, x12)

# opcode: slti ; op1:x16; dest:x18; op1val:0x0000000000000008;  immval:0
TEST_IMM_OP( slti, x18, x16, 0x0, 0x0000000000000008, 0, x11, 80, x12)

# opcode: slti ; op1:x23; dest:x6; op1val:0xfffffffffffbffff;  immval:2047
TEST_IMM_OP( slti, x6, x23, 0x1, 0xfffffffffffbffff, 2047, x11, 88, x12)

# opcode: slti ; op1:x17; dest:x8; op1val:0xfffeffffffffffff;  immval:1
TEST_IMM_OP( slti, x8, x17, 0x1, 0xfffeffffffffffff, 1, x11, 96, x12)

# opcode: slti ; op1:x5; dest:x4; op1val:0x0000000000000002;  immval:5
TEST_IMM_OP( slti, x4, x5, 0x1, 0x0000000000000002, 5, x11, 104, x12)

# opcode: slti ; op1:x26; dest:x22; op1val:0x0000000000000004;  immval:-3
TEST_IMM_OP( slti, x22, x26, 0x0, 0x0000000000000004, -3, x11, 112, x12)

# opcode: slti ; op1:x10; dest:x23; op1val:0x0000000000000010;  immval:3
TEST_IMM_OP( slti, x23, x10, 0x0, 0x0000000000000010, 3, x11, 120, x12)

# opcode: slti ; op1:x7; dest:x25; op1val:0x0000000000000020;  immval:128
TEST_IMM_OP( slti, x25, x7, 0x1, 0x0000000000000020, 128, x11, 128, x12)

# opcode: slti ; op1:x25; dest:x29; op1val:0x0000000000000040;  immval:512
TEST_IMM_OP( slti, x29, x25, 0x1, 0x0000000000000040, 512, x11, 136, x2)

# opcode: slti ; op1:x3; dest:x13; op1val:0x0000000000000080;  immval:-1025
TEST_IMM_OP( slti, x13, x3, 0x0, 0x0000000000000080, -1025, x11, 144, x2)

# opcode: slti ; op1:x0; dest:x15; op1val:0x0000000000000100;  immval:1
TEST_IMM_OP( slti, x15, x0, 0x0, 0x0000000000000100, 1, x11, 152, x2)

# opcode: slti ; op1:x1; dest:x10; op1val:0x0000000000000200;  immval:-1024
TEST_IMM_OP( slti, x10, x1, 0x0, 0x0000000000000200, -1024, x11, 160, x2)

# opcode: slti ; op1:x14; dest:x17; op1val:0x0000000000000800;  immval:-9
TEST_IMM_OP( slti, x17, x14, 0x0, 0x0000000000000800, -9, x11, 168, x2)
la x1,signature_x1_0

# opcode: slti ; op1:x30; dest:x27; op1val:0x0000000000001000;  immval:16
TEST_IMM_OP( slti, x27, x30, 0x0, 0x0000000000001000, 16, x1, 0, x2)

# opcode: slti ; op1:x6; dest:x7; op1val:0x0000000000002000;  immval:64
TEST_IMM_OP( slti, x7, x6, 0x0, 0x0000000000002000, 64, x1, 8, x2)

# opcode: slti ; op1:x9; dest:x16; op1val:0x0000000000004000;  immval:-8
TEST_IMM_OP( slti, x16, x9, 0x0, 0x0000000000004000, -8, x1, 16, x2)

# opcode: slti ; op1:x4; dest:x26; op1val:0x0000000000008000;  immval:-1025
TEST_IMM_OP( slti, x26, x4, 0x0, 0x0000000000008000, -1025, x1, 24, x2)

# opcode: slti ; op1:x21; dest:x31; op1val:0x0000000000020000;  immval:-65
TEST_IMM_OP( slti, x31, x21, 0x0, 0x0000000000020000, -65, x1, 32, x2)

# opcode: slti ; op1:x28; dest:x12; op1val:0x0000000000040000;  immval:-513
TEST_IMM_OP( slti, x12, x28, 0x0, 0x0000000000040000, -513, x1, 40, x2)

# opcode: slti ; op1:x12; dest:x11; op1val:0x0000000000080000;  immval:-257
TEST_IMM_OP( slti, x11, x12, 0x0, 0x0000000000080000, -257, x1, 48, x2)

# opcode: slti ; op1:x24; dest:x20; op1val:0x0000000000100000;  immval:-1366
TEST_IMM_OP( slti, x20, x24, 0x0, 0x0000000000100000, -1366, x1, 56, x2)

# opcode: slti ; op1:x18; dest:x14; op1val:0x0000000000200000;  immval:-33
TEST_IMM_OP( slti, x14, x18, 0x0, 0x0000000000200000, -33, x1, 64, x2)

# opcode: slti ; op1:x11; dest:x30; op1val:0x0000000000400000;  immval:-3
TEST_IMM_OP( slti, x30, x11, 0x0, 0x0000000000400000, -3, x1, 72, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000800000, 32, x1, 80, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000001000000, 4, x1, 88, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000002000000, -1024, x1, 96, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000004000000, -3, x1, 104, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000008000000, -7, x1, 112, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000010000000, -7, x1, 120, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000020000000, 16, x1, 128, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000040000000, 2, x1, 136, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000080000000, -7, x1, 144, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000200000000, 1365, x1, 152, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000400000000, 64, x1, 160, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:0
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000800000000, 0, x1, 168, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000001000000000, -257, x1, 176, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000002000000000, 1365, x1, 184, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000004000000000, 1365, x1, 192, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000008000000000, -7, x1, 200, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000010000000000, -513, x1, 208, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000020000000000, -2048, x1, 216, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000040000000000, 512, x1, 224, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000080000000000, 32, x1, 232, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000100000000000, -2, x1, 240, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-7
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000200000000000, -7, x1, 248, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000400000000000, -2, x1, 256, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000800000000000, -257, x1, 264, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0001000000000000, 9, x1, 272, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0002000000000000, -2, x1, 280, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0004000000000000, 128, x1, 288, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0008000000000000, -9, x1, 296, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0010000000000000, 9, x1, 304, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0020000000000000, -2048, x1, 312, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0040000000000000, 64, x1, 320, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0080000000000000, -1025, x1, 328, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0100000000000000, 128, x1, 336, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0200000000000000, 4, x1, 344, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:5
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0400000000000000, 5, x1, 352, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0800000000000000, 64, x1, 360, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-33
TEST_IMM_OP( slti, x11, x10, 0x0, 0x1000000000000000, -33, x1, 368, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x0, 0x2000000000000000, -1025, x1, 376, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0x4000000000000000, 1024, x1, 384, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffffe, 128, x1, 392, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffffffffffd, -5, x1, 400, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfff7ffffffffffff, -2048, x1, 408, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffefffffffffffff, -513, x1, 416, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffdfffffffffffff, 128, x1, 424, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffbfffffffffffff, -9, x1, 432, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xff7fffffffffffff, 64, x1, 440, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfeffffffffffffff, 512, x1, 448, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfdffffffffffffff, 8, x1, 456, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:512
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfbffffffffffffff, 512, x1, 464, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xf7ffffffffffffff, -2, x1, 472, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:2047
TEST_IMM_OP( slti, x11, x10, 0x1, 0xefffffffffffffff, 2047, x1, 480, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xbfffffffffffffff, -6, x1, 488, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:1023
TEST_IMM_OP( slti, x11, x10, 0x0, 0x5555555555555555, 1023, x1, 496, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x1, 0xaaaaaaaaaaaaaaaa, -257, x1, 504, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000000100;  immval:256
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000000100, 256, x1, 512, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:-17
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffbffffffffffff, -17, x1, 520, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0xfffffffffffffffb, -1024, x1, 528, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffff7, 128, x1, 536, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-10
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffffef, -10, x1, 544, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffffdf, -5, x1, 552, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x0, 0xffffffffffffffbf, -1025, x1, 560, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x0, 0xffffffffffffff7f, -1366, x1, 568, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffeff, 6, x1, 576, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffdff, 8, x1, 584, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffffbff, 32, x1, 592, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffff7ff, 8, x1, 600, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-5
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffefff, -5, x1, 608, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:1365
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffdfff, 1365, x1, 616, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffffbfff, -8, x1, 624, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffff7fff, -2, x1, 632, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffffeffff, -2048, x1, 640, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-257
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffff7ffff, -257, x1, 648, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffefffff, -1366, x1, 656, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:32
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffdfffff, 32, x1, 664, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-2048
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffffbfffff, -2048, x1, 672, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-65
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffff7fffff, -65, x1, 680, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffeffffff, 64, x1, 688, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffdffffff, -3, x1, 696, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffffbffffff, -8, x1, 704, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffff7ffffff, 6, x1, 712, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffefffffff, 9, x1, 720, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:16
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffdfffffff, 16, x1, 728, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:-1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffffbfffffff, -1024, x1, 736, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-1
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffff7fffffff, -1, x1, 744, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-8
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffeffffffff, -8, x1, 752, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffdffffffff, 64, x1, 760, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffffbffffffff, 4, x1, 768, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:64
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffff7ffffffff, 64, x1, 776, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-1366
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffefffffffff, -1366, x1, 784, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffdfffffffff, 6, x1, 792, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffffbfffffffff, 3, x1, 800, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:128
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffff7fffffffff, 128, x1, 808, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffeffffffffff, 4, x1, 816, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffdffffffffff, 1024, x1, 824, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-513
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffffbffffffffff, -513, x1, 832, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:9
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffff7ffffffffff, 9, x1, 840, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-1025
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffefffffffffff, -1025, x1, 848, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-3
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffdfffffffffff, -3, x1, 856, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-4
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffffbfffffffffff, -4, x1, 864, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-2
TEST_IMM_OP( slti, x11, x10, 0x1, 0xffff7fffffffffff, -2, x1, 872, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:6
TEST_IMM_OP( slti, x11, x10, 0x1, 0xfffdffffffffffff, 6, x1, 880, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000000400;  immval:1024
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000000400, 1024, x1, 888, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-129
TEST_IMM_OP( slti, x11, x10, 0x1, 0xdfffffffffffffff, -129, x1, 896, x2)

# opcode: slti ; op1:x10; dest:x11; op1val:0x0000000000000100;  immval:1
TEST_IMM_OP( slti, x11, x10, 0x0, 0x0000000000000100, 1, x1, 904, x2)
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

signature_x11_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x11_1:
    .fill 22*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 114*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
