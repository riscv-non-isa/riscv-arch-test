
#This assembly file tests the and instruction of the RISC-V I extension for the and covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",and)

la x11,signature_x11_1

# opcode: and ; op1:x20; op2:x1; dest:x20; op1val:0x8000000000000000;  op2val:0x0000000000020000
TEST_RR_OP(and, x20, x20, x1, 0x0, 0x8000000000000000, 0x0000000000020000, x11, 0, x14)

# opcode: and ; op1:x4; op2:x5; dest:x10; op1val:0x0000000000000000;  op2val:0x0020000000000000
TEST_RR_OP(and, x10, x4, x5, 0x0, 0x0000000000000000, 0x0020000000000000, x11, 8, x14)

# opcode: and ; op1:x13; op2:x13; dest:x28; op1val:0x7fffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(and, x28, x13, x13, 0x0, 0x7fffffffffffffff, 0x8000000000000000, x11, 16, x14)

# opcode: and ; op1:x30; op2:x26; dest:x26; op1val:0x0000000000000001;  op2val:0xfffffffffffbffff
TEST_RR_OP(and, x26, x30, x26, 0x1, 0x0000000000000001, 0xfffffffffffbffff, x11, 24, x14)

# opcode: and ; op1:x25; op2:x25; dest:x25; op1val:0x0000000000001000;  op2val:0x0000000000000000
TEST_RR_OP(and, x25, x25, x25, 0x0, 0x0000000000001000, 0x0000000000000000, x11, 32, x14)

# opcode: and ; op1:x31; op2:x9; dest:x23; op1val:0xfffffffffffbffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(and, x23, x31, x9, 0x7ffffffffffbffff, 0xfffffffffffbffff, 0x7fffffffffffffff, x11, 40, x14)

# opcode: and ; op1:x8; op2:x22; dest:x9; op1val:0x0000000000000005;  op2val:0x0000000000000001
TEST_RR_OP(and, x9, x8, x22, 0x1, 0x0000000000000005, 0x0000000000000001, x11, 48, x14)

# opcode: and ; op1:x2; op2:x0; dest:x31; op1val:0xffffbfffffffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(and, x31, x2, x0, 0xffffbf7fffffffff, 0xffffbfffffffffff, 0xffffff7fffffffff, x11, 56, x14)

# opcode: and ; op1:x24; op2:x10; dest:x13; op1val:0xfffffffffffdffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(and, x13, x24, x10, 0xfffffffffffdffff, 0xfffffffffffdffff, 0xfffffffffffdffff, x11, 64, x14)

# opcode: and ; op1:x12; op2:x15; dest:x30; op1val:0x0000000000000002;  op2val:0x0000000000000100
TEST_RR_OP(and, x30, x12, x15, 0x0, 0x0000000000000002, 0x0000000000000100, x11, 72, x14)

# opcode: and ; op1:x27; op2:x8; dest:x18; op1val:0x0000000000000004;  op2val:0x0800000000000000
TEST_RR_OP(and, x18, x27, x8, 0x0, 0x0000000000000004, 0x0800000000000000, x11, 80, x14)

# opcode: and ; op1:x6; op2:x31; dest:x22; op1val:0x0000000000000008;  op2val:0xfffffeffffffffff
TEST_RR_OP(and, x22, x6, x31, 0x8, 0x0000000000000008, 0xfffffeffffffffff, x11, 88, x14)

# opcode: and ; op1:x28; op2:x17; dest:x15; op1val:0x0000000000000010;  op2val:0xffffbfffffffffff
TEST_RR_OP(and, x15, x28, x17, 0x10, 0x0000000000000010, 0xffffbfffffffffff, x11, 96, x14)

# opcode: and ; op1:x0; op2:x12; dest:x29; op1val:0x0000000000000020;  op2val:0xfffffffffffff7ff
TEST_RR_OP(and, x29, x0, x12, 0x20, 0x0000000000000020, 0xfffffffffffff7ff, x11, 104, x14)

# opcode: and ; op1:x22; op2:x6; dest:x7; op1val:0x0000000000000040;  op2val:0xfffffffffffbffff
TEST_RR_OP(and, x7, x22, x6, 0x40, 0x0000000000000040, 0xfffffffffffbffff, x11, 112, x14)

