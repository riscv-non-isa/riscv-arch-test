
#This assembly file tests the sraw instruction of the RISC-V i extension for the sraw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sraw)

la x6,signature_x6_1

# opcode: sraw ; op1:x2; op2:x12; dest:x28; op1val:0xfff7ffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x28, x2, x12, 0x1ffff, 0xfff7ffffffffffff, 0x000000000000000f, x6, 0, x17)

# opcode: sraw ; op1:x29; op2:x29; dest:x29; op1val:0x0000000000001000;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x29, x29, x29, 0x2, 0x0000000000001000, 0x000000000000000b, x6, 8, x17)

# opcode: sraw ; op1:x15; op2:x8; dest:x8; op1val:0xffffff7fffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x8, x15, x8, 0xffffffff, 0xffffff7fffffffff, 0x0000000000000000, x6, 16, x17)

# opcode: sraw ; op1:x31; op2:x4; dest:x31; op1val:0x0000000000000008;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x31, x31, x4, 0x8, 0x0000000000000008, 0x0000000000000000, x6, 24, x17)

# opcode: sraw ; op1:x14; op2:x14; dest:x10; op1val:0x0000000000000002;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x10, x14, x14, 0x0, 0x0000000000000002, 0x0000000000000002, x6, 32, x17)

# opcode: sraw ; op1:x18; op2:x19; dest:x0; op1val:0x8000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x0, x18, x19, 0x0, 0x8000000000000000, 0x0000000000000000, x6, 40, x17)

# opcode: sraw ; op1:x3; op2:x0; dest:x5; op1val:0x0000000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x5, x3, x0, 0x0, 0x0000000000000000, 0x0000000000000013, x6, 48, x17)

# opcode: sraw ; op1:x11; op2:x26; dest:x1; op1val:0x7fffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x1, x11, x26, 0x1ffffff, 0x7fffffffffffffff, 0x0000000000000007, x6, 56, x17)

# opcode: sraw ; op1:x16; op2:x31; dest:x2; op1val:0x0000000000000001;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x2, x16, x31, 0x0, 0x0000000000000001, 0x0000000000000010, x6, 64, x17)

# opcode: sraw ; op1:x27; op2:x30; dest:x3; op1val:0x0000000000000040;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x3, x27, x30, 0x20, 0x0000000000000040, 0x0000000000000001, x6, 72, x17)

# opcode: sraw ; op1:x13; op2:x5; dest:x7; op1val:0x0000000000000800;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x7, x13, x5, 0x80, 0x0000000000000800, 0x0000000000000004, x6, 80, x17)

# opcode: sraw ; op1:x10; op2:x1; dest:x21; op1val:0xffffffffffff7fff;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x21, x10, x1, 0xffff7f, 0xffffffffffff7fff, 0x0000000000000008, x6, 88, x17)

# opcode: sraw ; op1:x12; op2:x23; dest:x22; op1val:0xfffffeffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x22, x12, x23, 0x3, 0xfffffeffffffffff, 0x000000000000001e, x6, 96, x17)

# opcode: sraw ; op1:x0; op2:x11; dest:x14; op1val:0x0000000000000080;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x14, x0, x11, 0x0, 0x0000000000000080, 0x000000000000001d, x6, 104, x17)

# opcode: sraw ; op1:x25; op2:x9; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x25, x9, 0x1f, 0xffffffffff7fffff, 0x000000000000001b, x6, 112, x17)

# opcode: sraw ; op1:x8; op2:x15; dest:x17; op1val:0x0080000000000000;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x17, x8, x15, 0x0, 0x0080000000000000, 0x0000000000000017, x6, 120, x14)
la x8,signature_x8_0

# opcode: sraw ; op1:x30; op2:x17; dest:x27; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x27, x30, x17, 0x7ff, 0xfffffffffff7ffff, 0x0000000000000015, x8, 0, x14)

# opcode: sraw ; op1:x23; op2:x16; dest:x15; op1val:0xffffffffffdfffff;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x15, x23, x16, 0x3ff7ff, 0xffffffffffdfffff, 0x000000000000000a, x8, 8, x14)

