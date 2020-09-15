
#This assembly file tests the sllw instruction of the RISC-V i extension for the sllw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sllw)

la x22,signature_x22_1

# opcode: sllw ; op1:x11; op2:x8; dest:x11; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x11, x11, x8, 0xfffffbffffffff80, 0xfffffff7ffffffff, 0x0000000000000007, x22, 0, x5)

# opcode: sllw ; op1:x28; op2:x18; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x28, x18, 0x20000000, 0x0000000000200000, 0x0000000000000008, x22, 8, x5)

# opcode: sllw ; op1:x6; op2:x6; dest:x9; op1val:0xffffffffffffffef;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x9, x6, x6, 0xffffffffffffffef, 0xffffffffffffffef, 0x0000000000000000, x22, 16, x5)

# opcode: sllw ; op1:x23; op2:x2; dest:x2; op1val:0x0000000000000100;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x2, x23, x2, 0x100, 0x0000000000000100, 0x0000000000000000, x22, 24, x5)

# opcode: sllw ; op1:x14; op2:x14; dest:x14; op1val:0x0000000000000007;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x14, x14, x14, 0x380, 0x0000000000000007, 0x0000000000000007, x22, 32, x5)

# opcode: sllw ; op1:x1; op2:x31; dest:x17; op1val:0x8000000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x17, x1, x31, 0x0, 0x8000000000000000, 0x0000000000000008, x22, 40, x5)

# opcode: sllw ; op1:x27; op2:x30; dest:x15; op1val:0x0000000000000000;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x15, x27, x30, 0x0, 0x0000000000000000, 0x0000000000000009, x22, 48, x5)

# opcode: sllw ; op1:x7; op2:x17; dest:x18; op1val:0x7fffffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x18, x7, x17, 0xffffffffffe00000, 0x7fffffffffffffff, 0x0000000000000015, x22, 56, x5)

# opcode: sllw ; op1:x10; op2:x28; dest:x13; op1val:0x0000000000000001;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x13, x10, x28, 0x40000000, 0x0000000000000001, 0x000000000000001e, x22, 64, x5)

# opcode: sllw ; op1:x4; op2:x23; dest:x28; op1val:0xffffffffff7fffff;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x28, x4, x23, 0xfffffffffefffffe, 0xffffffffff7fffff, 0x0000000000000001, x22, 72, x5)

# opcode: sllw ; op1:x3; op2:x26; dest:x8; op1val:0x0000000000000005;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x8, x3, x26, 0x14, 0x0000000000000005, 0x0000000000000002, x22, 80, x5)

# opcode: sllw ; op1:x12; op2:x7; dest:x27; op1val:0xfffffffffffffeff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x27, x12, x7, 0xffffffffffffeff0, 0xfffffffffffffeff, 0x0000000000000004, x22, 88, x5)

# opcode: sllw ; op1:x17; op2:x21; dest:x10; op1val:0x0000020000000000;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x10, x17, x21, 0x200000000000000, 0x0000020000000000, 0x0000000000000010, x22, 96, x5)

# opcode: sllw ; op1:x24; op2:x0; dest:x31; op1val:0x0008000000000000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x31, x24, x0, 0x0, 0x0008000000000000, 0x000000000000001d, x22, 104, x5)

# opcode: sllw ; op1:x0; op2:x12; dest:x16; op1val:0x0000000001000000;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x16, x0, x12, 0x8000000000000, 0x0000000001000000, 0x000000000000001b, x22, 112, x5)

# opcode: sllw ; op1:x13; op2:x27; dest:x7; op1val:0xfffbffffffffffff;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x7, x13, x27, 0xffffffffff800000, 0xfffbffffffffffff, 0x0000000000000017, x22, 120, x5)

# opcode: sllw ; op1:x19; op2:x15; dest:x6; op1val:0xffefffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x6, x19, x15, 0xffffffffffff8000, 0xffefffffffffffff, 0x000000000000000f, x22, 128, x5)

# opcode: sllw ; op1:x31; op2:x11; dest:x20; op1val:0x0000000800000000;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x20, x31, x11, 0x200000000000, 0x0000000800000000, 0x000000000000000a, x22, 136, x5)

