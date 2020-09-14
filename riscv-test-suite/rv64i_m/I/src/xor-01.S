
#This assembly file tests the xor instruction of the RISC-V I extension for the xor covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xor)

la x8,signature_x8_1

# opcode: xor ; op1:x5; op2:x2; dest:x0; op1val:0x8000000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(xor, x0, x5, x2, 0x7fffffffffdfffff, 0x8000000000000000, 0xffffffffffdfffff, x8, 0, x16)

# opcode: xor ; op1:x15; op2:x15; dest:x15; op1val:0x0000000000000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(xor, x15, x15, x15, 0xfffffffffffffffd, 0x0000000000000000, 0xfffffffffffffffd, x8, 8, x16)

# opcode: xor ; op1:x17; op2:x5; dest:x5; op1val:0x7fffffffffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(xor, x5, x17, x5, 0x8000004000000000, 0x7fffffffffffffff, 0xffffffbfffffffff, x8, 16, x16)

# opcode: xor ; op1:x22; op2:x3; dest:x22; op1val:0x0000000000000001;  op2val:0xfffdffffffffffff
TEST_RR_OP(xor, x22, x22, x3, 0xfffdfffffffffffe, 0x0000000000000001, 0xfffdffffffffffff, x8, 24, x16)

# opcode: xor ; op1:x12; op2:x12; dest:x19; op1val:0xfdffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(xor, x19, x12, x12, 0x7dffffffffffffff, 0xfdffffffffffffff, 0x8000000000000000, x8, 32, x16)

# opcode: xor ; op1:x4; op2:x25; dest:x14; op1val:0xffffffffffffffdf;  op2val:0x0000000000000000
TEST_RR_OP(xor, x14, x4, x25, 0xffffffffffffffdf, 0xffffffffffffffdf, 0x0000000000000000, x8, 40, x16)

# opcode: xor ; op1:x14; op2:x9; dest:x12; op1val:0x0000040000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(xor, x12, x14, x9, 0x7ffffbffffffffff, 0x0000040000000000, 0x7fffffffffffffff, x8, 48, x16)

# opcode: xor ; op1:x11; op2:x29; dest:x4; op1val:0xfffffffffffffffd;  op2val:0x0000000000000001
TEST_RR_OP(xor, x4, x11, x29, 0xfffffffffffffffc, 0xfffffffffffffffd, 0x0000000000000001, x8, 56, x16)

# opcode: xor ; op1:x7; op2:x21; dest:x20; op1val:0xffffffffbfffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(xor, x20, x7, x21, 0x0, 0xffffffffbfffffff, 0xffffffffbfffffff, x8, 64, x16)

# opcode: xor ; op1:x20; op2:x19; dest:x29; op1val:0x0000000000000002;  op2val:0x1000000000000000
TEST_RR_OP(xor, x29, x20, x19, 0x1000000000000002, 0x0000000000000002, 0x1000000000000000, x8, 72, x16)

# opcode: xor ; op1:x26; op2:x28; dest:x17; op1val:0x0000000000000004;  op2val:0xfffffffffffffff9
TEST_RR_OP(xor, x17, x26, x28, 0xfffffffffffffffd, 0x0000000000000004, 0xfffffffffffffff9, x8, 80, x16)

# opcode: xor ; op1:x13; op2:x26; dest:x6; op1val:0x0000000000000008;  op2val:0x0000400000000000
TEST_RR_OP(xor, x6, x13, x26, 0x400000000008, 0x0000000000000008, 0x0000400000000000, x8, 88, x16)

# opcode: xor ; op1:x1; op2:x0; dest:x10; op1val:0x0000000000000010;  op2val:0x8000000000000000
TEST_RR_OP(xor, x10, x1, x0, 0x8000000000000010, 0x0000000000000010, 0x8000000000000000, x8, 96, x16)

# opcode: xor ; op1:x0; op2:x31; dest:x18; op1val:0x0000000000000020;  op2val:0x0008000000000000
TEST_RR_OP(xor, x18, x0, x31, 0x8000000000020, 0x0000000000000020, 0x0008000000000000, x8, 104, x16)

# opcode: xor ; op1:x31; op2:x24; dest:x30; op1val:0x0000000000000040;  op2val:0xdfffffffffffffff
TEST_RR_OP(xor, x30, x31, x24, 0xdfffffffffffffbf, 0x0000000000000040, 0xdfffffffffffffff, x8, 112, x16)