# opcode: sraw ; op1:x6; op2:x7; dest:x30; op1val:0x0000000000000004;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x30, x6, x7, 0x0, 0x0000000000000004, 0x000000000000000b, x8, 16, x14)

# opcode: sraw ; op1:x24; op2:x28; dest:x13; op1val:0x0000000000000010;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x13, x24, x28, 0x4, 0x0000000000000010, 0x0000000000000002, x8, 24, x14)

# opcode: sraw ; op1:x7; op2:x10; dest:x16; op1val:0x0000000000000020;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x16, x7, x10, 0x0, 0x0000000000000020, 0x000000000000000d, x8, 32, x14)

# opcode: sraw ; op1:x4; op2:x2; dest:x26; op1val:0x0000000000000100;  op2val:0x000000000000000c
TEST_RR_OP(sraw, x26, x4, x2, 0x0, 0x0000000000000100, 0x000000000000000c, x8, 40, x14)

# opcode: sraw ; op1:x28; op2:x21; dest:x4; op1val:0x0000000000000200;  op2val:0x0000000000000011
TEST_RR_OP(sraw, x4, x28, x21, 0x0, 0x0000000000000200, 0x0000000000000011, x8, 48, x14)

# opcode: sraw ; op1:x5; op2:x27; dest:x9; op1val:0x0000000000000400;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x9, x5, x27, 0x1, 0x0000000000000400, 0x000000000000000a, x8, 56, x14)

# opcode: sraw ; op1:x17; op2:x24; dest:x6; op1val:0x0000000000002000;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x6, x17, x24, 0x0, 0x0000000000002000, 0x0000000000000012, x8, 64, x14)

# opcode: sraw ; op1:x19; op2:x22; dest:x25; op1val:0x0000000000004000;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x25, x19, x22, 0x0, 0x0000000000004000, 0x000000000000001d, x8, 72, x14)

# opcode: sraw ; op1:x26; op2:x6; dest:x20; op1val:0x0000000000008000;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x20, x26, x6, 0x0, 0x0000000000008000, 0x0000000000000013, x8, 80, x14)

# opcode: sraw ; op1:x20; op2:x18; dest:x19; op1val:0x0000000000010000;  op2val:0x0000000000000006
TEST_RR_OP(sraw, x19, x20, x18, 0x400, 0x0000000000010000, 0x0000000000000006, x8, 88, x14)

# opcode: sraw ; op1:x21; op2:x20; dest:x24; op1val:0x0000000000020000;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x24, x21, x20, 0x4000, 0x0000000000020000, 0x0000000000000003, x8, 96, x14)

# opcode: sraw ; op1:x22; op2:x13; dest:x18; op1val:0x0000000000040000;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x18, x22, x13, 0x0, 0x0000000000040000, 0x000000000000001d, x8, 104, x14)

# opcode: sraw ; op1:x1; op2:x3; dest:x11; op1val:0x0000000000080000;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x11, x1, x3, 0x10, 0x0000000000080000, 0x000000000000000f, x8, 112, x14)

