
#This assembly file tests the addiw instruction of the RISC-V I extension for the addiw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",addiw)

la x5,signature_x5_1

# opcode: addiw ; op1:x27; dest:x27; op1val:0xffffffffffffffbf;  immval:-65
TEST_IMM_OP( addiw, x27, x27, 0x1ffffff7e, 0xffffffffffffffbf, -65, x5, 0, x13)

# opcode: addiw ; op1:x22; dest:x4; op1val:0x0000000000000007;  immval:5
TEST_IMM_OP( addiw, x4, x22, 0xc, 0x0000000000000007, 5, x5, 8, x13)

# opcode: addiw ; op1:x3; dest:x26; op1val:0x0200000000000000;  immval:-513
TEST_IMM_OP( addiw, x26, x3, 0xfffffdff, 0x0200000000000000, -513, x5, 16, x13)

# opcode: addiw ; op1:x0; dest:x3; op1val:0xffffffffdfffffff;  immval:16
TEST_IMM_OP( addiw, x3, x0, 0xe000000f, 0xffffffffdfffffff, 16, x5, 24, x13)

# opcode: addiw ; op1:x21; dest:x14; op1val:0x8000000000000000;  immval:-7
TEST_IMM_OP( addiw, x14, x21, 0xfffffff9, 0x8000000000000000, -7, x5, 32, x13)

# opcode: addiw ; op1:x30; dest:x8; op1val:0x0000000000000000;  immval:4
TEST_IMM_OP( addiw, x8, x30, 0x4, 0x0000000000000000, 4, x5, 40, x13)

# opcode: addiw ; op1:x18; dest:x24; op1val:0x7fffffffffffffff;  immval:4
TEST_IMM_OP( addiw, x24, x18, 0x100000003, 0x7fffffffffffffff, 4, x5, 48, x13)

# opcode: addiw ; op1:x15; dest:x18; op1val:0x0000000000000001;  immval:1
TEST_IMM_OP( addiw, x18, x15, 0x2, 0x0000000000000001, 1, x5, 56, x13)

# opcode: addiw ; op1:x8; dest:x20; op1val:0x0400000000000000;  immval:-2048
TEST_IMM_OP( addiw, x20, x8, 0xfffff800, 0x0400000000000000, -2048, x5, 64, x13)

# opcode: addiw ; op1:x11; dest:x23; op1val:0x0000020000000000;  immval:0
TEST_IMM_OP( addiw, x23, x11, 0x0, 0x0000020000000000, 0, x5, 72, x13)

# opcode: addiw ; op1:x1; dest:x21; op1val:0xffffffffefffffff;  immval:2047
TEST_IMM_OP( addiw, x21, x1, 0xf00007fe, 0xffffffffefffffff, 2047, x5, 80, x13)

# opcode: addiw ; op1:x23; dest:x15; op1val:0x0000000000000002;  immval:-4
TEST_IMM_OP( addiw, x15, x23, 0xfffffffe, 0x0000000000000002, -4, x5, 88, x13)

# opcode: addiw ; op1:x2; dest:x7; op1val:0x0000000000000004;  immval:-4
TEST_IMM_OP( addiw, x7, x2, 0x100000000, 0x0000000000000004, -4, x5, 96, x13)

# opcode: addiw ; op1:x19; dest:x30; op1val:0x0000000000000008;  immval:-8
TEST_IMM_OP( addiw, x30, x19, 0x100000000, 0x0000000000000008, -8, x5, 104, x13)

# opcode: addiw ; op1:x10; dest:x22; op1val:0x0000000000000010;  immval:-1025
TEST_IMM_OP( addiw, x22, x10, 0xfffffc0f, 0x0000000000000010, -1025, x5, 112, x13)

# opcode: addiw ; op1:x9; dest:x17; op1val:0x0000000000000020;  immval:-2
TEST_IMM_OP( addiw, x17, x9, 0x10000001e, 0x0000000000000020, -2, x5, 120, x13)

# opcode: addiw ; op1:x12; dest:x28; op1val:0x0000000000000040;  immval:-65
TEST_IMM_OP( addiw, x28, x12, 0xffffffff, 0x0000000000000040, -65, x5, 128, x13)

# opcode: addiw ; op1:x31; dest:x29; op1val:0x0000000000000080;  immval:2047
TEST_IMM_OP( addiw, x29, x31, 0x87f, 0x0000000000000080, 2047, x5, 136, x13)

# opcode: addiw ; op1:x7; dest:x1; op1val:0x0000000000000100;  immval:1023
TEST_IMM_OP( addiw, x1, x7, 0x4ff, 0x0000000000000100, 1023, x5, 144, x13)

