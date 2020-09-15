
#This assembly file tests the c.mv instruction of the RISC-V C extension for the cmv covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",cmv)

la x9,signature_x9_1

# opcode: c.mv; op2:x6; dest:x0; op2val:0x80000000
TEST_CMV_OP( c.mv, x0, x6, 0x00000000, 0x80000000, x9, 0, x19)

# opcode: c.mv; op2:x3; dest:x3; op2val:0x00000000
TEST_CMV_OP( c.mv, x3, x3, 0x00000000, 0x00000000, x9, 4, x19)

# opcode: c.mv; op2:x22; dest:x27; op2val:0x7fffffff
TEST_CMV_OP( c.mv, x27, x22, 0x00000000, 0x7fffffff, x9, 8, x19)

# opcode: c.mv; op2:x16; dest:x22; op2val:0x00000001
TEST_CMV_OP( c.mv, x22, x16, 0x00000000, 0x00000001, x9, 12, x19)

# opcode: c.mv; op2:x5; dest:x28; op2val:0x00000002
TEST_CMV_OP( c.mv, x28, x5, 0x00000000, 0x00000002, x9, 16, x19)

# opcode: c.mv; op2:x10; dest:x2; op2val:0x00000004
TEST_CMV_OP( c.mv, x2, x10, 0x00000000, 0x00000004, x9, 20, x19)

# opcode: c.mv; op2:x15; dest:x18; op2val:0x00000008
TEST_CMV_OP( c.mv, x18, x15, 0x00000000, 0x00000008, x9, 24, x19)

# opcode: c.mv; op2:x25; dest:x24; op2val:0x00000010
TEST_CMV_OP( c.mv, x24, x25, 0x00000000, 0x00000010, x9, 28, x19)

# opcode: c.mv; op2:x13; dest:x5; op2val:0x00000020
TEST_CMV_OP( c.mv, x5, x13, 0x00000000, 0x00000020, x9, 32, x19)

# opcode: c.mv; op2:x29; dest:x25; op2val:0x00000040
TEST_CMV_OP( c.mv, x25, x29, 0x00000000, 0x00000040, x9, 36, x19)

# opcode: c.mv; op2:x27; dest:x16; op2val:0x00000080
TEST_CMV_OP( c.mv, x16, x27, 0x00000000, 0x00000080, x9, 40, x19)

# opcode: c.mv; op2:x18; dest:x30; op2val:0x00000100
TEST_CMV_OP( c.mv, x30, x18, 0x00000000, 0x00000100, x9, 44, x19)

# opcode: c.mv; op2:x4; dest:x12; op2val:0x00000200
TEST_CMV_OP( c.mv, x12, x4, 0x00000000, 0x00000200, x9, 48, x19)

# opcode: c.mv; op2:x28; dest:x8; op2val:0x00000400
TEST_CMV_OP( c.mv, x8, x28, 0x00000000, 0x00000400, x9, 52, x19)

# opcode: c.mv; op2:x7; dest:x31; op2val:0x00000800
TEST_CMV_OP( c.mv, x31, x7, 0x00000000, 0x00000800, x9, 56, x19)

# opcode: c.mv; op2:x21; dest:x11; op2val:0x00001000
TEST_CMV_OP( c.mv, x11, x21, 0x00000000, 0x00001000, x9, 60, x19)

# opcode: c.mv; op2:x8; dest:x6; op2val:0x00002000
TEST_CMV_OP( c.mv, x6, x8, 0x00000000, 0x00002000, x9, 64, x19)

# opcode: c.mv; op2:x1; dest:x17; op2val:0x00004000
TEST_CMV_OP( c.mv, x17, x1, 0x00000000, 0x00004000, x9, 68, x19)

# opcode: c.mv; op2:x2; dest:x14; op2val:0x00008000
TEST_CMV_OP( c.mv, x14, x2, 0x00000000, 0x00008000, x9, 72, x19)

# opcode: c.mv; op2:x11; dest:x15; op2val:0x00010000
TEST_CMV_OP( c.mv, x15, x11, 0x00000000, 0x00010000, x9, 76, x19)

# opcode: c.mv; op2:x12; dest:x21; op2val:0x00020000
TEST_CMV_OP( c.mv, x21, x12, 0x00000000, 0x00020000, x9, 80, x19)

