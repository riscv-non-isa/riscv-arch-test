
#This assembly file tests the srl instruction of the RISC-V i extension for the srl covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",srl)

la x1,signature_x1_1

# opcode: srl ; op1:x3; op2:x18; dest:x3; op1val:0xfffeffff;  op2val:0x00000010
TEST_RR_OP(srl, x3, x3, x18, 0xfffe, 0xfffeffff, 0x00000010, x1, 0, x10)

# opcode: srl ; op1:x27; op2:x27; dest:x31; op1val:0x00000004;  op2val:0x0000000f
TEST_RR_OP(srl, x31, x27, x27, 0x0, 0x00000004, 0x0000000f, x1, 4, x10)

# opcode: srl ; op1:x7; op2:x23; dest:x28; op1val:0xffffff7f;  op2val:0x00000000
TEST_RR_OP(srl, x28, x7, x23, 0xffffff7f, 0xffffff7f, 0x00000000, x1, 8, x10)

# opcode: srl ; op1:x20; op2:x20; dest:x20; op1val:0x00000003;  op2val:0x00000000
TEST_RR_OP(srl, x20, x20, x20, 0x3, 0x00000003, 0x00000000, x1, 12, x10)

# opcode: srl ; op1:x11; op2:x21; dest:x21; op1val:0x00000001;  op2val:0x00000001
TEST_RR_OP(srl, x21, x11, x21, 0x0, 0x00000001, 0x00000001, x1, 16, x10)

# opcode: srl ; op1:x24; op2:x0; dest:x17; op1val:0x80000000;  op2val:0x00000013
TEST_RR_OP(srl, x17, x24, x0, 0x1000, 0x80000000, 0x00000013, x1, 20, x10)

# opcode: srl ; op1:x30; op2:x6; dest:x13; op1val:0x00000000;  op2val:0x00000007
TEST_RR_OP(srl, x13, x30, x6, 0x0, 0x00000000, 0x00000007, x1, 24, x10)

# opcode: srl ; op1:x26; op2:x9; dest:x14; op1val:0x7fffffff;  op2val:0x00000004
TEST_RR_OP(srl, x14, x26, x9, 0x7ffffff, 0x7fffffff, 0x00000004, x1, 28, x10)

# opcode: srl ; op1:x22; op2:x14; dest:x0; op1val:0x40000000;  op2val:0x00000002
TEST_RR_OP(srl, x0, x22, x14, 0x10000000, 0x40000000, 0x00000002, x1, 32, x10)

# opcode: srl ; op1:x18; op2:x7; dest:x5; op1val:0xfffffffc;  op2val:0x00000008
TEST_RR_OP(srl, x5, x18, x7, 0xffffff, 0xfffffffc, 0x00000008, x1, 36, x10)

# opcode: srl ; op1:x25; op2:x17; dest:x6; op1val:0x01000000;  op2val:0x0000001e
TEST_RR_OP(srl, x6, x25, x17, 0x0, 0x01000000, 0x0000001e, x1, 40, x10)

# opcode: srl ; op1:x12; op2:x2; dest:x25; op1val:0x00000007;  op2val:0x0000001d
TEST_RR_OP(srl, x25, x12, x2, 0x0, 0x00000007, 0x0000001d, x1, 44, x10)

# opcode: srl ; op1:x4; op2:x11; dest:x15; op1val:0x04000000;  op2val:0x0000001b
TEST_RR_OP(srl, x15, x4, x11, 0x0, 0x04000000, 0x0000001b, x1, 48, x10)

# opcode: srl ; op1:x16; op2:x15; dest:x12; op1val:0x00000800;  op2val:0x00000017
TEST_RR_OP(srl, x12, x16, x15, 0x0, 0x00000800, 0x00000017, x1, 52, x10)

# opcode: srl ; op1:x8; op2:x5; dest:x30; op1val:0x3fffffff;  op2val:0x00000015
TEST_RR_OP(srl, x30, x8, x5, 0x1ff, 0x3fffffff, 0x00000015, x1, 56, x10)

# opcode: srl ; op1:x2; op2:x3; dest:x23; op1val:0x00800000;  op2val:0x0000000a
TEST_RR_OP(srl, x23, x2, x3, 0x2000, 0x00800000, 0x0000000a, x1, 60, x7)

# opcode: srl ; op1:x6; op2:x25; dest:x29; op1val:0x00000002;  op2val:0x00000012
TEST_RR_OP(srl, x29, x6, x25, 0x0, 0x00000002, 0x00000012, x1, 64, x7)
la x3,signature_x3_0

# opcode: srl ; op1:x14; op2:x30; dest:x9; op1val:0x00000008;  op2val:0x00000015
TEST_RR_OP(srl, x9, x14, x30, 0x0, 0x00000008, 0x00000015, x3, 0, x7)

