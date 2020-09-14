
#This assembly file tests the sra instruction of the RISC-V i extension for the sra covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sra)

la x17,signature_x17_1

# opcode: sra ; op1:x8; op2:x13; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x8, x13, 0x1ff, 0xfffffffdffffffff, 0x0000000000000037, x17, 0, x1)

# opcode: sra ; op1:x27; op2:x27; dest:x27; op1val:0x0000000000400000;  op2val:0x000000000000003e
TEST_RR_OP(sra, x27, x27, x27, 0x0, 0x0000000000400000, 0x000000000000003e, x17, 8, x1)

# opcode: sra ; op1:x20; op2:x22; dest:x22; op1val:0xffffffffffffffbf;  op2val:0x0000000000000000
TEST_RR_OP(sra, x22, x20, x22, 0xffffffbf, 0xffffffffffffffbf, 0x0000000000000000, x17, 16, x1)

# opcode: sra ; op1:x23; op2:x24; dest:x23; op1val:0x0000000000004000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x23, x23, x24, 0x4000, 0x0000000000004000, 0x0000000000000000, x17, 24, x1)

# opcode: sra ; op1:x21; op2:x21; dest:x19; op1val:0x0000000000000006;  op2val:0x0000000000000006
TEST_RR_OP(sra, x19, x21, x21, 0x0, 0x0000000000000006, 0x0000000000000006, x17, 32, x1)

# opcode: sra ; op1:x3; op2:x7; dest:x8; op1val:0x8000000000000000;  op2val:0x000000000000003d
TEST_RR_OP(sra, x8, x3, x7, 0x0, 0x8000000000000000, 0x000000000000003d, x17, 40, x1)

# opcode: sra ; op1:x11; op2:x26; dest:x31; op1val:0x0000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(sra, x31, x11, x26, 0x0, 0x0000000000000000, 0x0000000000000003, x17, 48, x1)

# opcode: sra ; op1:x30; op2:x16; dest:x5; op1val:0x7fffffffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sra, x5, x30, x16, 0x7fffff, 0x7fffffffffffffff, 0x0000000000000009, x17, 56, x1)

# opcode: sra ; op1:x2; op2:x23; dest:x16; op1val:0x0000000000000001;  op2val:0x0000000000000010
TEST_RR_OP(sra, x16, x2, x23, 0x0, 0x0000000000000001, 0x0000000000000010, x17, 64, x1)

# opcode: sra ; op1:x5; op2:x12; dest:x9; op1val:0xffffffffffffdfff;  op2val:0x0000000000000001
TEST_RR_OP(sra, x9, x5, x12, 0x7fffefff, 0xffffffffffffdfff, 0x0000000000000001, x17, 72, x1)

# opcode: sra ; op1:x6; op2:x29; dest:x4; op1val:0x0000000000000080;  op2val:0x0000000000000002
TEST_RR_OP(sra, x4, x6, x29, 0x20, 0x0000000000000080, 0x0000000000000002, x17, 80, x1)

# opcode: sra ; op1:x18; op2:x0; dest:x15; op1val:0x0000001000000000;  op2val:0x0000000000000004
TEST_RR_OP(sra, x15, x18, x0, 0x0, 0x0000001000000000, 0x0000000000000004, x17, 88, x1)

# opcode: sra ; op1:x25; op2:x9; dest:x6; op1val:0xfffffffffffdffff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x6, x25, x9, 0xfffdff, 0xfffffffffffdffff, 0x0000000000000008, x17, 96, x1)

# opcode: sra ; op1:x12; op2:x14; dest:x0; op1val:0x0000000008000000;  op2val:0x0000000000000020
TEST_RR_OP(sra, x0, x12, x14, 0x8000000, 0x0000000008000000, 0x0000000000000020, x17, 104, x1)

# opcode: sra ; op1:x26; op2:x10; dest:x1; op1val:0xfffffffffffffffa;  op2val:0x000000000000003b
TEST_RR_OP(sra, x1, x26, x10, 0x1f, 0xfffffffffffffffa, 0x000000000000003b, x17, 112, x18)
la x12,signature_x12_0

# opcode: sra ; op1:x0; op2:x31; dest:x26; op1val:0xfffdffffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x26, x0, x31, 0x1ffff, 0xfffdffffffffffff, 0x000000000000002f, x12, 0, x18)

# opcode: sra ; op1:x29; op2:x17; dest:x21; op1val:0xffffffffbfffffff;  op2val:0x000000000000001f
TEST_RR_OP(sra, x21, x29, x17, 0x1, 0xffffffffbfffffff, 0x000000000000001f, x12, 8, x18)

