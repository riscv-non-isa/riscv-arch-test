
#This assembly file tests the xori instruction of the RISC-V I extension for the xori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xori)

la x5,signature_x5_1

# opcode: xori ; op1:x3; dest:x3; op1val:0x0000000000000008;  immval:8
TEST_IMM_OP( xori, x3, x3, 0x0, 0x0000000000000008, 8, x5, 0, x14)

# opcode: xori ; op1:x20; dest:x0; op1val:0xfffffffffffffffa;  immval:-257
TEST_IMM_OP( xori, x0, x20, 0x105, 0xfffffffffffffffa, -257, x5, 8, x14)

# opcode: xori ; op1:x31; dest:x17; op1val:0x0000000000000800;  immval:-1024
TEST_IMM_OP( xori, x17, x31, 0xfffffffffffff400, 0x0000000000000800, -1024, x5, 16, x14)

# opcode: xori ; op1:x1; dest:x23; op1val:0x8000000000000000;  immval:1
TEST_IMM_OP( xori, x23, x1, 0x8000000000000001, 0x8000000000000000, 1, x5, 24, x14)

# opcode: xori ; op1:x27; dest:x10; op1val:0x0000000000000000;  immval:64
TEST_IMM_OP( xori, x10, x27, 0x40, 0x0000000000000000, 64, x5, 32, x14)

# opcode: xori ; op1:x12; dest:x8; op1val:0x7fffffffffffffff;  immval:-1025
TEST_IMM_OP( xori, x8, x12, 0x8000000000000400, 0x7fffffffffffffff, -1025, x5, 40, x14)

# opcode: xori ; op1:x16; dest:x2; op1val:0x0000000000000001;  immval:256
TEST_IMM_OP( xori, x2, x16, 0x101, 0x0000000000000001, 256, x5, 48, x14)

# opcode: xori ; op1:x13; dest:x29; op1val:0xffffbfffffffffff;  immval:-2048
TEST_IMM_OP( xori, x29, x13, 0x4000000007ff, 0xffffbfffffffffff, -2048, x5, 56, x14)

# opcode: xori ; op1:x26; dest:x12; op1val:0xfffff7ffffffffff;  immval:0
TEST_IMM_OP( xori, x12, x26, 0xfffff7ffffffffff, 0xfffff7ffffffffff, 0, x5, 64, x14)

# opcode: xori ; op1:x15; dest:x4; op1val:0x0100000000000000;  immval:2047
TEST_IMM_OP( xori, x4, x15, 0x1000000000007ff, 0x0100000000000000, 2047, x5, 72, x14)

# opcode: xori ; op1:x2; dest:x11; op1val:0x0000000000000002;  immval:-33
TEST_IMM_OP( xori, x11, x2, 0xffffffffffffffdd, 0x0000000000000002, -33, x5, 80, x14)

# opcode: xori ; op1:x18; dest:x19; op1val:0x0000000000000004;  immval:-1025
TEST_IMM_OP( xori, x19, x18, 0xfffffffffffffbfb, 0x0000000000000004, -1025, x5, 88, x14)

# opcode: xori ; op1:x17; dest:x28; op1val:0x0000000000000010;  immval:-1
TEST_IMM_OP( xori, x28, x17, 0xffffffffffffffef, 0x0000000000000010, -1, x5, 96, x14)

# opcode: xori ; op1:x21; dest:x30; op1val:0x0000000000000020;  immval:2
TEST_IMM_OP( xori, x30, x21, 0x22, 0x0000000000000020, 2, x5, 104, x14)

# opcode: xori ; op1:x6; dest:x16; op1val:0x0000000000000040;  immval:2
TEST_IMM_OP( xori, x16, x6, 0x42, 0x0000000000000040, 2, x5, 112, x14)

# opcode: xori ; op1:x24; dest:x20; op1val:0x0000000000000080;  immval:-257
TEST_IMM_OP( xori, x20, x24, 0xfffffffffffffe7f, 0x0000000000000080, -257, x5, 120, x14)

