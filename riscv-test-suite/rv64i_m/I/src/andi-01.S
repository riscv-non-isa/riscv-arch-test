
#This assembly file tests the andi instruction of the RISC-V I extension for the andi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",andi)

la x7,signature_x7_1

# opcode: andi ; op1:x13; dest:x13; op1val:0x0000000000000100;  immval:256
TEST_IMM_OP( andi, x13, x13, 0x100, 0x0000000000000100, 256, x7, 0, x3)

# opcode: andi ; op1:x9; dest:x2; op1val:0xfffffdffffffffff;  immval:-1025
TEST_IMM_OP( andi, x2, x9, 0xfffffdfffffffbff, 0xfffffdffffffffff, -1025, x7, 8, x3)

# opcode: andi ; op1:x18; dest:x27; op1val:0x2000000000000000;  immval:-2
TEST_IMM_OP( andi, x27, x18, 0x2000000000000000, 0x2000000000000000, -2, x7, 16, x3)

# opcode: andi ; op1:x16; dest:x8; op1val:0xefffffffffffffff;  immval:2047
TEST_IMM_OP( andi, x8, x16, 0x7ff, 0xefffffffffffffff, 2047, x7, 24, x3)

# opcode: andi ; op1:x20; dest:x19; op1val:0x8000000000000000;  immval:-2048
TEST_IMM_OP( andi, x19, x20, 0x8000000000000000, 0x8000000000000000, -2048, x7, 32, x3)

# opcode: andi ; op1:x29; dest:x11; op1val:0x0000000000000000;  immval:-3
TEST_IMM_OP( andi, x11, x29, 0x0, 0x0000000000000000, -3, x7, 40, x3)

# opcode: andi ; op1:x24; dest:x21; op1val:0x7fffffffffffffff;  immval:-1024
TEST_IMM_OP( andi, x21, x24, 0x7ffffffffffffc00, 0x7fffffffffffffff, -1024, x7, 48, x3)

# opcode: andi ; op1:x12; dest:x4; op1val:0x0000000000000001;  immval:64
TEST_IMM_OP( andi, x4, x12, 0x0, 0x0000000000000001, 64, x7, 56, x3)

# opcode: andi ; op1:x21; dest:x14; op1val:0xffffffffffdfffff;  immval:0
TEST_IMM_OP( andi, x14, x21, 0x0, 0xffffffffffdfffff, 0, x7, 64, x3)

# opcode: andi ; op1:x15; dest:x10; op1val:0xffffffffffffdfff;  immval:1
TEST_IMM_OP( andi, x10, x15, 0x1, 0xffffffffffffdfff, 1, x7, 72, x3)

# opcode: andi ; op1:x10; dest:x24; op1val:0x0000000000000002;  immval:-10
TEST_IMM_OP( andi, x24, x10, 0x2, 0x0000000000000002, -10, x7, 80, x3)

# opcode: andi ; op1:x5; dest:x29; op1val:0x0000000000000004;  immval:-10
TEST_IMM_OP( andi, x29, x5, 0x4, 0x0000000000000004, -10, x7, 88, x3)

# opcode: andi ; op1:x6; dest:x17; op1val:0x0000000000000008;  immval:-4
TEST_IMM_OP( andi, x17, x6, 0x8, 0x0000000000000008, -4, x7, 96, x3)

# opcode: andi ; op1:x26; dest:x18; op1val:0x0000000000000010;  immval:256
TEST_IMM_OP( andi, x18, x26, 0x0, 0x0000000000000010, 256, x7, 104, x3)

# opcode: andi ; op1:x8; dest:x31; op1val:0x0000000000000020;  immval:-17
TEST_IMM_OP( andi, x31, x8, 0x20, 0x0000000000000020, -17, x7, 112, x3)

# opcode: andi ; op1:x17; dest:x5; op1val:0x0000000000000040;  immval:-5
TEST_IMM_OP( andi, x5, x17, 0x40, 0x0000000000000040, -5, x7, 120, x3)

# opcode: andi ; op1:x0; dest:x30; op1val:0x0000000000000080;  immval:-6
TEST_IMM_OP( andi, x30, x0, 0x80, 0x0000000000000080, -6, x7, 128, x3)

# opcode: andi ; op1:x22; dest:x6; op1val:0x0000000000000200;  immval:-1366
TEST_IMM_OP( andi, x6, x22, 0x200, 0x0000000000000200, -1366, x7, 136, x3)

# opcode: andi ; op1:x19; dest:x0; op1val:0x0000000000000400;  immval:0
TEST_IMM_OP( andi, x0, x19, 0x0, 0x0000000000000400, 0, x7, 144, x3)