# opcode: and ; op1:x5; op2:x28; dest:x3; op1val:0x0000000000000080;  op2val:0xffffffffffffffff
TEST_RR_OP(and, x3, x5, x28, 0x80, 0x0000000000000080, 0xffffffffffffffff, x11, 120, x14)

# opcode: and ; op1:x18; op2:x19; dest:x6; op1val:0x0000000000000100;  op2val:0x0000000000000007
TEST_RR_OP(and, x6, x18, x19, 0x0, 0x0000000000000100, 0x0000000000000007, x11, 128, x14)

# opcode: and ; op1:x3; op2:x4; dest:x1; op1val:0x0000000000000200;  op2val:0xfffffffffffffffa
TEST_RR_OP(and, x1, x3, x4, 0x200, 0x0000000000000200, 0xfffffffffffffffa, x11, 136, x13)

# opcode: and ; op1:x23; op2:x29; dest:x14; op1val:0x0000000000000400;  op2val:0xffffffffffffff7f
TEST_RR_OP(and, x14, x23, x29, 0x400, 0x0000000000000400, 0xffffffffffffff7f, x11, 144, x13)
la x6,signature_x6_0

# opcode: and ; op1:x17; op2:x27; dest:x8; op1val:0x0000000000000800;  op2val:0xffffffffffdfffff
TEST_RR_OP(and, x8, x17, x27, 0x800, 0x0000000000000800, 0xffffffffffdfffff, x6, 0, x13)

# opcode: and ; op1:x10; op2:x11; dest:x0; op1val:0x0000000000002000;  op2val:0x0800000000000000
TEST_RR_OP(and, x0, x10, x11, 0x0, 0x0000000000002000, 0x0800000000000000, x6, 8, x13)

# opcode: and ; op1:x1; op2:x20; dest:x4; op1val:0x0000000000004000;  op2val:0xfdffffffffffffff
TEST_RR_OP(and, x4, x1, x20, 0x4000, 0x0000000000004000, 0xfdffffffffffffff, x6, 16, x13)

# opcode: and ; op1:x15; op2:x3; dest:x19; op1val:0x0000000000008000;  op2val:0xffffffffffff7fff
TEST_RR_OP(and, x19, x15, x3, 0x0, 0x0000000000008000, 0xffffffffffff7fff, x6, 24, x13)

# opcode: and ; op1:x7; op2:x24; dest:x5; op1val:0x0000000000010000;  op2val:0x0000000400000000
TEST_RR_OP(and, x5, x7, x24, 0x0, 0x0000000000010000, 0x0000000400000000, x6, 32, x13)

# opcode: and ; op1:x9; op2:x18; dest:x12; op1val:0x0000000000020000;  op2val:0x0000080000000000
TEST_RR_OP(and, x12, x9, x18, 0x0, 0x0000000000020000, 0x0000080000000000, x6, 40, x13)

# opcode: and ; op1:x21; op2:x23; dest:x17; op1val:0x0000000000040000;  op2val:0xfffffffffffdffff
TEST_RR_OP(and, x17, x21, x23, 0x40000, 0x0000000000040000, 0xfffffffffffdffff, x6, 48, x13)

# opcode: and ; op1:x16; op2:x2; dest:x21; op1val:0x0000000000080000;  op2val:0xffdfffffffffffff
TEST_RR_OP(and, x21, x16, x2, 0x80000, 0x0000000000080000, 0xffdfffffffffffff, x6, 56, x13)

# opcode: and ; op1:x11; op2:x21; dest:x27; op1val:0x0000000000100000;  op2val:0xffffffffffbfffff
TEST_RR_OP(and, x27, x11, x21, 0x100000, 0x0000000000100000, 0xffffffffffbfffff, x6, 64, x13)

# opcode: and ; op1:x26; op2:x7; dest:x24; op1val:0x0000000000200000;  op2val:0xffffffffffffff7f
TEST_RR_OP(and, x24, x26, x7, 0x200000, 0x0000000000200000, 0xffffffffffffff7f, x6, 72, x13)

