
#This assembly file tests the mulhu instruction of the RISC-V M extension for the mulhu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mulhu)

la x8,signature_x8_1

# opcode: mulhu ; op1:x11; op2:x11; dest:x16; op1val:0x8000000000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(mulhu, x16, x11, x11, 0x0000000000000000, 0x8000000000000000, 0xfffffff7ffffffff, x8, 0, x12)

# opcode: mulhu ; op1:x2; op2:x1; dest:x2; op1val:0x0000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(mulhu, x2, x2, x1, 0x0000000000000000, 0x0000000000000000, 0x0000000000000003, x8, 8, x12)

# opcode: mulhu ; op1:x28; op2:x28; dest:x28; op1val:0x7fffffffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(mulhu, x28, x28, x28, 0x0000000000000000, 0x7fffffffffffffff, 0xdfffffffffffffff, x8, 16, x12)

# opcode: mulhu ; op1:x5; op2:x2; dest:x30; op1val:0x0000000000000001;  op2val:0x0000200000000000
TEST_RR_OP(mulhu, x30, x5, x2, 0x0000000000000000, 0x0000000000000001, 0x0000200000000000, x8, 24, x12)

# opcode: mulhu ; op1:x23; op2:x0; dest:x0; op1val:0xffffffffffefffff;  op2val:0x8000000000000000
TEST_RR_OP(mulhu, x0, x23, x0, 0x0000000000000000, 0xffffffffffefffff, 0x8000000000000000, x8, 32, x12)

# opcode: mulhu ; op1:x19; op2:x21; dest:x4; op1val:0xffff7fffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(mulhu, x4, x19, x21, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000000000000, x8, 40, x12)

# opcode: mulhu ; op1:x22; op2:x30; dest:x20; op1val:0xfbffffffffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(mulhu, x20, x22, x30, 0x0000000000000000, 0xfbffffffffffffff, 0x7fffffffffffffff, x8, 48, x12)

# opcode: mulhu ; op1:x1; op2:x13; dest:x31; op1val:0xffffffffffffffdf;  op2val:0x0000000000000001
TEST_RR_OP(mulhu, x31, x1, x13, 0x0000000000000000, 0xffffffffffffffdf, 0x0000000000000001, x8, 56, x12)

# opcode: mulhu ; op1:x26; op2:x10; dest:x15; op1val:0x0000000000000800;  op2val:0x0000000000000800
TEST_RR_OP(mulhu, x15, x26, x10, 0x0000000000000000, 0x0000000000000800, 0x0000000000000800, x8, 64, x12)

# opcode: mulhu ; op1:x9; op2:x7; dest:x3; op1val:0x0000000000000002;  op2val:0xffffffffdfffffff
TEST_RR_OP(mulhu, x3, x9, x7, 0x0000000000000000, 0x0000000000000002, 0xffffffffdfffffff, x8, 72, x12)

# opcode: mulhu ; op1:x10; op2:x5; dest:x13; op1val:0x0000000000000004;  op2val:0xfffffffffffffbff
TEST_RR_OP(mulhu, x13, x10, x5, 0x0000000000000000, 0x0000000000000004, 0xfffffffffffffbff, x8, 80, x12)

# opcode: mulhu ; op1:x24; op2:x23; dest:x27; op1val:0x0000000000000008;  op2val:0x0000000000040000
TEST_RR_OP(mulhu, x27, x24, x23, 0x0000000000000000, 0x0000000000000008, 0x0000000000040000, x8, 88, x12)

# opcode: mulhu ; op1:x0; op2:x18; dest:x21; op1val:0x0000000000000010;  op2val:0x0000000000100000
TEST_RR_OP(mulhu, x21, x0, x18, 0x0000000000000000, 0x0000000000000010, 0x0000000000100000, x8, 96, x12)

# opcode: mulhu ; op1:x13; op2:x17; dest:x9; op1val:0x0000000000000020;  op2val:0xfffff7ffffffffff
TEST_RR_OP(mulhu, x9, x13, x17, 0x0000000000000000, 0x0000000000000020, 0xfffff7ffffffffff, x8, 104, x12)

# opcode: mulhu ; op1:x14; op2:x4; dest:x11; op1val:0x0000000000000040;  op2val:0x0000000000400000
TEST_RR_OP(mulhu, x11, x14, x4, 0x0000000000000000, 0x0000000000000040, 0x0000000000400000, x8, 112, x12)

