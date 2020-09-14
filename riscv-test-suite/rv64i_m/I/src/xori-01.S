
#This assembly file tests the xori instruction of the RISC-V I extension for the xori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xori)

la x11,signature_x11_1

# opcode: xori ; op1:x13; dest:x13; op1val:0x0000000000000005;  immval:5
TEST_IMM_OP( xori, x13, x13, 0x0, 0x0000000000000005, 5, x11, 0, x3)

# opcode: xori ; op1:x6; dest:x21; op1val:0xc000000000000000;  immval:-8
TEST_IMM_OP( xori, x21, x6, 0x3ffffffffffffff8, 0xc000000000000000, -8, x11, 8, x3)

# opcode: xori ; op1:x10; dest:x31; op1val:0x0080000000000000;  immval:-1366
TEST_IMM_OP( xori, x31, x10, 0xff7ffffffffffaaa, 0x0080000000000000, -1366, x11, 16, x3)

# opcode: xori ; op1:x27; dest:x10; op1val:0xffffff7fffffffff;  immval:1023
TEST_IMM_OP( xori, x10, x27, 0xffffff7ffffffc00, 0xffffff7fffffffff, 1023, x11, 24, x3)

# opcode: xori ; op1:x30; dest:x24; op1val:0x8000000000000000;  immval:128
TEST_IMM_OP( xori, x24, x30, 0x8000000000000080, 0x8000000000000000, 128, x11, 32, x3)

# opcode: xori ; op1:x14; dest:x29; op1val:0x0000000000000000;  immval:-2
TEST_IMM_OP( xori, x29, x14, 0xfffffffffffffffe, 0x0000000000000000, -2, x11, 40, x3)

# opcode: xori ; op1:x12; dest:x5; op1val:0x7fffffffffffffff;  immval:512
TEST_IMM_OP( xori, x5, x12, 0x7ffffffffffffdff, 0x7fffffffffffffff, 512, x11, 48, x3)

# opcode: xori ; op1:x23; dest:x18; op1val:0x0000000000000001;  immval:-513
TEST_IMM_OP( xori, x18, x23, 0xfffffffffffffdfe, 0x0000000000000001, -513, x11, 56, x3)

# opcode: xori ; op1:x25; dest:x8; op1val:0xffffffffbfffffff;  immval:-2048
TEST_IMM_OP( xori, x8, x25, 0x400007ff, 0xffffffffbfffffff, -2048, x11, 64, x3)

# opcode: xori ; op1:x20; dest:x26; op1val:0xffffffffffffffdf;  immval:0
TEST_IMM_OP( xori, x26, x20, 0xffffffffffffffdf, 0xffffffffffffffdf, 0, x11, 72, x3)

# opcode: xori ; op1:x8; dest:x7; op1val:0xffffffbfffffffff;  immval:2047
TEST_IMM_OP( xori, x7, x8, 0xffffffbffffff800, 0xffffffbfffffffff, 2047, x11, 80, x3)

# opcode: xori ; op1:x24; dest:x16; op1val:0x0000800000000000;  immval:1
TEST_IMM_OP( xori, x16, x24, 0x800000000001, 0x0000800000000000, 1, x11, 88, x3)

# opcode: xori ; op1:x1; dest:x4; op1val:0x0000000000000002;  immval:-5
TEST_IMM_OP( xori, x4, x1, 0xfffffffffffffff9, 0x0000000000000002, -5, x11, 96, x3)

# opcode: xori ; op1:x22; dest:x28; op1val:0x0000000000000004;  immval:-10
TEST_IMM_OP( xori, x28, x22, 0xfffffffffffffff2, 0x0000000000000004, -10, x11, 104, x3)

# opcode: xori ; op1:x17; dest:x6; op1val:0x0000000000000008;  immval:256
TEST_IMM_OP( xori, x6, x17, 0x108, 0x0000000000000008, 256, x11, 112, x3)

# opcode: xori ; op1:x31; dest:x27; op1val:0x0000000000000010;  immval:3
TEST_IMM_OP( xori, x27, x31, 0x13, 0x0000000000000010, 3, x11, 120, x3)

# opcode: xori ; op1:x19; dest:x2; op1val:0x0000000000000020;  immval:4
TEST_IMM_OP( xori, x2, x19, 0x24, 0x0000000000000020, 4, x11, 128, x3)

# opcode: xori ; op1:x9; dest:x3; op1val:0x0000000000000040;  immval:8
TEST_IMM_OP( xori, x3, x9, 0x48, 0x0000000000000040, 8, x11, 136, x8)
la x6,signature_x6_0

