
#This assembly file tests the addi instruction of the RISC-V I extension for the addi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",addi)

la x13,signature_x13_1

# opcode: addi ; op1:x11; dest:x11; op1val:0xfffffffffffffffd;  immval:-3
TEST_IMM_OP( addi, x11, x11, 0xfffffffffffffffa, 0xfffffffffffffffd, -3, x13, 0, x2)

# opcode: addi ; op1:x9; dest:x17; op1val:0x0000000000000400;  immval:-1024
TEST_IMM_OP( addi, x17, x9, 0x0, 0x0000000000000400, -1024, x13, 8, x2)

# opcode: addi ; op1:x17; dest:x23; op1val:0x0000000800000000;  immval:256
TEST_IMM_OP( addi, x23, x17, 0x800000100, 0x0000000800000000, 256, x13, 16, x2)

# opcode: addi ; op1:x25; dest:x30; op1val:0xefffffffffffffff;  immval:2047
TEST_IMM_OP( addi, x30, x25, 0xf0000000000007fe, 0xefffffffffffffff, 2047, x13, 24, x2)

# opcode: addi ; op1:x4; dest:x25; op1val:0x8000000000000000;  immval:-257
TEST_IMM_OP( addi, x25, x4, 0x7ffffffffffffeff, 0x8000000000000000, -257, x13, 32, x2)

# opcode: addi ; op1:x31; dest:x26; op1val:0x0000000000000000;  immval:-257
TEST_IMM_OP( addi, x26, x31, 0xfffffffffffffeff, 0x0000000000000000, -257, x13, 40, x2)

# opcode: addi ; op1:x27; dest:x7; op1val:0x7fffffffffffffff;  immval:-3
TEST_IMM_OP( addi, x7, x27, 0x7ffffffffffffffc, 0x7fffffffffffffff, -3, x13, 48, x2)

# opcode: addi ; op1:x10; dest:x18; op1val:0x0000000000000001;  immval:-257
TEST_IMM_OP( addi, x18, x10, 0xffffffffffffff00, 0x0000000000000001, -257, x13, 56, x2)

# opcode: addi ; op1:x3; dest:x19; op1val:0xfffffffeffffffff;  immval:-2048
TEST_IMM_OP( addi, x19, x3, 0xfffffffefffff7ff, 0xfffffffeffffffff, -2048, x13, 64, x2)

# opcode: addi ; op1:x14; dest:x10; op1val:0xffffffffffffff7f;  immval:0
TEST_IMM_OP( addi, x10, x14, 0xffffffffffffff7f, 0xffffffffffffff7f, 0, x13, 72, x2)

# opcode: addi ; op1:x12; dest:x6; op1val:0x0000200000000000;  immval:1
TEST_IMM_OP( addi, x6, x12, 0x200000000001, 0x0000200000000000, 1, x13, 80, x2)

# opcode: addi ; op1:x22; dest:x5; op1val:0x0000000000000002;  immval:2
TEST_IMM_OP( addi, x5, x22, 0x4, 0x0000000000000002, 2, x13, 88, x2)

# opcode: addi ; op1:x1; dest:x3; op1val:0x0000000000000004;  immval:-8
TEST_IMM_OP( addi, x3, x1, 0xfffffffffffffffc, 0x0000000000000004, -8, x13, 96, x2)

# opcode: addi ; op1:x15; dest:x9; op1val:0x0000000000000008;  immval:256
TEST_IMM_OP( addi, x9, x15, 0x108, 0x0000000000000008, 256, x13, 104, x2)

# opcode: addi ; op1:x8; dest:x1; op1val:0x0000000000000010;  immval:1024
TEST_IMM_OP( addi, x1, x8, 0x410, 0x0000000000000010, 1024, x13, 112, x2)

# opcode: addi ; op1:x5; dest:x4; op1val:0x0000000000000020;  immval:1024
TEST_IMM_OP( addi, x4, x5, 0x420, 0x0000000000000020, 1024, x13, 120, x2)

# opcode: addi ; op1:x30; dest:x28; op1val:0x0000000000000040;  immval:-10
TEST_IMM_OP( addi, x28, x30, 0x36, 0x0000000000000040, -10, x13, 128, x2)

# opcode: addi ; op1:x16; dest:x21; op1val:0x0000000000000080;  immval:-3
TEST_IMM_OP( addi, x21, x16, 0x7d, 0x0000000000000080, -3, x13, 136, x2)

