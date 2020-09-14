
#This assembly file tests the andi instruction of the RISC-V I extension for the andi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",andi)

la x11,signature_x11_1

# opcode: andi ; op1:x16; dest:x12; op1val:0x00000004;  immval:4
TEST_IMM_OP( andi, x12, x16, 0x4, 0x00000004, 4, x11, 0, x13)

# opcode: andi ; op1:x26; dest:x26; op1val:0x00000001;  immval:5
TEST_IMM_OP( andi, x26, x26, 0x1, 0x00000001, 5, x11, 4, x13)

# opcode: andi ; op1:x23; dest:x18; op1val:0x00004000;  immval:-3
TEST_IMM_OP( andi, x18, x23, 0x4000, 0x00004000, -3, x11, 8, x13)

# opcode: andi ; op1:x1; dest:x31; op1val:0xfbffffff;  immval:128
TEST_IMM_OP( andi, x31, x1, 0x80, 0xfbffffff, 128, x11, 12, x13)

# opcode: andi ; op1:x2; dest:x28; op1val:0xfffffffc;  immval:-33
TEST_IMM_OP( andi, x28, x2, 0xffffffdc, 0xfffffffc, -33, x11, 16, x13)

# opcode: andi ; op1:x15; dest:x2; op1val:0x80000000;  immval:5
TEST_IMM_OP( andi, x2, x15, 0x0, 0x80000000, 5, x11, 20, x13)

# opcode: andi ; op1:x3; dest:x29; op1val:0x00000000;  immval:16
TEST_IMM_OP( andi, x29, x3, 0x0, 0x00000000, 16, x11, 24, x13)

# opcode: andi ; op1:x22; dest:x5; op1val:0x7fffffff;  immval:2
TEST_IMM_OP( andi, x5, x22, 0x2, 0x7fffffff, 2, x11, 28, x13)

# opcode: andi ; op1:x30; dest:x0; op1val:0x00000004;  immval:-2048
TEST_IMM_OP( andi, x0, x30, 0x0, 0x00000004, -2048, x11, 32, x13)

# opcode: andi ; op1:x6; dest:x14; op1val:0x00000007;  immval:0
TEST_IMM_OP( andi, x14, x6, 0x0, 0x00000007, 0, x11, 36, x13)

# opcode: andi ; op1:x5; dest:x9; op1val:0xffffffff;  immval:2047
TEST_IMM_OP( andi, x9, x5, 0x7ff, 0xffffffff, 2047, x11, 40, x13)

# opcode: andi ; op1:x21; dest:x4; op1val:0x40000000;  immval:1
TEST_IMM_OP( andi, x4, x21, 0x0, 0x40000000, 1, x11, 44, x13)

# opcode: andi ; op1:x31; dest:x24; op1val:0x00000002;  immval:-65
TEST_IMM_OP( andi, x24, x31, 0x2, 0x00000002, -65, x11, 48, x13)

# opcode: andi ; op1:x24; dest:x23; op1val:0x00000008;  immval:32
TEST_IMM_OP( andi, x23, x24, 0x0, 0x00000008, 32, x11, 52, x13)

# opcode: andi ; op1:x12; dest:x20; op1val:0x00000010;  immval:-4
TEST_IMM_OP( andi, x20, x12, 0x10, 0x00000010, -4, x11, 56, x13)

# opcode: andi ; op1:x8; dest:x30; op1val:0x00000020;  immval:0
TEST_IMM_OP( andi, x30, x8, 0x0, 0x00000020, 0, x11, 60, x13)

# opcode: andi ; op1:x14; dest:x7; op1val:0x00000040;  immval:2047
TEST_IMM_OP( andi, x7, x14, 0x40, 0x00000040, 2047, x11, 64, x13)

# opcode: andi ; op1:x25; dest:x21; op1val:0x00000080;  immval:256
TEST_IMM_OP( andi, x21, x25, 0x0, 0x00000080, 256, x11, 68, x13)

# opcode: andi ; op1:x17; dest:x10; op1val:0x00000100;  immval:5
TEST_IMM_OP( andi, x10, x17, 0x0, 0x00000100, 5, x11, 72, x13)

# opcode: andi ; op1:x18; dest:x6; op1val:0x00000200;  immval:-1366
TEST_IMM_OP( andi, x6, x18, 0x200, 0x00000200, -1366, x11, 76, x5)

# opcode: andi ; op1:x13; dest:x3; op1val:0x00000400;  immval:-2
TEST_IMM_OP( andi, x3, x13, 0x400, 0x00000400, -2, x11, 80, x5)
la x2,signature_x2_0

# opcode: andi ; op1:x9; dest:x22; op1val:0x00000800;  immval:-1366
TEST_IMM_OP( andi, x22, x9, 0x800, 0x00000800, -1366, x2, 0, x5)

