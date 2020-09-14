
#This assembly file tests the sll instruction of the RISC-V i extension for the sll covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sll)

la x16,signature_x16_1

# opcode: sll ; op1:x27; op2:x2; dest:x7; op1val:0xffff7fffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sll, x7, x27, x2, 0xfffefffffffffffe, 0xffff7fffffffffff, 0x0000000000000001, x16, 0, x21)

# opcode: sll ; op1:x8; op2:x8; dest:x8; op1val:0x0100000000000000;  op2val:0x000000000000002a
TEST_RR_OP(sll, x8, x8, x8, 0x0, 0x0100000000000000, 0x000000000000002a, x16, 8, x21)

# opcode: sll ; op1:x18; op2:x22; dest:x22; op1val:0xffefffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sll, x22, x18, x22, 0xffefffffffffffff, 0xffefffffffffffff, 0x0000000000000000, x16, 16, x21)

# opcode: sll ; op1:x30; op2:x25; dest:x30; op1val:0x1000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sll, x30, x30, x25, 0x1000000000000000, 0x1000000000000000, 0x0000000000000000, x16, 24, x21)

# opcode: sll ; op1:x5; op2:x5; dest:x29; op1val:0x0000000000000009;  op2val:0x0000000000000009
TEST_RR_OP(sll, x29, x5, x5, 0x1200, 0x0000000000000009, 0x0000000000000009, x16, 32, x21)

# opcode: sll ; op1:x11; op2:x30; dest:x27; op1val:0x8000000000000000;  op2val:0x0000000000000015
TEST_RR_OP(sll, x27, x11, x30, 0x0, 0x8000000000000000, 0x0000000000000015, x16, 40, x21)

# opcode: sll ; op1:x25; op2:x11; dest:x28; op1val:0x0000000000000000;  op2val:0x000000000000003d
TEST_RR_OP(sll, x28, x25, x11, 0x0, 0x0000000000000000, 0x000000000000003d, x16, 48, x21)

# opcode: sll ; op1:x0; op2:x10; dest:x25; op1val:0x7fffffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sll, x25, x0, x10, 0xfffffffffffffc00, 0x7fffffffffffffff, 0x000000000000000a, x16, 56, x21)

# opcode: sll ; op1:x31; op2:x4; dest:x10; op1val:0x0000000000000001;  op2val:0x000000000000000d
TEST_RR_OP(sll, x10, x31, x4, 0x2000, 0x0000000000000001, 0x000000000000000d, x16, 64, x21)

# opcode: sll ; op1:x22; op2:x17; dest:x9; op1val:0xfffffffffffffffa;  op2val:0x0000000000000002
TEST_RR_OP(sll, x9, x22, x17, 0xffffffffffffffe8, 0xfffffffffffffffa, 0x0000000000000002, x16, 72, x21)

# opcode: sll ; op1:x12; op2:x19; dest:x24; op1val:0x0020000000000000;  op2val:0x0000000000000004
TEST_RR_OP(sll, x24, x12, x19, 0x200000000000000, 0x0020000000000000, 0x0000000000000004, x16, 80, x21)

# opcode: sll ; op1:x29; op2:x23; dest:x3; op1val:0x0000000000000007;  op2val:0x0000000000000008
TEST_RR_OP(sll, x3, x29, x23, 0x700, 0x0000000000000007, 0x0000000000000008, x16, 88, x21)

# opcode: sll ; op1:x20; op2:x27; dest:x13; op1val:0x0000000000000002;  op2val:0x0000000000000010
TEST_RR_OP(sll, x13, x20, x27, 0x20000, 0x0000000000000002, 0x0000000000000010, x16, 96, x21)

# opcode: sll ; op1:x3; op2:x6; dest:x11; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sll, x11, x3, x6, 0xfffff7ffffffffff, 0xfffff7ffffffffff, 0x0000000000000020, x16, 104, x21)

# opcode: sll ; op1:x19; op2:x24; dest:x1; op1val:0xfffffffeffffffff;  op2val:0x000000000000003e
TEST_RR_OP(sll, x1, x19, x24, 0xbfffffffc0000000, 0xfffffffeffffffff, 0x000000000000003e, x16, 112, x21)

