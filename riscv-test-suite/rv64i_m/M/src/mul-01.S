
#This assembly file tests the mul instruction of the RISC-V M extension for the mul covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mul)

la x1,signature_x1_1

# opcode: mul ; op1:x21; op2:x21; dest:x15; op1val:0x8000000000000000;  op2val:0x0000000000000020
TEST_RR_OP(mul, x15, x21, x21, 0x0000000000000000, 0x8000000000000000, 0x0000000000000020, x1, 0, x11)

# opcode: mul ; op1:x5; op2:x7; dest:x5; op1val:0x0000000000000000;  op2val:0x0001000000000000
TEST_RR_OP(mul, x5, x5, x7, 0x0000000000000000, 0x0000000000000000, 0x0001000000000000, x1, 8, x11)

# opcode: mul ; op1:x9; op2:x9; dest:x9; op1val:0x7fffffffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(mul, x9, x9, x9, 0x0000000000000000, 0x7fffffffffffffff, 0xffffffffbfffffff, x1, 16, x11)

# opcode: mul ; op1:x7; op2:x24; dest:x4; op1val:0x0000000000000001;  op2val:0x0000000000100000
TEST_RR_OP(mul, x4, x7, x24, 0x0000000000000000, 0x0000000000000001, 0x0000000000100000, x1, 24, x11)

# opcode: mul ; op1:x22; op2:x25; dest:x25; op1val:0xfffffffff7ffffff;  op2val:0x8000000000000000
TEST_RR_OP(mul, x25, x22, x25, 0x0000000000000000, 0xfffffffff7ffffff, 0x8000000000000000, x1, 32, x11)

# opcode: mul ; op1:x14; op2:x28; dest:x2; op1val:0x0000000000020000;  op2val:0x0000000000000000
TEST_RR_OP(mul, x2, x14, x28, 0x0000000000000000, 0x0000000000020000, 0x0000000000000000, x1, 40, x11)

# opcode: mul ; op1:x12; op2:x23; dest:x14; op1val:0x0800000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(mul, x14, x12, x23, 0x0000000000000000, 0x0800000000000000, 0x7fffffffffffffff, x1, 48, x11)

# opcode: mul ; op1:x10; op2:x31; dest:x7; op1val:0xdfffffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(mul, x7, x10, x31, 0x0000000000000000, 0xdfffffffffffffff, 0x0000000000000001, x1, 56, x11)

# opcode: mul ; op1:x20; op2:x10; dest:x19; op1val:0x0000000000000200;  op2val:0x0000000000000200
TEST_RR_OP(mul, x19, x20, x10, 0x0000000000000000, 0x0000000000000200, 0x0000000000000200, x1, 64, x11)

# opcode: mul ; op1:x19; op2:x2; dest:x26; op1val:0x0000000000000002;  op2val:0x0000800000000000
TEST_RR_OP(mul, x26, x19, x2, 0x0000000000000000, 0x0000000000000002, 0x0000800000000000, x1, 72, x11)

# opcode: mul ; op1:x24; op2:x12; dest:x6; op1val:0x0000000000000004;  op2val:0xfffffffdffffffff
TEST_RR_OP(mul, x6, x24, x12, 0x0000000000000000, 0x0000000000000004, 0xfffffffdffffffff, x1, 80, x11)

# opcode: mul ; op1:x26; op2:x13; dest:x10; op1val:0x0000000000000008;  op2val:0x0000000000000001
TEST_RR_OP(mul, x10, x26, x13, 0x0000000000000000, 0x0000000000000008, 0x0000000000000001, x1, 88, x11)

# opcode: mul ; op1:x16; op2:x20; dest:x31; op1val:0x0000000000000010;  op2val:0xffffffffffffffbf
TEST_RR_OP(mul, x31, x16, x20, 0x0000000000000000, 0x0000000000000010, 0xffffffffffffffbf, x1, 96, x11)

# opcode: mul ; op1:x27; op2:x26; dest:x24; op1val:0x0000000000000020;  op2val:0xfffffffffffffdff
TEST_RR_OP(mul, x24, x27, x26, 0x0000000000000000, 0x0000000000000020, 0xfffffffffffffdff, x1, 104, x11)

# opcode: mul ; op1:x4; op2:x19; dest:x20; op1val:0x0000000000000040;  op2val:0xfffff7ffffffffff
TEST_RR_OP(mul, x20, x4, x19, 0x0000000000000000, 0x0000000000000040, 0xfffff7ffffffffff, x1, 112, x11)

