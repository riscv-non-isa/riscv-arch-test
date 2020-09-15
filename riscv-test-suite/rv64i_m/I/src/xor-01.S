
#This assembly file tests the xor instruction of the RISC-V I extension for the xor covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xor)

la x15,signature_x15_1

# opcode: xor ; op1:x27; op2:x28; dest:x27; op1val:0x8000000000000000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(xor, x27, x27, x28, 0x7ffffffffffff7ff, 0x8000000000000000, 0xfffffffffffff7ff, x15, 0, x17)

# opcode: xor ; op1:x29; op2:x24; dest:x5; op1val:0x0000000000000000;  op2val:0x0010000000000000
TEST_RR_OP(xor, x5, x29, x24, 0x10000000000000, 0x0000000000000000, 0x0010000000000000, x15, 8, x17)

# opcode: xor ; op1:x9; op2:x9; dest:x13; op1val:0x7fffffffffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(xor, x13, x9, x9, 0x0, 0x7fffffffffffffff, 0x7fffffffffffffff, x15, 16, x17)

# opcode: xor ; op1:x7; op2:x29; dest:x29; op1val:0x0000000000000001;  op2val:0xffffffffefffffff
TEST_RR_OP(xor, x29, x7, x29, 0xffffffffeffffffe, 0x0000000000000001, 0xffffffffefffffff, x15, 24, x17)

# opcode: xor ; op1:x4; op2:x4; dest:x4; op1val:0x0000000000000007;  op2val:0x8000000000000000
TEST_RR_OP(xor, x4, x4, x4, 0x8000000000000007, 0x0000000000000007, 0x8000000000000000, x15, 32, x17)

# opcode: xor ; op1:x21; op2:x19; dest:x11; op1val:0x0000400000000000;  op2val:0x0000000000000000
TEST_RR_OP(xor, x11, x21, x19, 0x400000000000, 0x0000400000000000, 0x0000000000000000, x15, 40, x17)

# opcode: xor ; op1:x13; op2:x1; dest:x30; op1val:0x0000000000080000;  op2val:0x0000000000000001
TEST_RR_OP(xor, x30, x13, x1, 0x80001, 0x0000000000080000, 0x0000000000000001, x15, 48, x17)

# opcode: xor ; op1:x8; op2:x14; dest:x9; op1val:0xfffffeffffffffff;  op2val:0x0000004000000000
TEST_RR_OP(xor, x9, x8, x14, 0xfffffebfffffffff, 0xfffffeffffffffff, 0x0000004000000000, x15, 56, x17)

# opcode: xor ; op1:x11; op2:x12; dest:x10; op1val:0x0000000000000002;  op2val:0xfffffeffffffffff
TEST_RR_OP(xor, x10, x11, x12, 0xfffffefffffffffd, 0x0000000000000002, 0xfffffeffffffffff, x15, 64, x17)

# opcode: xor ; op1:x5; op2:x27; dest:x6; op1val:0x0000000000000004;  op2val:0x0000000000010000
TEST_RR_OP(xor, x6, x5, x27, 0x10004, 0x0000000000000004, 0x0000000000010000, x15, 72, x17)

# opcode: xor ; op1:x26; op2:x31; dest:x7; op1val:0x0000000000000008;  op2val:0x0200000000000000
TEST_RR_OP(xor, x7, x26, x31, 0x200000000000008, 0x0000000000000008, 0x0200000000000000, x15, 80, x17)

# opcode: xor ; op1:x2; op2:x26; dest:x18; op1val:0x0000000000000010;  op2val:0x0200000000000000
TEST_RR_OP(xor, x18, x2, x26, 0x200000000000010, 0x0000000000000010, 0x0200000000000000, x15, 88, x17)

# opcode: xor ; op1:x18; op2:x8; dest:x12; op1val:0x0000000000000020;  op2val:0xffffffbfffffffff
TEST_RR_OP(xor, x12, x18, x8, 0xffffffbfffffffdf, 0x0000000000000020, 0xffffffbfffffffff, x15, 96, x17)

# opcode: xor ; op1:x25; op2:x3; dest:x21; op1val:0x0000000000000040;  op2val:0xfffffffffffffeff
TEST_RR_OP(xor, x21, x25, x3, 0xfffffffffffffebf, 0x0000000000000040, 0xfffffffffffffeff, x15, 104, x17)