# opcode: xori ; op1:x19; dest:x9; op1val:0x0000000000000100;  immval:-1025
TEST_IMM_OP( xori, x9, x19, 0xfffffffffffffaff, 0x0000000000000100, -1025, x5, 128, x14)

# opcode: xori ; op1:x8; dest:x7; op1val:0x0000000000000200;  immval:-2
TEST_IMM_OP( xori, x7, x8, 0xfffffffffffffdfe, 0x0000000000000200, -2, x5, 136, x14)

# opcode: xori ; op1:x25; dest:x13; op1val:0x0000000000000400;  immval:-1
TEST_IMM_OP( xori, x13, x25, 0xfffffffffffffbff, 0x0000000000000400, -1, x5, 144, x3)
la x2,signature_x2_0

# opcode: xori ; op1:x29; dest:x25; op1val:0x0000000000001000;  immval:1024
TEST_IMM_OP( xori, x25, x29, 0x1400, 0x0000000000001000, 1024, x2, 0, x3)

# opcode: xori ; op1:x22; dest:x6; op1val:0x0000000000002000;  immval:2
TEST_IMM_OP( xori, x6, x22, 0x2002, 0x0000000000002000, 2, x2, 8, x3)

# opcode: xori ; op1:x5; dest:x15; op1val:0x0000000000004000;  immval:2
TEST_IMM_OP( xori, x15, x5, 0x4002, 0x0000000000004000, 2, x2, 16, x3)

# opcode: xori ; op1:x30; dest:x14; op1val:0x0000000000008000;  immval:-2
TEST_IMM_OP( xori, x14, x30, 0xffffffffffff7ffe, 0x0000000000008000, -2, x2, 24, x3)

# opcode: xori ; op1:x7; dest:x24; op1val:0x0000000000010000;  immval:2047
TEST_IMM_OP( xori, x24, x7, 0x107ff, 0x0000000000010000, 2047, x2, 32, x3)

# opcode: xori ; op1:x9; dest:x1; op1val:0x0000000000020000;  immval:-2
TEST_IMM_OP( xori, x1, x9, 0xfffffffffffdfffe, 0x0000000000020000, -2, x2, 40, x3)

# opcode: xori ; op1:x23; dest:x21; op1val:0x0000000000040000;  immval:-9
TEST_IMM_OP( xori, x21, x23, 0xfffffffffffbfff7, 0x0000000000040000, -9, x2, 48, x3)

# opcode: xori ; op1:x14; dest:x26; op1val:0x0000000000080000;  immval:7
TEST_IMM_OP( xori, x26, x14, 0x80007, 0x0000000000080000, 7, x2, 56, x3)

# opcode: xori ; op1:x10; dest:x27; op1val:0x0000000000100000;  immval:64
TEST_IMM_OP( xori, x27, x10, 0x100040, 0x0000000000100000, 64, x2, 64, x3)

# opcode: xori ; op1:x4; dest:x22; op1val:0x0000000000200000;  immval:-33
TEST_IMM_OP( xori, x22, x4, 0xffffffffffdfffdf, 0x0000000000200000, -33, x2, 72, x3)

# opcode: xori ; op1:x28; dest:x31; op1val:0x0000000000400000;  immval:2
TEST_IMM_OP( xori, x31, x28, 0x400002, 0x0000000000400000, 2, x2, 80, x3)

# opcode: xori ; op1:x0; dest:x18; op1val:0x0000000000800000;  immval:-1366
TEST_IMM_OP( xori, x18, x0, 0xffffffffff7ffaaa, 0x0000000000800000, -1366, x2, 88, x3)