# opcode: addiw ; op1:x6; dest:x9; op1val:0x0000000000000200;  immval:-4
TEST_IMM_OP( addiw, x9, x6, 0x1000001fc, 0x0000000000000200, -4, x5, 152, x13)

# opcode: addiw ; op1:x29; dest:x25; op1val:0x0000000000000400;  immval:-513
TEST_IMM_OP( addiw, x25, x29, 0x1000001ff, 0x0000000000000400, -513, x5, 160, x3)
la x1,signature_x1_0

# opcode: addiw ; op1:x13; dest:x2; op1val:0x0000000000000800;  immval:-65
TEST_IMM_OP( addiw, x2, x13, 0x1000007bf, 0x0000000000000800, -65, x1, 0, x3)

# opcode: addiw ; op1:x28; dest:x19; op1val:0x0000000000001000;  immval:-9
TEST_IMM_OP( addiw, x19, x28, 0x100000ff7, 0x0000000000001000, -9, x1, 8, x3)

# opcode: addiw ; op1:x17; dest:x12; op1val:0x0000000000002000;  immval:9
TEST_IMM_OP( addiw, x12, x17, 0x2009, 0x0000000000002000, 9, x1, 16, x3)

# opcode: addiw ; op1:x16; dest:x13; op1val:0x0000000000004000;  immval:-33
TEST_IMM_OP( addiw, x13, x16, 0x100003fdf, 0x0000000000004000, -33, x1, 24, x3)

# opcode: addiw ; op1:x26; dest:x31; op1val:0x0000000000008000;  immval:0
TEST_IMM_OP( addiw, x31, x26, 0x8000, 0x0000000000008000, 0, x1, 32, x3)

# opcode: addiw ; op1:x14; dest:x6; op1val:0x0000000000010000;  immval:2047
TEST_IMM_OP( addiw, x6, x14, 0x107ff, 0x0000000000010000, 2047, x1, 40, x3)

# opcode: addiw ; op1:x4; dest:x10; op1val:0x0000000000020000;  immval:-1025
TEST_IMM_OP( addiw, x10, x4, 0x10001fbff, 0x0000000000020000, -1025, x1, 48, x3)

# opcode: addiw ; op1:x25; dest:x5; op1val:0x0000000000040000;  immval:32
TEST_IMM_OP( addiw, x5, x25, 0x40020, 0x0000000000040000, 32, x1, 56, x3)

# opcode: addiw ; op1:x5; dest:x16; op1val:0x0000000000080000;  immval:-5
TEST_IMM_OP( addiw, x16, x5, 0x10007fffb, 0x0000000000080000, -5, x1, 64, x3)

# opcode: addiw ; op1:x20; dest:x0; op1val:0x0000000000100000;  immval:-2
TEST_IMM_OP( addiw, x0, x20, 0x1000ffffe, 0x0000000000100000, -2, x1, 72, x3)

