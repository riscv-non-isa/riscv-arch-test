
#This assembly file tests the andi instruction of the RISC-V I extension for the andi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",andi)

la x14,signature_x14_1

# opcode: andi ; op1:x10; dest:x10; op1val:0x0000000000000007;  immval:7
TEST_IMM_OP( andi, x10, x10, 0x7, 0x0000000000000007, 7, x14, 0, x1)

# opcode: andi ; op1:x9; dest:x18; op1val:0x0000000000000001;  immval:256
TEST_IMM_OP( andi, x18, x9, 0x0, 0x0000000000000001, 256, x14, 8, x1)

# opcode: andi ; op1:x6; dest:x5; op1val:0x0000400000000000;  immval:-2048
TEST_IMM_OP( andi, x5, x6, 0x400000000000, 0x0000400000000000, -2048, x14, 16, x1)

# opcode: andi ; op1:x12; dest:x17; op1val:0xc000000000000000;  immval:3
TEST_IMM_OP( andi, x17, x12, 0x0, 0xc000000000000000, 3, x14, 24, x1)

# opcode: andi ; op1:x20; dest:x8; op1val:0xfffbffffffffffff;  immval:-9
TEST_IMM_OP( andi, x8, x20, 0xfffbfffffffffff7, 0xfffbffffffffffff, -9, x14, 32, x1)

# opcode: andi ; op1:x4; dest:x9; op1val:0x8000000000000000;  immval:-3
TEST_IMM_OP( andi, x9, x4, 0x8000000000000000, 0x8000000000000000, -3, x14, 40, x1)

# opcode: andi ; op1:x22; dest:x4; op1val:0x0000000000000000;  immval:-4
TEST_IMM_OP( andi, x4, x22, 0x0, 0x0000000000000000, -4, x14, 48, x1)

# opcode: andi ; op1:x23; dest:x6; op1val:0x7fffffffffffffff;  immval:32
TEST_IMM_OP( andi, x6, x23, 0x20, 0x7fffffffffffffff, 32, x14, 56, x1)

# opcode: andi ; op1:x11; dest:x25; op1val:0x0008000000000000;  immval:0
TEST_IMM_OP( andi, x25, x11, 0x0, 0x0008000000000000, 0, x14, 64, x1)

# opcode: andi ; op1:x31; dest:x29; op1val:0x0000100000000000;  immval:2047
TEST_IMM_OP( andi, x29, x31, 0x0, 0x0000100000000000, 2047, x14, 72, x1)

# opcode: andi ; op1:x28; dest:x2; op1val:0x0000000000000004;  immval:1
TEST_IMM_OP( andi, x2, x28, 0x0, 0x0000000000000004, 1, x14, 80, x1)

# opcode: andi ; op1:x16; dest:x13; op1val:0x0000000000000002;  immval:-8
TEST_IMM_OP( andi, x13, x16, 0x0, 0x0000000000000002, -8, x14, 88, x1)

# opcode: andi ; op1:x13; dest:x7; op1val:0x0000000000000008;  immval:0
TEST_IMM_OP( andi, x7, x13, 0x0, 0x0000000000000008, 0, x14, 96, x1)

# opcode: andi ; op1:x30; dest:x12; op1val:0x0000000000000010;  immval:-1025
TEST_IMM_OP( andi, x12, x30, 0x10, 0x0000000000000010, -1025, x14, 104, x1)

# opcode: andi ; op1:x8; dest:x23; op1val:0x0000000000000020;  immval:5
TEST_IMM_OP( andi, x23, x8, 0x0, 0x0000000000000020, 5, x14, 112, x1)

# opcode: andi ; op1:x19; dest:x3; op1val:0x0000000000000040;  immval:-10
TEST_IMM_OP( andi, x3, x19, 0x40, 0x0000000000000040, -10, x14, 120, x1)

# opcode: andi ; op1:x18; dest:x26; op1val:0x0000000000000080;  immval:2
TEST_IMM_OP( andi, x26, x18, 0x0, 0x0000000000000080, 2, x14, 128, x1)

# opcode: andi ; op1:x27; dest:x15; op1val:0x0000000000000100;  immval:512
TEST_IMM_OP( andi, x15, x27, 0x0, 0x0000000000000100, 512, x14, 136, x1)

# opcode: andi ; op1:x7; dest:x1; op1val:0x0000000000000200;  immval:-129
TEST_IMM_OP( andi, x1, x7, 0x200, 0x0000000000000200, -129, x14, 144, x6)
la x4,signature_x4_0

# opcode: andi ; op1:x25; dest:x11; op1val:0x0000000000000400;  immval:128
TEST_IMM_OP( andi, x11, x25, 0x0, 0x0000000000000400, 128, x4, 0, x6)

