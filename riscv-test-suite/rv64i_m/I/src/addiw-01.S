
#This assembly file tests the addiw instruction of the RISC-V I extension for the addiw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",addiw)

la x3,signature_x3_1

# opcode: addiw ; op1:x13; dest:x13; op1val:0x0000000000000200;  immval:512
TEST_IMM_OP( addiw, x13, x13, 0x400, 0x0000000000000200, 512, x3, 0, x10)

# opcode: addiw ; op1:x22; dest:x18; op1val:0xffff7fffffffffff;  immval:0
TEST_IMM_OP( addiw, x18, x22, 0xffffffff, 0xffff7fffffffffff, 0, x3, 8, x10)

# opcode: addiw ; op1:x12; dest:x9; op1val:0x0001000000000000;  immval:-17
TEST_IMM_OP( addiw, x9, x12, 0xffffffef, 0x0001000000000000, -17, x3, 16, x10)

# opcode: addiw ; op1:x21; dest:x16; op1val:0xffdfffffffffffff;  immval:512
TEST_IMM_OP( addiw, x16, x21, 0x1000001ff, 0xffdfffffffffffff, 512, x3, 24, x10)

# opcode: addiw ; op1:x6; dest:x30; op1val:0xffffbfffffffffff;  immval:-513
TEST_IMM_OP( addiw, x30, x6, 0x1fffffdfe, 0xffffbfffffffffff, -513, x3, 32, x10)

# opcode: addiw ; op1:x2; dest:x24; op1val:0x8000000000000000;  immval:0
TEST_IMM_OP( addiw, x24, x2, 0x0, 0x8000000000000000, 0, x3, 40, x10)

# opcode: addiw ; op1:x11; dest:x8; op1val:0x0000000000000000;  immval:-9
TEST_IMM_OP( addiw, x8, x11, 0xfffffff7, 0x0000000000000000, -9, x3, 48, x10)

# opcode: addiw ; op1:x7; dest:x20; op1val:0x7fffffffffffffff;  immval:-6
TEST_IMM_OP( addiw, x20, x7, 0x1fffffff9, 0x7fffffffffffffff, -6, x3, 56, x10)

# opcode: addiw ; op1:x25; dest:x11; op1val:0x0000000000000001;  immval:32
TEST_IMM_OP( addiw, x11, x25, 0x21, 0x0000000000000001, 32, x3, 64, x10)

# opcode: addiw ; op1:x29; dest:x26; op1val:0xfbffffffffffffff;  immval:-2048
TEST_IMM_OP( addiw, x26, x29, 0x1fffff7ff, 0xfbffffffffffffff, -2048, x3, 72, x10)

# opcode: addiw ; op1:x27; dest:x19; op1val:0xfffffffffeffffff;  immval:2047
TEST_IMM_OP( addiw, x19, x27, 0xff0007fe, 0xfffffffffeffffff, 2047, x3, 80, x10)

# opcode: addiw ; op1:x17; dest:x7; op1val:0xffffffffffbfffff;  immval:1
TEST_IMM_OP( addiw, x7, x17, 0xffc00000, 0xffffffffffbfffff, 1, x3, 88, x10)

# opcode: addiw ; op1:x1; dest:x29; op1val:0x0000000000000002;  immval:256
TEST_IMM_OP( addiw, x29, x1, 0x102, 0x0000000000000002, 256, x3, 96, x10)

# opcode: addiw ; op1:x26; dest:x15; op1val:0x0000000000000004;  immval:9
TEST_IMM_OP( addiw, x15, x26, 0xd, 0x0000000000000004, 9, x3, 104, x10)

# opcode: addiw ; op1:x0; dest:x21; op1val:0x0000000000000008;  immval:256
TEST_IMM_OP( addiw, x21, x0, 0x108, 0x0000000000000008, 256, x3, 112, x10)

# opcode: addiw ; op1:x31; dest:x0; op1val:0x0000000000000010;  immval:-5
TEST_IMM_OP( addiw, x0, x31, 0x10000000b, 0x0000000000000010, -5, x3, 120, x10)

# opcode: addiw ; op1:x15; dest:x4; op1val:0x0000000000000020;  immval:-257
TEST_IMM_OP( addiw, x4, x15, 0xffffff1f, 0x0000000000000020, -257, x3, 128, x10)

