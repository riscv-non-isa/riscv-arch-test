
#This assembly file tests the sltu instruction of the RISC-V I extension for the sltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltu)

la x15,signature_x15_1

# opcode: sltu ; op1:x4; op2:x5; dest:x0; op1val:0x0000000000000000;  op2val:0x0000000100000000
TEST_RR_OP(sltu, x0, x4, x5, 0x1, 0x0000000000000000, 0x0000000100000000, x15, 0, x18)

# opcode: sltu ; op1:x12; op2:x12; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0000400000000000
TEST_RR_OP(sltu, x12, x12, x12, 0x0, 0xffffffffffffffff, 0x0000400000000000, x15, 8, x18)

# opcode: sltu ; op1:x13; op2:x19; dest:x19; op1val:0x0000000000000001;  op2val:0x0800000000000000
TEST_RR_OP(sltu, x19, x13, x19, 0x1, 0x0000000000000001, 0x0800000000000000, x15, 16, x18)

# opcode: sltu ; op1:x3; op2:x25; dest:x3; op1val:0xffffffbfffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sltu, x3, x3, x25, 0x0, 0xffffffbfffffffff, 0x0000000000000000, x15, 24, x18)

# opcode: sltu ; op1:x23; op2:x23; dest:x6; op1val:0xfffffffdffffffff;  op2val:0xffffffffffffffff
TEST_RR_OP(sltu, x6, x23, x23, 0x1, 0xfffffffdffffffff, 0xffffffffffffffff, x15, 32, x18)

# opcode: sltu ; op1:x2; op2:x21; dest:x1; op1val:0x000000000000000b;  op2val:0x0000000000000001
TEST_RR_OP(sltu, x1, x2, x21, 0x0, 0x000000000000000b, 0x0000000000000001, x15, 40, x18)

# opcode: sltu ; op1:x26; op2:x30; dest:x9; op1val:0xf7ffffffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sltu, x9, x26, x30, 0x0, 0xf7ffffffffffffff, 0xf7ffffffffffffff, x15, 48, x18)

# opcode: sltu ; op1:x10; op2:x24; dest:x11; op1val:0x0000000000000002;  op2val:0x0000000020000000
TEST_RR_OP(sltu, x11, x10, x24, 0x1, 0x0000000000000002, 0x0000000020000000, x15, 56, x18)

# opcode: sltu ; op1:x5; op2:x4; dest:x17; op1val:0x0000000000000004;  op2val:0xfffffffffffffffb
TEST_RR_OP(sltu, x17, x5, x4, 0x1, 0x0000000000000004, 0xfffffffffffffffb, x15, 64, x18)

# opcode: sltu ; op1:x9; op2:x27; dest:x5; op1val:0x0000000000000008;  op2val:0xfffffffbffffffff
TEST_RR_OP(sltu, x5, x9, x27, 0x1, 0x0000000000000008, 0xfffffffbffffffff, x15, 72, x18)

# opcode: sltu ; op1:x11; op2:x10; dest:x28; op1val:0x0000000000000010;  op2val:0x0000020000000000
TEST_RR_OP(sltu, x28, x11, x10, 0x1, 0x0000000000000010, 0x0000020000000000, x15, 80, x18)

# opcode: sltu ; op1:x28; op2:x22; dest:x4; op1val:0x0000000000000020;  op2val:0x0000200000000000
TEST_RR_OP(sltu, x4, x28, x22, 0x1, 0x0000000000000020, 0x0000200000000000, x15, 88, x18)

# opcode: sltu ; op1:x1; op2:x28; dest:x14; op1val:0x0000000000000040;  op2val:0x0000000000000006
TEST_RR_OP(sltu, x14, x1, x28, 0x0, 0x0000000000000040, 0x0000000000000006, x15, 96, x18)

# opcode: sltu ; op1:x14; op2:x6; dest:x25; op1val:0x0000000000000080;  op2val:0xfffffffbffffffff
TEST_RR_OP(sltu, x25, x14, x6, 0x1, 0x0000000000000080, 0xfffffffbffffffff, x15, 104, x18)

# opcode: sltu ; op1:x6; op2:x26; dest:x16; op1val:0x0000000000000100;  op2val:0x0000000000000040
TEST_RR_OP(sltu, x16, x6, x26, 0x0, 0x0000000000000100, 0x0000000000000040, x15, 112, x18)

