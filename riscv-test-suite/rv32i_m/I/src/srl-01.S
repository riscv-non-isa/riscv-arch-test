
#This assembly file tests the srl instruction of the RISC-V i extension for the srl covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srl)

la x19,signature_x19_1

# opcode: srl ; op1:x7; op2:x3; dest:x3; op1val:0xff7fffff;  op2val:0x00000015
TEST_RR_OP(srl, x3, x7, x3, 0x7fb, 0xff7fffff, 0x00000015, x19, 0, x24)

# opcode: srl ; op1:x5; op2:x29; dest:x5; op1val:0x00000005;  op2val:0x00000002
TEST_RR_OP(srl, x5, x5, x29, 0x1, 0x00000005, 0x00000002, x19, 4, x24)

# opcode: srl ; op1:x1; op2:x1; dest:x1; op1val:0xfffeffff;  op2val:0x00000000
TEST_RR_OP(srl, x1, x1, x1, 0xfffeffff, 0xfffeffff, 0x00000000, x19, 8, x24)

# opcode: srl ; op1:x30; op2:x30; dest:x18; op1val:0x00100000;  op2val:0x00000000
TEST_RR_OP(srl, x18, x30, x30, 0x100000, 0x00100000, 0x00000000, x19, 12, x24)

# opcode: srl ; op1:x9; op2:x13; dest:x15; op1val:0x00000001;  op2val:0x00000001
TEST_RR_OP(srl, x15, x9, x13, 0x0, 0x00000001, 0x00000001, x19, 16, x24)

# opcode: srl ; op1:x22; op2:x15; dest:x4; op1val:0x80000000;  op2val:0x00000010
TEST_RR_OP(srl, x4, x22, x15, 0x8000, 0x80000000, 0x00000010, x19, 20, x24)

# opcode: srl ; op1:x25; op2:x23; dest:x29; op1val:0x00000000;  op2val:0x00000002
TEST_RR_OP(srl, x29, x25, x23, 0x0, 0x00000000, 0x00000002, x19, 24, x24)

# opcode: srl ; op1:x31; op2:x25; dest:x7; op1val:0x7fffffff;  op2val:0x00000010
TEST_RR_OP(srl, x7, x31, x25, 0x7fff, 0x7fffffff, 0x00000010, x19, 28, x24)

# opcode: srl ; op1:x0; op2:x7; dest:x11; op1val:0x00004000;  op2val:0x00000004
TEST_RR_OP(srl, x11, x0, x7, 0x400, 0x00004000, 0x00000004, x19, 32, x24)

# opcode: srl ; op1:x12; op2:x5; dest:x0; op1val:0x00000005;  op2val:0x00000008
TEST_RR_OP(srl, x0, x12, x5, 0x0, 0x00000005, 0x00000008, x19, 36, x24)

# opcode: srl ; op1:x21; op2:x4; dest:x6; op1val:0x00000005;  op2val:0x0000001e
TEST_RR_OP(srl, x6, x21, x4, 0x0, 0x00000005, 0x0000001e, x19, 40, x24)

# opcode: srl ; op1:x29; op2:x11; dest:x23; op1val:0x00100000;  op2val:0x0000001d
TEST_RR_OP(srl, x23, x29, x11, 0x0, 0x00100000, 0x0000001d, x19, 44, x24)

# opcode: srl ; op1:x28; op2:x21; dest:x10; op1val:0xffbfffff;  op2val:0x0000001b
TEST_RR_OP(srl, x10, x28, x21, 0x1f, 0xffbfffff, 0x0000001b, x19, 48, x24)

# opcode: srl ; op1:x11; op2:x28; dest:x17; op1val:0x40000000;  op2val:0x00000017
TEST_RR_OP(srl, x17, x11, x28, 0x80, 0x40000000, 0x00000017, x19, 52, x24)

# opcode: srl ; op1:x3; op2:x27; dest:x13; op1val:0x3fffffff;  op2val:0x0000000f
TEST_RR_OP(srl, x13, x3, x27, 0x7fff, 0x3fffffff, 0x0000000f, x19, 56, x24)

# opcode: srl ; op1:x8; op2:x12; dest:x14; op1val:0xf7ffffff;  op2val:0x0000000a
TEST_RR_OP(srl, x14, x8, x12, 0x3dffff, 0xf7ffffff, 0x0000000a, x19, 60, x24)

# opcode: srl ; op1:x14; op2:x16; dest:x9; op1val:0x00000002;  op2val:0x00000009
TEST_RR_OP(srl, x9, x14, x16, 0x0, 0x00000002, 0x00000009, x19, 64, x24)

# opcode: srl ; op1:x18; op2:x31; dest:x30; op1val:0x00000004;  op2val:0x0000001f
TEST_RR_OP(srl, x30, x18, x31, 0x0, 0x00000004, 0x0000001f, x19, 68, x24)

