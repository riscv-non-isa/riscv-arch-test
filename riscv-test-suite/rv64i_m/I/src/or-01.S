
#This assembly file tests the or instruction of the RISC-V I extension for the or covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",or)

la x2,signature_x2_1

# opcode: or ; op1:x12; op2:x18; dest:x12; op1val:0x8000000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(or, x12, x12, x18, 0xffffffffffff7fff, 0x8000000000000000, 0xffffffffffff7fff, x2, 0, x8)

# opcode: or ; op1:x1; op2:x29; dest:x23; op1val:0x0000000000000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(or, x23, x1, x29, 0xfffffffffffffffc, 0x0000000000000000, 0xfffffffffffffffc, x2, 8, x8)

# opcode: or ; op1:x11; op2:x11; dest:x25; op1val:0x7fffffffffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(or, x25, x11, x11, 0xffffffffffffffff, 0x7fffffffffffffff, 0xfffffffffffbffff, x2, 16, x8)

# opcode: or ; op1:x29; op2:x10; dest:x10; op1val:0x0000000000000001;  op2val:0x0000000002000000
TEST_RR_OP(or, x10, x29, x10, 0x2000001, 0x0000000000000001, 0x0000000002000000, x2, 24, x8)

# opcode: or ; op1:x7; op2:x7; dest:x7; op1val:0x0040000000000000;  op2val:0x8000000000000000
TEST_RR_OP(or, x7, x7, x7, 0x8040000000000000, 0x0040000000000000, 0x8000000000000000, x2, 32, x8)

# opcode: or ; op1:x31; op2:x17; dest:x6; op1val:0x0000000000040000;  op2val:0x0000000000000000
TEST_RR_OP(or, x6, x31, x17, 0x40000, 0x0000000000040000, 0x0000000000000000, x2, 40, x8)

# opcode: or ; op1:x6; op2:x31; dest:x22; op1val:0x0040000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(or, x22, x6, x31, 0x7fffffffffffffff, 0x0040000000000000, 0x7fffffffffffffff, x2, 48, x8)

# opcode: or ; op1:x5; op2:x28; dest:x1; op1val:0x0000000000000003;  op2val:0x0000000000000001
TEST_RR_OP(or, x1, x5, x28, 0x3, 0x0000000000000003, 0x0000000000000001, x2, 56, x8)

# opcode: or ; op1:x28; op2:x20; dest:x18; op1val:0xffffdfffffffffff;  op2val:0x0000000000100000
TEST_RR_OP(or, x18, x28, x20, 0xffffdfffffffffff, 0xffffdfffffffffff, 0x0000000000100000, x2, 64, x8)

# opcode: or ; op1:x26; op2:x16; dest:x14; op1val:0xdfffffffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(or, x14, x26, x16, 0xdfffffffffffffff, 0xdfffffffffffffff, 0xdfffffffffffffff, x2, 72, x8)

# opcode: or ; op1:x24; op2:x12; dest:x5; op1val:0x0000000000000002;  op2val:0x0000100000000000
TEST_RR_OP(or, x5, x24, x12, 0x100000000002, 0x0000000000000002, 0x0000100000000000, x2, 80, x8)

# opcode: or ; op1:x19; op2:x15; dest:x3; op1val:0x0000000000000004;  op2val:0x0000000010000000
TEST_RR_OP(or, x3, x19, x15, 0x10000004, 0x0000000000000004, 0x0000000010000000, x2, 88, x8)

# opcode: or ; op1:x15; op2:x14; dest:x16; op1val:0x0000000000000008;  op2val:0x0000000000080000
TEST_RR_OP(or, x16, x15, x14, 0x80008, 0x0000000000000008, 0x0000000000080000, x2, 96, x8)

# opcode: or ; op1:x3; op2:x27; dest:x9; op1val:0x0000000000000010;  op2val:0x1000000000000000
TEST_RR_OP(or, x9, x3, x27, 0x1000000000000010, 0x0000000000000010, 0x1000000000000000, x2, 104, x8)

