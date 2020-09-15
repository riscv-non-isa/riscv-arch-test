
#This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

la x4,signature_x4_1

# opcode: slli ; op1:x1; dest:x11; op1val:0xfffffdff;  immval:11
TEST_IMM_OP( slli, x11, x1, 0xffeff800, 0xfffffdff, 11, x4, 0, x17)

# opcode: slli ; op1:x28; dest:x28; op1val:0x00000007;  immval:30
TEST_IMM_OP( slli, x28, x28, 0xc0000000, 0x00000007, 30, x4, 4, x17)

# opcode: slli ; op1:x19; dest:x22; op1val:0xffffff7f;  immval:0
TEST_IMM_OP( slli, x22, x19, 0xffffff7f, 0xffffff7f, 0, x4, 8, x17)

# opcode: slli ; op1:x8; dest:x16; op1val:0x00000800;  immval:0
TEST_IMM_OP( slli, x16, x8, 0x800, 0x00000800, 0, x4, 12, x17)

# opcode: slli ; op1:x21; dest:x15; op1val:0xfdffffff;  immval:31
TEST_IMM_OP( slli, x15, x21, 0x80000000, 0xfdffffff, 31, x4, 16, x17)

# opcode: slli ; op1:x15; dest:x29; op1val:0x00080000;  immval:31
TEST_IMM_OP( slli, x29, x15, 0x0, 0x00080000, 31, x4, 20, x17)

# opcode: slli ; op1:x2; dest:x31; op1val:0x00000006;  immval:6
TEST_IMM_OP( slli, x31, x2, 0x180, 0x00000006, 6, x4, 24, x17)

# opcode: slli ; op1:x5; dest:x7; op1val:0x80000000;  immval:10
TEST_IMM_OP( slli, x7, x5, 0x0, 0x80000000, 10, x4, 28, x17)

# opcode: slli ; op1:x13; dest:x24; op1val:0x00000000;  immval:30
TEST_IMM_OP( slli, x24, x13, 0x0, 0x00000000, 30, x4, 32, x17)

# opcode: slli ; op1:x7; dest:x26; op1val:0x7fffffff;  immval:18
TEST_IMM_OP( slli, x26, x7, 0xfffc0000, 0x7fffffff, 18, x4, 36, x17)

# opcode: slli ; op1:x22; dest:x3; op1val:0x00000001;  immval:6
TEST_IMM_OP( slli, x3, x22, 0x40, 0x00000001, 6, x4, 40, x17)

# opcode: slli ; op1:x14; dest:x9; op1val:0xfffffffd;  immval:1
TEST_IMM_OP( slli, x9, x14, 0xfffffffa, 0xfffffffd, 1, x4, 44, x17)

# opcode: slli ; op1:x24; dest:x30; op1val:0x00000200;  immval:2
TEST_IMM_OP( slli, x30, x24, 0x800, 0x00000200, 2, x4, 48, x17)

# opcode: slli ; op1:x30; dest:x23; op1val:0xfeffffff;  immval:4
TEST_IMM_OP( slli, x23, x30, 0xeffffff0, 0xfeffffff, 4, x4, 52, x17)

# opcode: slli ; op1:x29; dest:x14; op1val:0x7fffffff;  immval:8
TEST_IMM_OP( slli, x14, x29, 0xffffff00, 0x7fffffff, 8, x4, 56, x17)

# opcode: slli ; op1:x11; dest:x12; op1val:0xfffeffff;  immval:16
TEST_IMM_OP( slli, x12, x11, 0xffff0000, 0xfffeffff, 16, x4, 60, x17)

# opcode: slli ; op1:x16; dest:x6; op1val:0xfffffffb;  immval:29
TEST_IMM_OP( slli, x6, x16, 0x60000000, 0xfffffffb, 29, x4, 64, x17)

# opcode: slli ; op1:x0; dest:x1; op1val:0x40000000;  immval:27
TEST_IMM_OP( slli, x1, x0, 0x0, 0x40000000, 27, x4, 68, x17)

# opcode: slli ; op1:x26; dest:x27; op1val:0xffff7fff;  immval:23
TEST_IMM_OP( slli, x27, x26, 0xff800000, 0xffff7fff, 23, x4, 72, x17)

# opcode: slli ; op1:x9; dest:x10; op1val:0x00400000;  immval:15
TEST_IMM_OP( slli, x10, x9, 0x0, 0x00400000, 15, x4, 76, x17)

# opcode: slli ; op1:x23; dest:x18; op1val:0x00400000;  immval:21
TEST_IMM_OP( slli, x18, x23, 0x0, 0x00400000, 21, x4, 80, x17)

# opcode: slli ; op1:x3; dest:x19; op1val:0x00000002;  immval:15
TEST_IMM_OP( slli, x19, x3, 0x10000, 0x00000002, 15, x4, 84, x7)

# opcode: slli ; op1:x25; dest:x2; op1val:0x00000004;  immval:3
TEST_IMM_OP( slli, x2, x25, 0x20, 0x00000004, 3, x4, 88, x7)
la x1,signature_x1_0

# opcode: slli ; op1:x10; dest:x17; op1val:0x00000008;  immval:18
TEST_IMM_OP( slli, x17, x10, 0x200000, 0x00000008, 18, x1, 0, x7)

# opcode: slli ; op1:x12; dest:x4; op1val:0x00000010;  immval:17
TEST_IMM_OP( slli, x4, x12, 0x200000, 0x00000010, 17, x1, 4, x7)

