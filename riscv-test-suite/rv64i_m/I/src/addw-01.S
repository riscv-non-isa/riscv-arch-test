
#This assembly file tests the addw instruction of the RISC-V I extension for the addw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",addw)

la x13,signature_x13_1

# opcode: addw ; op1:x23; op2:x18; dest:x9; op1val:0x8000000000000000;  op2val:0x0000000002000000
TEST_RR_OP(addw, x9, x23, x18, 0x2000000, 0x8000000000000000, 0x0000000002000000, x13, 0, x27)

# opcode: addw ; op1:x31; op2:x31; dest:x31; op1val:0x0000000000000000;  op2val:0x0000000000000005
TEST_RR_OP(addw, x31, x31, x31, 0x5, 0x0000000000000000, 0x0000000000000005, x13, 8, x27)

# opcode: addw ; op1:x21; op2:x8; dest:x8; op1val:0x7fffffffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(addw, x8, x21, x8, 0x1000000ff, 0x7fffffffffffffff, 0x0000000000000100, x13, 16, x27)

# opcode: addw ; op1:x29; op2:x9; dest:x29; op1val:0x0000000000000001;  op2val:0xbfffffffffffffff
TEST_RR_OP(addw, x29, x29, x9, 0x100000000, 0x0000000000000001, 0xbfffffffffffffff, x13, 24, x27)

# opcode: addw ; op1:x22; op2:x22; dest:x2; op1val:0xdfffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(addw, x2, x22, x22, 0xffffffff, 0xdfffffffffffffff, 0x8000000000000000, x13, 32, x27)

# opcode: addw ; op1:x5; op2:x0; dest:x20; op1val:0x0000400000000000;  op2val:0x0000000000000000
TEST_RR_OP(addw, x20, x5, x0, 0x0, 0x0000400000000000, 0x0000000000000000, x13, 40, x27)

# opcode: addw ; op1:x15; op2:x23; dest:x26; op1val:0x0000000000000100;  op2val:0x7fffffffffffffff
TEST_RR_OP(addw, x26, x15, x23, 0x1000000ff, 0x0000000000000100, 0x7fffffffffffffff, x13, 48, x27)

# opcode: addw ; op1:x24; op2:x20; dest:x5; op1val:0x0000000000000080;  op2val:0x0000000000000001
TEST_RR_OP(addw, x5, x24, x20, 0x81, 0x0000000000000080, 0x0000000000000001, x13, 56, x27)

# opcode: addw ; op1:x26; op2:x24; dest:x22; op1val:0x0000004000000000;  op2val:0x0000004000000000
TEST_RR_OP(addw, x22, x26, x24, 0x0, 0x0000004000000000, 0x0000004000000000, x13, 64, x27)

# opcode: addw ; op1:x0; op2:x21; dest:x17; op1val:0x0000000000000002;  op2val:0xfffffffffffffffc
TEST_RR_OP(addw, x17, x0, x21, 0xfffffffe, 0x0000000000000002, 0xfffffffffffffffc, x13, 72, x27)

# opcode: addw ; op1:x8; op2:x29; dest:x3; op1val:0x0000000000000004;  op2val:0x0000000800000000
TEST_RR_OP(addw, x3, x8, x29, 0x4, 0x0000000000000004, 0x0000000800000000, x13, 80, x27)

# opcode: addw ; op1:x4; op2:x3; dest:x19; op1val:0x0000000000000008;  op2val:0xffffffffffff7fff
TEST_RR_OP(addw, x19, x4, x3, 0xffff8007, 0x0000000000000008, 0xffffffffffff7fff, x13, 88, x27)

# opcode: addw ; op1:x18; op2:x12; dest:x4; op1val:0x0000000000000010;  op2val:0x0000000080000000
TEST_RR_OP(addw, x4, x18, x12, 0x80000010, 0x0000000000000010, 0x0000000080000000, x13, 96, x27)

# opcode: addw ; op1:x25; op2:x26; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000000000008
TEST_RR_OP(addw, x12, x25, x26, 0x28, 0x0000000000000020, 0x0000000000000008, x13, 104, x27)

# opcode: addw ; op1:x2; op2:x4; dest:x6; op1val:0x0000000000000040;  op2val:0xfffffffffffffeff
TEST_RR_OP(addw, x6, x2, x4, 0xffffff3f, 0x0000000000000040, 0xfffffffffffffeff, x13, 112, x27)

