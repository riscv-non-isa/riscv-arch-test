
#This assembly file tests the ori instruction of the RISC-V I extension for the ori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",ori)

la x7,signature_x7_1

# opcode: ori ; op1:x6; dest:x6; op1val:0x0000000000000000;  immval:0
TEST_IMM_OP( ori, x6, x6, 0x0, 0x0000000000000000, 0, x7, 0, x26)

# opcode: ori ; op1:x28; dest:x17; op1val:0x0000000000000007;  immval:-1024
TEST_IMM_OP( ori, x17, x28, 0xfffffffffffffc07, 0x0000000000000007, -1024, x7, 8, x26)

# opcode: ori ; op1:x30; dest:x31; op1val:0x0400000000000000;  immval:9
TEST_IMM_OP( ori, x31, x30, 0x400000000000009, 0x0400000000000000, 9, x7, 16, x26)

# opcode: ori ; op1:x15; dest:x3; op1val:0xfffffffff7ffffff;  immval:9
TEST_IMM_OP( ori, x3, x15, 0xfffffffff7ffffff, 0xfffffffff7ffffff, 9, x7, 24, x26)

# opcode: ori ; op1:x8; dest:x9; op1val:0xffdfffffffffffff;  immval:-33
TEST_IMM_OP( ori, x9, x8, 0xffffffffffffffff, 0xffdfffffffffffff, -33, x7, 32, x26)

# opcode: ori ; op1:x29; dest:x13; op1val:0x8000000000000000;  immval:-9
TEST_IMM_OP( ori, x13, x29, 0xfffffffffffffff7, 0x8000000000000000, -9, x7, 40, x26)

# opcode: ori ; op1:x2; dest:x12; op1val:0x7fffffffffffffff;  immval:-2048
TEST_IMM_OP( ori, x12, x2, 0xffffffffffffffff, 0x7fffffffffffffff, -2048, x7, 48, x26)

# opcode: ori ; op1:x22; dest:x24; op1val:0x0000000000000001;  immval:128
TEST_IMM_OP( ori, x24, x22, 0x81, 0x0000000000000001, 128, x7, 56, x26)

# opcode: ori ; op1:x13; dest:x8; op1val:0xffffefffffffffff;  immval:2047
TEST_IMM_OP( ori, x8, x13, 0xffffefffffffffff, 0xffffefffffffffff, 2047, x7, 64, x26)

# opcode: ori ; op1:x19; dest:x18; op1val:0x0000000080000000;  immval:1
TEST_IMM_OP( ori, x18, x19, 0x80000001, 0x0000000080000000, 1, x7, 72, x26)

# opcode: ori ; op1:x21; dest:x19; op1val:0x0000000000000002;  immval:2047
TEST_IMM_OP( ori, x19, x21, 0x7ff, 0x0000000000000002, 2047, x7, 80, x26)

# opcode: ori ; op1:x1; dest:x10; op1val:0x0000000000000004;  immval:-4
TEST_IMM_OP( ori, x10, x1, 0xfffffffffffffffc, 0x0000000000000004, -4, x7, 88, x26)

# opcode: ori ; op1:x4; dest:x21; op1val:0x0000000000000008;  immval:-8
TEST_IMM_OP( ori, x21, x4, 0xfffffffffffffff8, 0x0000000000000008, -8, x7, 96, x26)

# opcode: ori ; op1:x11; dest:x30; op1val:0x0000000000000010;  immval:7
TEST_IMM_OP( ori, x30, x11, 0x17, 0x0000000000000010, 7, x7, 104, x26)

# opcode: ori ; op1:x17; dest:x23; op1val:0x0000000000000020;  immval:-3
TEST_IMM_OP( ori, x23, x17, 0xfffffffffffffffd, 0x0000000000000020, -3, x7, 112, x26)

# opcode: ori ; op1:x20; dest:x15; op1val:0x0000000000000040;  immval:1365
TEST_IMM_OP( ori, x15, x20, 0x555, 0x0000000000000040, 1365, x7, 120, x26)