# opcode: xor ; op1:x24; op2:x11; dest:x3; op1val:0x0000000000000080;  op2val:0xfffffffffffffffc
TEST_RR_OP(xor, x3, x24, x11, 0xffffffffffffff7c, 0x0000000000000080, 0xfffffffffffffffc, x15, 112, x17)

# opcode: xor ; op1:x30; op2:x0; dest:x23; op1val:0x0000000000000100;  op2val:0x0000000200000000
TEST_RR_OP(xor, x23, x30, x0, 0x200000100, 0x0000000000000100, 0x0000000200000000, x15, 120, x17)

# opcode: xor ; op1:x16; op2:x25; dest:x20; op1val:0x0000000000000200;  op2val:0xfffffffffeffffff
TEST_RR_OP(xor, x20, x16, x25, 0xfffffffffefffdff, 0x0000000000000200, 0xfffffffffeffffff, x15, 128, x17)
la x4,signature_x4_0

# opcode: xor ; op1:x10; op2:x21; dest:x17; op1val:0x0000000000000400;  op2val:0x2000000000000000
TEST_RR_OP(xor, x17, x10, x21, 0x2000000000000400, 0x0000000000000400, 0x2000000000000000, x4, 0, x9)

# opcode: xor ; op1:x1; op2:x30; dest:x8; op1val:0x0000000000000800;  op2val:0xffffffffffffff7f
TEST_RR_OP(xor, x8, x1, x30, 0xfffffffffffff77f, 0x0000000000000800, 0xffffffffffffff7f, x4, 8, x9)

# opcode: xor ; op1:x6; op2:x2; dest:x15; op1val:0x0000000000001000;  op2val:0x0000000000000080
TEST_RR_OP(xor, x15, x6, x2, 0x1080, 0x0000000000001000, 0x0000000000000080, x4, 16, x9)

# opcode: xor ; op1:x22; op2:x23; dest:x1; op1val:0x0000000000002000;  op2val:0xffffff7fffffffff
TEST_RR_OP(xor, x1, x22, x23, 0xffffff7fffffdfff, 0x0000000000002000, 0xffffff7fffffffff, x4, 24, x9)

# opcode: xor ; op1:x14; op2:x13; dest:x19; op1val:0x0000000000004000;  op2val:0x0000000020000000
TEST_RR_OP(xor, x19, x14, x13, 0x20004000, 0x0000000000004000, 0x0000000020000000, x4, 32, x9)

# opcode: xor ; op1:x0; op2:x10; dest:x26; op1val:0x0000000000008000;  op2val:0x0000010000000000
TEST_RR_OP(xor, x26, x0, x10, 0x10000008000, 0x0000000000008000, 0x0000010000000000, x4, 40, x9)

# opcode: xor ; op1:x15; op2:x17; dest:x16; op1val:0x0000000000010000;  op2val:0xfffffffffffffffe
TEST_RR_OP(xor, x16, x15, x17, 0xfffffffffffefffe, 0x0000000000010000, 0xfffffffffffffffe, x4, 48, x9)

# opcode: xor ; op1:x17; op2:x6; dest:x25; op1val:0x0000000000020000;  op2val:0x0000000000000000
TEST_RR_OP(xor, x25, x17, x6, 0x20000, 0x0000000000020000, 0x0000000000000000, x4, 56, x9)

# opcode: xor ; op1:x19; op2:x7; dest:x14; op1val:0x0000000000040000;  op2val:0x0200000000000000
TEST_RR_OP(xor, x14, x19, x7, 0x200000000040000, 0x0000000000040000, 0x0200000000000000, x4, 64, x9)

# opcode: xor ; op1:x20; op2:x15; dest:x0; op1val:0x0000000000100000;  op2val:0xffffffffffffefff
TEST_RR_OP(xor, x0, x20, x15, 0xffffffffffefefff, 0x0000000000100000, 0xffffffffffffefff, x4, 72, x9)

# opcode: xor ; op1:x23; op2:x5; dest:x28; op1val:0x0000000000200000;  op2val:0x0000000000200000
TEST_RR_OP(xor, x28, x23, x5, 0x0, 0x0000000000200000, 0x0000000000200000, x4, 80, x9)

# opcode: xor ; op1:x31; op2:x18; dest:x22; op1val:0x0000000000400000;  op2val:0xfffffffeffffffff
TEST_RR_OP(xor, x22, x31, x18, 0xfffffffeffbfffff, 0x0000000000400000, 0xfffffffeffffffff, x4, 88, x9)

