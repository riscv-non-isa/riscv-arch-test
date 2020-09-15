
#This assembly file tests the mulw instruction of the RISC-V M extension for the mulw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*M.*);def TEST_CASE_1=True;",mulw)

la x17,signature_x17_1

# opcode: mulw ; op1:x25; op2:x15; dest:x25; op1val:0x8000000000000000;  op2val:0x0000000000000001
TEST_RR_OP(mulw, x25, x25, x15, 0x0000000000000000, 0x8000000000000000, 0x0000000000000001, x17, 0, x1)

# opcode: mulw ; op1:x14; op2:x14; dest:x14; op1val:0x0000000000000000;  op2val:0x1000000000000000
TEST_RR_OP(mulw, x14, x14, x14, 0x0000000000000000, 0x0000000000000000, 0x1000000000000000, x17, 8, x1)

# opcode: mulw ; op1:x23; op2:x22; dest:x22; op1val:0x7fffffffffffffff;  op2val:0x0000000004000000
TEST_RR_OP(mulw, x22, x23, x22, 0x0000000000000000, 0x7fffffffffffffff, 0x0000000004000000, x17, 16, x1)

# opcode: mulw ; op1:x3; op2:x3; dest:x20; op1val:0x0000000000000001;  op2val:0x0000000000100000
TEST_RR_OP(mulw, x20, x3, x3, 0x0000000000000000, 0x0000000000000001, 0x0000000000100000, x17, 24, x1)

# opcode: mulw ; op1:x16; op2:x24; dest:x15; op1val:0x0000040000000000;  op2val:0x8000000000000000
TEST_RR_OP(mulw, x15, x16, x24, 0x0000000000000000, 0x0000040000000000, 0x8000000000000000, x17, 32, x1)

# opcode: mulw ; op1:x5; op2:x2; dest:x7; op1val:0xffffbfffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(mulw, x7, x5, x2, 0x0000000000000000, 0xffffbfffffffffff, 0x0000000000000000, x17, 40, x1)

# opcode: mulw ; op1:x18; op2:x23; dest:x11; op1val:0x0000000000040000;  op2val:0x7fffffffffffffff
TEST_RR_OP(mulw, x11, x18, x23, 0x0000000000000000, 0x0000000000040000, 0x7fffffffffffffff, x17, 48, x1)

# opcode: mulw ; op1:x19; op2:x9; dest:x12; op1val:0xc000000000000000;  op2val:0xfffffffffffffffa
TEST_RR_OP(mulw, x12, x19, x9, 0x0000000000000000, 0xc000000000000000, 0xfffffffffffffffa, x17, 56, x1)

# opcode: mulw ; op1:x29; op2:x16; dest:x6; op1val:0x0000000000000020;  op2val:0x0000000000000020
TEST_RR_OP(mulw, x6, x29, x16, 0x0000000000000000, 0x0000000000000020, 0x0000000000000020, x17, 64, x1)

# opcode: mulw ; op1:x15; op2:x30; dest:x24; op1val:0x0000000000000002;  op2val:0xfffffffffffffffc
TEST_RR_OP(mulw, x24, x15, x30, 0x0000000000000000, 0x0000000000000002, 0xfffffffffffffffc, x17, 72, x1)

# opcode: mulw ; op1:x10; op2:x27; dest:x21; op1val:0x0000000000000004;  op2val:0x0000000000000008
TEST_RR_OP(mulw, x21, x10, x27, 0x0000000000000000, 0x0000000000000004, 0x0000000000000008, x17, 80, x1)

# opcode: mulw ; op1:x8; op2:x26; dest:x0; op1val:0x0000000000000008;  op2val:0x0000001000000000
TEST_RR_OP(mulw, x0, x8, x26, 0x0000000000000000, 0x0000000000000008, 0x0000001000000000, x17, 88, x1)

# opcode: mulw ; op1:x2; op2:x0; dest:x18; op1val:0x0000000000000010;  op2val:0xfffffffffffffffe
TEST_RR_OP(mulw, x18, x2, x0, 0x0000000000000000, 0x0000000000000010, 0xfffffffffffffffe, x17, 96, x1)

# opcode: mulw ; op1:x7; op2:x6; dest:x2; op1val:0x0000000000000040;  op2val:0xfffffffffffffff6
TEST_RR_OP(mulw, x2, x7, x6, 0x0000000000000000, 0x0000000000000040, 0xfffffffffffffff6, x17, 104, x1)

# opcode: mulw ; op1:x12; op2:x5; dest:x8; op1val:0x0000000000000080;  op2val:0x0000000000000009
TEST_RR_OP(mulw, x8, x12, x5, 0x0000000000000000, 0x0000000000000080, 0x0000000000000009, x17, 112, x1)

