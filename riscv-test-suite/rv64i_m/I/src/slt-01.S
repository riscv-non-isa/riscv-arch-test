
#This assembly file tests the slt instruction of the RISC-V I extension for the slt covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slt)

la x6,signature_x6_1

# opcode: slt ; op1:x20; op2:x27; dest:x4; op1val:0x8000000000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(slt, x4, x20, x27, 0x1, 0x8000000000000000, 0xffffffffffefffff, x6, 0, x3)

# opcode: slt ; op1:x13; op2:x13; dest:x13; op1val:0x0000000000000000;  op2val:0xffffffefffffffff
TEST_RR_OP(slt, x13, x13, x13, 0x0, 0x0000000000000000, 0xffffffefffffffff, x6, 8, x3)

# opcode: slt ; op1:x31; op2:x19; dest:x19; op1val:0x7fffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(slt, x19, x31, x19, 0x0, 0x7fffffffffffffff, 0x0000000000000007, x6, 16, x3)

# opcode: slt ; op1:x12; op2:x7; dest:x12; op1val:0x0000000000000001;  op2val:0x4000000000000000
TEST_RR_OP(slt, x12, x12, x7, 0x1, 0x0000000000000001, 0x4000000000000000, x6, 24, x3)

# opcode: slt ; op1:x10; op2:x10; dest:x20; op1val:0x0000800000000000;  op2val:0x8000000000000000
TEST_RR_OP(slt, x20, x10, x10, 0x0, 0x0000800000000000, 0x8000000000000000, x6, 32, x3)

# opcode: slt ; op1:x4; op2:x17; dest:x25; op1val:0x0000000200000000;  op2val:0x0000000000000000
TEST_RR_OP(slt, x25, x4, x17, 0x0, 0x0000000200000000, 0x0000000000000000, x6, 40, x3)

# opcode: slt ; op1:x21; op2:x20; dest:x17; op1val:0x0010000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(slt, x17, x21, x20, 0x1, 0x0010000000000000, 0x7fffffffffffffff, x6, 48, x3)

# opcode: slt ; op1:x27; op2:x26; dest:x22; op1val:0xbfffffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(slt, x22, x27, x26, 0x1, 0xbfffffffffffffff, 0x0000000000000001, x6, 56, x3)

# opcode: slt ; op1:x16; op2:x30; dest:x2; op1val:0x1000000000000000;  op2val:0x1000000000000000
TEST_RR_OP(slt, x2, x16, x30, 0x0, 0x1000000000000000, 0x1000000000000000, x6, 64, x3)

# opcode: slt ; op1:x22; op2:x9; dest:x29; op1val:0x0000000000000002;  op2val:0x0000200000000000
TEST_RR_OP(slt, x29, x22, x9, 0x1, 0x0000000000000002, 0x0000200000000000, x6, 72, x3)

# opcode: slt ; op1:x8; op2:x16; dest:x24; op1val:0x0000000000000004;  op2val:0xffffdfffffffffff
TEST_RR_OP(slt, x24, x8, x16, 0x0, 0x0000000000000004, 0xffffdfffffffffff, x6, 80, x3)

# opcode: slt ; op1:x29; op2:x15; dest:x27; op1val:0x0000000000000008;  op2val:0xffdfffffffffffff
TEST_RR_OP(slt, x27, x29, x15, 0x0, 0x0000000000000008, 0xffdfffffffffffff, x6, 88, x3)

# opcode: slt ; op1:x11; op2:x29; dest:x14; op1val:0x0000000000000010;  op2val:0x2000000000000000
TEST_RR_OP(slt, x14, x11, x29, 0x1, 0x0000000000000010, 0x2000000000000000, x6, 96, x3)

# opcode: slt ; op1:x0; op2:x4; dest:x31; op1val:0x0000000000000020;  op2val:0xfffffffffffffff6
TEST_RR_OP(slt, x31, x0, x4, 0x0, 0x0000000000000020, 0xfffffffffffffff6, x6, 104, x3)

# opcode: slt ; op1:x30; op2:x8; dest:x28; op1val:0x0000000000000040;  op2val:0x0000002000000000
TEST_RR_OP(slt, x28, x30, x8, 0x1, 0x0000000000000040, 0x0000002000000000, x6, 112, x3)

