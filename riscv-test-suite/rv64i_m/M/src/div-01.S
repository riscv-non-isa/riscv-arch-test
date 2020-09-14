
#This assembly file tests the div instruction of the RISC-V M extension for the div covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",div)

la x7,signature_x7_1

# opcode: div ; op1:x26; op2:x26; dest:x23; op1val:0x8000000000000000;  op2val:0x0000040000000000
TEST_RR_OP(div, x23, x26, x26, 0x0000000000000000, 0x8000000000000000, 0x0000040000000000, x7, 0, x8)

# opcode: div ; op1:x3; op2:x23; dest:x3; op1val:0x0000000000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(div, x3, x3, x23, 0x0000000000000000, 0x0000000000000000, 0xffffffffffefffff, x7, 8, x8)

# opcode: div ; op1:x25; op2:x25; dest:x25; op1val:0x7fffffffffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(div, x25, x25, x25, 0x0000000000000000, 0x7fffffffffffffff, 0xffbfffffffffffff, x7, 16, x8)

# opcode: div ; op1:x16; op2:x2; dest:x24; op1val:0x0000000000000001;  op2val:0xfffeffffffffffff
TEST_RR_OP(div, x24, x16, x2, 0x0000000000000000, 0x0000000000000001, 0xfffeffffffffffff, x7, 24, x8)

# opcode: div ; op1:x19; op2:x1; dest:x1; op1val:0x0000000000000080;  op2val:0x8000000000000000
TEST_RR_OP(div, x1, x19, x1, 0x0000000000000000, 0x0000000000000080, 0x8000000000000000, x7, 32, x8)

# opcode: div ; op1:x6; op2:x3; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000000
TEST_RR_OP(div, x12, x6, x3, 0x0000000000000000, 0x0000000200000000, 0x0000000000000000, x7, 40, x8)

# opcode: div ; op1:x11; op2:x5; dest:x10; op1val:0x0008000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(div, x10, x11, x5, 0x0000000000000000, 0x0008000000000000, 0x7fffffffffffffff, x7, 48, x8)

# opcode: div ; op1:x22; op2:x0; dest:x13; op1val:0x0000000000000080;  op2val:0x0000000000000001
TEST_RR_OP(div, x13, x22, x0, 0x0000000000000000, 0x0000000000000080, 0x0000000000000001, x7, 56, x8)

# opcode: div ; op1:x31; op2:x10; dest:x14; op1val:0xffffffffffdfffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(div, x14, x31, x10, 0x0000000000000000, 0xffffffffffdfffff, 0xfffffffffffffeff, x7, 64, x8)

# opcode: div ; op1:x28; op2:x14; dest:x0; op1val:0x0000000000000009;  op2val:0x0000000000000009
TEST_RR_OP(div, x0, x28, x14, 0x0000000000000000, 0x0000000000000009, 0x0000000000000009, x7, 72, x8)

# opcode: div ; op1:x14; op2:x17; dest:x15; op1val:0x0000000000000002;  op2val:0x7fffffffffffffff
TEST_RR_OP(div, x15, x14, x17, 0x0000000000000000, 0x0000000000000002, 0x7fffffffffffffff, x7, 80, x8)

# opcode: div ; op1:x0; op2:x9; dest:x16; op1val:0x0000000000000004;  op2val:0x0800000000000000
TEST_RR_OP(div, x16, x0, x9, 0x0000000000000000, 0x0000000000000004, 0x0800000000000000, x7, 88, x8)

# opcode: div ; op1:x23; op2:x19; dest:x29; op1val:0x0000000000000008;  op2val:0xfffffffffffffff9
TEST_RR_OP(div, x29, x23, x19, 0x0000000000000000, 0x0000000000000008, 0xfffffffffffffff9, x7, 96, x8)

# opcode: div ; op1:x18; op2:x16; dest:x21; op1val:0x0000000000000010;  op2val:0x0000000008000000
TEST_RR_OP(div, x21, x18, x16, 0x0000000000000000, 0x0000000000000010, 0x0000000008000000, x7, 104, x8)

# opcode: div ; op1:x4; op2:x12; dest:x27; op1val:0x0000000000000020;  op2val:0x8000000000000000
TEST_RR_OP(div, x27, x4, x12, 0x0000000000000000, 0x0000000000000020, 0x8000000000000000, x7, 112, x8)

# opcode: div ; op1:x21; op2:x29; dest:x5; op1val:0x0000000000000040;  op2val:0x0004000000000000
TEST_RR_OP(div, x5, x21, x29, 0x0000000000000000, 0x0000000000000040, 0x0004000000000000, x7, 120, x3)