# opcode: addiw ; op1:x24; dest:x11; op1val:0x0000000000200000;  immval:-1
TEST_IMM_OP( addiw, x11, x24, 0x1001fffff, 0x0000000000200000, -1, x1, 80, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0x4007ff, 0x0000000000400000, 2047, x1, 88, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x800080, 0x0000000000800000, 128, x1, 96, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x1000020, 0x0000000001000000, 32, x1, 104, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0x101ffffbf, 0x0000000002000000, -65, x1, 112, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0x4000000, 0x0000000004000000, 0, x1, 120, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0x8000005, 0x0000000008000000, 5, x1, 128, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0x10fffffbf, 0x0000000010000000, -65, x1, 136, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-6
TEST_IMM_OP( addiw, x11, x10, 0x11ffffffa, 0x0000000020000000, -6, x1, 144, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0x40000000, 0x0000000040000000, 0, x1, 152, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0x800003ff, 0x0000000080000000, 1023, x1, 160, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0x9, 0x0000000100000000, 9, x1, 168, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0xffffffef, 0x0000000200000000, -17, x1, 176, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x80, 0x0000000400000000, 128, x1, 184, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-7
TEST_IMM_OP( addiw, x11, x10, 0xfffffff9, 0x0000000800000000, -7, x1, 192, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x80, 0x0000001000000000, 128, x1, 200, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:1024
TEST_IMM_OP( addiw, x11, x10, 0x400, 0x0000002000000000, 1024, x1, 208, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-4
TEST_IMM_OP( addiw, x11, x10, 0xfffffffc, 0x0000004000000000, -4, x1, 216, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0x80, 0x0000008000000000, 128, x1, 224, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:64
TEST_IMM_OP( addiw, x11, x10, 0x40, 0x0000010000000000, 64, x1, 232, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0xffffffdf, 0x0000040000000000, -33, x1, 240, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-2
TEST_IMM_OP( addiw, x11, x10, 0xfffffffe, 0x0000080000000000, -2, x1, 248, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x10, 0x0000100000000000, 16, x1, 256, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:3
TEST_IMM_OP( addiw, x11, x10, 0x3, 0x0000200000000000, 3, x1, 264, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:6
TEST_IMM_OP( addiw, x11, x10, 0x6, 0x0000400000000000, 6, x1, 272, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-4
TEST_IMM_OP( addiw, x11, x10, 0xfffffffc, 0x0000800000000000, -4, x1, 280, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x1, 0x0001000000000000, 1, x1, 288, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:6
TEST_IMM_OP( addiw, x11, x10, 0x6, 0x0002000000000000, 6, x1, 296, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0xffffffbf, 0x0004000000000000, -65, x1, 304, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:1024
TEST_IMM_OP( addiw, x11, x10, 0x400, 0x0008000000000000, 1024, x1, 312, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0x3ff, 0x0010000000000000, 1023, x1, 320, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:1024
TEST_IMM_OP( addiw, x11, x10, 0x400, 0x0020000000000000, 1024, x1, 328, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:-1024
TEST_IMM_OP( addiw, x11, x10, 0xfffffc00, 0x0040000000000000, -1024, x1, 336, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-4
TEST_IMM_OP( addiw, x11, x10, 0xfffffffc, 0x0080000000000000, -4, x1, 344, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:512
TEST_IMM_OP( addiw, x11, x10, 0x200, 0x0100000000000000, 512, x1, 352, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:6
TEST_IMM_OP( addiw, x11, x10, 0x6, 0x0800000000000000, 6, x1, 360, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x1, 0x1000000000000000, 1, x1, 368, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0x7ff, 0x2000000000000000, 2047, x1, 376, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0xffffffbf, 0x4000000000000000, -65, x1, 384, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff9, 0xfffffffffffffffe, -5, x1, 392, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-1024
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbfd, 0xfffffffffffffffd, -1024, x1, 400, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff6, 0xfffffffffffffffb, -5, x1, 408, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0x1000003f6, 0xfffffffffffffff7, 1023, x1, 416, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-1024
TEST_IMM_OP( addiw, x11, x10, 0x1fffffbef, 0xffffffffffffffef, -1024, x1, 424, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-6
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffd9, 0xffffffffffffffdf, -6, x1, 432, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0x1ffffff7a, 0xffffffffffffff7f, -5, x1, 440, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0x1000000ff, 0xfff7ffffffffffff, 256, x1, 448, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:6
TEST_IMM_OP( addiw, x11, x10, 0x100000005, 0xffefffffffffffff, 6, x1, 456, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:6
TEST_IMM_OP( addiw, x11, x10, 0x100000005, 0xffdfffffffffffff, 6, x1, 464, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0x1fffffff5, 0xffbfffffffffffff, -10, x1, 472, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-5
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffa, 0xff7fffffffffffff, -5, x1, 480, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffc, 0xfeffffffffffffff, -3, x1, 488, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0xffffffff, 0xfdffffffffffffff, 0, x1, 496, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x10000000f, 0xfbffffffffffffff, 16, x1, 504, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0x100000008, 0xf7ffffffffffffff, 9, x1, 512, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x100000554, 0xefffffffffffffff, 1365, x1, 520, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xdfffffffffffffff, -17, x1, 528, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-1366
TEST_IMM_OP( addiw, x11, x10, 0x1fffffaa9, 0xbfffffffffffffff, -1366, x1, 536, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:-7
TEST_IMM_OP( addiw, x11, x10, 0x15555554e, 0x5555555555555555, -7, x1, 544, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0xaaaaafff, 0xaaaaaaaaaaaaaaaa, 1365, x1, 552, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0xfffffffd, 0xfffffffffffffffb, 2, x1, 560, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:8
TEST_IMM_OP( addiw, x11, x10, 0xffffff07, 0xfffffffffffffeff, 8, x1, 568, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0x1ffffff5e, 0xffffffffffffffdf, -129, x1, 576, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0xfffffeff, 0x0000000400000000, -257, x1, 584, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x1fffffcfe, 0xfffffffffffffdff, -257, x1, 592, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fffff7fe, 0xfffffffffffffbff, -1025, x1, 600, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0xfffff808, 0xfffffffffffff7ff, 9, x1, 608, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0xffffefff, 0xffffffffffffefff, 0, x1, 616, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0xffffdfff, 0xffffffffffffdfff, 0, x1, 624, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-2048
TEST_IMM_OP( addiw, x11, x10, 0x1ffffb7ff, 0xffffffffffffbfff, -2048, x1, 632, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:128
TEST_IMM_OP( addiw, x11, x10, 0xffff807f, 0xffffffffffff7fff, 128, x1, 640, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-1025
TEST_IMM_OP( addiw, x11, x10, 0x1fffefbfe, 0xfffffffffffeffff, -1025, x1, 648, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-4
TEST_IMM_OP( addiw, x11, x10, 0x1fffdfffb, 0xfffffffffffdffff, -4, x1, 656, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:-6
TEST_IMM_OP( addiw, x11, x10, 0x1fffbfff9, 0xfffffffffffbffff, -6, x1, 664, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:9
TEST_IMM_OP( addiw, x11, x10, 0xfff80008, 0xfffffffffff7ffff, 9, x1, 672, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-1366
TEST_IMM_OP( addiw, x11, x10, 0x1ffeffaa9, 0xffffffffffefffff, -1366, x1, 680, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:-10
TEST_IMM_OP( addiw, x11, x10, 0x1ffdffff5, 0xffffffffffdfffff, -10, x1, 688, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-33
TEST_IMM_OP( addiw, x11, x10, 0x1ffbfffde, 0xffffffffffbfffff, -33, x1, 696, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-7
TEST_IMM_OP( addiw, x11, x10, 0x1ff7ffff8, 0xffffffffff7fffff, -7, x1, 704, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0xff0003fe, 0xfffffffffeffffff, 1023, x1, 712, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x1fdfffefe, 0xfffffffffdffffff, -257, x1, 720, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0xfc0003fe, 0xfffffffffbffffff, 1023, x1, 728, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:2
TEST_IMM_OP( addiw, x11, x10, 0xf8000001, 0xfffffffff7ffffff, 2, x1, 736, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0xc0000554, 0xffffffffbfffffff, 1365, x1, 744, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0x8000000f, 0xffffffff7fffffff, 16, x1, 752, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0x100000004, 0xfffffffeffffffff, 5, x1, 760, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x10000001f, 0xfffffffdffffffff, 32, x1, 768, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffc, 0xfffffffbffffffff, -3, x1, 776, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:7
TEST_IMM_OP( addiw, x11, x10, 0x100000006, 0xfffffff7ffffffff, 7, x1, 784, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-129
TEST_IMM_OP( addiw, x11, x10, 0x1ffffff7e, 0xffffffefffffffff, -129, x1, 792, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-257
TEST_IMM_OP( addiw, x11, x10, 0x1fffffefe, 0xffffffdfffffffff, -257, x1, 800, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:0
TEST_IMM_OP( addiw, x11, x10, 0xffffffff, 0xffffffbfffffffff, 0, x1, 808, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:1
TEST_IMM_OP( addiw, x11, x10, 0x100000000, 0xffffff7fffffffff, 1, x1, 816, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-3
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffc, 0xfffffeffffffffff, -3, x1, 824, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:1365
TEST_IMM_OP( addiw, x11, x10, 0x100000554, 0xfffffdffffffffff, 1365, x1, 832, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:2047
TEST_IMM_OP( addiw, x11, x10, 0x1000007fe, 0xfffffbffffffffff, 2047, x1, 840, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:1023
TEST_IMM_OP( addiw, x11, x10, 0x1000003fe, 0xfffff7ffffffffff, 1023, x1, 848, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:3
TEST_IMM_OP( addiw, x11, x10, 0x100000002, 0xffffefffffffffff, 3, x1, 856, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-1
TEST_IMM_OP( addiw, x11, x10, 0x1fffffffe, 0xffffdfffffffffff, -1, x1, 864, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:32
TEST_IMM_OP( addiw, x11, x10, 0x10000001f, 0xffffbfffffffffff, 32, x1, 872, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:256
TEST_IMM_OP( addiw, x11, x10, 0x1000000ff, 0xffff7fffffffffff, 256, x1, 880, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xfffeffffffffffff, -17, x1, 888, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:5
TEST_IMM_OP( addiw, x11, x10, 0x100000004, 0xfffdffffffffffff, 5, x1, 896, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:-17
TEST_IMM_OP( addiw, x11, x10, 0x1ffffffee, 0xfffbffffffffffff, -17, x1, 904, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-65
TEST_IMM_OP( addiw, x11, x10, 0x1ffffff7e, 0xffffffffffffffbf, -65, x1, 912, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:16
TEST_IMM_OP( addiw, x11, x10, 0xe000000f, 0xffffffffdfffffff, 16, x1, 920, x3)

# opcode: addiw ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:-2
TEST_IMM_OP( addiw, x11, x10, 0x1000ffffe, 0x0000000000100000, -2, x1, 928, x3)
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
    .fill 21*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 117*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
