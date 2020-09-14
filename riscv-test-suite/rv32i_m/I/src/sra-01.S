
#This assembly file tests the sra instruction of the RISC-V i extension for the sra covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sra)

la x7,signature_x7_1

# opcode: sra ; op1:x25; op2:x27; dest:x27; op1val:0xffff7fff;  op2val:0x00000001
TEST_RR_OP(sra, x27, x25, x27, 0x7fffbfff, 0xffff7fff, 0x00000001, x7, 0, x5)

# opcode: sra ; op1:x29; op2:x3; dest:x29; op1val:0x40000000;  op2val:0x0000000e
TEST_RR_OP(sra, x29, x29, x3, 0x10000, 0x40000000, 0x0000000e, x7, 4, x5)

# opcode: sra ; op1:x9; op2:x9; dest:x9; op1val:0xfffbffff;  op2val:0x00000000
TEST_RR_OP(sra, x9, x9, x9, 0xfffbffff, 0xfffbffff, 0x00000000, x7, 8, x5)

# opcode: sra ; op1:x18; op2:x18; dest:x25; op1val:0x00000040;  op2val:0x00000000
TEST_RR_OP(sra, x25, x18, x18, 0x40, 0x00000040, 0x00000000, x7, 12, x5)

# opcode: sra ; op1:x26; op2:x14; dest:x15; op1val:0x00000006;  op2val:0x00000006
TEST_RR_OP(sra, x15, x26, x14, 0x0, 0x00000006, 0x00000006, x7, 16, x5)

# opcode: sra ; op1:x10; op2:x17; dest:x22; op1val:0x80000000;  op2val:0x00000002
TEST_RR_OP(sra, x22, x10, x17, 0x20000000, 0x80000000, 0x00000002, x7, 20, x5)

# opcode: sra ; op1:x16; op2:x1; dest:x28; op1val:0x00000000;  op2val:0x0000000d
TEST_RR_OP(sra, x28, x16, x1, 0x0, 0x00000000, 0x0000000d, x7, 24, x5)

# opcode: sra ; op1:x3; op2:x0; dest:x10; op1val:0x7fffffff;  op2val:0x00000012
TEST_RR_OP(sra, x10, x3, x0, 0x1fff, 0x7fffffff, 0x00000012, x7, 28, x5)

# opcode: sra ; op1:x22; op2:x24; dest:x20; op1val:0x00000001;  op2val:0x00000012
TEST_RR_OP(sra, x20, x22, x24, 0x0, 0x00000001, 0x00000012, x7, 32, x5)

# opcode: sra ; op1:x20; op2:x29; dest:x24; op1val:0xffffffdf;  op2val:0x00000004
TEST_RR_OP(sra, x24, x20, x29, 0xffffffd, 0xffffffdf, 0x00000004, x7, 36, x5)

# opcode: sra ; op1:x8; op2:x11; dest:x3; op1val:0x00000400;  op2val:0x00000008
TEST_RR_OP(sra, x3, x8, x11, 0x4, 0x00000400, 0x00000008, x7, 40, x5)

# opcode: sra ; op1:x19; op2:x16; dest:x1; op1val:0x7fffffff;  op2val:0x00000010
TEST_RR_OP(sra, x1, x19, x16, 0x7fff, 0x7fffffff, 0x00000010, x7, 44, x5)

# opcode: sra ; op1:x31; op2:x21; dest:x30; op1val:0x7fffffff;  op2val:0x0000001e
TEST_RR_OP(sra, x30, x31, x21, 0x1, 0x7fffffff, 0x0000001e, x7, 48, x5)

# opcode: sra ; op1:x12; op2:x31; dest:x21; op1val:0xaaaaaaaa;  op2val:0x0000001d
TEST_RR_OP(sra, x21, x12, x31, 0x5, 0xaaaaaaaa, 0x0000001d, x7, 52, x5)

# opcode: sra ; op1:x14; op2:x6; dest:x12; op1val:0xffffff7f;  op2val:0x0000001b
TEST_RR_OP(sra, x12, x14, x6, 0x1f, 0xffffff7f, 0x0000001b, x7, 56, x5)

# opcode: sra ; op1:x2; op2:x26; dest:x4; op1val:0xfdffffff;  op2val:0x00000017
TEST_RR_OP(sra, x4, x2, x26, 0x1fb, 0xfdffffff, 0x00000017, x7, 60, x5)

# opcode: sra ; op1:x24; op2:x22; dest:x11; op1val:0xfffdffff;  op2val:0x0000000f
TEST_RR_OP(sra, x11, x24, x22, 0x1fffb, 0xfffdffff, 0x0000000f, x7, 64, x6)