# opcode: addi ; op1:x26; dest:x16; op1val:0x0000000000000100;  immval:3
TEST_IMM_OP( addi, x16, x26, 0x103, 0x0000000000000100, 3, x13, 144, x2)

# opcode: addi ; op1:x21; dest:x0; op1val:0x0000000000000200;  immval:128
TEST_IMM_OP( addi, x0, x21, 0x280, 0x0000000000000200, 128, x13, 152, x2)

# opcode: addi ; op1:x20; dest:x12; op1val:0x0000000000000800;  immval:-2
TEST_IMM_OP( addi, x12, x20, 0x7fe, 0x0000000000000800, -2, x13, 160, x2)

# opcode: addi ; op1:x28; dest:x8; op1val:0x0000000000001000;  immval:-2
TEST_IMM_OP( addi, x8, x28, 0xffe, 0x0000000000001000, -2, x13, 168, x3)

# opcode: addi ; op1:x23; dest:x22; op1val:0x0000000000002000;  immval:64
TEST_IMM_OP( addi, x22, x23, 0x2040, 0x0000000000002000, 64, x13, 176, x3)

# opcode: addi ; op1:x24; dest:x2; op1val:0x0000000000004000;  immval:-1
TEST_IMM_OP( addi, x2, x24, 0x3fff, 0x0000000000004000, -1, x13, 184, x3)
la x1,signature_x1_0

# opcode: addi ; op1:x18; dest:x29; op1val:0x0000000000008000;  immval:-1
TEST_IMM_OP( addi, x29, x18, 0x7fff, 0x0000000000008000, -1, x1, 0, x3)

# opcode: addi ; op1:x19; dest:x15; op1val:0x0000000000010000;  immval:-513
TEST_IMM_OP( addi, x15, x19, 0xfdff, 0x0000000000010000, -513, x1, 8, x3)

# opcode: addi ; op1:x2; dest:x14; op1val:0x0000000000020000;  immval:2
TEST_IMM_OP( addi, x14, x2, 0x20002, 0x0000000000020000, 2, x1, 16, x3)

# opcode: addi ; op1:x13; dest:x24; op1val:0x0000000000040000;  immval:-1024
TEST_IMM_OP( addi, x24, x13, 0x3fc00, 0x0000000000040000, -1024, x1, 24, x3)

# opcode: addi ; op1:x29; dest:x13; op1val:0x0000000000080000;  immval:-4
TEST_IMM_OP( addi, x13, x29, 0x7fffc, 0x0000000000080000, -4, x1, 32, x3)

# opcode: addi ; op1:x6; dest:x27; op1val:0x0000000000100000;  immval:8
TEST_IMM_OP( addi, x27, x6, 0x100008, 0x0000000000100000, 8, x1, 40, x3)

# opcode: addi ; op1:x0; dest:x20; op1val:0x0000000000200000;  immval:-1366
TEST_IMM_OP( addi, x20, x0, 0x1ffaaa, 0x0000000000200000, -1366, x1, 48, x3)

