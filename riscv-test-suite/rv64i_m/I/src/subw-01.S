
#This assembly file tests the subw instruction of the RISC-V I extension for the subw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",subw)

la x10,signature_x10_1

# opcode: subw ; op1:x23; op2:x6; dest:x23; op1val:0x8000000000000000;  op2val:0x2000000000000000
TEST_RR_OP(subw, x23, x23, x6, 0x0, 0x8000000000000000, 0x2000000000000000, x10, 0, x15)

# opcode: subw ; op1:x24; op2:x30; dest:x7; op1val:0x0000000000000000;  op2val:0xffffffffffffffbf
TEST_RR_OP(subw, x7, x24, x30, 0xffffffff00000041, 0x0000000000000000, 0xffffffffffffffbf, x10, 8, x15)

# opcode: subw ; op1:x31; op2:x31; dest:x8; op1val:0x7fffffffffffffff;  op2val:0x0000000001000000
TEST_RR_OP(subw, x8, x31, x31, 0xfeffffff, 0x7fffffffffffffff, 0x0000000001000000, x10, 16, x15)

# opcode: subw ; op1:x19; op2:x1; dest:x1; op1val:0x0000000000000001;  op2val:0x0000000000000003
TEST_RR_OP(subw, x1, x19, x1, 0xfffffffffffffffe, 0x0000000000000001, 0x0000000000000003, x10, 24, x15)

# opcode: subw ; op1:x16; op2:x16; dest:x16; op1val:0xfffffffffff7ffff;  op2val:0x8000000000000000
TEST_RR_OP(subw, x16, x16, x16, 0xfff7ffff, 0xfffffffffff7ffff, 0x8000000000000000, x10, 32, x15)

# opcode: subw ; op1:x22; op2:x23; dest:x13; op1val:0x0000000000020000;  op2val:0x0000000000000000
TEST_RR_OP(subw, x13, x22, x23, 0x20000, 0x0000000000020000, 0x0000000000000000, x10, 40, x15)

# opcode: subw ; op1:x25; op2:x26; dest:x14; op1val:0xffffefffffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(subw, x14, x25, x26, 0x0, 0xffffefffffffffff, 0x7fffffffffffffff, x10, 48, x15)

# opcode: subw ; op1:x28; op2:x22; dest:x0; op1val:0x0000000000000020;  op2val:0x0000000000000001
TEST_RR_OP(subw, x0, x28, x22, 0x1f, 0x0000000000000020, 0x0000000000000001, x10, 56, x15)

# opcode: subw ; op1:x27; op2:x3; dest:x25; op1val:0x0400000000000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(subw, x25, x27, x3, 0xffffffff00000001, 0x0400000000000000, 0xffdfffffffffffff, x10, 64, x15)

# opcode: subw ; op1:x29; op2:x24; dest:x3; op1val:0xffffefffffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(subw, x3, x29, x24, 0x0, 0xffffefffffffffff, 0xffffefffffffffff, x10, 72, x15)

# opcode: subw ; op1:x12; op2:x28; dest:x17; op1val:0x0000000000000002;  op2val:0x0002000000000000
TEST_RR_OP(subw, x17, x12, x28, 0x2, 0x0000000000000002, 0x0002000000000000, x10, 80, x15)

# opcode: subw ; op1:x7; op2:x12; dest:x26; op1val:0x0000000000000004;  op2val:0xfffeffffffffffff
TEST_RR_OP(subw, x26, x7, x12, 0xffffffff00000005, 0x0000000000000004, 0xfffeffffffffffff, x10, 88, x15)

# opcode: subw ; op1:x5; op2:x4; dest:x20; op1val:0x0000000000000008;  op2val:0xffffffffffffffef
TEST_RR_OP(subw, x20, x5, x4, 0xffffffff00000019, 0x0000000000000008, 0xffffffffffffffef, x10, 96, x15)

# opcode: subw ; op1:x3; op2:x9; dest:x2; op1val:0x0000000000000010;  op2val:0xfbffffffffffffff
TEST_RR_OP(subw, x2, x3, x9, 0xffffffff00000011, 0x0000000000000010, 0xfbffffffffffffff, x10, 104, x15)

# opcode: subw ; op1:x30; op2:x11; dest:x9; op1val:0x0000000000000040;  op2val:0xffffffffffffbfff
TEST_RR_OP(subw, x9, x30, x11, 0xffffffff00004041, 0x0000000000000040, 0xffffffffffffbfff, x10, 112, x15)