# opcode: mulhu ; op1:x18; op2:x31; dest:x17; op1val:0x0000000000000080;  op2val:0x0000000040000000
TEST_RR_OP(mulhu, x17, x18, x31, 0x0000000000000000, 0x0000000000000080, 0x0000000040000000, x8, 120, x12)

# opcode: mulhu ; op1:x6; op2:x29; dest:x18; op1val:0x0000000000000100;  op2val:0xfffffffeffffffff
TEST_RR_OP(mulhu, x18, x6, x29, 0x0000000000000000, 0x0000000000000100, 0xfffffffeffffffff, x8, 128, x12)
la x2,signature_x2_0

# opcode: mulhu ; op1:x20; op2:x27; dest:x23; op1val:0x0000000000000200;  op2val:0x0020000000000000
TEST_RR_OP(mulhu, x23, x20, x27, 0x0000000000000000, 0x0000000000000200, 0x0020000000000000, x2, 0, x13)

# opcode: mulhu ; op1:x30; op2:x26; dest:x22; op1val:0x0000000000000400;  op2val:0x0000000000001000
TEST_RR_OP(mulhu, x22, x30, x26, 0x0000000000000000, 0x0000000000000400, 0x0000000000001000, x2, 8, x13)

# opcode: mulhu ; op1:x4; op2:x19; dest:x14; op1val:0x0000000000001000;  op2val:0xfffffffffffffff8
TEST_RR_OP(mulhu, x14, x4, x19, 0x0000000000000000, 0x0000000000001000, 0xfffffffffffffff8, x2, 16, x13)

# opcode: mulhu ; op1:x17; op2:x16; dest:x26; op1val:0x0000000000002000;  op2val:0xff7fffffffffffff
TEST_RR_OP(mulhu, x26, x17, x16, 0x0000000000000000, 0x0000000000002000, 0xff7fffffffffffff, x2, 24, x13)

# opcode: mulhu ; op1:x3; op2:x8; dest:x12; op1val:0x0000000000004000;  op2val:0x0200000000000000
TEST_RR_OP(mulhu, x12, x3, x8, 0x0000000000000000, 0x0000000000004000, 0x0200000000000000, x2, 32, x13)

# opcode: mulhu ; op1:x31; op2:x22; dest:x8; op1val:0x0000000000008000;  op2val:0x0000008000000000
TEST_RR_OP(mulhu, x8, x31, x22, 0x0000000000000000, 0x0000000000008000, 0x0000008000000000, x2, 40, x13)

# opcode: mulhu ; op1:x12; op2:x14; dest:x19; op1val:0x0000000000010000;  op2val:0x5555555555555555
TEST_RR_OP(mulhu, x19, x12, x14, 0x0000000000000000, 0x0000000000010000, 0x5555555555555555, x2, 48, x13)

# opcode: mulhu ; op1:x15; op2:x25; dest:x1; op1val:0x0000000000020000;  op2val:0x0000020000000000
TEST_RR_OP(mulhu, x1, x15, x25, 0x0000000000000000, 0x0000000000020000, 0x0000020000000000, x2, 56, x13)

# opcode: mulhu ; op1:x21; op2:x3; dest:x25; op1val:0x0000000000040000;  op2val:0xffffffffdfffffff
TEST_RR_OP(mulhu, x25, x21, x3, 0x0000000000000000, 0x0000000000040000, 0xffffffffdfffffff, x2, 64, x13)

# opcode: mulhu ; op1:x25; op2:x20; dest:x10; op1val:0x0000000000080000;  op2val:0x0000000000400000
TEST_RR_OP(mulhu, x10, x25, x20, 0x0000000000000000, 0x0000000000080000, 0x0000000000400000, x2, 72, x13)

# opcode: mulhu ; op1:x8; op2:x24; dest:x7; op1val:0x0000000000100000;  op2val:0xffffefffffffffff
TEST_RR_OP(mulhu, x7, x8, x24, 0x0000000000000000, 0x0000000000100000, 0xffffefffffffffff, x2, 80, x13)

# opcode: mulhu ; op1:x16; op2:x9; dest:x6; op1val:0x0000000000200000;  op2val:0xfeffffffffffffff
TEST_RR_OP(mulhu, x6, x16, x9, 0x0000000000000000, 0x0000000000200000, 0xfeffffffffffffff, x2, 88, x13)

# opcode: mulhu ; op1:x27; op2:x15; dest:x29; op1val:0x0000000000400000;  op2val:0xfffffffffffffff7
TEST_RR_OP(mulhu, x29, x27, x15, 0x0000000000000000, 0x0000000000400000, 0xfffffffffffffff7, x2, 96, x13)