# opcode: sll ; op1:x15; op2:x12; dest:x14; op1val:0xffbfffffffffffff;  op2val:0x000000000000003b
TEST_RR_OP(sll, x14, x15, x12, 0xfffffffff8000000, 0xffbfffffffffffff, 0x000000000000003b, x16, 120, x21)
la x8,signature_x8_0

# opcode: sll ; op1:x7; op2:x28; dest:x4; op1val:0xffffffff7fffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x4, x7, x28, 0xffbfffffff800000, 0xffffffff7fffffff, 0x0000000000000037, x8, 0, x22)

# opcode: sll ; op1:x10; op2:x3; dest:x20; op1val:0x0000000200000000;  op2val:0x000000000000002f
TEST_RR_OP(sll, x20, x10, x3, 0x1000000000000, 0x0000000200000000, 0x000000000000002f, x8, 8, x22)

# opcode: sll ; op1:x23; op2:x0; dest:x31; op1val:0x0000000004000000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x31, x23, x0, 0x200000000000000, 0x0000000004000000, 0x000000000000001f, x8, 16, x22)

# opcode: sll ; op1:x13; op2:x9; dest:x5; op1val:0x0000000000000004;  op2val:0x0000000000000006
TEST_RR_OP(sll, x5, x13, x9, 0x100, 0x0000000000000004, 0x0000000000000006, x8, 24, x22)

# opcode: sll ; op1:x21; op2:x15; dest:x19; op1val:0x0000000000000008;  op2val:0x000000000000003f
TEST_RR_OP(sll, x19, x21, x15, 0x400000000, 0x0000000000000008, 0x000000000000003f, x8, 32, x22)

# opcode: sll ; op1:x17; op2:x16; dest:x2; op1val:0x0000000000000010;  op2val:0x0000000000000010
TEST_RR_OP(sll, x2, x17, x16, 0x100000, 0x0000000000000010, 0x0000000000000010, x8, 40, x22)

# opcode: sll ; op1:x24; op2:x18; dest:x6; op1val:0x0000000000000020;  op2val:0x000000000000000a
TEST_RR_OP(sll, x6, x24, x18, 0x8000, 0x0000000000000020, 0x000000000000000a, x8, 48, x22)

# opcode: sll ; op1:x26; op2:x7; dest:x12; op1val:0x0000000000000040;  op2val:0x000000000000000c
TEST_RR_OP(sll, x12, x26, x7, 0x40000, 0x0000000000000040, 0x000000000000000c, x8, 56, x22)

# opcode: sll ; op1:x4; op2:x13; dest:x0; op1val:0x0000000000000080;  op2val:0x0000000000000002
TEST_RR_OP(sll, x0, x4, x13, 0x200, 0x0000000000000080, 0x0000000000000002, x8, 64, x22)

# opcode: sll ; op1:x2; op2:x31; dest:x21; op1val:0x0000000000000100;  op2val:0x000000000000002a
TEST_RR_OP(sll, x21, x2, x31, 0x40000, 0x0000000000000100, 0x000000000000002a, x8, 72, x22)

# opcode: sll ; op1:x16; op2:x26; dest:x18; op1val:0x0000000000000200;  op2val:0x0000000000000010
TEST_RR_OP(sll, x18, x16, x26, 0x2000000, 0x0000000000000200, 0x0000000000000010, x8, 80, x22)

# opcode: sll ; op1:x9; op2:x21; dest:x16; op1val:0x0000000000000400;  op2val:0x000000000000002a
TEST_RR_OP(sll, x16, x9, x21, 0x100000, 0x0000000000000400, 0x000000000000002a, x8, 88, x22)

# opcode: sll ; op1:x6; op2:x14; dest:x23; op1val:0x0000000000000800;  op2val:0x0000000000000004
TEST_RR_OP(sll, x23, x6, x14, 0x8000, 0x0000000000000800, 0x0000000000000004, x8, 96, x22)

# opcode: sll ; op1:x14; op2:x29; dest:x17; op1val:0x0000000000001000;  op2val:0x0000000000000001
TEST_RR_OP(sll, x17, x14, x29, 0x2000, 0x0000000000001000, 0x0000000000000001, x8, 104, x22)

