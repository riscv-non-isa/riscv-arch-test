
#This assembly file tests the sll instruction of the RISC-V i extension for the sll covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sll)

la x7,signature_x7_1

# opcode: sll ; op1:x25; op2:x29; dest:x25; op1val:0xff7fffff;  op2val:0x0000001e
TEST_RR_OP(sll, x25, x25, x29, 0xc0000000, 0xff7fffff, 0x0000001e, x7, 0, x17)

# opcode: sll ; op1:x3; op2:x3; dest:x8; op1val:0x00000006;  op2val:0x00000013
TEST_RR_OP(sll, x8, x3, x3, 0x300000, 0x00000006, 0x00000013, x7, 4, x17)

# opcode: sll ; op1:x15; op2:x31; dest:x28; op1val:0xffffffef;  op2val:0x00000000
TEST_RR_OP(sll, x28, x15, x31, 0xffffffef, 0xffffffef, 0x00000000, x7, 8, x17)

# opcode: sll ; op1:x27; op2:x27; dest:x27; op1val:0x00000010;  op2val:0x00000000
TEST_RR_OP(sll, x27, x27, x27, 0x10, 0x00000010, 0x00000000, x7, 12, x17)

# opcode: sll ; op1:x11; op2:x1; dest:x1; op1val:0x00000006;  op2val:0x00000006
TEST_RR_OP(sll, x1, x11, x1, 0x180, 0x00000006, 0x00000006, x7, 16, x17)

# opcode: sll ; op1:x14; op2:x18; dest:x19; op1val:0x80000000;  op2val:0x0000000a
TEST_RR_OP(sll, x19, x14, x18, 0x0, 0x80000000, 0x0000000a, x7, 20, x17)

# opcode: sll ; op1:x21; op2:x4; dest:x18; op1val:0x00000000;  op2val:0x0000001f
TEST_RR_OP(sll, x18, x21, x4, 0x0, 0x00000000, 0x0000001f, x7, 24, x17)

# opcode: sll ; op1:x24; op2:x25; dest:x14; op1val:0x7fffffff;  op2val:0x00000009
TEST_RR_OP(sll, x14, x24, x25, 0xfffffe00, 0x7fffffff, 0x00000009, x7, 28, x17)

# opcode: sll ; op1:x26; op2:x23; dest:x29; op1val:0x00000001;  op2val:0x00000001
TEST_RR_OP(sll, x29, x26, x23, 0x2, 0x00000001, 0x00000001, x7, 32, x17)

# opcode: sll ; op1:x30; op2:x5; dest:x12; op1val:0xfeffffff;  op2val:0x00000002
TEST_RR_OP(sll, x12, x30, x5, 0xfbfffffc, 0xfeffffff, 0x00000002, x7, 36, x17)

# opcode: sll ; op1:x16; op2:x6; dest:x4; op1val:0xfffdffff;  op2val:0x00000004
TEST_RR_OP(sll, x4, x16, x6, 0xffdffff0, 0xfffdffff, 0x00000004, x7, 40, x17)

# opcode: sll ; op1:x5; op2:x10; dest:x2; op1val:0xbfffffff;  op2val:0x00000008
TEST_RR_OP(sll, x2, x5, x10, 0xffffff00, 0xbfffffff, 0x00000008, x7, 44, x17)

# opcode: sll ; op1:x9; op2:x2; dest:x6; op1val:0x00800000;  op2val:0x00000010
TEST_RR_OP(sll, x6, x9, x2, 0x0, 0x00800000, 0x00000010, x7, 48, x17)

# opcode: sll ; op1:x4; op2:x28; dest:x13; op1val:0x00200000;  op2val:0x0000001d
TEST_RR_OP(sll, x13, x4, x28, 0x0, 0x00200000, 0x0000001d, x7, 52, x17)

# opcode: sll ; op1:x17; op2:x9; dest:x21; op1val:0x55555555;  op2val:0x0000001b
TEST_RR_OP(sll, x21, x17, x9, 0xa8000000, 0x55555555, 0x0000001b, x7, 56, x1)
la x4,signature_x4_0

# opcode: sll ; op1:x29; op2:x13; dest:x0; op1val:0x00001000;  op2val:0x00000017
TEST_RR_OP(sll, x0, x29, x13, 0x0, 0x00001000, 0x00000017, x4, 0, x1)

# opcode: sll ; op1:x2; op2:x21; dest:x17; op1val:0x00000400;  op2val:0x0000000f
TEST_RR_OP(sll, x17, x2, x21, 0x2000000, 0x00000400, 0x0000000f, x4, 4, x1)