# opcode: xor ; op1:x28; op2:x27; dest:x26; op1val:0x0000000000000080;  op2val:0x0000000000040000
TEST_RR_OP(xor, x26, x28, x27, 0x40080, 0x0000000000000080, 0x0000000000040000, x8, 120, x12)
la x5,signature_x5_0

# opcode: xor ; op1:x8; op2:x22; dest:x1; op1val:0x0000000000000100;  op2val:0xffffffffffff7fff
TEST_RR_OP(xor, x1, x8, x22, 0xffffffffffff7eff, 0x0000000000000100, 0xffffffffffff7fff, x5, 0, x12)

# opcode: xor ; op1:x25; op2:x20; dest:x16; op1val:0x0000000000000200;  op2val:0xffffbfffffffffff
TEST_RR_OP(xor, x16, x25, x20, 0xffffbffffffffdff, 0x0000000000000200, 0xffffbfffffffffff, x5, 8, x12)

# opcode: xor ; op1:x16; op2:x11; dest:x3; op1val:0x0000000000000400;  op2val:0x0000200000000000
TEST_RR_OP(xor, x3, x16, x11, 0x200000000400, 0x0000000000000400, 0x0000200000000000, x5, 16, x12)

# opcode: xor ; op1:x19; op2:x18; dest:x23; op1val:0x0000000000000800;  op2val:0xffdfffffffffffff
TEST_RR_OP(xor, x23, x19, x18, 0xffdffffffffff7ff, 0x0000000000000800, 0xffdfffffffffffff, x5, 24, x12)

# opcode: xor ; op1:x21; op2:x8; dest:x7; op1val:0x0000000000001000;  op2val:0x0040000000000000
TEST_RR_OP(xor, x7, x21, x8, 0x40000000001000, 0x0000000000001000, 0x0040000000000000, x5, 32, x12)

# opcode: xor ; op1:x3; op2:x14; dest:x2; op1val:0x0000000000002000;  op2val:0xfffffffffffffff9
TEST_RR_OP(xor, x2, x3, x14, 0xffffffffffffdff9, 0x0000000000002000, 0xfffffffffffffff9, x5, 40, x12)

# opcode: xor ; op1:x10; op2:x4; dest:x24; op1val:0x0000000000004000;  op2val:0xfffffffffffeffff
TEST_RR_OP(xor, x24, x10, x4, 0xfffffffffffebfff, 0x0000000000004000, 0xfffffffffffeffff, x5, 48, x12)

# opcode: xor ; op1:x2; op2:x10; dest:x25; op1val:0x0000000000008000;  op2val:0xfffffffffffffff6
TEST_RR_OP(xor, x25, x2, x10, 0xffffffffffff7ff6, 0x0000000000008000, 0xfffffffffffffff6, x5, 56, x12)

# opcode: xor ; op1:x9; op2:x16; dest:x13; op1val:0x0000000000010000;  op2val:0x0000000000001000
TEST_RR_OP(xor, x13, x9, x16, 0x11000, 0x0000000000010000, 0x0000000000001000, x5, 64, x12)

# opcode: xor ; op1:x18; op2:x30; dest:x27; op1val:0x0000000000020000;  op2val:0xfffffffffbffffff
TEST_RR_OP(xor, x27, x18, x30, 0xfffffffffbfdffff, 0x0000000000020000, 0xfffffffffbffffff, x5, 72, x12)

# opcode: xor ; op1:x30; op2:x17; dest:x8; op1val:0x0000000000040000;  op2val:0xffffffefffffffff
TEST_RR_OP(xor, x8, x30, x17, 0xffffffeffffbffff, 0x0000000000040000, 0xffffffefffffffff, x5, 80, x12)

# opcode: xor ; op1:x6; op2:x13; dest:x28; op1val:0x0000000000080000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(xor, x28, x6, x13, 0xfffffffffff7f7ff, 0x0000000000080000, 0xfffffffffffff7ff, x5, 88, x12)

# opcode: xor ; op1:x27; op2:x6; dest:x31; op1val:0x0000000000100000;  op2val:0xffffffffffffffbf
TEST_RR_OP(xor, x31, x27, x6, 0xffffffffffefffbf, 0x0000000000100000, 0xffffffffffffffbf, x5, 96, x12)

