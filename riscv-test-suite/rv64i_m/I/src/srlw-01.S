
#This assembly file tests the srlw instruction of the RISC-V i extension for the srlw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",srlw)

la x4,signature_x4_1

# opcode: srlw ; op1:x23; op2:x2; dest:x23; op1val:0xfffffdffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x23, x23, x2, 0x1fff, 0xfffffdffffffffff, 0x0000000000000013, x4, 0, x6)

# opcode: srlw ; op1:x16; op2:x1; dest:x14; op1val:0x0000000400000000;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x14, x16, x1, 0x0, 0x0000000400000000, 0x0000000000000013, x4, 8, x6)

# opcode: srlw ; op1:x13; op2:x13; dest:x2; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x2, x13, x13, 0xffffffff, 0xfffff7ffffffffff, 0x0000000000000000, x4, 16, x6)

# opcode: srlw ; op1:x17; op2:x31; dest:x31; op1val:0x0000000080000000;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x31, x17, x31, 0x80000000, 0x0000000080000000, 0x0000000000000000, x4, 24, x6)

# opcode: srlw ; op1:x20; op2:x20; dest:x20; op1val:0x0000000000000009;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x20, x20, x20, 0x0, 0x0000000000000009, 0x0000000000000009, x4, 32, x6)

# opcode: srlw ; op1:x12; op2:x3; dest:x24; op1val:0x8000000000000000;  op2val:0x0000000000000017
TEST_RR_OP(srlw, x24, x12, x3, 0x0, 0x8000000000000000, 0x0000000000000017, x4, 40, x6)

# opcode: srlw ; op1:x5; op2:x28; dest:x7; op1val:0x0000000000000000;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x7, x5, x28, 0x0, 0x0000000000000000, 0x0000000000000013, x4, 48, x6)

# opcode: srlw ; op1:x14; op2:x5; dest:x19; op1val:0x7fffffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x19, x14, x5, 0xffff, 0x7fffffffffffffff, 0x0000000000000010, x4, 56, x6)

# opcode: srlw ; op1:x0; op2:x12; dest:x27; op1val:0x0000000000000001;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x27, x0, x12, 0x0, 0x0000000000000001, 0x0000000000000009, x4, 64, x6)

# opcode: srlw ; op1:x24; op2:x11; dest:x16; op1val:0xffffffffffffbfff;  op2val:0x0000000000000001
TEST_RR_OP(srlw, x16, x24, x11, 0x7fffdfff, 0xffffffffffffbfff, 0x0000000000000001, x4, 72, x6)

# opcode: srlw ; op1:x26; op2:x10; dest:x30; op1val:0xffffffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x30, x26, x10, 0x3fffffff, 0xffffffffffffffff, 0x0000000000000002, x4, 80, x6)

# opcode: srlw ; op1:x2; op2:x15; dest:x28; op1val:0xfffffeffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x28, x2, x15, 0xfffffff, 0xfffffeffffffffff, 0x0000000000000004, x4, 88, x6)

# opcode: srlw ; op1:x29; op2:x14; dest:x21; op1val:0xffffffffffffffef;  op2val:0x0000000000000008
TEST_RR_OP(srlw, x21, x29, x14, 0xffffff, 0xffffffffffffffef, 0x0000000000000008, x4, 96, x6)

# opcode: srlw ; op1:x22; op2:x30; dest:x25; op1val:0x0000000800000000;  op2val:0x000000000000001e
TEST_RR_OP(srlw, x25, x22, x30, 0x0, 0x0000000800000000, 0x000000000000001e, x4, 104, x6)

# opcode: srlw ; op1:x30; op2:x18; dest:x5; op1val:0xfffffffffffbffff;  op2val:0x000000000000001d
TEST_RR_OP(srlw, x5, x30, x18, 0x7, 0xfffffffffffbffff, 0x000000000000001d, x4, 112, x6)

# opcode: srlw ; op1:x19; op2:x9; dest:x17; op1val:0xfffffbffffffffff;  op2val:0x000000000000001b
TEST_RR_OP(srlw, x17, x19, x9, 0x1f, 0xfffffbffffffffff, 0x000000000000001b, x4, 120, x5)
la x2,signature_x2_0