# opcode: sra ; op1:x30; op2:x12; dest:x31; op1val:0x00000004;  op2val:0x00000015
TEST_RR_OP(sra, x31, x30, x12, 0x0, 0x00000004, 0x00000015, x7, 68, x6)

# opcode: sra ; op1:x4; op2:x25; dest:x26; op1val:0xfffffff6;  op2val:0x0000000a
TEST_RR_OP(sra, x26, x4, x25, 0x3fffff, 0xfffffff6, 0x0000000a, x7, 72, x6)

# opcode: sra ; op1:x28; op2:x2; dest:x5; op1val:0x00000002;  op2val:0x0000001b
TEST_RR_OP(sra, x5, x28, x2, 0x0, 0x00000002, 0x0000001b, x7, 76, x6)
la x3,signature_x3_0

# opcode: sra ; op1:x27; op2:x23; dest:x2; op1val:0x00000008;  op2val:0x0000001b
TEST_RR_OP(sra, x2, x27, x23, 0x0, 0x00000008, 0x0000001b, x3, 0, x6)

# opcode: sra ; op1:x5; op2:x19; dest:x7; op1val:0x00000010;  op2val:0x0000000b
TEST_RR_OP(sra, x7, x5, x19, 0x0, 0x00000010, 0x0000000b, x3, 4, x6)

# opcode: sra ; op1:x11; op2:x7; dest:x17; op1val:0x00000020;  op2val:0x00000004
TEST_RR_OP(sra, x17, x11, x7, 0x2, 0x00000020, 0x00000004, x3, 8, x6)

# opcode: sra ; op1:x21; op2:x13; dest:x18; op1val:0x00000080;  op2val:0x00000000
TEST_RR_OP(sra, x18, x21, x13, 0x80, 0x00000080, 0x00000000, x3, 12, x6)

# opcode: sra ; op1:x0; op2:x28; dest:x13; op1val:0x00000100;  op2val:0x0000001b
TEST_RR_OP(sra, x13, x0, x28, 0x0, 0x00000100, 0x0000001b, x3, 16, x6)

# opcode: sra ; op1:x7; op2:x10; dest:x8; op1val:0x00000200;  op2val:0x00000012
TEST_RR_OP(sra, x8, x7, x10, 0x0, 0x00000200, 0x00000012, x3, 20, x6)

# opcode: sra ; op1:x1; op2:x5; dest:x0; op1val:0x00000800;  op2val:0x00000010
TEST_RR_OP(sra, x0, x1, x5, 0x0, 0x00000800, 0x00000010, x3, 24, x6)

# opcode: sra ; op1:x13; op2:x30; dest:x14; op1val:0x00001000;  op2val:0x00000008
TEST_RR_OP(sra, x14, x13, x30, 0x10, 0x00001000, 0x00000008, x3, 28, x6)

# opcode: sra ; op1:x17; op2:x20; dest:x19; op1val:0x00002000;  op2val:0x0000001f
TEST_RR_OP(sra, x19, x17, x20, 0x0, 0x00002000, 0x0000001f, x3, 32, x6)

# opcode: sra ; op1:x15; op2:x8; dest:x16; op1val:0x00004000;  op2val:0x0000000b
TEST_RR_OP(sra, x16, x15, x8, 0x8, 0x00004000, 0x0000000b, x3, 36, x6)

# opcode: sra ; op1:x23; op2:x15; dest:x6; op1val:0x00008000;  op2val:0x00000010
TEST_RR_OP(sra, x6, x23, x15, 0x0, 0x00008000, 0x00000010, x3, 40, x1)