# opcode: or ; op1:x20; op2:x23; dest:x24; op1val:0x0000000000000020;  op2val:0xffffffffffbfffff
TEST_RR_OP(or, x24, x20, x23, 0xffffffffffbfffff, 0x0000000000000020, 0xffffffffffbfffff, x2, 112, x8)

# opcode: or ; op1:x18; op2:x19; dest:x11; op1val:0x0000000000000040;  op2val:0x0000080000000000
TEST_RR_OP(or, x11, x18, x19, 0x80000000040, 0x0000000000000040, 0x0000080000000000, x2, 120, x8)

# opcode: or ; op1:x10; op2:x24; dest:x20; op1val:0x0000000000000080;  op2val:0xffffffffffffffbf
TEST_RR_OP(or, x20, x10, x24, 0xffffffffffffffbf, 0x0000000000000080, 0xffffffffffffffbf, x2, 128, x8)

# opcode: or ; op1:x4; op2:x25; dest:x17; op1val:0x0000000000000100;  op2val:0x0002000000000000
TEST_RR_OP(or, x17, x4, x25, 0x2000000000100, 0x0000000000000100, 0x0002000000000000, x2, 136, x8)

# opcode: or ; op1:x27; op2:x26; dest:x31; op1val:0x0000000000000200;  op2val:0xfffbffffffffffff
TEST_RR_OP(or, x31, x27, x26, 0xfffbffffffffffff, 0x0000000000000200, 0xfffbffffffffffff, x2, 144, x8)

# opcode: or ; op1:x0; op2:x6; dest:x30; op1val:0x0000000000000400;  op2val:0x0000000400000000
TEST_RR_OP(or, x30, x0, x6, 0x400000400, 0x0000000000000400, 0x0000000400000000, x2, 152, x8)

# opcode: or ; op1:x17; op2:x21; dest:x4; op1val:0x0000000000000800;  op2val:0xfffffffffffffffd
TEST_RR_OP(or, x4, x17, x21, 0xfffffffffffffffd, 0x0000000000000800, 0xfffffffffffffffd, x2, 160, x7)
la x6,signature_x6_0

# opcode: or ; op1:x13; op2:x9; dest:x26; op1val:0x0000000000001000;  op2val:0x0000000000100000
TEST_RR_OP(or, x26, x13, x9, 0x101000, 0x0000000000001000, 0x0000000000100000, x6, 0, x7)

# opcode: or ; op1:x23; op2:x8; dest:x21; op1val:0x0000000000002000;  op2val:0xfffeffffffffffff
TEST_RR_OP(or, x21, x23, x8, 0xfffeffffffffffff, 0x0000000000002000, 0xfffeffffffffffff, x6, 8, x7)

# opcode: or ; op1:x16; op2:x4; dest:x13; op1val:0x0000000000004000;  op2val:0xfffffffffffffff9
TEST_RR_OP(or, x13, x16, x4, 0xfffffffffffffff9, 0x0000000000004000, 0xfffffffffffffff9, x6, 16, x7)

# opcode: or ; op1:x22; op2:x5; dest:x29; op1val:0x0000000000008000;  op2val:0xfffffffffffffeff
TEST_RR_OP(or, x29, x22, x5, 0xfffffffffffffeff, 0x0000000000008000, 0xfffffffffffffeff, x6, 24, x7)

# opcode: or ; op1:x14; op2:x2; dest:x19; op1val:0x0000000000010000;  op2val:0xfffffffffffffff7
TEST_RR_OP(or, x19, x14, x2, 0xfffffffffffffff7, 0x0000000000010000, 0xfffffffffffffff7, x6, 32, x7)

# opcode: or ; op1:x2; op2:x0; dest:x28; op1val:0x0000000000020000;  op2val:0xfffbffffffffffff
TEST_RR_OP(or, x28, x2, x0, 0xfffbffffffffffff, 0x0000000000020000, 0xfffbffffffffffff, x6, 40, x7)