# opcode: srl ; op1:x2; op2:x0; dest:x20; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(srl, x20, x2, x0, 0x0, 0x00000008, 0x00000008, x19, 72, x24)
la x1,signature_x1_0

# opcode: srl ; op1:x10; op2:x9; dest:x22; op1val:0x00000010;  op2val:0x0000000f
TEST_RR_OP(srl, x22, x10, x9, 0x0, 0x00000010, 0x0000000f, x1, 0, x3)

# opcode: srl ; op1:x23; op2:x10; dest:x24; op1val:0x00000020;  op2val:0x00000005
TEST_RR_OP(srl, x24, x23, x10, 0x1, 0x00000020, 0x00000005, x1, 4, x3)

# opcode: srl ; op1:x16; op2:x2; dest:x28; op1val:0x00000040;  op2val:0x00000001
TEST_RR_OP(srl, x28, x16, x2, 0x20, 0x00000040, 0x00000001, x1, 8, x3)

# opcode: srl ; op1:x4; op2:x26; dest:x12; op1val:0x00000080;  op2val:0x00000001
TEST_RR_OP(srl, x12, x4, x26, 0x40, 0x00000080, 0x00000001, x1, 12, x3)

# opcode: srl ; op1:x24; op2:x17; dest:x2; op1val:0x00000100;  op2val:0x0000001f
TEST_RR_OP(srl, x2, x24, x17, 0x0, 0x00000100, 0x0000001f, x1, 16, x3)

# opcode: srl ; op1:x26; op2:x24; dest:x27; op1val:0x00000200;  op2val:0x0000001d
TEST_RR_OP(srl, x27, x26, x24, 0x0, 0x00000200, 0x0000001d, x1, 20, x3)

# opcode: srl ; op1:x17; op2:x19; dest:x21; op1val:0x00000400;  op2val:0x0000001d
TEST_RR_OP(srl, x21, x17, x19, 0x0, 0x00000400, 0x0000001d, x1, 24, x3)

# opcode: srl ; op1:x19; op2:x18; dest:x31; op1val:0x00000800;  op2val:0x0000001b
TEST_RR_OP(srl, x31, x19, x18, 0x0, 0x00000800, 0x0000001b, x1, 28, x3)

# opcode: srl ; op1:x13; op2:x22; dest:x8; op1val:0x00001000;  op2val:0x0000000d
TEST_RR_OP(srl, x8, x13, x22, 0x0, 0x00001000, 0x0000000d, x1, 32, x3)

# opcode: srl ; op1:x20; op2:x8; dest:x26; op1val:0x00002000;  op2val:0x00000000
TEST_RR_OP(srl, x26, x20, x8, 0x2000, 0x00002000, 0x00000000, x1, 36, x3)

# opcode: srl ; op1:x15; op2:x14; dest:x25; op1val:0x00008000;  op2val:0x0000000b
TEST_RR_OP(srl, x25, x15, x14, 0x10, 0x00008000, 0x0000000b, x1, 40, x3)

# opcode: srl ; op1:x6; op2:x20; dest:x16; op1val:0x00010000;  op2val:0x00000008
TEST_RR_OP(srl, x16, x6, x20, 0x100, 0x00010000, 0x00000008, x1, 44, x3)