# opcode: srl ; op1:x29; op2:x8; dest:x26; op1val:0x00000010;  op2val:0x00000012
TEST_RR_OP(srl, x26, x29, x8, 0x0, 0x00000010, 0x00000012, x3, 4, x7)

# opcode: srl ; op1:x13; op2:x4; dest:x22; op1val:0x00000020;  op2val:0x00000015
TEST_RR_OP(srl, x22, x13, x4, 0x0, 0x00000020, 0x00000015, x3, 8, x7)

# opcode: srl ; op1:x31; op2:x12; dest:x19; op1val:0x00000040;  op2val:0x0000000d
TEST_RR_OP(srl, x19, x31, x12, 0x0, 0x00000040, 0x0000000d, x3, 12, x7)

# opcode: srl ; op1:x15; op2:x22; dest:x24; op1val:0x00000080;  op2val:0x0000000c
TEST_RR_OP(srl, x24, x15, x22, 0x0, 0x00000080, 0x0000000c, x3, 16, x7)

# opcode: srl ; op1:x9; op2:x10; dest:x16; op1val:0x00000100;  op2val:0x0000000b
TEST_RR_OP(srl, x16, x9, x10, 0x0, 0x00000100, 0x0000000b, x3, 20, x7)

# opcode: srl ; op1:x0; op2:x16; dest:x18; op1val:0x00000200;  op2val:0x0000001b
TEST_RR_OP(srl, x18, x0, x16, 0x0, 0x00000200, 0x0000001b, x3, 24, x7)

# opcode: srl ; op1:x28; op2:x13; dest:x10; op1val:0x00000400;  op2val:0x00000015
TEST_RR_OP(srl, x10, x28, x13, 0x0, 0x00000400, 0x00000015, x3, 28, x7)

# opcode: srl ; op1:x21; op2:x19; dest:x8; op1val:0x00001000;  op2val:0x00000005
TEST_RR_OP(srl, x8, x21, x19, 0x80, 0x00001000, 0x00000005, x3, 32, x7)

# opcode: srl ; op1:x5; op2:x26; dest:x27; op1val:0x00002000;  op2val:0x00000005
TEST_RR_OP(srl, x27, x5, x26, 0x100, 0x00002000, 0x00000005, x3, 36, x7)

# opcode: srl ; op1:x23; op2:x1; dest:x4; op1val:0x00004000;  op2val:0x0000001d
TEST_RR_OP(srl, x4, x23, x1, 0x0, 0x00004000, 0x0000001d, x3, 40, x7)

# opcode: srl ; op1:x19; op2:x24; dest:x11; op1val:0x00008000;  op2val:0x0000001d
TEST_RR_OP(srl, x11, x19, x24, 0x0, 0x00008000, 0x0000001d, x3, 44, x7)

# opcode: srl ; op1:x1; op2:x29; dest:x7; op1val:0x00010000;  op2val:0x00000004
TEST_RR_OP(srl, x7, x1, x29, 0x1000, 0x00010000, 0x00000004, x3, 48, x4)

# opcode: srl ; op1:x17; op2:x28; dest:x2; op1val:0x00020000;  op2val:0x0000001e
TEST_RR_OP(srl, x2, x17, x28, 0x0, 0x00020000, 0x0000001e, x3, 52, x4)

