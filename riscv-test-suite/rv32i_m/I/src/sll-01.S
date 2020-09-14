
#This assembly file tests the sll instruction of the RISC-V i extension for the sll covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sll)

la x4,signature_x4_1

# opcode: sll ; op1:x10; op2:x1; dest:x1; op1val:0xfffffbff;  op2val:0x0000000a
TEST_RR_OP(sll, x1, x10, x1, 0xffeffc00, 0xfffffbff, 0x0000000a, x4, 0, x21)

# opcode: sll ; op1:x28; op2:x18; dest:x28; op1val:0x00000005;  op2val:0x00000002
TEST_RR_OP(sll, x28, x28, x18, 0x14, 0x00000005, 0x00000002, x4, 4, x21)

# opcode: sll ; op1:x11; op2:x11; dest:x11; op1val:0xfffffdff;  op2val:0x00000000
TEST_RR_OP(sll, x11, x11, x11, 0xfffffdff, 0xfffffdff, 0x00000000, x4, 8, x21)

# opcode: sll ; op1:x20; op2:x20; dest:x3; op1val:0x00000007;  op2val:0x00000000
TEST_RR_OP(sll, x3, x20, x20, 0x7, 0x00000007, 0x00000000, x4, 12, x21)

# opcode: sll ; op1:x15; op2:x27; dest:x22; op1val:0x00000010;  op2val:0x00000010
TEST_RR_OP(sll, x22, x15, x27, 0x100000, 0x00000010, 0x00000010, x4, 16, x21)

# opcode: sll ; op1:x31; op2:x22; dest:x19; op1val:0x80000000;  op2val:0x00000017
TEST_RR_OP(sll, x19, x31, x22, 0x0, 0x80000000, 0x00000017, x4, 20, x21)

# opcode: sll ; op1:x2; op2:x12; dest:x25; op1val:0x00000000;  op2val:0x0000001f
TEST_RR_OP(sll, x25, x2, x12, 0x0, 0x00000000, 0x0000001f, x4, 24, x21)

# opcode: sll ; op1:x30; op2:x24; dest:x0; op1val:0x7fffffff;  op2val:0x00000007
TEST_RR_OP(sll, x0, x30, x24, 0xffffff80, 0x7fffffff, 0x00000007, x4, 28, x21)

# opcode: sll ; op1:x23; op2:x8; dest:x13; op1val:0x00000001;  op2val:0x00000013
TEST_RR_OP(sll, x13, x23, x8, 0x80000, 0x00000001, 0x00000013, x4, 32, x21)

# opcode: sll ; op1:x16; op2:x28; dest:x9; op1val:0xff7fffff;  op2val:0x00000001
TEST_RR_OP(sll, x9, x16, x28, 0xfefffffe, 0xff7fffff, 0x00000001, x4, 36, x21)

# opcode: sll ; op1:x13; op2:x0; dest:x7; op1val:0x00040000;  op2val:0x00000004
TEST_RR_OP(sll, x7, x13, x0, 0x400000, 0x00040000, 0x00000004, x4, 40, x21)

# opcode: sll ; op1:x6; op2:x25; dest:x29; op1val:0xfffffffc;  op2val:0x00000008
TEST_RR_OP(sll, x29, x6, x25, 0xfffffc00, 0xfffffffc, 0x00000008, x4, 44, x21)

# opcode: sll ; op1:x3; op2:x16; dest:x8; op1val:0xc0000000;  op2val:0x0000001e
TEST_RR_OP(sll, x8, x3, x16, 0x0, 0xc0000000, 0x0000001e, x4, 48, x21)

# opcode: sll ; op1:x5; op2:x7; dest:x27; op1val:0xfffffffb;  op2val:0x0000001d
TEST_RR_OP(sll, x27, x5, x7, 0x60000000, 0xfffffffb, 0x0000001d, x4, 52, x21)

# opcode: sll ; op1:x17; op2:x30; dest:x14; op1val:0x00000005;  op2val:0x0000001b
TEST_RR_OP(sll, x14, x17, x30, 0x28000000, 0x00000005, 0x0000001b, x4, 56, x21)
la x11,signature_x11_0

# opcode: sll ; op1:x26; op2:x31; dest:x10; op1val:0xefffffff;  op2val:0x0000000f
TEST_RR_OP(sll, x10, x26, x31, 0xffff8000, 0xefffffff, 0x0000000f, x11, 0, x7)

# opcode: sll ; op1:x9; op2:x3; dest:x30; op1val:0xfffffffb;  op2val:0x00000015
TEST_RR_OP(sll, x30, x9, x3, 0xff600000, 0xfffffffb, 0x00000015, x11, 4, x7)

# opcode: sll ; op1:x12; op2:x17; dest:x24; op1val:0x00000002;  op2val:0x0000001f
TEST_RR_OP(sll, x24, x12, x17, 0x0, 0x00000002, 0x0000001f, x11, 8, x7)

# opcode: sll ; op1:x19; op2:x2; dest:x4; op1val:0x00000004;  op2val:0x00000013
TEST_RR_OP(sll, x4, x19, x2, 0x200000, 0x00000004, 0x00000013, x11, 12, x7)