# opcode: sra ; op1:x10; op2:x3; dest:x7; op1val:0xfeffffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x7, x10, x3, 0x7ff, 0xfeffffffffffffff, 0x0000000000000015, x12, 16, x18)

# opcode: sra ; op1:x22; op2:x25; dest:x14; op1val:0x0000000000000000;  op2val:0x000000000000002a
TEST_RR_OP(sra, x14, x22, x25, 0x0, 0x0000000000000000, 0x000000000000002a, x12, 24, x18)

# opcode: sra ; op1:x14; op2:x19; dest:x2; op1val:0x0000000000000002;  op2val:0x0000000000000008
TEST_RR_OP(sra, x2, x14, x19, 0x0, 0x0000000000000002, 0x0000000000000008, x12, 32, x18)

# opcode: sra ; op1:x17; op2:x28; dest:x30; op1val:0x0000000000000004;  op2val:0x000000000000000c
TEST_RR_OP(sra, x30, x17, x28, 0x0, 0x0000000000000004, 0x000000000000000c, x12, 40, x18)

# opcode: sra ; op1:x19; op2:x11; dest:x3; op1val:0x0000000000000008;  op2val:0x0000000000000004
TEST_RR_OP(sra, x3, x19, x11, 0x0, 0x0000000000000008, 0x0000000000000004, x12, 48, x18)

# opcode: sra ; op1:x4; op2:x15; dest:x20; op1val:0x0000000000000010;  op2val:0x000000000000000d
TEST_RR_OP(sra, x20, x4, x15, 0x0, 0x0000000000000010, 0x000000000000000d, x12, 56, x18)

# opcode: sra ; op1:x28; op2:x5; dest:x24; op1val:0x0000000000000020;  op2val:0x0000000000000000
TEST_RR_OP(sra, x24, x28, x5, 0x20, 0x0000000000000020, 0x0000000000000000, x12, 64, x18)

# opcode: sra ; op1:x15; op2:x1; dest:x25; op1val:0x0000000000000040;  op2val:0x0000000000000001
TEST_RR_OP(sra, x25, x15, x1, 0x20, 0x0000000000000040, 0x0000000000000001, x12, 72, x18)

# opcode: sra ; op1:x24; op2:x2; dest:x29; op1val:0x0000000000000100;  op2val:0x000000000000000a
TEST_RR_OP(sra, x29, x24, x2, 0x0, 0x0000000000000100, 0x000000000000000a, x12, 80, x18)

# opcode: sra ; op1:x9; op2:x8; dest:x13; op1val:0x0000000000000200;  op2val:0x0000000000000037
TEST_RR_OP(sra, x13, x9, x8, 0x0, 0x0000000000000200, 0x0000000000000037, x12, 88, x18)

# opcode: sra ; op1:x16; op2:x6; dest:x28; op1val:0x0000000000000400;  op2val:0x0000000000000013
TEST_RR_OP(sra, x28, x16, x6, 0x0, 0x0000000000000400, 0x0000000000000013, x12, 96, x18)

# opcode: sra ; op1:x31; op2:x20; dest:x10; op1val:0x0000000000000800;  op2val:0x000000000000001f
TEST_RR_OP(sra, x10, x31, x20, 0x0, 0x0000000000000800, 0x000000000000001f, x12, 104, x2)

# opcode: sra ; op1:x1; op2:x30; dest:x11; op1val:0x0000000000001000;  op2val:0x000000000000002a
TEST_RR_OP(sra, x11, x1, x30, 0x4, 0x0000000000001000, 0x000000000000002a, x12, 112, x2)

# opcode: sra ; op1:x7; op2:x4; dest:x18; op1val:0x0000000000002000;  op2val:0x000000000000000a
TEST_RR_OP(sra, x18, x7, x4, 0x8, 0x0000000000002000, 0x000000000000000a, x12, 120, x2)
la x1,signature_x1_0