# opcode: srl ; op1:x10; op2:x31; dest:x1; op1val:0x00040000;  op2val:0x0000000a
TEST_RR_OP(srl, x1, x10, x31, 0x100, 0x00040000, 0x0000000a, x3, 56, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x00000009
TEST_RR_OP(srl, x12, x10, x11, 0x400, 0x00080000, 0x00000009, x3, 60, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x0000001f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00100000, 0x0000001f, x3, 64, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x00000006
TEST_RR_OP(srl, x12, x10, x11, 0x8000, 0x00200000, 0x00000006, x3, 68, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x00000009
TEST_RR_OP(srl, x12, x10, x11, 0x2000, 0x00400000, 0x00000009, x3, 72, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x0000000a
TEST_RR_OP(srl, x12, x10, x11, 0x8000, 0x02000000, 0x0000000a, x3, 76, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000006
TEST_RR_OP(srl, x12, x10, x11, 0x200000, 0x08000000, 0x00000006, x3, 80, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x0000001b
TEST_RR_OP(srl, x12, x10, x11, 0x2, 0x10000000, 0x0000001b, x3, 84, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x0000000a
TEST_RR_OP(srl, x12, x10, x11, 0x80000, 0x20000000, 0x0000000a, x3, 88, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x00000006
TEST_RR_OP(srl, x12, x10, x11, 0x3ffffdf, 0xfffff7ff, 0x00000006, x3, 92, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0xffffefff, 0xffffefff, 0x00000000, x3, 96, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0xffffdfff, 0xffffdfff, 0x00000000, x3, 100, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0xffffbfff, 0xffffbfff, 0x00000000, x3, 104, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000010
TEST_RR_OP(srl, x12, x10, x11, 0xffff, 0xffff7fff, 0x00000010, x3, 108, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x3fff7fff, 0xfffdffff, 0x00000002, x3, 112, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x0000000c
TEST_RR_OP(srl, x12, x10, x11, 0xfffbf, 0xfffbffff, 0x0000000c, x3, 116, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x00000003
TEST_RR_OP(srl, x12, x10, x11, 0x1ffeffff, 0xfff7ffff, 0x00000003, x3, 120, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x00000010
TEST_RR_OP(srl, x12, x10, x11, 0xffef, 0xffefffff, 0x00000010, x3, 124, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x00000012
TEST_RR_OP(srl, x12, x10, x11, 0x3ff7, 0xffdfffff, 0x00000012, x3, 128, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000010
TEST_RR_OP(srl, x12, x10, x11, 0xffbf, 0xffbfffff, 0x00000010, x3, 132, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffff;  op2val:0x0000000e
TEST_RR_OP(srl, x12, x10, x11, 0x3fdff, 0xff7fffff, 0x0000000e, x3, 136, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x0000000f
TEST_RR_OP(srl, x12, x10, x11, 0x1fdff, 0xfeffffff, 0x0000000f, x3, 140, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000007
TEST_RR_OP(srl, x12, x10, x11, 0x1fbffff, 0xfdffffff, 0x00000007, x3, 144, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000013
TEST_RR_OP(srl, x12, x10, x11, 0x1f7f, 0xfbffffff, 0x00000013, x3, 148, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0xf7ffffff, 0xf7ffffff, 0x00000000, x3, 152, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0xffffffdf, 0xffffffdf, 0x00000000, x3, 156, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xefffffff;  op2val:0x00000004
TEST_RR_OP(srl, x12, x10, x11, 0xeffffff, 0xefffffff, 0x00000004, x3, 160, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x0000001f
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0xdfffffff, 0x0000001f, x3, 164, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x0000001d
TEST_RR_OP(srl, x12, x10, x11, 0x5, 0xbfffffff, 0x0000001d, x3, 168, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x00000006
TEST_RR_OP(srl, x12, x10, x11, 0x3ffffef, 0xfffffbff, 0x00000006, x3, 172, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x0000001e
TEST_RR_OP(srl, x12, x10, x11, 0x1, 0x55555555, 0x0000001e, x3, 176, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000005
TEST_RR_OP(srl, x12, x10, x11, 0x7ffffff, 0xfffffffe, 0x00000005, x3, 180, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffb;  op2val:0x00000003
TEST_RR_OP(srl, x12, x10, x11, 0x1fffffff, 0xfffffffb, 0x00000003, x3, 184, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000013
TEST_RR_OP(srl, x12, x10, x11, 0x1555, 0xaaaaaaaa, 0x00000013, x3, 188, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x00000008
TEST_RR_OP(srl, x12, x10, x11, 0xffffff, 0xfffffffd, 0x00000008, x3, 192, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000006
TEST_RR_OP(srl, x12, x10, x11, 0x3ffffff, 0xfffffff7, 0x00000006, x3, 196, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000011
TEST_RR_OP(srl, x12, x10, x11, 0x7fff, 0xffffffef, 0x00000011, x3, 200, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x3fffffef, 0xffffffbf, 0x00000002, x3, 204, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000004
TEST_RR_OP(srl, x12, x10, x11, 0xfffffef, 0xfffffeff, 0x00000004, x3, 208, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x0000001d
TEST_RR_OP(srl, x12, x10, x11, 0x7, 0xfffffdff, 0x0000001d, x3, 212, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000010
TEST_RR_OP(srl, x12, x10, x11, 0xfffe, 0xfffeffff, 0x00000010, x3, 216, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000004;  op2val:0x0000000f
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00000004, 0x0000000f, x3, 220, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000003;  op2val:0x00000000
TEST_RR_OP(srl, x12, x10, x11, 0x3, 0x00000003, 0x00000000, x3, 224, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000001;  op2val:0x00000001
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00000001, 0x00000001, x3, 228, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x80000000;  op2val:0x00000013
TEST_RR_OP(srl, x12, x10, x11, 0x1000, 0x80000000, 0x00000013, x3, 232, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000002
TEST_RR_OP(srl, x12, x10, x11, 0x10000000, 0x40000000, 0x00000002, x3, 236, x4)

# opcode: srl ; op1:x10; op2:x11; dest:x12; op1val:0x00000200;  op2val:0x0000001b
TEST_RR_OP(srl, x12, x10, x11, 0x0, 0x00000200, 0x0000001b, x3, 240, x4)
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
    .fill 17*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 61*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