# opcode: addiw ; op1:x23; dest:x5; op1val:0x0000000000000040;  immval:-513
TEST_IMM_OP( addiw, x5, x23, 0xfffffe3f, 0x0000000000000040, -513, x3, 136, x10)

# opcode: addiw ; op1:x8; dest:x12; op1val:0x0000000000000080;  immval:-8
TEST_IMM_OP( addiw, x12, x8, 0x100000078, 0x0000000000000080, -8, x3, 144, x7)

# opcode: addiw ; op1:x19; dest:x6; op1val:0x0000000000000100;  immval:-6
TEST_IMM_OP( addiw, x6, x19, 0x1000000fa, 0x0000000000000100, -6, x3, 152, x7)

# opcode: addiw ; op1:x18; dest:x22; op1val:0x0000000000000400;  immval:512
TEST_IMM_OP( addiw, x22, x18, 0x600, 0x0000000000000400, 512, x3, 160, x7)

# opcode: addiw ; op1:x28; dest:x1; op1val:0x0000000000000800;  immval:-65
TEST_IMM_OP( addiw, x1, x28, 0x1000007bf, 0x0000000000000800, -65, x3, 168, x7)
la x1,signature_x1_0

# opcode: addiw ; op1:x4; dest:x17; op1val:0x0000000000001000;  immval:6
TEST_IMM_OP( addiw, x17, x4, 0x1006, 0x0000000000001000, 6, x1, 0, x7)

# opcode: addiw ; op1:x10; dest:x28; op1val:0x0000000000002000;  immval:16
TEST_IMM_OP( addiw, x28, x10, 0x2010, 0x0000000000002000, 16, x1, 8, x7)

# opcode: addiw ; op1:x3; dest:x23; op1val:0x0000000000004000;  immval:3
TEST_IMM_OP( addiw, x23, x3, 0x4003, 0x0000000000004000, 3, x1, 16, x7)

# opcode: addiw ; op1:x14; dest:x25; op1val:0x0000000000008000;  immval:-2
TEST_IMM_OP( addiw, x25, x14, 0x100007ffe, 0x0000000000008000, -2, x1, 24, x7)

# opcode: addiw ; op1:x24; dest:x3; op1val:0x0000000000010000;  immval:-1024
TEST_IMM_OP( addiw, x3, x24, 0x10000fc00, 0x0000000000010000, -1024, x1, 32, x7)

# opcode: addiw ; op1:x20; dest:x14; op1val:0x0000000000020000;  immval:16
TEST_IMM_OP( addiw, x14, x20, 0x20010, 0x0000000000020000, 16, x1, 40, x7)

# opcode: addiw ; op1:x30; dest:x27; op1val:0x0000000000040000;  immval:1365
TEST_IMM_OP( addiw, x27, x30, 0x40555, 0x0000000000040000, 1365, x1, 48, x7)

# opcode: addiw ; op1:x9; dest:x10; op1val:0x0000000000080000;  immval:-4
TEST_IMM_OP( addiw, x10, x9, 0x10007fffc, 0x0000000000080000, -4, x1, 56, x7)

# opcode: addiw ; op1:x16; dest:x2; op1val:0x0000000000100000;  immval:-65
TEST_IMM_OP( addiw, x2, x16, 0x1000fffbf, 0x0000000000100000, -65, x1, 64, x7)