# opcode: mul ; op1:x15; op2:x0; dest:x21; op1val:0x0000000000000080;  op2val:0x0000000080000000
TEST_RR_OP(mul, x21, x15, x0, 0x0000000000000000, 0x0000000000000080, 0x0000000080000000, x1, 120, x11)

# opcode: mul ; op1:x3; op2:x17; dest:x28; op1val:0x0000000000000100;  op2val:0xfffffffbffffffff
TEST_RR_OP(mul, x28, x3, x17, 0x0000000000000000, 0x0000000000000100, 0xfffffffbffffffff, x1, 128, x11)

# opcode: mul ; op1:x17; op2:x15; dest:x29; op1val:0x0000000000000400;  op2val:0x2000000000000000
TEST_RR_OP(mul, x29, x17, x15, 0x0000000000000000, 0x0000000000000400, 0x2000000000000000, x1, 136, x11)

# opcode: mul ; op1:x28; op2:x6; dest:x23; op1val:0x0000000000000800;  op2val:0xffffffffffefffff
TEST_RR_OP(mul, x23, x28, x6, 0x0000000000000000, 0x0000000000000800, 0xffffffffffefffff, x1, 144, x11)

# opcode: mul ; op1:x8; op2:x22; dest:x18; op1val:0x0000000000001000;  op2val:0xfffffffeffffffff
TEST_RR_OP(mul, x18, x8, x22, 0x0000000000000000, 0x0000000000001000, 0xfffffffeffffffff, x1, 152, x11)
la x7,signature_x7_0

# opcode: mul ; op1:x29; op2:x18; dest:x1; op1val:0x0000000000002000;  op2val:0xfffffffffffffdff
TEST_RR_OP(mul, x1, x29, x18, 0x0000000000000000, 0x0000000000002000, 0xfffffffffffffdff, x7, 0, x9)

# opcode: mul ; op1:x0; op2:x8; dest:x22; op1val:0x0000000000004000;  op2val:0xbfffffffffffffff
TEST_RR_OP(mul, x22, x0, x8, 0x0000000000000000, 0x0000000000004000, 0xbfffffffffffffff, x7, 8, x9)

# opcode: mul ; op1:x18; op2:x1; dest:x12; op1val:0x0000000000008000;  op2val:0x0000000000200000
TEST_RR_OP(mul, x12, x18, x1, 0x0000000000000000, 0x0000000000008000, 0x0000000000200000, x7, 16, x9)

# opcode: mul ; op1:x30; op2:x14; dest:x11; op1val:0x0000000000010000;  op2val:0x0000000000000020
TEST_RR_OP(mul, x11, x30, x14, 0x0000000000000000, 0x0000000000010000, 0x0000000000000020, x7, 24, x9)

# opcode: mul ; op1:x11; op2:x5; dest:x8; op1val:0x0000000000040000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(mul, x8, x11, x5, 0x0000000000000000, 0x0000000000040000, 0xfffffff7ffffffff, x7, 32, x9)

# opcode: mul ; op1:x2; op2:x29; dest:x30; op1val:0x0000000000080000;  op2val:0xffffffffffffffef
TEST_RR_OP(mul, x30, x2, x29, 0x0000000000000000, 0x0000000000080000, 0xffffffffffffffef, x7, 40, x9)

# opcode: mul ; op1:x1; op2:x11; dest:x17; op1val:0x0000000000100000;  op2val:0x0000000000020000
TEST_RR_OP(mul, x17, x1, x11, 0x0000000000000000, 0x0000000000100000, 0x0000000000020000, x7, 48, x9)

# opcode: mul ; op1:x31; op2:x4; dest:x0; op1val:0x0000000000200000;  op2val:0x0000000002000000
TEST_RR_OP(mul, x0, x31, x4, 0x0000000000000000, 0x0000000000200000, 0x0000000002000000, x7, 56, x9)

# opcode: mul ; op1:x23; op2:x16; dest:x3; op1val:0x0000000000400000;  op2val:0xffffffffffffffbf
TEST_RR_OP(mul, x3, x23, x16, 0x0000000000000000, 0x0000000000400000, 0xffffffffffffffbf, x7, 64, x9)

# opcode: mul ; op1:x6; op2:x3; dest:x27; op1val:0x0000000000800000;  op2val:0xffffffffefffffff
TEST_RR_OP(mul, x27, x6, x3, 0x0000000000000000, 0x0000000000800000, 0xffffffffefffffff, x7, 72, x9)

# opcode: mul ; op1:x13; op2:x27; dest:x16; op1val:0x0000000001000000;  op2val:0x0000000000100000
TEST_RR_OP(mul, x16, x13, x27, 0x0000000000000000, 0x0000000001000000, 0x0000000000100000, x7, 80, x9)

