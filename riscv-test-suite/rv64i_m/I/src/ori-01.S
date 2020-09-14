
#This assembly file tests the ori instruction of the RISC-V I extension for the ori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",ori)

la x2,signature_x2_1

# opcode: ori ; op1:x8; dest:x8; op1val:0x0000000000000003;  immval:3
TEST_IMM_OP( ori, x8, x8, 0x3, 0x0000000000000003, 3, x2, 0, x25)

# opcode: ori ; op1:x19; dest:x17; op1val:0xfffffffeffffffff;  immval:-1
TEST_IMM_OP( ori, x17, x19, 0xffffffffffffffff, 0xfffffffeffffffff, -1, x2, 8, x25)

# opcode: ori ; op1:x23; dest:x14; op1val:0x0000000080000000;  immval:-5
TEST_IMM_OP( ori, x14, x23, 0xfffffffffffffffb, 0x0000000080000000, -5, x2, 16, x25)

# opcode: ori ; op1:x6; dest:x23; op1val:0xffffffffffff7fff;  immval:1365
TEST_IMM_OP( ori, x23, x6, 0xffffffffffff7fff, 0xffffffffffff7fff, 1365, x2, 24, x25)

# opcode: ori ; op1:x17; dest:x21; op1val:0x8000000000000000;  immval:5
TEST_IMM_OP( ori, x21, x17, 0x8000000000000005, 0x8000000000000000, 5, x2, 32, x25)

# opcode: ori ; op1:x22; dest:x29; op1val:0x0000000000000000;  immval:-17
TEST_IMM_OP( ori, x29, x22, 0xffffffffffffffef, 0x0000000000000000, -17, x2, 40, x25)

# opcode: ori ; op1:x12; dest:x15; op1val:0x7fffffffffffffff;  immval:-2
TEST_IMM_OP( ori, x15, x12, 0xffffffffffffffff, 0x7fffffffffffffff, -2, x2, 48, x25)

# opcode: ori ; op1:x24; dest:x13; op1val:0x0000000000000001;  immval:1024
TEST_IMM_OP( ori, x13, x24, 0x401, 0x0000000000000001, 1024, x2, 56, x25)

# opcode: ori ; op1:x3; dest:x4; op1val:0x2000000000000000;  immval:-2048
TEST_IMM_OP( ori, x4, x3, 0xfffffffffffff800, 0x2000000000000000, -2048, x2, 64, x25)

# opcode: ori ; op1:x13; dest:x7; op1val:0xfffffffffffdffff;  immval:0
TEST_IMM_OP( ori, x7, x13, 0xfffffffffffdffff, 0xfffffffffffdffff, 0, x2, 72, x25)

# opcode: ori ; op1:x15; dest:x1; op1val:0x0001000000000000;  immval:2047
TEST_IMM_OP( ori, x1, x15, 0x10000000007ff, 0x0001000000000000, 2047, x2, 80, x25)

# opcode: ori ; op1:x10; dest:x28; op1val:0x0000000020000000;  immval:1
TEST_IMM_OP( ori, x28, x10, 0x20000001, 0x0000000020000000, 1, x2, 88, x25)

# opcode: ori ; op1:x20; dest:x18; op1val:0x0000000000000002;  immval:-2
TEST_IMM_OP( ori, x18, x20, 0xfffffffffffffffe, 0x0000000000000002, -2, x2, 96, x25)

# opcode: ori ; op1:x11; dest:x31; op1val:0x0000000000000004;  immval:-3
TEST_IMM_OP( ori, x31, x11, 0xfffffffffffffffd, 0x0000000000000004, -3, x2, 104, x25)

# opcode: ori ; op1:x27; dest:x3; op1val:0x0000000000000008;  immval:-2
TEST_IMM_OP( ori, x3, x27, 0xfffffffffffffffe, 0x0000000000000008, -2, x2, 112, x25)

# opcode: ori ; op1:x16; dest:x9; op1val:0x0000000000000010;  immval:-33
TEST_IMM_OP( ori, x9, x16, 0xffffffffffffffdf, 0x0000000000000010, -33, x2, 120, x25)

