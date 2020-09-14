
#This assembly file tests the addi instruction of the RISC-V I extension for the addi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",addi)

la x6,signature_x6_1

# opcode: addi ; op1:x26; dest:x26; op1val:0x0000000000000001;  immval:1
TEST_IMM_OP( addi, x26, x26, 0x2, 0x0000000000000001, 1, x6, 0, x14)

# opcode: addi ; op1:x24; dest:x31; op1val:0x0000000000000800;  immval:-1025
TEST_IMM_OP( addi, x31, x24, 0x3ff, 0x0000000000000800, -1025, x6, 8, x14)

# opcode: addi ; op1:x31; dest:x17; op1val:0xfffffffdffffffff;  immval:1
TEST_IMM_OP( addi, x17, x31, 0xfffffffe00000000, 0xfffffffdffffffff, 1, x6, 16, x14)

# opcode: addi ; op1:x13; dest:x22; op1val:0xdfffffffffffffff;  immval:-4
TEST_IMM_OP( addi, x22, x13, 0xdffffffffffffffb, 0xdfffffffffffffff, -4, x6, 24, x14)

# opcode: addi ; op1:x2; dest:x5; op1val:0x8000000000000000;  immval:256
TEST_IMM_OP( addi, x5, x2, 0x8000000000000100, 0x8000000000000000, 256, x6, 32, x14)

# opcode: addi ; op1:x8; dest:x0; op1val:0x0000000000000000;  immval:-2048
TEST_IMM_OP( addi, x0, x8, 0xfffffffffffff800, 0x0000000000000000, -2048, x6, 40, x14)

# opcode: addi ; op1:x11; dest:x25; op1val:0x7fffffffffffffff;  immval:-1024
TEST_IMM_OP( addi, x25, x11, 0x7ffffffffffffbff, 0x7fffffffffffffff, -1024, x6, 48, x14)

# opcode: addi ; op1:x15; dest:x13; op1val:0xfffffbffffffffff;  immval:0
TEST_IMM_OP( addi, x13, x15, 0xfffffbffffffffff, 0xfffffbffffffffff, 0, x6, 56, x14)

# opcode: addi ; op1:x1; dest:x28; op1val:0x0000000080000000;  immval:2047
TEST_IMM_OP( addi, x28, x1, 0x800007ff, 0x0000000080000000, 2047, x6, 64, x14)

# opcode: addi ; op1:x12; dest:x4; op1val:0x0000000000000002;  immval:-257
TEST_IMM_OP( addi, x4, x12, 0xffffffffffffff01, 0x0000000000000002, -257, x6, 72, x14)

# opcode: addi ; op1:x21; dest:x19; op1val:0x0000000000000004;  immval:512
TEST_IMM_OP( addi, x19, x21, 0x204, 0x0000000000000004, 512, x6, 80, x14)

# opcode: addi ; op1:x3; dest:x16; op1val:0x0000000000000008;  immval:4
TEST_IMM_OP( addi, x16, x3, 0xc, 0x0000000000000008, 4, x6, 88, x14)

# opcode: addi ; op1:x20; dest:x2; op1val:0x0000000000000010;  immval:-6
TEST_IMM_OP( addi, x2, x20, 0xa, 0x0000000000000010, -6, x6, 96, x14)

# opcode: addi ; op1:x7; dest:x15; op1val:0x0000000000000020;  immval:-33
TEST_IMM_OP( addi, x15, x7, 0xffffffffffffffff, 0x0000000000000020, -33, x6, 104, x14)

# opcode: addi ; op1:x23; dest:x24; op1val:0x0000000000000040;  immval:4
TEST_IMM_OP( addi, x24, x23, 0x44, 0x0000000000000040, 4, x6, 112, x14)

# opcode: addi ; op1:x17; dest:x9; op1val:0x0000000000000080;  immval:0
TEST_IMM_OP( addi, x9, x17, 0x80, 0x0000000000000080, 0, x6, 120, x14)

# opcode: addi ; op1:x10; dest:x29; op1val:0x0000000000000100;  immval:-10
TEST_IMM_OP( addi, x29, x10, 0xf6, 0x0000000000000100, -10, x6, 128, x14)