# opcode: andi ; op1:x14; dest:x20; op1val:0x0000000000000800;  immval:2
TEST_IMM_OP( andi, x20, x14, 0x0, 0x0000000000000800, 2, x7, 152, x3)

# opcode: andi ; op1:x11; dest:x28; op1val:0x0000000000001000;  immval:3
TEST_IMM_OP( andi, x28, x11, 0x0, 0x0000000000001000, 3, x7, 160, x3)

# opcode: andi ; op1:x1; dest:x9; op1val:0x0000000000002000;  immval:6
TEST_IMM_OP( andi, x9, x1, 0x0, 0x0000000000002000, 6, x7, 168, x3)

# opcode: andi ; op1:x30; dest:x15; op1val:0x0000000000004000;  immval:1024
TEST_IMM_OP( andi, x15, x30, 0x0, 0x0000000000004000, 1024, x7, 176, x5)

# opcode: andi ; op1:x31; dest:x12; op1val:0x0000000000008000;  immval:-4
TEST_IMM_OP( andi, x12, x31, 0x8000, 0x0000000000008000, -4, x7, 184, x5)

# opcode: andi ; op1:x2; dest:x1; op1val:0x0000000000010000;  immval:512
TEST_IMM_OP( andi, x1, x2, 0x0, 0x0000000000010000, 512, x7, 192, x5)

# opcode: andi ; op1:x23; dest:x3; op1val:0x0000000000020000;  immval:-1366
TEST_IMM_OP( andi, x3, x23, 0x20000, 0x0000000000020000, -1366, x7, 200, x5)
la x1,signature_x1_0

# opcode: andi ; op1:x25; dest:x26; op1val:0x0000000000040000;  immval:9
TEST_IMM_OP( andi, x26, x25, 0x0, 0x0000000000040000, 9, x1, 0, x5)

# opcode: andi ; op1:x7; dest:x25; op1val:0x0000000000080000;  immval:8
TEST_IMM_OP( andi, x25, x7, 0x0, 0x0000000000080000, 8, x1, 8, x5)

# opcode: andi ; op1:x4; dest:x7; op1val:0x0000000000100000;  immval:-3
TEST_IMM_OP( andi, x7, x4, 0x100000, 0x0000000000100000, -3, x1, 16, x5)

# opcode: andi ; op1:x28; dest:x23; op1val:0x0000000000200000;  immval:5
TEST_IMM_OP( andi, x23, x28, 0x0, 0x0000000000200000, 5, x1, 24, x5)

# opcode: andi ; op1:x27; dest:x22; op1val:0x0000000000400000;  immval:-65
TEST_IMM_OP( andi, x22, x27, 0x400000, 0x0000000000400000, -65, x1, 32, x5)