# opcode: sll ; op1:x28; op2:x20; dest:x15; op1val:0x0000000000002000;  op2val:0x000000000000000b
TEST_RR_OP(sll, x15, x28, x20, 0x1000000, 0x0000000000002000, 0x000000000000000b, x8, 112, x22)

# opcode: sll ; op1:x1; op2:x18; dest:x29; op1val:0x0000000000004000;  op2val:0x000000000000003b
TEST_RR_OP(sll, x29, x1, x18, 0x20000000000, 0x0000000000004000, 0x000000000000003b, x8, 120, x22)

# opcode: sll ; op1:x0; op2:x1; dest:x5; op1val:0x0000000000008000;  op2val:0x000000000000002a
TEST_RR_OP(sll, x5, x0, x1, 0x2000000, 0x0000000000008000, 0x000000000000002a, x8, 128, x22)

# opcode: sll ; op1:x12; op2:x21; dest:x26; op1val:0x0000000000010000;  op2val:0x000000000000000e
TEST_RR_OP(sll, x26, x12, x21, 0x40000000, 0x0000000000010000, 0x000000000000000e, x8, 136, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0x20000, 0x0000000000020000, 0x0000000000000020, x8, 144, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000015
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000, 0x0000000000040000, 0x0000000000000015, x8, 152, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x0000000000000007
TEST_RR_OP(sll, x12, x10, x11, 0x4000000, 0x0000000000080000, 0x0000000000000007, x8, 160, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000000, 0x0000000000100000, 0x000000000000001f, x8, 168, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x000000000000000c
TEST_RR_OP(sll, x12, x10, x11, 0x200000000, 0x0000000000200000, 0x000000000000000c, x8, 176, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0x20000000000000, 0x0000000000400000, 0x000000000000001f, x8, 184, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x000000000000003e
TEST_RR_OP(sll, x12, x10, x11, 0x20000000000000, 0x0000000000800000, 0x000000000000003e, x8, 192, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0x2000000, 0x0000000001000000, 0x0000000000000001, x8, 200, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0x1000000000000, 0x0000000002000000, 0x0000000000000037, x8, 208, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x000000000000000f
TEST_RR_OP(sll, x12, x10, x11, 0x40000000000, 0x0000000008000000, 0x000000000000000f, x8, 216, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000006
TEST_RR_OP(sll, x12, x10, x11, 0x400000000, 0x0000000010000000, 0x0000000000000006, x8, 224, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000, 0x0000000020000000, 0x000000000000002a, x8, 232, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000015
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000000, 0x0000000040000000, 0x0000000000000015, x8, 240, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x000000000000000a
TEST_RR_OP(sll, x12, x10, x11, 0x20000000000, 0x0000000080000000, 0x000000000000000a, x8, 248, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000000000, 0x0000000100000000, 0x000000000000001f, x8, 256, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000013
TEST_RR_OP(sll, x12, x10, x11, 0x20000000000000, 0x0000000400000000, 0x0000000000000013, x8, 264, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000004
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000, 0x0000000800000000, 0x0000000000000004, x8, 272, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0x800000000000000, 0x0000001000000000, 0x0000000000000037, x8, 280, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0x1000000000000000, 0x0000002000000000, 0x0000000000000037, x8, 288, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x000000000000003e
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0000004000000000, 0x000000000000003e, x8, 296, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000002
TEST_RR_OP(sll, x12, x10, x11, 0x20000000000, 0x0000008000000000, 0x0000000000000002, x8, 304, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0000010000000000, 0x000000000000001f, x8, 312, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0x20000000000, 0x0000020000000000, 0x0000000000000020, x8, 320, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000000037, x8, 328, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x000000000000000a
TEST_RR_OP(sll, x12, x10, x11, 0x20000000000000, 0x0000080000000000, 0x000000000000000a, x8, 336, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x000000000000002f
TEST_RR_OP(sll, x12, x10, x11, 0x800000000000000, 0x0000100000000000, 0x000000000000002f, x8, 344, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000003
TEST_RR_OP(sll, x12, x10, x11, 0x1000000000000, 0x0000200000000000, 0x0000000000000003, x8, 352, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000005
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000000, 0x0000400000000000, 0x0000000000000005, x8, 360, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0000800000000000, 0x000000000000003f, x8, 368, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0x400000000000000, 0x0001000000000000, 0x000000000000002a, x8, 376, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0002000000000000, 0x000000000000001f, x8, 384, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000011
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000000000011, x8, 392, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000000, 0x0008000000000000, 0x0000000000000020, x8, 400, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x000000000000000d
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0010000000000000, 0x000000000000000d, x8, 408, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x000000000000000a
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0040000000000000, 0x000000000000000a, x8, 416, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0080000000000000, 0x000000000000003d, x8, 424, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x000000000000000b
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0200000000000000, 0x000000000000000b, x8, 432, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sll, x12, x10, x11, 0xfff7fffffffffc00, 0xfffffdffffffffff, 0x000000000000000a, x8, 440, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffff800000, 0xfffffbffffffffff, 0x0000000000000037, x8, 448, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sll, x12, x10, x11, 0xefffffffffff0000, 0xffffefffffffffff, 0x0000000000000010, x8, 456, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffe0000000, 0xffffdfffffffffff, 0x000000000000003d, x8, 464, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sll, x12, x10, x11, 0xdfffffffffff8000, 0xffffbfffffffffff, 0x000000000000000f, x8, 472, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffff800000, 0xfffeffffffffffff, 0x0000000000000037, x8, 480, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x000000000000003b
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffff8000000, 0xfffdffffffffffff, 0x000000000000003b, x8, 488, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffff8000, 0xfffbffffffffffff, 0x000000000000002f, x8, 496, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0xffeffffffffffffe, 0xfff7ffffffffffff, 0x0000000000000001, x8, 504, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffff80000, 0xffdfffffffffffff, 0x0000000000000013, x8, 512, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0xff7fffffffffffff, 0xff7fffffffffffff, 0x0000000000000020, x8, 520, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sll, x12, x10, x11, 0xf7fffffffffffff8, 0xfeffffffffffffff, 0x0000000000000003, x8, 528, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffffc00, 0xfdffffffffffffff, 0x000000000000002a, x8, 536, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0xf7fffffffffffffe, 0xfbffffffffffffff, 0x0000000000000001, x8, 544, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffff000, 0xf7ffffffffffffff, 0x000000000000000c, x8, 552, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffffff00, 0xefffffffffffffff, 0x0000000000000008, x8, 560, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffffe000, 0xdfffffffffffffff, 0x000000000000000d, x8, 568, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffff0000, 0xbfffffffffffffff, 0x0000000000000010, x8, 576, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0xaaaaaaaa80000000, 0x5555555555555555, 0x000000000000001f, x8, 584, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000015
TEST_RR_OP(sll, x12, x10, x11, 0x5555555555400000, 0xaaaaaaaaaaaaaaaa, 0x0000000000000015, x8, 592, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x000000000000002f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0400000000000000, 0x000000000000002f, x8, 600, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000000008, x8, 608, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x2000000000000000, 0x000000000000003f, x8, 616, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x000000000000000f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x4000000000000000, 0x000000000000000f, x8, 624, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x000000000000000f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffff0000, 0xfffffffffffffffe, 0x000000000000000f, x8, 632, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000012
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffff40000, 0xfffffffffffffffd, 0x0000000000000012, x8, 640, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000013
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffd80000, 0xfffffffffffffffb, 0x0000000000000013, x8, 648, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000011
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffee0000, 0xfffffffffffffff7, 0x0000000000000011, x8, 656, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000010
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffef0000, 0xffffffffffffffef, 0x0000000000000010, x8, 664, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffef80000000, 0xffffffffffffffdf, 0x000000000000001f, x8, 672, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000003
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffffdf8, 0xffffffffffffffbf, 0x0000000000000003, x8, 680, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000010
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffff7f0000, 0xffffffffffffff7f, 0x0000000000000010, x8, 688, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000010
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffeff0000, 0xfffffffffffffeff, 0x0000000000000010, x8, 696, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x000000000000000c
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffdff000, 0xfffffffffffffdff, 0x000000000000000c, x8, 704, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000012
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffeffc0000, 0xfffffffffffffbff, 0x0000000000000012, x8, 712, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0xfffffbff80000000, 0xfffffffffffff7ff, 0x000000000000003f, x8, 720, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0xfffffdffe0000000, 0xffffffffffffefff, 0x000000000000003d, x8, 728, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000009
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffbffe00, 0xffffffffffffdfff, 0x0000000000000009, x8, 736, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0xfffff7ffe0000000, 0xffffffffffffbfff, 0x000000000000003d, x8, 744, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffff7fff, 0xffffffffffff7fff, 0x0000000000000000, x8, 752, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000009
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffdfffe00, 0xfffffffffffeffff, 0x0000000000000009, x8, 760, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0xffffbfffe0000000, 0xfffffffffffdffff, 0x000000000000003d, x8, 768, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000015
TEST_RR_OP(sll, x12, x10, x11, 0xffffff7fffe00000, 0xfffffffffffbffff, 0x0000000000000015, x8, 776, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000015
TEST_RR_OP(sll, x12, x10, x11, 0xfffffeffffe00000, 0xfffffffffff7ffff, 0x0000000000000015, x8, 784, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000005
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffdffffe0, 0xffffffffffefffff, 0x0000000000000005, x8, 792, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x000000000000000a
TEST_RR_OP(sll, x12, x10, x11, 0xffffffff7ffffc00, 0xffffffffffdfffff, 0x000000000000000a, x8, 800, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x000000000000003b
TEST_RR_OP(sll, x12, x10, x11, 0xfffdfffff8000000, 0xffffffffffbfffff, 0x000000000000003b, x8, 808, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000004
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffff7fffff0, 0xffffffffff7fffff, 0x0000000000000004, x8, 816, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000008
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffeffffff00, 0xfffffffffeffffff, 0x0000000000000008, x8, 824, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000015
TEST_RR_OP(sll, x12, x10, x11, 0xffffbfffffe00000, 0xfffffffffdffffff, 0x0000000000000015, x8, 832, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0xffffffeffffffc00, 0xfffffffffbffffff, 0x000000000000002a, x8, 840, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000012
TEST_RR_OP(sll, x12, x10, x11, 0xffffdffffffc0000, 0xfffffffff7ffffff, 0x0000000000000012, x8, 848, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffefffffff, 0xffffffffefffffff, 0x0000000000000020, x8, 856, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000003
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffefffffff8, 0xffffffffdfffffff, 0x0000000000000003, x8, 864, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0xdfffffff80000000, 0xffffffffbfffffff, 0x000000000000003f, x8, 872, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sll, x12, x10, x11, 0xffffdffffffff000, 0xfffffffdffffffff, 0x000000000000000c, x8, 880, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0x7fffffffe0000000, 0xfffffffbffffffff, 0x000000000000003d, x8, 888, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sll, x12, x10, x11, 0xffdffffffffc0000, 0xfffffff7ffffffff, 0x0000000000000012, x8, 896, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sll, x12, x10, x11, 0xfdffffffffe00000, 0xffffffefffffffff, 0x0000000000000015, x8, 904, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sll, x12, x10, x11, 0xff7ffffffffc0000, 0xffffffdfffffffff, 0x0000000000000012, x8, 912, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x000000000000003b
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffff8000000, 0xffffffbfffffffff, 0x000000000000003b, x8, 920, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sll, x12, x10, x11, 0xfdfffffffffc0000, 0xffffff7fffffffff, 0x0000000000000012, x8, 928, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffff80000000, 0xfffffeffffffffff, 0x000000000000001f, x8, 936, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0100000000000000, 0x000000000000002a, x8, 944, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0xffefffffffffffff, 0xffefffffffffffff, 0x0000000000000000, x8, 952, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0x1000000000000000, 0x1000000000000000, 0x0000000000000000, x8, 960, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0x0000000000000009
TEST_RR_OP(sll, x12, x10, x11, 0x1200, 0x0000000000000009, 0x0000000000000009, x8, 968, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffffc00, 0x7fffffffffffffff, 0x000000000000000a, x8, 976, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0x200000000000000, 0x0000000004000000, 0x000000000000001f, x8, 984, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x0000000000000002
TEST_RR_OP(sll, x12, x10, x11, 0x200, 0x0000000000000080, 0x0000000000000002, x8, 992, x22)

# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0x2000000, 0x0000000000008000, 0x000000000000002a, x8, 1000, x22)
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
    .fill 16*(XLEN/32),4,0xafacadee


signature_x8_0:
    .fill 126*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