# opcode: addi ; op1:x18; dest:x23; op1val:0x0000000000000200;  immval:1024
TEST_IMM_OP( addi, x23, x18, 0x600, 0x0000000000000200, 1024, x6, 136, x14)

# opcode: addi ; op1:x27; dest:x14; op1val:0x0000000000000400;  immval:1
TEST_IMM_OP( addi, x14, x27, 0x401, 0x0000000000000400, 1, x6, 144, x13)
la x2,signature_x2_0

# opcode: addi ; op1:x28; dest:x6; op1val:0x0000000000001000;  immval:64
TEST_IMM_OP( addi, x6, x28, 0x1040, 0x0000000000001000, 64, x2, 0, x13)

# opcode: addi ; op1:x4; dest:x21; op1val:0x0000000000002000;  immval:-33
TEST_IMM_OP( addi, x21, x4, 0x1fdf, 0x0000000000002000, -33, x2, 8, x13)

# opcode: addi ; op1:x6; dest:x3; op1val:0x0000000000004000;  immval:6
TEST_IMM_OP( addi, x3, x6, 0x4006, 0x0000000000004000, 6, x2, 16, x13)

# opcode: addi ; op1:x5; dest:x30; op1val:0x0000000000008000;  immval:-7
TEST_IMM_OP( addi, x30, x5, 0x7ff9, 0x0000000000008000, -7, x2, 24, x13)

# opcode: addi ; op1:x19; dest:x8; op1val:0x0000000000010000;  immval:5
TEST_IMM_OP( addi, x8, x19, 0x10005, 0x0000000000010000, 5, x2, 32, x13)

# opcode: addi ; op1:x25; dest:x1; op1val:0x0000000000020000;  immval:-1024
TEST_IMM_OP( addi, x1, x25, 0x1fc00, 0x0000000000020000, -1024, x2, 40, x13)

# opcode: addi ; op1:x14; dest:x18; op1val:0x0000000000040000;  immval:-8
TEST_IMM_OP( addi, x18, x14, 0x3fff8, 0x0000000000040000, -8, x2, 48, x13)

# opcode: addi ; op1:x22; dest:x7; op1val:0x0000000000080000;  immval:-17
TEST_IMM_OP( addi, x7, x22, 0x7ffef, 0x0000000000080000, -17, x2, 56, x13)

# opcode: addi ; op1:x9; dest:x11; op1val:0x0000000000100000;  immval:4
TEST_IMM_OP( addi, x11, x9, 0x100004, 0x0000000000100000, 4, x2, 64, x13)

# opcode: addi ; op1:x0; dest:x27; op1val:0x0000000000200000;  immval:-1366
TEST_IMM_OP( addi, x27, x0, 0x1ffaaa, 0x0000000000200000, -1366, x2, 72, x13)

# opcode: addi ; op1:x16; dest:x20; op1val:0x0000000000400000;  immval:4
TEST_IMM_OP( addi, x20, x16, 0x400004, 0x0000000000400000, 4, x2, 80, x13)

# opcode: addi ; op1:x29; dest:x10; op1val:0x0000000000800000;  immval:3
TEST_IMM_OP( addi, x10, x29, 0x800003, 0x0000000000800000, 3, x2, 88, x13)