# opcode: mulhu ; op1:x7; op2:x12; dest:x5; op1val:0x0000000000800000;  op2val:0x0000000000080000
TEST_RR_OP(mulhu, x5, x7, x12, 0x0000000000000000, 0x0000000000800000, 0x0000000000080000, x2, 104, x13)

# opcode: mulhu ; op1:x29; op2:x6; dest:x24; op1val:0x0000000001000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(mulhu, x24, x29, x6, 0x0000000000000000, 0x0000000001000000, 0xfffffffbffffffff, x2, 112, x13)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000800
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000002000000, 0x0000000000000800, x2, 120, x13)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0020000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0x0020000000000000, x2, 128, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000001000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0x0000000001000000, x2, 136, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000001
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0x0000000000000001, x2, 144, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000080
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0x0000000000000080, x2, 152, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0xfffffdffffffffff, x2, 160, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xffffffbfffffffff, x2, 168, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0xfffffffffffffbff, x2, 176, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0xfffffffffffffff7, x2, 184, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000400
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0x0000000000000400, x2, 192, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xffffffffffffffff, x2, 200, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000080
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0x0000000000000080, x2, 208, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000001
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0x0000000000000001, x2, 216, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0xfffffffffffbffff, x2, 224, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000400000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0x0000000400000000, x2, 232, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0080000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0x0080000000000000, x2, 240, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0010000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0x0010000000000000, x2, 248, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0xffbfffffffffffff, x2, 256, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000010000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0000000010000000, x2, 264, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000004000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0x0000000004000000, x2, 272, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000004000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0x0000000004000000, x2, 280, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000005
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0x0000000000000005, x2, 288, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000020000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x0000000020000000, x2, 296, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0xffffffffffff7fff, x2, 304, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000100000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0000100000000000, x2, 312, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0xfffffffffbffffff, x2, 320, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000080000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0008000000000000, 0x0000000080000000, x2, 328, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000007
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0x0000000000000007, x2, 336, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x2000000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x2000000000000000, x2, 344, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000400
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0x0000000000000400, x2, 352, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000800000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0x0000000800000000, x2, 360, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0xfffffffffffff7ff, x2, 368, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xffffffffffffffbf
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0xffffffffffffffbf, x2, 376, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0xfffffffffbffffff, x2, 384, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0xfffeffffffffffff, x2, 392, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xffffffffffffffff, x2, 400, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0200000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0x0200000000000000, x2, 408, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0xfffffffffffffdff, x2, 416, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000800000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0x0000000800000000, x2, 424, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xffffffffffffffbf
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0xffffffffffffffbf, x2, 432, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0008000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0x0008000000000000, x2, 440, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffffffffbffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xfffffffffbffffff, x2, 448, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xffffffffffffffff, x2, 456, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xffffffffffdfffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0xffffffffffdfffff, x2, 464, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000002000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0x0000000000002000, x2, 472, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000100000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0x0000000100000000, x2, 480, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xfffffffbffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0xfffffffbffffffff, x2, 488, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000800000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0x0000000000800000, x2, 496, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0xfffbffffffffffff, x2, 504, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0xfff7ffffffffffff, x2, 512, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0xffefffffffffffff, x2, 520, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0xffdfffffffffffff, x2, 528, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xfdffffffffffffff, x2, 536, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xfbffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000400000, 0xfbffffffffffffff, x2, 544, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xf7ffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0xf7ffffffffffffff, x2, 552, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xefffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0xefffffffffffffff, x2, 560, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xbfffffffffffffff, x2, 568, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0xaaaaaaaaaaaaaaaa, x2, 576, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000000001
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0x0000000000000001, x2, 584, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000080000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0x0000000080000000, x2, 592, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0400000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0x0400000000000000, x2, 600, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000200000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0000000000200000, x2, 608, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x2000000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0x2000000000000000, x2, 616, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xfffffffffffffeff, x2, 624, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xffffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0xffffffffffffffff, x2, 632, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0xbfffffffffffffff, x2, 640, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000010000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0x0000000000010000, x2, 648, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0xfdffffffffffffff, x2, 656, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0xffffffff7fffffff, x2, 664, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0xfffffffffffffeff, x2, 672, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000200000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0x0000200000000000, x2, 680, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0xffffffbfffffffff, x2, 688, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0xffffffffefffffff, x2, 696, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000010000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0x0000010000000000, x2, 704, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000080
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0x0000000000000080, x2, 712, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0xfffffeffffffffff, x2, 720, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000100000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0x0000000100000000, x2, 728, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000007
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0x0000000000000007, x2, 736, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000006
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0x0000000000000006, x2, 744, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0xfffffffffff7ffff, x2, 752, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000010
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0x0000000000000010, x2, 760, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0xefffffffffffffff, x2, 768, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000040000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0x0000000040000000, x2, 776, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0xffffffdfffffffff, x2, 784, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x0000010000000000, x2, 792, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xdfffffffffffffff, x2, 800, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffffffffffffffb
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0xfffffffffffffffb, x2, 808, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0xfbffffffffffffff, x2, 816, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000100000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0x0000100000000000, x2, 824, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0xfffffffffffffeff, x2, 832, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0xffffffffbfffffff, x2, 840, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0xffefffffffffffff, x2, 848, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xfffffffffeffffff, x2, 856, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000040
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x0000000000000040, x2, 864, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000004000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0x0000000004000000, x2, 872, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000008000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0x0000000000008000, x2, 880, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0x5555555555555555, x2, 888, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0800000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0x0800000000000000, x2, 896, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0x0000000400000000, x2, 904, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000001000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0x0000000000001000, x2, 912, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000800000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0x0000000000800000, x2, 920, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0xffffffffffffff7f, x2, 928, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0xfff7ffffffffffff, x2, 936, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0080000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x0080000000000000, x2, 944, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000010
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0x0000000000000010, x2, 952, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0x0000000000000002
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff6, 0x0000000000000002, x2, 960, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000004
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0x0000000000000004, x2, 968, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0x0000000000000008
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000400, 0x0000000000000008, x2, 976, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000020
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000000000020, x2, 984, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000100
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000000000100, x2, 992, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000200
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0x0000000000000200, x2, 1000, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000004000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0x0000000000004000, x2, 1008, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000020000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0x0000000000020000, x2, 1016, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000002000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0x0000000002000000, x2, 1024, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x0000000008000000, x2, 1032, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000200000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0x0000000200000000, x2, 1040, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000001000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0x0000001000000000, x2, 1048, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0x0000002000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffc, 0x0000002000000000, x2, 1056, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000004000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0x0000004000000000, x2, 1064, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000040000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0000040000000000, x2, 1072, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000080000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x0000080000000000, x2, 1080, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0004000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000002, 0x0004000000000000, x2, 1088, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0002000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0002000000000000, x2, 1096, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0040000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0040000000000000, x2, 1104, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0100000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000020000, 0x0100000000000000, x2, 1112, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x1000000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0x1000000000000000, x2, 1120, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x4000000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000020000, 0x4000000000000000, x2, 1128, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xfffffffffffffffe
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0xfffffffffffffffe, x2, 1136, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xfffffffffffffffd
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000080, 0xfffffffffffffffd, x2, 1144, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xffffffffffffffef, x2, 1152, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0xffffffffffffffdf
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000100, 0xffffffffffffffdf, x2, 1160, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0xffffffffffffefff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0xffffffffffffefff, x2, 1168, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0xffffffffffffdfff, x2, 1176, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffffffffbfff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xffffffffffffbfff, x2, 1184, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0xfffffffffffeffff, x2, 1192, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xfffffffffffdffff, x2, 1200, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xffffffffffefffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xffffffffffefffff, x2, 1208, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xffffffffffbfffff, x2, 1216, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xffffffffff7fffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000001, 0xffffffffff7fffff, x2, 1224, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0xfffffffffdffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000002000, 0xfffffffffdffffff, x2, 1232, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0xfffffffff7ffffff, x2, 1240, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xc000000000000000, 0xfffffffdffffffff, x2, 1248, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0xffffffefffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000007, 0xffffffefffffffff, x2, 1256, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0xffffbfffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000009, 0xffffbfffffffffff, x2, 1264, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0xffffff7fffffffff, x2, 1272, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xfffffbffffffffff, x2, 1280, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000800000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0x0000800000000000, x2, 1288, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xffffdfffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0xffffdfffffffffff, x2, 1296, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000400000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0x0000400000000000, x2, 1304, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xffff7fffffffffff, x2, 1312, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0001000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0x0001000000000000, x2, 1320, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xfffdffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0xfffdffffffffffff, x2, 1328, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0xfffffff7ffffffff, x2, 1336, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000000, 0x0000000000000003, x2, 1344, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x7fffffffffffffff, 0xdfffffffffffffff, x2, 1352, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x8000000000000000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0x8000000000000000, x2, 1360, x1)

# opcode: mulhu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000000000100000
TEST_RR_OP(mulhu, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0x0000000000100000, x2, 1368, x1)
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

signature_x8_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x8_1:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 172*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