# opcode: andi ; op1:x7; dest:x19; op1val:0x00001000;  immval:-10
TEST_IMM_OP( andi, x19, x7, 0x1000, 0x00001000, -10, x2, 4, x5)

# opcode: andi ; op1:x27; dest:x13; op1val:0x00002000;  immval:-17
TEST_IMM_OP( andi, x13, x27, 0x2000, 0x00002000, -17, x2, 8, x5)

# opcode: andi ; op1:x20; dest:x16; op1val:0x00008000;  immval:256
TEST_IMM_OP( andi, x16, x20, 0x0, 0x00008000, 256, x2, 12, x5)

# opcode: andi ; op1:x11; dest:x17; op1val:0x00010000;  immval:-1366
TEST_IMM_OP( andi, x17, x11, 0x10000, 0x00010000, -1366, x2, 16, x5)

# opcode: andi ; op1:x10; dest:x25; op1val:0x00020000;  immval:-17
TEST_IMM_OP( andi, x25, x10, 0x20000, 0x00020000, -17, x2, 20, x5)

# opcode: andi ; op1:x29; dest:x27; op1val:0x00040000;  immval:-1024
TEST_IMM_OP( andi, x27, x29, 0x40000, 0x00040000, -1024, x2, 24, x5)

# opcode: andi ; op1:x4; dest:x1; op1val:0x00080000;  immval:-7
TEST_IMM_OP( andi, x1, x4, 0x80000, 0x00080000, -7, x2, 28, x5)

# opcode: andi ; op1:x28; dest:x8; op1val:0x00100000;  immval:1365
TEST_IMM_OP( andi, x8, x28, 0x0, 0x00100000, 1365, x2, 32, x5)

# opcode: andi ; op1:x0; dest:x15; op1val:0x00200000;  immval:1365
TEST_IMM_OP( andi, x15, x0, 0x0, 0x00200000, 1365, x2, 36, x5)

# opcode: andi ; op1:x19; dest:x11; op1val:0x00400000;  immval:1365
TEST_IMM_OP( andi, x11, x19, 0x0, 0x00400000, 1365, x2, 40, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x00800000;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0x800000, 0x00800000, -3, x2, 44, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x01000000;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x0, 0x01000000, 1023, x2, 48, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x02000000;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0x2000000, 0x02000000, -1025, x2, 52, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x04000000;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0x4000000, 0x04000000, -257, x2, 56, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x08000000;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0x8000000, 0x08000000, -9, x2, 60, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x10000000;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x0, 0x10000000, 2, x2, 64, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x20000000;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x0, 0x20000000, 3, x2, 68, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0xfffffdfe, 0xfffffffe, -513, x2, 72, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xfffffffd, 16, x2, 76, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0xfffffff3, 0xfffffffb, -9, x2, 80, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xffffffd7, 0xfffffff7, -33, x2, 84, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffef;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x545, 0xffffffef, 1365, x2, 88, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x200, 0xffffffdf, 512, x2, 92, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x400, 0xffffffbf, 1024, x2, 96, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xfff7ffff, 3, x2, 100, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xffeffffe, 0xffefffff, -2, x2, 104, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0xffdff800, 0xffdfffff, -2048, x2, 108, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0xffbffffa, 0xffbfffff, -6, x2, 112, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xff7fffff, 6, x2, 116, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xfefffaaa, 0xfeffffff, -1366, x2, 120, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xfdffffff, 1, x2, 124, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xf7fffaaa, 0xf7ffffff, -1366, x2, 128, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xefffffff;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0xeffffeff, 0xefffffff, -257, x2, 132, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xdfffffff, 1, x2, 136, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x555, 0xbfffffff, 1365, x2, 140, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x55555555;  immval:-1024
TEST_IMM_OP( andi, x11, x10, 0x55555400, 0x55555555, -1024, x2, 144, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x0, 0xaaaaaaaa, 16, x2, 148, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffa;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xfffffffa, 8, x2, 152, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xffffff7f, 0xffffff7f, -129, x2, 156, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0xfffff7f9, 0xfffff7ff, -7, x2, 160, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xffff7fff, 32, x2, 164, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x00000400;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00000400, 64, x2, 168, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x2, 0xfffffeff, 2, x2, 172, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xfffffdff, 6, x2, 176, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0xfffffbfb, 0xfffffbff, -5, x2, 180, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffefff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xffffefff, 3, x2, 184, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0xffffdffc, 0xffffdfff, -4, x2, 188, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x4, 0xffffbfff, 4, x2, 192, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xfffeffff, 1, x2, 196, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x2, 0xfffdffff, 2, x2, 200, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0xfffbf800, 0xfffbffff, -2048, x2, 204, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x00000001;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x1, 0x00000001, 5, x2, 208, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x00000004;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00000004, -2048, x2, 212, x5)

# opcode: andi ; op1:x10; dest:x11; op1val:0x00200000;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00200000, 1365, x2, 216, x5)
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
    .fill 21*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 55*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