# opcode: mul ; op1:x25; op2:x30; dest:x13; op1val:0x0000000002000000;  op2val:0xffffffffefffffff
TEST_RR_OP(mul, x13, x25, x30, 0x0000000000000000, 0x0000000002000000, 0xffffffffefffffff, x7, 88, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0xfeffffffffffffff, x7, 96, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0200000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0x0200000000000000, x7, 104, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xfffffffffffffff8
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0xfffffffffffffff8, x7, 112, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xffffffffff7fffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xffffffffff7fffff, x7, 120, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0200000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0x0200000000000000, x7, 128, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xfdffffffffffffff, x7, 136, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000800000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x0000000000800000, x7, 144, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xfffffffffffeffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0xfffffffffffeffff, x7, 152, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xffffffffffefffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0xffffffffffefffff, x7, 160, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xffffffffffdfffff, x7, 168, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffffffff7fffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xffffffffff7fffff, x7, 176, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xc000000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xc000000000000000, x7, 184, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0xf7ffffffffffffff, x7, 192, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xffffffffffffff7f, x7, 200, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000003
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0x0000000000000003, x7, 208, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0xfffff7ffffffffff, x7, 216, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0xfffffffeffffffff, x7, 224, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000008000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0000000008000000, x7, 232, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xffffffffffbfffff, x7, 240, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000100000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0x0000000000100000, x7, 248, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xfffffffffffffeff, x7, 256, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x1000000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x1000000000000000, x7, 264, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0xfffffdffffffffff, x7, 272, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x4000000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x4000000000000000, x7, 280, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000010000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0x0000010000000000, x7, 288, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000002000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0008000000000000, 0x0000000000002000, x7, 296, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000080000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0x0000000000080000, x7, 304, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000200
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000000000000200, x7, 312, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0xfffffffffffffbff, x7, 320, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000010000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0x0000010000000000, x7, 328, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000040000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0x0000040000000000, x7, 336, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0xfffffffffffffff6, x7, 344, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000006
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0x0000000000000006, x7, 352, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xffffffffffffdfff, x7, 360, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0xf7ffffffffffffff, x7, 368, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0xff7fffffffffffff, x7, 376, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0008000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0x0008000000000000, x7, 384, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0800000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0x0800000000000000, x7, 392, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffffffffffeffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0xfffffffffffeffff, x7, 400, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffffffffffbffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xfffffffffffbffff, x7, 408, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000004000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0x0000000004000000, x7, 416, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000020000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0x0000000000020000, x7, 424, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xffffffffffffff7f
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0xffffffffffffff7f, x7, 432, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0002000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0x0002000000000000, x7, 440, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xffbfffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xffbfffffffffffff, x7, 448, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0100000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0x0100000000000000, x7, 456, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffffffffffffff9
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0xfffffffffffffff9, x7, 464, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xfffffffffffffff8
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0xfffffffffffffff8, x7, 472, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xfffbffffffffffff, x7, 480, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0xfff7ffffffffffff, x7, 488, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0xffefffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000000200000, 0xffefffffffffffff, x7, 496, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0xffdfffffffffffff, x7, 504, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0xfbffffffffffffff, x7, 512, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xefffffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xefffffffffffffff, x7, 520, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0xdfffffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff8, 0xdfffffffffffffff, x7, 528, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0x5555555555555555, x7, 536, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xaaaaaaaaaaaaaaaa, x7, 544, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffdfffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0xffffffdfffffffff, x7, 552, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x5555555555555555
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0x5555555555555555, x7, 560, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000100
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0000000000000100, x7, 568, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000400000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0x0000000400000000, x7, 576, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xffdfffffffffffff, x7, 584, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0004000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0x0004000000000000, x7, 592, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000003
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0x0000000000000003, x7, 600, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0xfffffffffeffffff, x7, 608, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xffffffffefffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0xffffffffefffffff, x7, 616, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000004
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0x0000000000000004, x7, 624, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0xfffffffffdffffff, x7, 632, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x1000000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0x1000000000000000, x7, 640, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0xffffffff7fffffff, x7, 648, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xfffffffeffffffff, x7, 656, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0xfffffffffeffffff, x7, 664, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0xfffffffffffffdff, x7, 672, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0400000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0x0400000000000000, x7, 680, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0xfffffbffffffffff, x7, 688, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000010000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0x0000000000010000, x7, 696, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0200000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0x0200000000000000, x7, 704, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0xfffffffffffffeff, x7, 712, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000004000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0x0000004000000000, x7, 720, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000080000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0x0000080000000000, x7, 728, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000010000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0x0000000010000000, x7, 736, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000100000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0x0000100000000000, x7, 744, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000000400000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x0000000000400000, x7, 752, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000000080
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0x0000000000000080, x7, 760, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xfffffffffffffeff, x7, 768, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0xffffffffefffffff, x7, 776, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0xfeffffffffffffff, x7, 784, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0xfffeffffffffffff, x7, 792, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000000000100, x7, 800, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000080000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0x0000000080000000, x7, 808, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0xfffffff7ffffffff, x7, 816, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000004000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x0000000000004000, x7, 824, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0008000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0x0008000000000000, x7, 832, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0x0000000000000006, x7, 840, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xffffffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0xffffffffffffffff, x7, 848, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0xfffdffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000000010000, 0xfffdffffffffffff, x7, 856, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000008000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0x0000008000000000, x7, 864, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xfffffffffffffff7
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xfffffffffffffff7, x7, 872, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0xffffbfffffffffff, x7, 880, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000800000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0x0000800000000000, x7, 888, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000400000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0x0000000000400000, x7, 896, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000100000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0x0000000000100000, x7, 904, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000400000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0x0000400000000000, x7, 912, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000008000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x0000000000008000, x7, 920, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xfffffffffffdffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0xfffffffffffdffff, x7, 928, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000000002
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0x0000000000000002, x7, 936, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0x0000000000000008
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff8, 0x0000000000000008, x7, 944, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000010
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x0000000000000010, x7, 952, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000040
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0x0000000000000040, x7, 960, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000400
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0x0000000000000400, x7, 968, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000800
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x0000000000000800, x7, 976, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000000001000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x7fffffffffffffff, 0x0000000000001000, x7, 984, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000040000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0x0000000000040000, x7, 992, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000001000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0x0000000001000000, x7, 1000, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0x0000000020000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000000000003, 0x0000000020000000, x7, 1008, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000040000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0000000040000000, x7, 1016, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0010000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x0010000000000000, x7, 1024, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0x0020000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000000000007, 0x0020000000000000, x7, 1032, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x0040000000000000, x7, 1040, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0080000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0x0080000000000000, x7, 1048, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0xfffffffffffffffe
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000000000800, 0xfffffffffffffffe, x7, 1056, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0xfffffffffffffffd, x7, 1064, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xfffffffffffffffb, x7, 1072, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x7fffffffffffffff, 0xffffffffffffffdf, x7, 1080, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0xfffffffffffff7ff, x7, 1088, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xffffffffffffefff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0xffffffffffffefff, x7, 1096, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffffffffbfff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xffffffffffffbfff, x7, 1104, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xffffffffffff7fff, x7, 1112, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0xfffffffffff7ffff, x7, 1120, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0xfffffffffbffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffa, 0xfffffffffbffffff, x7, 1128, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0xfffffffff7ffffff, x7, 1136, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xffffffffdfffffff, x7, 1144, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000100000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0x0000000100000000, x7, 1152, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000200000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0x0000200000000000, x7, 1160, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000200000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0x0000000200000000, x7, 1168, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0x0000000800000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff6, 0x0000000800000000, x7, 1176, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000001000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0x0000001000000000, x7, 1184, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffffffefffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xffffffefffffffff, x7, 1192, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000002000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0x0000002000000000, x7, 1200, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xffffffbfffffffff, x7, 1208, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xffffff7fffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xffffff7fffffffff, x7, 1216, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0xfffffeffffffffff, x7, 1224, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0000020000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000000000020, 0x0000020000000000, x7, 1232, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xffffefffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000000100000, 0xffffefffffffffff, x7, 1240, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xffffdfffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xffffdfffffffffff, x7, 1248, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0xffff7fffffffffff, x7, 1256, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0080000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0x0080000000000000, x7, 1264, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000000000020
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0x0000000000000020, x7, 1272, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0001000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000000000000, 0x0001000000000000, x7, 1280, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x7fffffffffffffff, 0xffffffffbfffffff, x7, 1288, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x8000000000000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0x8000000000000000, x7, 1296, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x0000000080000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000000000080, 0x0000000080000000, x7, 1304, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xbfffffffffffffff
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000000004000, 0xbfffffffffffffff, x7, 1312, x9)

# opcode: mul ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000002000000
TEST_RR_OP(mul, x12, x10, x11, 0x0000000000000000, 0x0000000000200000, 0x0000000002000000, x7, 1320, x9)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x1_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x7_0:
    .fill 166*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