# opcode: sllw ; op1:x29; op2:x13; dest:x5; op1val:0x0000000000000002;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x5, x29, x13, 0x200, 0x0000000000000002, 0x0000000000000008, x22, 144, x7)
la x6,signature_x6_0

# opcode: sllw ; op1:x8; op2:x25; dest:x21; op1val:0x0000000000000004;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x21, x8, x25, 0x200000, 0x0000000000000004, 0x0000000000000013, x6, 0, x7)

# opcode: sllw ; op1:x26; op2:x3; dest:x23; op1val:0x0000000000000008;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x23, x26, x3, 0x10000, 0x0000000000000008, 0x000000000000000d, x6, 8, x7)

# opcode: sllw ; op1:x20; op2:x19; dest:x29; op1val:0x0000000000000010;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x29, x20, x19, 0x20, 0x0000000000000010, 0x0000000000000001, x6, 16, x7)

# opcode: sllw ; op1:x9; op2:x22; dest:x1; op1val:0x0000000000000020;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x1, x9, x22, 0x400, 0x0000000000000020, 0x0000000000000005, x6, 24, x7)

# opcode: sllw ; op1:x25; op2:x20; dest:x0; op1val:0x0000000000000040;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x0, x25, x20, 0x1000000, 0x0000000000000040, 0x0000000000000012, x6, 32, x7)

# opcode: sllw ; op1:x16; op2:x10; dest:x30; op1val:0x0000000000000080;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x30, x16, x10, 0x20000, 0x0000000000000080, 0x000000000000000a, x6, 40, x7)

# opcode: sllw ; op1:x18; op2:x29; dest:x3; op1val:0x0000000000000200;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x3, x18, x29, 0x4000, 0x0000000000000200, 0x0000000000000005, x6, 48, x7)

# opcode: sllw ; op1:x22; op2:x9; dest:x4; op1val:0x0000000000000400;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x4, x22, x9, 0x20000000000, 0x0000000000000400, 0x000000000000001f, x6, 56, x7)

# opcode: sllw ; op1:x21; op2:x16; dest:x26; op1val:0x0000000000000800;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x26, x21, x16, 0x4000000000, 0x0000000000000800, 0x000000000000001b, x6, 64, x7)

# opcode: sllw ; op1:x2; op2:x5; dest:x22; op1val:0x0000000000001000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x22, x2, x5, 0x20000000000, 0x0000000000001000, 0x000000000000001d, x6, 72, x7)

# opcode: sllw ; op1:x15; op2:x1; dest:x24; op1val:0x0000000000002000;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x24, x15, x1, 0x200000, 0x0000000000002000, 0x0000000000000008, x6, 80, x7)

# opcode: sllw ; op1:x30; op2:x4; dest:x19; op1val:0x0000000000004000;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x19, x30, x4, 0x80000, 0x0000000000004000, 0x0000000000000005, x6, 88, x7)

