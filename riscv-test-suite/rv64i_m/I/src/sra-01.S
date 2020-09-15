
#This assembly file tests the sra instruction of the RISC-V i extension for the sra covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sra)

la x20,signature_x20_1

# opcode: sra ; op1:x14; op2:x3; dest:x14; op1val:0xffffffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x14, x14, x3, 0x7ff, 0xffffffffffffffff, 0x0000000000000015, x20, 0, x25)

# opcode: sra ; op1:x31; op2:x2; dest:x26; op1val:0x0100000000000000;  op2val:0x0000000000000005
TEST_RR_OP(sra, x26, x31, x2, 0x0, 0x0100000000000000, 0x0000000000000005, x20, 8, x25)

# opcode: sra ; op1:x7; op2:x7; dest:x17; op1val:0xfffffdffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sra, x17, x7, x7, 0xffffffff, 0xfffffdffffffffff, 0x0000000000000000, x20, 16, x25)

# opcode: sra ; op1:x9; op2:x11; dest:x11; op1val:0x0000400000000000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x11, x9, x11, 0x0, 0x0000400000000000, 0x0000000000000000, x20, 24, x25)

# opcode: sra ; op1:x4; op2:x4; dest:x4; op1val:0x0000000000000001;  op2val:0x0000000000000001
TEST_RR_OP(sra, x4, x4, x4, 0x0, 0x0000000000000001, 0x0000000000000001, x20, 32, x25)

# opcode: sra ; op1:x5; op2:x19; dest:x15; op1val:0x8000000000000000;  op2val:0x0000000000000012
TEST_RR_OP(sra, x15, x5, x19, 0x0, 0x8000000000000000, 0x0000000000000012, x20, 40, x25)

# opcode: sra ; op1:x29; op2:x23; dest:x27; op1val:0x0000000000000000;  op2val:0x0000000000000004
TEST_RR_OP(sra, x27, x29, x23, 0x0, 0x0000000000000000, 0x0000000000000004, x20, 48, x25)

# opcode: sra ; op1:x3; op2:x10; dest:x18; op1val:0x7fffffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x18, x3, x10, 0xffffff, 0x7fffffffffffffff, 0x0000000000000008, x20, 56, x25)

# opcode: sra ; op1:x30; op2:x13; dest:x6; op1val:0x0000000080000000;  op2val:0x0000000000000002
TEST_RR_OP(sra, x6, x30, x13, 0x20000000, 0x0000000080000000, 0x0000000000000002, x20, 64, x25)

# opcode: sra ; op1:x28; op2:x16; dest:x1; op1val:0x0000000000008000;  op2val:0x0000000000000010
TEST_RR_OP(sra, x1, x28, x16, 0x0, 0x0000000000008000, 0x0000000000000010, x20, 72, x25)

# opcode: sra ; op1:x10; op2:x29; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x29, 0x20000000, 0x0000000020000000, 0x0000000000000020, x20, 80, x25)

# opcode: sra ; op1:x8; op2:x12; dest:x28; op1val:0x0000000000000100;  op2val:0x000000000000003e
TEST_RR_OP(sra, x28, x8, x12, 0x0, 0x0000000000000100, 0x000000000000003e, x20, 88, x25)

# opcode: sra ; op1:x24; op2:x22; dest:x21; op1val:0x0000000000400000;  op2val:0x000000000000003d
TEST_RR_OP(sra, x21, x24, x22, 0x0, 0x0000000000400000, 0x000000000000003d, x20, 96, x25)
la x4,signature_x4_0

# opcode: sra ; op1:x18; op2:x5; dest:x31; op1val:0x0000000080000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x31, x18, x5, 0x10, 0x0000000080000000, 0x000000000000003b, x4, 0, x12)

# opcode: sra ; op1:x6; op2:x1; dest:x20; op1val:0x0100000000000000;  op2val:0x0000000000000037
TEST_RR_OP(sra, x20, x6, x1, 0x0, 0x0100000000000000, 0x0000000000000037, x4, 8, x12)

# opcode: sra ; op1:x16; op2:x14; dest:x3; op1val:0x0000002000000000;  op2val:0x000000000000002f
TEST_RR_OP(sra, x3, x16, x14, 0x0, 0x0000002000000000, 0x000000000000002f, x4, 16, x12)

# opcode: sra ; op1:x26; op2:x6; dest:x29; op1val:0xfffffffdffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sra, x29, x26, x6, 0x1, 0xfffffffdffffffff, 0x000000000000001f, x4, 24, x12)