# opcode: div ; op1:x1; op2:x13; dest:x22; op1val:0x0000000000000100;  op2val:0x0000000000004000
TEST_RR_OP(div, x22, x1, x13, 0x0000000000000000, 0x0000000000000100, 0x0000000000004000, x7, 128, x3)

# opcode: div ; op1:x12; op2:x30; dest:x6; op1val:0x0000000000000200;  op2val:0x0000000800000000
TEST_RR_OP(div, x6, x12, x30, 0x0000000000000000, 0x0000000000000200, 0x0000000800000000, x7, 136, x3)
la x1,signature_x1_0

# opcode: div ; op1:x24; op2:x6; dest:x18; op1val:0x0000000000000400;  op2val:0x0000040000000000
TEST_RR_OP(div, x18, x24, x6, 0x0000000000000000, 0x0000000000000400, 0x0000040000000000, x1, 0, x3)

# opcode: div ; op1:x2; op2:x7; dest:x9; op1val:0x0000000000000800;  op2val:0x0000000000000400
TEST_RR_OP(div, x9, x2, x7, 0x0000000000000000, 0x0000000000000800, 0x0000000000000400, x1, 8, x3)

# opcode: div ; op1:x5; op2:x20; dest:x31; op1val:0x0000000000001000;  op2val:0x0000000000000400
TEST_RR_OP(div, x31, x5, x20, 0x0000000000000000, 0x0000000000001000, 0x0000000000000400, x1, 16, x3)

# opcode: div ; op1:x13; op2:x22; dest:x11; op1val:0x0000000000002000;  op2val:0x0000000000000003
TEST_RR_OP(div, x11, x13, x22, 0x0000000000000000, 0x0000000000002000, 0x0000000000000003, x1, 24, x3)

# opcode: div ; op1:x17; op2:x31; dest:x19; op1val:0x0000000000004000;  op2val:0x0800000000000000
TEST_RR_OP(div, x19, x17, x31, 0x0000000000000000, 0x0000000000004000, 0x0800000000000000, x1, 32, x3)

# opcode: div ; op1:x27; op2:x24; dest:x2; op1val:0x0000000000008000;  op2val:0x0020000000000000
TEST_RR_OP(div, x2, x27, x24, 0x0000000000000000, 0x0000000000008000, 0x0020000000000000, x1, 40, x3)

# opcode: div ; op1:x29; op2:x4; dest:x20; op1val:0x0000000000010000;  op2val:0x0000002000000000
TEST_RR_OP(div, x20, x29, x4, 0x0000000000000000, 0x0000000000010000, 0x0000002000000000, x1, 48, x3)

# opcode: div ; op1:x8; op2:x18; dest:x28; op1val:0x0000000000020000;  op2val:0x0000000000800000
TEST_RR_OP(div, x28, x8, x18, 0x0000000000000000, 0x0000000000020000, 0x0000000000800000, x1, 56, x3)

# opcode: div ; op1:x30; op2:x28; dest:x17; op1val:0x0000000000040000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(div, x17, x30, x28, 0x0000000000000000, 0x0000000000040000, 0xfffff7ffffffffff, x1, 64, x3)

# opcode: div ; op1:x15; op2:x21; dest:x26; op1val:0x0000000000080000;  op2val:0x0000000000000007
TEST_RR_OP(div, x26, x15, x21, 0x0000000000000000, 0x0000000000080000, 0x0000000000000007, x1, 72, x3)

# opcode: div ; op1:x10; op2:x11; dest:x4; op1val:0x0000000000100000;  op2val:0x0000200000000000
TEST_RR_OP(div, x4, x10, x11, 0x0000000000000000, 0x0000000000100000, 0x0000200000000000, x1, 80, x3)

# opcode: div ; op1:x20; op2:x8; dest:x7; op1val:0x0000000000200000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(div, x7, x20, x8, 0x0000000000000000, 0x0000000000200000, 0xfffffff7ffffffff, x1, 88, x3)

# opcode: div ; op1:x9; op2:x15; dest:x30; op1val:0x0000000000400000;  op2val:0xbfffffffffffffff
TEST_RR_OP(div, x30, x9, x15, 0x0000000000000000, 0x0000000000400000, 0xbfffffffffffffff, x1, 96, x3)