# opcode: ori ; op1:x3; dest:x20; op1val:0x0000000000000080;  immval:1
TEST_IMM_OP( ori, x20, x3, 0x81, 0x0000000000000080, 1, x7, 128, x26)

# opcode: ori ; op1:x10; dest:x28; op1val:0x0000000000000100;  immval:-6
TEST_IMM_OP( ori, x28, x10, 0xfffffffffffffffa, 0x0000000000000100, -6, x7, 136, x26)

# opcode: ori ; op1:x25; dest:x5; op1val:0x0000000000000200;  immval:-1024
TEST_IMM_OP( ori, x5, x25, 0xfffffffffffffe00, 0x0000000000000200, -1024, x7, 144, x26)

# opcode: ori ; op1:x14; dest:x16; op1val:0x0000000000000400;  immval:-257
TEST_IMM_OP( ori, x16, x14, 0xfffffffffffffeff, 0x0000000000000400, -257, x7, 152, x26)
la x3,signature_x3_0

# opcode: ori ; op1:x27; dest:x29; op1val:0x0000000000000800;  immval:2047
TEST_IMM_OP( ori, x29, x27, 0xfff, 0x0000000000000800, 2047, x3, 0, x6)

# opcode: ori ; op1:x24; dest:x22; op1val:0x0000000000001000;  immval:-2
TEST_IMM_OP( ori, x22, x24, 0xfffffffffffffffe, 0x0000000000001000, -2, x3, 8, x6)

# opcode: ori ; op1:x16; dest:x26; op1val:0x0000000000002000;  immval:7
TEST_IMM_OP( ori, x26, x16, 0x2007, 0x0000000000002000, 7, x3, 16, x6)

# opcode: ori ; op1:x18; dest:x25; op1val:0x0000000000004000;  immval:8
TEST_IMM_OP( ori, x25, x18, 0x4008, 0x0000000000004000, 8, x3, 24, x6)

# opcode: ori ; op1:x5; dest:x7; op1val:0x0000000000008000;  immval:-1
TEST_IMM_OP( ori, x7, x5, 0xffffffffffffffff, 0x0000000000008000, -1, x3, 32, x6)

# opcode: ori ; op1:x31; dest:x11; op1val:0x0000000000010000;  immval:16
TEST_IMM_OP( ori, x11, x31, 0x10010, 0x0000000000010000, 16, x3, 40, x6)

# opcode: ori ; op1:x0; dest:x27; op1val:0x0000000000020000;  immval:512
TEST_IMM_OP( ori, x27, x0, 0x20200, 0x0000000000020000, 512, x3, 48, x6)

# opcode: ori ; op1:x26; dest:x1; op1val:0x0000000000040000;  immval:2047
TEST_IMM_OP( ori, x1, x26, 0x407ff, 0x0000000000040000, 2047, x3, 56, x6)

# opcode: ori ; op1:x9; dest:x2; op1val:0x0000000000080000;  immval:-3
TEST_IMM_OP( ori, x2, x9, 0xfffffffffffffffd, 0x0000000000080000, -3, x3, 64, x6)

# opcode: ori ; op1:x23; dest:x4; op1val:0x0000000000100000;  immval:2
TEST_IMM_OP( ori, x4, x23, 0x100002, 0x0000000000100000, 2, x3, 72, x6)

# opcode: ori ; op1:x12; dest:x14; op1val:0x0000000000200000;  immval:1023
TEST_IMM_OP( ori, x14, x12, 0x2003ff, 0x0000000000200000, 1023, x3, 80, x6)