# opcode: sra ; op1:x23; op2:x8; dest:x7; op1val:0x0000200000000000;  op2val:0x000000000000002a
TEST_RR_OP(sra, x7, x23, x8, 0x0, 0x0000200000000000, 0x000000000000002a, x4, 32, x12)

# opcode: sra ; op1:x15; op2:x25; dest:x16; op1val:0x0000000000000002;  op2val:0x0000000000000006
TEST_RR_OP(sra, x16, x15, x25, 0x0, 0x0000000000000002, 0x0000000000000006, x4, 40, x12)

# opcode: sra ; op1:x20; op2:x17; dest:x2; op1val:0x0000000000000004;  op2val:0x000000000000002f
TEST_RR_OP(sra, x2, x20, x17, 0x0, 0x0000000000000004, 0x000000000000002f, x4, 48, x12)

# opcode: sra ; op1:x19; op2:x20; dest:x8; op1val:0x0000000000000008;  op2val:0x000000000000000f
TEST_RR_OP(sra, x8, x19, x20, 0x0, 0x0000000000000008, 0x000000000000000f, x4, 56, x12)

# opcode: sra ; op1:x1; op2:x30; dest:x24; op1val:0x0000000000000010;  op2val:0x000000000000000a
TEST_RR_OP(sra, x24, x1, x30, 0x0, 0x0000000000000010, 0x000000000000000a, x4, 64, x12)

# opcode: sra ; op1:x11; op2:x18; dest:x25; op1val:0x0000000000000020;  op2val:0x0000000000000013
TEST_RR_OP(sra, x25, x11, x18, 0x0, 0x0000000000000020, 0x0000000000000013, x4, 72, x12)

# opcode: sra ; op1:x21; op2:x9; dest:x0; op1val:0x0000000000000040;  op2val:0x000000000000000a
TEST_RR_OP(sra, x0, x21, x9, 0x0, 0x0000000000000040, 0x000000000000000a, x4, 80, x12)

# opcode: sra ; op1:x22; op2:x21; dest:x13; op1val:0x0000000000000080;  op2val:0x000000000000003b
TEST_RR_OP(sra, x13, x22, x21, 0x0, 0x0000000000000080, 0x000000000000003b, x4, 88, x12)

# opcode: sra ; op1:x27; op2:x24; dest:x10; op1val:0x0000000000000200;  op2val:0x0000000000000020
TEST_RR_OP(sra, x10, x27, x24, 0x200, 0x0000000000000200, 0x0000000000000020, x4, 96, x12)
la x1,signature_x1_0

# opcode: sra ; op1:x2; op2:x15; dest:x19; op1val:0x0000000000000400;  op2val:0x000000000000000c
TEST_RR_OP(sra, x19, x2, x15, 0x0, 0x0000000000000400, 0x000000000000000c, x1, 0, x3)

# opcode: sra ; op1:x13; op2:x0; dest:x9; op1val:0x0000000000000800;  op2val:0x0000000000000000
TEST_RR_OP(sra, x9, x13, x0, 0x800, 0x0000000000000800, 0x0000000000000000, x1, 8, x3)

# opcode: sra ; op1:x25; op2:x26; dest:x23; op1val:0x0000000000001000;  op2val:0x0000000000000010
TEST_RR_OP(sra, x23, x25, x26, 0x0, 0x0000000000001000, 0x0000000000000010, x1, 16, x3)

# opcode: sra ; op1:x0; op2:x28; dest:x22; op1val:0x0000000000002000;  op2val:0x000000000000000d
TEST_RR_OP(sra, x22, x0, x28, 0x1, 0x0000000000002000, 0x000000000000000d, x1, 24, x3)

# opcode: sra ; op1:x17; op2:x31; dest:x5; op1val:0x0000000000004000;  op2val:0x0000000000000002
TEST_RR_OP(sra, x5, x17, x31, 0x1000, 0x0000000000004000, 0x0000000000000002, x1, 32, x3)