# opcode: srlw ; op1:x1; op2:x0; dest:x29; op1val:0xfffffffffbffffff;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x29, x1, x0, 0x1f7ff, 0xfffffffffbffffff, 0x000000000000000f, x2, 0, x5)

# opcode: srlw ; op1:x21; op2:x8; dest:x12; op1val:0x0000000000000100;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x12, x21, x8, 0x0, 0x0000000000000100, 0x0000000000000015, x2, 8, x5)

# opcode: srlw ; op1:x15; op2:x29; dest:x10; op1val:0x0000020000000000;  op2val:0x000000000000000a
TEST_RR_OP(srlw, x10, x15, x29, 0x0, 0x0000020000000000, 0x000000000000000a, x2, 16, x5)

# opcode: srlw ; op1:x4; op2:x21; dest:x15; op1val:0x0000000000000002;  op2val:0x0000000000000003
TEST_RR_OP(srlw, x15, x4, x21, 0x0, 0x0000000000000002, 0x0000000000000003, x2, 24, x5)

# opcode: srlw ; op1:x3; op2:x7; dest:x6; op1val:0x0000000000000004;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x6, x3, x7, 0x0, 0x0000000000000004, 0x0000000000000009, x2, 32, x5)

# opcode: srlw ; op1:x31; op2:x24; dest:x26; op1val:0x0000000000000008;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x26, x31, x24, 0x0, 0x0000000000000008, 0x0000000000000009, x2, 40, x5)

# opcode: srlw ; op1:x11; op2:x6; dest:x3; op1val:0x0000000000000010;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x3, x11, x6, 0x0, 0x0000000000000010, 0x000000000000000d, x2, 48, x5)

# opcode: srlw ; op1:x27; op2:x17; dest:x22; op1val:0x0000000000000020;  op2val:0x000000000000000a
TEST_RR_OP(srlw, x22, x27, x17, 0x0, 0x0000000000000020, 0x000000000000000a, x2, 56, x5)

# opcode: srlw ; op1:x10; op2:x25; dest:x9; op1val:0x0000000000000040;  op2val:0x000000000000001d
TEST_RR_OP(srlw, x9, x10, x25, 0x0, 0x0000000000000040, 0x000000000000001d, x2, 64, x5)

# opcode: srlw ; op1:x6; op2:x23; dest:x8; op1val:0x0000000000000080;  op2val:0x000000000000001f
TEST_RR_OP(srlw, x8, x6, x23, 0x0, 0x0000000000000080, 0x000000000000001f, x2, 72, x5)

# opcode: srlw ; op1:x9; op2:x4; dest:x0; op1val:0x0000000000000200;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x0, x9, x4, 0x200, 0x0000000000000200, 0x0000000000000000, x2, 80, x5)

# opcode: srlw ; op1:x25; op2:x16; dest:x13; op1val:0x0000000000000400;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x13, x25, x16, 0x400, 0x0000000000000400, 0x0000000000000000, x2, 88, x5)

# opcode: srlw ; op1:x28; op2:x26; dest:x18; op1val:0x0000000000000800;  op2val:0x000000000000001b
TEST_RR_OP(srlw, x18, x28, x26, 0x0, 0x0000000000000800, 0x000000000000001b, x2, 96, x5)

# opcode: srlw ; op1:x18; op2:x27; dest:x1; op1val:0x0000000000001000;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x1, x18, x27, 0x400, 0x0000000000001000, 0x0000000000000002, x2, 104, x5)

# opcode: srlw ; op1:x7; op2:x19; dest:x11; op1val:0x0000000000002000;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x11, x7, x19, 0x10, 0x0000000000002000, 0x0000000000000009, x2, 112, x5)