# opcode: sll ; op1:x18; op2:x14; dest:x21; op1val:0x00000008;  op2val:0x00000017
TEST_RR_OP(sll, x21, x18, x14, 0x4000000, 0x00000008, 0x00000017, x11, 16, x7)

# opcode: sll ; op1:x1; op2:x10; dest:x20; op1val:0x00000020;  op2val:0x0000001b
TEST_RR_OP(sll, x20, x1, x10, 0x0, 0x00000020, 0x0000001b, x11, 20, x7)

# opcode: sll ; op1:x8; op2:x21; dest:x17; op1val:0x00000040;  op2val:0x00000004
TEST_RR_OP(sll, x17, x8, x21, 0x400, 0x00000040, 0x00000004, x11, 24, x7)

# opcode: sll ; op1:x4; op2:x29; dest:x18; op1val:0x00000080;  op2val:0x0000000e
TEST_RR_OP(sll, x18, x4, x29, 0x200000, 0x00000080, 0x0000000e, x11, 28, x7)

# opcode: sll ; op1:x21; op2:x6; dest:x26; op1val:0x00000100;  op2val:0x0000000d
TEST_RR_OP(sll, x26, x21, x6, 0x200000, 0x00000100, 0x0000000d, x11, 32, x7)

# opcode: sll ; op1:x24; op2:x9; dest:x31; op1val:0x00000200;  op2val:0x0000001e
TEST_RR_OP(sll, x31, x24, x9, 0x0, 0x00000200, 0x0000001e, x11, 36, x7)

# opcode: sll ; op1:x25; op2:x23; dest:x2; op1val:0x00000400;  op2val:0x00000011
TEST_RR_OP(sll, x2, x25, x23, 0x8000000, 0x00000400, 0x00000011, x11, 40, x7)

# opcode: sll ; op1:x29; op2:x13; dest:x15; op1val:0x00000800;  op2val:0x0000000f
TEST_RR_OP(sll, x15, x29, x13, 0x4000000, 0x00000800, 0x0000000f, x11, 44, x7)

# opcode: sll ; op1:x22; op2:x26; dest:x5; op1val:0x00001000;  op2val:0x0000001b
TEST_RR_OP(sll, x5, x22, x26, 0x0, 0x00001000, 0x0000001b, x11, 48, x7)

# opcode: sll ; op1:x14; op2:x5; dest:x12; op1val:0x00002000;  op2val:0x00000017
TEST_RR_OP(sll, x12, x14, x5, 0x0, 0x00002000, 0x00000017, x11, 52, x7)

# opcode: sll ; op1:x27; op2:x19; dest:x6; op1val:0x00004000;  op2val:0x0000000e
TEST_RR_OP(sll, x6, x27, x19, 0x10000000, 0x00004000, 0x0000000e, x11, 56, x7)

# opcode: sll ; op1:x7; op2:x15; dest:x23; op1val:0x00008000;  op2val:0x00000011
TEST_RR_OP(sll, x23, x7, x15, 0x0, 0x00008000, 0x00000011, x11, 60, x2)
la x1,signature_x1_0