# opcode: subw ; op1:x6; op2:x18; dest:x28; op1val:0x0000000000000080;  op2val:0x0000040000000000
TEST_RR_OP(subw, x28, x6, x18, 0x80, 0x0000000000000080, 0x0000040000000000, x10, 120, x16)
la x3,signature_x3_0

# opcode: subw ; op1:x18; op2:x8; dest:x12; op1val:0x0000000000000100;  op2val:0x0000000000000008
TEST_RR_OP(subw, x12, x18, x8, 0xf8, 0x0000000000000100, 0x0000000000000008, x3, 0, x16)

# opcode: subw ; op1:x10; op2:x27; dest:x21; op1val:0x0000000000000200;  op2val:0x0000000000000080
TEST_RR_OP(subw, x21, x10, x27, 0x180, 0x0000000000000200, 0x0000000000000080, x3, 8, x16)

# opcode: subw ; op1:x2; op2:x21; dest:x18; op1val:0x0000000000000400;  op2val:0xffff7fffffffffff
TEST_RR_OP(subw, x18, x2, x21, 0xffffffff00000401, 0x0000000000000400, 0xffff7fffffffffff, x3, 16, x16)

# opcode: subw ; op1:x13; op2:x14; dest:x30; op1val:0x0000000000000800;  op2val:0x0000004000000000
TEST_RR_OP(subw, x30, x13, x14, 0x800, 0x0000000000000800, 0x0000004000000000, x3, 24, x16)

# opcode: subw ; op1:x9; op2:x0; dest:x15; op1val:0x0000000000001000;  op2val:0x0000000001000000
TEST_RR_OP(subw, x15, x9, x0, 0xffffffffff001000, 0x0000000000001000, 0x0000000001000000, x3, 32, x16)

# opcode: subw ; op1:x17; op2:x7; dest:x19; op1val:0x0000000000002000;  op2val:0xfffffeffffffffff
TEST_RR_OP(subw, x19, x17, x7, 0xffffffff00002001, 0x0000000000002000, 0xfffffeffffffffff, x3, 40, x16)

# opcode: subw ; op1:x8; op2:x13; dest:x29; op1val:0x0000000000004000;  op2val:0x0000000004000000
TEST_RR_OP(subw, x29, x8, x13, 0xfffffffffc004000, 0x0000000000004000, 0x0000000004000000, x3, 48, x16)

# opcode: subw ; op1:x1; op2:x5; dest:x4; op1val:0x0000000000008000;  op2val:0x5555555555555555
TEST_RR_OP(subw, x4, x1, x5, 0xffffffffaaab2aab, 0x0000000000008000, 0x5555555555555555, x3, 56, x16)

# opcode: subw ; op1:x11; op2:x19; dest:x10; op1val:0x0000000000010000;  op2val:0x0000008000000000
TEST_RR_OP(subw, x10, x11, x19, 0x10000, 0x0000000000010000, 0x0000008000000000, x3, 64, x16)

# opcode: subw ; op1:x20; op2:x17; dest:x5; op1val:0x0000000000040000;  op2val:0x0008000000000000
TEST_RR_OP(subw, x5, x20, x17, 0x40000, 0x0000000000040000, 0x0008000000000000, x3, 72, x16)

# opcode: subw ; op1:x4; op2:x15; dest:x24; op1val:0x0000000000080000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(subw, x24, x4, x15, 0xffffffff00080801, 0x0000000000080000, 0xfffffffffffff7ff, x3, 80, x16)

# opcode: subw ; op1:x0; op2:x29; dest:x22; op1val:0x0000000000100000;  op2val:0x2000000000000000
TEST_RR_OP(subw, x22, x0, x29, 0x100000, 0x0000000000100000, 0x2000000000000000, x3, 88, x16)

# opcode: subw ; op1:x21; op2:x2; dest:x31; op1val:0x0000000000200000;  op2val:0xffffffdfffffffff
TEST_RR_OP(subw, x31, x21, x2, 0xffffffff00200001, 0x0000000000200000, 0xffffffdfffffffff, x3, 96, x16)

# opcode: subw ; op1:x14; op2:x10; dest:x6; op1val:0x0000000000400000;  op2val:0xfffffffffffffbff
TEST_RR_OP(subw, x6, x14, x10, 0xffffffff00400401, 0x0000000000400000, 0xfffffffffffffbff, x3, 104, x16)