# opcode: mulw ; op1:x21; op2:x8; dest:x27; op1val:0x0000000000000100;  op2val:0x0000000000000005
TEST_RR_OP(mulw, x27, x21, x8, 0x0000000000000000, 0x0000000000000100, 0x0000000000000005, x17, 120, x1)

# opcode: mulw ; op1:x4; op2:x13; dest:x9; op1val:0x0000000000000200;  op2val:0x0000000020000000
TEST_RR_OP(mulw, x9, x4, x13, 0x0000000000000000, 0x0000000000000200, 0x0000000020000000, x17, 128, x1)

# opcode: mulw ; op1:x11; op2:x1; dest:x3; op1val:0x0000000000000400;  op2val:0xfff7ffffffffffff
TEST_RR_OP(mulw, x3, x11, x1, 0x0000000000000000, 0x0000000000000400, 0xfff7ffffffffffff, x17, 136, x8)
la x2,signature_x2_0

# opcode: mulw ; op1:x22; op2:x19; dest:x5; op1val:0x0000000000000800;  op2val:0x0000000000000005
TEST_RR_OP(mulw, x5, x22, x19, 0x0000000000000000, 0x0000000000000800, 0x0000000000000005, x2, 0, x8)

# opcode: mulw ; op1:x27; op2:x31; dest:x1; op1val:0x0000000000001000;  op2val:0xffffffffffffffef
TEST_RR_OP(mulw, x1, x27, x31, 0x0000000000000000, 0x0000000000001000, 0xffffffffffffffef, x2, 8, x8)

# opcode: mulw ; op1:x0; op2:x7; dest:x19; op1val:0x0000000000002000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(mulw, x19, x0, x7, 0x0000000000000000, 0x0000000000002000, 0xfff7ffffffffffff, x2, 16, x8)

# opcode: mulw ; op1:x13; op2:x12; dest:x16; op1val:0x0000000000004000;  op2val:0x0008000000000000
TEST_RR_OP(mulw, x16, x13, x12, 0x0000000000000000, 0x0000000000004000, 0x0008000000000000, x2, 24, x8)

# opcode: mulw ; op1:x31; op2:x17; dest:x4; op1val:0x0000000000008000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(mulw, x4, x31, x17, 0x0000000000000000, 0x0000000000008000, 0xfffffffffffff7ff, x2, 32, x8)

# opcode: mulw ; op1:x1; op2:x25; dest:x28; op1val:0x0000000000010000;  op2val:0xffffffff7fffffff
TEST_RR_OP(mulw, x28, x1, x25, 0x0000000000000000, 0x0000000000010000, 0xffffffff7fffffff, x2, 40, x8)

# opcode: mulw ; op1:x20; op2:x11; dest:x13; op1val:0x0000000000020000;  op2val:0xefffffffffffffff
TEST_RR_OP(mulw, x13, x20, x11, 0x0000000000000000, 0x0000000000020000, 0xefffffffffffffff, x2, 48, x8)

# opcode: mulw ; op1:x9; op2:x21; dest:x29; op1val:0x0000000000080000;  op2val:0x0000000000800000
TEST_RR_OP(mulw, x29, x9, x21, 0x0000000000000000, 0x0000000000080000, 0x0000000000800000, x2, 56, x8)

# opcode: mulw ; op1:x28; op2:x29; dest:x30; op1val:0x0000000000100000;  op2val:0x0000000000040000
TEST_RR_OP(mulw, x30, x28, x29, 0x0000000000000000, 0x0000000000100000, 0x0000000000040000, x2, 64, x8)

# opcode: mulw ; op1:x30; op2:x18; dest:x26; op1val:0x0000000000200000;  op2val:0x0000000000400000
TEST_RR_OP(mulw, x26, x30, x18, 0x0000000000000000, 0x0000000000200000, 0x0000000000400000, x2, 72, x8)

# opcode: mulw ; op1:x24; op2:x20; dest:x17; op1val:0x0000000000400000;  op2val:0xfffffffbffffffff
TEST_RR_OP(mulw, x17, x24, x20, 0x0000000000000000, 0x0000000000400000, 0xfffffffbffffffff, x2, 80, x8)

# opcode: mulw ; op1:x26; op2:x4; dest:x31; op1val:0x0000000000800000;  op2val:0xff7fffffffffffff
TEST_RR_OP(mulw, x31, x26, x4, 0x0000000000000000, 0x0000000000800000, 0xff7fffffffffffff, x2, 88, x8)