# opcode: slt ; op1:x25; op2:x5; dest:x1; op1val:0x0000000000000080;  op2val:0xffffffffffff7fff
TEST_RR_OP(slt, x1, x25, x5, 0x0, 0x0000000000000080, 0xffffffffffff7fff, x6, 120, x3)

# opcode: slt ; op1:x1; op2:x12; dest:x3; op1val:0x0000000000000100;  op2val:0xfbffffffffffffff
TEST_RR_OP(slt, x3, x1, x12, 0x0, 0x0000000000000100, 0xfbffffffffffffff, x6, 128, x13)
la x4,signature_x4_0

# opcode: slt ; op1:x3; op2:x1; dest:x23; op1val:0x0000000000000200;  op2val:0xffffffffffdfffff
TEST_RR_OP(slt, x23, x3, x1, 0x0, 0x0000000000000200, 0xffffffffffdfffff, x4, 0, x13)

# opcode: slt ; op1:x7; op2:x24; dest:x8; op1val:0x0000000000000400;  op2val:0x0000000000000003
TEST_RR_OP(slt, x8, x7, x24, 0x0, 0x0000000000000400, 0x0000000000000003, x4, 8, x13)

# opcode: slt ; op1:x17; op2:x14; dest:x11; op1val:0x0000000000000800;  op2val:0x0000000000000000
TEST_RR_OP(slt, x11, x17, x14, 0x0, 0x0000000000000800, 0x0000000000000000, x4, 16, x13)

# opcode: slt ; op1:x9; op2:x28; dest:x5; op1val:0x0000000000001000;  op2val:0xffffffffffffbfff
TEST_RR_OP(slt, x5, x9, x28, 0x0, 0x0000000000001000, 0xffffffffffffbfff, x4, 24, x13)

# opcode: slt ; op1:x19; op2:x31; dest:x30; op1val:0x0000000000002000;  op2val:0x0000800000000000
TEST_RR_OP(slt, x30, x19, x31, 0x1, 0x0000000000002000, 0x0000800000000000, x4, 32, x13)

# opcode: slt ; op1:x28; op2:x18; dest:x26; op1val:0x0000000000004000;  op2val:0xffbfffffffffffff
TEST_RR_OP(slt, x26, x28, x18, 0x0, 0x0000000000004000, 0xffbfffffffffffff, x4, 40, x13)

# opcode: slt ; op1:x26; op2:x22; dest:x16; op1val:0x0000000000008000;  op2val:0x0000000000000007
TEST_RR_OP(slt, x16, x26, x22, 0x0, 0x0000000000008000, 0x0000000000000007, x4, 48, x13)

# opcode: slt ; op1:x2; op2:x11; dest:x6; op1val:0x0000000000010000;  op2val:0x0020000000000000
TEST_RR_OP(slt, x6, x2, x11, 0x1, 0x0000000000010000, 0x0020000000000000, x4, 56, x13)

# opcode: slt ; op1:x6; op2:x3; dest:x21; op1val:0x0000000000020000;  op2val:0xfbffffffffffffff
TEST_RR_OP(slt, x21, x6, x3, 0x0, 0x0000000000020000, 0xfbffffffffffffff, x4, 64, x13)

# opcode: slt ; op1:x24; op2:x21; dest:x0; op1val:0x0000000000040000;  op2val:0xffffffffffffffff
TEST_RR_OP(slt, x0, x24, x21, 0x0, 0x0000000000040000, 0xffffffffffffffff, x4, 72, x13)

# opcode: slt ; op1:x15; op2:x23; dest:x10; op1val:0x0000000000080000;  op2val:0x1000000000000000
TEST_RR_OP(slt, x10, x15, x23, 0x1, 0x0000000000080000, 0x1000000000000000, x4, 80, x13)

# opcode: slt ; op1:x14; op2:x2; dest:x9; op1val:0x0000000000100000;  op2val:0xffffffffffff7fff
TEST_RR_OP(slt, x9, x14, x2, 0x0, 0x0000000000100000, 0xffffffffffff7fff, x4, 88, x13)

# opcode: slt ; op1:x23; op2:x0; dest:x7; op1val:0x0000000000200000;  op2val:0xfffffffffffffbff
TEST_RR_OP(slt, x7, x23, x0, 0x0, 0x0000000000200000, 0xfffffffffffffbff, x4, 96, x13)