# opcode: xori ; op1:x11; dest:x5; op1val:0x0000000001000000;  immval:6
TEST_IMM_OP( xori, x5, x11, 0x1000006, 0x0000000001000000, 6, x2, 96, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:0
TEST_IMM_OP( xori, x11, x10, 0x2000000, 0x0000000002000000, 0, x2, 104, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0xfffffffffbfffc00, 0x0000000004000000, -1024, x2, 112, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0xfffffffff7fffffb, 0x0000000008000000, -5, x2, 120, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0x100003ff, 0x0000000010000000, 1023, x2, 128, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0xffffffffdfffffef, 0x0000000020000000, -17, x2, 136, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0xffffffffbffffc00, 0x0000000040000000, -1024, x2, 144, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:512
TEST_IMM_OP( xori, x11, x10, 0x80000200, 0x0000000080000000, 512, x2, 152, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0xfffffffefffffff9, 0x0000000100000000, -7, x2, 160, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0x2000007ff, 0x0000000200000000, 2047, x2, 168, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0xfffffffbfffffdff, 0x0000000400000000, -513, x2, 176, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:0
TEST_IMM_OP( xori, x11, x10, 0x800000000, 0x0000000800000000, 0, x2, 184, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0x10000003ff, 0x0000001000000000, 1023, x2, 192, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0xffffffdfffffffef, 0x0000002000000000, -17, x2, 200, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:2
TEST_IMM_OP( xori, x11, x10, 0x4000000002, 0x0000004000000000, 2, x2, 208, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:1
TEST_IMM_OP( xori, x11, x10, 0x8000000001, 0x0000008000000000, 1, x2, 216, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:6
TEST_IMM_OP( xori, x11, x10, 0x10000000006, 0x0000010000000000, 6, x2, 224, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:9
TEST_IMM_OP( xori, x11, x10, 0x20000000009, 0x0000020000000000, 9, x2, 232, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:1
TEST_IMM_OP( xori, x11, x10, 0x40000000001, 0x0000040000000000, 1, x2, 240, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:7
TEST_IMM_OP( xori, x11, x10, 0x80000000007, 0x0000080000000000, 7, x2, 248, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:6
TEST_IMM_OP( xori, x11, x10, 0x100000000006, 0x0000100000000000, 6, x2, 256, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:5
TEST_IMM_OP( xori, x11, x10, 0x200000000005, 0x0000200000000000, 5, x2, 264, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0xffffbfffffffffdf, 0x0000400000000000, -33, x2, 272, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:5
TEST_IMM_OP( xori, x11, x10, 0x800000000005, 0x0000800000000000, 5, x2, 280, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:-2048
TEST_IMM_OP( xori, x11, x10, 0xfffefffffffff800, 0x0001000000000000, -2048, x2, 288, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0xfffdfffffffffff8, 0x0002000000000000, -8, x2, 296, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0xfffbfffffffffff7, 0x0004000000000000, -9, x2, 304, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:3
TEST_IMM_OP( xori, x11, x10, 0x8000000000003, 0x0008000000000000, 3, x2, 312, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0x10000000000555, 0x0010000000000000, 1365, x2, 320, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0xffdffffffffffffd, 0x0020000000000000, -3, x2, 328, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:6
TEST_IMM_OP( xori, x11, x10, 0x40000000000006, 0x0040000000000000, 6, x2, 336, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0x80000000000555, 0x0080000000000000, 1365, x2, 344, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0xfdfffffffffffff9, 0x0200000000000000, -7, x2, 352, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xfbfffffffffffaaa, 0x0400000000000000, -1366, x2, 360, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:6
TEST_IMM_OP( xori, x11, x10, 0x800000000000006, 0x0800000000000000, 6, x2, 368, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-17
TEST_IMM_OP( xori, x11, x10, 0xefffffffffffffef, 0x1000000000000000, -17, x2, 376, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0xdffffffffffffc00, 0x2000000000000000, -1024, x2, 384, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:2
TEST_IMM_OP( xori, x11, x10, 0x4000000000000002, 0x4000000000000000, 2, x2, 392, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:128
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffff7e, 0xfffffffffffffffe, 128, x2, 400, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-33
TEST_IMM_OP( xori, x11, x10, 0x22, 0xfffffffffffffffd, -33, x2, 408, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffffffb, 0xfffffffffffffffb, 0, x2, 416, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffff808, 0xfffffffffffffff7, 2047, x2, 424, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:256
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffffeef, 0xffffffffffffffef, 256, x2, 432, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-8
TEST_IMM_OP( xori, x11, x10, 0x8000000000007, 0xfff7ffffffffffff, -8, x2, 440, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:9
TEST_IMM_OP( xori, x11, x10, 0xffeffffffffffff6, 0xffefffffffffffff, 9, x2, 448, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:2
TEST_IMM_OP( xori, x11, x10, 0xffdffffffffffffd, 0xffdfffffffffffff, 2, x2, 456, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xffbffffffffffaaa, 0xffbfffffffffffff, 1365, x2, 464, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:512
TEST_IMM_OP( xori, x11, x10, 0xff7ffffffffffdff, 0xff7fffffffffffff, 512, x2, 472, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xfefffffffffffc00, 0xfeffffffffffffff, 1023, x2, 480, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0x200000000000004, 0xfdffffffffffffff, -5, x2, 488, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xfbffffffffffffdf, 0xfbffffffffffffff, 32, x2, 496, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0xf7fffffffffffbff, 0xf7ffffffffffffff, 1024, x2, 504, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x1000000000000003, 0xefffffffffffffff, -4, x2, 512, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x2000000000000200, 0xdfffffffffffffff, -513, x2, 520, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xbffffffffffffaaa, 0xbfffffffffffffff, 1365, x2, 528, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:9
TEST_IMM_OP( xori, x11, x10, 0x555555555555555c, 0x5555555555555555, 9, x2, 536, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xaaaaaaaaaaaaaaa2, 0xaaaaaaaaaaaaaaaa, 8, x2, 544, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffeffb, 0xffffffffffffefff, 4, x2, 552, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000000400;  immval:16
TEST_IMM_OP( xori, x11, x10, 0x410, 0x0000000000000400, 16, x2, 560, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0x1000000000000040, 0xefffffffffffffff, -65, x2, 568, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x2000000000000080, 0xdfffffffffffffff, -129, x2, 576, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-4
TEST_IMM_OP( xori, x11, x10, 0x23, 0xffffffffffffffdf, -4, x2, 584, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:16
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffffaf, 0xffffffffffffffbf, 16, x2, 592, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:8
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffff77, 0xffffffffffffff7f, 8, x2, 600, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0x2ff, 0xfffffffffffffeff, -1024, x2, 608, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x280, 0xfffffffffffffdff, -129, x2, 616, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-6
TEST_IMM_OP( xori, x11, x10, 0x405, 0xfffffffffffffbff, -6, x2, 624, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffff7fb, 0xfffffffffffff7ff, 4, x2, 632, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0xffffffffffffdbff, 0xffffffffffffdfff, 1024, x2, 640, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0x43ff, 0xffffffffffffbfff, -1024, x2, 648, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x8008, 0xffffffffffff7fff, -9, x2, 656, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-129
TEST_IMM_OP( xori, x11, x10, 0x10080, 0xfffffffffffeffff, -129, x2, 664, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-5
TEST_IMM_OP( xori, x11, x10, 0x20004, 0xfffffffffffdffff, -5, x2, 672, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:512
TEST_IMM_OP( xori, x11, x10, 0xfffffffffffbfdff, 0xfffffffffffbffff, 512, x2, 680, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xfffffffffff7ffff, 0xfffffffffff7ffff, 0, x2, 688, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:512
TEST_IMM_OP( xori, x11, x10, 0xffffffffffeffdff, 0xffffffffffefffff, 512, x2, 696, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0x200555, 0xffffffffffdfffff, -1366, x2, 704, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:16
TEST_IMM_OP( xori, x11, x10, 0xffffffffffbfffef, 0xffffffffffbfffff, 16, x2, 712, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:4
TEST_IMM_OP( xori, x11, x10, 0xffffffffff7ffffb, 0xffffffffff7fffff, 4, x2, 720, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-2048
TEST_IMM_OP( xori, x11, x10, 0x10007ff, 0xfffffffffeffffff, -2048, x2, 728, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0x2000400, 0xfffffffffdffffff, -1025, x2, 736, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:7
TEST_IMM_OP( xori, x11, x10, 0xfffffffffbfffff8, 0xfffffffffbffffff, 7, x2, 744, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xfffffffff7ffffbf, 0xfffffffff7ffffff, 64, x2, 752, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:0
TEST_IMM_OP( xori, x11, x10, 0xffffffffefffffff, 0xffffffffefffffff, 0, x2, 760, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x20000008, 0xffffffffdfffffff, -9, x2, 768, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:1024
TEST_IMM_OP( xori, x11, x10, 0xffffffffbffffbff, 0xffffffffbfffffff, 1024, x2, 776, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-65
TEST_IMM_OP( xori, x11, x10, 0x80000040, 0xffffffff7fffffff, -65, x2, 784, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-3
TEST_IMM_OP( xori, x11, x10, 0x100000002, 0xfffffffeffffffff, -3, x2, 792, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-7
TEST_IMM_OP( xori, x11, x10, 0x200000006, 0xfffffffdffffffff, -7, x2, 800, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:64
TEST_IMM_OP( xori, x11, x10, 0xfffffffbffffffbf, 0xfffffffbffffffff, 64, x2, 808, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0x8000003ff, 0xfffffff7ffffffff, -1024, x2, 816, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-1025
TEST_IMM_OP( xori, x11, x10, 0x1000000400, 0xffffffefffffffff, -1025, x2, 824, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-513
TEST_IMM_OP( xori, x11, x10, 0x2000000200, 0xffffffdfffffffff, -513, x2, 832, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xffffffbffffff800, 0xffffffbfffffffff, 2047, x2, 840, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0x8000000100, 0xffffff7fffffffff, -257, x2, 848, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:32
TEST_IMM_OP( xori, x11, x10, 0xfffffeffffffffdf, 0xfffffeffffffffff, 32, x2, 856, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:1023
TEST_IMM_OP( xori, x11, x10, 0xfffffdfffffffc00, 0xfffffdffffffffff, 1023, x2, 864, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:2047
TEST_IMM_OP( xori, x11, x10, 0xfffffbfffffff800, 0xfffffbffffffffff, 2047, x2, 872, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:3
TEST_IMM_OP( xori, x11, x10, 0xffffeffffffffffc, 0xffffefffffffffff, 3, x2, 880, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x200000000008, 0xffffdfffffffffff, -9, x2, 888, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-1024
TEST_IMM_OP( xori, x11, x10, 0x8000000003ff, 0xffff7fffffffffff, -1024, x2, 896, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-9
TEST_IMM_OP( xori, x11, x10, 0x1000000000008, 0xfffeffffffffffff, -9, x2, 904, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-2048
TEST_IMM_OP( xori, x11, x10, 0x20000000007ff, 0xfffdffffffffffff, -2048, x2, 912, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:1365
TEST_IMM_OP( xori, x11, x10, 0xfffbfffffffffaaa, 0xfffbffffffffffff, 1365, x2, 920, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000000008;  immval:8
TEST_IMM_OP( xori, x11, x10, 0x0, 0x0000000000000008, 8, x2, 928, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0xfffffffffffffffa;  immval:-257
TEST_IMM_OP( xori, x11, x10, 0x105, 0xfffffffffffffffa, -257, x2, 936, x3)

# opcode: xori ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:-1366
TEST_IMM_OP( xori, x11, x10, 0xffffffffff7ffaaa, 0x0000000000800000, -1366, x2, 944, x3)
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
    .fill 19*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 119*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
