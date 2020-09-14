
#This assembly file tests the c.andi instruction of the RISC-V C extension for the candi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",candi)

la x1,signature_x1_1

# opcode: c.andi; op1:x10; immval:9
TEST_CI_OP( c.andi, x10, 0x00000000, 0x80000000, 9, x1, 0, x2)

# opcode: c.andi; op1:x12; immval:-5
TEST_CI_OP( c.andi, x12, 0x00000000, 0x00000000, -5, x1, 4, x2)

# opcode: c.andi; op1:x9; immval:4
TEST_CI_OP( c.andi, x9, 0x00000000, 0x7fffffff, 4, x1, 8, x2)

# opcode: c.andi; op1:x15; immval:-4
TEST_CI_OP( c.andi, x15, 0x00000000, 0x00000001, -4, x1, 12, x2)

# opcode: c.andi; op1:x13; immval:-32
TEST_CI_OP( c.andi, x13, 0x00000000, 0x20000000, -32, x1, 16, x2)

# opcode: c.andi; op1:x8; immval:0
TEST_CI_OP( c.andi, x8, 0x00000000, 0xfffffffb, 0, x1, 20, x2)

# opcode: c.andi; op1:x11; immval:31
TEST_CI_OP( c.andi, x11, 0x00000000, 0x40000000, 31, x1, 24, x2)

# opcode: c.andi; op1:x14; immval:1
TEST_CI_OP( c.andi, x14, 0x00000000, 0x00100000, 1, x1, 28, x2)

# opcode: c.andi; op1:x10; immval:2
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00000002, 2, x1, 32, x2)

# opcode: c.andi; op1:x10; immval:-17
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfffffff8, -17, x1, 36, x2)

# opcode: c.andi; op1:x10; immval:7
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00000004, 7, x1, 40, x2)

# opcode: c.andi; op1:x10; immval:3
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00000008, 3, x1, 44, x2)

# opcode: c.andi; op1:x10; immval:-9
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00000010, -9, x1, 48, x2)

# opcode: c.andi; op1:x10; immval:-32
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00000020, -32, x1, 52, x2)

# opcode: c.andi; op1:x10; immval:-8
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00000040, -8, x1, 56, x2)

# opcode: c.andi; op1:x10; immval:3
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00000080, 3, x1, 60, x2)

# opcode: c.andi; op1:x10; immval:-4
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00000100, -4, x1, 64, x2)

# opcode: c.andi; op1:x10; immval:-8
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00000200, -8, x1, 68, x2)

# opcode: c.andi; op1:x10; immval:9
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00000400, 9, x1, 72, x2)

# opcode: c.andi; op1:x10; immval:-3
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00000800, -3, x1, 76, x2)

# opcode: c.andi; op1:x10; immval:-9
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00001000, -9, x1, 80, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00002000, 31, x1, 84, x2)

# opcode: c.andi; op1:x10; immval:15
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00004000, 15, x1, 88, x2)

# opcode: c.andi; op1:x10; immval:2
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00008000, 2, x1, 92, x2)

# opcode: c.andi; op1:x10; immval:5
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00010000, 5, x1, 96, x2)

# opcode: c.andi; op1:x10; immval:-4
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00020000, -4, x1, 100, x2)

# opcode: c.andi; op1:x10; immval:-32
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00040000, -32, x1, 104, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00080000, 31, x1, 108, x2)

# opcode: c.andi; op1:x10; immval:-1
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00200000, -1, x1, 112, x2)

# opcode: c.andi; op1:x10; immval:3
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00400000, 3, x1, 116, x2)

# opcode: c.andi; op1:x10; immval:-3
TEST_CI_OP( c.andi, x10, 0x00000000, 0x00800000, -3, x1, 120, x2)

# opcode: c.andi; op1:x10; immval:-8
TEST_CI_OP( c.andi, x10, 0x00000000, 0x01000000, -8, x1, 124, x2)

# opcode: c.andi; op1:x10; immval:-1
TEST_CI_OP( c.andi, x10, 0x00000000, 0x02000000, -1, x1, 128, x2)

# opcode: c.andi; op1:x10; immval:9
TEST_CI_OP( c.andi, x10, 0x00000000, 0x04000000, 9, x1, 132, x2)

# opcode: c.andi; op1:x10; immval:16
TEST_CI_OP( c.andi, x10, 0x00000000, 0x08000000, 16, x1, 136, x2)