# opcode: slt ; op1:x5; op2:x25; dest:x18; op1val:0x0000000000400000;  op2val:0xffffffffffffefff
TEST_RR_OP(slt, x18, x5, x25, 0x0, 0x0000000000400000, 0xffffffffffffefff, x4, 104, x13)

# opcode: slt ; op1:x18; op2:x6; dest:x15; op1val:0x0000000000800000;  op2val:0x0010000000000000
TEST_RR_OP(slt, x15, x18, x6, 0x1, 0x0000000000800000, 0x0010000000000000, x4, 112, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000001
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000001000000, 0x0000000000000001, x4, 120, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000004000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000002000000, 0x0000000000004000, x4, 128, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000080000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000004000000, 0x0000000000080000, x4, 136, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000008000000, 0xfffffffffffffdff, x4, 144, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000002000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000010000000, 0x0000000002000000, x4, 152, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000010000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000020000000, 0x0000000000010000, x4, 160, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000002000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000040000000, 0x0000000000002000, x4, 168, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000080000000, 0xffffffffffbfffff, x4, 176, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000100000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000100000000, 0x0000100000000000, x4, 184, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0020000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000400000000, 0x0020000000000000, x4, 192, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000800000000, 0xfffffffffff7ffff, x4, 200, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffffffffffffffa
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000001000000000, 0xfffffffffffffffa, x4, 208, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000002000000000, 0xfffffeffffffffff, x4, 216, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000020000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000004000000000, 0x0000020000000000, x4, 224, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000100000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000008000000000, 0x0000000000100000, x4, 232, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffffffffdffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000010000000000, 0xfffffffffdffffff, x4, 240, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000040000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000000040000000, x4, 248, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000040000000000, 0xfffffdffffffffff, x4, 256, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0100000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000080000000000, 0x0100000000000000, x4, 264, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000100000000000, 0xfffffffffffffffb, x4, 272, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0020000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000200000000000, 0x0020000000000000, x4, 280, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000100000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000400000000000, 0x0000000000100000, x4, 288, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xfffffffffdffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0001000000000000, 0xfffffffffdffffff, x4, 296, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xc000000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0002000000000000, 0xc000000000000000, x4, 304, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000200000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000000200000, x4, 312, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000020000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0008000000000000, 0x0000020000000000, x4, 320, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffffffefffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0020000000000000, 0xffffffefffffffff, x4, 328, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0040000000000000, 0xfffffffffffff7ff, x4, 336, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000004
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000004, x4, 344, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0100000000000000, 0xffffffffffff7fff, x4, 352, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0200000000000000, 0xfffffdffffffffff, x4, 360, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0400000000000000, 0xfffffffffffbffff, x4, 368, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000009
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000000009, x4, 376, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x2000000000000000, 0xffdfffffffffffff, x4, 384, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x4000000000000000, 0xfffffffffffff7ff, x4, 392, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfffffffffeffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffffffe, 0xfffffffffeffffff, x4, 400, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffeffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffffffd, 0xfffeffffffffffff, x4, 408, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000100000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffffffb, 0x0000100000000000, x4, 416, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xffffffffdfffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffffff7, 0xffffffffdfffffff, x4, 424, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffffffffbfff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffffef, 0xffffffffffffbfff, x4, 432, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000002000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffffffdf, 0x0000000000002000, x4, 440, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000001000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffffffbf, 0x0000000000001000, x4, 448, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffffffffffffd
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffffff7f, 0xfffffffffffffffd, x4, 456, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x4000000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffffeff, 0x4000000000000000, x4, 464, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000009
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffffdff, 0x0000000000000009, x4, 472, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000020000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffffbff, 0x0000000000020000, x4, 480, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffff7ff, 0xfffff7ffffffffff, x4, 488, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfffffbffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffefff, 0xfffffbffffffffff, x4, 496, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xff7fffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffdfff, 0xff7fffffffffffff, x4, 504, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x1000000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffffbfff, 0x1000000000000000, x4, 512, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffff7fffffffffff, 0xfffbffffffffffff, x4, 520, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfff7ffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffffbf, 0xfff7ffffffffffff, x4, 528, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xffefffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000100000000, 0xffefffffffffffff, x4, 536, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0010000000000000, 0xfeffffffffffffff, x4, 544, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffdffffffffff, 0xfdffffffffffffff, x4, 552, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffdffffffffffff, 0xf7ffffffffffffff, x4, 560, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xefffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000200000000, 0xefffffffffffffff, x4, 568, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000080000000, 0xdfffffffffffffff, x4, 576, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000001000000000, 0xbfffffffffffffff, x4, 584, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x5555555555555555
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0800000000000000, 0x5555555555555555, x4, 592, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfeffffffffffffff, 0xaaaaaaaaaaaaaaaa, x4, 600, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfffffffeffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffff7fff, 0xfffffffeffffffff, x4, 608, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000800
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffeffff, 0x0000000000000800, x4, 616, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xffffffffffffffef
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffdffff, 0xffffffffffffffef, x4, 624, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffbffff, 0xfffffffffffffffd, x4, 632, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0040000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffff7ffff, 0x0040000000000000, x4, 640, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000020000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffefffff, 0x0000000020000000, x4, 648, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000002000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffdfffff, 0x0000000002000000, x4, 656, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0020000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffbfffff, 0x0020000000000000, x4, 664, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000400
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffff7fffff, 0x0000000000000400, x4, 672, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffffffffffbff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffeffffff, 0xfffffffffffffbff, x4, 680, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000040
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffdffffff, 0x0000000000000040, x4, 688, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x8000000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffbffffff, 0x8000000000000000, x4, 696, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000800000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffff7ffffff, 0x0000000800000000, x4, 704, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000008
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffefffffff, 0x0000000000000008, x4, 712, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000009
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffdfffffff, 0x0000000000000009, x4, 720, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000400000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffbfffffff, 0x0000000400000000, x4, 728, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffff7fffffff, 0xffffffffffefffff, x4, 736, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000200000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffeffffffff, 0x0000200000000000, x4, 744, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000400000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffdffffffff, 0x0000000400000000, x4, 752, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000001
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffbffffffff, 0x0000000000000001, x4, 760, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000100000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffff7ffffffff, 0x0000100000000000, x4, 768, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffefffffffff, 0xfffffffffffffffe, x4, 776, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xffffffffffffffef
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffdfffffffff, 0xffffffffffffffef, x4, 784, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000020000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffbfffffffff, 0x0000020000000000, x4, 792, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffff7fffffffff, 0xffdfffffffffffff, x4, 800, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000000100000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffeffffffffff, 0x0000000000100000, x4, 808, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffbffffffffff, 0xffffffffffefffff, x4, 816, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffff7ffffffffff, 0xfffffffffffeffff, x4, 824, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffefffffffffff, 0xfffffffffeffffff, x4, 832, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffdfffffffffff, 0x0000000000000001, x4, 840, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffbfffffffffff, 0xfffffffff7ffffff, x4, 848, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000001000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffeffffffffffff, 0x0000000000001000, x4, 856, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffbffffffffffff, 0xffbfffffffffffff, x4, 864, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfff7ffffffffffff, 0xfffffffffffffffe, x4, 872, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000080000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffefffffffffffff, 0x0000000080000000, x4, 880, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffdfffffffffffff, 0x0000000000000100, x4, 888, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffbfffffffffffff, 0xffffffffffffff7f, x4, 896, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0800000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xff7fffffffffffff, 0x0800000000000000, x4, 904, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfdffffffffffffff, 0x8000000000000000, x4, 912, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfbffffffffffffff, 0x0000010000000000, x4, 920, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xf7ffffffffffffff, 0xffffffff7fffffff, x4, 928, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xefffffffffffffff, 0xfffffffeffffffff, x4, 936, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xdfffffffffffffff, 0xfffdffffffffffff, x4, 944, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0100000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x5555555555555555, 0x0100000000000000, x4, 952, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000100
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xaaaaaaaaaaaaaaaa, 0x0000000000000100, x4, 960, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0x0000000000000002
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000400, 0x0000000000000002, x4, 968, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000010
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000010, x4, 976, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000000000020
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000020, 0x0000000000000020, x4, 984, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000000000000080
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000000000, 0x0000000000000080, x4, 992, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0x0000000000000200
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffffffff6, 0x0000000000000200, x4, 1000, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000008000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffbfffffff, 0x0000000000008000, x4, 1008, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000040000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffff7fffff, 0x0000000000040000, x4, 1016, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000400000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffdfffffff, 0x0000000000400000, x4, 1024, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000800000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffdffffff, 0x0000000000800000, x4, 1032, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000001000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffefffffffff, 0x0000000001000000, x4, 1040, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000004000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000002000000000, 0x0000000004000000, x4, 1048, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000008000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000008000000, x4, 1056, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000010000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffdffffffffff, 0x0000000010000000, x4, 1064, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000100000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffdfffffffffff, 0x0000000100000000, x4, 1072, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0x0000000200000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000000800, 0x0000000200000000, x4, 1080, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000001000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000080000000, 0x0000001000000000, x4, 1088, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0004000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffffffef, 0x0004000000000000, x4, 1096, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0008000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffffffffbfff, 0x0008000000000000, x4, 1104, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0x0080000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000000800, 0x0080000000000000, x4, 1112, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0200000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffefffffffffff, 0x0200000000000000, x4, 1120, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0400000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000000002, 0x0400000000000000, x4, 1128, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000000, 0xfffffffffffffff7, x4, 1136, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0xffffffffffffffdf
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000008000, 0xffffffffffffffdf, x4, 1144, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfffffffffeffffff, 0xffffffffffffffbf, x4, 1152, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0xfffffffffffffeff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffffff9, 0xfffffffffffffeff, x4, 1160, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0xffffffffffffdfff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000010, 0xffffffffffffdfff, x4, 1168, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xfff7ffffffffffff, 0xfffffffffffdffff, x4, 1176, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffff7fffffffffff, 0xffffffffff7fffff, x4, 1184, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xfffffffffbffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000080000, 0xfffffffffbffffff, x4, 1192, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffefffffff, 0xffffffffefffffff, x4, 1200, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000002000000000, 0xffffffffbfffffff, x4, 1208, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0xfffffffdffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xfffffffffffffff8, 0xfffffffdffffffff, x4, 1216, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffffbfffffffff, 0xfffffffbffffffff, x4, 1224, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffefff, 0xfffffff7ffffffff, x4, 1232, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0xffffffdfffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000009, 0xffffffdfffffffff, x4, 1240, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000400000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000080000000, 0x0000400000000000, x4, 1248, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000004000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffff7fffffffffff, 0x0000004000000000, x4, 1256, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0xffffffbfffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000008000, 0xffffffbfffffffff, x4, 1264, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000008000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x7fffffffffffffff, 0x0000008000000000, x4, 1272, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xffffdfffffffffff, 0xffffff7fffffffff, x4, 1280, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000040000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0020000000000000, 0x0000040000000000, x4, 1288, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000080000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0200000000000000, 0x0000080000000000, x4, 1296, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0001000000000000, 0xffffefffffffffff, x4, 1304, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xffffbfffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffffbfff, 0xffffbfffffffffff, x4, 1312, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0xffffffffffbfffff, 0xffff7fffffffffff, x4, 1320, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0001000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000010000, 0x0001000000000000, x4, 1328, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0002000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0xefffffffffffffff, 0x0002000000000000, x4, 1336, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xffffffefffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000000, 0xffffffefffffffff, x4, 1344, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x7fffffffffffffff, 0x0000000000000007, x4, 1352, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x4000000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x1, 0x0000000000000001, 0x4000000000000000, x4, 1360, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x8000000000000000
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000800000000000, 0x8000000000000000, x4, 1368, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0xfffffffffffffff6
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000000020, 0xfffffffffffffff6, x4, 1376, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0xffffffffffffffff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000040000, 0xffffffffffffffff, x4, 1384, x13)

# opcode: slt ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0xfffffffffffffbff
TEST_RR_OP(slt, x12, x10, x11, 0x0, 0x0000000000200000, 0xfffffffffffffbff, x4, 1392, x13)
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
    .fill 17*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 175*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