# opcode: xor ; op1:x3; op2:x22; dest:x31; op1val:0x0000000000800000;  op2val:0xffffffefffffffff
TEST_RR_OP(xor, x31, x3, x22, 0xffffffefff7fffff, 0x0000000000800000, 0xffffffefffffffff, x4, 96, x9)

# opcode: xor ; op1:x28; op2:x16; dest:x24; op1val:0x0000000001000000;  op2val:0x0000000000000040
TEST_RR_OP(xor, x24, x28, x16, 0x1000040, 0x0000000001000000, 0x0000000000000040, x4, 104, x9)

# opcode: xor ; op1:x12; op2:x20; dest:x2; op1val:0x0000000002000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(xor, x2, x12, x20, 0x7ffffffffdffffff, 0x0000000002000000, 0x7fffffffffffffff, x4, 112, x9)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000800000000
TEST_RR_OP(xor, x12, x10, x11, 0x804000000, 0x0000000004000000, 0x0000000800000000, x4, 120, x9)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000200000
TEST_RR_OP(xor, x12, x10, x11, 0x8200000, 0x0000000008000000, 0x0000000000200000, x4, 128, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000800000
TEST_RR_OP(xor, x12, x10, x11, 0x10800000, 0x0000000010000000, 0x0000000000800000, x4, 136, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000009
TEST_RR_OP(xor, x12, x10, x11, 0x20000009, 0x0000000020000000, 0x0000000000000009, x4, 144, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000002
TEST_RR_OP(xor, x12, x10, x11, 0x40000002, 0x0000000040000000, 0x0000000000000002, x4, 152, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffff7ff7fffffff, 0x0000000080000000, 0xfffff7ffffffffff, x4, 160, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xffffffefffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffeeffffffff, 0x0000000100000000, 0xffffffefffffffff, x4, 168, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000020
TEST_RR_OP(xor, x12, x10, x11, 0x200000020, 0x0000000200000000, 0x0000000000000020, x4, 176, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffefbffffffff, 0x0000000400000000, 0xfffffeffffffffff, x4, 184, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000004000
TEST_RR_OP(xor, x12, x10, x11, 0x800004000, 0x0000000800000000, 0x0000000000004000, x4, 192, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000008000000000
TEST_RR_OP(xor, x12, x10, x11, 0x9000000000, 0x0000001000000000, 0x0000008000000000, x4, 200, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffdffffffeff, 0x0000002000000000, 0xfffffffffffffeff, x4, 208, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0008000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x8004000000000, 0x0000004000000000, 0x0008000000000000, x4, 216, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffffffffff8
TEST_RR_OP(xor, x12, x10, x11, 0xffffff7ffffffff8, 0x0000008000000000, 0xfffffffffffffff8, x4, 224, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(xor, x12, x10, x11, 0xfffffefffffffff7, 0x0000010000000000, 0xfffffffffffffff7, x4, 232, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000040000000000
TEST_RR_OP(xor, x12, x10, x11, 0x60000000000, 0x0000020000000000, 0x0000040000000000, x4, 240, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffbfffffffbff, 0x0000040000000000, 0xfffffffffffffbff, x4, 248, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000800000
TEST_RR_OP(xor, x12, x10, x11, 0x80000800000, 0x0000080000000000, 0x0000000000800000, x4, 256, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0010000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x10100000000000, 0x0000100000000000, 0x0010000000000000, x4, 264, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000004000
TEST_RR_OP(xor, x12, x10, x11, 0x200000004000, 0x0000200000000000, 0x0000000000004000, x4, 272, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(xor, x12, x10, x11, 0xffff7ffffffbffff, 0x0000800000000000, 0xfffffffffffbffff, x4, 280, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xfffffffffffeffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffefffffffeffff, 0x0001000000000000, 0xfffffffffffeffff, x4, 288, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000200
TEST_RR_OP(xor, x12, x10, x11, 0x2000000000200, 0x0002000000000000, 0x0000000000000200, x4, 296, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000001000000
TEST_RR_OP(xor, x12, x10, x11, 0x4000001000000, 0x0004000000000000, 0x0000000001000000, x4, 304, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000004000
TEST_RR_OP(xor, x12, x10, x11, 0x8000000004000, 0x0008000000000000, 0x0000000000004000, x4, 312, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xbfefffffffffffff, 0x0010000000000000, 0xbfffffffffffffff, x4, 320, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000100000
TEST_RR_OP(xor, x12, x10, x11, 0x20000000100000, 0x0020000000000000, 0x0000000000100000, x4, 328, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000040000000
TEST_RR_OP(xor, x12, x10, x11, 0x40000040000000, 0x0040000000000000, 0x0000000040000000, x4, 336, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000004000000000
TEST_RR_OP(xor, x12, x10, x11, 0x80004000000000, 0x0080000000000000, 0x0000004000000000, x4, 344, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x100000000000000, 0x0100000000000000, 0x0000000000000000, x4, 352, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xddffffffffffffff, 0x0200000000000000, 0xdfffffffffffffff, x4, 360, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0400000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x0, 0x0400000000000000, 0x0400000000000000, x4, 368, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000800000000000
TEST_RR_OP(xor, x12, x10, x11, 0x800800000000000, 0x0800000000000000, 0x0000800000000000, x4, 376, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(xor, x12, x10, x11, 0xefffffffffffffef, 0x1000000000000000, 0xffffffffffffffef, x4, 384, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000020000000
TEST_RR_OP(xor, x12, x10, x11, 0x2000000020000000, 0x2000000000000000, 0x0000000020000000, x4, 392, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xbffffffeffffffff, 0x4000000000000000, 0xfffffffeffffffff, x4, 400, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0002000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffdfffffffffffe, 0xfffffffffffffffe, 0x0002000000000000, x4, 408, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xffffffffffffbfff
TEST_RR_OP(xor, x12, x10, x11, 0x4002, 0xfffffffffffffffd, 0xffffffffffffbfff, x4, 416, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xffffffefffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x1000000004, 0xfffffffffffffffb, 0xffffffefffffffff, x4, 424, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xffffefffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x100000000008, 0xfffffffffffffff7, 0xffffefffffffffff, x4, 432, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffbfffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x400000000010, 0xffffffffffffffef, 0xffffbfffffffffff, x4, 440, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffffffffffefffff
TEST_RR_OP(xor, x12, x10, x11, 0x100020, 0xffffffffffffffdf, 0xffffffffffefffff, x4, 448, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000080
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffffff3f, 0xffffffffffffffbf, 0x0000000000000080, x4, 456, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xffffffbfffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x4000000080, 0xffffffffffffff7f, 0xffffffbfffffffff, x4, 464, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000100000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffeffffffffeff, 0xfffffffffffffeff, 0x0000100000000000, x4, 472, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000004000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffbfffdff, 0xfffffffffffffdff, 0x0000000004000000, x4, 480, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000200000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffdffffffffbff, 0xfffffffffffffbff, 0x0000200000000000, x4, 488, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xbfffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x4000000000000800, 0xfffffffffffff7ff, 0xbfffffffffffffff, x4, 496, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfffbffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffbfffffbffffff, 0x0000000004000000, 0xfffbffffffffffff, x4, 504, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfff3ffffffffffff, 0x0004000000000000, 0xfff7ffffffffffff, x4, 512, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xffefffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffefffdfffffffff, 0x0000002000000000, 0xffefffffffffffff, x4, 520, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x20000000400000, 0xffffffffffbfffff, 0xffdfffffffffffff, x4, 528, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfdbfffffffffffff, 0x0200000000000000, 0xffbfffffffffffff, x4, 536, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xff7fbfffffffffff, 0x0000400000000000, 0xff7fffffffffffff, x4, 544, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0xfeffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfeffffffffffffdf, 0x0000000000000020, 0xfeffffffffffffff, x4, 552, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x600000000000000, 0xfbffffffffffffff, 0xfdffffffffffffff, x4, 560, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x400000000080000, 0xfffffffffff7ffff, 0xfbffffffffffffff, x4, 568, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xf7fbffffffffffff, 0x0004000000000000, 0xf7ffffffffffffff, x4, 576, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x1000000000000000, 0xffffffffffffffff, 0xefffffffffffffff, x4, 584, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0x5555555555555555
TEST_RR_OP(xor, x12, x10, x11, 0xaaaaaaaaaaaaaaa3, 0xfffffffffffffff6, 0x5555555555555555, x4, 592, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(xor, x12, x10, x11, 0xaaaaaaaaa2aaaaaa, 0x0000000008000000, 0xaaaaaaaaaaaaaaaa, x4, 600, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000006
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffffeff9, 0xffffffffffffefff, 0x0000000000000006, x4, 608, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000004000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffbffdfff, 0xffffffffffffdfff, 0x0000000004000000, x4, 616, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000007
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffffbff8, 0xffffffffffffbfff, 0x0000000000000007, x4, 624, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0200000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfdffffffffff7fff, 0xffffffffffff7fff, 0x0200000000000000, x4, 632, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfffffffffffffff6
TEST_RR_OP(xor, x12, x10, x11, 0x10009, 0xfffffffffffeffff, 0xfffffffffffffff6, x4, 640, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000008000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffffd7fff, 0xfffffffffffdffff, 0x0000000000008000, x4, 648, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x400040000, 0xfffffffffffbffff, 0xfffffffbffffffff, x4, 656, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000008000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffef7fff, 0xffffffffffefffff, 0x0000000000008000, x4, 664, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000200000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffdffdfffff, 0xffffffffffdfffff, 0x0000000200000000, x4, 672, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000400
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffff7ffbff, 0xffffffffff7fffff, 0x0000000000000400, x4, 680, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x80001000000, 0xfffffffffeffffff, 0xfffff7ffffffffff, x4, 688, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(xor, x12, x10, x11, 0x2100000, 0xfffffffffdffffff, 0xffffffffffefffff, x4, 696, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(xor, x12, x10, x11, 0x4000800, 0xfffffffffbffffff, 0xfffffffffffff7ff, x4, 704, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000200000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffdffff7ffffff, 0xfffffffff7ffffff, 0x0000200000000000, x4, 712, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000040000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffafffffff, 0xffffffffefffffff, 0x0000000040000000, x4, 720, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffffffffffffff8
TEST_RR_OP(xor, x12, x10, x11, 0x20000007, 0xffffffffdfffffff, 0xfffffffffffffff8, x4, 728, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x8000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x7fffffffbfffffff, 0xffffffffbfffffff, 0x8000000000000000, x4, 736, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x1000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xefffffff7fffffff, 0xffffffff7fffffff, 0x1000000000000000, x4, 744, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000002000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffdeffffffff, 0xfffffffeffffffff, 0x0000002000000000, x4, 752, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000200
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffdfffffdff, 0xfffffffdffffffff, 0x0000000000000200, x4, 760, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000080000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffff7fbffffffff, 0xfffffffbffffffff, 0x0000080000000000, x4, 768, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffffffffffffffc
TEST_RR_OP(xor, x12, x10, x11, 0x800000003, 0xfffffff7ffffffff, 0xfffffffffffffffc, x4, 776, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(xor, x12, x10, x11, 0x1000040000, 0xffffffefffffffff, 0xfffffffffffbffff, x4, 784, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000800000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffdfff7fffff, 0xffffffdfffffffff, 0x0000000000800000, x4, 792, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x40004000000000, 0xffffffbfffffffff, 0xffbfffffffffffff, x4, 800, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000001000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffff7ffeffffff, 0xffffff7fffffffff, 0x0000000001000000, x4, 808, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(xor, x12, x10, x11, 0x20000000020, 0xfffffdffffffffff, 0xffffffffffffffdf, x4, 816, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(xor, x12, x10, x11, 0xfffffbfffffffffa, 0xfffffbffffffffff, 0x0000000000000005, x4, 824, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x8080000000000, 0xfffff7ffffffffff, 0xfff7ffffffffffff, x4, 832, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(xor, x12, x10, x11, 0x100040000000, 0xffffefffffffffff, 0xffffffffbfffffff, x4, 840, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x204000000000, 0xffffdfffffffffff, 0xffffffbfffffffff, x4, 848, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x440000000000, 0xffffbfffffffffff, 0xfffffbffffffffff, x4, 856, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000080
TEST_RR_OP(xor, x12, x10, x11, 0xffff7fffffffff7f, 0xffff7fffffffffff, 0x0000000000000080, x4, 864, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x801000000000000, 0xfffeffffffffffff, 0xf7ffffffffffffff, x4, 872, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(xor, x12, x10, x11, 0x2000000040000, 0xfffdffffffffffff, 0xfffffffffffbffff, x4, 880, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x4040000000000, 0xfffbffffffffffff, 0xfffffbffffffffff, x4, 888, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfff7ffffffffffff, 0xfff7ffffffffffff, 0x0000000000000000, x4, 896, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x50000000000000, 0xffefffffffffffff, 0xffbfffffffffffff, x4, 904, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000008000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffdfff7fffffffff, 0xffdfffffffffffff, 0x0000008000000000, x4, 912, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(xor, x12, x10, x11, 0x40000000000040, 0xffbfffffffffffff, 0xffffffffffffffbf, x4, 920, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0400000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfb7fffffffffffff, 0xff7fffffffffffff, 0x0400000000000000, x4, 928, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000002000
TEST_RR_OP(xor, x12, x10, x11, 0xfeffffffffffdfff, 0xfeffffffffffffff, 0x0000000000002000, x4, 936, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(xor, x12, x10, x11, 0xfdfffffbffffffff, 0xfdffffffffffffff, 0x0000000400000000, x4, 944, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(xor, x12, x10, x11, 0xf7fffffbffffffff, 0xf7ffffffffffffff, 0x0000000400000000, x4, 952, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xefffffffffffffff, 0xefffffffffffffff, 0x0000000000000000, x4, 960, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(xor, x12, x10, x11, 0x2000000020000000, 0xdfffffffffffffff, 0xffffffffdfffffff, x4, 968, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xbfbfffffffffffff, 0xbfffffffffffffff, 0x0040000000000000, x4, 976, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffffffff, 0x5555555555555555, 0xaaaaaaaaaaaaaaaa, x4, 984, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0100000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xabaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 0x0100000000000000, x4, 992, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000004
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffffdfffb, 0xfffffffffffdffff, 0x0000000000000004, x4, 1000, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000000000008
TEST_RR_OP(xor, x12, x10, x11, 0x9, 0x0000000000000001, 0x0000000000000008, x4, 1008, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(xor, x12, x10, x11, 0xfffff7ffffffffef, 0xfffff7ffffffffff, 0x0000000000000010, x4, 1016, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000100
TEST_RR_OP(xor, x12, x10, x11, 0x200000100, 0x0000000200000000, 0x0000000000000100, x4, 1024, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000800
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffffd7ff, 0xffffffffffffdfff, 0x0000000000000800, x4, 1032, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000001000
TEST_RR_OP(xor, x12, x10, x11, 0x400001000, 0x0000000400000000, 0x0000000000001000, x4, 1040, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000000020000
TEST_RR_OP(xor, x12, x10, x11, 0x30000, 0x0000000000010000, 0x0000000000020000, x4, 1048, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0x0000000000040000
TEST_RR_OP(xor, x12, x10, x11, 0x40005, 0x0000000000000005, 0x0000000000040000, x4, 1056, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0000000000080000
TEST_RR_OP(xor, x12, x10, x11, 0x80008, 0x0000000000000008, 0x0000000000080000, x4, 1064, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000400000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffb7ffff, 0xfffffffffff7ffff, 0x0000000000400000, x4, 1072, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000002000000
TEST_RR_OP(xor, x12, x10, x11, 0xfbfffffffdffffff, 0xfbffffffffffffff, 0x0000000002000000, x4, 1080, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000008000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffdff7ffffff, 0xffffffdfffffffff, 0x0000000008000000, x4, 1088, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000010000000
TEST_RR_OP(xor, x12, x10, x11, 0x8010000000, 0x0000008000000000, 0x0000000010000000, x4, 1096, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000080000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffbff7fffffff, 0xfffffbffffffffff, 0x0000000080000000, x4, 1104, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000000100000000
TEST_RR_OP(xor, x12, x10, x11, 0x100000010, 0x0000000000000010, 0x0000000100000000, x4, 1112, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0004000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffbfbffffffffff, 0xfffffbffffffffff, 0x0004000000000000, x4, 1120, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0020000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x20020000000000, 0x0000020000000000, 0x0020000000000000, x4, 1128, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0080000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xff7fffffffff7fff, 0xffffffffffff7fff, 0x0080000000000000, x4, 1136, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0800000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xf7ffffffffffffbf, 0xffffffffffffffbf, 0x0800000000000000, x4, 1144, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x4000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x4000000000020000, 0x0000000000020000, 0x4000000000000000, x4, 1152, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xfffffffffffffffd
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffff7ffffd, 0x0000000000800000, 0xfffffffffffffffd, x4, 1160, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0xfffffffffffffffb
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffffffff, 0x0000000000000004, 0xfffffffffffffffb, x4, 1168, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(xor, x12, x10, x11, 0x40200, 0xfffffffffffbffff, 0xfffffffffffffdff, x4, 1176, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xfffeffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffeffffff7fffff, 0x0000000000800000, 0xfffeffffffffffff, x4, 1184, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000020000000000
TEST_RR_OP(xor, x12, x10, x11, 0x20000000010, 0x0000000000000010, 0x0000020000000000, x4, 1192, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffffffffffffdfff
TEST_RR_OP(xor, x12, x10, x11, 0x2020, 0xffffffffffffffdf, 0xffffffffffffdfff, x4, 1200, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0xffffffffffff7fff
TEST_RR_OP(xor, x12, x10, x11, 0x8006, 0xfffffffffffffff9, 0xffffffffffff7fff, x4, 1208, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfffffffffffdffff
TEST_RR_OP(xor, x12, x10, x11, 0x20001, 0xfffffffffffffffe, 0xfffffffffffdffff, x4, 1216, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(xor, x12, x10, x11, 0xfdfffffffff7ffff, 0x0200000000000000, 0xfffffffffff7ffff, x4, 1224, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(xor, x12, x10, x11, 0x100200000, 0xfffffffeffffffff, 0xffffffffffdfffff, x4, 1232, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffdffffbfffff, 0x0000020000000000, 0xffffffffffbfffff, x4, 1240, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(xor, x12, x10, x11, 0x8800000, 0xfffffffff7ffffff, 0xffffffffff7fffff, x4, 1248, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xfffffffffdffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffdfffffe, 0x0000000000000001, 0xfffffffffdffffff, x4, 1256, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0xfffffffffbffffff
TEST_RR_OP(xor, x12, x10, x11, 0x4000005, 0xfffffffffffffffa, 0xfffffffffbffffff, x4, 1264, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffdffff7ffffff, 0x0000200000000000, 0xfffffffff7ffffff, x4, 1272, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0xffffffff7fffffff
TEST_RR_OP(xor, x12, x10, x11, 0x80000003, 0xfffffffffffffffc, 0xffffffff7fffffff, x4, 1280, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xff7ffffdffffffff, 0x0080000000000000, 0xfffffffdffffffff, x4, 1288, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffff7ffffefff, 0x0000000000001000, 0xfffffff7ffffffff, x4, 1296, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000001000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffefffffffef, 0xffffffffffffffef, 0x0000001000000000, x4, 1304, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x6000000000, 0xffffffbfffffffff, 0xffffffdfffffffff, x4, 1312, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffffdffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x20000000004, 0xfffffffffffffffb, 0xfffffdffffffffff, x4, 1320, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffdffdffffffff, 0x0000000200000000, 0xffffdfffffffffff, x4, 1328, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000400000000000
TEST_RR_OP(xor, x12, x10, x11, 0x401000000000, 0x0000001000000000, 0x0000400000000000, x4, 1336, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xffff7fffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x800000000008, 0xfffffffffffffff7, 0xffff7fffffffffff, x4, 1344, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0001000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xbffeffffffffffff, 0xbfffffffffffffff, 0x0001000000000000, x4, 1352, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffdffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x2000000000400, 0xfffffffffffffbff, 0xfffdffffffffffff, x4, 1360, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(xor, x12, x10, x11, 0x7ffffffffffff7ff, 0x8000000000000000, 0xfffffffffffff7ff, x4, 1368, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x0, 0x7fffffffffffffff, 0x7fffffffffffffff, x4, 1376, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xffffffffefffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffeffffffe, 0x0000000000000001, 0xffffffffefffffff, x4, 1384, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0x8000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x8000000000000007, 0x0000000000000007, 0x8000000000000000, x4, 1392, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0x0000000200000000
TEST_RR_OP(xor, x12, x10, x11, 0x200000100, 0x0000000000000100, 0x0000000200000000, x4, 1400, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0x0000010000000000
TEST_RR_OP(xor, x12, x10, x11, 0x10000008000, 0x0000000000008000, 0x0000010000000000, x4, 1408, x1)

# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xffffffffffffefff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffefefff, 0x0000000000100000, 0xffffffffffffefff, x4, 1416, x1)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x15_1:
    .fill 17*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 178*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