# opcode: and ; op1:x19; op2:x30; dest:x11; op1val:0x0000000000400000;  op2val:0xfffdffffffffffff
TEST_RR_OP(and, x11, x19, x30, 0x400000, 0x0000000000400000, 0xfffdffffffffffff, x6, 80, x13)

# opcode: and ; op1:x29; op2:x14; dest:x16; op1val:0x0000000000800000;  op2val:0xfbffffffffffffff
TEST_RR_OP(and, x16, x29, x14, 0x800000, 0x0000000000800000, 0xfbffffffffffffff, x6, 88, x13)

# opcode: and ; op1:x14; op2:x16; dest:x2; op1val:0x0000000001000000;  op2val:0xffffffefffffffff
TEST_RR_OP(and, x2, x14, x16, 0x1000000, 0x0000000001000000, 0xffffffefffffffff, x6, 96, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x2000000, 0x0000000002000000, 0xff7fffffffffffff, x6, 104, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0200000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000000004000000, 0x0200000000000000, x6, 112, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x8000000, 0x0000000008000000, 0xffdfffffffffffff, x6, 120, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(and, x12, x10, x11, 0x10000000, 0x0000000010000000, 0xffffffbfffffffff, x6, 128, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(and, x12, x10, x11, 0x20000000, 0x0000000020000000, 0xfffffffffffffeff, x6, 136, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0010000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000000040000000, 0x0010000000000000, x6, 144, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x80000000, 0x0000000080000000, 0xfffff7ffffffffff, x6, 152, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000000100000000, 0xfffffffeffffffff, x6, 160, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x200000000, 0x0000000200000000, 0xff7fffffffffffff, x6, 168, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0008000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000000400000000, 0x0008000000000000, x6, 176, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000007
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000000800000000, 0x0000000000000007, x6, 184, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x1000000000, 0x0000001000000000, 0xffdfffffffffffff, x6, 192, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0001000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000002000000000, 0x0001000000000000, x6, 200, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x4000000000, 0x0000004000000000, 0xfffffdffffffffff, x6, 208, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x8000000000, 0x0000008000000000, 0xfffffbffffffffff, x6, 216, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x10000000000, 0x0000010000000000, 0xfffffdffffffffff, x6, 224, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000080000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000000000080000, x6, 232, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000100000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000100000000000, x6, 240, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(and, x12, x10, x11, 0x80000000000, 0x0000080000000000, 0xfffffff7ffffffff, x6, 248, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0400000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000100000000000, 0x0400000000000000, x6, 256, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000008000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000000008000000, x6, 264, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000100000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000400000000000, 0x0000000100000000, x6, 272, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000002
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000800000000000, 0x0000000000000002, x6, 280, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(and, x12, x10, x11, 0x1000000000000, 0x0001000000000000, 0xfffffffffffffbff, x6, 288, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000080000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0002000000000000, 0x0000000080000000, x6, 296, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0008000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0004000000000000, 0x0008000000000000, x6, 304, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000100000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0008000000000000, 0x0000100000000000, x6, 312, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(and, x12, x10, x11, 0x10000000000000, 0x0010000000000000, 0xffffffffffff7fff, x6, 320, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x20000000000000, 0x0020000000000000, 0xffffffffffffffff, x6, 328, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000001000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0040000000000000, 0x0000001000000000, x6, 336, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0800000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0080000000000000, 0x0800000000000000, x6, 344, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000020000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0100000000000000, 0x0000000020000000, x6, 352, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000002000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0200000000000000, 0x0000002000000000, x6, 360, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x400000000000000, 0x0400000000000000, 0xfdffffffffffffff, x6, 368, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000008000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000008000, x6, 376, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000006
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x1000000000000000, 0x0000000000000006, x6, 384, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffffefff
TEST_RR_OP(and, x12, x10, x11, 0x2000000000000000, 0x2000000000000000, 0xffffffffffffefff, x6, 392, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(and, x12, x10, x11, 0x4000000000000000, 0x4000000000000000, 0xffffffffffdfffff, x6, 400, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0200000000000000
TEST_RR_OP(and, x12, x10, x11, 0x200000000000000, 0xfffffffffffffffe, 0x0200000000000000, x6, 408, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffffffff7ffffff
TEST_RR_OP(and, x12, x10, x11, 0xfffffffff7fffffd, 0xfffffffffffffffd, 0xfffffffff7ffffff, x6, 416, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xffffffffffffdfff
TEST_RR_OP(and, x12, x10, x11, 0xffffffffffffdffb, 0xfffffffffffffffb, 0xffffffffffffdfff, x6, 424, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xffffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xfffffffffffffff7, 0xfffffffffffffff7, 0xffffffffffffffff, x6, 432, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0800000000000000
TEST_RR_OP(and, x12, x10, x11, 0x800000000000000, 0xffffffffffffffef, 0x0800000000000000, x6, 440, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0xffffffffffffffdf, 0x0000000000000000, x6, 448, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000001000000
TEST_RR_OP(and, x12, x10, x11, 0x1000000, 0xffffffffffffffbf, 0x0000000001000000, x6, 456, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xffffffffefffffff
TEST_RR_OP(and, x12, x10, x11, 0xffffffffefffff7f, 0xffffffffffffff7f, 0xffffffffefffffff, x6, 464, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(and, x12, x10, x11, 0xfffffffffff7feff, 0xfffffffffffffeff, 0xfffffffffff7ffff, x6, 472, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0008000000000000
TEST_RR_OP(and, x12, x10, x11, 0x8000000000000, 0xfffffffffffffdff, 0x0008000000000000, x6, 480, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffffffffffffffc
TEST_RR_OP(and, x12, x10, x11, 0xfffffffffffffbfc, 0xfffffffffffffbff, 0xfffffffffffffffc, x6, 488, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xfffbff7fffffffff, 0xffffff7fffffffff, 0xfffbffffffffffff, x6, 496, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0xfff7ffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xfff7fffffffffffc, 0xfffffffffffffffc, 0xfff7ffffffffffff, x6, 504, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xffefffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xffeffffffffffffd, 0xfffffffffffffffd, 0xffefffffffffffff, x6, 512, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xffbfffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xffbffffffffffeff, 0xfffffffffffffeff, 0xffbfffffffffffff, x6, 520, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xfeffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x80, 0x0000000000000080, 0xfeffffffffffffff, x6, 528, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0xf7ffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x7, 0x0000000000000007, 0xf7ffffffffffffff, x6, 536, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0xefffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x6, 0x0000000000000006, 0xefffffffffffffff, x6, 544, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xddffffffffffffff, 0xfdffffffffffffff, 0xdfffffffffffffff, x6, 552, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xbfffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xbffffffffffff7ff, 0xfffffffffffff7ff, 0xbfffffffffffffff, x6, 560, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0x5555555555555555
TEST_RR_OP(and, x12, x10, x11, 0x5555555555555554, 0xfffffffffffffffc, 0x5555555555555555, x6, 568, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(and, x12, x10, x11, 0xaaaaaaaaa2aaaaaa, 0xfffffffff7ffffff, 0xaaaaaaaaaaaaaaaa, x6, 576, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000010
TEST_RR_OP(and, x12, x10, x11, 0x10, 0xffffffffffffefff, 0x0000000000000010, x6, 584, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0001000000000000
TEST_RR_OP(and, x12, x10, x11, 0x1000000000000, 0xffffffffffffdfff, 0x0001000000000000, x6, 592, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(and, x12, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xffffffffffffbfff, 0xaaaaaaaaaaaaaaaa, x6, 600, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000002
TEST_RR_OP(and, x12, x10, x11, 0x2, 0xffffffffffff7fff, 0x0000000000000002, x6, 608, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(and, x12, x10, x11, 0xfffffffffffebfff, 0xfffffffffffeffff, 0xffffffffffffbfff, x6, 616, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000040000000
TEST_RR_OP(and, x12, x10, x11, 0x40000000, 0xfffffffffff7ffff, 0x0000000040000000, x6, 624, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000003
TEST_RR_OP(and, x12, x10, x11, 0x3, 0xffffffffffefffff, 0x0000000000000003, x6, 632, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xfdffffffffdfffff, 0xffffffffffdfffff, 0xfdffffffffffffff, x6, 640, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xfffff7ffffbfffff, 0xffffffffffbfffff, 0xfffff7ffffffffff, x6, 648, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x8000000000000000
TEST_RR_OP(and, x12, x10, x11, 0x8000000000000000, 0xffffffffff7fffff, 0x8000000000000000, x6, 656, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(and, x12, x10, x11, 0xffffffffdeffffff, 0xfffffffffeffffff, 0xffffffffdfffffff, x6, 664, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(and, x12, x10, x11, 0xfffffffff9ffffff, 0xfffffffffdffffff, 0xfffffffffbffffff, x6, 672, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(and, x12, x10, x11, 0xfffffffff3ffffff, 0xfffffffffbffffff, 0xfffffffff7ffffff, x6, 680, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000400000000
TEST_RR_OP(and, x12, x10, x11, 0x400000000, 0xffffffffefffffff, 0x0000000400000000, x6, 688, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xff7fffffdfffffff, 0xffffffffdfffffff, 0xff7fffffffffffff, x6, 696, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000080
TEST_RR_OP(and, x12, x10, x11, 0x80, 0xffffffffbfffffff, 0x0000000000000080, x6, 704, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xfbffffff7fffffff, 0xffffffff7fffffff, 0xfbffffffffffffff, x6, 712, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000200
TEST_RR_OP(and, x12, x10, x11, 0x200, 0xfffffffeffffffff, 0x0000000000000200, x6, 720, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0040000000000000
TEST_RR_OP(and, x12, x10, x11, 0x40000000000000, 0xfffffffdffffffff, 0x0040000000000000, x6, 728, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000002000000
TEST_RR_OP(and, x12, x10, x11, 0x2000000, 0xfffffffbffffffff, 0x0000000002000000, x6, 736, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(and, x12, x10, x11, 0xfffffff5ffffffff, 0xfffffff7ffffffff, 0xfffffffdffffffff, x6, 744, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xfff7ffefffffffff, 0xffffffefffffffff, 0xfff7ffffffffffff, x6, 752, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xffffefdfffffffff, 0xffffffdfffffffff, 0xffffefffffffffff, x6, 760, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000800000000000
TEST_RR_OP(and, x12, x10, x11, 0x800000000000, 0xffffffbfffffffff, 0x0000800000000000, x6, 768, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(and, x12, x10, x11, 0xfffffeffffffbfff, 0xfffffeffffffffff, 0xffffffffffffbfff, x6, 776, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000010000
TEST_RR_OP(and, x12, x10, x11, 0x10000, 0xfffffdffffffffff, 0x0000000000010000, x6, 784, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xfdfffbffffffffff, 0xfffffbffffffffff, 0xfdffffffffffffff, x6, 792, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xfffff3ffffffffff, 0xfffff7ffffffffff, 0xfffffbffffffffff, x6, 800, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000004000000000
TEST_RR_OP(and, x12, x10, x11, 0x4000000000, 0xffffefffffffffff, 0x0000004000000000, x6, 808, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(and, x12, x10, x11, 0x9, 0xffffdfffffffffff, 0x0000000000000009, x6, 816, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(and, x12, x10, x11, 0xffff7fdfffffffff, 0xffff7fffffffffff, 0xffffffdfffffffff, x6, 824, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(and, x12, x10, x11, 0x20, 0xfffeffffffffffff, 0x0000000000000020, x6, 832, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000100000
TEST_RR_OP(and, x12, x10, x11, 0x100000, 0xfffdffffffffffff, 0x0000000000100000, x6, 840, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(and, x12, x10, x11, 0xfff7fffffeffffff, 0xfff7ffffffffffff, 0xfffffffffeffffff, x6, 848, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(and, x12, x10, x11, 0x9, 0xffefffffffffffff, 0x0000000000000009, x6, 856, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(and, x12, x10, x11, 0xffdffffeffffffff, 0xffdfffffffffffff, 0xfffffffeffffffff, x6, 864, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(and, x12, x10, x11, 0x20, 0xffbfffffffffffff, 0x0000000000000020, x6, 872, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xff5fffffffffffff, 0xff7fffffffffffff, 0xffdfffffffffffff, x6, 880, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(and, x12, x10, x11, 0x8000000, 0xfeffffffffffffff, 0x0000000008000000, x6, 888, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000004000000
TEST_RR_OP(and, x12, x10, x11, 0x4000000, 0xfbffffffffffffff, 0x0000000004000000, x6, 896, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0xd7ffffffffffffff, 0xf7ffffffffffffff, 0xdfffffffffffffff, x6, 904, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(and, x12, x10, x11, 0x8000000000000000, 0xefffffffffffffff, 0x8000000000000000, x6, 912, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(and, x12, x10, x11, 0xdffffffffffff7ff, 0xdfffffffffffffff, 0xfffffffffffff7ff, x6, 920, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0001000000000000
TEST_RR_OP(and, x12, x10, x11, 0x1000000000000, 0xbfffffffffffffff, 0x0001000000000000, x6, 928, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffbffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x5551555555555555, 0x5555555555555555, 0xfffbffffffffffff, x6, 936, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0002000000000000
TEST_RR_OP(and, x12, x10, x11, 0x2000000000000, 0xaaaaaaaaaaaaaaaa, 0x0002000000000000, x6, 944, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000004
TEST_RR_OP(and, x12, x10, x11, 0x4, 0xfffffffffffffffe, 0x0000000000000004, x6, 952, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000008
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000000000000008, x6, 960, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000040
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x1000000000000000, 0x0000000000000040, x6, 968, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000400
TEST_RR_OP(and, x12, x10, x11, 0x400, 0xfffdffffffffffff, 0x0000000000000400, x6, 976, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0x0000000000000800
TEST_RR_OP(and, x12, x10, x11, 0x0, 0xc000000000000000, 0x0000000000000800, x6, 984, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000001000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0040000000000000, 0x0000000000001000, x6, 992, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000002000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000000002000, x6, 1000, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0000000000004000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000000000100000, 0x0000000000004000, x6, 1008, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000040000
TEST_RR_OP(and, x12, x10, x11, 0x40000, 0xfffffff7ffffffff, 0x0000000000040000, x6, 1016, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000200000
TEST_RR_OP(and, x12, x10, x11, 0x200000, 0xfffffffffffff7ff, 0x0000000000200000, x6, 1024, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000400000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000800000000000, 0x0000000000400000, x6, 1032, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000800000
TEST_RR_OP(and, x12, x10, x11, 0x800000, 0xfffffff7ffffffff, 0x0000000000800000, x6, 1040, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000010000000
TEST_RR_OP(and, x12, x10, x11, 0x10000000, 0xefffffffffffffff, 0x0000000010000000, x6, 1048, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0x0000000200000000
TEST_RR_OP(and, x12, x10, x11, 0x200000000, 0xfffffffffffffff8, 0x0000000200000000, x6, 1056, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000800000000
TEST_RR_OP(and, x12, x10, x11, 0x800000000, 0xf7ffffffffffffff, 0x0000000800000000, x6, 1064, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0004000000000000
TEST_RR_OP(and, x12, x10, x11, 0x4000000000000, 0xfffffffffffffffe, 0x0004000000000000, x6, 1072, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0x0080000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000000000000100, 0x0080000000000000, x6, 1080, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0100000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000000000000008, 0x0100000000000000, x6, 1088, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x1000000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000040000000000, 0x1000000000000000, x6, 1096, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x2000000000000000
TEST_RR_OP(and, x12, x10, x11, 0x2000000000000000, 0xfffffffffffffdff, 0x2000000000000000, x6, 1104, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x4000000000000000
TEST_RR_OP(and, x12, x10, x11, 0x4000000000000000, 0xdfffffffffffffff, 0x4000000000000000, x6, 1112, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffffffffffffe
TEST_RR_OP(and, x12, x10, x11, 0x2000000000, 0x0000002000000000, 0xfffffffffffffffe, x6, 1120, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(and, x12, x10, x11, 0xffffffeffffffffd, 0xffffffefffffffff, 0xfffffffffffffffd, x6, 1128, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0xfffffffffffffffb
TEST_RR_OP(and, x12, x10, x11, 0xfffffffffffffff8, 0xfffffffffffffff8, 0xfffffffffffffffb, x6, 1136, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xfffffffffffffff7
TEST_RR_OP(and, x12, x10, x11, 0xffffffffffffffe7, 0xffffffffffffffef, 0xfffffffffffffff7, x6, 1144, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(and, x12, x10, x11, 0x1000000000, 0x0000001000000000, 0xffffffffffffffef, x6, 1152, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xffffffffffffffdf
TEST_RR_OP(and, x12, x10, x11, 0xffffffffffffdfdf, 0xffffffffffffdfff, 0xffffffffffffffdf, x6, 1160, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(and, x12, x10, x11, 0xffffbfffffffffbf, 0xffffbfffffffffff, 0xffffffffffffffbf, x6, 1168, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0xfffffffffffffdff
TEST_RR_OP(and, x12, x10, x11, 0x5, 0x0000000000000005, 0xfffffffffffffdff, x6, 1176, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0xfffffffffffeffff
TEST_RR_OP(and, x12, x10, x11, 0x200, 0x0000000000000200, 0xfffffffffffeffff, x6, 1184, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffffffffefffff
TEST_RR_OP(and, x12, x10, x11, 0xffffffffffeeffff, 0xfffffffffffeffff, 0xffffffffffefffff, x6, 1192, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0xffffffffff7fffff
TEST_RR_OP(and, x12, x10, x11, 0x1000, 0x0000000000001000, 0xffffffffff7fffff, x6, 1200, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(and, x12, x10, x11, 0xfffffffffd7fffff, 0xffffffffff7fffff, 0xfffffffffdffffff, x6, 1208, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(and, x12, x10, x11, 0x1000000000000000, 0x1000000000000000, 0xffffffffbfffffff, x6, 1216, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(and, x12, x10, x11, 0x4000000000000, 0x0004000000000000, 0xffffffff7fffffff, x6, 1224, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xffffdfffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x80000, 0x0000000000080000, 0xffffdfffffffffff, x6, 1232, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(and, x12, x10, x11, 0xffdffffbffffffff, 0xffdfffffffffffff, 0xfffffffbffffffff, x6, 1240, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000008000000000
TEST_RR_OP(and, x12, x10, x11, 0x8000000000, 0xffffffffffbfffff, 0x0000008000000000, x6, 1248, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(and, x12, x10, x11, 0x10000000000, 0xfffff7ffffffffff, 0x0000010000000000, x6, 1256, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000020000000000
TEST_RR_OP(and, x12, x10, x11, 0x20000000000, 0xfffffffdffffffff, 0x0000020000000000, x6, 1264, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0x0000040000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0xc000000000000000, 0x0000040000000000, x6, 1272, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0x0000200000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000000000000100, 0x0000200000000000, x6, 1280, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000400000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x8000000000000000, 0x0000400000000000, x6, 1288, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xffff7fffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x80, 0x0000000000000080, 0xffff7fffffffffff, x6, 1296, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(and, x12, x10, x11, 0x10000000, 0x0000000010000000, 0xfffeffffffffffff, x6, 1304, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(and, x12, x10, x11, 0x7, 0xfffbffffffffffff, 0x0000000000000007, x6, 1312, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000000020000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x8000000000000000, 0x0000000000020000, x6, 1320, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x7fffffffffffffff, 0x8000000000000000, x6, 1328, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xfffffffffffbffff
TEST_RR_OP(and, x12, x10, x11, 0x1, 0x0000000000000001, 0xfffffffffffbffff, x6, 1336, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x0000000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000000000001000, 0x0000000000000000, x6, 1344, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(and, x12, x10, x11, 0xffffbf7fffffffff, 0xffffbfffffffffff, 0xffffff7fffffffff, x6, 1352, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0xfffffffffffff7ff
TEST_RR_OP(and, x12, x10, x11, 0x20, 0x0000000000000020, 0xfffffffffffff7ff, x6, 1360, x13)

# opcode: and ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0x0800000000000000
TEST_RR_OP(and, x12, x10, x11, 0x0, 0x0000000000002000, 0x0800000000000000, x6, 1368, x13)
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

signature_x11_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x11_1:
    .fill 19*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 172*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