# opcode: sltu ; op1:x7; op2:x14; dest:x8; op1val:0x0000000000000200;  op2val:0x0000000000000020
TEST_RR_OP(sltu, x8, x7, x14, 0x0, 0x0000000000000200, 0x0000000000000020, x15, 120, x18)

# opcode: sltu ; op1:x21; op2:x2; dest:x30; op1val:0x0000000000000400;  op2val:0xffffffff7fffffff
TEST_RR_OP(sltu, x30, x21, x2, 0x1, 0x0000000000000400, 0xffffffff7fffffff, x15, 128, x18)

# opcode: sltu ; op1:x24; op2:x29; dest:x2; op1val:0x0000000000000800;  op2val:0xffffffefffffffff
TEST_RR_OP(sltu, x2, x24, x29, 0x1, 0x0000000000000800, 0xffffffefffffffff, x15, 136, x18)

# opcode: sltu ; op1:x17; op2:x11; dest:x22; op1val:0x0000000000001000;  op2val:0x0000000000000007
TEST_RR_OP(sltu, x22, x17, x11, 0x0, 0x0000000000001000, 0x0000000000000007, x15, 144, x4)

# opcode: sltu ; op1:x30; op2:x0; dest:x21; op1val:0x0000000000002000;  op2val:0xbfffffffffffffff
TEST_RR_OP(sltu, x21, x30, x0, 0x1, 0x0000000000002000, 0xbfffffffffffffff, x15, 152, x4)

# opcode: sltu ; op1:x20; op2:x31; dest:x24; op1val:0x0000000000004000;  op2val:0x0000000000001000
TEST_RR_OP(sltu, x24, x20, x31, 0x0, 0x0000000000004000, 0x0000000000001000, x15, 160, x4)
la x2,signature_x2_0

# opcode: sltu ; op1:x19; op2:x9; dest:x7; op1val:0x0000000000008000;  op2val:0xfffffffffffffdff
TEST_RR_OP(sltu, x7, x19, x9, 0x1, 0x0000000000008000, 0xfffffffffffffdff, x2, 0, x4)

# opcode: sltu ; op1:x16; op2:x18; dest:x31; op1val:0x0000000000010000;  op2val:0x0000000020000000
TEST_RR_OP(sltu, x31, x16, x18, 0x1, 0x0000000000010000, 0x0000000020000000, x2, 8, x4)

# opcode: sltu ; op1:x18; op2:x13; dest:x20; op1val:0x0000000000020000;  op2val:0xfffffffbffffffff
TEST_RR_OP(sltu, x20, x18, x13, 0x1, 0x0000000000020000, 0xfffffffbffffffff, x2, 16, x4)

# opcode: sltu ; op1:x15; op2:x8; dest:x26; op1val:0x0000000000040000;  op2val:0x0000000000000100
TEST_RR_OP(sltu, x26, x15, x8, 0x0, 0x0000000000040000, 0x0000000000000100, x2, 24, x4)

# opcode: sltu ; op1:x25; op2:x15; dest:x18; op1val:0x0000000000080000;  op2val:0x0200000000000000
TEST_RR_OP(sltu, x18, x25, x15, 0x1, 0x0000000000080000, 0x0200000000000000, x2, 32, x4)

# opcode: sltu ; op1:x22; op2:x3; dest:x10; op1val:0x0000000000100000;  op2val:0xfffffffffffffdff
TEST_RR_OP(sltu, x10, x22, x3, 0x1, 0x0000000000100000, 0xfffffffffffffdff, x2, 40, x4)

# opcode: sltu ; op1:x29; op2:x1; dest:x23; op1val:0x0000000000200000;  op2val:0x0040000000000000
TEST_RR_OP(sltu, x23, x29, x1, 0x1, 0x0000000000200000, 0x0040000000000000, x2, 48, x4)

# opcode: sltu ; op1:x0; op2:x16; dest:x27; op1val:0x0000000000400000;  op2val:0x000000000000000a
TEST_RR_OP(sltu, x27, x0, x16, 0x0, 0x0000000000400000, 0x000000000000000a, x2, 56, x4)

# opcode: sltu ; op1:x27; op2:x20; dest:x15; op1val:0x0000000000800000;  op2val:0x0000000000000007
TEST_RR_OP(sltu, x15, x27, x20, 0x0, 0x0000000000800000, 0x0000000000000007, x2, 64, x4)

