
#This assembly file tests the subw instruction of the RISC-V I extension for the subw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",subw)

la x2,signature_x2_1

# opcode: subw ; op1:x21; op2:x12; dest:x22; op1val:0x8000000000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(subw, x22, x21, x12, 0xffffffff55555556, 0x8000000000000000, 0xaaaaaaaaaaaaaaaa, x2, 0, x24)

# opcode: subw ; op1:x14; op2:x14; dest:x14; op1val:0x0000000000000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(subw, x14, x14, x14, 0xffffffff00000001, 0x0000000000000000, 0xffffffdfffffffff, x2, 8, x24)

# opcode: subw ; op1:x7; op2:x4; dest:x4; op1val:0x7fffffffffffffff;  op2val:0x4000000000000000
TEST_RR_OP(subw, x4, x7, x4, 0xffffffff, 0x7fffffffffffffff, 0x4000000000000000, x2, 16, x24)

# opcode: subw ; op1:x18; op2:x26; dest:x18; op1val:0x0000000000000001;  op2val:0xfffffffffffff7ff
TEST_RR_OP(subw, x18, x18, x26, 0xffffffff00000802, 0x0000000000000001, 0xfffffffffffff7ff, x2, 24, x24)

# opcode: subw ; op1:x11; op2:x11; dest:x23; op1val:0x0008000000000000;  op2val:0x8000000000000000
TEST_RR_OP(subw, x23, x11, x11, 0x0, 0x0008000000000000, 0x8000000000000000, x2, 32, x24)

# opcode: subw ; op1:x20; op2:x17; dest:x16; op1val:0xfffffffffffffffe;  op2val:0x0000000000000000
TEST_RR_OP(subw, x16, x20, x17, 0xfffffffe, 0xfffffffffffffffe, 0x0000000000000000, x2, 40, x24)

# opcode: subw ; op1:x28; op2:x27; dest:x3; op1val:0xfffffffffffbffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(subw, x3, x28, x27, 0xfffffffffffc0000, 0xfffffffffffbffff, 0x7fffffffffffffff, x2, 48, x24)

# opcode: subw ; op1:x16; op2:x19; dest:x26; op1val:0xffffffffffffefff;  op2val:0x0000000000000001
TEST_RR_OP(subw, x26, x16, x19, 0xffffeffe, 0xffffffffffffefff, 0x0000000000000001, x2, 56, x24)

# opcode: subw ; op1:x1; op2:x9; dest:x0; op1val:0xfffffffff7ffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(subw, x0, x1, x9, 0x0, 0xfffffffff7ffffff, 0xfffffffff7ffffff, x2, 64, x24)

# opcode: subw ; op1:x12; op2:x29; dest:x15; op1val:0x0000000000000002;  op2val:0x0000000000000020
TEST_RR_OP(subw, x15, x12, x29, 0xffffffffffffffe2, 0x0000000000000002, 0x0000000000000020, x2, 72, x24)

# opcode: subw ; op1:x4; op2:x21; dest:x5; op1val:0x0000000000000004;  op2val:0x0000000000000080
TEST_RR_OP(subw, x5, x4, x21, 0xffffffffffffff84, 0x0000000000000004, 0x0000000000000080, x2, 80, x24)

# opcode: subw ; op1:x5; op2:x8; dest:x6; op1val:0x0000000000000008;  op2val:0x0000000000000006
TEST_RR_OP(subw, x6, x5, x8, 0x2, 0x0000000000000008, 0x0000000000000006, x2, 88, x24)

# opcode: subw ; op1:x30; op2:x0; dest:x19; op1val:0x0000000000000010;  op2val:0xfffbffffffffffff
TEST_RR_OP(subw, x19, x30, x0, 0xffffffff00000011, 0x0000000000000010, 0xfffbffffffffffff, x2, 96, x24)

# opcode: subw ; op1:x25; op2:x10; dest:x13; op1val:0x0000000000000020;  op2val:0xfffffffffffffdff
TEST_RR_OP(subw, x13, x25, x10, 0xffffffff00000221, 0x0000000000000020, 0xfffffffffffffdff, x2, 104, x24)
la x4,signature_x4_0

# opcode: subw ; op1:x10; op2:x2; dest:x20; op1val:0x0000000000000040;  op2val:0x0000000040000000
TEST_RR_OP(subw, x20, x10, x2, 0xffffffffc0000040, 0x0000000000000040, 0x0000000040000000, x4, 0, x14)