# opcode: ori ; op1:x5; dest:x30; op1val:0x0000000000000020;  immval:7
TEST_IMM_OP( ori, x30, x5, 0x27, 0x0000000000000020, 7, x2, 128, x25)
la x3,signature_x3_0

# opcode: ori ; op1:x1; dest:x0; op1val:0x0000000000000040;  immval:1
TEST_IMM_OP( ori, x0, x1, 0x41, 0x0000000000000040, 1, x3, 0, x8)

# opcode: ori ; op1:x0; dest:x19; op1val:0x0000000000000080;  immval:-1024
TEST_IMM_OP( ori, x19, x0, 0xfffffffffffffc80, 0x0000000000000080, -1024, x3, 8, x8)

# opcode: ori ; op1:x25; dest:x22; op1val:0x0000000000000100;  immval:5
TEST_IMM_OP( ori, x22, x25, 0x105, 0x0000000000000100, 5, x3, 16, x8)

# opcode: ori ; op1:x31; dest:x20; op1val:0x0000000000000200;  immval:-17
TEST_IMM_OP( ori, x20, x31, 0xffffffffffffffef, 0x0000000000000200, -17, x3, 24, x8)

# opcode: ori ; op1:x28; dest:x10; op1val:0x0000000000000400;  immval:256
TEST_IMM_OP( ori, x10, x28, 0x500, 0x0000000000000400, 256, x3, 32, x8)

# opcode: ori ; op1:x14; dest:x2; op1val:0x0000000000000800;  immval:-9
TEST_IMM_OP( ori, x2, x14, 0xfffffffffffffff7, 0x0000000000000800, -9, x3, 40, x8)

# opcode: ori ; op1:x4; dest:x6; op1val:0x0000000000001000;  immval:9
TEST_IMM_OP( ori, x6, x4, 0x1009, 0x0000000000001000, 9, x3, 48, x8)

# opcode: ori ; op1:x21; dest:x27; op1val:0x0000000000002000;  immval:1023
TEST_IMM_OP( ori, x27, x21, 0x23ff, 0x0000000000002000, 1023, x3, 56, x8)

# opcode: ori ; op1:x29; dest:x26; op1val:0x0000000000004000;  immval:1023
TEST_IMM_OP( ori, x26, x29, 0x43ff, 0x0000000000004000, 1023, x3, 64, x8)

# opcode: ori ; op1:x7; dest:x12; op1val:0x0000000000008000;  immval:5
TEST_IMM_OP( ori, x12, x7, 0x8005, 0x0000000000008000, 5, x3, 72, x8)

# opcode: ori ; op1:x18; dest:x11; op1val:0x0000000000010000;  immval:-1025
TEST_IMM_OP( ori, x11, x18, 0xfffffffffffffbff, 0x0000000000010000, -1025, x3, 80, x8)

# opcode: ori ; op1:x30; dest:x25; op1val:0x0000000000020000;  immval:-6
TEST_IMM_OP( ori, x25, x30, 0xfffffffffffffffa, 0x0000000000020000, -6, x3, 88, x8)

# opcode: ori ; op1:x9; dest:x5; op1val:0x0000000000040000;  immval:-9
TEST_IMM_OP( ori, x5, x9, 0xfffffffffffffff7, 0x0000000000040000, -9, x3, 96, x8)

# opcode: ori ; op1:x2; dest:x24; op1val:0x0000000000080000;  immval:-2
TEST_IMM_OP( ori, x24, x2, 0xfffffffffffffffe, 0x0000000000080000, -2, x3, 104, x8)