# opcode: ori ; op1:x7; dest:x0; op1val:0x0000000000400000;  immval:-65
TEST_IMM_OP( ori, x0, x7, 0xffffffffffffffbf, 0x0000000000400000, -65, x3, 88, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:5
TEST_IMM_OP( ori, x11, x10, 0x800005, 0x0000000000800000, 5, x3, 96, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0x0000000001000000, -1, x3, 104, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:6
TEST_IMM_OP( ori, x11, x10, 0x2000006, 0x0000000002000000, 6, x3, 112, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff8, 0x0000000004000000, -8, x3, 120, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffa, 0x0000000008000000, -6, x3, 128, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffbff, 0x0000000010000000, -1025, x3, 136, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:256
TEST_IMM_OP( ori, x11, x10, 0x20000100, 0x0000000020000000, 256, x3, 144, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0x0000000040000000, -1, x3, 152, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:6
TEST_IMM_OP( ori, x11, x10, 0x100000006, 0x0000000100000000, 6, x3, 160, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0x2000007ff, 0x0000000200000000, 2047, x3, 168, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff8, 0x0000000400000000, -8, x3, 176, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffdf, 0x0000000800000000, -33, x3, 184, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffd, 0x0000001000000000, -3, x3, 192, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff6, 0x0000002000000000, -10, x3, 200, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:1
TEST_IMM_OP( ori, x11, x10, 0x4000000001, 0x0000004000000000, 1, x3, 208, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x80000003ff, 0x0000008000000000, 1023, x3, 216, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:0
TEST_IMM_OP( ori, x11, x10, 0x10000000000, 0x0000010000000000, 0, x3, 224, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0x0000020000000000, -1, x3, 232, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x400000003ff, 0x0000040000000000, 1023, x3, 240, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:3
TEST_IMM_OP( ori, x11, x10, 0x80000000003, 0x0000080000000000, 3, x3, 248, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffeff, 0x0000100000000000, -257, x3, 256, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffc, 0x0000200000000000, -4, x3, 264, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:0
TEST_IMM_OP( ori, x11, x10, 0x400000000000, 0x0000400000000000, 0, x3, 272, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffff7f, 0x0000800000000000, -129, x3, 280, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:6
TEST_IMM_OP( ori, x11, x10, 0x1000000000006, 0x0001000000000000, 6, x3, 288, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffb, 0x0002000000000000, -5, x3, 296, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff9, 0x0004000000000000, -7, x3, 304, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:3
TEST_IMM_OP( ori, x11, x10, 0x8000000000003, 0x0008000000000000, 3, x3, 312, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff6, 0x0010000000000000, -10, x3, 320, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:7
TEST_IMM_OP( ori, x11, x10, 0x20000000000007, 0x0020000000000000, 7, x3, 328, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffbff, 0x0040000000000000, -1025, x3, 336, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:4
TEST_IMM_OP( ori, x11, x10, 0x80000000000004, 0x0080000000000000, 4, x3, 344, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:2
TEST_IMM_OP( ori, x11, x10, 0x100000000000002, 0x0100000000000000, 2, x3, 352, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff7, 0x0200000000000000, -9, x3, 360, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffff7f, 0x0800000000000000, -129, x3, 368, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:16
TEST_IMM_OP( ori, x11, x10, 0x1000000000000010, 0x1000000000000000, 16, x3, 376, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff6, 0x2000000000000000, -10, x3, 384, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0x4000000000000555, 0x4000000000000000, 1365, x3, 392, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffe, 0xfffffffffffffffe, -1024, x3, 400, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffd, -1, x3, 408, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffb, -17, x3, 416, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffff7, -513, x3, 424, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:1
TEST_IMM_OP( ori, x11, x10, 0xfff7ffffffffffff, 0xfff7ffffffffffff, 1, x3, 432, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffefffffffffffff, -9, x3, 440, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xffbfffffffffffff, 0xffbfffffffffffff, 8, x3, 448, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xff7fffffffffffff, -3, x3, 456, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfeffffffffffffff, -257, x3, 464, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfdffffffffffffff, -513, x3, 472, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0xfbffffffffffffff, 0xfbffffffffffffff, 1365, x3, 480, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xf7ffffffffffffff, -3, x3, 488, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xefffffffffffffff, 0xefffffffffffffff, 4, x3, 496, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xdfffffffffffffff, -7, x3, 504, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xbfffffffffffffff, 0xbfffffffffffffff, 128, x3, 512, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0x55555555555557ff, 0x5555555555555555, 2047, x3, 520, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 128, x3, 528, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:32
TEST_IMM_OP( ori, x11, x10, 0x800000000020, 0x0000800000000000, 32, x3, 536, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:64
TEST_IMM_OP( ori, x11, x10, 0xfffffbffffffffff, 0xfffffbffffffffff, 64, x3, 544, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0xffffffdfffffffff, 0xffffffdfffffffff, 1024, x3, 552, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffbff, 0xfffffffffffffbff, -1366, x3, 560, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffffef, -9, x3, 568, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffffdf, -5, x3, 576, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffffbf, -10, x3, 584, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffff7f, -1025, x3, 592, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffeff, 0xfffffffffffffeff, 4, x3, 600, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:0
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffdff, 0xfffffffffffffdff, 0, x3, 608, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffff7ff, 0xfffffffffffff7ff, 128, x3, 616, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffefff, -9, x3, 624, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffdfff, 0xffffffffffffdfff, 256, x3, 632, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffbfff, 0xffffffffffffbfff, 4, x3, 640, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffff7fff, -33, x3, 648, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffeffff, -2048, x3, 656, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffdffff, -5, x3, 664, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffbffff, 0xfffffffffffbffff, 7, x3, 672, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xfffffffffff7ffff, 0xfffffffffff7ffff, 4, x3, 680, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffefffff, -1, x3, 688, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffdfffff, -513, x3, 696, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffbfffff, -129, x3, 704, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:16
TEST_IMM_OP( ori, x11, x10, 0xffffffffff7fffff, 0xffffffffff7fffff, 16, x3, 712, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffeffffff, -1025, x3, 720, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffdffffff, -6, x3, 728, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xfffffffffbffffff, 0xfffffffffbffffff, 7, x3, 736, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffefffffff, -1, x3, 744, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffdfffffff, -4, x3, 752, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffbfffffff, -65, x3, 760, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffff7fffffff, -7, x3, 768, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xfffffffeffffffff, 0xfffffffeffffffff, 512, x3, 776, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffdffffffff, -129, x3, 784, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:16
TEST_IMM_OP( ori, x11, x10, 0xfffffffbffffffff, 0xfffffffbffffffff, 16, x3, 792, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xfffffff7ffffffff, 0xfffffff7ffffffff, 2047, x3, 800, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffefffffffff, -2, x3, 808, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xffffffbfffffffff, 0xffffffbfffffffff, 128, x3, 816, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:16
TEST_IMM_OP( ori, x11, x10, 0xffffff7fffffffff, 0xffffff7fffffffff, 16, x3, 824, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xfffffeffffffffff, 0xfffffeffffffffff, 512, x3, 832, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xfffffdffffffffff, 0xfffffdffffffffff, 256, x3, 840, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffff7ffffffffff, -6, x3, 848, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffdfffffffffff, -65, x3, 856, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffbfffffffffff, -1366, x3, 864, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xffff7fffffffffff, 0xffff7fffffffffff, 2, x3, 872, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0xfffeffffffffffff, 0xfffeffffffffffff, 1024, x3, 880, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffdffffffffffff, -2048, x3, 888, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xfffbffffffffffff, 0xfffbffffffffffff, 3, x3, 896, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000000000;  immval:0
TEST_IMM_OP( ori, x11, x10, 0x0, 0x0000000000000000, 0, x3, 904, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:512
TEST_IMM_OP( ori, x11, x10, 0x20200, 0x0000000000020000, 512, x3, 912, x6)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffbf, 0x0000000000400000, -65, x3, 920, x6)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x7_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 116*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
