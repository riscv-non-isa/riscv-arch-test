
#This assembly file tests the sraw instruction of the RISC-V i extension for the sraw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sraw)

la x4,signature_x4_1

# opcode: sraw ; op1:x31; op2:x13; dest:x31; op1val:0xfffffffffffff7ff;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x31, x31, x13, 0x7ffff, 0xfffffffffffff7ff, 0x000000000000000d, x4, 0, x21)

# opcode: sraw ; op1:x12; op2:x10; dest:x11; op1val:0x0000000000000005;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x11, x12, x10, 0x0, 0x0000000000000005, 0x0000000000000013, x4, 8, x21)

# opcode: sraw ; op1:x7; op2:x7; dest:x17; op1val:0xffff7fffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x17, x7, x7, 0xffffffff, 0xffff7fffffffffff, 0x0000000000000000, x4, 16, x21)

# opcode: sraw ; op1:x0; op2:x1; dest:x1; op1val:0x0001000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x1, x0, x1, 0x0, 0x0001000000000000, 0x0000000000000000, x4, 24, x21)

# opcode: sraw ; op1:x15; op2:x15; dest:x15; op1val:0x0000000000000002;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x15, x15, x15, 0x0, 0x0000000000000002, 0x0000000000000002, x4, 32, x21)

# opcode: sraw ; op1:x28; op2:x23; dest:x10; op1val:0x8000000000000000;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x10, x28, x23, 0x0, 0x8000000000000000, 0x000000000000000b, x4, 40, x21)

# opcode: sraw ; op1:x20; op2:x18; dest:x19; op1val:0x0000000000000000;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x19, x20, x18, 0x0, 0x0000000000000000, 0x000000000000000b, x4, 48, x21)

# opcode: sraw ; op1:x29; op2:x14; dest:x28; op1val:0x7fffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sraw, x28, x29, x14, 0x3ffffff, 0x7fffffffffffffff, 0x0000000000000006, x4, 56, x21)

# opcode: sraw ; op1:x2; op2:x0; dest:x27; op1val:0x0000000000000001;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x27, x2, x0, 0x0, 0x0000000000000001, 0x0000000000000002, x4, 64, x21)

# opcode: sraw ; op1:x23; op2:x3; dest:x14; op1val:0xefffffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x14, x23, x3, 0x7fffffff, 0xefffffffffffffff, 0x0000000000000001, x4, 72, x21)

# opcode: sraw ; op1:x6; op2:x24; dest:x13; op1val:0x0000000000000200;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x13, x6, x24, 0x20, 0x0000000000000200, 0x0000000000000004, x4, 80, x21)

# opcode: sraw ; op1:x18; op2:x20; dest:x0; op1val:0xffffefffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x0, x18, x20, 0xffffff, 0xffffefffffffffff, 0x0000000000000008, x4, 88, x21)

# opcode: sraw ; op1:x13; op2:x27; dest:x29; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x29, x13, x27, 0xfff7, 0xfffffffffff7ffff, 0x0000000000000010, x4, 96, x21)

# opcode: sraw ; op1:x11; op2:x5; dest:x2; op1val:0x0000000004000000;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x2, x11, x5, 0x0, 0x0000000004000000, 0x000000000000001e, x4, 104, x21)

# opcode: sraw ; op1:x25; op2:x28; dest:x18; op1val:0x0000000000000000;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x18, x25, x28, 0x0, 0x0000000000000000, 0x000000000000001d, x4, 112, x21)

# opcode: sraw ; op1:x9; op2:x30; dest:x16; op1val:0xfffffffffffffff8;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x16, x9, x30, 0x1f, 0xfffffffffffffff8, 0x000000000000001b, x4, 120, x21)

# opcode: sraw ; op1:x10; op2:x8; dest:x23; op1val:0xfffffffdffffffff;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x23, x10, x8, 0x1ff, 0xfffffffdffffffff, 0x0000000000000017, x4, 128, x21)