# opcode: mulw ; op1:x6; op2:x10; dest:x23; op1val:0x0000000001000000;  op2val:0xffffffffffffefff
TEST_RR_OP(mulw, x23, x6, x10, 0x0000000000000000, 0x0000000001000000, 0xffffffffffffefff, x2, 96, x8)

# opcode: mulw ; op1:x17; op2:x28; dest:x10; op1val:0x0000000002000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(mulw, x10, x17, x28, 0x0000000000000000, 0x0000000002000000, 0xfbffffffffffffff, x2, 104, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0xfffffdffffffffff, x2, 112, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffffeffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0xfffffffffffeffff, x2, 120, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0xfffffffffffffeff, x2, 128, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xfffffffffffbffff, x2, 136, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000200000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0x0000000200000000, x2, 144, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000005
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0x0000000000000005, x2, 152, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x7fffffffffffffff, x2, 160, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xffffffffff7fffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0xffffffffff7fffff, x2, 168, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000002000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0x0000000000002000, x2, 176, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000010000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0x0000000010000000, x2, 184, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000002
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0x0000000000000002, x2, 192, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0008000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0x0008000000000000, x2, 200, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000400000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000400000000, x2, 208, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0400000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0x0400000000000000, x2, 216, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000005
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0x0000000000000005, x2, 224, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000040000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0x0000000000040000, x2, 232, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000200000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0000000200000000, x2, 240, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x1000000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0x1000000000000000, x2, 248, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xf7ffffffffffffff, x2, 256, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xfffffffeffffffff, x2, 264, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000100000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x0000000100000000, x2, 272, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000004000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0x0000000000004000, x2, 280, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000020000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0000000000020000, x2, 288, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000400
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0x0000000000000400, x2, 296, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xffefffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0008000000000000, 0xffefffffffffffff, x2, 304, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffffffffffefff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xffffffffffffefff, x2, 312, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000200000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000200000000000, x2, 320, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000020000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0x0000000000020000, x2, 328, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000008
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0x0000000000000008, x2, 336, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000080000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0x0000000080000000, x2, 344, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000004000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0000000004000000, x2, 352, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x2000000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0x2000000000000000, x2, 360, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000006
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0x0000000000000006, x2, 368, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffbfffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xffffbfffffffffff, x2, 376, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0xffffffffffefffff, x2, 384, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0xffffffffffff7fff, x2, 392, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000800
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0x0000000000000800, x2, 400, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000004000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0x0000000000004000, x2, 408, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xffffffffffefffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0xffffffffffefffff, x2, 416, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000010000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0x0000000010000000, x2, 424, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000200000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0x0000000000200000, x2, 432, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0x0000000000000000, x2, 440, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfffffffffffffffb
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0xfffffffffffffffb, x2, 448, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000800
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0x0000000000000800, x2, 456, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfffffffffffdffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xfffffffffffdffff, x2, 464, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000008000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0x0000000008000000, x2, 472, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xffffffffefffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0xffffffffefffffff, x2, 480, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x8000000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0x8000000000000000, x2, 488, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffffff7fff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0xffffffffffff7fff, x2, 496, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xfffbffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000100000, 0xfffbffffffffffff, x2, 504, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xffdfffffffffffff, x2, 512, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0xffbfffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0xffbfffffffffffff, x2, 520, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xfeffffffffffffff, x2, 528, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0xfdffffffffffffff, x2, 536, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0xdfffffffffffffff, x2, 544, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0xbfffffffffffffff, x2, 552, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x5555555555555555
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0x5555555555555555, x2, 560, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xaaaaaaaaaaaaaaaa, x2, 568, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xfffffffffffffbff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0xfffffffffffffbff, x2, 576, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfeffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0xfeffffffffffffff, x2, 584, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000001000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0x0000000000001000, x2, 592, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000002000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0x0000002000000000, x2, 600, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xfdffffffffffffff, x2, 608, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000800000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0x0000800000000000, x2, 616, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000001000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0x0000000001000000, x2, 624, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xff7fffffffffffff, x2, 632, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0xf7ffffffffffffff, x2, 640, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xffffffffffefffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0xffffffffffefffff, x2, 648, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x4000000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0x4000000000000000, x2, 656, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0002000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0002000000000000, x2, 664, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000020000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0x0000000000020000, x2, 672, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0xffffffffffffffff, x2, 680, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000400000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0x0000000000400000, x2, 688, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0xfffffffffeffffff, x2, 696, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0xffdfffffffffffff, x2, 704, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0xffffdfffffffffff, x2, 712, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000001000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0x0000000000001000, x2, 720, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000020000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0x0000000000020000, x2, 728, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0x7fffffffffffffff, x2, 736, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0xefffffffffffffff, x2, 744, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0xffffff7fffffffff, x2, 752, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0xffffffffdfffffff, x2, 760, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0xffffffffefffffff, x2, 768, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0xffffffffff7fffff, x2, 776, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0xffffffffffffffdf, x2, 784, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000020000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0x0000020000000000, x2, 792, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0x0000000000000100, x2, 800, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000080
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0x0000000000000080, x2, 808, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0xffffffdfffffffff, x2, 816, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000000000100, x2, 824, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0002000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0x0002000000000000, x2, 832, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000400000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0x0000000000400000, x2, 840, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xc000000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xc000000000000000, x2, 848, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x0040000000000000, x2, 856, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0xfffffffffffffffe, x2, 864, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0xffbfffffffffffff, x2, 872, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0200000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0x0200000000000000, x2, 880, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0xefffffffffffffff, x2, 888, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000040000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0x0000000040000000, x2, 896, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0x0100000000000000, x2, 904, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xfffffffffffffff6
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0xfffffffffffffff6, x2, 912, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0xffffffffffdfffff, x2, 920, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0xffffffffffffdfff, x2, 928, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0xffefffffffffffff, x2, 936, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0x5555555555555555, x2, 944, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffffffffbff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xfffffffffffffbff, x2, 952, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000040000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0x0000000040000000, x2, 960, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0x0000000000000004, x2, 968, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0x0000000000000010
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000000400, 0x0000000000000010, x2, 976, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000040
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0x0000000000000040, x2, 984, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000200
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0x0000000000000200, x2, 992, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000000008000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000010000, 0x0000000000008000, x2, 1000, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000010000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0x0000000000010000, x2, 1008, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000080000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0x0000000000080000, x2, 1016, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000002000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0000000002000000, x2, 1024, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000800000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0x0000000800000000, x2, 1032, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000004000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0x0000004000000000, x2, 1040, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000008000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0x0000008000000000, x2, 1048, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000010000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0x0000010000000000, x2, 1056, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000040000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000020000, 0x0000040000000000, x2, 1064, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000080000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x0000080000000000, x2, 1072, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0004000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0x0004000000000000, x2, 1080, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0010000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0x0010000000000000, x2, 1088, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0x0020000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff8, 0x0020000000000000, x2, 1096, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0x0080000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000002000, 0x0080000000000000, x2, 1104, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0800000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0x0800000000000000, x2, 1112, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0xfffffffffffffffd
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000010000, 0xfffffffffffffffd, x2, 1120, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xfffffffffffffff7
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xfffffffffffffff7, x2, 1128, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0xffffffffffffffbf, x2, 1136, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xc000000000000000, 0xffffffffffffff7f, x2, 1144, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xfffffffffffffdff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000004000, 0xfffffffffffffdff, x2, 1152, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffffffffffffbfff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0xffffffffffffbfff, x2, 1160, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0xfffffffffff7ffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000000007, 0xfffffffffff7ffff, x2, 1168, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0xffffffffffbfffff, x2, 1176, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfffffffffdffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xfffffffffdffffff, x2, 1184, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0xfffffffffbffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000040000, 0xfffffffffbffffff, x2, 1192, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000100000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0x0000100000000000, x2, 1200, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xfffffffff7ffffff, x2, 1208, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xffffffffbfffffff, x2, 1216, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0xfffffffdffffffff, x2, 1224, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0001000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x0001000000000000, x2, 1232, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0xfffffff7ffffffff, x2, 1240, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xffffffefffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0xffffffefffffffff, x2, 1248, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xffffffbfffffffff, x2, 1256, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0xfffffeffffffffff, x2, 1264, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0xfffffbffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffa, 0xfffffbffffffffff, x2, 1272, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0xfffff7ffffffffff, x2, 1280, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0xffffefffffffffff, x2, 1288, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000400000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0x0000400000000000, x2, 1296, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xffff7fffffffffff, x2, 1304, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0xfffeffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000008000, 0xfffeffffffffffff, x2, 1312, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffdffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xfffdffffffffffff, x2, 1320, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000000000001
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0x0000000000000001, x2, 1328, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x1000000000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000000000, 0x1000000000000000, x2, 1336, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000004000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x7fffffffffffffff, 0x0000000004000000, x2, 1344, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000000100000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000000001, 0x0000000000100000, x2, 1352, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0000001000000000
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000000008, 0x0000001000000000, x2, 1360, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0xfffffffffffffffe
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0xfffffffffffffffe, x2, 1368, x1)

# opcode: mulw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(mulw, x12, x10, x11, 0x0000000000000000, 0x0000000000002000, 0xfff7ffffffffffff, x2, 1376, x1)
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
    .fill 18*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 173*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
