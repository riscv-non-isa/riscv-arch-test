
#This assembly file tests the divu instruction of the RISC-V M extension for the divu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",divu)

la x3,signature_x3_1

# opcode: divu ; op1:x14; op2:x14; dest:x16; op1val:0x8000000000000000;  op2val:0x2000000000000000
TEST_RR_OP(divu, x16, x14, x14, 0x0000000000000000, 0x8000000000000000, 0x2000000000000000, x3, 0, x19)

# opcode: divu ; op1:x29; op2:x24; dest:x29; op1val:0x0000000000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(divu, x29, x29, x24, 0x0000000000000000, 0x0000000000000000, 0xfffffff7ffffffff, x3, 8, x19)

# opcode: divu ; op1:x27; op2:x27; dest:x27; op1val:0x7fffffffffffffff;  op2val:0x4000000000000000
TEST_RR_OP(divu, x27, x27, x27, 0x0000000000000000, 0x7fffffffffffffff, 0x4000000000000000, x3, 16, x19)

# opcode: divu ; op1:x17; op2:x2; dest:x26; op1val:0x0000000000000001;  op2val:0x0080000000000000
TEST_RR_OP(divu, x26, x17, x2, 0x0000000000000000, 0x0000000000000001, 0x0080000000000000, x3, 24, x19)

# opcode: divu ; op1:x13; op2:x17; dest:x17; op1val:0x0000000000000004;  op2val:0x8000000000000000
TEST_RR_OP(divu, x17, x13, x17, 0x0000000000000000, 0x0000000000000004, 0x8000000000000000, x3, 32, x19)

# opcode: divu ; op1:x21; op2:x18; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000000
TEST_RR_OP(divu, x12, x21, x18, 0x0000000000000000, 0x0000000020000000, 0x0000000000000000, x3, 40, x19)

# opcode: divu ; op1:x5; op2:x29; dest:x0; op1val:0x0000000000000009;  op2val:0x7fffffffffffffff
TEST_RR_OP(divu, x0, x5, x29, 0x0000000000000000, 0x0000000000000009, 0x7fffffffffffffff, x3, 48, x19)

# opcode: divu ; op1:x23; op2:x4; dest:x11; op1val:0xfffffffffffffeff;  op2val:0x0000000000000001
TEST_RR_OP(divu, x11, x23, x4, 0x0000000000000000, 0xfffffffffffffeff, 0x0000000000000001, x3, 56, x19)

# opcode: divu ; op1:x11; op2:x23; dest:x22; op1val:0xfffffffff7ffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(divu, x22, x11, x23, 0x0000000000000000, 0xfffffffff7ffffff, 0xfffffffffff7ffff, x3, 64, x19)

# opcode: divu ; op1:x22; op2:x13; dest:x21; op1val:0xf7ffffffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(divu, x21, x22, x13, 0x0000000000000000, 0xf7ffffffffffffff, 0xf7ffffffffffffff, x3, 72, x19)

# opcode: divu ; op1:x8; op2:x26; dest:x24; op1val:0x0000000000000002;  op2val:0x0000000000000000
TEST_RR_OP(divu, x24, x8, x26, 0x0000000000000000, 0x0000000000000002, 0x0000000000000000, x3, 80, x19)

# opcode: divu ; op1:x26; op2:x6; dest:x13; op1val:0x0000000000000008;  op2val:0x0000008000000000
TEST_RR_OP(divu, x13, x26, x6, 0x0000000000000000, 0x0000000000000008, 0x0000008000000000, x3, 88, x19)

# opcode: divu ; op1:x2; op2:x0; dest:x15; op1val:0x0000000000000010;  op2val:0x0000000020000000
TEST_RR_OP(divu, x15, x2, x0, 0x0000000000000000, 0x0000000000000010, 0x0000000020000000, x3, 96, x19)

# opcode: divu ; op1:x1; op2:x9; dest:x30; op1val:0x0000000000000020;  op2val:0x0004000000000000
TEST_RR_OP(divu, x30, x1, x9, 0x0000000000000000, 0x0000000000000020, 0x0004000000000000, x3, 104, x19)

# opcode: divu ; op1:x6; op2:x25; dest:x5; op1val:0x0000000000000040;  op2val:0xffefffffffffffff
TEST_RR_OP(divu, x5, x6, x25, 0x0000000000000000, 0x0000000000000040, 0xffefffffffffffff, x3, 112, x19)

# opcode: divu ; op1:x28; op2:x7; dest:x10; op1val:0x0000000000000080;  op2val:0x0000000000000800
TEST_RR_OP(divu, x10, x28, x7, 0x0000000000000000, 0x0000000000000080, 0x0000000000000800, x3, 120, x19)