# opcode: addi ; op1:x7; dest:x31; op1val:0x0000000000400000;  immval:-4
TEST_IMM_OP( addi, x31, x7, 0x3ffffc, 0x0000000000400000, -4, x1, 56, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0x8003ff, 0x0000000000800000, 1023, x1, 64, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xfffeff, 0x0000000001000000, -257, x1, 72, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0x1fffaaa, 0x0000000002000000, -1366, x1, 80, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:0
TEST_IMM_OP( addi, x11, x10, 0x4000000, 0x0000000004000000, 0, x1, 88, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0x8000555, 0x0000000008000000, 1365, x1, 96, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:512
TEST_IMM_OP( addi, x11, x10, 0x10000200, 0x0000000010000000, 512, x1, 104, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0x1ffffffd, 0x0000000020000000, -3, x1, 112, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:0
TEST_IMM_OP( addi, x11, x10, 0x40000000, 0x0000000040000000, 0, x1, 120, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0x7ffffeff, 0x0000000080000000, -257, x1, 128, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xffffffef, 0x0000000100000000, -17, x1, 136, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:16
TEST_IMM_OP( addi, x11, x10, 0x200000010, 0x0000000200000000, 16, x1, 144, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x400000400, 0x0000000400000000, 1024, x1, 152, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:512
TEST_IMM_OP( addi, x11, x10, 0x1000000200, 0x0000001000000000, 512, x1, 160, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0x20000007ff, 0x0000002000000000, 2047, x1, 168, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0x3ffffffbff, 0x0000004000000000, -1025, x1, 176, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0x80000007ff, 0x0000008000000000, 2047, x1, 184, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xfffffffffa, 0x0000010000000000, -6, x1, 192, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0x1fffffffaaa, 0x0000020000000000, -1366, x1, 200, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0x3fffffffffb, 0x0000040000000000, -5, x1, 208, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:256
TEST_IMM_OP( addi, x11, x10, 0x80000000100, 0x0000080000000000, 256, x1, 216, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xffffffffffc, 0x0000100000000000, -4, x1, 224, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0x3ffffffffffc, 0x0000400000000000, -4, x1, 232, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0x7ffffffffffd, 0x0000800000000000, -3, x1, 240, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xfffffffffeff, 0x0001000000000000, -257, x1, 248, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0x1fffffffffff8, 0x0002000000000000, -8, x1, 256, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:64
TEST_IMM_OP( addi, x11, x10, 0x4000000000040, 0x0004000000000000, 64, x1, 264, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:1
TEST_IMM_OP( addi, x11, x10, 0x8000000000001, 0x0008000000000000, 1, x1, 272, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x10000000000400, 0x0010000000000000, 1024, x1, 280, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x20000000000006, 0x0020000000000000, 6, x1, 288, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:2
TEST_IMM_OP( addi, x11, x10, 0x40000000000002, 0x0040000000000000, 2, x1, 296, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0x7ffffffffffff9, 0x0080000000000000, -7, x1, 304, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x100000000000006, 0x0100000000000000, 6, x1, 312, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0x1ffffffffffffdf, 0x0200000000000000, -33, x1, 320, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0x3fffffffffffc00, 0x0400000000000000, -1024, x1, 328, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:512
TEST_IMM_OP( addi, x11, x10, 0x800000000000200, 0x0800000000000000, 512, x1, 336, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffdff, 0x1000000000000000, -513, x1, 344, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0x1ffffffffffffffd, 0x2000000000000000, -3, x1, 352, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-1
TEST_IMM_OP( addi, x11, x10, 0x3fffffffffffffff, 0x4000000000000000, -1, x1, 360, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffffc, 0xfffffffffffffffe, -2, x1, 368, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffffc, 0xfffffffffffffffb, 1, x1, 376, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0x54c, 0xfffffffffffffff7, 1365, x1, 384, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xfff7fffffffff7ff, 0xfff7ffffffffffff, -2048, x1, 392, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xfff0000000000000, 0xffefffffffffffff, 1, x1, 400, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0xffdffffffffffaa9, 0xffdfffffffffffff, -1366, x1, 408, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xffc000000000000f, 0xffbfffffffffffff, 16, x1, 416, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xff7ffffffffffffa, 0xff7fffffffffffff, -5, x1, 424, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:3
TEST_IMM_OP( addi, x11, x10, 0xff00000000000002, 0xfeffffffffffffff, 3, x1, 432, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xfe0000000000003f, 0xfdffffffffffffff, 64, x1, 440, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xfc0000000000000f, 0xfbffffffffffffff, 16, x1, 448, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:5
TEST_IMM_OP( addi, x11, x10, 0xf800000000000004, 0xf7ffffffffffffff, 5, x1, 456, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xdffffffffffffefe, 0xdfffffffffffffff, -257, x1, 464, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xbffffffffffffdfe, 0xbfffffffffffffff, -513, x1, 472, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x55555555555555d5, 0x5555555555555555, 128, x1, 480, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xaaaaaaaaaaaaaab2, 0xaaaaaaaaaaaaaaaa, 8, x1, 488, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffff9;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffffd, 0xfffffffffffffff9, 4, x1, 496, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:32
TEST_IMM_OP( addi, x11, x10, 0xfffffff00000001f, 0xffffffefffffffff, 32, x1, 504, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xffffffffffdffff6, 0xffffffffffdfffff, -9, x1, 512, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000000000;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffbf, 0x0000000000000000, -65, x1, 520, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0x7f7f, 0x0000000000008000, -129, x1, 528, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffea, 0xffffffffffffffef, -5, x1, 536, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff7df, 0xffffffffffffffdf, -2048, x1, 544, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:32
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffdf, 0xffffffffffffffbf, 32, x1, 552, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffafe, 0xfffffffffffffeff, -1025, x1, 560, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffe07, 0xfffffffffffffdff, 8, x1, 568, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffbff, 0xfffffffffffffbff, 0, x1, 576, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff8ff, 0xfffffffffffff7ff, 256, x1, 584, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffeff6, 0xffffffffffffefff, -9, x1, 592, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffdfee, 0xffffffffffffdfff, -17, x1, 600, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffbffb, 0xffffffffffffbfff, -4, x1, 608, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0xffffffffffff8554, 0xffffffffffff7fff, 1365, x1, 616, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xffffffffffff000f, 0xfffffffffffeffff, 16, x1, 624, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffdffde, 0xfffffffffffdffff, -33, x1, 632, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:9
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffc0008, 0xfffffffffffbffff, 9, x1, 640, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xfffffffffff7fff7, 0xfffffffffff7ffff, -8, x1, 648, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0xfffffffffff007fe, 0xffffffffffefffff, 2047, x1, 656, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:9
TEST_IMM_OP( addi, x11, x10, 0xffffffffffc00008, 0xffffffffffbfffff, 9, x1, 664, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:7
TEST_IMM_OP( addi, x11, x10, 0xffffffffff800006, 0xffffffffff7fffff, 7, x1, 672, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xfffffffffefffff6, 0xfffffffffeffffff, -9, x1, 680, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xfffffffffdfffff6, 0xfffffffffdffffff, -9, x1, 688, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xfffffffffc000005, 0xfffffffffbffffff, 6, x1, 696, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xfffffffff7ffff7e, 0xfffffffff7ffffff, -129, x1, 704, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0xffffffffeffffaa9, 0xffffffffefffffff, -1366, x1, 712, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xffffffffdfffffde, 0xffffffffdfffffff, -33, x1, 720, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xffffffffc0000005, 0xffffffffbfffffff, 6, x1, 728, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:128
TEST_IMM_OP( addi, x11, x10, 0xffffffff8000007f, 0xffffffff7fffffff, 128, x1, 736, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:512
TEST_IMM_OP( addi, x11, x10, 0xfffffffe000001ff, 0xfffffffdffffffff, 512, x1, 744, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xfffffffbfffffdfe, 0xfffffffbffffffff, -513, x1, 752, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xfffffff800000003, 0xfffffff7ffffffff, 4, x1, 760, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:9
TEST_IMM_OP( addi, x11, x10, 0xffffffe000000008, 0xffffffdfffffffff, 9, x1, 768, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-1
TEST_IMM_OP( addi, x11, x10, 0xffffffbffffffffe, 0xffffffbfffffffff, -1, x1, 776, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xffffff7ffffffbff, 0xffffff7fffffffff, -1024, x1, 784, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xfffffefffffffbfe, 0xfffffeffffffffff, -1025, x1, 792, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xfffffe0000000005, 0xfffffdffffffffff, 6, x1, 800, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xfffffbffffffffee, 0xfffffbffffffffff, -17, x1, 808, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xfffff7ffffffffbe, 0xfffff7ffffffffff, -65, x1, 816, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xffffeffffffffbff, 0xffffefffffffffff, -1024, x1, 824, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xffffdffffffffff7, 0xffffdfffffffffff, -8, x1, 832, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xffffbfffffffff7e, 0xffffbfffffffffff, -129, x1, 840, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:3
TEST_IMM_OP( addi, x11, x10, 0xffff800000000002, 0xffff7fffffffffff, 3, x1, 848, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xfffefffffffffffb, 0xfffeffffffffffff, -4, x1, 856, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffdfffffffffffc, 0xfffdffffffffffff, -3, x1, 864, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xfffbfffffffffefe, 0xfffbffffffffffff, -257, x1, 872, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffffa, 0xfffffffffffffffd, -3, x1, 880, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000000200;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x280, 0x0000000000000200, 128, x1, 888, x3)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0x1ffaaa, 0x0000000000200000, -1366, x1, 896, x3)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x13_1:
    .fill 24*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 113*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