# opcode: addw ; op1:x20; op2:x6; dest:x16; op1val:0x0000000000000200;  op2val:0x0000000000000400
TEST_RR_OP(addw, x16, x20, x6, 0x600, 0x0000000000000200, 0x0000000000000400, x13, 120, x27)

# opcode: addw ; op1:x30; op2:x10; dest:x21; op1val:0x0000000000000400;  op2val:0x0040000000000000
TEST_RR_OP(addw, x21, x30, x10, 0x400, 0x0000000000000400, 0x0040000000000000, x13, 128, x27)

# opcode: addw ; op1:x17; op2:x16; dest:x24; op1val:0x0000000000000800;  op2val:0xfffff7ffffffffff
TEST_RR_OP(addw, x24, x17, x16, 0x1000007ff, 0x0000000000000800, 0xfffff7ffffffffff, x13, 136, x27)

# opcode: addw ; op1:x16; op2:x14; dest:x7; op1val:0x0000000000001000;  op2val:0x2000000000000000
TEST_RR_OP(addw, x7, x16, x14, 0x1000, 0x0000000000001000, 0x2000000000000000, x13, 144, x27)

# opcode: addw ; op1:x11; op2:x1; dest:x28; op1val:0x0000000000002000;  op2val:0x0000800000000000
TEST_RR_OP(addw, x28, x11, x1, 0x2000, 0x0000000000002000, 0x0000800000000000, x13, 152, x27)
la x4,signature_x4_0

# opcode: addw ; op1:x3; op2:x28; dest:x1; op1val:0x0000000000004000;  op2val:0xdfffffffffffffff
TEST_RR_OP(addw, x1, x3, x28, 0x100003fff, 0x0000000000004000, 0xdfffffffffffffff, x4, 0, x8)

# opcode: addw ; op1:x9; op2:x5; dest:x11; op1val:0x0000000000008000;  op2val:0x0000000010000000
TEST_RR_OP(addw, x11, x9, x5, 0x10008000, 0x0000000000008000, 0x0000000010000000, x4, 8, x8)

# opcode: addw ; op1:x10; op2:x17; dest:x14; op1val:0x0000000000010000;  op2val:0x0000000000010000
TEST_RR_OP(addw, x14, x10, x17, 0x20000, 0x0000000000010000, 0x0000000000010000, x4, 16, x8)

# opcode: addw ; op1:x28; op2:x30; dest:x25; op1val:0x0000000000020000;  op2val:0x0000000000800000
TEST_RR_OP(addw, x25, x28, x30, 0x820000, 0x0000000000020000, 0x0000000000800000, x4, 24, x8)

# opcode: addw ; op1:x12; op2:x13; dest:x10; op1val:0x0000000000040000;  op2val:0xffffffffff7fffff
TEST_RR_OP(addw, x10, x12, x13, 0xff83ffff, 0x0000000000040000, 0xffffffffff7fffff, x4, 32, x8)

# opcode: addw ; op1:x1; op2:x27; dest:x18; op1val:0x0000000000080000;  op2val:0x0000000004000000
TEST_RR_OP(addw, x18, x1, x27, 0x4080000, 0x0000000000080000, 0x0000000004000000, x4, 40, x8)

# opcode: addw ; op1:x19; op2:x15; dest:x0; op1val:0x0000000000100000;  op2val:0xffffffffffefffff
TEST_RR_OP(addw, x0, x19, x15, 0xffffffff, 0x0000000000100000, 0xffffffffffefffff, x4, 48, x8)

# opcode: addw ; op1:x13; op2:x11; dest:x23; op1val:0x0000000000200000;  op2val:0x0080000000000000
TEST_RR_OP(addw, x23, x13, x11, 0x200000, 0x0000000000200000, 0x0080000000000000, x4, 56, x8)

# opcode: addw ; op1:x27; op2:x2; dest:x30; op1val:0x0000000000400000;  op2val:0x0000000000000040
TEST_RR_OP(addw, x30, x27, x2, 0x400040, 0x0000000000400000, 0x0000000000000040, x4, 64, x8)

# opcode: addw ; op1:x14; op2:x19; dest:x13; op1val:0x0000000000800000;  op2val:0x0000000000000020
TEST_RR_OP(addw, x13, x14, x19, 0x800020, 0x0000000000800000, 0x0000000000000020, x4, 72, x8)

# opcode: addw ; op1:x6; op2:x7; dest:x27; op1val:0x0000000001000000;  op2val:0x0000000000010000
TEST_RR_OP(addw, x27, x6, x7, 0x1010000, 0x0000000001000000, 0x0000000000010000, x4, 80, x8)