# opcode: subw ; op1:x31; op2:x5; dest:x10; op1val:0x0000000000000080;  op2val:0xffffffffffffffbf
TEST_RR_OP(subw, x10, x31, x5, 0xffffffff000000c1, 0x0000000000000080, 0xffffffffffffffbf, x4, 8, x14)

# opcode: subw ; op1:x0; op2:x24; dest:x11; op1val:0x0000000000000100;  op2val:0x0000000000000040
TEST_RR_OP(subw, x11, x0, x24, 0xc0, 0x0000000000000100, 0x0000000000000040, x4, 16, x14)

# opcode: subw ; op1:x2; op2:x23; dest:x30; op1val:0x0000000000000200;  op2val:0xfffdffffffffffff
TEST_RR_OP(subw, x30, x2, x23, 0xffffffff00000201, 0x0000000000000200, 0xfffdffffffffffff, x4, 24, x14)

# opcode: subw ; op1:x9; op2:x20; dest:x24; op1val:0x0000000000000400;  op2val:0x0002000000000000
TEST_RR_OP(subw, x24, x9, x20, 0x400, 0x0000000000000400, 0x0002000000000000, x4, 32, x14)

# opcode: subw ; op1:x17; op2:x28; dest:x25; op1val:0x0000000000000800;  op2val:0x0004000000000000
TEST_RR_OP(subw, x25, x17, x28, 0x800, 0x0000000000000800, 0x0004000000000000, x4, 40, x14)

# opcode: subw ; op1:x3; op2:x16; dest:x21; op1val:0x0000000000001000;  op2val:0xfffffffffffffeff
TEST_RR_OP(subw, x21, x3, x16, 0xffffffff00001101, 0x0000000000001000, 0xfffffffffffffeff, x4, 48, x14)

# opcode: subw ; op1:x27; op2:x18; dest:x12; op1val:0x0000000000002000;  op2val:0x0000020000000000
TEST_RR_OP(subw, x12, x27, x18, 0x2000, 0x0000000000002000, 0x0000020000000000, x4, 56, x14)

# opcode: subw ; op1:x23; op2:x30; dest:x8; op1val:0x0000000000004000;  op2val:0xdfffffffffffffff
TEST_RR_OP(subw, x8, x23, x30, 0xffffffff00004001, 0x0000000000004000, 0xdfffffffffffffff, x4, 64, x14)

# opcode: subw ; op1:x22; op2:x25; dest:x27; op1val:0x0000000000008000;  op2val:0xffffffffffffff7f
TEST_RR_OP(subw, x27, x22, x25, 0xffffffff00008081, 0x0000000000008000, 0xffffffffffffff7f, x4, 72, x14)

# opcode: subw ; op1:x26; op2:x3; dest:x9; op1val:0x0000000000010000;  op2val:0xfffffffffffbffff
TEST_RR_OP(subw, x9, x26, x3, 0xffffffff00050001, 0x0000000000010000, 0xfffffffffffbffff, x4, 80, x14)

# opcode: subw ; op1:x24; op2:x22; dest:x7; op1val:0x0000000000020000;  op2val:0x0000000000004000
TEST_RR_OP(subw, x7, x24, x22, 0x1c000, 0x0000000000020000, 0x0000000000004000, x4, 88, x14)

# opcode: subw ; op1:x6; op2:x7; dest:x28; op1val:0x0000000000040000;  op2val:0xffffffffffbfffff
TEST_RR_OP(subw, x28, x6, x7, 0xffffffff00440001, 0x0000000000040000, 0xffffffffffbfffff, x4, 96, x14)

# opcode: subw ; op1:x8; op2:x15; dest:x29; op1val:0x0000000000080000;  op2val:0x0000000000001000
TEST_RR_OP(subw, x29, x8, x15, 0x7f000, 0x0000000000080000, 0x0000000000001000, x4, 104, x14)

# opcode: subw ; op1:x13; op2:x31; dest:x1; op1val:0x0000000000100000;  op2val:0xfffffffffbffffff
TEST_RR_OP(subw, x1, x13, x31, 0xffffffff04100001, 0x0000000000100000, 0xfffffffffbffffff, x4, 112, x14)
la x3,signature_x3_0

