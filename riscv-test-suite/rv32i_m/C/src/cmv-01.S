
#This assembly file tests the c.mv instruction of the RISC-V C extension for the cmv covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cmv)

la x16,signature_x16_1

# opcode: c.mv; op2:x25; dest:x3; op2val:0x80000000
TEST_CMV_OP( c.mv, x3, x25, 0x00000000, 0x80000000, x16, 0, x15)

# opcode: c.mv; op2:x29; dest:x29; op2val:0x00000000
TEST_CMV_OP( c.mv, x29, x29, 0x00000000, 0x00000000, x16, 4, x15)

# opcode: c.mv; op2:x4; dest:x18; op2val:0x7fffffff
TEST_CMV_OP( c.mv, x18, x4, 0x00000000, 0x7fffffff, x16, 8, x15)

# opcode: c.mv; op2:x8; dest:x9; op2val:0x00000001
TEST_CMV_OP( c.mv, x9, x8, 0x00000000, 0x00000001, x16, 12, x15)

# opcode: c.mv; op2:x22; dest:x30; op2val:0x00000002
TEST_CMV_OP( c.mv, x30, x22, 0x00000000, 0x00000002, x16, 16, x15)

# opcode: c.mv; op2:x26; dest:x27; op2val:0x00000004
TEST_CMV_OP( c.mv, x27, x26, 0x00000000, 0x00000004, x16, 20, x15)

# opcode: c.mv; op2:x11; dest:x19; op2val:0x00000008
TEST_CMV_OP( c.mv, x19, x11, 0x00000000, 0x00000008, x16, 24, x15)

# opcode: c.mv; op2:x12; dest:x5; op2val:0x00000010
TEST_CMV_OP( c.mv, x5, x12, 0x00000000, 0x00000010, x16, 28, x15)

# opcode: c.mv; op2:x23; dest:x1; op2val:0x00000020
TEST_CMV_OP( c.mv, x1, x23, 0x00000000, 0x00000020, x16, 32, x15)

# opcode: c.mv; op2:x10; dest:x25; op2val:0x00000040
TEST_CMV_OP( c.mv, x25, x10, 0x00000000, 0x00000040, x16, 36, x15)

# opcode: c.mv; op2:x7; dest:x8; op2val:0x00000080
TEST_CMV_OP( c.mv, x8, x7, 0x00000000, 0x00000080, x16, 40, x15)

# opcode: c.mv; op2:x13; dest:x12; op2val:0x00000100
TEST_CMV_OP( c.mv, x12, x13, 0x00000000, 0x00000100, x16, 44, x15)

# opcode: c.mv; op2:x24; dest:x0; op2val:0x00000200
TEST_CMV_OP( c.mv, x0, x24, 0x00000000, 0x00000200, x16, 48, x15)

# opcode: c.mv; op2:x30; dest:x7; op2val:0x00000400
TEST_CMV_OP( c.mv, x7, x30, 0x00000000, 0x00000400, x16, 52, x15)

# opcode: c.mv; op2:x19; dest:x20; op2val:0x00000800
TEST_CMV_OP( c.mv, x20, x19, 0x00000000, 0x00000800, x16, 56, x15)

# opcode: c.mv; op2:x9; dest:x23; op2val:0x00001000
TEST_CMV_OP( c.mv, x23, x9, 0x00000000, 0x00001000, x16, 60, x15)

# opcode: c.mv; op2:x2; dest:x6; op2val:0x00002000
TEST_CMV_OP( c.mv, x6, x2, 0x00000000, 0x00002000, x16, 64, x15)

# opcode: c.mv; op2:x21; dest:x14; op2val:0x00004000
TEST_CMV_OP( c.mv, x14, x21, 0x00000000, 0x00004000, x16, 68, x15)

# opcode: c.mv; op2:x28; dest:x21; op2val:0x00008000
TEST_CMV_OP( c.mv, x21, x28, 0x00000000, 0x00008000, x16, 72, x15)

# opcode: c.mv; op2:x15; dest:x17; op2val:0x00010000
TEST_CMV_OP( c.mv, x17, x15, 0x00000000, 0x00010000, x16, 76, x8)
la x7,signature_x7_0