# opcode: andi ; op1:x3; dest:x16; op1val:0x0000000000800000;  immval:-2048
TEST_IMM_OP( andi, x16, x3, 0x800000, 0x0000000000800000, -2048, x1, 40, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000001000000, 512, x1, 48, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0x2000000, 0x0000000002000000, -513, x1, 56, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0x4000000, 0x0000000004000000, -65, x1, 64, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000008000000, 512, x1, 72, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:2047
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000010000000, 2047, x1, 80, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0x20000000, 0x0000000020000000, -65, x1, 88, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000040000000, 5, x1, 96, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000080000000, 8, x1, 104, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000100000000, 32, x1, 112, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0x200000000, 0x0000000200000000, -257, x1, 120, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0x400000000, 0x0000000400000000, -129, x1, 128, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000800000000, 256, x1, 136, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000001000000000, 7, x1, 144, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0x2000000000, 0x0000002000000000, -257, x1, 152, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0x4000000000, 0x0000004000000000, -17, x1, 160, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0x8000000000, 0x0000008000000000, -9, x1, 168, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0x10000000000, 0x0000010000000000, -2048, x1, 176, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0x20000000000, 0x0000020000000000, -6, x1, 184, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000040000000000, 1024, x1, 192, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:2047
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000080000000000, 2047, x1, 200, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0x100000000000, 0x0000100000000000, -33, x1, 208, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000200000000000, 1, x1, 216, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0x400000000000, 0x0000400000000000, -513, x1, 224, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0x800000000000, 0x0000800000000000, -2048, x1, 232, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0x1000000000000, 0x0001000000000000, -513, x1, 240, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0x2000000000000, 0x0002000000000000, -33, x1, 248, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0004000000000000, 6, x1, 256, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0008000000000000, 512, x1, 264, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0010000000000000, 1365, x1, 272, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0020000000000000, 1023, x1, 280, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0040000000000000, 2, x1, 288, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0080000000000000, 3, x1, 296, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0100000000000000, 3, x1, 304, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0200000000000000, 7, x1, 312, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0400000000000000, 9, x1, 320, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0800000000000000, 5, x1, 328, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0x1000000000000000, 0x1000000000000000, -129, x1, 336, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0x4000000000000000, 0x4000000000000000, -2, x1, 344, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xfffffffffffffffe, 32, x1, 352, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xfff7ffffffffffff, 0xfff7ffffffffffff, -1, x1, 360, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x80, 0xffefffffffffffff, 128, x1, 368, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xffdfffffffffffff, 0xffdfffffffffffff, -1, x1, 376, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x400, 0xffbfffffffffffff, 1024, x1, 384, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xff7fffffffffffbf, 0xff7fffffffffffff, -65, x1, 392, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xfeffffffffffffff, 9, x1, 400, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0xfdffffffffffffff, 0, x1, 408, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfbfffffffffffff8, 0xfbffffffffffffff, -8, x1, 416, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xf7fffffffffffff8, 0xf7ffffffffffffff, -8, x1, 424, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x80, 0xdfffffffffffffff, 128, x1, 432, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0xbffffffffffffffa, 0xbfffffffffffffff, -6, x1, 440, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x4, 0x5555555555555555, 4, x1, 448, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, -2, x1, 456, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000000003;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000000003, 16, x1, 464, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x0, 0xfffffffffffffffd, 2, x1, 472, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xfffffffffffffffb, 9, x1, 480, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x400, 0xfffffffffffffff7, 1024, x1, 488, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffbef, 0xffffffffffffffef, -1025, x1, 496, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffa8a, 0xffffffffffffffdf, -1366, x1, 504, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffff9f, 0xffffffffffffffbf, -33, x1, 512, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffff7b, 0xffffffffffffff7f, -5, x1, 520, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-1024
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffc00, 0xfffffffffffffeff, -1024, x1, 528, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffdff, 0xfffffffffffffdff, -1, x1, 536, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x3ff, 0xfffffffffffffbff, 1023, x1, 544, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xfffffffffffff7ff, 16, x1, 552, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffefef, 0xffffffffffffefff, -17, x1, 560, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x5, 0xffffffffffffbfff, 5, x1, 568, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xffffffffffff7fff, 9, x1, 576, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xfffffffffffeffff, 256, x1, 584, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffdffef, 0xfffffffffffdffff, -17, x1, 592, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xfffffffffffbffff, 6, x1, 600, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xfffffffffff7faaa, 0xfffffffffff7ffff, -1366, x1, 608, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xffffffffffeffbff, 0xffffffffffefffff, -1025, x1, 616, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0xffffffffffbfffef, 0xffffffffffbfffff, -17, x1, 624, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xffffffffff7ffffe, 0xffffffffff7fffff, -2, x1, 632, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xfffffffffeffffff, 32, x1, 640, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xfffffffffdffffff, 16, x1, 648, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x5, 0xfffffffffbffffff, 5, x1, 656, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xfffffffff7ffffff, 3, x1, 664, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0xffffffffeffffffc, 0xffffffffefffffff, -4, x1, 672, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x5, 0xffffffffdfffffff, 5, x1, 680, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xffffffffbfffffff, 8, x1, 688, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0xffffffff7fffffff, 0, x1, 696, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xfffffffeffffffff, 9, x1, 704, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfffffffdfffffff8, 0xfffffffdffffffff, -8, x1, 712, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xfffffffbffffffff, 3, x1, 720, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfffffff7fffffff8, 0xfffffff7ffffffff, -8, x1, 728, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0xffffffeffffffffc, 0xffffffefffffffff, -4, x1, 736, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0xffffffdffffffffd, 0xffffffdfffffffff, -3, x1, 744, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x200, 0xffffffbfffffffff, 512, x1, 752, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xffffff7ffffffff6, 0xffffff7fffffffff, -10, x1, 760, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0xfffffefffffffdff, 0xfffffeffffffffff, -513, x1, 768, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x200, 0xfffffbffffffffff, 512, x1, 776, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xfffff7ffffffffff, 8, x1, 784, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xffffefffffffffff, 6, x1, 792, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xffffdfffffffffff, 256, x1, 800, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xffffbffffffffbff, 0xffffbfffffffffff, -1025, x1, 808, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x4, 0xffff7fffffffffff, 4, x1, 816, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfffefffffffffff8, 0xfffeffffffffffff, -8, x1, 824, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xfffdffffffffffbf, 0xfffdffffffffffff, -65, x1, 832, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xfffbfffffffffff6, 0xfffbffffffffffff, -10, x1, 840, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000000100;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0x0000000000000100, 256, x1, 848, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000000080;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0x80, 0x0000000000000080, -6, x1, 856, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000000400;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000000400, 0, x1, 864, x5)
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
    .fill 26*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 109*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