# opcode: xor ; op1:x23; op2:x1; dest:x11; op1val:0x0000000000200000;  op2val:0x0000000001000000
TEST_RR_OP(xor, x11, x23, x1, 0x1200000, 0x0000000000200000, 0x0000000001000000, x5, 104, x2)

# opcode: xor ; op1:x29; op2:x23; dest:x21; op1val:0x0000000000400000;  op2val:0x0000000002000000
TEST_RR_OP(xor, x21, x29, x23, 0x2400000, 0x0000000000400000, 0x0000000002000000, x5, 112, x2)

# opcode: xor ; op1:x24; op2:x7; dest:x9; op1val:0x0000000000800000;  op2val:0xffffffbfffffffff
TEST_RR_OP(xor, x9, x24, x7, 0xffffffbfff7fffff, 0x0000000000800000, 0xffffffbfffffffff, x5, 120, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffef7ffff, 0x0000000001000000, 0xfffffffffff7ffff, x5, 128, x2)
la x1,signature_x1_0

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000800
TEST_RR_OP(xor, x12, x10, x11, 0x2000800, 0x0000000002000000, 0x0000000000000800, x1, 0, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffdffffbffffff, 0x0000000004000000, 0xffffdfffffffffff, x1, 8, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffff7ffff7f, 0x0000000008000000, 0xffffffffffffff7f, x1, 16, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000040
TEST_RR_OP(xor, x12, x10, x11, 0x10000040, 0x0000000010000000, 0x0000000000000040, x1, 24, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0008000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x8000020000000, 0x0000000020000000, 0x0008000000000000, x1, 32, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000008
TEST_RR_OP(xor, x12, x10, x11, 0x40000008, 0x0000000040000000, 0x0000000000000008, x1, 40, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000080000
TEST_RR_OP(xor, x12, x10, x11, 0x80080000, 0x0000000080000000, 0x0000000000080000, x1, 48, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xffffffffffffffbf
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffeffffffbf, 0x0000000100000000, 0xffffffffffffffbf, x1, 56, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000008000000000
TEST_RR_OP(xor, x12, x10, x11, 0x8200000000, 0x0000000200000000, 0x0000008000000000, x1, 64, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xffffffffffefffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffbffefffff, 0x0000000400000000, 0xffffffffffefffff, x1, 72, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffdf7ffffffff, 0x0000000800000000, 0xfffffdffffffffff, x1, 80, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000200000000000
TEST_RR_OP(xor, x12, x10, x11, 0x201000000000, 0x0000001000000000, 0x0000200000000000, x1, 88, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffefdfffffffff, 0x0000002000000000, 0xffffefffffffffff, x1, 96, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000002000000
TEST_RR_OP(xor, x12, x10, x11, 0x4002000000, 0x0000004000000000, 0x0000000002000000, x1, 104, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffe7fffffffff, 0x0000008000000000, 0xfffffeffffffffff, x1, 112, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffeffffff7fff, 0x0000010000000000, 0xffffffffffff7fff, x1, 120, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffdfdffffffff, 0x0000020000000000, 0xfffffffdffffffff, x1, 128, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(xor, x12, x10, x11, 0xfffff7ffffffffef, 0x0000080000000000, 0xffffffffffffffef, x1, 136, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffeffff7ffffff, 0x0000100000000000, 0xfffffffff7ffffff, x1, 144, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0001000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x1200000000000, 0x0000200000000000, 0x0001000000000000, x1, 152, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfbffbfffffffffff, 0x0000400000000000, 0xfbffffffffffffff, x1, 160, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffff7bffffffffff, 0x0000800000000000, 0xfffffbffffffffff, x1, 168, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0020000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x21000000000000, 0x0001000000000000, 0x0020000000000000, x1, 176, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xffffffffffffffdf
TEST_RR_OP(xor, x12, x10, x11, 0xfffdffffffffffdf, 0x0002000000000000, 0xffffffffffffffdf, x1, 184, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000020
TEST_RR_OP(xor, x12, x10, x11, 0x4000000000020, 0x0004000000000000, 0x0000000000000020, x1, 192, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x8000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x8008000000000000, 0x0008000000000000, 0x8000000000000000, x1, 200, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000002000000000
TEST_RR_OP(xor, x12, x10, x11, 0x10002000000000, 0x0010000000000000, 0x0000002000000000, x1, 208, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0800000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x820000000000000, 0x0020000000000000, 0x0800000000000000, x1, 216, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(xor, x12, x10, x11, 0xffbffffffffffbff, 0x0040000000000000, 0xfffffffffffffbff, x1, 224, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfb7fffffffffffff, 0x0080000000000000, 0xfbffffffffffffff, x1, 232, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x100000000000000, 0x0100000000000000, 0x0000000000000000, x1, 240, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000008
TEST_RR_OP(xor, x12, x10, x11, 0x200000000000008, 0x0200000000000000, 0x0000000000000008, x1, 248, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfffffffffffffffa
TEST_RR_OP(xor, x12, x10, x11, 0xfbfffffffffffffa, 0x0400000000000000, 0xfffffffffffffffa, x1, 256, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xf7fffff7ffffffff, 0x0800000000000000, 0xfffffff7ffffffff, x1, 264, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xeff7ffffffffffff, 0x1000000000000000, 0xfff7ffffffffffff, x1, 272, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xdff7ffffffffffff, 0x2000000000000000, 0xfff7ffffffffffff, x1, 280, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xbbffffffffffffff, 0x4000000000000000, 0xfbffffffffffffff, x1, 288, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0002000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffdfffffffffffe, 0xfffffffffffffffe, 0x0002000000000000, x1, 296, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000020000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffdffffffb, 0xfffffffffffffffb, 0x0000000020000000, x1, 304, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0002000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffdfffffffffff7, 0xfffffffffffffff7, 0x0002000000000000, x1, 312, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0020000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffdfffffffffffef, 0xffffffffffffffef, 0x0020000000000000, x1, 320, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfffffbffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x40000000040, 0xffffffffffffffbf, 0xfffffbffffffffff, x1, 328, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x8000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x7fffffffffffff7f, 0xffffffffffffff7f, 0x8000000000000000, x1, 336, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000100000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffeffffffffeff, 0xfffffffffffffeff, 0x0000100000000000, x1, 344, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xfffffffffffffff9
TEST_RR_OP(xor, x12, x10, x11, 0x206, 0xfffffffffffffdff, 0xfffffffffffffff9, x1, 352, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffffffffffffff9
TEST_RR_OP(xor, x12, x10, x11, 0x406, 0xfffffffffffffbff, 0xfffffffffffffff9, x1, 360, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x5000000000000, 0xfffeffffffffffff, 0xfffbffffffffffff, x1, 368, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xffefffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x10000000800000, 0xffffffffff7fffff, 0xffefffffffffffff, x1, 376, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffbfffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x5515555555555555, 0xaaaaaaaaaaaaaaaa, 0xffbfffffffffffff, x1, 384, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xff5fffffffffffff, 0x0020000000000000, 0xff7fffffffffffff, x1, 392, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xfeffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfeffffffff7fffff, 0x0000000000800000, 0xfeffffffffffffff, x1, 400, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0xfdffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfdfffffffffff7ff, 0x0000000000000800, 0xfdffffffffffffff, x1, 408, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xf7fdffffffffffff, 0x0002000000000000, 0xf7ffffffffffffff, x1, 416, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xefffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x6fffffffffffffff, 0x8000000000000000, 0xefffffffffffffff, x1, 424, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xbfffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x4000000000000080, 0xffffffffffffff7f, 0xbfffffffffffffff, x1, 432, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x5555555555555555
TEST_RR_OP(xor, x12, x10, x11, 0x5545555555555555, 0x0010000000000000, 0x5555555555555555, x1, 440, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(xor, x12, x10, x11, 0x5555555515555555, 0xffffffffbfffffff, 0xaaaaaaaaaaaaaaaa, x1, 448, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0400000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfbfffffffffff7ff, 0xfffffffffffff7ff, 0x0400000000000000, x1, 456, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000800
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffffe7ff, 0xffffffffffffefff, 0x0000000000000800, x1, 464, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(xor, x12, x10, x11, 0x8002000, 0xffffffffffffdfff, 0xfffffffff7ffffff, x1, 472, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xffffffbfffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x4000004000, 0xffffffffffffbfff, 0xffffffbfffffffff, x1, 480, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0400000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfbffffffffff7fff, 0xffffffffffff7fff, 0x0400000000000000, x1, 488, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x800000000010000, 0xfffffffffffeffff, 0xf7ffffffffffffff, x1, 496, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfffffffffffffbff
TEST_RR_OP(xor, x12, x10, x11, 0x20400, 0xfffffffffffdffff, 0xfffffffffffffbff, x1, 504, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000800
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffffbf7ff, 0xfffffffffffbffff, 0x0000000000000800, x1, 512, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000080000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffff7ff7ffff, 0xfffffffffff7ffff, 0x0000000080000000, x1, 520, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000100000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffeffefffff, 0xffffffffffefffff, 0x0000000100000000, x1, 528, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x20000000200000, 0xffffffffffdfffff, 0xffdfffffffffffff, x1, 536, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x400000000400000, 0xffffffffffbfffff, 0xfbffffffffffffff, x1, 544, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x5555555555555555
TEST_RR_OP(xor, x12, x10, x11, 0xaaaaaaaaabaaaaaa, 0xfffffffffeffffff, 0x5555555555555555, x1, 552, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000020
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffdffffdf, 0xfffffffffdffffff, 0x0000000000000020, x1, 560, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x20004000000, 0xfffffffffbffffff, 0xfffffdffffffffff, x1, 568, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x1000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xeffffffff7ffffff, 0xfffffffff7ffffff, 0x1000000000000000, x1, 576, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000020000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffeffdffff, 0xffffffffefffffff, 0x0000000000020000, x1, 584, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000004000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffdbffffff, 0xffffffffdfffffff, 0x0000000004000000, x1, 592, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x8000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x7fffffff7fffffff, 0xffffffff7fffffff, 0x8000000000000000, x1, 600, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000020000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffdfeffffffff, 0xfffffffeffffffff, 0x0000020000000000, x1, 608, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(xor, x12, x10, x11, 0x200002000, 0xfffffffdffffffff, 0xffffffffffffdfff, x1, 616, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x600000000, 0xfffffffbffffffff, 0xfffffffdffffffff, x1, 624, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x1000000800000000, 0xfffffff7ffffffff, 0xefffffffffffffff, x1, 632, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(xor, x12, x10, x11, 0x1010000000, 0xffffffefffffffff, 0xffffffffefffffff, x1, 640, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000400000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffbfdfffffffff, 0xffffffdfffffffff, 0x0000400000000000, x1, 648, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000080000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffbffff7ffff, 0xffffffbfffffffff, 0x0000000000080000, x1, 656, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0002000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffdff7fffffffff, 0xffffff7fffffffff, 0x0002000000000000, x1, 664, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(xor, x12, x10, x11, 0x10000000040, 0xfffffeffffffffff, 0xffffffffffffffbf, x1, 672, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x1000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xeffffdffffffffff, 0xfffffdffffffffff, 0x1000000000000000, x1, 680, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(xor, x12, x10, x11, 0x40020000000, 0xfffffbffffffffff, 0xffffffffdfffffff, x1, 688, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(xor, x12, x10, x11, 0x80002000000, 0xfffff7ffffffffff, 0xfffffffffdffffff, x1, 696, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x2000100000000000, 0xffffefffffffffff, 0xdfffffffffffffff, x1, 704, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000040000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffdbffffffffff, 0xffffdfffffffffff, 0x0000040000000000, x1, 712, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(xor, x12, x10, x11, 0xaaaaeaaaaaaaaaaa, 0xffffbfffffffffff, 0x5555555555555555, x1, 720, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x400800000000000, 0xffff7fffffffffff, 0xfbffffffffffffff, x1, 728, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x2000000000000, 0xfffdffffffffffff, 0xffffffffffffffff, x1, 736, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(xor, x12, x10, x11, 0x4000020000000, 0xfffbffffffffffff, 0xffffffffdfffffff, x1, 744, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0020000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffd7ffffffffffff, 0xfff7ffffffffffff, 0x0020000000000000, x1, 752, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(xor, x12, x10, x11, 0x10000001000000, 0xffefffffffffffff, 0xfffffffffeffffff, x1, 760, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000040000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffdffbffffffffff, 0xffdfffffffffffff, 0x0000040000000000, x1, 768, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000010000
TEST_RR_OP(xor, x12, x10, x11, 0xffbffffffffeffff, 0xffbfffffffffffff, 0x0000000000010000, x1, 776, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(xor, x12, x10, x11, 0x80000000200000, 0xff7fffffffffffff, 0xffffffffffdfffff, x1, 784, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(xor, x12, x10, x11, 0x100000000200000, 0xfeffffffffffffff, 0xffffffffffdfffff, x1, 792, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(xor, x12, x10, x11, 0xfbfffffffffffff8, 0xfbffffffffffffff, 0x0000000000000007, x1, 800, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xfffffffffffffffc
TEST_RR_OP(xor, x12, x10, x11, 0x800000000000003, 0xf7ffffffffffffff, 0xfffffffffffffffc, x1, 808, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(xor, x12, x10, x11, 0x1000000000400000, 0xefffffffffffffff, 0xffffffffffbfffff, x1, 816, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0400000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xdbffffffffffffff, 0xdfffffffffffffff, 0x0400000000000000, x1, 824, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(xor, x12, x10, x11, 0xbffffffffffffffb, 0xbfffffffffffffff, 0x0000000000000004, x1, 832, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffffffbffff
TEST_RR_OP(xor, x12, x10, x11, 0xaaaaaaaaaaaeaaaa, 0x5555555555555555, 0xfffffffffffbffff, x1, 840, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000000000000002
TEST_RR_OP(xor, x12, x10, x11, 0x2, 0x0000000000000000, 0x0000000000000002, x1, 848, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000010
TEST_RR_OP(xor, x12, x10, x11, 0x80000000000010, 0x0080000000000000, 0x0000000000000010, x1, 856, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000080
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffefffff7f, 0xffffffffefffffff, 0x0000000000000080, x1, 864, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000100
TEST_RR_OP(xor, x12, x10, x11, 0x8000100, 0x0000000008000000, 0x0000000000000100, x1, 872, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000200
TEST_RR_OP(xor, x12, x10, x11, 0xffdffffffffffdff, 0xffdfffffffffffff, 0x0000000000000200, x1, 880, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000400
TEST_RR_OP(xor, x12, x10, x11, 0x4000000400, 0x0000004000000000, 0x0000000000000400, x1, 888, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000002000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffffdfef, 0xffffffffffffffef, 0x0000000000002000, x1, 896, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000004000
TEST_RR_OP(xor, x12, x10, x11, 0x4000000004000, 0x0004000000000000, 0x0000000000004000, x1, 904, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000008000
TEST_RR_OP(xor, x12, x10, x11, 0xfffeffffffff7fff, 0xfffeffffffffffff, 0x0000000000008000, x1, 912, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000100000
TEST_RR_OP(xor, x12, x10, x11, 0x80000100000, 0x0000080000000000, 0x0000000000100000, x1, 920, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000200000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffd7ffff, 0xfffffffffff7ffff, 0x0000000000200000, x1, 928, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000400000
TEST_RR_OP(xor, x12, x10, x11, 0x100400000, 0x0000000100000000, 0x0000000000400000, x1, 936, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000800000
TEST_RR_OP(xor, x12, x10, x11, 0xffffff7fff7fffff, 0xffffff7fffffffff, 0x0000000000800000, x1, 944, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000008000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffff3ffffff, 0xfffffffffbffffff, 0x0000000008000000, x1, 952, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0x0000000010000000
TEST_RR_OP(xor, x12, x10, x11, 0x10000007, 0x0000000000000007, 0x0000000010000000, x1, 960, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000040000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffbffbffff, 0xfffffffffffbffff, 0x0000000040000000, x1, 968, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000200000000
TEST_RR_OP(xor, x12, x10, x11, 0xffdffffdffffffff, 0xffdfffffffffffff, 0x0000000200000000, x1, 976, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x0004000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x4000000000080, 0x0000000000000080, 0x0004000000000000, x1, 984, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0010000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffefbfffffffffff, 0xffffbfffffffffff, 0x0010000000000000, x1, 992, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0080000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xff7fefffffffffff, 0xffffefffffffffff, 0x0080000000000000, x1, 1000, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0100000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x180000000000000, 0x0080000000000000, 0x0100000000000000, x1, 1008, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0200000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x200000000200000, 0x0000000000200000, 0x0200000000000000, x1, 1016, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x2000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x2000000000080000, 0x0000000000080000, 0x2000000000000000, x1, 1024, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x4000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x4000000000000200, 0x0000000000000200, 0x4000000000000000, x1, 1032, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xfffffffffffffffe
TEST_RR_OP(xor, x12, x10, x11, 0xffffeffffffffffe, 0x0000100000000000, 0xfffffffffffffffe, x1, 1040, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(xor, x12, x10, x11, 0x3ffffffffffffffb, 0xc000000000000000, 0xfffffffffffffffb, x1, 1048, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(xor, x12, x10, x11, 0xffffffff7ffffff7, 0x0000000080000000, 0xfffffffffffffff7, x1, 1056, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(xor, x12, x10, x11, 0x1000100, 0xfffffffffeffffff, 0xfffffffffffffeff, x1, 1064, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000800000000000
TEST_RR_OP(xor, x12, x10, x11, 0x880000000000, 0x0000080000000000, 0x0000800000000000, x1, 1072, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0xfffffffffffffdff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffffddff, 0x0000000000002000, 0xfffffffffffffdff, x1, 1080, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffffffffffffefff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffff7fffefff, 0x0000000080000000, 0xffffffffffffefff, x1, 1088, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(xor, x12, x10, x11, 0x100000004000, 0xffffefffffffffff, 0xffffffffffffbfff, x1, 1096, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(xor, x12, x10, x11, 0x120000, 0xffffffffffefffff, 0xfffffffffffdffff, x1, 1104, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(xor, x12, x10, x11, 0x0, 0xffffffffff7fffff, 0xffffffffff7fffff, x1, 1112, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000080000000000
TEST_RR_OP(xor, x12, x10, x11, 0x80000000000, 0x0000000000000000, 0x0000080000000000, x1, 1120, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(xor, x12, x10, x11, 0x81000000, 0xfffffffffeffffff, 0xffffffff7fffffff, x1, 1128, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0xfffffffeffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffefffffffa, 0x0000000000000005, 0xfffffffeffffffff, x1, 1136, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000400000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffbfeffffff, 0xfffffffffeffffff, 0x0000000400000000, x1, 1144, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0xfffffffbffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffbfffdffff, 0x0000000000020000, 0xfffffffbffffffff, x1, 1152, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0x0000000800000000
TEST_RR_OP(xor, x12, x10, x11, 0x800000040, 0x0000000000000040, 0x0000000800000000, x1, 1160, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000001000000000
TEST_RR_OP(xor, x12, x10, x11, 0x1000001000000000, 0x1000000000000000, 0x0000001000000000, x1, 1168, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffddfffffffff, 0x0000020000000000, 0xffffffdfffffffff, x1, 1176, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000004000000000
TEST_RR_OP(xor, x12, x10, x11, 0xff7fffbfffffffff, 0xff7fffffffffffff, 0x0000004000000000, x1, 1184, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffff7fffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffefff7fffffffff, 0x0010000000000000, 0xffffff7fffffffff, x1, 1192, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x20080000000000, 0xffdfffffffffffff, 0xfffff7ffffffffff, x1, 1200, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x900000000000, 0xffffefffffffffff, 0xffff7fffffffffff, x1, 1208, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000010000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffe7fffffffff, 0xffffff7fffffffff, 0x0000010000000000, x1, 1216, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0xfffeffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffefffffffdffff, 0x0000000000020000, 0xfffeffffffffffff, x1, 1224, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(xor, x12, x10, x11, 0x7fffffffffdfffff, 0x8000000000000000, 0xffffffffffdfffff, x1, 1232, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffffffffd, 0x0000000000000000, 0xfffffffffffffffd, x1, 1240, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x8000004000000000, 0x7fffffffffffffff, 0xffffffbfffffffff, x1, 1248, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xfffdffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffdfffffffffffe, 0x0000000000000001, 0xfffdffffffffffff, x1, 1256, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x7dffffffffffffff, 0xfdffffffffffffff, 0x8000000000000000, x1, 1264, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x8000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x8000000000000010, 0x0000000000000010, 0x8000000000000000, x1, 1272, x2)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0008000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x8000000000020, 0x0000000000000020, 0x0008000000000000, x1, 1280, x2)
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
    .fill 16*(XLEN/32),4,0xafacadee


signature_x5_0:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 161*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