# opcode: sltu ; op1:x8; op2:x17; dest:x13; op1val:0x0000000001000000;  op2val:0x0000000000000004
TEST_RR_OP(sltu, x13, x8, x17, 0x0, 0x0000000001000000, 0x0000000000000004, x2, 72, x4)

# opcode: sltu ; op1:x31; op2:x7; dest:x29; op1val:0x0000000002000000;  op2val:0x000000000000000d
TEST_RR_OP(sltu, x29, x31, x7, 0x0, 0x0000000002000000, 0x000000000000000d, x2, 80, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000000002
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000004000000, 0x0000000000000002, x2, 88, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000800000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000008000000, 0x0000000000800000, x2, 96, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000800000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000010000000, 0x0000000800000000, x2, 104, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000004
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000020000000, 0x0000000000000004, x2, 112, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000002000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000040000000, 0x0000002000000000, x2, 120, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xefffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000080000000, 0xefffffffffffffff, x2, 128, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000100000000, 0xfffffffffffff7ff, x2, 136, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000080000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000200000000, 0x0000080000000000, x2, 144, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xffffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000400000000, 0xffffffffffffffff, x2, 152, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000100000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000800000000, 0x0000000000100000, x2, 160, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000006
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000000000000006, x2, 168, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000001000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000002000000000, 0x0000001000000000, x2, 176, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000004000000000, 0xfffffffdffffffff, x2, 184, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000008000000000, 0xfff7ffffffffffff, x2, 192, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000800000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000800000000, x2, 200, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x8000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000020000000000, 0x8000000000000000, x2, 208, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000040000000000, 0xffffefffffffffff, x2, 216, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000080000000000, 0xfffffffffffffffb, x2, 224, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000007
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000100000000000, 0x0000000000000007, x2, 232, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000200000000000, 0xffffffffbfffffff, x2, 240, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000400000000000, 0xfffffffffffffff7, x2, 248, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000800000000000, 0xfffffffffffffffd, x2, 256, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000002
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0001000000000000, 0x0000000000000002, x2, 264, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000005
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0002000000000000, 0x0000000000000005, x2, 272, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0004000000000000, 0x7fffffffffffffff, x2, 280, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000200000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0008000000000000, 0x0000000000200000, x2, 288, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0010000000000000, 0xfffffffff7ffffff, x2, 296, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffffffffff7fffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0020000000000000, 0xffffffffff7fffff, x2, 304, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0040000000000000, 0xffffffff7fffffff, x2, 312, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0080000000000000, 0xfffffffffffffffb, x2, 320, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0100000000000000, 0x7fffffffffffffff, x2, 328, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0200000000000000, 0xffffffbfffffffff, x2, 336, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0400000000000000, 0xfffffeffffffffff, x2, 344, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0800000000000000, 0xfeffffffffffffff, x2, 352, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x1000000000000000, 0xffffffffffff7fff, x2, 360, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000004000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x2000000000000000, 0x0000000000004000, x2, 368, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0200000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x4000000000000000, 0x0200000000000000, x2, 376, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000000000009
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x8000000000000000, 0x0000000000000009, x2, 384, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0010000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffe, 0x0010000000000000, x2, 392, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffffffffffffffe
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffffffffffd, 0xfffffffffffffffe, x2, 400, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffffffffffeffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffb, 0xfffffffffffeffff, x2, 408, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x000000000000000f
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffff7, 0x000000000000000f, x2, 416, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xefffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffef, 0xefffffffffffffff, x2, 424, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0040000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffdf, 0x0040000000000000, x2, 432, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xffffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffffffffffbf, 0xffffffffffffffff, x2, 440, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000200000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffff7f, 0x0000000200000000, x2, 448, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfffffffffffdffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffeff, 0xfffffffffffdffff, x2, 456, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0008000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffdff, 0x0008000000000000, x2, 464, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffbff, 0xf7ffffffffffffff, x2, 472, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xfffffffeffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffff7ff, 0xfffffffeffffffff, x2, 480, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffffffffefff, 0xffffffffffffffff, x2, 488, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xf7ffffffffffffff, 0xff7fffffffffffff, x2, 496, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0200000000000000, 0xfdffffffffffffff, x2, 504, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0100000000000000, 0xfbffffffffffffff, x2, 512, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffefffffffffffff, 0xdfffffffffffffff, x2, 520, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x5555555555555555
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000010000000000, 0x5555555555555555, x2, 528, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000004000, 0xaaaaaaaaaaaaaaaa, x2, 536, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xefffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffdfff, 0xefffffffffffffff, x2, 544, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xffffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffffffffbfff, 0xffffffffffffffff, x2, 552, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xffffff7fffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffff7fff, 0xffffff7fffffffff, x2, 560, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffeffff, 0xffffffdfffffffff, x2, 568, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000400000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffdffff, 0x0000400000000000, x2, 576, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000001000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffbffff, 0x0000000000001000, x2, 584, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0040000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffff7ffff, 0x0040000000000000, x2, 592, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0100000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffefffff, 0x0100000000000000, x2, 600, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffffffdfffff, 0xfffffffffffdffff, x2, 608, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000020000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffbfffff, 0x0000020000000000, x2, 616, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffff7fffff, 0xfffffeffffffffff, x2, 624, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffeffffff, 0xefffffffffffffff, x2, 632, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffdffffff, 0xffffdfffffffffff, x2, 640, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffbffffff, 0xffffffffefffffff, x2, 648, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffff7ffffff, 0xfffffffffff7ffff, x2, 656, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000020000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffefffffff, 0x0000020000000000, x2, 664, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000001000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffdfffffff, 0x0000000000001000, x2, 672, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000020000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffbfffffff, 0x0000000020000000, x2, 680, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffff7fffffff, 0xffffffff7fffffff, x2, 688, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000800000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffeffffffff, 0x0000000800000000, x2, 696, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffbffffffff, 0x7fffffffffffffff, x2, 704, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0100000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffff7ffffffff, 0x0100000000000000, x2, 712, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffefffffffff, 0x000000000000000b, x2, 720, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000080000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffdfffffffff, 0x0000080000000000, x2, 728, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000800000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffff7fffffffff, 0x0000000000800000, x2, 736, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffeffffffffff, 0xffffffffffffffdf, x2, 744, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffdffffffffff, 0x000000000000000c, x2, 752, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffbffffffffff, 0xff7fffffffffffff, x2, 760, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffff7ffffffffff, 0xff7fffffffffffff, x2, 768, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000400000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffefffffffffff, 0x0000400000000000, x2, 776, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000100000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffdfffffffffff, 0x0000100000000000, x2, 784, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffbfffffffffff, 0xfffffffffffff7ff, x2, 792, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000400
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffff7fffffffffff, 0x0000000000000400, x2, 800, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffeffffffffffff, 0xfffdffffffffffff, x2, 808, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000400000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffdffffffffffff, 0x0000400000000000, x2, 816, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffbffffffffffff, 0xfeffffffffffffff, x2, 824, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfff7ffffffffffff, 0xfff7ffffffffffff, x2, 832, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffdfffffffffffff, 0xffffffffbfffffff, x2, 840, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffbfffffffffffff, 0xfeffffffffffffff, x2, 848, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000800000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xff7fffffffffffff, 0x0000800000000000, x2, 856, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfeffffffffffffff, 0x0000000000000009, x2, 864, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfdffffffffffffff, 0x000000000000000f, x2, 872, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfbffffffffffffff, 0xffffffffffff7fff, x2, 880, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xefffffffffffffff, 0x000000000000000a, x2, 888, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xdfffffffffffffff, 0xffffffffff7fffff, x2, 896, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xbfffffffffffffff, 0xffffffffffffff7f, x2, 904, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000000001000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x7fffffffffffffff, 0x0000000000001000, x2, 912, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffff7ffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x5555555555555555, 0xfffffffff7ffffff, x2, 920, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffffdfffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xaaaaaaaaaaaaaaaa, 0xffffdfffffffffff, x2, 928, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000008
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffd, 0x0000000000000008, x2, 936, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfeffffffffffffff, 0x0000000000000010, x2, 944, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000000080
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000080000000000, 0x0000000000000080, x2, 952, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000200
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x4000000000000000, 0x0000000000000200, x2, 960, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000800
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffff7fffffffffff, 0x0000000000000800, x2, 968, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000002000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffff7ffff, 0x0000000000002000, x2, 976, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000008000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000008000, x2, 984, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000010000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffff7ffff, 0x0000000000010000, x2, 992, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000020000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000020000, x2, 1000, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000040000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffdffffffffff, 0x0000000000040000, x2, 1008, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x000000000000000f;  op2val:0x0000000000080000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x000000000000000f, 0x0000000000080000, x2, 1016, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000400000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffeffffffffffff, 0x0000000000400000, x2, 1024, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000001000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000010000000, 0x0000000001000000, x2, 1032, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000002000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffdfffffff, 0x0000000002000000, x2, 1040, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000004000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffeffffffff, 0x0000000004000000, x2, 1048, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000008000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000000008000000, x2, 1056, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000010000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffdfffffffffffff, 0x0000000010000000, x2, 1064, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000040000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000001, 0x0000000040000000, x2, 1072, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000080000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffbfff, 0x0000000080000000, x2, 1080, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000400000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000200000, 0x0000000400000000, x2, 1088, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x000000000000000e;  op2val:0x0000004000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x000000000000000e, 0x0000004000000000, x2, 1096, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0000008000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000002, 0x0000008000000000, x2, 1104, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000010000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000002000000000, 0x0000010000000000, x2, 1112, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x0000040000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000080000, 0x0000040000000000, x2, 1120, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0001000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffbf, 0x0001000000000000, x2, 1128, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0002000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffff7ffff, 0x0002000000000000, x2, 1136, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0004000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000100000, 0x0004000000000000, x2, 1144, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0020000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000004000000000, 0x0020000000000000, x2, 1152, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0080000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffdfffff, 0x0080000000000000, x2, 1160, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0400000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffdfffffffff, 0x0400000000000000, x2, 1168, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x1000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xbfffffffffffffff, 0x1000000000000000, x2, 1176, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x2000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffdffffffffffff, 0x2000000000000000, x2, 1184, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x4000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffd, 0x4000000000000000, x2, 1192, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xffffffffffffffef
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffbffffffff, 0xffffffffffffffef, x2, 1200, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xffffffffffffffbf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0100000000000000, 0xffffffffffffffbf, x2, 1208, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffffbffffff, 0xfffffffffffffeff, x2, 1216, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000010000000000, 0xfffffffffffffbff, x2, 1224, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xffffffffffffefff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0800000000000000, 0xffffffffffffefff, x2, 1232, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0xffffffffffffdfff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000040, 0xffffffffffffdfff, x2, 1240, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffffff7ffff, 0xffffffffffffbfff, x2, 1248, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000200000000000, 0xfffffffffffbffff, x2, 1256, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffbffffffffff, 0xffffffffffefffff, x2, 1264, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfff7ffffffffffff, 0xffffffffffdfffff, x2, 1272, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xffffffffffbfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffeff, 0xffffffffffbfffff, x2, 1280, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffff7ffffffff, 0xfffffffffeffffff, x2, 1288, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0xfffffffffdffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000003, 0xfffffffffdffffff, x2, 1296, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffbffffffffff, 0xfffffffffbffffff, x2, 1304, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffffdfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000100000000000, 0xffffffffdfffffff, x2, 1312, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000080000000000, 0xfffffff7ffffffff, x2, 1320, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0004000000000000, 0xfffffdffffffffff, x2, 1328, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xfffffbffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffef, 0xfffffbffffffffff, x2, 1336, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xf7ffffffffffffff, 0xfffff7ffffffffff, x2, 1344, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0xffffbfffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000006, 0xffffbfffffffffff, x2, 1352, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0xffff7fffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000004, 0xffff7fffffffffff, x2, 1360, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffbffffff, 0xfffeffffffffffff, x2, 1368, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xfffbffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000008, 0xfffbffffffffffff, x2, 1376, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xbfffffffffffffff, 0xffefffffffffffff, x2, 1384, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xffdfffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000004000, 0xffdfffffffffffff, x2, 1392, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x7fffffffffffffff, 0xffbfffffffffffff, x2, 1400, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000000100000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000000, 0x0000000100000000, x2, 1408, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0000400000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffff, 0x0000400000000000, x2, 1416, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0800000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000001, 0x0800000000000000, x2, 1424, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffbfffffffff, 0x0000000000000000, x2, 1432, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffdffffffff, 0xffffffffffffffff, x2, 1440, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0xbfffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000002000, 0xbfffffffffffffff, x2, 1448, x4)

# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x000000000000000a
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000000400000, 0x000000000000000a, x2, 1456, x4)
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
    .fill 21*(XLEN/32),4,0xafacadee


signature_x2_0:
    .fill 183*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