# opcode: sll ; op1:x13; op2:x16; dest:x3; op1val:0xfff7ffff;  op2val:0x00000015
TEST_RR_OP(sll, x3, x13, x16, 0xffe00000, 0xfff7ffff, 0x00000015, x4, 8, x1)

# opcode: sll ; op1:x8; op2:x19; dest:x10; op1val:0x00000002;  op2val:0x0000001d
TEST_RR_OP(sll, x10, x8, x19, 0x40000000, 0x00000002, 0x0000001d, x4, 12, x1)

# opcode: sll ; op1:x31; op2:x7; dest:x5; op1val:0x00000004;  op2val:0x0000001b
TEST_RR_OP(sll, x5, x31, x7, 0x20000000, 0x00000004, 0x0000001b, x4, 16, x1)

# opcode: sll ; op1:x23; op2:x0; dest:x30; op1val:0x00000008;  op2val:0x00000002
TEST_RR_OP(sll, x30, x23, x0, 0x20, 0x00000008, 0x00000002, x4, 20, x1)

# opcode: sll ; op1:x22; op2:x24; dest:x15; op1val:0x00000020;  op2val:0x00000017
TEST_RR_OP(sll, x15, x22, x24, 0x10000000, 0x00000020, 0x00000017, x4, 24, x1)

# opcode: sll ; op1:x18; op2:x11; dest:x23; op1val:0x00000040;  op2val:0x0000000a
TEST_RR_OP(sll, x23, x18, x11, 0x10000, 0x00000040, 0x0000000a, x4, 28, x1)

# opcode: sll ; op1:x7; op2:x30; dest:x31; op1val:0x00000080;  op2val:0x00000010
TEST_RR_OP(sll, x31, x7, x30, 0x800000, 0x00000080, 0x00000010, x4, 32, x1)

# opcode: sll ; op1:x20; op2:x8; dest:x22; op1val:0x00000100;  op2val:0x00000006
TEST_RR_OP(sll, x22, x20, x8, 0x4000, 0x00000100, 0x00000006, x4, 36, x1)

# opcode: sll ; op1:x10; op2:x26; dest:x16; op1val:0x00000200;  op2val:0x00000017
TEST_RR_OP(sll, x16, x10, x26, 0x0, 0x00000200, 0x00000017, x4, 40, x1)

# opcode: sll ; op1:x28; op2:x17; dest:x11; op1val:0x00000800;  op2val:0x00000002
TEST_RR_OP(sll, x11, x28, x17, 0x2000, 0x00000800, 0x00000002, x4, 44, x1)

# opcode: sll ; op1:x19; op2:x15; dest:x24; op1val:0x00002000;  op2val:0x0000001e
TEST_RR_OP(sll, x24, x19, x15, 0x0, 0x00002000, 0x0000001e, x4, 48, x1)

# opcode: sll ; op1:x0; op2:x22; dest:x9; op1val:0x00004000;  op2val:0x0000000c
TEST_RR_OP(sll, x9, x0, x22, 0x4000000, 0x00004000, 0x0000000c, x4, 52, x1)

# opcode: sll ; op1:x6; op2:x12; dest:x7; op1val:0x00008000;  op2val:0x00000002
TEST_RR_OP(sll, x7, x6, x12, 0x20000, 0x00008000, 0x00000002, x4, 56, x1)

# opcode: sll ; op1:x12; op2:x14; dest:x26; op1val:0x00010000;  op2val:0x00000009
TEST_RR_OP(sll, x26, x12, x14, 0x2000000, 0x00010000, 0x00000009, x4, 60, x1)

# opcode: sll ; op1:x1; op2:x21; dest:x28; op1val:0x00020000;  op2val:0x0000000e
TEST_RR_OP(sll, x28, x1, x21, 0x80000000, 0x00020000, 0x0000000e, x4, 64, x2)
la x1,signature_x1_0

# opcode: sll ; op1:x13; op2:x20; dest:x12; op1val:0x00040000;  op2val:0x0000001b
TEST_RR_OP(sll, x12, x13, x20, 0x0, 0x00040000, 0x0000001b, x1, 0, x2)