# opcode: srlw ; op1:x8; op2:x22; dest:x4; op1val:0x0000000000004000;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x4, x8, x22, 0x0, 0x0000000000004000, 0x0000000000000013, x2, 120, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x12, x10, x11, 0x2000, 0x0000000000008000, 0x0000000000000002, x2, 128, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000000000017
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000000010000, 0x0000000000000017, x2, 136, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x000000000000000c
TEST_RR_OP(srlw, x12, x10, x11, 0x20, 0x0000000000020000, 0x000000000000000c, x2, 144, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000003
TEST_RR_OP(srlw, x12, x10, x11, 0x8000, 0x0000000000040000, 0x0000000000000003, x2, 152, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x000000000000000e
TEST_RR_OP(srlw, x12, x10, x11, 0x20, 0x0000000000080000, 0x000000000000000e, x2, 160, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0000000000000007
TEST_RR_OP(srlw, x12, x10, x11, 0x2000, 0x0000000000100000, 0x0000000000000007, x2, 168, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x000000000000001d
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000000200000, 0x000000000000001d, x2, 176, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x12, x10, x11, 0x100000, 0x0000000000400000, 0x0000000000000002, x2, 184, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x100, 0x0000000000800000, 0x000000000000000f, x2, 192, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000007
TEST_RR_OP(srlw, x12, x10, x11, 0x20000, 0x0000000001000000, 0x0000000000000007, x2, 200, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x000000000000000a
TEST_RR_OP(srlw, x12, x10, x11, 0x8000, 0x0000000002000000, 0x000000000000000a, x2, 208, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x000000000000000b
TEST_RR_OP(srlw, x12, x10, x11, 0x8000, 0x0000000004000000, 0x000000000000000b, x2, 216, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000003
TEST_RR_OP(srlw, x12, x10, x11, 0x1000000, 0x0000000008000000, 0x0000000000000003, x2, 224, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x000000000000000a
TEST_RR_OP(srlw, x12, x10, x11, 0x40000, 0x0000000010000000, 0x000000000000000a, x2, 232, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000005
TEST_RR_OP(srlw, x12, x10, x11, 0x1000000, 0x0000000020000000, 0x0000000000000005, x2, 240, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x12, x10, x11, 0x10000000, 0x0000000040000000, 0x0000000000000002, x2, 248, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000008
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000000000000008, x2, 256, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000011
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000200000000, 0x0000000000000011, x2, 264, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000001
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000000000000001, x2, 272, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x000000000000001e
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000002000000000, 0x000000000000001e, x2, 280, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000004000000000, 0x0000000000000004, x2, 288, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000008000000000, 0x000000000000000f, x2, 296, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000011
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000000000011, x2, 304, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000003
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000000003, x2, 312, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000080000000000, 0x000000000000000f, x2, 320, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000100000000000, 0x0000000000000015, x2, 328, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000000000000013, x2, 336, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x000000000000000a
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000400000000000, 0x000000000000000a, x2, 344, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000800000000000, 0x0000000000000013, x2, 352, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0001000000000000, 0x0000000000000010, x2, 360, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x000000000000000c
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0002000000000000, 0x000000000000000c, x2, 368, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0004000000000000, 0x000000000000000d, x2, 376, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0008000000000000, 0x0000000000000000, x2, 384, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0010000000000000, 0x0000000000000002, x2, 392, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0020000000000000, 0x0000000000000000, x2, 400, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000011
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0040000000000000, 0x0000000000000011, x2, 408, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000003
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000003, x2, 416, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x000000000000001f
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0100000000000000, 0x000000000000001f, x2, 424, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000012
TEST_RR_OP(srlw, x12, x10, x11, 0x3fff, 0xffffefffffffffff, 0x0000000000000012, x2, 432, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x12, x10, x11, 0x7ffff, 0xffffdfffffffffff, 0x000000000000000d, x2, 440, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x12, x10, x11, 0x3fffffff, 0xffffbfffffffffff, 0x0000000000000002, x2, 448, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(srlw, x12, x10, x11, 0x1fffffff, 0xffff7fffffffffff, 0x0000000000000003, x2, 456, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0xfffffff, 0xfffeffffffffffff, 0x0000000000000004, x2, 464, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(srlw, x12, x10, x11, 0x3ffffff, 0xfffdffffffffffff, 0x0000000000000006, x2, 472, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(srlw, x12, x10, x11, 0xfffff, 0xfffbffffffffffff, 0x000000000000000c, x2, 480, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0xffffffff, 0xfff7ffffffffffff, 0x0000000000000000, x2, 488, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x12, x10, x11, 0x7ff, 0xffefffffffffffff, 0x0000000000000015, x2, 496, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x12, x10, x11, 0xffff, 0xffdfffffffffffff, 0x0000000000000010, x2, 504, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x12, x10, x11, 0x3fffffff, 0xffbfffffffffffff, 0x0000000000000002, x2, 512, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x12, x10, x11, 0x7ffff, 0xff7fffffffffffff, 0x000000000000000d, x2, 520, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(srlw, x12, x10, x11, 0x3ffffff, 0xfeffffffffffffff, 0x0000000000000006, x2, 528, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(srlw, x12, x10, x11, 0x1ffffff, 0xfdffffffffffffff, 0x0000000000000007, x2, 536, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x12, x10, x11, 0x1fff, 0xfbffffffffffffff, 0x0000000000000013, x2, 544, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(srlw, x12, x10, x11, 0x1fffff, 0xf7ffffffffffffff, 0x000000000000000b, x2, 552, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(srlw, x12, x10, x11, 0x3fffff, 0xefffffffffffffff, 0x000000000000000a, x2, 560, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x12, x10, x11, 0xffff, 0xdfffffffffffffff, 0x0000000000000010, x2, 568, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(srlw, x12, x10, x11, 0x1fffffff, 0xbfffffffffffffff, 0x0000000000000003, x2, 576, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x000000000000000a
TEST_RR_OP(srlw, x12, x10, x11, 0x155555, 0x5555555555555555, 0x000000000000000a, x2, 584, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x12, x10, x11, 0xaaaa, 0xaaaaaaaaaaaaaaaa, 0x0000000000000010, x2, 592, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000017
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0200000000000000, 0x0000000000000017, x2, 600, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000008
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000000000000008, x2, 608, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000000000, x2, 616, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x1000000000000000, 0x000000000000000d, x2, 624, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x2000000000000000, 0x0000000000000000, x2, 632, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000012
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x4000000000000000, 0x0000000000000012, x2, 640, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x000000000000001b
TEST_RR_OP(srlw, x12, x10, x11, 0x1f, 0xfffffffffffffffe, 0x000000000000001b, x2, 648, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000012
TEST_RR_OP(srlw, x12, x10, x11, 0x3fff, 0xfffffffffffffffd, 0x0000000000000012, x2, 656, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0xfffffff, 0xfffffffffffffffb, 0x0000000000000004, x2, 664, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0xfffffff, 0xfffffffffffffff7, 0x0000000000000004, x2, 672, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000007
TEST_RR_OP(srlw, x12, x10, x11, 0x1ffffff, 0xffffffffffffffdf, 0x0000000000000007, x2, 680, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x12, x10, x11, 0x7fffff, 0xffffffffffffffbf, 0x0000000000000009, x2, 688, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000006
TEST_RR_OP(srlw, x12, x10, x11, 0x3fffffd, 0xffffffffffffff7f, 0x0000000000000006, x2, 696, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000007
TEST_RR_OP(srlw, x12, x10, x11, 0x1fffffd, 0xfffffffffffffeff, 0x0000000000000007, x2, 704, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x000000000000000b
TEST_RR_OP(srlw, x12, x10, x11, 0x1fffff, 0xfffffffffffffdff, 0x000000000000000b, x2, 712, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x12, x10, x11, 0x7ffffd, 0xfffffffffffffbff, 0x0000000000000009, x2, 720, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x12, x10, x11, 0x7ff, 0xfffffffffffff7ff, 0x0000000000000015, x2, 728, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000012
TEST_RR_OP(srlw, x12, x10, x11, 0x3fff, 0xffffffffffffefff, 0x0000000000000012, x2, 736, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000008
TEST_RR_OP(srlw, x12, x10, x11, 0xffffdf, 0xffffffffffffdfff, 0x0000000000000008, x2, 744, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x000000000000001d
TEST_RR_OP(srlw, x12, x10, x11, 0x7, 0xffffffffffff7fff, 0x000000000000001d, x2, 752, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x000000000000001d
TEST_RR_OP(srlw, x12, x10, x11, 0x7, 0xfffffffffffeffff, 0x000000000000001d, x2, 760, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000006
TEST_RR_OP(srlw, x12, x10, x11, 0x3fff7ff, 0xfffffffffffdffff, 0x0000000000000006, x2, 768, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x12, x10, x11, 0x7ffbf, 0xfffffffffff7ffff, 0x000000000000000d, x2, 776, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x12, x10, x11, 0x7ff, 0xffffffffffefffff, 0x0000000000000015, x2, 784, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x000000000000001e
TEST_RR_OP(srlw, x12, x10, x11, 0x3, 0xffffffffffdfffff, 0x000000000000001e, x2, 792, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x000000000000000c
TEST_RR_OP(srlw, x12, x10, x11, 0xffbff, 0xffffffffffbfffff, 0x000000000000000c, x2, 800, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000001
TEST_RR_OP(srlw, x12, x10, x11, 0x7fbfffff, 0xffffffffff7fffff, 0x0000000000000001, x2, 808, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000001f
TEST_RR_OP(srlw, x12, x10, x11, 0x1, 0xfffffffffeffffff, 0x000000000000001f, x2, 816, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000017
TEST_RR_OP(srlw, x12, x10, x11, 0x1fb, 0xfffffffffdffffff, 0x0000000000000017, x2, 824, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x12, x10, x11, 0x7bffff, 0xfffffffff7ffffff, 0x0000000000000009, x2, 832, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x000000000000000b
TEST_RR_OP(srlw, x12, x10, x11, 0x1dffff, 0xffffffffefffffff, 0x000000000000000b, x2, 840, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x000000000000000b
TEST_RR_OP(srlw, x12, x10, x11, 0x1bffff, 0xffffffffdfffffff, 0x000000000000000b, x2, 848, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x000000000000000b
TEST_RR_OP(srlw, x12, x10, x11, 0x17ffff, 0xffffffffbfffffff, 0x000000000000000b, x2, 856, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x000000000000001e
TEST_RR_OP(srlw, x12, x10, x11, 0x1, 0xffffffff7fffffff, 0x000000000000001e, x2, 864, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000011
TEST_RR_OP(srlw, x12, x10, x11, 0x7fff, 0xfffffffeffffffff, 0x0000000000000011, x2, 872, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000008
TEST_RR_OP(srlw, x12, x10, x11, 0xffffff, 0xfffffffdffffffff, 0x0000000000000008, x2, 880, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x12, x10, x11, 0x7ff, 0xfffffffbffffffff, 0x0000000000000015, x2, 888, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x12, x10, x11, 0x7ffff, 0xfffffff7ffffffff, 0x000000000000000d, x2, 896, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x000000000000001b
TEST_RR_OP(srlw, x12, x10, x11, 0x1f, 0xffffffefffffffff, 0x000000000000001b, x2, 904, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x000000000000000e
TEST_RR_OP(srlw, x12, x10, x11, 0x3ffff, 0xffffffdfffffffff, 0x000000000000000e, x2, 912, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x12, x10, x11, 0x7ffff, 0xffffffbfffffffff, 0x000000000000000d, x2, 920, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x000000000000000b
TEST_RR_OP(srlw, x12, x10, x11, 0x1fffff, 0xffffff7fffffffff, 0x000000000000000b, x2, 928, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x12, x10, x11, 0x1fff, 0xfffffdffffffffff, 0x0000000000000013, x2, 936, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0xffffffff, 0xfffff7ffffffffff, 0x0000000000000000, x2, 944, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0x80000000, 0x0000000080000000, 0x0000000000000000, x2, 952, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000000000009, 0x0000000000000009, x2, 960, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000000000001, 0x0000000000000009, x2, 968, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x1f7ff, 0xfffffffffbffffff, 0x000000000000000f, x2, 976, x5)

# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0x200, 0x0000000000000200, 0x0000000000000000, x2, 984, x5)
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
    .fill 16*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 124*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