# opcode: subw ; op1:x19; op2:x1; dest:x31; op1val:0x0000000000200000;  op2val:0x0000004000000000
TEST_RR_OP(subw, x31, x19, x1, 0x200000, 0x0000000000200000, 0x0000004000000000, x3, 0, x4)

# opcode: subw ; op1:x15; op2:x6; dest:x17; op1val:0x0000000000400000;  op2val:0xfffffffffffffff8
TEST_RR_OP(subw, x17, x15, x6, 0xffffffff00400008, 0x0000000000400000, 0xfffffffffffffff8, x3, 8, x4)

# opcode: subw ; op1:x29; op2:x13; dest:x2; op1val:0x0000000000800000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(subw, x2, x29, x13, 0xffffffff00800001, 0x0000000000800000, 0xf7ffffffffffffff, x3, 16, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000800
TEST_RR_OP(subw, x12, x10, x11, 0xfff800, 0x0000000001000000, 0x0000000000000800, x3, 24, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff0200000a, 0x0000000002000000, 0xfffffffffffffff6, x3, 32, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000000009
TEST_RR_OP(subw, x12, x10, x11, 0x3fffff7, 0x0000000004000000, 0x0000000000000009, x3, 40, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff08020001, 0x0000000008000000, 0xfffffffffffdffff, x3, 48, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000008000000
TEST_RR_OP(subw, x12, x10, x11, 0x8000000, 0x0000000010000000, 0x0000000008000000, x3, 56, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xffffffffffffbfff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff20004001, 0x0000000020000000, 0xffffffffffffbfff, x3, 64, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff40000003, 0x0000000040000000, 0xfffffffffffffffd, x3, 72, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000020000
TEST_RR_OP(subw, x12, x10, x11, 0x7ffe0000, 0x0000000080000000, 0x0000000000020000, x3, 80, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000008000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000008000000000, x3, 88, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0400000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000000200000000, 0x0400000000000000, x3, 96, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000010000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff0000000, 0x0000000400000000, 0x0000000010000000, x3, 104, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000010000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff0000000, 0x0000000800000000, 0x0000000010000000, x3, 112, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0001000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000001000000000, 0x0001000000000000, x3, 120, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0200000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000002000000000, 0x0200000000000000, x3, 128, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000004000000000, 0xffff7fffffffffff, x3, 136, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000008000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff8000000, 0x0000008000000000, 0x0000000008000000, x3, 144, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000008
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffff8, 0x0000010000000000, 0x0000000000000008, x3, 152, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000040000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000040000000000, x3, 160, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x1000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000040000000000, 0x1000000000000000, x3, 168, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000200000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffe00000, 0x0000080000000000, 0x0000000000200000, x3, 176, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000009, 0x0000100000000000, 0xfffffffffffffff7, x3, 184, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000200000000000, 0xfffffffbffffffff, x3, 192, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x1000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000400000000000, 0x1000000000000000, x3, 200, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000005
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffb, 0x0000800000000000, 0x0000000000000005, x3, 208, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0080000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0001000000000000, 0x0080000000000000, x3, 216, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00400001, 0x0002000000000000, 0xffffffffffbfffff, x3, 224, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xffffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0004000000000000, 0xffffffffffffffff, x3, 232, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000000000040
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffc0, 0x0010000000000000, 0x0000000000000040, x3, 240, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0040000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0020000000000000, 0x0040000000000000, x3, 248, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0040000000000000, 0xff7fffffffffffff, x3, 256, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0080000000000000, 0xfbffffffffffffff, x3, 264, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000008000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0100000000000000, 0x0000008000000000, x3, 272, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000400
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffc00, 0x0200000000000000, 0x0000000000000400, x3, 280, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000006
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffa, 0x0400000000000000, 0x0000000000000006, x3, 288, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0800000000000000, 0xfbffffffffffffff, x3, 296, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00020001, 0x1000000000000000, 0xfffffffffffdffff, x3, 304, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffffffdf
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000021, 0x2000000000000000, 0xffffffffffffffdf, x3, 312, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000004000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x4000000000000000, 0x0000004000000000, x3, 320, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000001000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffd, 0xfffffffffffffffd, 0x0000001000000000, x3, 328, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000010000000
TEST_RR_OP(subw, x12, x10, x11, 0xeffffffb, 0xfffffffffffffffb, 0x0000000010000000, x3, 336, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffffffffff7ffff
TEST_RR_OP(subw, x12, x10, x11, 0x7fff8, 0xfffffffffffffff7, 0xfffffffffff7ffff, x3, 344, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0010000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffef, 0xffffffffffffffef, 0x0010000000000000, x3, 352, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffffffffffeffff
TEST_RR_OP(subw, x12, x10, x11, 0xffe0, 0xffffffffffffffdf, 0xfffffffffffeffff, x3, 360, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfffffeffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffc0, 0xffffffffffffffbf, 0xfffffeffffffffff, x3, 368, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000006
TEST_RR_OP(subw, x12, x10, x11, 0xffffff79, 0xffffffffffffff7f, 0x0000000000000006, x3, 376, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0xfff7ffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000006, 0x0000000000000005, 0xfff7ffffffffffff, x3, 384, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffffefffffffff, 0xffefffffffffffff, x3, 392, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0xffdfffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000101, 0x0000000000000100, 0xffdfffffffffffff, x3, 400, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xffbfffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffe000, 0xffffffffffffdfff, 0xffbfffffffffffff, x3, 408, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000000800000000, 0xfeffffffffffffff, x3, 416, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xbfffffffffffffff, 0xfdffffffffffffff, x3, 424, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffff7ffffffffff, 0xefffffffffffffff, x3, 432, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0008000000000000, 0xbfffffffffffffff, x3, 440, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x5555555555555555
TEST_RR_OP(subw, x12, x10, x11, 0xaaaaaaaa, 0xffffff7fffffffff, 0x5555555555555555, x3, 448, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000008000000
TEST_RR_OP(subw, x12, x10, x11, 0xf7fffeff, 0xfffffffffffffeff, 0x0000000008000000, x3, 456, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000020000000
TEST_RR_OP(subw, x12, x10, x11, 0xdffffdff, 0xfffffffffffffdff, 0x0000000020000000, x3, 464, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xffffffffffffdfff
TEST_RR_OP(subw, x12, x10, x11, 0x1c00, 0xfffffffffffffbff, 0xffffffffffffdfff, x3, 472, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0001000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffff7ff, 0xfffffffffffff7ff, 0x0001000000000000, x3, 480, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0004000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffbfff, 0xffffffffffffbfff, 0x0004000000000000, x3, 488, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfffffdffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffff8000, 0xffffffffffff7fff, 0xfffffdffffffffff, x3, 496, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffff0000, 0xfffffffffffeffff, 0xffffffbfffffffff, x3, 504, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(subw, x12, x10, x11, 0x1ffe0000, 0xfffffffffffdffff, 0xffffffffdfffffff, x3, 512, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(subw, x12, x10, x11, 0x3ff80000, 0xfffffffffff7ffff, 0xffffffffbfffffff, x3, 520, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffff00000, 0xffffffffffefffff, 0xffffffbfffffffff, x3, 528, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xfffffffffffffff8
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffe00007, 0xffffffffffdfffff, 0xfffffffffffffff8, x3, 536, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffffffffffffffa
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffc00005, 0xffffffffffbfffff, 0xfffffffffffffffa, x3, 544, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffff800000, 0xffffffffff7fffff, 0xf7ffffffffffffff, x3, 552, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0020000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfeffffff, 0xfffffffffeffffff, 0x0020000000000000, x3, 560, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(subw, x12, x10, x11, 0x1e000000, 0xfffffffffdffffff, 0xffffffffdfffffff, x3, 568, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffc000001, 0xfffffffffbffffff, 0xfffffffffffffffe, x3, 576, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000002000000
TEST_RR_OP(subw, x12, x10, x11, 0xedffffff, 0xffffffffefffffff, 0x0000000002000000, x3, 584, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffe0080000, 0xffffffffdfffffff, 0xfffffffffff7ffff, x3, 592, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000008000
TEST_RR_OP(subw, x12, x10, x11, 0xbfff7fff, 0xffffffffbfffffff, 0x0000000000008000, x3, 600, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff80000000, 0xffffffff7fffffff, 0xff7fffffffffffff, x3, 608, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffffffeffffffff, 0xdfffffffffffffff, x3, 616, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffffffefffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffffffdffffffff, 0xffffffefffffffff, x3, 624, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000080000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffffffbffffffff, 0x0000080000000000, x3, 632, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(subw, x12, x10, x11, 0x8000000, 0xfffffff7ffffffff, 0xfffffffff7ffffff, x3, 640, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffffdfffffffff, 0xfff7ffffffffffff, x3, 648, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000200000
TEST_RR_OP(subw, x12, x10, x11, 0xffdfffff, 0xffffffbfffffffff, 0x0000000000200000, x3, 656, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(subw, x12, x10, x11, 0xffffffdf, 0xfffffeffffffffff, 0x0000000000000020, x3, 664, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffffffffff9
TEST_RR_OP(subw, x12, x10, x11, 0x6, 0xfffffdffffffffff, 0xfffffffffffffff9, x3, 672, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffffbffffffffff, 0xffff7fffffffffff, x3, 680, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xc000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffffefffffffffff, 0xc000000000000000, x3, 688, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(subw, x12, x10, x11, 0x40, 0xffffdfffffffffff, 0xffffffffffffffbf, x3, 696, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000020000
TEST_RR_OP(subw, x12, x10, x11, 0xfffdffff, 0xffffbfffffffffff, 0x0000000000020000, x3, 704, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffffffffffffff9
TEST_RR_OP(subw, x12, x10, x11, 0x6, 0xffff7fffffffffff, 0xfffffffffffffff9, x3, 712, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffeffffffffffff, 0xdfffffffffffffff, x3, 720, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(subw, x12, x10, x11, 0x800, 0xfffdffffffffffff, 0xfffffffffffff7ff, x3, 728, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(subw, x12, x10, x11, 0x1000, 0xfffbffffffffffff, 0xffffffffffffefff, x3, 736, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000002000000
TEST_RR_OP(subw, x12, x10, x11, 0xfdffffff, 0xfff7ffffffffffff, 0x0000000002000000, x3, 744, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffefffffffffffff, 0xfffffffeffffffff, x3, 752, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0002000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffdfffffffffffff, 0x0002000000000000, x3, 760, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000200000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffbfffffffffffff, 0x0000200000000000, x3, 768, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(subw, x12, x10, x11, 0x400000, 0xff7fffffffffffff, 0xffffffffffbfffff, x3, 776, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x1000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfeffffffffffffff, 0x1000000000000000, x3, 784, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xfffffffffffffbff
TEST_RR_OP(subw, x12, x10, x11, 0x400, 0xfdffffffffffffff, 0xfffffffffffffbff, x3, 792, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(subw, x12, x10, x11, 0x80, 0xfbffffffffffffff, 0xffffffffffffff7f, x3, 800, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xfffffffffffffff6
TEST_RR_OP(subw, x12, x10, x11, 0x9, 0xf7ffffffffffffff, 0xfffffffffffffff6, x3, 808, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(subw, x12, x10, x11, 0x200, 0xefffffffffffffff, 0xfffffffffffffdff, x3, 816, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffffffffffffff6
TEST_RR_OP(subw, x12, x10, x11, 0x9, 0xdfffffffffffffff, 0xfffffffffffffff6, x3, 824, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffbffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff55555556, 0x5555555555555555, 0xfffffffbffffffff, x3, 832, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0001000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xaaaaaaaa, 0xaaaaaaaaaaaaaaaa, 0x0001000000000000, x3, 840, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000002
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffe, 0x0400000000000000, 0x0000000000000002, x3, 848, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000004
TEST_RR_OP(subw, x12, x10, x11, 0xfffefffb, 0xfffffffffffeffff, 0x0000000000000004, x3, 856, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000010
TEST_RR_OP(subw, x12, x10, x11, 0xffffbfef, 0xffffffffffffbfff, 0x0000000000000010, x3, 864, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(subw, x12, x10, x11, 0xfffffeff, 0xfff7ffffffffffff, 0x0000000000000100, x3, 872, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000200
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffe00, 0x0000800000000000, 0x0000000000000200, x3, 880, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000002000
TEST_RR_OP(subw, x12, x10, x11, 0xffffdfdf, 0xffffffffffffffdf, 0x0000000000002000, x3, 888, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0000000000010000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffff0002, 0x0000000000000002, 0x0000000000010000, x3, 896, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000040000
TEST_RR_OP(subw, x12, x10, x11, 0xfffbfdff, 0xfffffffffffffdff, 0x0000000000040000, x3, 904, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000080000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffff80000, 0x0000400000000000, 0x0000000000080000, x3, 912, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0x0000000000100000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffff00000, 0xc000000000000000, 0x0000000000100000, x3, 920, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0x0000000000400000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffc00400, 0x0000000000000400, 0x0000000000400000, x3, 928, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0x0000000000800000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffff800040, 0x0000000000000040, 0x0000000000800000, x3, 936, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff8;  op2val:0x0000000001000000
TEST_RR_OP(subw, x12, x10, x11, 0xfefffff8, 0xfffffffffffffff8, 0x0000000001000000, x3, 944, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x0000000004000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffc000080, 0x0000000000000080, 0x0000000004000000, x3, 952, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0000000080000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff80000008, 0x0000000000000008, 0x0000000080000000, x3, 960, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000100000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfdffffffffffffff, 0x0000000100000000, x3, 968, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0008000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffdffffffffffff, 0x0008000000000000, x3, 976, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffdffffffffffff, 0x0100000000000000, x3, 984, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0800000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xf7ffffffffffffff, 0x0800000000000000, x3, 992, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x2000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0800000000000000, 0x2000000000000000, x3, 1000, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfffffffffffffffb
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffff0004, 0xfffffffffffeffff, 0xfffffffffffffffb, x3, 1008, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0xffffffffffffffef
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000031, 0x0000000000000020, 0xffffffffffffffef, x3, 1016, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00008001, 0x0000000100000000, 0xffffffffffff7fff, x3, 1024, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(subw, x12, x10, x11, 0x100000, 0xfffffeffffffffff, 0xffffffffffefffff, x3, 1032, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff08200001, 0x0000000008000000, 0xffffffffffdfffff, x3, 1040, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff0800000, 0xffffffffefffffff, 0xffffffffff7fffff, x3, 1048, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffffeffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff56555556, 0x5555555555555555, 0xfffffffffeffffff, x3, 1056, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(subw, x12, x10, x11, 0x2000000, 0xffdfffffffffffff, 0xfffffffffdffffff, x3, 1064, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xffffffffefffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffc, 0xfffffffffffffffb, 0xffffffffefffffff, x3, 1072, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000100000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffbff, 0xfffffffffffffbff, 0x0000100000000000, x3, 1080, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff80000001, 0x0000200000000000, 0xffffffff7fffffff, x3, 1088, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000200000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0010000000000000, 0x0000000200000000, x3, 1096, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0080000000000000, 0xfffffffdffffffff, x3, 1104, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000400000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffeffff, 0xfffffffffffeffff, 0x0000000400000000, x3, 1112, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000800000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfdffffffffffffff, 0x0000000800000000, x3, 1120, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffff800000, 0xffffffffff7fffff, 0xfffffff7ffffffff, x3, 1128, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000002000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffffefffffffffff, 0x0000002000000000, x3, 1136, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000400000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffbfff, 0xffffffffffffbfff, 0x0000400000000000, x3, 1144, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xffffff7fffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0002000000000000, 0xffffff7fffffffff, x3, 1152, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000010000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000010000000000, x3, 1160, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffffffbffffffff, 0xfffffbffffffffff, x3, 1168, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffffbffffffffff, 0xfffff7ffffffffff, x3, 1176, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0xffffefffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000201, 0x0000000000000200, 0xffffefffffffffff, x3, 1184, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xffffdfffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffe000, 0xffffffffffffdfff, 0xffffdfffffffffff, x3, 1192, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffffffffffffff, 0xffffbfffffffffff, x3, 1200, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000800000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffffeffffffffff, 0x0000800000000000, x3, 1208, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff40000001, 0x0000000040000000, 0xfffeffffffffffff, x3, 1216, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000000000000000, 0xffffffdfffffffff, x3, 1224, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x4000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0x7fffffffffffffff, 0x4000000000000000, x3, 1232, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xfffffffffffff7ff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000802, 0x0000000000000001, 0xfffffffffffff7ff, x3, 1240, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x8000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0008000000000000, 0x8000000000000000, x3, 1248, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffffffff7ffffff, 0xfffffffff7ffffff, x3, 1256, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0xfffbffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000011, 0x0000000000000010, 0xfffbffffffffffff, x3, 1264, x4)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0x0000000000000040
TEST_RR_OP(subw, x12, x10, x11, 0xc0, 0x0000000000000100, 0x0000000000000040, x3, 1272, x4)
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
    .fill 14*(XLEN/32),4,0xafacadee


signature_x4_0:
    .fill 15*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 160*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