# opcode: sll ; op1:x19; op2:x24; dest:x20; op1val:0x00080000;  op2val:0x0000001b
TEST_RR_OP(sll, x20, x19, x24, 0x0, 0x00080000, 0x0000001b, x1, 4, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0x400000, 0x00100000, 0x00000002, x1, 8, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000012
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x00400000, 0x00000012, x1, 12, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000009
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x01000000, 0x00000009, x1, 16, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x00000010
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x02000000, 0x00000010, x1, 20, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000011
TEST_RR_OP(sll, x12, x10, x11, 0xeffe0000, 0xfffff7ff, 0x00000011, x1, 24, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x0000000d
TEST_RR_OP(sll, x12, x10, x11, 0xfdffe000, 0xffffefff, 0x0000000d, x1, 28, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x0000000d
TEST_RR_OP(sll, x12, x10, x11, 0xfbffe000, 0xffffdfff, 0x0000000d, x1, 32, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0xfffefffc, 0xffffbfff, 0x00000002, x1, 36, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x0000001f
TEST_RR_OP(sll, x12, x10, x11, 0x80000000, 0xffff7fff, 0x0000001f, x1, 40, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x0000000d
TEST_RR_OP(sll, x12, x10, x11, 0xdfffe000, 0xfffeffff, 0x0000000d, x1, 44, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000010
TEST_RR_OP(sll, x12, x10, x11, 0xffff0000, 0xfffbffff, 0x00000010, x1, 48, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000005
TEST_RR_OP(sll, x12, x10, x11, 0xfdffffe0, 0xffefffff, 0x00000005, x1, 52, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x0000000d
TEST_RR_OP(sll, x12, x10, x11, 0xffffe000, 0xffdfffff, 0x0000000d, x1, 56, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000009
TEST_RR_OP(sll, x12, x10, x11, 0x7ffffe00, 0xffbfffff, 0x00000009, x1, 60, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x0000001d
TEST_RR_OP(sll, x12, x10, x11, 0xe0000000, 0xfdffffff, 0x0000001d, x1, 64, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x0000000e
TEST_RR_OP(sll, x12, x10, x11, 0xffffc000, 0xfbffffff, 0x0000000e, x1, 68, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x0000001b
TEST_RR_OP(sll, x12, x10, x11, 0xf8000000, 0xf7ffffff, 0x0000001b, x1, 72, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000012
TEST_RR_OP(sll, x12, x10, x11, 0xfffc0000, 0xefffffff, 0x00000012, x1, 76, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000015
TEST_RR_OP(sll, x12, x10, x11, 0xffe00000, 0xdfffffff, 0x00000015, x1, 80, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0xaaaaaaaa, 0xaaaaaaaa, 0x00000000, x1, 84, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000007
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x04000000, 0x00000007, x1, 88, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x0000001b
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x08000000, 0x0000001b, x1, 92, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0x10000000, 0x10000000, 0x00000000, x1, 96, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x0000001b
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x20000000, 0x0000001b, x1, 100, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x0000000e
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x40000000, 0x0000000e, x1, 104, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x0000001d
TEST_RR_OP(sll, x12, x10, x11, 0xc0000000, 0xfffffffe, 0x0000001d, x1, 108, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000011
TEST_RR_OP(sll, x12, x10, x11, 0xfffa0000, 0xfffffffd, 0x00000011, x1, 112, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x0000001d
TEST_RR_OP(sll, x12, x10, x11, 0x60000000, 0xfffffffb, 0x0000001d, x1, 116, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000003
TEST_RR_OP(sll, x12, x10, x11, 0xffffffb8, 0xfffffff7, 0x00000003, x1, 120, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000011
TEST_RR_OP(sll, x12, x10, x11, 0xffbe0000, 0xffffffdf, 0x00000011, x1, 124, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000012
TEST_RR_OP(sll, x12, x10, x11, 0xfefc0000, 0xffffffbf, 0x00000012, x1, 128, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x00000006
TEST_RR_OP(sll, x12, x10, x11, 0xffffdfc0, 0xffffff7f, 0x00000006, x1, 132, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000007
TEST_RR_OP(sll, x12, x10, x11, 0xffff7f80, 0xfffffeff, 0x00000007, x1, 136, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000006
TEST_RR_OP(sll, x12, x10, x11, 0xffff7fc0, 0xfffffdff, 0x00000006, x1, 140, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0xffdff800, 0xfffffbff, 0x0000000b, x1, 144, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x0000001e
TEST_RR_OP(sll, x12, x10, x11, 0xc0000000, 0xff7fffff, 0x0000001e, x1, 148, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0x00000013
TEST_RR_OP(sll, x12, x10, x11, 0x300000, 0x00000006, 0x00000013, x1, 152, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000010;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0x10, 0x00000010, 0x00000000, x1, 156, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000006;  op2val:0x00000006
TEST_RR_OP(sll, x12, x10, x11, 0x180, 0x00000006, 0x00000006, x1, 160, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00001000;  op2val:0x00000017
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x00001000, 0x00000017, x1, 164, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0x20, 0x00000008, 0x00000002, x1, 168, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x0000000c
TEST_RR_OP(sll, x12, x10, x11, 0x4000000, 0x00004000, 0x0000000c, x1, 172, x2)
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
    .fill 15*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 44*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