# opcode: div ; op1:x7; op2:x27; dest:x8; op1val:0x0000000000800000;  op2val:0xff7fffffffffffff
TEST_RR_OP(div, x8, x7, x27, 0x0000000000000000, 0x0000000000800000, 0xff7fffffffffffff, x1, 104, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000001000000, 0xfffffffdffffffff, x1, 112, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000002000000, 0xfffff7ffffffffff, x1, 120, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0xfff7ffffffffffff, x1, 128, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0800000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0x0800000000000000, x1, 136, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xffffffffffefffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0xffffffffffefffff, x1, 144, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000080
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0x0000000000000080, x1, 152, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000800
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0x0000000000000800, x1, 160, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xfdffffffffffffff, x1, 168, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000800
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x0000000000000800, x1, 176, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0xfffffffffffffdff, x1, 184, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000006
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0x0000000000000006, x1, 192, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000008
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0x0000000000000008, x1, 200, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffffffffffffa
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xfffffffffffffffa, x1, 208, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000002000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000002000000000, x1, 216, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xffffdfffffffffff, x1, 224, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0400000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0x0400000000000000, x1, 232, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0xfffffffbffffffff, x1, 240, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0xfffffffffffffeff, x1, 248, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffffffffdffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0xfffffffffdffffff, x1, 256, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffffefffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xffffffffefffffff, x1, 264, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000020
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0x0000000000000020, x1, 272, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xfffffffffffffbff, x1, 280, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xffffffffdfffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0xffffffffdfffffff, x1, 288, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0xfffffffffffffeff, x1, 296, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000004
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0000000000000004, x1, 304, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000001000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0x0000001000000000, x1, 312, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xffff7fffffffffff, x1, 320, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000010000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000010000000000, x1, 328, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0xfffffffffffffffb, x1, 336, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000080000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0x0000080000000000, x1, 344, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0xfffffffff7ffffff, x1, 352, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0xaaaaaaaaaaaaaaaa, x1, 360, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000005
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0x0000000000000005, x1, 368, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000100000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0x0000100000000000, x1, 376, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000008000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0x0000000008000000, x1, 384, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x2000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0x2000000000000000, x1, 392, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0400000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0x0400000000000000, x1, 400, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfffffffffffffffa
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0xfffffffffffffffa, x1, 408, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xffffffefffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0xffffffefffffffff, x1, 416, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfff7ffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0xfff7ffffffffffff, x1, 424, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000800
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0x0000000000000800, x1, 432, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xfffffffffffffeff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xfffffffffffffeff, x1, 440, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffffffffffeffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0xfffffffffffeffff, x1, 448, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xffffffffff7fffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0xffffffffff7fffff, x1, 456, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffbffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0xfffffbffffffffff, x1, 464, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfffffffffffffdff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xfffffffffffffdff, x1, 472, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000002000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0x0000000000002000, x1, 480, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000100
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0x0000000000000100, x1, 488, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xfffdffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0xfffdffffffffffff, x1, 496, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000040000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0x0000000000040000, x1, 504, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xfffbffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0xfffbffffffffffff, x1, 512, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffefffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0xffefffffffffffff, x1, 520, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0xffdfffffffffffff, x1, 528, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0xfeffffffffffffff, x1, 536, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xfbffffffffffffff, x1, 544, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000004000, 0xf7ffffffffffffff, x1, 552, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xefffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xefffffffffffffff, x1, 560, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0xdfffffffffffffff, x1, 568, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x5555555555555555
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0x5555555555555555, x1, 576, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0800000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0x0800000000000000, x1, 584, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfffffffffffffff8
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0xfffffffffffffff8, x1, 592, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0040000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0x0040000000000000, x1, 600, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xfbffffffffffffff, x1, 608, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xffffffffffffff7f, x1, 616, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xffefffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0xffefffffffffffff, x1, 624, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xffffffffffffffef
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0xffffffffffffffef, x1, 632, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x2000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0x2000000000000000, x1, 640, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000800000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0x0000800000000000, x1, 648, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0001000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0x0001000000000000, x1, 656, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0xfffffffdffffffff, x1, 664, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0xffbfffffffffffff, x1, 672, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000008000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0x0000000000008000, x1, 680, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000200000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0x0000000200000000, x1, 688, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000008000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0x0000008000000000, x1, 696, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000200000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0x0000000000200000, x1, 704, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000800000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0x0000800000000000, x1, 712, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xffffffffffffffef
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0xffffffffffffffef, x1, 720, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0xfffffffff7ffffff, x1, 728, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000002
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0x0000000000000002, x1, 736, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0xffffffffffffdfff, x1, 744, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000040000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0x0000040000000000, x1, 752, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000040
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0x0000000000000040, x1, 760, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0100000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0x0100000000000000, x1, 768, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0xffffefffffffffff, x1, 776, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0xffdfffffffffffff, x1, 784, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000200000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0x0000200000000000, x1, 792, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffffffffffff9
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xfffffffffffffff9, x1, 800, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0xfffffffdffffffff, x1, 808, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0xfffeffffffffffff, x1, 816, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000040000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0x0000040000000000, x1, 824, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000000000005, x1, 832, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0xfffffffffffdffff, x1, 840, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0xffffffff7fffffff, x1, 848, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0xfffffffffff7ffff, x1, 856, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0800000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0x0800000000000000, x1, 864, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000002000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0x0000000000002000, x1, 872, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0xffffffffffff7fff, x1, 880, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xffffffffefffffff, x1, 888, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0x0000000000000100, x1, 896, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0xffff7fffffffffff, x1, 904, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0xffffffffffdfffff, x1, 912, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0004000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0x0004000000000000, x1, 920, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000002000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0x0000000000002000, x1, 928, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000800
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0x0000000000000800, x1, 936, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000080000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x0000000000080000, x1, 944, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000008
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0x0000000000000008, x1, 952, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000010
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0x0000000000000010, x1, 960, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000200
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0x0000000000000200, x1, 968, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000001000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0x0000000000001000, x1, 976, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0x0000000000010000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000040, 0x0000000000010000, x1, 984, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000020000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0x0000000000020000, x1, 992, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0x0000000000100000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000800, 0x0000000000100000, x1, 1000, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000400000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0x0000000000400000, x1, 1008, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000001000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x0000000001000000, x1, 1016, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000002000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000002000000, 0x0000000002000000, x1, 1024, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000004000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0000000004000000, x1, 1032, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000010000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000020000, 0x0000000010000000, x1, 1040, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000020000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0x0000000020000000, x1, 1048, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000040000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000020, 0x0000000040000000, x1, 1056, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000080000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000040000, 0x0000000080000000, x1, 1064, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000100000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0x0000000100000000, x1, 1072, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0008000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000008, 0x0008000000000000, x1, 1080, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x0010000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000001000, 0x0010000000000000, x1, 1088, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0080000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0x0080000000000000, x1, 1096, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0200000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0200000000000000, x1, 1104, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x1000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0x1000000000000000, x1, 1112, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x4000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0x4000000000000000, x1, 1120, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0xfffffffffffffffe
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000400, 0xfffffffffffffffe, x1, 1128, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xfffffffffffffffd, x1, 1136, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xfffffffffffffff7
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000004000, 0xfffffffffffffff7, x1, 1144, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0xffffffffffffffdf, x1, 1152, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xffffffffffffffbf, x1, 1160, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0xfffffffffffff7ff, x1, 1168, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xffffffffffffefff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0xffffffffffffefff, x1, 1176, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000020000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0x0000020000000000, x1, 1184, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0xffffffffffffbfff, x1, 1192, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0xfffffffffffbffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000010000, 0xfffffffffffbffff, x1, 1200, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xffffffffffbfffff, x1, 1208, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0xfffffffffeffffff, x1, 1216, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xfffffffffbffffff, x1, 1224, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xffffffffbfffffff, x1, 1232, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0xfffffffeffffffff, x1, 1240, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0x0000000400000000, x1, 1248, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xffffffdfffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0xffffffdfffffffff, x1, 1256, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000400000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0x0000400000000000, x1, 1264, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000004000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0x0000004000000000, x1, 1272, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0xffffffbfffffffff, x1, 1280, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xffffff7fffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000100000, 0xffffff7fffffffff, x1, 1288, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0002000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0x0002000000000000, x1, 1296, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0xffffbfffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xc000000000000000, 0xffffbfffffffffff, x1, 1304, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xfffffeffffffffff, x1, 1312, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0xfffffdffffffffff, x1, 1320, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000040000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0x0000040000000000, x1, 1328, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000000, 0xffffffffffefffff, x1, 1336, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x7fffffffffffffff, 0xffbfffffffffffff, x1, 1344, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x8000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000080, 0x8000000000000000, x1, 1352, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x0000000000000001
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000080, 0x0000000000000001, x1, 1360, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0x0000000000000009
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000009, 0x0000000000000009, x1, 1368, x3)

# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0x0800000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000004, 0x0800000000000000, x1, 1376, x3)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x7_1:
    .fill 18*(XLEN/32),4,0xafacadee


signature_x1_0:
    .fill 173*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