# opcode: divu ; op1:x10; op2:x5; dest:x20; op1val:0x0000000000000100;  op2val:0x0000000100000000
TEST_RR_OP(divu, x20, x10, x5, 0x0000000000000000, 0x0000000000000100, 0x0000000100000000, x3, 128, x13)
la x5,signature_x5_0

# opcode: divu ; op1:x19; op2:x30; dest:x1; op1val:0x0000000000000200;  op2val:0xffffffffffff7fff
TEST_RR_OP(divu, x1, x19, x30, 0x0000000000000000, 0x0000000000000200, 0xffffffffffff7fff, x5, 0, x13)

# opcode: divu ; op1:x31; op2:x3; dest:x25; op1val:0x0000000000000400;  op2val:0xffffffffff7fffff
TEST_RR_OP(divu, x25, x31, x3, 0x0000000000000000, 0x0000000000000400, 0xffffffffff7fffff, x5, 8, x13)

# opcode: divu ; op1:x15; op2:x11; dest:x7; op1val:0x0000000000000800;  op2val:0xfbffffffffffffff
TEST_RR_OP(divu, x7, x15, x11, 0x0000000000000000, 0x0000000000000800, 0xfbffffffffffffff, x5, 16, x13)

# opcode: divu ; op1:x20; op2:x19; dest:x8; op1val:0x0000000000001000;  op2val:0x0000000080000000
TEST_RR_OP(divu, x8, x20, x19, 0x0000000000000000, 0x0000000000001000, 0x0000000080000000, x5, 24, x13)

# opcode: divu ; op1:x0; op2:x1; dest:x23; op1val:0x0000000000002000;  op2val:0x0020000000000000
TEST_RR_OP(divu, x23, x0, x1, 0x0000000000000000, 0x0000000000002000, 0x0020000000000000, x5, 32, x13)

# opcode: divu ; op1:x12; op2:x31; dest:x4; op1val:0x0000000000004000;  op2val:0xffffffffffffff7f
TEST_RR_OP(divu, x4, x12, x31, 0x0000000000000000, 0x0000000000004000, 0xffffffffffffff7f, x5, 40, x13)

# opcode: divu ; op1:x24; op2:x8; dest:x18; op1val:0x0000000000008000;  op2val:0x0000000000020000
TEST_RR_OP(divu, x18, x24, x8, 0x0000000000000000, 0x0000000000008000, 0x0000000000020000, x5, 48, x13)

# opcode: divu ; op1:x16; op2:x21; dest:x3; op1val:0x0000000000010000;  op2val:0xffffffffffdfffff
TEST_RR_OP(divu, x3, x16, x21, 0x0000000000000000, 0x0000000000010000, 0xffffffffffdfffff, x5, 56, x13)

# opcode: divu ; op1:x9; op2:x28; dest:x6; op1val:0x0000000000020000;  op2val:0xfffdffffffffffff
TEST_RR_OP(divu, x6, x9, x28, 0x0000000000000000, 0x0000000000020000, 0xfffdffffffffffff, x5, 64, x13)

# opcode: divu ; op1:x25; op2:x12; dest:x14; op1val:0x0000000000040000;  op2val:0xfeffffffffffffff
TEST_RR_OP(divu, x14, x25, x12, 0x0000000000000000, 0x0000000000040000, 0xfeffffffffffffff, x5, 72, x13)

# opcode: divu ; op1:x18; op2:x15; dest:x2; op1val:0x0000000000080000;  op2val:0x0000000000000009
TEST_RR_OP(divu, x2, x18, x15, 0x0000000000000000, 0x0000000000080000, 0x0000000000000009, x5, 80, x13)

# opcode: divu ; op1:x3; op2:x16; dest:x19; op1val:0x0000000000100000;  op2val:0x0000020000000000
TEST_RR_OP(divu, x19, x3, x16, 0x0000000000000000, 0x0000000000100000, 0x0000020000000000, x5, 88, x13)

# opcode: divu ; op1:x30; op2:x20; dest:x9; op1val:0x0000000000200000;  op2val:0x0000002000000000
TEST_RR_OP(divu, x9, x30, x20, 0x0000000000000000, 0x0000000000200000, 0x0000002000000000, x5, 96, x13)

# opcode: divu ; op1:x7; op2:x22; dest:x28; op1val:0x0000000000400000;  op2val:0x0000000000000009
TEST_RR_OP(divu, x28, x7, x22, 0x0000000000000000, 0x0000000000400000, 0x0000000000000009, x5, 104, x13)