# opcode: slli ; op1:x17; dest:x5; op1val:0x00000020;  immval:29
TEST_IMM_OP( slli, x5, x17, 0x0, 0x00000020, 29, x1, 8, x7)

# opcode: slli ; op1:x20; dest:x8; op1val:0x00000040;  immval:7
TEST_IMM_OP( slli, x8, x20, 0x2000, 0x00000040, 7, x1, 12, x7)

# opcode: slli ; op1:x31; dest:x13; op1val:0x00000080;  immval:15
TEST_IMM_OP( slli, x13, x31, 0x400000, 0x00000080, 15, x1, 16, x7)

# opcode: slli ; op1:x4; dest:x0; op1val:0x00000100;  immval:13
TEST_IMM_OP( slli, x0, x4, 0x200000, 0x00000100, 13, x1, 20, x7)

# opcode: slli ; op1:x27; dest:x21; op1val:0x00000400;  immval:15
TEST_IMM_OP( slli, x21, x27, 0x2000000, 0x00000400, 15, x1, 24, x7)

# opcode: slli ; op1:x6; dest:x25; op1val:0x00001000;  immval:13
TEST_IMM_OP( slli, x25, x6, 0x2000000, 0x00001000, 13, x1, 28, x7)

# opcode: slli ; op1:x18; dest:x20; op1val:0x00002000;  immval:2
TEST_IMM_OP( slli, x20, x18, 0x8000, 0x00002000, 2, x1, 32, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00004000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x400000, 0x00004000, 8, x1, 36, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00008000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00008000, 21, x1, 40, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00010000;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00010000, 31, x1, 44, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00020000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x80000, 0x00020000, 2, x1, 48, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00040000;  immval:0
TEST_IMM_OP( slli, x11, x10, 0x40000, 0x00040000, 0, x1, 52, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00100000;  immval:11
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0x00100000, 11, x1, 56, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00200000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x2000000, 0x00200000, 4, x1, 60, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00800000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x0, 0x00800000, 21, x1, 64, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xff800000, 0xfffffbff, 23, x1, 68, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0xfffff7ff, 31, x1, 72, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffefff;  immval:29
TEST_IMM_OP( slli, x11, x10, 0xe0000000, 0xffffefff, 29, x1, 76, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfff80000, 0xffffdfff, 19, x1, 80, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x7ffe0000, 0xffffbfff, 17, x1, 84, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xffdffff0, 0xfffdffff, 4, x1, 88, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:30
TEST_IMM_OP( slli, x11, x10, 0xc0000000, 0xfffbffff, 30, x1, 92, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xfffc0000, 0xfff7ffff, 18, x1, 96, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffefffff;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xfffc0000, 0xffefffff, 18, x1, 100, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xff800000, 0xffdfffff, 23, x1, 104, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:13
TEST_IMM_OP( slli, x11, x10, 0xffffe000, 0xffbfffff, 13, x1, 108, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xff7fffff, 0xff7fffff, 0, x1, 112, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xfffffe00, 0xfbffffff, 9, x1, 116, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfffe0000, 0xf7ffffff, 17, x1, 120, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xefffffff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0xefffffff, 31, x1, 124, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xff800000, 0xdfffffff, 23, x1, 128, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x01000000;  immval:30
TEST_IMM_OP( slli, x11, x10, 0x0, 0x01000000, 30, x1, 132, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x02000000;  immval:11
TEST_IMM_OP( slli, x11, x10, 0x0, 0x02000000, 11, x1, 136, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x04000000;  immval:23
TEST_IMM_OP( slli, x11, x10, 0x0, 0x04000000, 23, x1, 140, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x08000000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x0, 0x08000000, 7, x1, 144, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x10000000;  immval:13
TEST_IMM_OP( slli, x11, x10, 0x0, 0x10000000, 13, x1, 148, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x20000000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x0, 0x20000000, 21, x1, 152, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xffffff80, 0xbfffffff, 7, x1, 156, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x55555555;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xaaaaaa00, 0x55555555, 9, x1, 160, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:23
TEST_IMM_OP( slli, x11, x10, 0xff000000, 0xfffffffe, 23, x1, 164, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xaaaaaaa0, 0xaaaaaaaa, 4, x1, 168, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:6
TEST_IMM_OP( slli, x11, x10, 0xfffffdc0, 0xfffffff7, 6, x1, 172, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffef;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xffffbc00, 0xffffffef, 10, x1, 176, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:6
TEST_IMM_OP( slli, x11, x10, 0xfffff7c0, 0xffffffdf, 6, x1, 180, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xffff7e00, 0xffffffbf, 9, x1, 184, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:23
TEST_IMM_OP( slli, x11, x10, 0x7f800000, 0xfffffeff, 23, x1, 188, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00000007;  immval:30
TEST_IMM_OP( slli, x11, x10, 0xc0000000, 0x00000007, 30, x1, 192, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x40000000;  immval:27
TEST_IMM_OP( slli, x11, x10, 0x0, 0x40000000, 27, x1, 196, x7)

# opcode: slli ; op1:x10; dest:x11; op1val:0x00000100;  immval:13
TEST_IMM_OP( slli, x11, x10, 0x200000, 0x00000100, 13, x1, 200, x7)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x4_1:
    .fill 23*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 51*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
