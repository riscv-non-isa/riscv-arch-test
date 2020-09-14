
#This assembly file tests the sllw instruction of the RISC-V i extension for the sllw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sllw)

la x19,signature_x19_1

# opcode: sllw ; op1:x11; op2:x25; dest:x30; op1val:0xfdffffffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x30, x11, x25, 0xfffffffffff80000, 0xfdffffffffffffff, 0x0000000000000013, x19, 0, x1)

# opcode: sllw ; op1:x9; op2:x9; dest:x9; op1val:0x0000040000000000;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x9, x9, x9, 0x2000000000000, 0x0000040000000000, 0x0000000000000007, x19, 8, x1)

# opcode: sllw ; op1:x14; op2:x4; dest:x4; op1val:0xfffffffffffbffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x4, x14, x4, 0xfffffffffffbffff, 0xfffffffffffbffff, 0x0000000000000000, x19, 16, x1)

# opcode: sllw ; op1:x7; op2:x23; dest:x7; op1val:0x2000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x7, x7, x23, 0x2000000000000000, 0x2000000000000000, 0x0000000000000000, x19, 24, x1)

# opcode: sllw ; op1:x21; op2:x21; dest:x3; op1val:0x0000000000000002;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x3, x21, x21, 0x8, 0x0000000000000002, 0x0000000000000002, x19, 32, x1)

# opcode: sllw ; op1:x8; op2:x16; dest:x23; op1val:0x8000000000000000;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x23, x8, x16, 0x0, 0x8000000000000000, 0x0000000000000007, x19, 40, x1)

# opcode: sllw ; op1:x4; op2:x8; dest:x26; op1val:0x0000000000000000;  op2val:0x0000000000000006
TEST_RR_OP(sllw, x26, x4, x8, 0x0, 0x0000000000000000, 0x0000000000000006, x19, 48, x1)

# opcode: sllw ; op1:x22; op2:x17; dest:x21; op1val:0x7fffffffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x21, x22, x17, 0xffffffffffffffe0, 0x7fffffffffffffff, 0x0000000000000005, x19, 56, x1)

# opcode: sllw ; op1:x12; op2:x2; dest:x20; op1val:0x0000000000000001;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x20, x12, x2, 0x20000, 0x0000000000000001, 0x0000000000000011, x19, 64, x1)

# opcode: sllw ; op1:x18; op2:x12; dest:x24; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x24, x18, x12, 0xffffffffeffffffe, 0xfffffffff7ffffff, 0x0000000000000001, x19, 72, x1)

# opcode: sllw ; op1:x13; op2:x0; dest:x8; op1val:0xffffffffffff7fff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x8, x13, x0, 0xfffffffffff7fff0, 0xffffffffffff7fff, 0x0000000000000004, x19, 80, x1)

# opcode: sllw ; op1:x31; op2:x26; dest:x17; op1val:0x0000000000000004;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x17, x31, x26, 0x400, 0x0000000000000004, 0x0000000000000008, x19, 88, x1)

# opcode: sllw ; op1:x2; op2:x10; dest:x0; op1val:0x0000000000000200;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x0, x2, x10, 0x2000000, 0x0000000000000200, 0x0000000000000010, x19, 96, x1)

# opcode: sllw ; op1:x20; op2:x15; dest:x6; op1val:0xfdffffffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x6, x20, x15, 0xffffffffc0000000, 0xfdffffffffffffff, 0x000000000000001e, x19, 104, x1)

# opcode: sllw ; op1:x17; op2:x22; dest:x27; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x27, x17, x22, 0x5555555540000000, 0xaaaaaaaaaaaaaaaa, 0x000000000000001d, x19, 112, x1)

# opcode: sllw ; op1:x16; op2:x6; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x11, x16, x6, 0x5555555550000000, 0xaaaaaaaaaaaaaaaa, 0x000000000000001b, x19, 120, x1)

# opcode: sllw ; op1:x26; op2:x30; dest:x25; op1val:0x0008000000000000;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x25, x26, x30, 0x0, 0x0008000000000000, 0x0000000000000017, x19, 128, x1)

# opcode: sllw ; op1:x15; op2:x5; dest:x18; op1val:0xfffffeffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x18, x15, x5, 0xff7fffffffff8000, 0xfffffeffffffffff, 0x000000000000000f, x19, 136, x1)

# opcode: sllw ; op1:x23; op2:x1; dest:x2; op1val:0x0000000000000400;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x2, x23, x1, 0x80000000, 0x0000000000000400, 0x0000000000000015, x19, 144, x4)
la x2,signature_x2_0