# opcode: srl ; op1:x27; op2:x6; dest:x19; op1val:0x00020000;  op2val:0x0000001e
TEST_RR_OP(srl, x19, x27, x6, 0x0, 0x00020000, 0x0000001e, x1, 48, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x0000000a
TEST_RR_OP(srl, x12, x10, x11, 0x100, 0x00040000, 0x0000000a, x1, 52, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0x80000, 0x00080000, 0x00000000, x1, 56, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x0000001e
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00200000, 0x0000001e, x1, 60, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000009
TEST_RR_OP(srl, x12, x10, x11, 0x2000, 0x00400000, 0x00000009, x1, 64, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x0000000a
TEST_RR_OP(srl, x12, x10, x11, 0x2000, 0x00800000, 0x0000000a, x1, 68, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000008
TEST_RR_OP(srl, x12, x10, x11, 0x10000, 0x01000000, 0x00000008, x1, 72, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x0000000c
TEST_RR_OP(srl, x12, x10, x11, 0x2000, 0x02000000, 0x0000000c, x1, 76, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000005
TEST_RR_OP(srl, x12, x10, x11, 0x200000, 0x04000000, 0x00000005, x1, 80, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x0000000c
TEST_RR_OP(srl, x12, x10, x11, 0x8000, 0x08000000, 0x0000000c, x1, 84, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x0000000b
TEST_RR_OP(srl, x12, x10, x11, 0x1ffffe, 0xfffff7ff, 0x0000000b, x1, 88, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00000012
TEST_RR_OP(srl, x12, x10, x11, 0x3fff, 0xffffefff, 0x00000012, x1, 92, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000013
TEST_RR_OP(srl, x12, x10, x11, 0x1fff, 0xffffdfff, 0x00000013, x1, 96, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x0000001d
TEST_RR_OP(srl, x12, x10, x11, 0x7, 0xffffbfff, 0x0000001d, x1, 100, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x0000000c
TEST_RR_OP(srl, x12, x10, x11, 0xffff7, 0xffff7fff, 0x0000000c, x1, 104, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000013
TEST_RR_OP(srl, x12, x10, x11, 0x1fff, 0xfffdffff, 0x00000013, x1, 108, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x00000015
TEST_RR_OP(srl, x12, x10, x11, 0x7ff, 0xfffbffff, 0x00000015, x1, 112, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000010
TEST_RR_OP(srl, x12, x10, x11, 0xfff7, 0xfff7ffff, 0x00000010, x1, 116, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x0000000c
TEST_RR_OP(srl, x12, x10, x11, 0xffeff, 0xffefffff, 0x0000000c, x1, 120, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x0000001b
TEST_RR_OP(srl, x12, x10, x11, 0x1f, 0xffdfffff, 0x0000001b, x1, 124, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000012
TEST_RR_OP(srl, x12, x10, x11, 0x3fbf, 0xfeffffff, 0x00000012, x1, 128, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x0000000d
TEST_RR_OP(srl, x12, x10, x11, 0x7efff, 0xfdffffff, 0x0000000d, x1, 132, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000010
TEST_RR_OP(srl, x12, x10, x11, 0xfbff, 0xfbffffff, 0x00000010, x1, 136, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000010
TEST_RR_OP(srl, x12, x10, x11, 0xefff, 0xefffffff, 0x00000010, x1, 140, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x0000000b
TEST_RR_OP(srl, x12, x10, x11, 0x1bffff, 0xdfffffff, 0x0000000b, x1, 144, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x00000007
TEST_RR_OP(srl, x12, x10, x11, 0x17fffff, 0xbfffffff, 0x00000007, x1, 148, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000015
TEST_RR_OP(srl, x12, x10, x11, 0x7ff, 0xffffffdf, 0x00000015, x1, 152, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000003
TEST_RR_OP(srl, x12, x10, x11, 0x1ffffffd, 0xffffffef, 0x00000003, x1, 156, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000006
TEST_RR_OP(srl, x12, x10, x11, 0x400000, 0x10000000, 0x00000006, x1, 160, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x8000000, 0x20000000, 0x00000002, x1, 164, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x0000001f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x55555555, 0x0000001f, x1, 168, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000017
TEST_RR_OP(srl, x12, x10, x11, 0x1ff, 0xfffffffe, 0x00000017, x1, 172, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x0000001e
TEST_RR_OP(srl, x12, x10, x11, 0x3, 0xfffffffb, 0x0000001e, x1, 176, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000008
TEST_RR_OP(srl, x12, x10, x11, 0xaaaaaa, 0xaaaaaaaa, 0x00000008, x1, 180, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000009
TEST_RR_OP(srl, x12, x10, x11, 0x7fffff, 0xfffffffd, 0x00000009, x1, 184, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x0000000c
TEST_RR_OP(srl, x12, x10, x11, 0xfffff, 0xfffffff7, 0x0000000c, x1, 188, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x0000001b
TEST_RR_OP(srl, x12, x10, x11, 0x1f, 0xffffffbf, 0x0000001b, x1, 192, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x0000001f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xffffff7f, 0x0000001f, x1, 196, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x3fffffbf, 0xfffffeff, 0x00000002, x1, 200, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x0000000e
TEST_RR_OP(srl, x12, x10, x11, 0x3ffff, 0xfffffdff, 0x0000000e, x1, 204, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000013
TEST_RR_OP(srl, x12, x10, x11, 0x1fff, 0xfffffbff, 0x00000013, x1, 208, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x00000015
TEST_RR_OP(srl, x12, x10, x11, 0x7fb, 0xff7fffff, 0x00000015, x1, 212, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0x00000005, 0x00000002, x1, 216, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0xfffeffff, 0xfffeffff, 0x00000000, x1, 220, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0x100000, 0x00100000, 0x00000000, x1, 224, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00004000;  op2val:0x00000004
TEST_RR_OP(srl, x12, x10, x11, 0x400, 0x00004000, 0x00000004, x1, 228, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x00000008
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00000005, 0x00000008, x1, 232, x3)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000008;  op2val:0x00000008
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00000008, 0x00000008, x1, 236, x3)
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

signature_x19_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x19_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 60*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