# opcode: xori ; op1:x16; dest:x19; op1val:0x0000000000000080;  immval:-6
TEST_IMM_OP( xori, x19, x16, 0xffffffffffffff7a, 0x0000000000000080, -6, x6, 0, x8)

# opcode: xori ; op1:x11; dest:x23; op1val:0x0000000000000100;  immval:1
TEST_IMM_OP( xori, x23, x11, 0x101, 0x0000000000000100, 1, x6, 8, x8)

# opcode: xori ; op1:x28; dest:x11; op1val:0x0000000000000200;  immval:-9
TEST_IMM_OP( xori, x11, x28, 0xfffffffffffffdf7, 0x0000000000000200, -9, x6, 16, x8)

# opcode: xori ; op1:x15; dest:x22; op1val:0x0000000000000400;  immval:16
TEST_IMM_OP( xori, x22, x15, 0x410, 0x0000000000000400, 16, x6, 24, x8)

# opcode: xori ; op1:x4; dest:x25; op1val:0x0000000000000800;  immval:-10
TEST_IMM_OP( xori, x25, x4, 0xfffffffffffff7f6, 0x0000000000000800, -10, x6, 32, x8)

# opcode: xori ; op1:x3; dest:x30; op1val:0x0000000000001000;  immval:16
TEST_IMM_OP( xori, x30, x3, 0x1010, 0x0000000000001000, 16, x6, 40, x8)

# opcode: xori ; op1:x0; dest:x12; op1val:0x0000000000002000;  immval:-9
TEST_IMM_OP( xori, x12, x0, 0xffffffffffffdff7, 0x0000000000002000, -9, x6, 48, x8)

# opcode: xori ; op1:x18; dest:x0; op1val:0x0000000000004000;  immval:-513
TEST_IMM_OP( xori, x0, x18, 0xffffffffffffbdff, 0x0000000000004000, -513, x6, 56, x8)

# opcode: xori ; op1:x2; dest:x14; op1val:0x0000000000008000;  immval:-2048
TEST_IMM_OP( xori, x14, x2, 0xffffffffffff7800, 0x0000000000008000, -2048, x6, 64, x8)

# opcode: xori ; op1:x21; dest:x1; op1val:0x0000000000010000;  immval:-17
TEST_IMM_OP( xori, x1, x21, 0xfffffffffffeffef, 0x0000000000010000, -17, x6, 72, x8)

# opcode: xori ; op1:x5; dest:x17; op1val:0x0000000000020000;  immval:-1025
TEST_IMM_OP( xori, x17, x5, 0xfffffffffffdfbff, 0x0000000000020000, -1025, x6, 80, x8)

# opcode: xori ; op1:x29; dest:x9; op1val:0x0000000000040000;  immval:128
TEST_IMM_OP( xori, x9, x29, 0x40080, 0x0000000000040000, 128, x6, 88, x8)

# opcode: xori ; op1:x7; dest:x20; op1val:0x0000000000080000;  immval:-65
TEST_IMM_OP( xori, x20, x7, 0xfffffffffff7ffbf, 0x0000000000080000, -65, x6, 96, x8)