# opcode: sraw ; op1:x14; op2:x22; dest:x5; op1val:0xffffffffffff7fff;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x5, x14, x22, 0x1fffe, 0xffffffffffff7fff, 0x000000000000000f, x4, 136, x15)
la x13,signature_x13_0

# opcode: sraw ; op1:x19; op2:x12; dest:x3; op1val:0x0000000000080000;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x3, x19, x12, 0x0, 0x0000000000080000, 0x0000000000000015, x13, 0, x15)

# opcode: sraw ; op1:x21; op2:x6; dest:x30; op1val:0xffffffffffffffef;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x30, x21, x6, 0x3fffff, 0xffffffffffffffef, 0x000000000000000a, x13, 8, x15)

# opcode: sraw ; op1:x16; op2:x9; dest:x26; op1val:0x0000000000000004;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x26, x16, x9, 0x1, 0x0000000000000004, 0x0000000000000002, x13, 16, x15)

# opcode: sraw ; op1:x26; op2:x21; dest:x6; op1val:0x0000000000000008;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x6, x26, x21, 0x0, 0x0000000000000008, 0x000000000000001d, x13, 24, x15)

# opcode: sraw ; op1:x17; op2:x25; dest:x9; op1val:0x0000000000000010;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x9, x17, x25, 0x0, 0x0000000000000010, 0x000000000000000a, x13, 32, x15)

# opcode: sraw ; op1:x22; op2:x4; dest:x24; op1val:0x0000000000000020;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x24, x22, x4, 0x0, 0x0000000000000020, 0x0000000000000009, x13, 40, x15)

# opcode: sraw ; op1:x24; op2:x19; dest:x25; op1val:0x0000000000000040;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x25, x24, x19, 0x0, 0x0000000000000040, 0x0000000000000008, x13, 48, x15)

# opcode: sraw ; op1:x5; op2:x17; dest:x8; op1val:0x0000000000000080;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x8, x5, x17, 0x0, 0x0000000000000080, 0x000000000000001e, x13, 56, x15)

# opcode: sraw ; op1:x8; op2:x11; dest:x21; op1val:0x0000000000000100;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x21, x8, x11, 0x8, 0x0000000000000100, 0x0000000000000005, x13, 64, x15)

# opcode: sraw ; op1:x30; op2:x29; dest:x22; op1val:0x0000000000000400;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x22, x30, x29, 0x2, 0x0000000000000400, 0x0000000000000009, x13, 72, x15)

# opcode: sraw ; op1:x1; op2:x31; dest:x12; op1val:0x0000000000000800;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x1, x31, 0x0, 0x0000000000000800, 0x000000000000001b, x13, 80, x15)

# opcode: sraw ; op1:x4; op2:x2; dest:x7; op1val:0x0000000000001000;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x7, x4, x2, 0x0, 0x0000000000001000, 0x0000000000000012, x13, 88, x15)

# opcode: sraw ; op1:x27; op2:x26; dest:x20; op1val:0x0000000000002000;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x20, x27, x26, 0x0, 0x0000000000002000, 0x0000000000000013, x13, 96, x15)