# opcode: andi ; op1:x1; dest:x14; op1val:0x0000000000000800;  immval:1024
TEST_IMM_OP( andi, x14, x1, 0x0, 0x0000000000000800, 1024, x4, 8, x6)

# opcode: andi ; op1:x2; dest:x20; op1val:0x0000000000001000;  immval:1365
TEST_IMM_OP( andi, x20, x2, 0x0, 0x0000000000001000, 1365, x4, 16, x6)

# opcode: andi ; op1:x5; dest:x31; op1val:0x0000000000002000;  immval:-8
TEST_IMM_OP( andi, x31, x5, 0x2000, 0x0000000000002000, -8, x4, 24, x6)

# opcode: andi ; op1:x26; dest:x22; op1val:0x0000000000004000;  immval:-10
TEST_IMM_OP( andi, x22, x26, 0x4000, 0x0000000000004000, -10, x4, 32, x6)

# opcode: andi ; op1:x17; dest:x27; op1val:0x0000000000008000;  immval:1365
TEST_IMM_OP( andi, x27, x17, 0x0, 0x0000000000008000, 1365, x4, 40, x6)

# opcode: andi ; op1:x21; dest:x0; op1val:0x0000000000010000;  immval:8
TEST_IMM_OP( andi, x0, x21, 0x0, 0x0000000000010000, 8, x4, 48, x6)

# opcode: andi ; op1:x24; dest:x21; op1val:0x0000000000020000;  immval:1365
TEST_IMM_OP( andi, x21, x24, 0x0, 0x0000000000020000, 1365, x4, 56, x6)

# opcode: andi ; op1:x29; dest:x30; op1val:0x0000000000040000;  immval:8
TEST_IMM_OP( andi, x30, x29, 0x0, 0x0000000000040000, 8, x4, 64, x6)

# opcode: andi ; op1:x0; dest:x24; op1val:0x0000000000080000;  immval:64
TEST_IMM_OP( andi, x24, x0, 0x0, 0x0000000000080000, 64, x4, 72, x6)

# opcode: andi ; op1:x15; dest:x28; op1val:0x0000000000100000;  immval:16
TEST_IMM_OP( andi, x28, x15, 0x0, 0x0000000000100000, 16, x4, 80, x6)

# opcode: andi ; op1:x3; dest:x16; op1val:0x0000000000200000;  immval:-1366
TEST_IMM_OP( andi, x16, x3, 0x200000, 0x0000000000200000, -1366, x4, 88, x6)