# opcode: xori ; op1:x26; dest:x15; op1val:0x0000000000100000;  immval:16
TEST_IMM_OP( xori, x15, x26, 0x100010, 0x0000000000100000, 16, x6, 104, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0xffffffffffdffdff, 0x0000000000200000, -513, x6, 112, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:256
TEST_IMM_OP( xori, x11, x10, 0x400100, 0x0000000000400000, 256, x6, 120, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0xffffffffff7fffdf, 0x0000000000800000, -33, x6, 128, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0xfffffffffefffffb, 0x0000000001000000, -5, x6, 136, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:7
TEST_IMM_OP( xori, x11, x10, 0x2000007, 0x0000000002000000, 7, x6, 144, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:16
TEST_IMM_OP( xori, x11, x10, 0x4000010, 0x0000000004000000, 16, x6, 152, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0xfffffffff7ffffff, 0x0000000008000000, -1, x6, 160, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:5
TEST_IMM_OP( xori, x11, x10, 0x10000005, 0x0000000010000000, 5, x6, 168, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0x200007ff, 0x0000000020000000, 2047, x6, 176, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0xffffffffbffffff9, 0x0000000040000000, -7, x6, 184, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0xffffffff7ffffffb, 0x0000000080000000, -5, x6, 192, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:5
TEST_IMM_OP( xori, x11, x10, 0x100000005, 0x0000000100000000, 5, x6, 200, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:64
TEST_IMM_OP( xori, x11, x10, 0x200000040, 0x0000000200000000, 64, x6, 208, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0xfffffffbfffffff9, 0x0000000400000000, -7, x6, 216, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:0
TEST_IMM_OP( xori, x11, x10, 0x800000000, 0x0000000800000000, 0, x6, 224, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:64
TEST_IMM_OP( xori, x11, x10, 0x1000000040, 0x0000001000000000, 64, x6, 232, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:64
TEST_IMM_OP( xori, x11, x10, 0x2000000040, 0x0000002000000000, 64, x6, 240, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:16
TEST_IMM_OP( xori, x11, x10, 0x4000000010, 0x0000004000000000, 16, x6, 248, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0xffffff7fffffff7f, 0x0000008000000000, -129, x6, 256, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0xfffffeffffffff7f, 0x0000010000000000, -129, x6, 264, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0xfffffdffffffffff, 0x0000020000000000, -1, x6, 272, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:8
TEST_IMM_OP( xori, x11, x10, 0x40000000008, 0x0000040000000000, 8, x6, 280, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:9
TEST_IMM_OP( xori, x11, x10, 0x80000000009, 0x0000080000000000, 9, x6, 288, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:512
TEST_IMM_OP( xori, x11, x10, 0x100000000200, 0x0000100000000000, 512, x6, 296, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0xffffdffffffffffc, 0x0000200000000000, -4, x6, 304, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0xffffbffffffffffe, 0x0000400000000000, -2, x6, 312, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:-2048
TEST_IMM_OP( xori, x11, x10, 0xfffefffffffff800, 0x0001000000000000, -2048, x6, 320, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0xfffdfffffffffffc, 0x0002000000000000, -4, x6, 328, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0xfffbfffffffffffd, 0x0004000000000000, -3, x6, 336, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:2
TEST_IMM_OP( xori, x11, x10, 0x8000000000002, 0x0008000000000000, 2, x6, 344, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0xffefffffffffffff, 0x0010000000000000, -1, x6, 352, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0x200000000003ff, 0x0020000000000000, 1023, x6, 360, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0xffbffffffffffeff, 0x0040000000000000, -257, x6, 368, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xfefffffffffffaaa, 0x0100000000000000, -1366, x6, 376, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0xfdfffffffffffdff, 0x0200000000000000, -513, x6, 384, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:32
TEST_IMM_OP( xori, x11, x10, 0x400000000000020, 0x0400000000000000, 32, x6, 392, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0xf7fffffffffffff9, 0x0800000000000000, -7, x6, 400, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:4
TEST_IMM_OP( xori, x11, x10, 0x1000000000000004, 0x1000000000000000, 4, x6, 408, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:512
TEST_IMM_OP( xori, x11, x10, 0x2000000000000200, 0x2000000000000000, 512, x6, 416, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0x40000000000007ff, 0x4000000000000000, 2047, x6, 424, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xfff7ffffffffffbf, 0xfff7ffffffffffff, 64, x6, 432, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xffeffffffffff800, 0xffefffffffffffff, 2047, x6, 440, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0x20000000000009, 0xffdfffffffffffff, -10, x6, 448, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0xffbffffffffffbff, 0xffbfffffffffffff, 1024, x6, 456, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:128
TEST_IMM_OP( xori, x11, x10, 0xff7fffffffffff7f, 0xff7fffffffffffff, 128, x6, 464, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x100000000000001, 0xfeffffffffffffff, -2, x6, 472, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:5
TEST_IMM_OP( xori, x11, x10, 0xfdfffffffffffffa, 0xfdffffffffffffff, 5, x6, 480, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xfbfffffffffffaaa, 0xfbffffffffffffff, 1365, x6, 488, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xf7fffffffffffff7, 0xf7ffffffffffffff, 8, x6, 496, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xeffffffffffff800, 0xefffffffffffffff, 2047, x6, 504, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x2000000000000001, 0xdfffffffffffffff, -2, x6, 512, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x4000000000000008, 0xbfffffffffffffff, -9, x6, 520, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0x55555555555552aa, 0x5555555555555555, 2047, x6, 528, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:-2
TEST_IMM_OP( xori, x11, x10, 0x5555555555555554, 0xaaaaaaaaaaaaaaaa, -2, x6, 536, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffffff6, 0xfffffffffffffffe, 8, x6, 544, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffffffd, 0xfffffffffffffffd, 0, x6, 552, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffffc04, 0xfffffffffffffffb, 1023, x6, 560, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:-1
TEST_IMM_OP( xori, x11, x10, 0x8, 0xfffffffffffffff7, -1, x6, 568, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffffaf, 0xffffffffffffffef, 64, x6, 576, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0xc0, 0xffffffffffffffbf, -129, x6, 584, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffff3f, 0xffffffffffffff7f, 64, x6, 592, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:6
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffffef9, 0xfffffffffffffeff, 6, x6, 600, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffff9ff, 0xfffffffffffffdff, 1024, x6, 608, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x600, 0xfffffffffffffbff, -513, x6, 616, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0x820, 0xfffffffffffff7ff, -33, x6, 624, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x1003, 0xffffffffffffefff, -4, x6, 632, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0x2005, 0xffffffffffffdfff, -6, x6, 640, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x4003, 0xffffffffffffbfff, -4, x6, 648, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0x8400, 0xffffffffffff7fff, -1025, x6, 656, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:128
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffeff7f, 0xfffffffffffeffff, 128, x6, 664, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffdfbff, 0xfffffffffffdffff, 1024, x6, 672, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x40003, 0xfffffffffffbffff, -4, x6, 680, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xfffffffffff7fff6, 0xfffffffffff7ffff, 9, x6, 688, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x100200, 0xffffffffffefffff, -513, x6, 696, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:128
TEST_IMM_OP( xori, x11, x10, 0xffffffffffdfff7f, 0xffffffffffdfffff, 128, x6, 704, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:256
TEST_IMM_OP( xori, x11, x10, 0xffffffffffbffeff, 0xffffffffffbfffff, 256, x6, 712, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xffffffffff7fffdf, 0xffffffffff7fffff, 32, x6, 720, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x1000200, 0xfffffffffeffffff, -513, x6, 728, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0x2000005, 0xfffffffffdffffff, -6, x6, 736, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:16
TEST_IMM_OP( xori, x11, x10, 0xfffffffffbffffef, 0xfffffffffbffffff, 16, x6, 744, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xfffffffff7fffff6, 0xfffffffff7ffffff, 9, x6, 752, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xffffffffeffffc00, 0xffffffffefffffff, 1023, x6, 760, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xffffffffdffffff6, 0xffffffffdfffffff, 9, x6, 768, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xffffffff7fffffbf, 0xffffffff7fffffff, 64, x6, 776, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xfffffffeffffffdf, 0xfffffffeffffffff, 32, x6, 784, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:3
TEST_IMM_OP( xori, x11, x10, 0xfffffffdfffffffc, 0xfffffffdffffffff, 3, x6, 792, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x400000002, 0xfffffffbffffffff, -3, x6, 800, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x800000003, 0xfffffff7ffffffff, -4, x6, 808, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x1000000002, 0xffffffefffffffff, -3, x6, 816, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0x2000000400, 0xffffffdfffffffff, -1025, x6, 824, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:1
TEST_IMM_OP( xori, x11, x10, 0xfffffefffffffffe, 0xfffffeffffffffff, 1, x6, 832, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xfffffdfffffff800, 0xfffffdffffffffff, 2047, x6, 840, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-10
TEST_IMM_OP( xori, x11, x10, 0x40000000009, 0xfffffbffffffffff, -10, x6, 848, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xfffff7fffffffaaa, 0xfffff7ffffffffff, 1365, x6, 856, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x100000000080, 0xffffefffffffffff, -129, x6, 864, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0x200000000010, 0xffffdfffffffffff, -17, x6, 872, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xffffbffffffffc00, 0xffffbfffffffffff, 1023, x6, 880, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xffff7fffffffffdf, 0xffff7fffffffffff, 32, x6, 888, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:3
TEST_IMM_OP( xori, x11, x10, 0xfffefffffffffffc, 0xfffeffffffffffff, 3, x6, 896, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xfffdfffffffffaaa, 0xfffdffffffffffff, 1365, x6, 904, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xfffbfffffffffff6, 0xfffbffffffffffff, 9, x6, 912, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000000005;  immval:5
TEST_IMM_OP( xori, x11, x10, 0x0, 0x0000000000000005, 5, x6, 920, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffdff7, 0x0000000000002000, -9, x6, 928, x8)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffbdff, 0x0000000000004000, -513, x6, 936, x8)
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
    .fill 18*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 118*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