# opcode: sraw ; op1:x3; op2:x16; dest:x4; op1val:0x0000000000004000;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x4, x3, x16, 0x20, 0x0000000000004000, 0x0000000000000009, x13, 104, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000008000, 0x000000000000001b, x13, 112, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000010000, 0x0000000000000017, x13, 120, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000020000, 0x0000000000000013, x13, 128, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000040000, 0x0000000000000017, x13, 136, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0000000000000011
TEST_RR_OP(sraw, x12, x10, x11, 0x8, 0x0000000000100000, 0x0000000000000011, x13, 144, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000200000, 0x0000000000000017, x13, 152, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000400000, 0x000000000000001f, x13, 160, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x20, 0x0000000000800000, 0x0000000000000012, x13, 168, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x2, 0x0000000001000000, 0x0000000000000017, x13, 176, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0x20000, 0x0000000002000000, 0x0000000000000008, x13, 184, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0x8000000, 0x0000000008000000, 0x0000000000000000, x13, 192, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x12, x10, x11, 0x800000, 0x0000000010000000, 0x0000000000000005, x13, 200, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0x200000, 0x0000000020000000, 0x0000000000000008, x13, 208, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x20000, 0x0000000040000000, 0x000000000000000d, x13, 216, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x2, 0x0000000080000000, 0x000000000000001e, x13, 224, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000000000000002, x13, 232, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000200000000, 0x0000000000000010, x13, 240, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000400000000, 0x0000000000000013, x13, 248, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000800000000, 0x0000000000000001, x13, 256, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000000000000010, x13, 264, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000002000000000, 0x0000000000000009, x13, 272, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000004000000000, 0x000000000000001d, x13, 280, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000008000000000, 0x000000000000001b, x13, 288, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000000000003, x13, 296, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000000000000005, x13, 304, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000000015, x13, 312, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000080000000000, 0x000000000000001e, x13, 320, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000100000000000, 0x000000000000000b, x13, 328, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000000000000003, x13, 336, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x000000000000000c
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000400000000000, 0x000000000000000c, x13, 344, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000800000000000, 0x0000000000000010, x13, 352, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0002000000000000, 0x000000000000000a, x13, 360, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000000000009, x13, 368, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0008000000000000, 0x0000000000000009, x13, 376, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0010000000000000, 0x0000000000000008, x13, 384, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0020000000000000, 0x0000000000000005, x13, 392, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0040000000000000, 0x000000000000001e, x13, 400, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0080000000000000, 0x000000000000001e, x13, 408, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0100000000000000, 0x0000000000000013, x13, 416, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x7fffffff, 0xfffff7ffffffffff, 0x0000000000000001, x13, 424, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x7fffffff, 0xffffdfffffffffff, 0x0000000000000001, x13, 432, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffff, 0xffffbfffffffffff, 0x000000000000000d, x13, 440, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffff, 0xfffeffffffffffff, 0x000000000000000f, x13, 448, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffff, 0xfffdffffffffffff, 0x000000000000000f, x13, 456, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x12, x10, x11, 0x7, 0xfffbffffffffffff, 0x000000000000001d, x13, 464, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0xffffff, 0xfff7ffffffffffff, 0x0000000000000008, x13, 472, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffffff, 0xffefffffffffffff, 0x0000000000000005, x13, 480, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffffff, 0xffdfffffffffffff, 0x0000000000000005, x13, 488, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x1fffff, 0xffbfffffffffffff, 0x000000000000000b, x13, 496, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffffff, 0xff7fffffffffffff, 0x0000000000000002, x13, 504, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffff, 0xfeffffffffffffff, 0x000000000000000f, x13, 512, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0xffff, 0xfdffffffffffffff, 0x0000000000000010, x13, 520, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x1ff, 0xfbffffffffffffff, 0x0000000000000017, x13, 528, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x12, x10, x11, 0x7, 0xf7ffffffffffffff, 0x000000000000001d, x13, 536, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x3fff, 0xdfffffffffffffff, 0x0000000000000012, x13, 544, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffffff, 0xbfffffffffffffff, 0x0000000000000007, x13, 552, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x155555, 0x5555555555555555, 0x000000000000000a, x13, 560, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x2, 0xaaaaaaaaaaaaaaaa, 0x000000000000001e, x13, 568, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0200000000000000, 0x0000000000000004, x13, 576, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000000000000015, x13, 584, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0800000000000000, 0x000000000000001f, x13, 592, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x1000000000000000, 0x000000000000001b, x13, 600, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x2000000000000000, 0x0000000000000003, x13, 608, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x4000000000000000, 0x000000000000001f, x13, 616, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x1f, 0xfffffffffffffffe, 0x000000000000001b, x13, 624, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffffff, 0xfffffffffffffffd, 0x0000000000000005, x13, 632, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffff, 0xfffffffffffffffb, 0x000000000000000d, x13, 640, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x000000000000000e
TEST_RR_OP(sraw, x12, x10, x11, 0x3ffff, 0xfffffffffffffff7, 0x000000000000000e, x13, 648, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffffff, 0xffffffffffffffdf, 0x0000000000000007, x13, 656, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x1fffff, 0xffffffffffffffbf, 0x000000000000000b, x13, 664, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x12, x10, x11, 0x7fffff, 0xffffffffffffff7f, 0x0000000000000009, x13, 672, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x12, x10, x11, 0x7, 0xfffffffffffffeff, 0x000000000000001d, x13, 680, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x1, 0xfffffffffffffdff, 0x000000000000001f, x13, 688, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffff, 0xfffffffffffffbff, 0x000000000000000d, x13, 696, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x7ff, 0xffffffffffffefff, 0x0000000000000015, x13, 704, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0xffff, 0xffffffffffffdfff, 0x0000000000000010, x13, 712, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffff7, 0xffffffffffffbfff, 0x000000000000000b, x13, 720, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x1f, 0xfffffffffffeffff, 0x000000000000001b, x13, 728, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffefff, 0xfffffffffffdffff, 0x0000000000000005, x13, 736, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x7ff, 0xfffffffffffbffff, 0x0000000000000015, x13, 744, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x3, 0xffffffffffefffff, 0x000000000000001e, x13, 752, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0xffdfff, 0xffffffffffdfffff, 0x0000000000000008, x13, 760, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x7fdff, 0xffffffffffbfffff, 0x000000000000000d, x13, 768, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x7fbff, 0xffffffffff7fffff, 0x000000000000000d, x13, 776, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x3fbfff, 0xfffffffffeffffff, 0x000000000000000a, x13, 784, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x000000000000000c
TEST_RR_OP(sraw, x12, x10, x11, 0xfdfff, 0xfffffffffdffffff, 0x000000000000000c, x13, 792, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x7df, 0xfffffffffbffffff, 0x0000000000000015, x13, 800, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x1e, 0xfffffffff7ffffff, 0x000000000000001b, x13, 808, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x77ffffff, 0xffffffffefffffff, 0x0000000000000001, x13, 816, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x6ffff, 0xffffffffdfffffff, 0x000000000000000d, x13, 824, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0xbfff, 0xffffffffbfffffff, 0x0000000000000010, x13, 832, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x1fff, 0xffffffff7fffffff, 0x0000000000000012, x13, 840, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffff, 0xfffffffeffffffff, 0x000000000000000d, x13, 848, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sraw, x12, x10, x11, 0x3ffff, 0xfffffffbffffffff, 0x000000000000000e, x13, 856, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0xffffffff, 0xfffffff7ffffffff, 0x0000000000000000, x13, 864, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x12, x10, x11, 0x1fff, 0xffffffefffffffff, 0x0000000000000013, x13, 872, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x1fffff, 0xffffffdfffffffff, 0x000000000000000b, x13, 880, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0xfffffff, 0xffffffbfffffffff, 0x0000000000000004, x13, 888, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x7ff, 0xffffff7fffffffff, 0x0000000000000015, x13, 896, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x1f, 0xfffffeffffffffff, 0x000000000000001b, x13, 904, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x12, x10, x11, 0x7, 0xfffffdffffffffff, 0x000000000000001d, x13, 912, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0xffffff, 0xfffffbffffffffff, 0x0000000000000008, x13, 920, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffff, 0xfffffffffffff7ff, 0x000000000000000d, x13, 928, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0xffffffff, 0xffff7fffffffffff, 0x0000000000000000, x13, 936, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0001000000000000, 0x0000000000000000, x13, 944, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000000002, 0x0000000000000002, x13, 952, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000000001, 0x0000000000000002, x13, 960, x15)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0xffffff, 0xffffefffffffffff, 0x0000000000000008, x13, 968, x15)
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
    .fill 18*(XLEN/32),4,0xafacadee


signature_x13_0:
    .fill 122*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