# opcode: addi ; op1:x30; dest:x12; op1val:0x0000000001000000;  immval:7
TEST_IMM_OP( addi, x12, x30, 0x1000007, 0x0000000001000000, 7, x2, 96, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x2000080, 0x0000000002000000, 128, x2, 104, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0x40003ff, 0x0000000004000000, 1023, x2, 112, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0x7ffffdf, 0x0000000008000000, -33, x2, 120, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xfffffbf, 0x0000000010000000, -65, x2, 128, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0x200007ff, 0x0000000020000000, 2047, x2, 136, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0x3ffffff8, 0x0000000040000000, -8, x2, 144, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x100000006, 0x0000000100000000, 6, x2, 152, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0x1ffffff7f, 0x0000000200000000, -129, x2, 160, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:256
TEST_IMM_OP( addi, x11, x10, 0x400000100, 0x0000000400000000, 256, x2, 168, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0x7ffffffdf, 0x0000000800000000, -33, x2, 176, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x1000000400, 0x0000001000000000, 1024, x2, 184, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:16
TEST_IMM_OP( addi, x11, x10, 0x2000000010, 0x0000002000000000, 16, x2, 192, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:256
TEST_IMM_OP( addi, x11, x10, 0x4000000100, 0x0000004000000000, 256, x2, 200, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0x7ffffffffc, 0x0000008000000000, -4, x2, 208, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffffffffd, 0x0000010000000000, -3, x2, 216, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:32
TEST_IMM_OP( addi, x11, x10, 0x20000000020, 0x0000020000000000, 32, x2, 224, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:3
TEST_IMM_OP( addi, x11, x10, 0x40000000003, 0x0000040000000000, 3, x2, 232, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-1
TEST_IMM_OP( addi, x11, x10, 0x7ffffffffff, 0x0000080000000000, -1, x2, 240, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xffffffffffd, 0x0000100000000000, -3, x2, 248, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0x1ffffffffffc, 0x0000200000000000, -4, x2, 256, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:8
TEST_IMM_OP( addi, x11, x10, 0x400000000008, 0x0000400000000000, 8, x2, 264, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0x7ffffffffaaa, 0x0000800000000000, -1366, x2, 272, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffd, 0x0001000000000000, -3, x2, 280, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:64
TEST_IMM_OP( addi, x11, x10, 0x2000000000040, 0x0002000000000000, 64, x2, 288, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0x40000000003ff, 0x0004000000000000, 1023, x2, 296, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0x7fffffffffffb, 0x0008000000000000, -5, x2, 304, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffef, 0x0010000000000000, -17, x2, 312, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x20000000000080, 0x0020000000000000, 128, x2, 320, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0x3ffffffffffffa, 0x0040000000000000, -6, x2, 328, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:2
TEST_IMM_OP( addi, x11, x10, 0x80000000000002, 0x0080000000000000, 2, x2, 336, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffc, 0x0100000000000000, -4, x2, 344, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:0
TEST_IMM_OP( addi, x11, x10, 0x200000000000000, 0x0200000000000000, 0, x2, 352, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0x3fffffffffffffa, 0x0400000000000000, -6, x2, 360, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:9
TEST_IMM_OP( addi, x11, x10, 0x800000000000009, 0x0800000000000000, 9, x2, 368, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff7f, 0x1000000000000000, -129, x2, 376, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0x1ffffffffffffaaa, 0x2000000000000000, -1366, x2, 384, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0x3ffffffffffffffe, 0x4000000000000000, -2, x2, 392, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffffe, 0xfffffffffffffffe, 0, x2, 400, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:512
TEST_IMM_OP( addi, x11, x10, 0x1fd, 0xfffffffffffffffd, 512, x2, 408, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xfff7fffffffffbff, 0xfff7ffffffffffff, -1024, x2, 416, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xffefffffffffff7e, 0xffefffffffffffff, -129, x2, 424, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0xffdffffffffffaa9, 0xffdfffffffffffff, -1366, x2, 432, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xffc00000000000ff, 0xffbfffffffffffff, 256, x2, 440, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:7
TEST_IMM_OP( addi, x11, x10, 0xff80000000000006, 0xff7fffffffffffff, 7, x2, 448, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0xff00000000000554, 0xfeffffffffffffff, 1365, x2, 456, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xfdfffffffffffbfe, 0xfdffffffffffffff, -1025, x2, 464, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xfc00000000000007, 0xfbffffffffffffff, 8, x2, 472, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xf800000000000001, 0xf7ffffffffffffff, 2, x2, 480, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xeffffffffffffff5, 0xefffffffffffffff, -10, x2, 488, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xbffffffffffffff6, 0xbfffffffffffffff, -9, x2, 496, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:2
TEST_IMM_OP( addi, x11, x10, 0x5555555555555557, 0x5555555555555555, 2, x2, 504, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xaaaaaaaaaaaaaab2, 0xaaaaaaaaaaaaaaaa, 8, x2, 512, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xfffffffffefffdfe, 0xfffffffffeffffff, -513, x2, 520, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffffc, 0xfffffffffffffffb, 1, x2, 528, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffef6, 0xfffffffffffffff7, -257, x2, 536, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffe9, 0xffffffffffffffef, -6, x2, 544, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffff9e, 0xffffffffffffffdf, -65, x2, 552, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffb9, 0xffffffffffffffbf, -6, x2, 560, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffff76, 0xffffffffffffff7f, -9, x2, 568, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:3
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffff02, 0xfffffffffffffeff, 3, x2, 576, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffdf5, 0xfffffffffffffdff, -10, x2, 584, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffbfa, 0xfffffffffffffbff, -5, x2, 592, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff77e, 0xfffffffffffff7ff, -129, x2, 600, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff0ff, 0xffffffffffffefff, 256, x2, 608, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffe3fe, 0xffffffffffffdfff, 1023, x2, 616, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffc003, 0xffffffffffffbfff, 4, x2, 624, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xffffffffffff7ffc, 0xffffffffffff7fff, -3, x2, 632, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0xffffffffffff03ff, 0xfffffffffffeffff, 1024, x2, 640, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffdfff5, 0xfffffffffffdffff, -10, x2, 648, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffbfdfe, 0xfffffffffffbffff, -513, x2, 656, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xfffffffffff7fff7, 0xfffffffffff7ffff, -8, x2, 664, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xffffffffffeffff8, 0xffffffffffefffff, -7, x2, 672, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xffffffffffdfffbe, 0xffffffffffdfffff, -65, x2, 680, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xffffffffffbffbff, 0xffffffffffbfffff, -1024, x2, 688, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xffffffffff7fffee, 0xffffffffff7fffff, -17, x2, 696, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xfffffffffe000001, 0xfffffffffdffffff, 2, x2, 704, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xfffffffffbffffff, 0xfffffffffbffffff, 0, x2, 712, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xfffffffff7fffdfe, 0xfffffffff7ffffff, -513, x2, 720, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xffffffffeffff7ff, 0xffffffffefffffff, -2048, x2, 728, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xffffffffdffff7ff, 0xffffffffdfffffff, -2048, x2, 736, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xffffffffbffffbff, 0xffffffffbfffffff, -1024, x2, 744, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xffffffff7fffff7e, 0xffffffff7fffffff, -129, x2, 752, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xfffffffeffffffbe, 0xfffffffeffffffff, -65, x2, 760, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffffffbfffffffc, 0xfffffffbffffffff, -3, x2, 768, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xfffffff7fffffff8, 0xfffffff7ffffffff, -7, x2, 776, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xffffffeffffffdfe, 0xffffffefffffffff, -513, x2, 784, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xffffffdfffffff7e, 0xffffffdfffffffff, -129, x2, 792, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:32
TEST_IMM_OP( addi, x11, x10, 0xffffffc00000001f, 0xffffffbfffffffff, 32, x2, 800, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xffffff7ffffffbfe, 0xffffff7fffffffff, -1025, x2, 808, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xfffffefffffffbff, 0xfffffeffffffffff, -1024, x2, 816, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xfffffdfffffffbff, 0xfffffdffffffffff, -1024, x2, 824, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xfffff7fffffffffb, 0xfffff7ffffffffff, -4, x2, 832, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xffffeffffffffffd, 0xffffefffffffffff, -2, x2, 840, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xffffe00000000003, 0xffffdfffffffffff, 4, x2, 848, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:16
TEST_IMM_OP( addi, x11, x10, 0xffffc0000000000f, 0xffffbfffffffffff, 16, x2, 856, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xffff800000000001, 0xffff7fffffffffff, 2, x2, 864, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xffff000000000000, 0xfffeffffffffffff, 1, x2, 872, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xfffdfffffffffff9, 0xfffdffffffffffff, -6, x2, 880, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xfffc000000000000, 0xfffbffffffffffff, 1, x2, 888, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000000001;  immval:1
TEST_IMM_OP( addi, x11, x10, 0x2, 0x0000000000000001, 1, x2, 896, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000000000;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff800, 0x0000000000000000, -2048, x2, 904, x13)

# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0x1ffaaa, 0x0000000000200000, -1366, x2, 912, x13)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x6_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 115*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