# opcode: sllw ; op1:x10; op2:x11; dest:x28; op1val:0xffffffffffff7fff;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x28, x10, x11, 0xfffffffffdfffc00, 0xffffffffffff7fff, 0x000000000000000a, x2, 0, x4)

# opcode: sllw ; op1:x1; op2:x14; dest:x12; op1val:0x0000000000000008;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x1, x14, 0x8000, 0x0000000000000008, 0x000000000000000c, x2, 8, x4)

# opcode: sllw ; op1:x5; op2:x20; dest:x13; op1val:0x0000000000000010;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x13, x5, x20, 0x800000, 0x0000000000000010, 0x0000000000000013, x2, 16, x4)

# opcode: sllw ; op1:x30; op2:x19; dest:x14; op1val:0x0000000000000020;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x14, x30, x19, 0x8000, 0x0000000000000020, 0x000000000000000a, x2, 24, x4)

# opcode: sllw ; op1:x27; op2:x7; dest:x15; op1val:0x0000000000000040;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x15, x27, x7, 0x10000, 0x0000000000000040, 0x000000000000000a, x2, 32, x4)

# opcode: sllw ; op1:x25; op2:x28; dest:x10; op1val:0x0000000000000080;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x10, x25, x28, 0x40000, 0x0000000000000080, 0x000000000000000b, x2, 40, x4)

# opcode: sllw ; op1:x29; op2:x3; dest:x31; op1val:0x0000000000000100;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x31, x29, x3, 0x20000, 0x0000000000000100, 0x0000000000000009, x2, 48, x4)

# opcode: sllw ; op1:x24; op2:x18; dest:x1; op1val:0x0000000000000800;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x1, x24, x18, 0x100000000, 0x0000000000000800, 0x0000000000000015, x2, 56, x4)

# opcode: sllw ; op1:x19; op2:x29; dest:x16; op1val:0x0000000000001000;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x16, x19, x29, 0x200000, 0x0000000000001000, 0x0000000000000009, x2, 64, x4)

# opcode: sllw ; op1:x3; op2:x13; dest:x22; op1val:0x0000000000002000;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x22, x3, x13, 0x100000000000, 0x0000000000002000, 0x000000000000001f, x2, 72, x4)

# opcode: sllw ; op1:x6; op2:x31; dest:x5; op1val:0x0000000000004000;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x5, x6, x31, 0x200000000000, 0x0000000000004000, 0x000000000000001f, x2, 80, x4)

# opcode: sllw ; op1:x28; op2:x24; dest:x19; op1val:0x0000000000008000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x19, x28, x24, 0x100000000000, 0x0000000000008000, 0x000000000000001d, x2, 88, x4)