# opcode: c.mv; op2:x31; dest:x7; op2val:0x00040000
TEST_CMV_OP( c.mv, x7, x31, 0x00000000, 0x00040000, x9, 84, x19)

# opcode: c.mv; op2:x20; dest:x1; op2val:0x00080000
TEST_CMV_OP( c.mv, x1, x20, 0x00000000, 0x00080000, x9, 88, x19)

# opcode: c.mv; op2:x30; dest:x20; op2val:0x00100000
TEST_CMV_OP( c.mv, x20, x30, 0x00000000, 0x00100000, x9, 92, x2)

# opcode: c.mv; op2:x19; dest:x10; op2val:0x00200000
TEST_CMV_OP( c.mv, x10, x19, 0x00000000, 0x00200000, x9, 96, x2)
la x1,signature_x1_0

# opcode: c.mv; op2:x14; dest:x29; op2val:0x00400000
TEST_CMV_OP( c.mv, x29, x14, 0x00000000, 0x00400000, x1, 0, x2)

# opcode: c.mv; op2:x26; dest:x19; op2val:0x00800000
TEST_CMV_OP( c.mv, x19, x26, 0x00000000, 0x00800000, x1, 4, x2)

# opcode: c.mv; op2:x9; dest:x13; op2val:0x01000000
TEST_CMV_OP( c.mv, x13, x9, 0x00000000, 0x01000000, x1, 8, x2)

# opcode: c.mv; op2:x24; dest:x23; op2val:0x02000000
TEST_CMV_OP( c.mv, x23, x24, 0x00000000, 0x02000000, x1, 12, x2)

# opcode: c.mv; op2:x17; dest:x9; op2val:0x04000000
TEST_CMV_OP( c.mv, x9, x17, 0x00000000, 0x04000000, x1, 16, x2)

# opcode: c.mv; op2:x23; dest:x26; op2val:0x08000000
TEST_CMV_OP( c.mv, x26, x23, 0x00000000, 0x08000000, x1, 20, x2)

# opcode: c.mv; op2:x23; dest:x4; op2val:0x10000000
TEST_CMV_OP( c.mv, x4, x23, 0x00000000, 0x10000000, x1, 24, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x20000000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x20000000, x1, 28, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x40000000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x40000000, x1, 32, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffe
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffffe, x1, 36, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffd
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffffd, x1, 40, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xdfffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xdfffffff, x1, 44, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xbfffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xbfffffff, x1, 48, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x55555555
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x55555555, x1, 52, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xaaaaaaaa
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xaaaaaaaa, x1, 56, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffffb
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffffb, x1, 60, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffff7
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffff7, x1, 64, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffef
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffffef, x1, 68, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffdf
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffffdf, x1, 72, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffffbf
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffffbf, x1, 76, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffff7f
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffff7f, x1, 80, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffeff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffeff, x1, 84, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffdff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffdff, x1, 88, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffffbff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffffbff, x1, 92, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffff7ff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffff7ff, x1, 96, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffefff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffefff, x1, 100, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffdfff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffdfff, x1, 104, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffffbfff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffffbfff, x1, 108, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffff7fff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffff7fff, x1, 112, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffeffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffeffff, x1, 116, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffdffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffdffff, x1, 120, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfffbffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfffbffff, x1, 124, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfff7ffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfff7ffff, x1, 128, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffefffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffefffff, x1, 132, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffdfffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffdfffff, x1, 136, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xffbfffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xffbfffff, x1, 140, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xff7fffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xff7fffff, x1, 144, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfeffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfeffffff, x1, 148, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfdffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfdffffff, x1, 152, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xfbffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xfbffffff, x1, 156, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xf7ffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xf7ffffff, x1, 160, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0xefffffff
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0xefffffff, x1, 164, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x80000000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x80000000, x1, 168, x2)

# opcode: c.mv; op2:x11; dest:x10; op2val:0x00000000
TEST_CMV_OP( c.mv, x10, x11, 0x00000000, 0x00000000, x1, 172, x2)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x9_1:
    .fill 25*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 44*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