# opcode: addw ; op1:x7; op2:x25; dest:x15; op1val:0x0000000002000000;  op2val:0x0000000000001000
TEST_RR_OP(addw, x15, x7, x25, 0x2001000, 0x0000000002000000, 0x0000000000001000, x4, 88, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x103ffffff, 0x0000000004000000, 0xffbfffffffffffff, x4, 96, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0001000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x8000000, 0x0000000008000000, 0x0001000000000000, x4, 104, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000200000
TEST_RR_OP(addw, x12, x10, x11, 0x10200000, 0x0000000010000000, 0x0000000000200000, x4, 112, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x11fffffff, 0x0000000020000000, 0xffbfffffffffffff, x4, 120, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000008000000000
TEST_RR_OP(addw, x12, x10, x11, 0x40000000, 0x0000000040000000, 0x0000008000000000, x4, 128, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000080
TEST_RR_OP(addw, x12, x10, x11, 0x80000080, 0x0000000080000000, 0x0000000000000080, x4, 136, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xffffffefffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000000100000000, 0xffffffefffffffff, x4, 144, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000000200000000, 0xfeffffffffffffff, x4, 152, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffbffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000000400000000, 0xfffbffffffffffff, x4, 160, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffffffffbfff
TEST_RR_OP(addw, x12, x10, x11, 0xffffbfff, 0x0000000800000000, 0xffffffffffffbfff, x4, 168, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x1000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000001000000000, 0x1000000000000000, x4, 176, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x8000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000002000000000, 0x8000000000000000, x4, 184, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000008000000000, 0xffdfffffffffffff, x4, 192, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000008
TEST_RR_OP(addw, x12, x10, x11, 0x8, 0x0000010000000000, 0x0000000000000008, x4, 200, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(addw, x12, x10, x11, 0xffffdfff, 0x0000020000000000, 0xffffffffffffdfff, x4, 208, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000800000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000800000000000, x4, 216, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000080000000000, 0xfbffffffffffffff, x4, 224, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000080000
TEST_RR_OP(addw, x12, x10, x11, 0x80000, 0x0000100000000000, 0x0000000000080000, x4, 232, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000100000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000100000000000, x4, 240, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000800000000000, 0xfffffeffffffffff, x4, 248, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0001000000000000, 0xfffffff7ffffffff, x4, 256, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000008
TEST_RR_OP(addw, x12, x10, x11, 0x8, 0x0002000000000000, 0x0000000000000008, x4, 264, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffd, 0x0004000000000000, 0xfffffffffffffffd, x4, 272, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0008000000000000, 0xfffeffffffffffff, x4, 280, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000001000
TEST_RR_OP(addw, x12, x10, x11, 0x1000, 0x0010000000000000, 0x0000000000001000, x4, 288, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(addw, x12, x10, x11, 0xffefffff, 0x0020000000000000, 0xffffffffffefffff, x4, 296, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000010000000
TEST_RR_OP(addw, x12, x10, x11, 0x10000000, 0x0040000000000000, 0x0000000010000000, x4, 304, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0080000000000000, 0xffffffbfffffffff, x4, 312, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0100000000000000, 0xffbfffffffffffff, x4, 320, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000200
TEST_RR_OP(addw, x12, x10, x11, 0x200, 0x0200000000000000, 0x0000000000000200, x4, 328, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000200000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000200000000000, x4, 336, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0040000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0800000000000000, 0x0040000000000000, x4, 344, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffb, 0x1000000000000000, 0xfffffffffffffffb, x4, 352, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000040000000
TEST_RR_OP(addw, x12, x10, x11, 0x40000000, 0x2000000000000000, 0x0000000040000000, x4, 360, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x4000000000000000, 0x7fffffffffffffff, x4, 368, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000020000
TEST_RR_OP(addw, x12, x10, x11, 0x10001fffe, 0xfffffffffffffffe, 0x0000000000020000, x4, 376, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffffdffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffc, 0xfffffffffffffffd, 0xfffffdffffffffff, x4, 384, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000004000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffb, 0xfffffffffffffffb, 0x0000004000000000, x4, 392, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffffffffffffff9
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffff0, 0xfffffffffffffff7, 0xfffffffffffffff9, x4, 400, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000080000000
TEST_RR_OP(addw, x12, x10, x11, 0x17fffffef, 0xffffffffffffffef, 0x0000000080000000, x4, 408, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000080000000
TEST_RR_OP(addw, x12, x10, x11, 0x17fffffdf, 0xffffffffffffffdf, 0x0000000080000000, x4, 416, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xffbfffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffffbe, 0xffffffffffffffbf, 0xffbfffffffffffff, x4, 424, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000006
TEST_RR_OP(addw, x12, x10, x11, 0xffffff85, 0xffffffffffffff7f, 0x0000000000000006, x4, 432, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xdfffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffefe, 0xfffffffffffffeff, 0xdfffffffffffffff, x4, 440, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xffffffffbfffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1bffffdfe, 0xfffffffffffffdff, 0xffffffffbfffffff, x4, 448, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfdffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffbfe, 0xfffffffffffffbff, 0xfdffffffffffffff, x4, 456, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fff7f7fe, 0xfffffffffffff7ff, 0xfffffffffff7ffff, x4, 464, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffffffdffffffff, 0xfff7ffffffffffff, x4, 472, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xffefffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0002000000000000, 0xffefffffffffffff, x4, 480, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xff7fffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x10007ffff, 0x0000000000080000, 0xff7fffffffffffff, x4, 488, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffeffffe, 0xffffffffffefffff, 0xf7ffffffffffffff, x4, 496, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfdffffffffffffff, 0xefffffffffffffff, x4, 504, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0x5555555555555555
TEST_RR_OP(addw, x12, x10, x11, 0x15555554b, 0xfffffffffffffff6, 0x5555555555555555, x4, 512, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(addw, x12, x10, x11, 0x1a2aaaaa9, 0xfffffffff7ffffff, 0xaaaaaaaaaaaaaaaa, x4, 520, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffffefffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffefeffe, 0xffffffffffffefff, 0xffffffffffefffff, x4, 528, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000009
TEST_RR_OP(addw, x12, x10, x11, 0xffffe008, 0xffffffffffffdfff, 0x0000000000000009, x4, 536, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfffffffffffffdff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffbdfe, 0xffffffffffffbfff, 0xfffffffffffffdff, x4, 544, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000004000
TEST_RR_OP(addw, x12, x10, x11, 0xffffbfff, 0xffffffffffff7fff, 0x0000000000004000, x4, 552, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffefffe, 0xfffffffffffeffff, 0xffffffbfffffffff, x4, 560, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000800000
TEST_RR_OP(addw, x12, x10, x11, 0x1007dffff, 0xfffffffffffdffff, 0x0000000000800000, x4, 568, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xefffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffbfffe, 0xfffffffffffbffff, 0xefffffffffffffff, x4, 576, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000400000
TEST_RR_OP(addw, x12, x10, x11, 0x10037ffff, 0xfffffffffff7ffff, 0x0000000000400000, x4, 584, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffdffffe, 0xffffffffffdfffff, 0x7fffffffffffffff, x4, 592, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(addw, x12, x10, x11, 0x1ffbffffd, 0xffffffffffbfffff, 0xfffffffffffffffe, x4, 600, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ff7ffffe, 0xffffffffff7fffff, 0xffdfffffffffffff, x4, 608, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fefffffe, 0xfffffffffeffffff, 0xfffbffffffffffff, x4, 616, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fdfffffe, 0xfffffffffdffffff, 0xfffffbffffffffff, x4, 624, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000009
TEST_RR_OP(addw, x12, x10, x11, 0xfc000008, 0xfffffffffbffffff, 0x0000000000000009, x4, 632, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000002000
TEST_RR_OP(addw, x12, x10, x11, 0xf0001fff, 0xffffffffefffffff, 0x0000000000002000, x4, 640, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(addw, x12, x10, x11, 0x1dfff7ffe, 0xffffffffdfffffff, 0xffffffffffff7fff, x4, 648, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xfffffffffffffffc
TEST_RR_OP(addw, x12, x10, x11, 0x1bffffffb, 0xffffffffbfffffff, 0xfffffffffffffffc, x4, 656, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0002000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x7fffffff, 0xffffffff7fffffff, 0x0002000000000000, x4, 664, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffbffe, 0xfffffffeffffffff, 0xffffffffffffbfff, x4, 672, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000010000
TEST_RR_OP(addw, x12, x10, x11, 0x10000ffff, 0xfffffffbffffffff, 0x0000000000010000, x4, 680, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000020000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffffff7ffffffff, 0x0000020000000000, x4, 688, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000040
TEST_RR_OP(addw, x12, x10, x11, 0x10000003f, 0xffffffefffffffff, 0x0000000000000040, x4, 696, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfffffffffffffffc
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffb, 0xffffffdfffffffff, 0xfffffffffffffffc, x4, 704, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x4000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffffffbfffffffff, 0x4000000000000000, x4, 712, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000008000000
TEST_RR_OP(addw, x12, x10, x11, 0x107ffffff, 0xffffff7fffffffff, 0x0000000008000000, x4, 720, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfffffeffffffffff, 0xff7fffffffffffff, x4, 728, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffdfffe, 0xfffffdffffffffff, 0xfffffffffffdffff, x4, 736, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffffffffffffff7
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffff6, 0xfffffbffffffffff, 0xfffffffffffffff7, x4, 744, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000040000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffff7ffffffffff, 0x0000040000000000, x4, 752, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffffffffffffff6
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffff5, 0xffffefffffffffff, 0xfffffffffffffff6, x4, 760, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(addw, x12, x10, x11, 0x100000001, 0xffffdfffffffffff, 0x0000000000000002, x4, 768, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffffde, 0xffffbfffffffffff, 0xffffffffffffffdf, x4, 776, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1f7fffffe, 0xffff7fffffffffff, 0xfffffffff7ffffff, x4, 784, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffeffffffffffff, 0x0000000400000000, x4, 792, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x4000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffdffffffffffff, 0x4000000000000000, x4, 800, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfff7ffffffffffff, 0xfffffff7ffffffff, x4, 808, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000200000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffefffffffffffff, 0x0000000200000000, x4, 816, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000020000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffdfffffffffffff, 0x0000020000000000, x4, 824, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(addw, x12, x10, x11, 0x107ffffff, 0xffbfffffffffffff, 0x0000000008000000, x4, 832, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xffffefffffffffff, 0xfffdffffffffffff, x4, 840, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0001000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xff7fffffffffffff, 0x0001000000000000, x4, 848, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0020000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfeffffffffffffff, 0x0020000000000000, x4, 856, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000100000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfbffffffffffffff, 0x0000100000000000, x4, 864, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xf7ffffffffffffff, 0xefffffffffffffff, x4, 872, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000200000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xefffffffffffffff, 0x0000200000000000, x4, 880, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(addw, x12, x10, x11, 0x1ffbffffe, 0xbfffffffffffffff, 0xffffffffffbfffff, x4, 888, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xff7fffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x155555554, 0x5555555555555555, 0xff7fffffffffffff, x4, 896, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000400000000000
TEST_RR_OP(addw, x12, x10, x11, 0xaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 0x0000400000000000, x4, 904, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000004
TEST_RR_OP(addw, x12, x10, x11, 0xfffffff3, 0xffffffffffffffef, 0x0000000000000004, x4, 912, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000010
TEST_RR_OP(addw, x12, x10, x11, 0xff80000f, 0xffffffffff7fffff, 0x0000000000000010, x4, 920, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000800
TEST_RR_OP(addw, x12, x10, x11, 0x1000007ff, 0xffffffbfffffffff, 0x0000000000000800, x4, 928, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000008000
TEST_RR_OP(addw, x12, x10, x11, 0x8000, 0x0001000000000000, 0x0000000000008000, x4, 936, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000000040000
TEST_RR_OP(addw, x12, x10, x11, 0x60000, 0x0000000000020000, 0x0000000000040000, x4, 944, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000100000
TEST_RR_OP(addw, x12, x10, x11, 0xf80fffff, 0xfffffffff7ffffff, 0x0000000000100000, x4, 952, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000001000000
TEST_RR_OP(addw, x12, x10, x11, 0x1000000, 0x0000100000000000, 0x0000000001000000, x4, 960, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0x0000000020000000
TEST_RR_OP(addw, x12, x10, x11, 0x11ffffff6, 0xfffffffffffffff6, 0x0000000020000000, x4, 968, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000100000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffffff7fffffffff, 0x0000000100000000, x4, 976, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000001000000000
TEST_RR_OP(addw, x12, x10, x11, 0xfeffffff, 0xfffffffffeffffff, 0x0000001000000000, x4, 984, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000002000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xfffffdffffffffff, 0x0000002000000000, x4, 992, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000010000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0008000000000000, 0x0000010000000000, x4, 1000, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000080000000000
TEST_RR_OP(addw, x12, x10, x11, 0x10, 0x0000000000000010, 0x0000080000000000, x4, 1008, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0004000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffffffffffffffff, 0x0004000000000000, x4, 1016, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0008000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xffffffffffffffff, 0x0008000000000000, x4, 1024, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0010000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x40000, 0x0000000000040000, 0x0010000000000000, x4, 1032, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0100000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000800000000000, 0x0100000000000000, x4, 1040, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0x0200000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x800, 0x0000000000000800, 0x0200000000000000, x4, 1048, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0400000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000002000000000, 0x0400000000000000, x4, 1056, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0800000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x1, 0x0000000000000001, 0x0800000000000000, x4, 1064, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffffffffffffffef
TEST_RR_OP(addw, x12, x10, x11, 0x1ffffffee, 0xefffffffffffffff, 0xffffffffffffffef, x4, 1072, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xffffffffffffffbf
TEST_RR_OP(addw, x12, x10, x11, 0xffffffbf, 0x0008000000000000, 0xffffffffffffffbf, x4, 1080, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(addw, x12, x10, x11, 0xffffff7f, 0x0000040000000000, 0xffffffffffffff7f, x4, 1088, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0xfffffffffffffbff
TEST_RR_OP(addw, x12, x10, x11, 0x10003fbff, 0x0000000000040000, 0xfffffffffffffbff, x4, 1096, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(addw, x12, x10, x11, 0x101fff7ff, 0x0000000002000000, 0xfffffffffffff7ff, x4, 1104, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xffffffffffffefff
TEST_RR_OP(addw, x12, x10, x11, 0xffffefff, 0x0000040000000000, 0xffffffffffffefff, x4, 1112, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0xfffffffffffeffff
TEST_RR_OP(addw, x12, x10, x11, 0xffff01ff, 0x0000000000000200, 0xfffffffffffeffff, x4, 1120, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffffffffffbffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffbfffc, 0xfffffffffffffffd, 0xfffffffffffbffff, x4, 1128, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(addw, x12, x10, x11, 0xffdfffff, 0x0100000000000000, 0xffffffffffdfffff, x4, 1136, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fefbfffe, 0xfffffffffffbffff, 0xfffffffffeffffff, x4, 1144, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fdfffffe, 0xffdfffffffffffff, 0xfffffffffdffffff, x4, 1152, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fbbffffe, 0xffffffffffbfffff, 0xfffffffffbffffff, x4, 1160, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1effffffe, 0xfdffffffffffffff, 0xffffffffefffffff, x4, 1168, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1dfeffffe, 0xffffffffffefffff, 0xffffffffdfffffff, x4, 1176, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(addw, x12, x10, x11, 0x7fffffff, 0x0000000800000000, 0xffffffff7fffffff, x4, 1184, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xc000000000000000, 0xfffffffeffffffff, x4, 1192, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000010000000000, 0xfffffffdffffffff, x4, 1200, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000000100000000, 0xfffffffbffffffff, x4, 1208, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0xffffffdfffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x100001fff, 0x0000000000002000, 0xffffffdfffffffff, x4, 1216, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xffffff7fffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffa, 0xfffffffffffffffb, 0xffffff7fffffffff, x4, 1224, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xfbffffffffffffff, 0xffffefffffffffff, x4, 1232, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x1fffffffe, 0xffefffffffffffff, 0xffffdfffffffffff, x4, 1240, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0xffffbfffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x100000003, 0x0000000000000004, 0xffffbfffffffffff, x4, 1248, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000000400000000, 0xffff7fffffffffff, x4, 1256, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000040000
TEST_RR_OP(addw, x12, x10, x11, 0x10003ffff, 0xfffbffffffffffff, 0x0000000000040000, x4, 1264, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000000000000005
TEST_RR_OP(addw, x12, x10, x11, 0x5, 0x0000000000000000, 0x0000000000000005, x4, 1272, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(addw, x12, x10, x11, 0x1000000ff, 0x7fffffffffffffff, 0x0000000000000100, x4, 1280, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xbfffffffffffffff
TEST_RR_OP(addw, x12, x10, x11, 0x100000000, 0x0000000000000001, 0xbfffffffffffffff, x4, 1288, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0xdfffffffffffffff, 0x8000000000000000, x4, 1296, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000000
TEST_RR_OP(addw, x12, x10, x11, 0x0, 0x0000400000000000, 0x0000000000000000, x4, 1304, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0xfffffffffffffffc
TEST_RR_OP(addw, x12, x10, x11, 0xfffffffe, 0x0000000000000002, 0xfffffffffffffffc, x4, 1312, x8)

# opcode: addw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xffffffffffefffff
TEST_RR_OP(addw, x12, x10, x11, 0xffffffff, 0x0000000000100000, 0xffffffffffefffff, x4, 1320, x8)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x13_1:
    .fill 20*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 166*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