# opcode: sra ; op1:x13; op2:x18; dest:x17; op1val:0x0000000000008000;  op2val:0x0000000000000005
TEST_RR_OP(sra, x17, x13, x18, 0x400, 0x0000000000008000, 0x0000000000000005, x1, 0, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x800, 0x0000000000010000, 0x0000000000000005, x1, 8, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000000000003
TEST_RR_OP(sra, x12, x10, x11, 0x4000, 0x0000000000020000, 0x0000000000000003, x1, 16, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0x4000, 0x0000000000040000, 0x0000000000000004, x1, 24, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000080000, 0x000000000000003b, x1, 32, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x4000, 0x0000000000100000, 0x0000000000000006, x1, 40, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000200000, 0x000000000000003b, x1, 48, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x20, 0x0000000000800000, 0x0000000000000012, x1, 56, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0x100000, 0x0000000001000000, 0x0000000000000004, x1, 64, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000002000000, 0x000000000000003e, x1, 72, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x10000, 0x0000000004000000, 0x000000000000002a, x1, 80, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x400, 0x0000000010000000, 0x0000000000000012, x1, 88, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x400000, 0x0000000020000000, 0x0000000000000007, x1, 96, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x000000000000001f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000040000000, 0x000000000000001f, x1, 104, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x200000, 0x0000000080000000, 0x000000000000000a, x1, 112, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000000000000008, x1, 120, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000011
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000200000000, 0x0000000000000011, x1, 128, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000400000000, 0x0000000000000005, x1, 136, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000800000000, 0x0000000000000020, x1, 144, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000002000000000, 0x000000000000003b, x1, 152, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000004000000000, 0x000000000000003e, x1, 160, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000008000000000, 0x0000000000000020, x1, 168, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000000000008, x1, 176, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000020000000000, 0x000000000000000b, x1, 184, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000000012, x1, 192, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x000000000000001f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000080000000000, 0x000000000000001f, x1, 200, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000100000000000, 0x000000000000002a, x1, 208, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000200000000000, 0x000000000000000f, x1, 216, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000400000000000, 0x000000000000000b, x1, 224, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000800000000000, 0x000000000000003e, x1, 232, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000001
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0001000000000000, 0x0000000000000001, x1, 240, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0002000000000000, 0x000000000000000f, x1, 248, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0004000000000000, 0x000000000000000e, x1, 256, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0008000000000000, 0x000000000000002f, x1, 264, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0010000000000000, 0x000000000000001f, x1, 272, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0020000000000000, 0x000000000000000d, x1, 280, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0040000000000000, 0x000000000000000a, x1, 288, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000006, x1, 296, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0100000000000000, 0x000000000000003b, x1, 304, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000009
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0200000000000000, 0x0000000000000009, x1, 312, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xfffffdffffffffff, 0x000000000000000f, x1, 320, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x000000000000003d
TEST_RR_OP(sra, x12, x10, x11, 0x7, 0xfffffbffffffffff, 0x000000000000003d, x1, 328, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x1fff, 0xfffff7ffffffffff, 0x0000000000000013, x1, 336, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x1fff, 0xffffefffffffffff, 0x0000000000000013, x1, 344, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xffffdfffffffffff, 0x000000000000000f, x1, 352, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sra, x12, x10, x11, 0xfffff, 0xffffbfffffffffff, 0x000000000000000c, x1, 360, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xffff7fffffffffff, 0x0000000000000037, x1, 368, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xfffeffffffffffff, 0x000000000000003f, x1, 376, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x7ff, 0xfffbffffffffffff, 0x0000000000000015, x1, 384, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x7ffffff, 0xfff7ffffffffffff, 0x0000000000000005, x1, 392, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x1fff, 0xffefffffffffffff, 0x0000000000000013, x1, 400, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xffdfffffffffffff, 0x000000000000000a, x1, 408, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xffbfffffffffffff, 0x000000000000000f, x1, 416, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1ffffff, 0xff7fffffffffffff, 0x0000000000000007, x1, 424, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x7ffffff, 0xfdffffffffffffff, 0x0000000000000005, x1, 432, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x7ff, 0xfbffffffffffffff, 0x0000000000000015, x1, 440, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x3fffffff, 0xf7ffffffffffffff, 0x0000000000000002, x1, 448, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sra, x12, x10, x11, 0xfffff, 0xefffffffffffffff, 0x000000000000000c, x1, 456, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0xffffff, 0xdfffffffffffffff, 0x0000000000000008, x1, 464, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xbfffffffffffffff, 0x000000000000002a, x1, 472, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000002
TEST_RR_OP(sra, x12, x10, x11, 0x15555555, 0x5555555555555555, 0x0000000000000002, x1, 480, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000003b
TEST_RR_OP(sra, x12, x10, x11, 0x15, 0xaaaaaaaaaaaaaaaa, 0x000000000000003b, x1, 488, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000000000000008, x1, 496, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000000000, x1, 504, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x000000000000000b
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x1000000000000000, 0x000000000000000b, x1, 512, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x2000000000000000, 0x000000000000003e, x1, 520, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x4000000000000000, 0x000000000000000a, x1, 528, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000007
TEST_RR_OP(sra, x12, x10, x11, 0x1ffffff, 0xfffffffffffffffe, 0x0000000000000007, x1, 536, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0xfffffffd, 0xfffffffffffffffd, 0x0000000000000020, x1, 544, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000005
TEST_RR_OP(sra, x12, x10, x11, 0x7ffffff, 0xfffffffffffffffb, 0x0000000000000005, x1, 552, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x000000000000001f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xfffffffffffffff7, 0x000000000000001f, x1, 560, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xffffffffffffffef, 0x000000000000000a, x1, 568, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000003
TEST_RR_OP(sra, x12, x10, x11, 0x1ffffffb, 0xffffffffffffffdf, 0x0000000000000003, x1, 576, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xffffffffffffff7f, 0x000000000000000a, x1, 584, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000015
TEST_RR_OP(sra, x12, x10, x11, 0x7ff, 0xfffffffffffffeff, 0x0000000000000015, x1, 592, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x1fff, 0xfffffffffffffdff, 0x0000000000000013, x1, 600, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0xfffffbff, 0xfffffffffffffbff, 0x0000000000000020, x1, 608, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3ffff, 0xfffffffffffff7ff, 0x000000000000000e, x1, 616, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x3ffffb, 0xffffffffffffefff, 0x000000000000002a, x1, 624, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x000000000000000f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xffffffffffffbfff, 0x000000000000000f, x1, 632, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x1ff, 0xffffffffffff7fff, 0x0000000000000037, x1, 640, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000012
TEST_RR_OP(sra, x12, x10, x11, 0x3fff, 0xfffffffffffeffff, 0x0000000000000012, x1, 648, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x1fff, 0xfffffffffffbffff, 0x0000000000000013, x1, 656, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000011
TEST_RR_OP(sra, x12, x10, x11, 0x7ffb, 0xfffffffffff7ffff, 0x0000000000000011, x1, 664, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x1ffd, 0xffffffffffefffff, 0x0000000000000013, x1, 672, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0xffdfffff, 0xffffffffffdfffff, 0x0000000000000020, x1, 680, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x7fdff, 0xffffffffffbfffff, 0x000000000000000d, x1, 688, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x3fdfff, 0xffffffffff7fffff, 0x000000000000002a, x1, 696, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0xfefffff, 0xfffffffffeffffff, 0x0000000000000004, x1, 704, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x3f7ff, 0xfffffffffdffffff, 0x000000000000000e, x1, 712, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000037
TEST_RR_OP(sra, x12, x10, x11, 0x1f7, 0xfffffffffbffffff, 0x0000000000000037, x1, 720, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x7bfff, 0xfffffffff7ffffff, 0x000000000000000d, x1, 728, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000013
TEST_RR_OP(sra, x12, x10, x11, 0x1dff, 0xffffffffefffffff, 0x0000000000000013, x1, 736, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x000000000000000a
TEST_RR_OP(sra, x12, x10, x11, 0x37ffff, 0xffffffffdfffffff, 0x000000000000000a, x1, 744, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x000000000000000e
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xffffffff7fffffff, 0x000000000000000e, x1, 752, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0xfffffff, 0xfffffffeffffffff, 0x0000000000000004, x1, 760, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000011
TEST_RR_OP(sra, x12, x10, x11, 0x7fff, 0xfffffffbffffffff, 0x0000000000000011, x1, 768, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x000000000000003f
TEST_RR_OP(sra, x12, x10, x11, 0x1, 0xfffffff7ffffffff, 0x000000000000003f, x1, 776, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sra, x12, x10, x11, 0xffffff, 0xffffffefffffffff, 0x0000000000000008, x1, 784, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sra, x12, x10, x11, 0x7ffff, 0xffffffdfffffffff, 0x000000000000000d, x1, 792, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x000000000000002a
TEST_RR_OP(sra, x12, x10, x11, 0x3fffff, 0xffffffbfffffffff, 0x000000000000002a, x1, 800, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0xffffffff, 0xffffff7fffffffff, 0x0000000000000020, x1, 808, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sra, x12, x10, x11, 0x7fffff, 0xfffffeffffffffff, 0x0000000000000009, x1, 816, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x000000000000003e
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000400000, 0x000000000000003e, x1, 824, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0xffffffbf, 0xffffffffffffffbf, 0x0000000000000000, x1, 832, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0x0000000000000000
TEST_RR_OP(sra, x12, x10, x11, 0x4000, 0x0000000000004000, 0x0000000000000000, x1, 840, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0x0000000000000006
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000000000000006, 0x0000000000000006, x1, 848, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000004
TEST_RR_OP(sra, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000000000000004, x1, 856, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000020
TEST_RR_OP(sra, x12, x10, x11, 0x8000000, 0x0000000008000000, 0x0000000000000020, x1, 864, x2)

# opcode: sra ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sra, x12, x10, x11, 0x1ffff, 0xfffdffffffffffff, 0x000000000000002f, x1, 872, x2)
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

signature_x17_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x17_1:
    .fill 15*(XLEN/32),4,0xafacadee


signature_x12_0:
    .fill 16*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 110*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