# opcode: addiw ; op1:x5; dest:x31; op1val:0x0000000000200000;  immval:-1
TEST_IMM_OP( addiw, x31, x5, 0x1001fffff, 0x0000000000200000, -1, x1, 72, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0x1003fffbf, 0x0000000000400000, -65, x1, 80, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0x1007ffff8, 0x0000000000800000, -8, x1, 88, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:1024
TEST_IMM_OP( addiw, x11, x10, 0x1000400, 0x0000000001000000, 1024, x1, 96, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0x2000008, 0x0000000002000000, 8, x1, 104, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0x4000008, 0x0000000004000000, 8, x1, 112, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0x107fff800, 0x0000000008000000, -2048, x1, 120, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0x10ffffff6, 0x0000000010000000, -10, x1, 128, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x20000080, 0x0000000020000000, 128, x1, 136, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-9
TEST_IMM_OP( addiw, x11, x10, 0x13ffffff7, 0x0000000040000000, -9, x1, 144, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0x80000005, 0x0000000080000000, 5, x1, 152, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0xffffffbf, 0x0000000100000000, -65, x1, 160, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0x2, 0x0000000200000000, 2, x1, 168, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:1024
TEST_IMM_OP( addiw, x11, x10, 0x400, 0x0000000400000000, 1024, x1, 176, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x20, 0x0000000800000000, 32, x1, 184, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x80, 0x0000001000000000, 128, x1, 192, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:-1366
TEST_IMM_OP( addiw, x11, x10, 0xfffffaaa, 0x0000002000000000, -1366, x1, 200, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0xffffff7f, 0x0000004000000000, -129, x1, 208, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-9
TEST_IMM_OP( addiw, x11, x10, 0xfffffff7, 0x0000008000000000, -9, x1, 216, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x200, 0x0000010000000000, 512, x1, 224, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0xfffffbff, 0x0000020000000000, -1025, x1, 232, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0xfffffff8, 0x0000040000000000, -8, x1, 240, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0xfffffbff, 0x0000080000000000, -1025, x1, 248, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x200, 0x0000100000000000, 512, x1, 256, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0xfffff800, 0x0000200000000000, -2048, x1, 264, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x20, 0x0000400000000000, 32, x1, 272, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:1024
TEST_IMM_OP( addiw, x11, x10, 0x400, 0x0000800000000000, 1024, x1, 280, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-4
TEST_IMM_OP( addiw, x11, x10, 0xfffffffc, 0x0002000000000000, -4, x1, 288, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0x0, 0x0004000000000000, 0, x1, 296, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0xffffffef, 0x0008000000000000, -17, x1, 304, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x10, 0x0010000000000000, 16, x1, 312, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:64
TEST_IMM_OP( addiw, x11, x10, 0x40, 0x0020000000000000, 64, x1, 320, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0xffffffdf, 0x0040000000000000, -33, x1, 328, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x80, 0x0080000000000000, 128, x1, 336, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0xfffffbff, 0x0100000000000000, -1025, x1, 344, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x200, 0x0200000000000000, 512, x1, 352, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0xffffffdf, 0x0400000000000000, -33, x1, 360, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0xfffffff8, 0x0800000000000000, -8, x1, 368, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-1366
TEST_IMM_OP( addiw, x11, x10, 0xfffffaaa, 0x1000000000000000, -1366, x1, 376, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffde, 0xfff7ffffffffffff, -33, x1, 384, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0x1fffff7ff, 0xffefffffffffffff, -2048, x1, 392, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff7, 0xffbfffffffffffff, -8, x1, 400, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbfe, 0xff7fffffffffffff, -1025, x1, 408, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0xffffffff, 0xfeffffffffffffff, 0, x1, 416, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0x1000000ff, 0xfdffffffffffffff, 256, x1, 424, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x10000000f, 0xf7ffffffffffffff, 16, x1, 432, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0x1fffffdfe, 0xefffffffffffffff, -513, x1, 440, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-513
TEST_IMM_OP( addiw, x11, x10, 0x1fffffdfe, 0xdfffffffffffffff, -513, x1, 448, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffbe, 0xbfffffffffffffff, -65, x1, 456, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0x55555954, 0x5555555555555555, 1023, x1, 464, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0xaaaaaab3, 0xaaaaaaaaaaaaaaaa, 9, x1, 472, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000000040;  immval:4
TEST_IMM_OP( addiw, x11, x10, 0x44, 0x0000000000000040, 4, x1, 480, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0xfffffffd, 0x0000020000000000, -3, x1, 488, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0xfffffeff, 0x2000000000000000, -257, x1, 496, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0xfffffff6, 0x4000000000000000, -10, x1, 504, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x100000005, 0xfffffffffffffffe, 7, x1, 512, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x10000000d, 0xfffffffffffffffd, 16, x1, 520, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffa, 0xfffffffffffffffb, -1, x1, 528, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:3
TEST_IMM_OP( addiw, x11, x10, 0xfffffffa, 0xfffffffffffffff7, 3, x1, 536, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:6
TEST_IMM_OP( addiw, x11, x10, 0xfffffff5, 0xffffffffffffffef, 6, x1, 544, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffde, 0xffffffffffffffdf, -1, x1, 552, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0xffffffc4, 0xffffffffffffffbf, 5, x1, 560, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:1024
TEST_IMM_OP( addiw, x11, x10, 0x10000037f, 0xffffffffffffff7f, 1024, x1, 568, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-7
TEST_IMM_OP( addiw, x11, x10, 0x1fffffef8, 0xfffffffffffffeff, -7, x1, 576, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0x1fffffdfe, 0xfffffffffffffdff, -1, x1, 584, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0xfffffc00, 0xfffffffffffffbff, 1, x1, 592, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0xfffff804, 0xfffffffffffff7ff, 5, x1, 600, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0xfffff004, 0xffffffffffffefff, 5, x1, 608, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0xffffe0ff, 0xffffffffffffdfff, 256, x1, 616, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-9
TEST_IMM_OP( addiw, x11, x10, 0x1ffffbff6, 0xffffffffffffbfff, -9, x1, 624, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0xffff81ff, 0xffffffffffff7fff, 512, x1, 632, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0xffff07fe, 0xfffffffffffeffff, 2047, x1, 640, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0xfffe0001, 0xfffffffffffdffff, 2, x1, 648, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0xfffbffff, 0xfffffffffffbffff, 0, x1, 656, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-4
TEST_IMM_OP( addiw, x11, x10, 0x1fff7fffb, 0xfffffffffff7ffff, -4, x1, 664, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0x1ffeffff7, 0xffffffffffefffff, -8, x1, 672, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:-1024
TEST_IMM_OP( addiw, x11, x10, 0x1ffdffbff, 0xffffffffffdfffff, -1024, x1, 680, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x1ff7ffefe, 0xffffffffff7fffff, -257, x1, 688, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0xfe00007f, 0xfffffffffdffffff, 128, x1, 696, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fbfffbfe, 0xfffffffffbffffff, -1025, x1, 704, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0xf8000008, 0xfffffffff7ffffff, 9, x1, 712, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:1024
TEST_IMM_OP( addiw, x11, x10, 0xf00003ff, 0xffffffffefffffff, 1024, x1, 720, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x1dffffefe, 0xffffffffdfffffff, -257, x1, 728, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0xc00001ff, 0xffffffffbfffffff, 512, x1, 736, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:3
TEST_IMM_OP( addiw, x11, x10, 0x80000002, 0xffffffff7fffffff, 3, x1, 744, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xfffffffeffffffff, -17, x1, 752, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0x100000008, 0xfffffffdffffffff, 9, x1, 760, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff5, 0xfffffffbffffffff, -10, x1, 768, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-8
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff7, 0xfffffff7ffffffff, -8, x1, 776, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x1000001ff, 0xffffffefffffffff, 512, x1, 784, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0x100000001, 0xffffffdfffffffff, 2, x1, 792, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0x1fffff7ff, 0xffffffbfffffffff, -2048, x1, 800, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffde, 0xffffff7fffffffff, -33, x1, 808, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbfe, 0xfffffeffffffffff, -1025, x1, 816, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-4
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffb, 0xfffffdffffffffff, -4, x1, 824, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0x100000008, 0xfffffbffffffffff, 9, x1, 832, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffde, 0xfffff7ffffffffff, -33, x1, 840, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff5, 0xffffefffffffffff, -10, x1, 848, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0x1000007fe, 0xffffdfffffffffff, 2047, x1, 856, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x100000554, 0xfffeffffffffffff, 1365, x1, 864, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbfe, 0xfffdffffffffffff, -1025, x1, 872, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0xffffffff, 0xfffbffffffffffff, 0, x1, 880, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000000200;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x400, 0x0000000000000200, 512, x1, 888, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000000008;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0x108, 0x0000000000000008, 256, x1, 896, x7)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000000010;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0x10000000b, 0x0000000000000010, -5, x1, 904, x7)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x3_1:
    .fill 22*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 114*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