# opcode: c.andi; op1:x10; immval:-32
TEST_CI_OP( c.andi, x10, 0x00000000, 0x10000000, -32, x1, 140, x2)

# opcode: c.andi; op1:x10; immval:-8
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfffffffe, -8, x1, 144, x2)

# opcode: c.andi; op1:x10; immval:8
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfffffffd, 8, x1, 148, x2)

# opcode: c.andi; op1:x10; immval:-22
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfffffff7, -22, x1, 152, x2)

# opcode: c.andi; op1:x10; immval:3
TEST_CI_OP( c.andi, x10, 0x00000000, 0xffffffef, 3, x1, 156, x2)

# opcode: c.andi; op1:x10; immval:-2
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfff7ffff, -2, x1, 160, x2)

# opcode: c.andi; op1:x10; immval:16
TEST_CI_OP( c.andi, x10, 0x00000000, 0xffefffff, 16, x1, 164, x2)

# opcode: c.andi; op1:x10; immval:0
TEST_CI_OP( c.andi, x10, 0x00000000, 0xffdfffff, 0, x1, 168, x2)

# opcode: c.andi; op1:x10; immval:21
TEST_CI_OP( c.andi, x10, 0x00000000, 0xffbfffff, 21, x1, 172, x2)

# opcode: c.andi; op1:x10; immval:2
TEST_CI_OP( c.andi, x10, 0x00000000, 0xff7fffff, 2, x1, 176, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfeffffff, 31, x1, 180, x2)

# opcode: c.andi; op1:x10; immval:-2
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfdffffff, -2, x1, 184, x2)

# opcode: c.andi; op1:x10; immval:-9
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfbffffff, -9, x1, 188, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x00000000, 0xf7ffffff, 31, x1, 192, x2)

# opcode: c.andi; op1:x10; immval:3
TEST_CI_OP( c.andi, x10, 0x00000000, 0xefffffff, 3, x1, 196, x2)

# opcode: c.andi; op1:x10; immval:7
TEST_CI_OP( c.andi, x10, 0x00000000, 0xdfffffff, 7, x1, 200, x2)

# opcode: c.andi; op1:x10; immval:5
TEST_CI_OP( c.andi, x10, 0x00000000, 0xbfffffff, 5, x1, 204, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x00000000, 0x55555555, 31, x1, 208, x2)

# opcode: c.andi; op1:x10; immval:-5
TEST_CI_OP( c.andi, x10, 0x00000000, 0xaaaaaaaa, -5, x1, 212, x2)

# opcode: c.andi; op1:x10; immval:16
TEST_CI_OP( c.andi, x10, 0x00000000, 0xffffffdf, 16, x1, 216, x2)

# opcode: c.andi; op1:x10; immval:6
TEST_CI_OP( c.andi, x10, 0x00000000, 0xffffffbf, 6, x1, 220, x2)

# opcode: c.andi; op1:x10; immval:-7
TEST_CI_OP( c.andi, x10, 0x00000000, 0xffffff7f, -7, x1, 224, x2)

# opcode: c.andi; op1:x10; immval:-17
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfffffeff, -17, x1, 228, x2)

# opcode: c.andi; op1:x10; immval:-32
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfffffdff, -32, x1, 232, x2)

# opcode: c.andi; op1:x10; immval:-5
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfffffbff, -5, x1, 236, x2)

# opcode: c.andi; op1:x10; immval:-3
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfffff7ff, -3, x1, 240, x2)

# opcode: c.andi; op1:x10; immval:-22
TEST_CI_OP( c.andi, x10, 0x00000000, 0xffffefff, -22, x1, 244, x2)

# opcode: c.andi; op1:x10; immval:4
TEST_CI_OP( c.andi, x10, 0x00000000, 0xffffdfff, 4, x1, 248, x2)

# opcode: c.andi; op1:x10; immval:-32
TEST_CI_OP( c.andi, x10, 0x00000000, 0xffffbfff, -32, x1, 252, x2)

# opcode: c.andi; op1:x10; immval:8
TEST_CI_OP( c.andi, x10, 0x00000000, 0xffff7fff, 8, x1, 256, x2)

# opcode: c.andi; op1:x10; immval:-32
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfffeffff, -32, x1, 260, x2)

# opcode: c.andi; op1:x10; immval:-8
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfffdffff, -8, x1, 264, x2)

# opcode: c.andi; op1:x10; immval:31
TEST_CI_OP( c.andi, x10, 0x00000000, 0xfffbffff, 31, x1, 268, x2)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x1_1:
    .fill 68*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