# opcode: sra ; op1:x6; op2:x4; dest:x23; op1val:0x00010000;  op2val:0x00000009
TEST_RR_OP(sra, x23, x6, x4, 0x80, 0x00010000, 0x00000009, x3, 44, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x8, 0x00020000, 0x0000000e, x3, 48, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x0000000a
TEST_RR_OP(sra, x12, x10, x11, 0x100, 0x00040000, 0x0000000a, x3, 52, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x00000006
TEST_RR_OP(sra, x12, x10, x11, 0x2000, 0x00080000, 0x00000006, x3, 56, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x0000001f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00100000, 0x0000001f, x3, 60, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x0000001f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00200000, 0x0000001f, x3, 64, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000010
TEST_RR_OP(sra, x12, x10, x11, 0x40, 0x00400000, 0x00000010, x3, 68, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x0000001f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00800000, 0x0000001f, x3, 72, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x0000000c
TEST_RR_OP(sra, x12, x10, x11, 0x1000, 0x01000000, 0x0000000c, x3, 76, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000017
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xfffff7ff, 0x00000017, x3, 80, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00000012
TEST_RR_OP(sra, x12, x10, x11, 0x3fff, 0xffffefff, 0x00000012, x3, 84, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x0000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xffffdfff, 0x0000000f, x3, 88, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0xffffbfff, 0xffffbfff, 0x00000000, x3, 92, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000015
TEST_RR_OP(sra, x12, x10, x11, 0x7ff, 0xfffeffff, 0x00000015, x3, 96, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffdf, 0xfff7ffff, 0x0000000e, x3, 100, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x0000000d
TEST_RR_OP(sra, x12, x10, x11, 0x7ff7f, 0xffefffff, 0x0000000d, x3, 104, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ff7f, 0xffdfffff, 0x0000000e, x3, 108, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000011
TEST_RR_OP(sra, x12, x10, x11, 0x7fdf, 0xffbfffff, 0x00000011, x3, 112, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000003
TEST_RR_OP(sra, x12, x10, x11, 0x1fefffff, 0xff7fffff, 0x00000003, x3, 116, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x0000001d
TEST_RR_OP(sra, x12, x10, x11, 0x7, 0xfeffffff, 0x0000001d, x3, 120, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000012
TEST_RR_OP(sra, x12, x10, x11, 0x3eff, 0xfbffffff, 0x00000012, x3, 124, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000013
TEST_RR_OP(sra, x12, x10, x11, 0x1eff, 0xf7ffffff, 0x00000013, x3, 128, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000001
TEST_RR_OP(sra, x12, x10, x11, 0x77ffffff, 0xefffffff, 0x00000001, x3, 132, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000001
TEST_RR_OP(sra, x12, x10, x11, 0x6fffffff, 0xdfffffff, 0x00000001, x3, 136, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x0000000b
TEST_RR_OP(sra, x12, x10, x11, 0x17ffff, 0xbfffffff, 0x0000000b, x3, 140, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x0000001f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x02000000, 0x0000001f, x3, 144, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x0000001b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x04000000, 0x0000001b, x3, 148, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000004
TEST_RR_OP(sra, x12, x10, x11, 0x800000, 0x08000000, 0x00000004, x3, 152, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000012
TEST_RR_OP(sra, x12, x10, x11, 0x400, 0x10000000, 0x00000012, x3, 156, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x0000000b
TEST_RR_OP(sra, x12, x10, x11, 0x40000, 0x20000000, 0x0000000b, x3, 160, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x00000015
TEST_RR_OP(sra, x12, x10, x11, 0x2aa, 0x55555555, 0x00000015, x3, 164, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000010
TEST_RR_OP(sra, x12, x10, x11, 0xffff, 0xfffffffe, 0x00000010, x3, 168, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff, 0xfffffffd, 0x0000000e, x3, 172, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000004
TEST_RR_OP(sra, x12, x10, x11, 0xfffffff, 0xfffffffb, 0x00000004, x3, 176, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000001
TEST_RR_OP(sra, x12, x10, x11, 0x7ffffffb, 0xfffffff7, 0x00000001, x3, 180, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x0000001f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xffffffef, 0x0000001f, x3, 184, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000010
TEST_RR_OP(sra, x12, x10, x11, 0xffff, 0xffffffbf, 0x00000010, x3, 188, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000015
TEST_RR_OP(sra, x12, x10, x11, 0x7ff, 0xfffffeff, 0x00000015, x3, 192, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff, 0xfffffdff, 0x0000000e, x3, 196, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x0000000c
TEST_RR_OP(sra, x12, x10, x11, 0xfffff, 0xfffffbff, 0x0000000c, x3, 200, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000001
TEST_RR_OP(sra, x12, x10, x11, 0x7fffbfff, 0xffff7fff, 0x00000001, x3, 204, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x0000000e
TEST_RR_OP(sra, x12, x10, x11, 0x10000, 0x40000000, 0x0000000e, x3, 208, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0xfffbffff, 0xfffbffff, 0x00000000, x3, 212, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00000040;  op2val:0x00000000
TEST_RR_OP(sra, x12, x10, x11, 0x40, 0x00000040, 0x00000000, x3, 216, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000012
TEST_RR_OP(sra, x12, x10, x11, 0x1fff, 0x7fffffff, 0x00000012, x3, 220, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00000100;  op2val:0x0000001b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00000100, 0x0000001b, x3, 224, x1)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x00000800;  op2val:0x00000010
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x00000800, 0x00000010, x3, 228, x1)
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
    .fill 20*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 58*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