# opcode: sra ; op1:x12; op2:x27; dest:x30; op1val:0x0000000000010000;  op2val:0x000000000000003e
TEST_RR_OP(sra, x30, x12, x27, 0x0, 0x0000000000010000, 0x000000000000003e, x1, 40, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0x20000, 0x0000000000020000, 0x0000000000000000, x1, 48, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000040000, 0x0000000000000015, x1, 56, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000080000, 0x000000000000003b, x1, 64, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000100000, 0x000000000000003f, x1, 72, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x40, 0x0000000000200000, 0x000000000000002f, x1, 80, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0x80000, 0x0000000000800000, 0x0000000000000004, x1, 88, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x20, 0x0000000001000000, 0x0000000000000013, x1, 96, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x400, 0x0000000002000000, 0x000000000000000f, x1, 104, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x100000, 0x0000000004000000, 0x0000000000000006, x1, 112, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x200000, 0x0000000008000000, 0x0000000000000006, x1, 120, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000009
TEST_RR_OP(sra, x12, x10, x11, 0x80000, 0x0000000010000000, 0x0000000000000009, x1, 128, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x8, 0x0000000040000000, 0x000000000000003b, x1, 136, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x000000000000000c
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000100000000, 0x000000000000000c, x1, 144, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000200000000, 0x0000000000000012, x1, 152, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000009
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000400000000, 0x0000000000000009, x1, 160, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000800000000, 0x000000000000000e, x1, 168, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000000000000005, x1, 176, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000004000000000, 0x000000000000000a, x1, 184, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000008000000000, 0x0000000000000008, x1, 192, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000000000012, x1, 200, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000020000000000, 0x000000000000003b, x1, 208, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000000000, x1, 216, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000080000000000, 0x0000000000000006, x1, 224, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000100000000000, 0x000000000000003e, x1, 232, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x000000000000001f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000800000000000, 0x000000000000001f, x1, 240, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0001000000000000, 0x000000000000000a, x1, 248, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0002000000000000, 0x0000000000000037, x1, 256, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000000000015, x1, 264, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0008000000000000, 0x000000000000003f, x1, 272, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0010000000000000, 0x000000000000002f, x1, 280, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0020000000000000, 0x000000000000002a, x1, 288, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0040000000000000, 0x0000000000000013, x1, 296, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0080000000000000, 0x000000000000000b, x1, 304, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0200000000000000, 0x000000000000000d, x1, 312, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000000000000015, x1, 320, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000000002, x1, 328, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x1000000000000000, 0x0000000000000000, x1, 336, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x2000000000000000, 0x0000000000000006, x1, 344, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x4000000000000000, 0x000000000000000d, x1, 352, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xfffffbffffffffff, 0x000000000000000a, x1, 360, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0xfffffff, 0xfffff7ffffffffff, 0x0000000000000004, x1, 368, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sra, x12, x10, x11, 0xffff, 0xffffefffffffffff, 0x0000000000000010, x1, 376, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xffffdfffffffffff, 0x000000000000002f, x1, 384, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x1fffff, 0xffffbfffffffffff, 0x000000000000000b, x1, 392, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x1f, 0xffff7fffffffffff, 0x000000000000003b, x1, 400, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sra, x12, x10, x11, 0xffff, 0xfffeffffffffffff, 0x0000000000000010, x1, 408, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x7fffffff, 0xfffdffffffffffff, 0x0000000000000001, x1, 416, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xfffbffffffffffff, 0x000000000000001f, x1, 424, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x7ffff, 0xfff7ffffffffffff, 0x000000000000000d, x1, 432, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1ffffff, 0xffefffffffffffff, 0x0000000000000007, x1, 440, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xffdfffffffffffff, 0x000000000000001f, x1, 448, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x1f, 0xffbfffffffffffff, 0x000000000000003b, x1, 456, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xff7fffffffffffff, 0x000000000000000f, x1, 464, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffff, 0xfeffffffffffffff, 0x0000000000000006, x1, 472, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffff, 0xfdffffffffffffff, 0x0000000000000006, x1, 480, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x7ff, 0xfbffffffffffffff, 0x0000000000000015, x1, 488, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sra, x12, x10, x11, 0x1fffffff, 0xf7ffffffffffffff, 0x0000000000000003, x1, 496, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0xffffffff, 0xefffffffffffffff, 0x0000000000000000, x1, 504, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x1fffff, 0xdfffffffffffffff, 0x000000000000000b, x1, 512, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000011
TEST_RR_OP(sra, x12, x10, x11, 0x7fff, 0xbfffffffffffffff, 0x0000000000000011, x1, 520, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x2aaaaaaa, 0x5555555555555555, 0x0000000000000001, x1, 528, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x55555, 0xaaaaaaaaaaaaaaaa, 0x000000000000000d, x1, 536, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffff, 0xfffffffffffffffe, 0x0000000000000006, x1, 544, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffff, 0xfffffffffffffffd, 0x0000000000000006, x1, 552, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xfffffffffffffffb, 0x0000000000000037, x1, 560, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x7, 0xfffffffffffffff7, 0x000000000000003d, x1, 568, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xffffffffffffffef, 0x000000000000000a, x1, 576, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x7, 0xffffffffffffffdf, 0x000000000000003d, x1, 584, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000010
TEST_RR_OP(sra, x12, x10, x11, 0xffff, 0xffffffffffffffbf, 0x0000000000000010, x1, 592, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x7fffffbf, 0xffffffffffffff7f, 0x0000000000000001, x1, 600, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x7ffff, 0xfffffffffffffeff, 0x000000000000000d, x1, 608, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000003
TEST_RR_OP(sra, x12, x10, x11, 0x1fffffbf, 0xfffffffffffffdff, 0x0000000000000003, x1, 616, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xfffffffffffffbff, 0x0000000000000037, x1, 624, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xfffffffffffff7ff, 0x000000000000003f, x1, 632, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0xffffefff, 0xffffffffffffefff, 0x0000000000000000, x1, 640, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x000000000000001f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xffffffffffffdfff, 0x000000000000001f, x1, 648, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff7f, 0xffffffffffffbfff, 0x0000000000000007, x1, 656, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x000000000000000c
TEST_RR_OP(sra, x12, x10, x11, 0xffff7, 0xffffffffffff7fff, 0x000000000000000c, x1, 664, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x1fffd, 0xfffffffffffeffff, 0x000000000000002f, x1, 672, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x000000000000000c
TEST_RR_OP(sra, x12, x10, x11, 0xfffdf, 0xfffffffffffdffff, 0x000000000000000c, x1, 680, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x1f, 0xfffffffffffbffff, 0x000000000000003b, x1, 688, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffdf, 0xfffffffffff7ffff, 0x000000000000000e, x1, 696, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x1ffdff, 0xffffffffffefffff, 0x000000000000000b, x1, 704, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x3ff7fff, 0xffffffffffdfffff, 0x0000000000000006, x1, 712, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000011
TEST_RR_OP(sra, x12, x10, x11, 0x7fdf, 0xffffffffffbfffff, 0x0000000000000011, x1, 720, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x3fdffff, 0xffffffffff7fffff, 0x0000000000000006, x1, 728, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000000c
TEST_RR_OP(sra, x12, x10, x11, 0xfefff, 0xfffffffffeffffff, 0x000000000000000c, x1, 736, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x7, 0xfffffffffdffffff, 0x000000000000003d, x1, 744, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x3efffff, 0xfffffffffbffffff, 0x0000000000000006, x1, 752, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x3dffffff, 0xfffffffff7ffffff, 0x0000000000000002, x1, 760, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000009
TEST_RR_OP(sra, x12, x10, x11, 0x77ffff, 0xffffffffefffffff, 0x0000000000000009, x1, 768, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0xdfffff, 0xffffffffdfffffff, 0x0000000000000008, x1, 776, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x5ffffff, 0xffffffffbfffffff, 0x0000000000000005, x1, 784, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xffffffff7fffffff, 0x000000000000003e, x1, 792, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sra, x12, x10, x11, 0xfffff, 0xfffffffeffffffff, 0x000000000000000c, x1, 800, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0xfffffff, 0xfffffffbffffffff, 0x0000000000000004, x1, 808, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xfffffff7ffffffff, 0x000000000000000f, x1, 816, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x3, 0xffffffefffffffff, 0x000000000000003e, x1, 824, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0xffffff, 0xffffffdfffffffff, 0x0000000000000008, x1, 832, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x7ffffff, 0xffffffbfffffffff, 0x0000000000000005, x1, 840, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xffffff7fffffffff, 0x000000000000000a, x1, 848, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sra, x12, x10, x11, 0xffff, 0xfffffeffffffffff, 0x0000000000000010, x1, 856, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x7ff, 0xffffffffffffffff, 0x0000000000000015, x1, 864, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0xffffffff, 0xfffffdffffffffff, 0x0000000000000000, x1, 872, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000400000000000, 0x0000000000000000, x1, 880, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000000001, 0x0000000000000001, x1, 888, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000000040, 0x000000000000000a, x1, 896, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0x800, 0x0000000000000800, 0x0000000000000000, x1, 904, x3)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0x0000000000002000, 0x000000000000000d, x1, 912, x3)
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

signature_x20_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x20_1:
    .fill 13*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 13*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 115*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