# opcode: sllw ; op1:x0; op2:x27; dest:x29; op1val:0x0000000000010000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x29, x0, x27, 0x10000, 0x0000000000010000, 0x0000000000000000, x2, 96, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0x80000000, 0x0000000000020000, 0x000000000000000e, x2, 104, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0x100000, 0x0000000000040000, 0x0000000000000002, x2, 112, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0x2000000000, 0x0000000000080000, 0x0000000000000012, x2, 120, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0x2000000, 0x0000000000100000, 0x0000000000000005, x2, 128, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0x10000000, 0x0000000000200000, 0x0000000000000007, x2, 136, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0x10000000000000, 0x0000000000400000, 0x000000000000001e, x2, 144, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0x10000000000, 0x0000000000800000, 0x0000000000000011, x2, 152, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000000, 0x0000000001000000, 0x000000000000000e, x2, 160, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0x4000000000, 0x0000000002000000, 0x000000000000000d, x2, 168, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0x200000000000, 0x0000000004000000, 0x0000000000000013, x2, 176, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x80000000, 0x0000000008000000, 0x0000000000000004, x2, 184, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x100000000000, 0x0000000010000000, 0x0000000000000010, x2, 192, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0x80000000000, 0x0000000020000000, 0x000000000000000e, x2, 200, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0x40000000, 0x0000000040000000, 0x0000000000000000, x2, 208, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0x400000000000, 0x0000000080000000, 0x000000000000000f, x2, 216, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000, 0x0000000100000000, 0x0000000000000007, x2, 224, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000, 0x0000000200000000, 0x0000000000000012, x2, 232, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0x80000000000, 0x0000000400000000, 0x0000000000000009, x2, 240, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0x10000000000000, 0x0000000800000000, 0x0000000000000011, x2, 248, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000000, 0x0000001000000000, 0x000000000000001b, x2, 256, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0000002000000000, 0x000000000000001d, x2, 264, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0x80000000000000, 0x0000004000000000, 0x0000000000000011, x2, 272, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x80000000000, 0x0000008000000000, 0x0000000000000004, x2, 280, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0x40000000000000, 0x0000010000000000, 0x000000000000000e, x2, 288, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0000020000000000, 0x000000000000001e, x2, 296, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000000, 0x0000080000000000, 0x0000000000000010, x2, 304, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000000000000, 0x0000100000000000, 0x0000000000000010, x2, 312, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x2000000000000000, 0x0000200000000000, 0x0000000000000010, x2, 320, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0000400000000000, 0x0000000000000015, x2, 328, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000006
TEST_RR_OP(sllw, x12, x10, x11, 0x20000000000000, 0x0000800000000000, 0x0000000000000006, x2, 336, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0x2000000000000, 0x0001000000000000, 0x0000000000000001, x2, 344, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0x8000000000000, 0x0002000000000000, 0x0000000000000002, x2, 352, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0004000000000000, 0x000000000000000f, x2, 360, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0x80000000000000, 0x0010000000000000, 0x0000000000000003, x2, 368, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0020000000000000, 0x0000000000000013, x2, 376, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0040000000000000, 0x0000000000000013, x2, 384, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000017, x2, 392, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x1000000000000000, 0x0100000000000000, 0x0000000000000004, x2, 400, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0200000000000000, 0x0000000000000009, x2, 408, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0xffffbffffffffff8, 0xfffff7ffffffffff, 0x0000000000000003, x2, 416, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0xff7ffffffffff800, 0xffffefffffffffff, 0x000000000000000b, x2, 424, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0xefffffffffff8000, 0xffffdfffffffffff, 0x000000000000000f, x2, 432, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xffffbfffffffffff, 0xffffbfffffffffff, 0x0000000000000000, x2, 440, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0xbfffffffffff8000, 0xffff7fffffffffff, 0x000000000000000f, x2, 448, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xffeffffffffffff0, 0xfffeffffffffffff, 0x0000000000000004, x2, 456, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffc0000, 0xfffdffffffffffff, 0x0000000000000012, x2, 464, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0xffdffffffffffff8, 0xfffbffffffffffff, 0x0000000000000003, x2, 472, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffe00000, 0xfff7ffffffffffff, 0x0000000000000015, x2, 480, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0x7ffffffffffff800, 0xffefffffffffffff, 0x000000000000000b, x2, 488, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sllw, x12, x10, x11, 0xfefffffffffffff8, 0xffdfffffffffffff, 0x0000000000000003, x2, 496, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0x7ffffffffffffe00, 0xffbfffffffffffff, 0x0000000000000009, x2, 504, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0xbfffffffffffff80, 0xff7fffffffffffff, 0x0000000000000007, x2, 512, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffe0000, 0xfeffffffffffffff, 0x0000000000000011, x2, 520, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffffc0, 0xfbffffffffffffff, 0x0000000000000006, x2, 528, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0x7ffffffffffffff0, 0xf7ffffffffffffff, 0x0000000000000004, x2, 536, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffe0000000, 0xefffffffffffffff, 0x000000000000001d, x2, 544, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffff80, 0xdfffffffffffffff, 0x0000000000000007, x2, 552, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffff0000, 0xbfffffffffffffff, 0x0000000000000010, x2, 560, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x5555555555550000, 0x5555555555555555, 0x0000000000000010, x2, 568, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0x800000000000000, 0x0400000000000000, 0x0000000000000001, x2, 576, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x0800000000000000, 0x000000000000000c, x2, 584, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x1000000000000000, 0x0000000000000008, x2, 592, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0x0, 0x4000000000000000, 0x0000000000000008, x2, 600, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffff80000, 0xfffffffffffffffe, 0x0000000000000012, x2, 608, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffe800000, 0xfffffffffffffffd, 0x0000000000000017, x2, 616, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffffec, 0xfffffffffffffffb, 0x0000000000000002, x2, 624, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffffee, 0xfffffffffffffff7, 0x0000000000000001, x2, 632, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffef0000, 0xffffffffffffffef, 0x0000000000000010, x2, 640, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x000000000000001f
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffef80000000, 0xffffffffffffffdf, 0x000000000000001f, x2, 648, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffefc0000000, 0xffffffffffffffbf, 0x000000000000001e, x2, 656, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffffff7f, 0xffffffffffffff7f, 0x0000000000000000, x2, 664, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffeff00, 0xfffffffffffffeff, 0x0000000000000008, x2, 672, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffbfe0000, 0xfffffffffffffdff, 0x0000000000000011, x2, 680, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x000000000000000f
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffdff8000, 0xfffffffffffffbff, 0x000000000000000f, x2, 688, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffdffc00, 0xfffffffffffff7ff, 0x000000000000000a, x2, 696, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0xffffff7ff8000000, 0xffffffffffffefff, 0x000000000000001b, x2, 704, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffff7ffc000, 0xffffffffffffdfff, 0x000000000000000e, x2, 712, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000012
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffefffc0000, 0xffffffffffffbfff, 0x0000000000000012, x2, 720, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffbfffc, 0xfffffffffffeffff, 0x0000000000000002, x2, 728, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000005
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffffbfffe0, 0xfffffffffffdffff, 0x0000000000000005, x2, 736, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000008
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffff7ffff00, 0xfffffffffff7ffff, 0x0000000000000008, x2, 744, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffffdffffe00, 0xffffffffffefffff, 0x0000000000000009, x2, 752, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xffffffbffffe0000, 0xffffffffffdfffff, 0x0000000000000011, x2, 760, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x000000000000000b
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffdfffff800, 0xffffffffffbfffff, 0x000000000000000b, x2, 768, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x000000000000000c
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffff7fffff000, 0xffffffffff7fffff, 0x000000000000000c, x2, 776, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000001d
TEST_RR_OP(sllw, x12, x10, x11, 0xffdfffffe0000000, 0xfffffffffeffffff, 0x000000000000001d, x2, 784, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x000000000000000a
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffff7fffffc00, 0xfffffffffdffffff, 0x000000000000000a, x2, 792, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffbffffff, 0xfffffffffbffffff, 0x0000000000000000, x2, 800, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffefffffff0, 0xffffffffefffffff, 0x0000000000000004, x2, 808, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x000000000000001b
TEST_RR_OP(sllw, x12, x10, x11, 0xfefffffff8000000, 0xffffffffdfffffff, 0x000000000000001b, x2, 816, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffefffffffc000, 0xffffffffbfffffff, 0x000000000000000e, x2, 824, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0xffbfffffff800000, 0xffffffff7fffffff, 0x0000000000000017, x2, 832, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sllw, x12, x10, x11, 0xffffbfffffffc000, 0xfffffffeffffffff, 0x000000000000000e, x2, 840, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sllw, x12, x10, x11, 0x7fffffffc0000000, 0xfffffffdffffffff, 0x000000000000001e, x2, 848, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffff7fffffffe, 0xfffffffbffffffff, 0x0000000000000001, x2, 856, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000017
TEST_RR_OP(sllw, x12, x10, x11, 0xfbffffffff800000, 0xfffffff7ffffffff, 0x0000000000000017, x2, 864, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sllw, x12, x10, x11, 0xffffdffffffffe00, 0xffffffefffffffff, 0x0000000000000009, x2, 872, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000011
TEST_RR_OP(sllw, x12, x10, x11, 0xffbffffffffe0000, 0xffffffdfffffffff, 0x0000000000000011, x2, 880, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffefffffffffc, 0xffffffbfffffffff, 0x0000000000000002, x2, 888, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0xffefffffffffe000, 0xffffff7fffffffff, 0x000000000000000d, x2, 896, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sllw, x12, x10, x11, 0xffbfffffffffe000, 0xfffffdffffffffff, 0x000000000000000d, x2, 904, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sllw, x12, x10, x11, 0xdffffffffff80000, 0xfffffbffffffffff, 0x0000000000000013, x2, 912, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000007
TEST_RR_OP(sllw, x12, x10, x11, 0x2000000000000, 0x0000040000000000, 0x0000000000000007, x2, 920, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffffbffff, 0xfffffffffffbffff, 0x0000000000000000, x2, 928, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0x2000000000000000, 0x2000000000000000, 0x0000000000000000, x2, 936, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0000000000000002
TEST_RR_OP(sllw, x12, x10, x11, 0x8, 0x0000000000000002, 0x0000000000000002, x2, 944, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000004
TEST_RR_OP(sllw, x12, x10, x11, 0xfffffffffff7fff0, 0xffffffffffff7fff, 0x0000000000000004, x2, 952, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x0000000000000010
TEST_RR_OP(sllw, x12, x10, x11, 0x2000000, 0x0000000000000200, 0x0000000000000010, x2, 960, x4)

# opcode: sllw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000000000000
TEST_RR_OP(sllw, x12, x10, x11, 0x10000, 0x0000000000010000, 0x0000000000000000, x2, 968, x4)
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


signature_x2_0:
    .fill 122*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