# opcode: subw ; op1:x26; op2:x20; dest:x11; op1val:0x0000000000800000;  op2val:0x0000001000000000
TEST_RR_OP(subw, x11, x26, x20, 0x800000, 0x0000000000800000, 0x0000001000000000, x3, 112, x16)

# opcode: subw ; op1:x15; op2:x25; dest:x27; op1val:0x0000000001000000;  op2val:0x0080000000000000
TEST_RR_OP(subw, x27, x15, x25, 0x1000000, 0x0000000001000000, 0x0080000000000000, x3, 120, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000001000000
TEST_RR_OP(subw, x12, x10, x11, 0x1000000, 0x0000000002000000, 0x0000000001000000, x3, 128, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff04040001, 0x0000000004000000, 0xfffffffffffbffff, x3, 136, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff08000001, 0x0000000008000000, 0xfffffffbffffffff, x3, 144, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff10000101, 0x0000000010000000, 0xfffffffffffffeff, x3, 152, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff28000001, 0x0000000020000000, 0xfffffffff7ffffff, x3, 160, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff40000001, 0x0000000040000000, 0xfffffdffffffffff, x3, 168, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000005
TEST_RR_OP(subw, x12, x10, x11, 0x7ffffffb, 0x0000000080000000, 0x0000000000000005, x3, 176, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000200000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000200000000000, x3, 184, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000040000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffc0000, 0x0000000200000000, 0x0000000000040000, x3, 192, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00400001, 0x0000000400000000, 0xffffffffffbfffff, x3, 200, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000004000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffc000000, 0x0000000800000000, 0x0000000004000000, x3, 208, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000004000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000004000000000, x3, 216, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x8000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000002000000000, 0x8000000000000000, x3, 224, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffffffeffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00010001, 0x0000004000000000, 0xfffffffffffeffff, x3, 232, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000005
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffb, 0x0000008000000000, 0x0000000000000005, x3, 240, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000010000000000, 0xfffeffffffffffff, x3, 248, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000081, 0x0000020000000000, 0xffffffffffffff7f, x3, 256, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xfffffffffffffffe
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000002, 0x0000040000000000, 0xfffffffffffffffe, x3, 264, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x5555555555555555
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffaaaaaaab, 0x0000080000000000, 0x5555555555555555, x3, 272, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000100
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffff00, 0x0000100000000000, 0x0000000000000100, x3, 280, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000009, 0x0000200000000000, 0xfffffffffffffff7, x3, 288, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000400000000000, 0xfffffffdffffffff, x3, 296, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000001000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffff000, 0x0000800000000000, 0x0000000000001000, x3, 304, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00400001, 0x0001000000000000, 0xffffffffffbfffff, x3, 312, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0002000000000000, 0xfffffeffffffffff, x3, 320, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000020
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffe0, 0x0004000000000000, 0x0000000000000020, x3, 328, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000200000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffe00000, 0x0008000000000000, 0x0000000000200000, x3, 336, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0010000000000000, 0xfffffff7ffffffff, x3, 344, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000020
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffe0, 0x0020000000000000, 0x0000000000000020, x3, 352, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0040000000000000, 0xfffff7ffffffffff, x3, 360, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000020000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffe0000, 0x0080000000000000, 0x0000000000020000, x3, 368, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000800
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffff800, 0x0100000000000000, 0x0000000000000800, x3, 376, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xffffffefffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0200000000000000, 0xffffffefffffffff, x3, 384, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0800000000000000, 0x7fffffffffffffff, x3, 392, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000040000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffc0000, 0x1000000000000000, 0x0000000000040000, x3, 400, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000001000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffff000000, 0x2000000000000000, 0x0000000001000000, x3, 408, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x4000000000000000, 0xffffffbfffffffff, x3, 416, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xffffdfffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffffffe, 0xffffdfffffffffff, x3, 424, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffffff7ffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffe, 0xfffffffffffffffd, 0xfffffff7ffffffff, x3, 432, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0010000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffb, 0xfffffffffffffffb, 0x0010000000000000, x3, 440, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000020000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffff7, 0xfffffffffffffff7, 0x0000020000000000, x3, 448, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xbfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffff0, 0xffffffffffffffef, 0xbfffffffffffffff, x3, 456, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffffdffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffe0, 0xffffffffffffffdf, 0xfffffdffffffffff, x3, 464, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfffffffffffffffa
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffc5, 0xffffffffffffffbf, 0xfffffffffffffffa, x3, 472, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffffbffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffff80, 0xffffffffffffff7f, 0xfffffffbffffffff, x3, 480, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000008000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffeff, 0xfffffffffffffeff, 0x0000008000000000, x3, 488, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xffffffffdfffffff
TEST_RR_OP(subw, x12, x10, x11, 0x1ffffe00, 0xfffffffffffffdff, 0xffffffffdfffffff, x3, 496, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffffffdffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffc00, 0xfffffffffffffbff, 0xfffffffdffffffff, x3, 504, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0xfffbffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00001001, 0x0000000000001000, 0xfffbffffffffffff, x3, 512, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffffdfffffffff, 0xfff7ffffffffffff, x3, 520, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xffefffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00080001, 0x0000000000080000, 0xffefffffffffffff, x3, 528, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xffbfffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffc, 0xfffffffffffffffb, 0xffbfffffffffffff, x3, 536, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0xff7fffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000011, 0x0000000000000010, 0xff7fffffffffffff, x3, 544, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff0000000, 0xffffffffefffffff, 0xfeffffffffffffff, x3, 552, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0200000000000000, 0xfdffffffffffffff, x3, 560, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0020000000000000, 0xf7ffffffffffffff, x3, 568, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xefffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffe0, 0xffffffffffffffdf, 0xefffffffffffffff, x3, 576, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xdfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000081, 0x0000000000000080, 0xdfffffffffffffff, x3, 584, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff555555d6, 0x0000000000000080, 0xaaaaaaaaaaaaaaaa, x3, 592, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x4000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffff7ff, 0xfffffffffffff7ff, 0x4000000000000000, x3, 600, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000010
TEST_RR_OP(subw, x12, x10, x11, 0xffffefef, 0xffffffffffffefff, 0x0000000000000010, x3, 608, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000040000000
TEST_RR_OP(subw, x12, x10, x11, 0xbfffdfff, 0xffffffffffffdfff, 0x0000000040000000, x3, 616, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0400000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffbfff, 0xffffffffffffbfff, 0x0400000000000000, x3, 624, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfbffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffff8000, 0xffffffffffff7fff, 0xfbffffffffffffff, x3, 632, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffff0000, 0xfffffffffffeffff, 0xfffffbffffffffff, x3, 640, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffe0000, 0xfffffffffffdffff, 0x7fffffffffffffff, x3, 648, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffc0200, 0xfffffffffffbffff, 0xfffffffffffffdff, x3, 656, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000008000
TEST_RR_OP(subw, x12, x10, x11, 0xffef7fff, 0xffffffffffefffff, 0x0000000000008000, x3, 664, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x8000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffdfffff, 0xffffffffffdfffff, 0x8000000000000000, x3, 672, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0200000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffbfffff, 0xffffffffffbfffff, 0x0200000000000000, x3, 680, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffff800000, 0xffffffffff7fffff, 0xfffffbffffffffff, x3, 688, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffff000000, 0xfffffffffeffffff, 0xfffffffeffffffff, x3, 696, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000010000000
TEST_RR_OP(subw, x12, x10, x11, 0xedffffff, 0xfffffffffdffffff, 0x0000000010000000, x3, 704, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0001000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfbffffff, 0xfffffffffbffffff, 0x0001000000000000, x3, 712, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000080000000
TEST_RR_OP(subw, x12, x10, x11, 0x77ffffff, 0xfffffffff7ffffff, 0x0000000080000000, x3, 720, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000200000
TEST_RR_OP(subw, x12, x10, x11, 0xdfdfffff, 0xffffffffdfffffff, 0x0000000000200000, x3, 728, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x4000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xbfffffff, 0xffffffffbfffffff, 0x4000000000000000, x3, 736, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000008
TEST_RR_OP(subw, x12, x10, x11, 0x7ffffff7, 0xffffffff7fffffff, 0x0000000000000008, x3, 744, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x8000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffffffeffffffff, 0x8000000000000000, x3, 752, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000020
TEST_RR_OP(subw, x12, x10, x11, 0xffffffdf, 0xfffffffdffffffff, 0x0000000000000020, x3, 760, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xc000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffffffbffffffff, 0xc000000000000000, x3, 768, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0008000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffffff7ffffffff, 0x0008000000000000, x3, 776, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffffefffffffff, 0xffffffdfffffffff, x3, 784, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xfffffffffffffffc
TEST_RR_OP(subw, x12, x10, x11, 0x3, 0xffffffbfffffffff, 0xfffffffffffffffc, x3, 792, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0001000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffffff7fffffffff, 0x0001000000000000, x3, 800, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000004000000
TEST_RR_OP(subw, x12, x10, x11, 0xfbffffff, 0xfffffeffffffffff, 0x0000000004000000, x3, 808, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(subw, x12, x10, x11, 0x2000, 0xfffffdffffffffff, 0xffffffffffffdfff, x3, 816, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000400000
TEST_RR_OP(subw, x12, x10, x11, 0xffbfffff, 0xfffffbffffffffff, 0x0000000000400000, x3, 824, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffff7ffffffffff, 0x0000010000000000, x3, 832, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffdfffffffffff, 0xfbffffffffffffff, x3, 840, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffbfffffffffff, 0xfffffffdffffffff, x3, 848, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(subw, x12, x10, x11, 0x4000, 0xffff7fffffffffff, 0xffffffffffffbfff, x3, 856, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000010000000
TEST_RR_OP(subw, x12, x10, x11, 0xefffffff, 0xfffeffffffffffff, 0x0000000010000000, x3, 864, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(subw, x12, x10, x11, 0x100, 0xfffdffffffffffff, 0xfffffffffffffeff, x3, 872, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfff7ffffffffffff, 0xdfffffffffffffff, x3, 880, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000002000000
TEST_RR_OP(subw, x12, x10, x11, 0xfdffffff, 0xffefffffffffffff, 0x0000000002000000, x3, 888, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(subw, x12, x10, x11, 0xfffffff7, 0xffdfffffffffffff, 0x0000000000000008, x3, 896, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000080000
TEST_RR_OP(subw, x12, x10, x11, 0xfff7ffff, 0xffbfffffffffffff, 0x0000000000080000, x3, 904, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffdffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000000400000000, 0xfffdffffffffffff, x3, 912, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(subw, x12, x10, x11, 0x1000000, 0xff7fffffffffffff, 0xfffffffffeffffff, x3, 920, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffc, 0xfeffffffffffffff, 0x0000000000000003, x3, 928, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(subw, x12, x10, x11, 0x1000, 0xfdffffffffffffff, 0xffffffffffffefff, x3, 936, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfbffffffffffffff, 0xfdffffffffffffff, x3, 944, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xf7ffffffffffffff, 0xbfffffffffffffff, x3, 952, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xefffffffffffffff, 0xffffdfffffffffff, x3, 960, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(subw, x12, x10, x11, 0x400000, 0xdfffffffffffffff, 0xffffffffffbfffff, x3, 968, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000200000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xbfffffffffffffff, 0x0000200000000000, x3, 976, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0004000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x55555555, 0x5555555555555555, 0x0004000000000000, x3, 984, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xfffffeffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffaaaaaaab, 0xaaaaaaaaaaaaaaaa, 0xfffffeffffffffff, x3, 992, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000002
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffe, 0x0000000100000000, 0x0000000000000002, x3, 1000, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffb, 0xfffffbffffffffff, 0x0000000000000004, x3, 1008, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0x0000000000000040
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffc5, 0x0000000000000005, 0x0000000000000040, x3, 1016, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000200
TEST_RR_OP(subw, x12, x10, x11, 0xfffffdfb, 0xfffffffffffffffb, 0x0000000000000200, x3, 1024, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000400
TEST_RR_OP(subw, x12, x10, x11, 0xfffbfbff, 0xfffffffffffbffff, 0x0000000000000400, x3, 1032, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0x0000000000002000
TEST_RR_OP(subw, x12, x10, x11, 0xffffdffc, 0xfffffffffffffffc, 0x0000000000002000, x3, 1040, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000004000
TEST_RR_OP(subw, x12, x10, x11, 0x7ffc000, 0x0000000008000000, 0x0000000000004000, x3, 1048, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000010000
TEST_RR_OP(subw, x12, x10, x11, 0xfffeffff, 0xfffeffffffffffff, 0x0000000000010000, x3, 1056, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000100000
TEST_RR_OP(subw, x12, x10, x11, 0xaa9aaaaa, 0xaaaaaaaaaaaaaaaa, 0x0000000000100000, x3, 1064, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000800000
TEST_RR_OP(subw, x12, x10, x11, 0xff7fffff, 0xffffffefffffffff, 0x0000000000800000, x3, 1072, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000008000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff8000000, 0x0000800000000000, 0x0000000008000000, x3, 1080, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0x0000000020000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffe0000800, 0x0000000000000800, 0x0000000020000000, x3, 1088, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0020000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffdffff, 0xfffffffffffdffff, 0x0020000000000000, x3, 1096, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0040000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffbfffff, 0xffffffffffbfffff, 0x0040000000000000, x3, 1104, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffeffffffffffff, 0x0100000000000000, x3, 1112, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0x0800000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x40, 0x0000000000000040, 0x0800000000000000, x3, 1120, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x1000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x400000, 0x0000000000400000, 0x1000000000000000, x3, 1128, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffffffffffd
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff55555558, 0x5555555555555555, 0xfffffffffffffffd, x3, 1136, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfffffffffffffffb
TEST_RR_OP(subw, x12, x10, x11, 0x4, 0xffffdfffffffffff, 0xfffffffffffffffb, x3, 1144, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0xffffffffffffffdf
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000023, 0x0000000000000002, 0xffffffffffffffdf, x3, 1152, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00008001, 0x0000000400000000, 0xffffffffffff7fff, x3, 1160, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00020001, 0x0200000000000000, 0xfffffffffffdffff, x3, 1168, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00080001, 0x0000000400000000, 0xfffffffffff7ffff, x3, 1176, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0xffffffffffefffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00100801, 0x0000000000000800, 0xffffffffffefffff, x3, 1184, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffffffffffdfffff
TEST_RR_OP(subw, x12, x10, x11, 0x1fffe0, 0xffffffffffffffdf, 0xffffffffffdfffff, x3, 1192, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(subw, x12, x10, x11, 0x800000, 0xfffffffbffffffff, 0xffffffffff7fffff, x3, 1200, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(subw, x12, x10, x11, 0x2000000, 0xfffff7ffffffffff, 0xfffffffffdffffff, x3, 1208, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(subw, x12, x10, x11, 0x3800000, 0xffffffffff7fffff, 0xfffffffffbffffff, x3, 1216, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffffffffefffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffe0, 0xffffffffffffffdf, 0xffffffffefffffff, x3, 1224, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xffffffffbfffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff40100001, 0x0000000000100000, 0xffffffffbfffffff, x3, 1232, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff80000001, 0x0000002000000000, 0xffffffff7fffffff, x3, 1240, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000100000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffff7ffffffffff, 0x0000000100000000, x3, 1248, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000200000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffffffbffffffff, 0x0000000200000000, x3, 1256, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000400000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffffffdfffffffff, 0x0000000400000000, x3, 1264, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000800000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffffffbfffffffff, 0x0000000800000000, x3, 1272, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0x0000400000000000
TEST_RR_OP(subw, x12, x10, x11, 0x3, 0x0000000000000003, 0x0000400000000000, x3, 1280, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000002000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xffffff7fffffffff, 0x0000002000000000, x3, 1288, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xffffff7fffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000000200000000, 0xffffff7fffffffff, x3, 1296, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000080000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xbfffffffffffffff, 0x0000080000000000, x3, 1304, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000100000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffdff, 0xfffffffffffffdff, 0x0000100000000000, x3, 1312, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffdffffffffffff, 0xffffbfffffffffff, x3, 1320, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000800000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffefff, 0xffffffffffffefff, 0x0000800000000000, x3, 1328, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000004000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffbffffffffffff, 0x0000004000000000, x3, 1336, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x2000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x8000000000000000, 0x2000000000000000, x3, 1344, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000001000000
TEST_RR_OP(subw, x12, x10, x11, 0xfeffffff, 0x7fffffffffffffff, 0x0000000001000000, x3, 1352, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000000000003
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffe, 0x0000000000000001, 0x0000000000000003, x3, 1360, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x8000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfff7ffff, 0xfffffffffff7ffff, 0x8000000000000000, x3, 1368, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000000000001
TEST_RR_OP(subw, x12, x10, x11, 0x1f, 0x0000000000000020, 0x0000000000000001, x3, 1376, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x0000000001000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffff001000, 0x0000000000001000, 0x0000000001000000, x3, 1384, x1)

# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x2000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x100000, 0x0000000000100000, 0x2000000000000000, x3, 1392, x1)
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

signature_x10_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x10_1:
    .fill 16*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 175*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