# opcode: ori ; op1:x26; dest:x16; op1val:0x0000000000100000;  immval:-513
TEST_IMM_OP( ori, x16, x26, 0xfffffffffffffdff, 0x0000000000100000, -513, x3, 112, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:1
TEST_IMM_OP( ori, x11, x10, 0x200001, 0x0000000000200000, 1, x3, 120, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffbf, 0x0000000000400000, -65, x3, 128, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0x800400, 0x0000000000800000, 1024, x3, 136, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0x1000400, 0x0000000001000000, 1024, x3, 144, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0x0000000002000000, -1, x3, 152, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:9
TEST_IMM_OP( ori, x11, x10, 0x4000009, 0x0000000004000000, 9, x3, 160, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:8
TEST_IMM_OP( ori, x11, x10, 0x8000008, 0x0000000008000000, 8, x3, 168, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:2
TEST_IMM_OP( ori, x11, x10, 0x10000002, 0x0000000010000000, 2, x3, 176, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffa, 0x0000000040000000, -6, x3, 184, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x1000003ff, 0x0000000100000000, 1023, x3, 192, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:512
TEST_IMM_OP( ori, x11, x10, 0x200000200, 0x0000000200000000, 512, x3, 200, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:2
TEST_IMM_OP( ori, x11, x10, 0x400000002, 0x0000000400000000, 2, x3, 208, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffd, 0x0000000800000000, -3, x3, 216, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:2
TEST_IMM_OP( ori, x11, x10, 0x1000000002, 0x0000001000000000, 2, x3, 224, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffaaa, 0x0000002000000000, -1366, x3, 232, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffbf, 0x0000004000000000, -65, x3, 240, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffb, 0x0000008000000000, -5, x3, 248, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0x100000007ff, 0x0000010000000000, 2047, x3, 256, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:512
TEST_IMM_OP( ori, x11, x10, 0x20000000200, 0x0000020000000000, 512, x3, 264, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:128
TEST_IMM_OP( ori, x11, x10, 0x40000000080, 0x0000040000000000, 128, x3, 272, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffe, 0x0000080000000000, -2, x3, 280, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:512
TEST_IMM_OP( ori, x11, x10, 0x100000000200, 0x0000100000000000, 512, x3, 288, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0x2000000007ff, 0x0000200000000000, 2047, x3, 296, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffbff, 0x0000400000000000, -1025, x3, 304, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:0
TEST_IMM_OP( ori, x11, x10, 0x800000000000, 0x0000800000000000, 0, x3, 312, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff7, 0x0002000000000000, -9, x3, 320, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x40000000003ff, 0x0004000000000000, 1023, x3, 328, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffc, 0x0008000000000000, -4, x3, 336, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffeff, 0x0010000000000000, -257, x3, 344, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff9, 0x0020000000000000, -7, x3, 352, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:16
TEST_IMM_OP( ori, x11, x10, 0x40000000000010, 0x0040000000000000, 16, x3, 360, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:6
TEST_IMM_OP( ori, x11, x10, 0x80000000000006, 0x0080000000000000, 6, x3, 368, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:128
TEST_IMM_OP( ori, x11, x10, 0x100000000000080, 0x0100000000000000, 128, x3, 376, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffc00, 0x0200000000000000, -1024, x3, 384, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:9
TEST_IMM_OP( ori, x11, x10, 0x400000000000009, 0x0400000000000000, 9, x3, 392, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffbff, 0x0800000000000000, -1025, x3, 400, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:16
TEST_IMM_OP( ori, x11, x10, 0x1000000000000010, 0x1000000000000000, 16, x3, 408, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0x4000000000000555, 0x4000000000000000, 1365, x3, 416, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffe, 1023, x3, 424, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffd, 0xfffffffffffffffd, 1024, x3, 432, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffb, 4, x3, 440, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xfff7ffffffffffff, 0xfff7ffffffffffff, 2047, x3, 448, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xffefffffffffffff, 0xffefffffffffffff, 256, x3, 456, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffdfffffffffffff, -10, x3, 464, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffbfffffffffffff, -17, x3, 472, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xff7fffffffffffff, 0xff7fffffffffffff, 512, x3, 480, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xfeffffffffffffff, 0xfeffffffffffffff, 2, x3, 488, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xfdffffffffffffff, 0xfdffffffffffffff, 5, x3, 496, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfbffffffffffffff, -1366, x3, 504, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:64
TEST_IMM_OP( ori, x11, x10, 0xf7ffffffffffffff, 0xf7ffffffffffffff, 64, x3, 512, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:0
TEST_IMM_OP( ori, x11, x10, 0xefffffffffffffff, 0xefffffffffffffff, 0, x3, 520, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xdfffffffffffffff, -9, x3, 528, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xbfffffffffffffff, -7, x3, 536, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:7
TEST_IMM_OP( ori, x11, x10, 0x5555555555555557, 0x5555555555555555, 7, x3, 544, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:1
TEST_IMM_OP( ori, x11, x10, 0xaaaaaaaaaaaaaaab, 0xaaaaaaaaaaaaaaaa, 1, x3, 552, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:32
TEST_IMM_OP( ori, x11, x10, 0x10000000000020, 0x0010000000000000, 32, x3, 560, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffdfffffffffffff, -129, x3, 568, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:1
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff7, 0xfffffffffffffff7, 1, x3, 576, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffffef, 1023, x3, 584, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffffdf, -4, x3, 592, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffbf, 0xffffffffffffffbf, 3, x3, 600, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffff7f, 0xffffffffffffff7f, 7, x3, 608, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffeff, -5, x3, 616, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffdff, 512, x3, 624, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffbff, 2047, x3, 632, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffff7ff, 0xfffffffffffff7ff, 512, x3, 640, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffefff, 0xffffffffffffefff, 5, x3, 648, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffdfff, -513, x3, 656, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffbfff, -8, x3, 664, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffeffff, -1366, x3, 672, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:9
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffbffff, 0xfffffffffffbffff, 9, x3, 680, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xfffffffffff7ffff, 0xfffffffffff7ffff, 7, x3, 688, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffefffff, -17, x3, 696, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xffffffffffdfffff, 0xffffffffffdfffff, 8, x3, 704, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffbfffff, -17, x3, 712, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:0
TEST_IMM_OP( ori, x11, x10, 0xffffffffff7fffff, 0xffffffffff7fffff, 0, x3, 720, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffeffffff, -1, x3, 728, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffdffffff, -1366, x3, 736, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffbffffff, -10, x3, 744, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xfffffffff7ffffff, 0xfffffffff7ffffff, 128, x3, 752, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffefffffff, -1366, x3, 760, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xffffffffdfffffff, 0xffffffffdfffffff, 7, x3, 768, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:64
TEST_IMM_OP( ori, x11, x10, 0xffffffffbfffffff, 0xffffffffbfffffff, 64, x3, 776, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffff7fffffff, -9, x3, 784, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffdffffffff, -4, x3, 792, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xfffffffbffffffff, 0xfffffffbffffffff, 128, x3, 800, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffff7ffffffff, -65, x3, 808, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xffffffefffffffff, 0xffffffefffffffff, 5, x3, 816, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffdfffffffff, -1366, x3, 824, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffbfffffffff, -10, x3, 832, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffff7fffffffff, -8, x3, 840, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xfffffeffffffffff, 0xfffffeffffffffff, 1023, x3, 848, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:16
TEST_IMM_OP( ori, x11, x10, 0xfffffdffffffffff, 0xfffffdffffffffff, 16, x3, 856, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffbffffffffff, -4, x3, 864, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:6
TEST_IMM_OP( ori, x11, x10, 0xfffff7ffffffffff, 0xfffff7ffffffffff, 6, x3, 872, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:9
TEST_IMM_OP( ori, x11, x10, 0xffffefffffffffff, 0xffffefffffffffff, 9, x3, 880, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffdfffffffffff, -5, x3, 888, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffbfffffffffff, -1366, x3, 896, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffff7fffffffffff, -17, x3, 904, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffeffffffffffff, -2, x3, 912, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:0
TEST_IMM_OP( ori, x11, x10, 0xfffdffffffffffff, 0xfffdffffffffffff, 0, x3, 920, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xfffbffffffffffff, 0xfffbffffffffffff, 7, x3, 928, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000000003;  immval:3
TEST_IMM_OP( ori, x11, x10, 0x3, 0x0000000000000003, 3, x3, 936, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000000040;  immval:1
TEST_IMM_OP( ori, x11, x10, 0x41, 0x0000000000000040, 1, x3, 944, x8)

# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000000080;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffc80, 0x0000000000000080, -1024, x3, 952, x8)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x2_1:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 120*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