# opcode: or ; op1:x25; op2:x30; dest:x2; op1val:0x0000000000080000;  op2val:0x0000000000004000
TEST_RR_OP(or, x2, x25, x30, 0x84000, 0x0000000000080000, 0x0000000000004000, x6, 48, x7)

# opcode: or ; op1:x8; op2:x22; dest:x15; op1val:0x0000000000100000;  op2val:0xffffffffffdfffff
TEST_RR_OP(or, x15, x8, x22, 0xffffffffffdfffff, 0x0000000000100000, 0xffffffffffdfffff, x6, 56, x7)

# opcode: or ; op1:x9; op2:x3; dest:x0; op1val:0x0000000000200000;  op2val:0x0000000000400000
TEST_RR_OP(or, x0, x9, x3, 0x600000, 0x0000000000200000, 0x0000000000400000, x6, 64, x7)

# opcode: or ; op1:x30; op2:x1; dest:x27; op1val:0x0000000000400000;  op2val:0x0001000000000000
TEST_RR_OP(or, x27, x30, x1, 0x1000000400000, 0x0000000000400000, 0x0001000000000000, x6, 72, x7)

# opcode: or ; op1:x21; op2:x13; dest:x8; op1val:0x0000000000800000;  op2val:0x0000000800000000
TEST_RR_OP(or, x8, x21, x13, 0x800800000, 0x0000000000800000, 0x0000000800000000, x6, 80, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xffefffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffefffffffffffff, 0x0000000001000000, 0xffefffffffffffff, x6, 88, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000005
TEST_RR_OP(or, x12, x10, x11, 0x2000005, 0x0000000002000000, 0x0000000000000005, x6, 96, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xefffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xefffffffffffffff, 0x0000000004000000, 0xefffffffffffffff, x6, 104, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000040
TEST_RR_OP(or, x12, x10, x11, 0x8000040, 0x0000000008000000, 0x0000000000000040, x6, 112, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000200000
TEST_RR_OP(or, x12, x10, x11, 0x10200000, 0x0000000010000000, 0x0000000000200000, x6, 120, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xdfffffffffffffff, 0x0000000020000000, 0xdfffffffffffffff, x6, 128, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfeffffffffffffff, 0x0000000040000000, 0xfeffffffffffffff, x6, 136, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000003
TEST_RR_OP(or, x12, x10, x11, 0x80000003, 0x0000000080000000, 0x0000000000000003, x6, 144, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000400000000000
TEST_RR_OP(or, x12, x10, x11, 0x400100000000, 0x0000000100000000, 0x0000400000000000, x6, 152, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xfffffffffffffffe
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffffe, 0x0000000200000000, 0xfffffffffffffffe, x6, 160, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0020000000000000
TEST_RR_OP(or, x12, x10, x11, 0x20000400000000, 0x0000000400000000, 0x0020000000000000, x6, 168, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000007
TEST_RR_OP(or, x12, x10, x11, 0x800000007, 0x0000000800000000, 0x0000000000000007, x6, 176, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x4000000000000000
TEST_RR_OP(or, x12, x10, x11, 0x4000001000000000, 0x0000001000000000, 0x4000000000000000, x6, 184, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffbffff, 0x0000002000000000, 0xfffffffffffbffff, x6, 192, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0400000000000000
TEST_RR_OP(or, x12, x10, x11, 0x400004000000000, 0x0000004000000000, 0x0400000000000000, x6, 200, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000080000
TEST_RR_OP(or, x12, x10, x11, 0x8000080000, 0x0000008000000000, 0x0000000000080000, x6, 208, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfbffffffffffffff, 0x0000010000000000, 0xfbffffffffffffff, x6, 216, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000001
TEST_RR_OP(or, x12, x10, x11, 0x20000000001, 0x0000020000000000, 0x0000000000000001, x6, 224, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000040
TEST_RR_OP(or, x12, x10, x11, 0x40000000040, 0x0000040000000000, 0x0000000000000040, x6, 232, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000040000000000
TEST_RR_OP(or, x12, x10, x11, 0xc0000000000, 0x0000080000000000, 0x0000040000000000, x6, 240, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffffff7ffffff, 0x0000100000000000, 0xfffffffff7ffffff, x6, 248, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfffffffffffffffa
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffffa, 0x0000200000000000, 0xfffffffffffffffa, x6, 256, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000008000000
TEST_RR_OP(or, x12, x10, x11, 0x400008000000, 0x0000400000000000, 0x0000000008000000, x6, 264, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffbfffff, 0x0000800000000000, 0xffffffffffbfffff, x6, 272, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xc000000000000000
TEST_RR_OP(or, x12, x10, x11, 0xc001000000000000, 0x0001000000000000, 0xc000000000000000, x6, 280, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffefffff, 0x0002000000000000, 0xffffffffffefffff, x6, 288, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000400000000
TEST_RR_OP(or, x12, x10, x11, 0x4000400000000, 0x0004000000000000, 0x0000000400000000, x6, 296, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xc000000000000000
TEST_RR_OP(or, x12, x10, x11, 0xc008000000000000, 0x0008000000000000, 0xc000000000000000, x6, 304, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000200000000000
TEST_RR_OP(or, x12, x10, x11, 0x10200000000000, 0x0010000000000000, 0x0000200000000000, x6, 312, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000080000000
TEST_RR_OP(or, x12, x10, x11, 0x20000080000000, 0x0020000000000000, 0x0000000080000000, x6, 320, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffbfffffffffffff, 0x0080000000000000, 0xffbfffffffffffff, x6, 328, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffffbffffffff, 0x0100000000000000, 0xfffffffbffffffff, x6, 336, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000004000000000
TEST_RR_OP(or, x12, x10, x11, 0x200004000000000, 0x0200000000000000, 0x0000004000000000, x6, 344, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffff7fff, 0x0400000000000000, 0xffffffffffff7fff, x6, 352, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffff7, 0x0800000000000000, 0xfffffffffffffff7, x6, 360, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff7fffffff, 0x1000000000000000, 0xffffffff7fffffff, x6, 368, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffffffbf
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffbf, 0x2000000000000000, 0xffffffffffffffbf, x6, 376, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffff7fff, 0x4000000000000000, 0xffffffffffff7fff, x6, 384, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000200
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffffe, 0xfffffffffffffffe, 0x0000000000000200, x6, 392, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x7fffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffffffd, 0x7fffffffffffffff, x6, 400, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000008000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffffb, 0xfffffffffffffffb, 0x0000000000008000, x6, 408, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000020000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffff7, 0xfffffffffffffff7, 0x0000000000020000, x6, 416, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000800000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffef, 0xffffffffffffffef, 0x0000800000000000, x6, 424, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffffffefffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffffffdf, 0xffffffefffffffff, x6, 432, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xffffffffffffbfff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffffffbf, 0xffffffffffffbfff, x6, 440, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000008
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffff7f, 0xffffffffffffff7f, 0x0000000000000008, x6, 448, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000001000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffeff, 0xfffffffffffffeff, 0x0000001000000000, x6, 456, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xffffbfffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffffdff, 0xffffbfffffffffff, x6, 464, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffff7fffffff, 0xfff7ffffffffffff, x6, 472, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffdffffffffffff, 0xffdfffffffffffff, x6, 480, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xff7fffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xff7fffffffffffff, 0x0000000000080000, 0xff7fffffffffffff, x6, 488, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffeffffffffffff, 0xfdffffffffffffff, x6, 496, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffeffffffff, 0xf7ffffffffffffff, x6, 504, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0xbfffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xbfffffffffffffff, 0x0000000000000100, 0xbfffffffffffffff, x6, 512, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x5555555555555555
TEST_RR_OP(or, x12, x10, x11, 0x5555555555555555, 0x0000000000400000, 0x5555555555555555, x6, 520, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfff7ffffffffffff, 0xaaaaaaaaaaaaaaaa, x6, 528, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000200000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffbff, 0xfffffffffffffbff, 0x0000000000200000, x6, 536, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xfffffffffffffbff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffff7ff, 0xfffffffffffffbff, x6, 544, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfffffffffbffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffffefff, 0xfffffffffbffffff, x6, 552, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xffffff7fffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffffdfff, 0xffffff7fffffffff, x6, 560, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xffffffffdfffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffffbfff, 0xffffffffdfffffff, x6, 568, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000200000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffff7fff, 0xffffffffffff7fff, 0x0000200000000000, x6, 576, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffeffff, 0xfffffbffffffffff, x6, 584, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffdffff, 0xffbfffffffffffff, x6, 592, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffbffff, 0xfffeffffffffffff, x6, 600, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xffefffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffff7ffff, 0xffefffffffffffff, x6, 608, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffefffff, 0xdfffffffffffffff, x6, 616, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffdfffff, 0xfffeffffffffffff, x6, 624, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xffffffefffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffbfffff, 0xffffffefffffffff, x6, 632, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000800000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffff7fffff, 0xffffffffff7fffff, 0x0000800000000000, x6, 640, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffeffffff, 0xbfffffffffffffff, x6, 648, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x1000000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffdffffff, 0xfffffffffdffffff, 0x1000000000000000, x6, 656, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000200000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffbffffff, 0xfffffffffbffffff, 0x0000000200000000, x6, 664, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0200000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffff7ffffff, 0xfffffffff7ffffff, 0x0200000000000000, x6, 672, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffefffffff, 0xffffffffffffdfff, x6, 680, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000400000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffdfffffff, 0xffffffffdfffffff, 0x0000000400000000, x6, 688, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffbfffffff, 0xdfffffffffffffff, x6, 696, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000009
TEST_RR_OP(or, x12, x10, x11, 0xfffffffdffffffff, 0xfffffffdffffffff, 0x0000000000000009, x6, 704, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffbffffffff, 0xf7ffffffffffffff, x6, 712, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000004000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffff7ffffffff, 0xfffffff7ffffffff, 0x0000000004000000, x6, 720, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000200000
TEST_RR_OP(or, x12, x10, x11, 0xffffffefffffffff, 0xffffffefffffffff, 0x0000000000200000, x6, 728, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffdfffffffff, 0xfffffffffffeffff, x6, 736, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffbfffffffff, 0xffffffffdfffffff, x6, 744, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000800000000
TEST_RR_OP(or, x12, x10, x11, 0xffffff7fffffffff, 0xffffff7fffffffff, 0x0000000800000000, x6, 752, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffeffffffffff, 0xffffbfffffffffff, x6, 760, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffffffffffc
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffdffffffffff, 0xfffffffffffffffc, x6, 768, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xffffffefffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffbffffffffff, 0xffffffefffffffff, x6, 776, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffff7ffffffffff, 0xfffff7ffffffffff, 0x8000000000000000, x6, 784, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(or, x12, x10, x11, 0xffffefffffffffff, 0xffffefffffffffff, 0x0000000000000003, x6, 792, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000008000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffbfffffffffff, 0xffffbfffffffffff, 0x0000008000000000, x6, 800, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(or, x12, x10, x11, 0xffff7fffffffffff, 0xffff7fffffffffff, 0x5555555555555555, x6, 808, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000080000
TEST_RR_OP(or, x12, x10, x11, 0xfffbffffffffffff, 0xfffbffffffffffff, 0x0000000000080000, x6, 816, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000400000
TEST_RR_OP(or, x12, x10, x11, 0xffefffffffffffff, 0xffefffffffffffff, 0x0000000000400000, x6, 824, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000100000000000
TEST_RR_OP(or, x12, x10, x11, 0xffdfffffffffffff, 0xffdfffffffffffff, 0x0000100000000000, x6, 832, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000004000000000
TEST_RR_OP(or, x12, x10, x11, 0xffbfffffffffffff, 0xffbfffffffffffff, 0x0000004000000000, x6, 840, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xff7fffffffffffff, 0xfbffffffffffffff, x6, 848, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfeffffffffffffff, 0xffffffffbfffffff, x6, 856, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfdffffffffffffff, 0xfffffffffffffeff, x6, 864, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000004000
TEST_RR_OP(or, x12, x10, x11, 0xfbffffffffffffff, 0xfbffffffffffffff, 0x0000000000004000, x6, 872, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xfffffffffffffffa
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xf7ffffffffffffff, 0xfffffffffffffffa, x6, 880, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xefffffffffffffff, 0xffffffffffffefff, x6, 888, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xbfffffffffffffff, 0xffffbfffffffffff, x6, 896, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xffffefffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0x5555555555555555, 0xffffefffffffffff, x6, 904, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000008000000
TEST_RR_OP(or, x12, x10, x11, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 0x0000000008000000, x6, 912, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(or, x12, x10, x11, 0xfdffffffffffffff, 0xfdffffffffffffff, 0x0000000000000002, x6, 920, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000004
TEST_RR_OP(or, x12, x10, x11, 0x40004, 0x0000000000040000, 0x0000000000000004, x6, 928, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000010
TEST_RR_OP(or, x12, x10, x11, 0x200010, 0x0000000000200000, 0x0000000000000010, x6, 936, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000020
TEST_RR_OP(or, x12, x10, x11, 0xffffffffefffffff, 0xffffffffefffffff, 0x0000000000000020, x6, 944, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0x0000000000000080
TEST_RR_OP(or, x12, x10, x11, 0xc0, 0x0000000000000040, 0x0000000000000080, x6, 952, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000100
TEST_RR_OP(or, x12, x10, x11, 0x20000000000100, 0x0020000000000000, 0x0000000000000100, x6, 960, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000400
TEST_RR_OP(or, x12, x10, x11, 0xfffffff7ffffffff, 0xfffffff7ffffffff, 0x0000000000000400, x6, 968, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000800
TEST_RR_OP(or, x12, x10, x11, 0x2000000000000800, 0x2000000000000000, 0x0000000000000800, x6, 976, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0x0000000000001000
TEST_RR_OP(or, x12, x10, x11, 0x1100, 0x0000000000000100, 0x0000000000001000, x6, 984, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000002000
TEST_RR_OP(or, x12, x10, x11, 0x400000000002000, 0x0400000000000000, 0x0000000000002000, x6, 992, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000010000
TEST_RR_OP(or, x12, x10, x11, 0xefffffffffffffff, 0xefffffffffffffff, 0x0000000000010000, x6, 1000, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000040000
TEST_RR_OP(or, x12, x10, x11, 0xfffffdffffffffff, 0xfffffdffffffffff, 0x0000000000040000, x6, 1008, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0x0000000000800000
TEST_RR_OP(or, x12, x10, x11, 0x800100, 0x0000000000000100, 0x0000000000800000, x6, 1016, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000001000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffdff, 0xfffffffffffffdff, 0x0000000001000000, x6, 1024, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000020000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffdf, 0xffffffffffffffdf, 0x0000000020000000, x6, 1032, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000040000000
TEST_RR_OP(or, x12, x10, x11, 0xefffffffffffffff, 0xefffffffffffffff, 0x0000000040000000, x6, 1040, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000100000000
TEST_RR_OP(or, x12, x10, x11, 0x300000000, 0x0000000200000000, 0x0000000100000000, x6, 1048, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000002000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffefff, 0xffffffffffffefff, 0x0000002000000000, x6, 1056, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000010000000000
TEST_RR_OP(or, x12, x10, x11, 0x10010000000000, 0x0010000000000000, 0x0000010000000000, x6, 1064, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x0000020000000000
TEST_RR_OP(or, x12, x10, x11, 0x20000000080, 0x0000000000000080, 0x0000020000000000, x6, 1072, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0004000000000000
TEST_RR_OP(or, x12, x10, x11, 0x4400000000000, 0x0000400000000000, 0x0004000000000000, x6, 1080, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0008000000000000
TEST_RR_OP(or, x12, x10, x11, 0x8008000000000, 0x0000008000000000, 0x0008000000000000, x6, 1088, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0010000000000000
TEST_RR_OP(or, x12, x10, x11, 0x10000000100000, 0x0000000000100000, 0x0010000000000000, x6, 1096, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0040000000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffefffffff, 0xffffffffefffffff, 0x0040000000000000, x6, 1104, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0080000000000000
TEST_RR_OP(or, x12, x10, x11, 0x80020000000000, 0x0000020000000000, 0x0080000000000000, x6, 1112, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0100000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffbff, 0xfffffffffffffbff, 0x0100000000000000, x6, 1120, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0800000000000000
TEST_RR_OP(or, x12, x10, x11, 0x800000000020000, 0x0000000000020000, 0x0800000000000000, x6, 1128, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x2000000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffdffff, 0xfffffffffffdffff, 0x2000000000000000, x6, 1136, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xfffffffffffffffb
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfeffffffffffffff, 0xfffffffffffffffb, x6, 1144, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffef, 0x0020000000000000, 0xffffffffffffffef, x6, 1152, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xffffffffffffffdf
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffdf, 0x0000000000004000, 0xffffffffffffffdf, x6, 1160, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffff7f, 0x0400000000000000, 0xffffffffffffff7f, x6, 1168, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffdffffffffff, 0xfffffffffffffdff, x6, 1176, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0xfffffffffffff7ff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffffff9, 0xfffffffffffff7ff, x6, 1184, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xbfffffffffffffff, 0xfffffffffffdffff, x6, 1192, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xff7fffffffffffff, 0xfffffffffff7ffff, x6, 1200, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffbffffffff, 0xffffffffff7fffff, x6, 1208, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffffffeffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffffff7f, 0xfffffffffeffffff, x6, 1216, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffffffffdffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffffffb, 0xfffffffffdffffff, x6, 1224, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0xffffffffefffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffefffffff, 0x0000000000000800, 0xffffffffefffffff, x6, 1232, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffffeffffffff, 0x0000080000000000, 0xfffffffeffffffff, x6, 1240, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffbffffffffff, 0xfffffffdffffffff, x6, 1248, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffdfffffffffffff, 0xfffffff7ffffffff, x6, 1256, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffdfffffffff, 0x0000200000000000, 0xffffffdfffffffff, x6, 1264, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffeffff, 0xffffffbfffffffff, x6, 1272, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0xfffffeffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffeffffffffff, 0x0000000000200000, 0xfffffeffffffffff, x6, 1280, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffdffffffffff, 0x0000000004000000, 0xfffffdffffffffff, x6, 1288, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xfffff7ffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffff7ffffffffff, 0x0000000000000001, 0xfffff7ffffffffff, x6, 1296, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffdfffffffffff, 0x0000020000000000, 0xffffdfffffffffff, x6, 1304, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffdffffffffff, 0xffff7fffffffffff, x6, 1312, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xfffdffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffdffffffffffff, 0x0000000000004000, 0xfffdffffffffffff, x6, 1320, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffff7fff, 0x8000000000000000, 0xffffffffffff7fff, x6, 1328, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0x7fffffffffffffff, 0xfffffffffffbffff, x6, 1336, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000002000000
TEST_RR_OP(or, x12, x10, x11, 0x2000001, 0x0000000000000001, 0x0000000002000000, x6, 1344, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x8000000000000000
TEST_RR_OP(or, x12, x10, x11, 0x8040000000000000, 0x0040000000000000, 0x8000000000000000, x6, 1352, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0x0000000400000000
TEST_RR_OP(or, x12, x10, x11, 0x400000400, 0x0000000000000400, 0x0000000400000000, x6, 1360, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0xfffbffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffbffffffffffff, 0x0000000000020000, 0xfffbffffffffffff, x6, 1368, x7)

# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000400000
TEST_RR_OP(or, x12, x10, x11, 0x600000, 0x0000000000200000, 0x0000000000400000, x6, 1376, x7)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x2_1:
    .fill 21*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 173*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