# opcode: divu ; op1:x4; op2:x10; dest:x31; op1val:0x0000000000800000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(divu, x31, x4, x10, 0x0000000000000000, 0x0000000000800000, 0xaaaaaaaaaaaaaaaa, x5, 112, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000001000000, 0xfbffffffffffffff, x5, 120, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000002000000, 0xfffeffffffffffff, x5, 128, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000000007
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0x0000000000000007, x5, 136, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xffffffffffffefff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0xffffffffffffefff, x5, 144, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000400
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0x0000000000000400, x5, 152, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfffffffffffffff9
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0xfffffffffffffff9, x5, 160, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xfffffffffffffbff, x5, 168, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000001000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x0000000001000000, x5, 176, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0xfeffffffffffffff, x5, 184, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000002000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0x0000002000000000, x5, 192, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xfffffffeffffffff, x5, 200, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000040000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0x0000000040000000, x5, 208, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xaaaaaaaaaaaaaaaa, x5, 216, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0xfffffffeffffffff, x5, 224, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xfffffdffffffffff, x5, 232, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000100000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0x0000000000100000, x5, 240, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0xfffffffffffffbff, x5, 248, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0xffffffffffffff7f, x5, 256, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x8000000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x8000000000000000, x5, 264, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xfffffdffffffffff, x5, 272, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xffbfffffffffffff, x5, 280, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xffffffffffffdfff, x5, 288, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000200000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x0000200000000000, x5, 296, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000020000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0x0000000020000000, x5, 304, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xffffffffdfffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0xffffffffdfffffff, x5, 312, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0xffffffff7fffffff, x5, 320, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000400000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0008000000000000, 0x0000000400000000, x5, 328, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xfffffffffeffffff, x5, 336, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000080000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000000080000000, x5, 344, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x4000000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0x4000000000000000, x5, 352, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xfeffffffffffffff, x5, 360, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0002000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0x0002000000000000, x5, 368, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0xfffffffbffffffff, x5, 376, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0xfffffffffffbffff, x5, 384, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000400000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0x0000000400000000, x5, 392, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xffffffffffffdfff, x5, 400, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0xfffffffffffbffff, x5, 408, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000800000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0x0000000800000000, x5, 416, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000010000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0x0000000000010000, x5, 424, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xffffffffefffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0xffffffffefffffff, x5, 432, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000800000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0x0000000000800000, x5, 440, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffffffffbffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xfffffffffbffffff, x5, 448, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000002
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0x0000000000000002, x5, 456, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffffbffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0xfffffbffffffffff, x5, 464, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x2000000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0x2000000000000000, x5, 472, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xffffdfffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0xffffdfffffffffff, x5, 480, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xffbfffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0xffbfffffffffffff, x5, 488, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0001000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0x0001000000000000, x5, 496, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0xfffbffffffffffff, x5, 504, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0xfff7ffffffffffff, x5, 512, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0xffdfffffffffffff, x5, 520, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0xff7fffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000100, 0xff7fffffffffffff, x5, 528, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0xfdffffffffffffff, x5, 536, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0xefffffffffffffff, x5, 544, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0xdfffffffffffffff, x5, 552, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0xbfffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000200000, 0xbfffffffffffffff, x5, 560, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x5555555555555555
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0x5555555555555555, x5, 568, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000004000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0x0000000004000000, x5, 576, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfffffdffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0xfffffdffffffffff, x5, 584, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000200
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0x0000000000000200, x5, 592, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000007
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0000000000000007, x5, 600, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000008000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0x0000000000008000, x5, 608, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xffffffffffbfffff, x5, 616, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xefffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xefffffffffffffff, x5, 624, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000400000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0x0000000400000000, x5, 632, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000040000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0x0000040000000000, x5, 640, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000040000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0x0000000040000000, x5, 648, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0xdfffffffffffffff, x5, 656, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000080000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0x0000000000080000, x5, 664, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0xffffffffffffff7f, x5, 672, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0xffefffffffffffff, x5, 680, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0xffdfffffffffffff, x5, 688, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000002000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0x0000002000000000, x5, 696, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xfffffffffdffffff, x5, 704, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0001000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0x0001000000000000, x5, 712, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000004000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0x0000004000000000, x5, 720, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000200000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0x0000000200000000, x5, 728, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x2000000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0x2000000000000000, x5, 736, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0xfffeffffffffffff, x5, 744, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0xfffffffbffffffff, x5, 752, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0xffffffffbfffffff, x5, 760, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0xfffdffffffffffff, x5, 768, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0xefffffffffffffff, x5, 776, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xfdffffffffffffff, x5, 784, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0x0000000000000009, x5, 792, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xfffffffffffffffe, x5, 800, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0xfffffffffffdffff, x5, 808, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0x0000000000000020, x5, 816, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000001000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0x0000000000001000, x5, 824, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0xfffffffeffffffff, x5, 832, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0xfff7ffffffffffff, x5, 840, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0xffdfffffffffffff, x5, 848, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xffffffffdfffffff, x5, 856, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000080000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x0000000080000000, x5, 864, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0xfff7ffffffffffff, x5, 872, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffffffffffff9
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0xfffffffffffffff9, x5, 880, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0xfffffffffff7ffff, x5, 888, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0x0000010000000000, x5, 896, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xffffffffbfffffff, x5, 904, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0xfffffffbffffffff, x5, 912, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0002000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0x0002000000000000, x5, 920, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffffffefffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0xffffffefffffffff, x5, 928, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0xffffffbfffffffff, x5, 936, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x7fffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x7fffffffffffffff, x5, 944, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffffffffffdfffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0xffffffffffdfffff, x5, 952, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000000000000004
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0x0000000000000004, x5, 960, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0x0000000000000008
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000009, 0x0000000000000008, x5, 968, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000010
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0x0000000000000010, x5, 976, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000040
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0x0000000000000040, x5, 984, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000080
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0x0000000000000080, x5, 992, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000000000100, x5, 1000, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000002000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0x0000000000002000, x5, 1008, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000004000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000000004000, x5, 1016, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000040000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0x0000000000040000, x5, 1024, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x0000000000200000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000200, 0x0000000000200000, x5, 1032, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0x0000000000400000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000005, 0x0000000000400000, x5, 1040, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000002000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0x0000000002000000, x5, 1048, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000008000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0x0000000008000000, x5, 1056, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000010000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0x0000000010000000, x5, 1064, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000001000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0x0000001000000000, x5, 1072, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0x0000080000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000007, 0x0000080000000000, x5, 1080, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0x0000100000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000002000, 0x0000100000000000, x5, 1088, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x0008000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000080000, 0x0008000000000000, x5, 1096, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0010000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0x0010000000000000, x5, 1104, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0x0040000000000000, x5, 1112, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0x0100000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffa, 0x0100000000000000, x5, 1120, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0200000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0x0200000000000000, x5, 1128, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0400000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0x0400000000000000, x5, 1136, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0800000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0x0800000000000000, x5, 1144, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x1000000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0x1000000000000000, x5, 1152, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfffffffffffffffd
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0xfffffffffffffffd, x5, 1160, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0xfffffffffffffffb
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000002000, 0xfffffffffffffffb, x5, 1168, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xfffffffffffffff7
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xfffffffffffffff7, x5, 1176, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffffffffffffffef
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0xffffffffffffffef, x5, 1184, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0xffffffffffffffdf, x5, 1192, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xffffffffffffffbf
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000080000, 0xffffffffffffffbf, x5, 1200, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0xfffffffffffffeff, x5, 1208, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0xfffffffffffffdff, x5, 1216, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffffffefffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xffffffffffefffff, x5, 1224, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0xfffffffffffff7ff, x5, 1232, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0xfffffffff7ffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000200, 0xfffffffff7ffffff, x5, 1240, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0xfffffffdffffffff, x5, 1248, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000400000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0x0000400000000000, x5, 1256, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0xfffffffffffeffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000200000, 0xfffffffffffeffff, x5, 1264, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0xffffffdfffffffff, x5, 1272, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xffffffffffffbfff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0xffffffffffffbfff, x5, 1280, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0xffffff7fffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffa, 0xffffff7fffffffff, x5, 1288, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0xfffffeffffffffff, x5, 1296, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0xfffff7ffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000006, 0xfffff7ffffffffff, x5, 1304, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xffff7fffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000100000, 0xffff7fffffffffff, x5, 1312, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0xffffefffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000006, 0xffffefffffffffff, x5, 1320, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0xffffbfffffffffff, x5, 1328, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000800000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0x0000800000000000, x5, 1336, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x2000000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0x2000000000000000, x5, 1344, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000000, 0xfffffff7ffffffff, x5, 1352, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x4000000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x7fffffffffffffff, 0x4000000000000000, x5, 1360, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0x8000000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000004, 0x8000000000000000, x5, 1368, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0x7fffffffffffffff
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000009, 0x7fffffffffffffff, x5, 1376, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000000020000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0x0000000020000000, x5, 1384, x13)

# opcode: divu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0x0020000000000000
TEST_RR_OP(divu, x12, x10, x11, 0x0000000000000000, 0x0000000000002000, 0x0020000000000000, x5, 1392, x13)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x3_1:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x5_0:
    .fill 175*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