# opcode: sll ; op1:x0; op2:x4; dest:x16; op1val:0x00010000;  op2val:0x0000000b
TEST_RR_OP(sll, x16, x0, x4, 0x8000000, 0x00010000, 0x0000000b, x1, 0, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00020000;  op2val:0x00000006
TEST_RR_OP(sll, x12, x10, x11, 0x800000, 0x00020000, 0x00000006, x1, 4, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00080000;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0x80000, 0x00080000, 0x00000000, x1, 8, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00100000;  op2val:0x0000000f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x00100000, 0x0000000f, x1, 12, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00200000;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x00200000, 0x0000000b, x1, 16, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00400000;  op2val:0x0000000d
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x00400000, 0x0000000d, x1, 20, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00800000;  op2val:0x00000001
TEST_RR_OP(sll, x12, x10, x11, 0x1000000, 0x00800000, 0x00000001, x1, 24, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x01000000;  op2val:0x00000003
TEST_RR_OP(sll, x12, x10, x11, 0x8000000, 0x01000000, 0x00000003, x1, 28, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x02000000;  op2val:0x0000001e
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x02000000, 0x0000001e, x1, 32, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x04000000;  op2val:0x00000006
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x04000000, 0x00000006, x1, 36, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x08000000;  op2val:0x00000010
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x08000000, 0x00000010, x1, 40, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ff;  op2val:0x0000000e
TEST_RR_OP(sll, x12, x10, x11, 0xfdffc000, 0xfffff7ff, 0x0000000e, x1, 44, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffefff;  op2val:0x0000000f
TEST_RR_OP(sll, x12, x10, x11, 0xf7ff8000, 0xffffefff, 0x0000000f, x1, 48, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfff;  op2val:0x00000011
TEST_RR_OP(sll, x12, x10, x11, 0xbffe0000, 0xffffdfff, 0x00000011, x1, 52, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfff;  op2val:0x0000001f
TEST_RR_OP(sll, x12, x10, x11, 0x80000000, 0xffffbfff, 0x0000001f, x1, 56, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fff;  op2val:0x00000008
TEST_RR_OP(sll, x12, x10, x11, 0xff7fff00, 0xffff7fff, 0x00000008, x1, 60, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffff;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0xfffeffff, 0xfffeffff, 0x00000000, x1, 64, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffff;  op2val:0x0000001f
TEST_RR_OP(sll, x12, x10, x11, 0x80000000, 0xfffdffff, 0x0000001f, x1, 68, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffff;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0xdffff800, 0xfffbffff, 0x0000000b, x1, 72, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffff;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0xbffff800, 0xfff7ffff, 0x0000000b, x1, 76, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffefffff;  op2val:0x0000001e
TEST_RR_OP(sll, x12, x10, x11, 0xc0000000, 0xffefffff, 0x0000001e, x1, 80, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffff;  op2val:0x0000001f
TEST_RR_OP(sll, x12, x10, x11, 0x80000000, 0xffdfffff, 0x0000001f, x1, 84, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffff;  op2val:0x00000004
TEST_RR_OP(sll, x12, x10, x11, 0xfbfffff0, 0xffbfffff, 0x00000004, x1, 88, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffff;  op2val:0x00000009
TEST_RR_OP(sll, x12, x10, x11, 0xfffffe00, 0xfeffffff, 0x00000009, x1, 92, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffff;  op2val:0x00000012
TEST_RR_OP(sll, x12, x10, x11, 0xfffc0000, 0xfdffffff, 0x00000012, x1, 96, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffff;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0xfbffffff, 0xfbffffff, 0x00000000, x1, 100, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffff;  op2val:0x00000013
TEST_RR_OP(sll, x12, x10, x11, 0xfff80000, 0xf7ffffff, 0x00000013, x1, 104, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdf;  op2val:0x00000012
TEST_RR_OP(sll, x12, x10, x11, 0xff7c0000, 0xffffffdf, 0x00000012, x1, 108, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x10000000;  op2val:0x00000015
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x10000000, 0x00000015, x1, 112, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffff;  op2val:0x00000010
TEST_RR_OP(sll, x12, x10, x11, 0xffff0000, 0xdfffffff, 0x00000010, x1, 116, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x20000000;  op2val:0x00000010
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x20000000, 0x00000010, x1, 120, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffff;  op2val:0x0000001d
TEST_RR_OP(sll, x12, x10, x11, 0xe0000000, 0xbfffffff, 0x0000001d, x1, 124, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x40000000;  op2val:0x00000015
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x40000000, 0x00000015, x1, 128, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x55555555;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0xaaaaa800, 0x55555555, 0x0000000b, x1, 132, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffe;  op2val:0x00000017
TEST_RR_OP(sll, x12, x10, x11, 0xff000000, 0xfffffffe, 0x00000017, x1, 136, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaa;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0xaaaaaaa8, 0xaaaaaaaa, 0x00000002, x1, 140, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffd;  op2val:0x0000000f
TEST_RR_OP(sll, x12, x10, x11, 0xfffe8000, 0xfffffffd, 0x0000000f, x1, 144, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7;  op2val:0x00000013
TEST_RR_OP(sll, x12, x10, x11, 0xffb80000, 0xfffffff7, 0x00000013, x1, 148, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffef;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0xffffffef, 0xffffffef, 0x00000000, x1, 152, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbf;  op2val:0x0000000e
TEST_RR_OP(sll, x12, x10, x11, 0xffefc000, 0xffffffbf, 0x0000000e, x1, 156, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7f;  op2val:0x0000001b
TEST_RR_OP(sll, x12, x10, x11, 0xf8000000, 0xffffff7f, 0x0000001b, x1, 160, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeff;  op2val:0x00000010
TEST_RR_OP(sll, x12, x10, x11, 0xfeff0000, 0xfffffeff, 0x00000010, x1, 164, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbff;  op2val:0x0000000a
TEST_RR_OP(sll, x12, x10, x11, 0xffeffc00, 0xfffffbff, 0x0000000a, x1, 168, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000005;  op2val:0x00000002
TEST_RR_OP(sll, x12, x10, x11, 0x14, 0x00000005, 0x00000002, x1, 172, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdff;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0xfffffdff, 0xfffffdff, 0x00000000, x1, 176, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00000007;  op2val:0x00000000
TEST_RR_OP(sll, x12, x10, x11, 0x7, 0x00000007, 0x00000000, x1, 180, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffff;  op2val:0x00000007
TEST_RR_OP(sll, x12, x10, x11, 0xffffff80, 0x7fffffff, 0x00000007, x1, 184, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00040000;  op2val:0x00000004
TEST_RR_OP(sll, x12, x10, x11, 0x400000, 0x00040000, 0x00000004, x1, 188, x2)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x00010000;  op2val:0x0000000b
TEST_RR_OP(sll, x12, x10, x11, 0x8000000, 0x00010000, 0x0000000b, x1, 192, x2)
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
    .fill 15*(XLEN/32),4,0xafacadee


signature_x11_0:
    .fill 16*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 49*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