# opcode: c.mv; op2:x18; dest:x22; op2val:0x00020000
TEST_CMV_OP( c.mv, x22, x18, 0x00000000, 0x00020000, x7, 0, x8)

# opcode: c.mv; op2:x1; dest:x26; op2val:0x00040000
TEST_CMV_OP( c.mv, x26, x1, 0x00000000, 0x00040000, x7, 4, x8)

# opcode: c.mv; op2:x31; dest:x28; op2val:0x00080000
TEST_CMV_OP( c.mv, x28, x31, 0x00000000, 0x00080000, x7, 8, x8)

# opcode: c.mv; op2:x17; dest:x24; op2val:0x00100000
TEST_CMV_OP( c.mv, x24, x17, 0x00000000, 0x00100000, x7, 12, x8)

# opcode: c.mv; op2:x14; dest:x10; op2val:0x00200000
TEST_CMV_OP( c.mv, x10, x14, 0x00000000, 0x00200000, x7, 16, x8)

# opcode: c.mv; op2:x5; dest:x11; op2val:0x00400000
TEST_CMV_OP( c.mv, x11, x5, 0x00000000, 0x00400000, x7, 20, x8)

# opcode: c.mv; op2:x27; dest:x15; op2val:0x00800000
TEST_CMV_OP( c.mv, x15, x27, 0x00000000, 0x00800000, x7, 24, x8)

# opcode: c.mv; op2:x16; dest:x31; op2val:0x01000000
TEST_CMV_OP( c.mv, x31, x16, 0x00000000, 0x01000000, x7, 28, x8)

# opcode: c.mv; op2:x3; dest:x4; op2val:0x02000000
TEST_CMV_OP( c.mv, x4, x3, 0x00000000, 0x02000000, x7, 32, x8)

# opcode: c.mv; op2:x20; dest:x16; op2val:0x04000000
TEST_CMV_OP( c.mv, x16, x20, 0x00000000, 0x04000000, x7, 36, x8)

# opcode: c.mv; op2:x6; dest:x2; op2val:0x08000000
TEST_CMV_OP( c.mv, x2, x6, 0x00000000, 0x08000000, x7, 40, x8)

# opcode: c.mv; op2:x3; dest:x13; op2val:0x10000000
TEST_CMV_OP( c.mv, x13, x3, 0x00000000, 0x10000000, x7, 44, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x20000000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x20000000, x7, 48, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x40000000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x40000000, x7, 52, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffe
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffffe, x7, 56, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffd
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffffd, x7, 60, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xdfffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xdfffffff, x7, 64, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xbfffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xbfffffff, x7, 68, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x55555555
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x55555555, x7, 72, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xaaaaaaaa
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xaaaaaaaa, x7, 76, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffb
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffffb, x7, 80, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffff7
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffff7, x7, 84, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffef
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffffef, x7, 88, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffdf
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffffdf, x7, 92, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffbf
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffffbf, x7, 96, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffff7f
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffff7f, x7, 100, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffeff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffeff, x7, 104, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffdff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffdff, x7, 108, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffbff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffbff, x7, 112, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffff7ff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffff7ff, x7, 116, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffefff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffefff, x7, 120, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffdfff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffdfff, x7, 124, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffbfff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffbfff, x7, 128, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffff7fff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffff7fff, x7, 132, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffeffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffeffff, x7, 136, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffdffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffdffff, x7, 140, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffbffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffbffff, x7, 144, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfff7ffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfff7ffff, x7, 148, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffefffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffefffff, x7, 152, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffdfffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffdfffff, x7, 156, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffbfffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffbfffff, x7, 160, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xff7fffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xff7fffff, x7, 164, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfeffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfeffffff, x7, 168, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfdffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfdffffff, x7, 172, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfbffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfbffffff, x7, 176, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xf7ffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xf7ffffff, x7, 180, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xefffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xefffffff, x7, 184, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x00000000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x00000000, x7, 188, x8)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x00000200
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x00000200, x7, 192, x8)
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

signature_x16_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x16_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x7_0:
    .fill 49*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