# opcode: sraw ; op1:x9; op2:x25; dest:x23; op1val:0x0000000000100000;  op2val:0x000000000000000e
TEST_RR_OP(sraw, x23, x9, x25, 0x40, 0x0000000000100000, 0x000000000000000e, x8, 120, x14)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x4000, 0x0000000000200000, 0x0000000000000007, x8, 128, x14)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0x40, 0x0000000000400000, 0x0000000000000010, x8, 136, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x000000000000000e
TEST_RR_OP(sraw, x12, x10, x11, 0x200, 0x0000000000800000, 0x000000000000000e, x8, 144, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x8, 0x0000000001000000, 0x0000000000000015, x8, 152, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x4000, 0x0000000002000000, 0x000000000000000b, x8, 160, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000000011
TEST_RR_OP(sraw, x12, x10, x11, 0x200, 0x0000000004000000, 0x0000000000000011, x8, 168, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0x80000, 0x0000000008000000, 0x0000000000000008, x8, 176, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x80, 0x0000000010000000, 0x0000000000000015, x8, 184, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x100, 0x0000000020000000, 0x0000000000000015, x8, 192, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0x400000, 0x0000000040000000, 0x0000000000000008, x8, 200, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x10000, 0x0000000080000000, 0x000000000000000f, x8, 208, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000000000000005, x8, 216, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000200000000, 0x0000000000000010, x8, 224, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000400000000, 0x0000000000000007, x8, 232, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000800000000, 0x0000000000000010, x8, 240, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000001000000000, 0x000000000000000f, x8, 248, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000002000000000, 0x000000000000000a, x8, 256, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000011
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000004000000000, 0x0000000000000011, x8, 264, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000008000000000, 0x0000000000000007, x8, 272, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000000000008, x8, 280, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000000000000003, x8, 288, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000040000000000, 0x000000000000000b, x8, 296, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x000000000000000c
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000080000000000, 0x000000000000000c, x8, 304, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000100000000000, 0x0000000000000017, x8, 312, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000000000000017, x8, 320, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000400000000000, 0x000000000000000f, x8, 328, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000800000000000, 0x0000000000000013, x8, 336, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0001000000000000, 0x0000000000000012, x8, 344, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0002000000000000, 0x0000000000000013, x8, 352, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000000000004, x8, 360, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0008000000000000, 0x000000000000000f, x8, 368, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0010000000000000, 0x0000000000000007, x8, 376, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0020000000000000, 0x000000000000001f, x8, 384, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0040000000000000, 0x000000000000001d, x8, 392, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0100000000000000, 0x0000000000000003, x8, 400, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0200000000000000, 0x0000000000000004, x8, 408, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x1fffffff, 0xfffff7ffffffffff, 0x0000000000000003, x8, 416, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sraw, x12, x10, x11, 0x3ffffff, 0xffffefffffffffff, 0x0000000000000006, x8, 424, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x12, x10, x11, 0x7, 0xffffdfffffffffff, 0x000000000000001d, x8, 432, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffff, 0xffffbfffffffffff, 0x000000000000000d, x8, 440, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x3fff, 0xffff7fffffffffff, 0x0000000000000012, x8, 448, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sraw, x12, x10, x11, 0x3ffffff, 0xfffeffffffffffff, 0x0000000000000006, x8, 456, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x12, x10, x11, 0x7, 0xfffdffffffffffff, 0x000000000000001d, x8, 464, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffffff, 0xfffbffffffffffff, 0x0000000000000002, x8, 472, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x3, 0xffefffffffffffff, 0x000000000000001e, x8, 480, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0xfffffff, 0xffdfffffffffffff, 0x0000000000000004, x8, 488, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffffff, 0xffbfffffffffffff, 0x0000000000000007, x8, 496, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0xffff, 0xff7fffffffffffff, 0x0000000000000010, x8, 504, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sraw, x12, x10, x11, 0x3ffff, 0xfeffffffffffffff, 0x000000000000000e, x8, 512, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffff, 0xfdffffffffffffff, 0x000000000000000a, x8, 520, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0xffffffff, 0xfbffffffffffffff, 0x0000000000000000, x8, 528, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x1, 0xf7ffffffffffffff, 0x000000000000001f, x8, 536, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x7ff, 0xefffffffffffffff, 0x0000000000000015, x8, 544, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x1ff, 0xdfffffffffffffff, 0x0000000000000017, x8, 552, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x3, 0xbfffffffffffffff, 0x000000000000001e, x8, 560, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0x5555, 0x5555555555555555, 0x0000000000000010, x8, 568, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x55555, 0xaaaaaaaaaaaaaaaa, 0x000000000000000d, x8, 576, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000000000000000, x8, 584, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0800000000000000, 0x000000000000001f, x8, 592, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000006
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x1000000000000000, 0x0000000000000006, x8, 600, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x2000000000000000, 0x000000000000001e, x8, 608, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x4000000000000000, 0x000000000000000f, x8, 616, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffffff, 0xfffffffffffffffe, 0x0000000000000002, x8, 624, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffffff, 0xfffffffffffffffd, 0x0000000000000007, x8, 632, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffff, 0xfffffffffffffffb, 0x000000000000000a, x8, 640, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x1, 0xfffffffffffffff7, 0x000000000000001f, x8, 648, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x1ff, 0xffffffffffffffef, 0x0000000000000017, x8, 656, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x1fffff, 0xffffffffffffffdf, 0x000000000000000b, x8, 664, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000006
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffffe, 0xffffffffffffffbf, 0x0000000000000006, x8, 672, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x1fffffef, 0xffffffffffffff7f, 0x0000000000000003, x8, 680, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffff, 0xfffffffffffffeff, 0x000000000000000d, x8, 688, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffff7f, 0xfffffffffffffdff, 0x0000000000000002, x8, 696, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffffdff, 0xfffffffffffffbff, 0x0000000000000001, x8, 704, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffffbff, 0xfffffffffffff7ff, 0x0000000000000001, x8, 712, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x12, x10, x11, 0x3ffffbff, 0xffffffffffffefff, 0x0000000000000002, x8, 720, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0xffffdf, 0xffffffffffffdfff, 0x0000000000000008, x8, 728, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffff7, 0xffffffffffffbfff, 0x000000000000000b, x8, 736, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0xfffeff, 0xfffffffffffeffff, 0x0000000000000008, x8, 744, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffefff, 0xfffffffffffdffff, 0x0000000000000005, x8, 752, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffdffff, 0xfffffffffffbffff, 0x0000000000000001, x8, 760, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffdffff, 0xffffffffffefffff, 0x0000000000000003, x8, 768, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x3fef, 0xffffffffffbfffff, 0x0000000000000012, x8, 776, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x1, 0xfffffffffeffffff, 0x000000000000001f, x8, 784, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000011
TEST_RR_OP(sraw, x12, x10, x11, 0x7eff, 0xfffffffffdffffff, 0x0000000000000011, x8, 792, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x3, 0xfffffffffbffffff, 0x000000000000001e, x8, 800, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x1ef, 0xfffffffff7ffffff, 0x0000000000000017, x8, 808, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x1dfff, 0xffffffffefffffff, 0x000000000000000f, x8, 816, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0xdfffffff, 0xffffffffdfffffff, 0x0000000000000000, x8, 824, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x5ff, 0xffffffffbfffffff, 0x0000000000000015, x8, 832, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0xf, 0xffffffff7fffffff, 0x000000000000001b, x8, 840, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffffff, 0xfffffffeffffffff, 0x0000000000000007, x8, 848, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0xffff, 0xfffffffdffffffff, 0x0000000000000010, x8, 856, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0xffffff, 0xfffffffbffffffff, 0x0000000000000008, x8, 864, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0xffff, 0xfffffff7ffffffff, 0x0000000000000010, x8, 872, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffffff, 0xffffffefffffffff, 0x0000000000000002, x8, 880, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffff, 0xffffffdfffffffff, 0x000000000000000a, x8, 888, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000011
TEST_RR_OP(sraw, x12, x10, x11, 0x7fff, 0xffffffbfffffffff, 0x0000000000000011, x8, 896, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x3fff, 0xfffffdffffffffff, 0x0000000000000012, x8, 904, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x7ff, 0xfffffbffffffffff, 0x0000000000000015, x8, 912, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x2, 0x0000000000001000, 0x000000000000000b, x8, 920, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0xffffffff, 0xffffff7fffffffff, 0x0000000000000000, x8, 928, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0x8, 0x0000000000000008, 0x0000000000000000, x8, 936, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000000002, 0x0000000000000002, x8, 944, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x8000000000000000, 0x0000000000000000, x8, 952, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000000000, 0x0000000000000013, x8, 960, x1)

# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000000080, 0x000000000000001d, x8, 968, x1)
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

signature_x6_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x6_1:
    .fill 16*(XLEN/32),4,0xafacadee


signature_x8_0:
    .fill 122*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