# opcode: andi ; op1:x14; dest:x19; op1val:0x0000000000400000;  immval:16
TEST_IMM_OP( andi, x19, x14, 0x0, 0x0000000000400000, 16, x4, 96, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000800000, 64, x4, 104, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0x1000000, 0x0000000001000000, -3, x4, 112, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000002000000, 3, x4, 120, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000004000000, 3, x4, 128, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000008000000, 0, x4, 136, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0x10000000, 0x0000000010000000, -1366, x4, 144, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000020000000, 4, x4, 152, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0x40000000, 0x0000000040000000, -7, x4, 160, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0x80000000, 0x0000000080000000, -513, x4, 168, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0x100000000, 0x0000000100000000, -6, x4, 176, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0x200000000, 0x0000000200000000, -10, x4, 184, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000400000000, 2, x4, 192, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000800000000, 1023, x4, 200, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:-1024
TEST_IMM_OP( andi, x11, x10, 0x1000000000, 0x0000001000000000, -1024, x4, 208, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000002000000000, 1, x4, 216, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000004000000000, 256, x4, 224, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000008000000000, 1365, x4, 232, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000010000000000, 5, x4, 240, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000020000000000, 64, x4, 248, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0x40000000000, 0x0000040000000000, -129, x4, 256, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000080000000000, 3, x4, 264, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0x200000000000, 0x0000200000000000, -1366, x4, 272, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000800000000000, 9, x4, 280, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0x1000000000000, 0x0001000000000000, -129, x4, 288, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0x2000000000000, 0x0002000000000000, -33, x4, 296, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0004000000000000, 9, x4, 304, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0010000000000000, 3, x4, 312, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0020000000000000, 1024, x4, 320, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0x40000000000000, 0x0040000000000000, -513, x4, 328, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0080000000000000, 4, x4, 336, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0x100000000000000, 0x0100000000000000, -257, x4, 344, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0200000000000000, 256, x4, 352, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0x400000000000000, 0x0400000000000000, -129, x4, 360, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0800000000000000, 1, x4, 368, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x0, 0x1000000000000000, 7, x4, 376, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0x2000000000000000, 0x2000000000000000, -513, x4, 384, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x0, 0x4000000000000000, 5, x4, 392, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffefe, 0xfffffffffffffffe, -257, x4, 400, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xfffffffffffffffd, 16, x4, 408, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffff8, 0xfffffffffffffffb, -4, x4, 416, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x1, 0xfffffffffffffff7, 9, x4, 424, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0xffffffffffffffef, 0, x4, 432, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xfff7ffffffffffbf, 0xfff7ffffffffffff, -65, x4, 440, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xffefffffffffffff, 0xffefffffffffffff, -1, x4, 448, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xffdffffffffffff6, 0xffdfffffffffffff, -10, x4, 456, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xffbffffffffffff8, 0xffbfffffffffffff, -8, x4, 464, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xff7fffffffffffff, 256, x4, 472, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xfeffffffffffffbf, 0xfeffffffffffffff, -65, x4, 480, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xfdffffffffffffff, 6, x4, 488, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xfbffffffffffffff, 256, x4, 496, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xf7ffffffffffffff, 64, x4, 504, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xeffffffffffffffe, 0xefffffffffffffff, -2, x4, 512, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x7, 0xdfffffffffffffff, 7, x4, 520, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0xbffffffffffffffd, 0xbfffffffffffffff, -3, x4, 528, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0x5555555555555455, 0x5555555555555555, -257, x4, 536, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0xaaaaaaaaaaaaaaaa, 0, x4, 544, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000000003;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0x3, 0x0000000000000003, -5, x4, 552, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0x1000000000000000, 0x1000000000000000, -17, x4, 560, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffffdf, 0xffffffffffffffdf, -33, x4, 568, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x3bf, 0xffffffffffffffbf, 1023, x4, 576, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xffffffffffffff7f, 16, x4, 584, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffedf, 0xfffffffffffffeff, -33, x4, 592, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0xfffffffffffffdff, 512, x4, 600, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xfffffffffffffbff, 256, x4, 608, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffff7fa, 0xfffffffffffff7ff, -6, x4, 616, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x5, 0xffffffffffffefff, 5, x4, 624, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffdff6, 0xffffffffffffdfff, -10, x4, 632, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffbffe, 0xffffffffffffbfff, -2, x4, 640, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xffffffffffff7fff, 9, x4, 648, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffefff6, 0xfffffffffffeffff, -10, x4, 656, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xfffffffffffdffff, 1, x4, 664, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xfffffffffffbffff, 9, x4, 672, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xfffffffffff7ffff, 3, x4, 680, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x5, 0xffffffffffefffff, 5, x4, 688, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xffffffffffdfffff, 8, x4, 696, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0xffffffffffbffdff, 0xffffffffffbfffff, -513, x4, 704, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xffffffffff7fffff, 256, x4, 712, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfffffffffefffff8, 0xfffffffffeffffff, -8, x4, 720, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xfffffffffdffffff, 256, x4, 728, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xfffffffffbffffff, 9, x4, 736, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xfffffffff7ffffff, 32, x4, 744, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0xffffffffeffffffd, 0xffffffffefffffff, -3, x4, 752, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xffffffffdffffaaa, 0xffffffffdfffffff, -1366, x4, 760, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0xffffffffbffffffd, 0xffffffffbfffffff, -3, x4, 768, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xffffffff7fffffbf, 0xffffffff7fffffff, -65, x4, 776, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfffffffefffffff8, 0xfffffffeffffffff, -8, x4, 784, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xfffffffdffffffdf, 0xfffffffdffffffff, -33, x4, 792, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0xfffffffbfffffffb, 0xfffffffbffffffff, -5, x4, 800, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xfffffff7ffffffff, 9, x4, 808, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x2, 0xffffffefffffffff, 2, x4, 816, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xffffffdfffffffff, 16, x4, 824, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xffffffbfffffffff, 0xffffffbfffffffff, -1, x4, 832, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xffffff7fffffffff, 1, x4, 840, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0xfffffefffffffffd, 0xfffffeffffffffff, -3, x4, 848, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0xfffffdfffffffff9, 0xfffffdffffffffff, -7, x4, 856, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x400, 0xfffffbffffffffff, 1024, x4, 864, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xfffff7ffffffffff, 32, x4, 872, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x3ff, 0xffffefffffffffff, 1023, x4, 880, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xffffdfffffffffdf, 0xffffdfffffffffff, -33, x4, 888, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x400, 0xffffbfffffffffff, 1024, x4, 896, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0xffff7ffffffffff9, 0xffff7fffffffffff, -7, x4, 904, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xfffeffffffffffff, 1, x4, 912, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xfffdffffffffff7f, 0xfffdffffffffffff, -129, x4, 920, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000000007;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x7, 0x0000000000000007, 7, x4, 928, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000010000, 8, x4, 936, x6)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000080000, 64, x4, 944, x6)
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
    .fill 19*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 119*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