# opcode: sllw ; op1:x5; op2:x24; dest:x25; op1val:0x0000000000008000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x25, x5, x24, 0x80000, 0x0000000000008000, 0x0000000000000004, x6, 96, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x100000, 0x0000000000010000, 0x0000000000000004, x6, 104, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000, 0x0000000000020000, 0x000000000000000f, x6, 112, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x200000, 0x0000000000040000, 0x0000000000000003, x6, 120, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0x200000000, 0x0000000000080000, 0x000000000000000e, x6, 128, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000, 0x0000000000100000, 0x0000000000000013, x6, 136, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000000, 0x0000000000400000, 0x000000000000000e, x6, 144, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0x400000000000, 0x0000000000800000, 0x0000000000000017, x6, 152, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0x40000000, 0x0000000002000000, 0x0000000000000005, x6, 160, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0x20000000000, 0x0000000004000000, 0x000000000000000f, x6, 168, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000, 0x0000000008000000, 0x0000000000000005, x6, 176, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000000, 0x0000000010000000, 0x0000000000000010, x6, 184, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x200000000000, 0x0000000020000000, 0x0000000000000010, x6, 192, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0x200000000000, 0x0000000040000000, 0x000000000000000f, x6, 200, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0x10000000000, 0x0000000080000000, 0x0000000000000009, x6, 208, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000006
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000000, 0x0000000100000000, 0x0000000000000006, x6, 216, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000000000000, 0x0000000200000000, 0x000000000000001b, x6, 224, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000000, 0x0000000400000000, 0x000000000000001d, x6, 232, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000, 0x0000001000000000, 0x000000000000000b, x6, 240, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x20000000000000, 0x0000002000000000, 0x0000000000000010, x6, 248, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000000, 0x0000004000000000, 0x0000000000000000, x6, 256, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0x40000000000000, 0x0000008000000000, 0x000000000000000f, x6, 264, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000000, 0x0000010000000000, 0x0000000000000004, x6, 272, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000000, 0x0000040000000000, 0x0000000000000011, x6, 280, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000, 0x0000080000000000, 0x0000000000000008, x6, 288, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0x400000000000, 0x0000100000000000, 0x0000000000000002, x6, 296, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000000000000, 0x0000200000000000, 0x000000000000000f, x6, 304, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0x200000000000000, 0x0000400000000000, 0x000000000000000b, x6, 312, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000000000, 0x0000800000000000, 0x0000000000000003, x6, 320, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0001000000000000, 0x000000000000001f, x6, 328, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000000000, 0x0002000000000000, 0x0000000000000007, x6, 336, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000000000011, x6, 344, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0010000000000000, 0x000000000000001b, x6, 352, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0x80000000000000, 0x0020000000000000, 0x0000000000000002, x6, 360, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0040000000000000, 0x000000000000001e, x6, 368, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0080000000000000, 0x000000000000001b, x6, 376, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0100000000000000, 0x0000000000000008, x6, 384, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0200000000000000, 0x0000000000000017, x6, 392, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x2000000000000000, 0x0400000000000000, 0x0000000000000003, x6, 400, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffe0000000, 0xfffff7ffffffffff, 0x000000000000001d, x6, 408, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sllw, x12, x10, x11, 0xfffbffffffffffc0, 0xffffefffffffffff, 0x0000000000000006, x6, 416, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xfffdfffffffffff0, 0xffffdfffffffffff, 0x0000000000000004, x6, 424, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xffffbfffffffffff, 0xffffbfffffffffff, 0x0000000000000000, x6, 432, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xfff7fffffffffff0, 0xffff7fffffffffff, 0x0000000000000004, x6, 440, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffe0000000, 0xfffeffffffffffff, 0x000000000000001d, x6, 448, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffff8000000, 0xfffdffffffffffff, 0x000000000000001b, x6, 456, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffff8000, 0xfff7ffffffffffff, 0x000000000000000f, x6, 464, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffe000, 0xffdfffffffffffff, 0x000000000000000d, x6, 472, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffff80000, 0xffbfffffffffffff, 0x0000000000000013, x6, 480, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xff7fffffffffffff, 0xff7fffffffffffff, 0x0000000000000000, x6, 488, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffc0000, 0xfeffffffffffffff, 0x0000000000000012, x6, 496, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0xeffffffffffffff8, 0xfdffffffffffffff, 0x0000000000000003, x6, 504, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffff800, 0xfbffffffffffffff, 0x000000000000000b, x6, 512, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffff8000000, 0xf7ffffffffffffff, 0x000000000000001b, x6, 520, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffff8000000, 0xefffffffffffffff, 0x000000000000001b, x6, 528, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffff800, 0xdfffffffffffffff, 0x000000000000000b, x6, 536, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffff00, 0xbfffffffffffffff, 0x0000000000000008, x6, 544, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0x5555555555540000, 0x5555555555555555, 0x0000000000000012, x6, 552, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0x5555555555400000, 0xaaaaaaaaaaaaaaaa, 0x0000000000000015, x6, 560, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0800000000000000, 0x000000000000001d, x6, 568, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x1000000000000000, 0x000000000000000c, x6, 576, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x2000000000000000, 0x000000000000001f, x6, 584, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x4000000000000000, 0x0000000000000007, x6, 592, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffffff8, 0xfffffffffffffffe, 0x0000000000000002, x6, 600, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffa0000000, 0xfffffffffffffffd, 0x000000000000001d, x6, 608, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffffb00, 0xfffffffffffffffb, 0x0000000000000008, x6, 616, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffee0000, 0xfffffffffffffff7, 0x0000000000000011, x6, 624, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffef8000000, 0xffffffffffffffdf, 0x000000000000001b, x6, 632, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffff7e00000, 0xffffffffffffffbf, 0x0000000000000015, x6, 640, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffbf80000, 0xffffffffffffff7f, 0x0000000000000013, x6, 648, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffdff000, 0xfffffffffffffdff, 0x000000000000000c, x6, 656, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0xffffff7fe0000000, 0xfffffffffffffbff, 0x000000000000001d, x6, 664, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffff7ff00, 0xfffffffffffff7ff, 0x0000000000000008, x6, 672, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffefff0, 0xffffffffffffefff, 0x0000000000000004, x6, 680, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffbffe, 0xffffffffffffdfff, 0x0000000000000001, x6, 688, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffbfff0, 0xffffffffffffbfff, 0x0000000000000004, x6, 696, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffdfffc0000, 0xffffffffffff7fff, 0x0000000000000012, x6, 704, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffff7fff80000, 0xfffffffffffeffff, 0x0000000000000013, x6, 712, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffeffff80000, 0xfffffffffffdffff, 0x0000000000000013, x6, 720, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x12, x10, x11, 0xfffdffff80000000, 0xfffffffffffbffff, 0x000000000000001f, x6, 728, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffeffffe0000, 0xfffffffffff7ffff, 0x0000000000000011, x6, 736, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffff7ffff800, 0xffffffffffefffff, 0x000000000000000b, x6, 744, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffff7ffffc00, 0xffffffffffdfffff, 0x000000000000000a, x6, 752, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffbfffff0000, 0xffffffffffbfffff, 0x0000000000000010, x6, 760, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0xffff7fffff800000, 0xfffffffffeffffff, 0x0000000000000017, x6, 768, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffff7fffffc, 0xfffffffffdffffff, 0x0000000000000002, x6, 776, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0xff7fffffe0000000, 0xfffffffffbffffff, 0x000000000000001d, x6, 784, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffeffffffe00, 0xfffffffff7ffffff, 0x0000000000000009, x6, 792, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0xfff7ffffff800000, 0xffffffffefffffff, 0x0000000000000017, x6, 800, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffbffffffe000, 0xffffffffdfffffff, 0x000000000000000d, x6, 808, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0xfdfffffff8000000, 0xffffffffbfffffff, 0x000000000000001b, x6, 816, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0xffffefffffffe000, 0xffffffff7fffffff, 0x000000000000000d, x6, 824, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffeffffffff0, 0xfffffffeffffffff, 0x0000000000000004, x6, 832, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffbfffffffe0, 0xfffffffdffffffff, 0x0000000000000005, x6, 840, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0xffdffffffff80000, 0xfffffffbffffffff, 0x0000000000000013, x6, 848, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xffdffffffffe0000, 0xffffffefffffffff, 0x0000000000000011, x6, 856, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xffbffffffffe0000, 0xffffffdfffffffff, 0x0000000000000011, x6, 864, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0xffdfffffffff8000, 0xffffffbfffffffff, 0x000000000000000f, x6, 872, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xffdfffffffffc000, 0xffffff7fffffffff, 0x000000000000000e, x6, 880, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffe0000000, 0xfffffeffffffffff, 0x000000000000001d, x6, 888, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0xf7fffffffffc0000, 0xfffffdffffffffff, 0x0000000000000012, x6, 896, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0xffeffffffffffc00, 0xfffffbffffffffff, 0x000000000000000a, x6, 904, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffbffffffff80, 0xfffffff7ffffffff, 0x0000000000000007, x6, 912, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffffef, 0xffffffffffffffef, 0x0000000000000000, x6, 920, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0x100, 0x0000000000000100, 0x0000000000000000, x6, 928, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0x380, 0x0000000000000007, 0x0000000000000007, x6, 936, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0008000000000000, 0x000000000000001d, x6, 944, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000, 0x0000000001000000, 0x000000000000001b, x6, 952, x7)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000, 0x0000000000000040, 0x0000000000000012, x6, 960, x7)
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

signature_x22_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x22_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 121*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
