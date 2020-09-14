
#This assembly file tests the divuw instruction of the RISC-V M extension for the divuw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*M.*);def TEST_CASE_1=True;",divuw)

la x10,signature_x10_1

# opcode: divuw ; op1:x8; op2:x8; dest:x9; op1val:0x8000000000000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(divuw, x9, x8, x8, 0x0000000000000000, 0x8000000000000000, 0xfffffffffbffffff, x10, 0, x16)

# opcode: divuw ; op1:x19; op2:x7; dest:x19; op1val:0x0000000000000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(divuw, x19, x19, x7, 0x0000000000000000, 0x0000000000000000, 0xffffffdfffffffff, x10, 8, x16)

# opcode: divuw ; op1:x24; op2:x24; dest:x24; op1val:0x7fffffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(divuw, x24, x24, x24, 0x0000000000000000, 0x7fffffffffffffff, 0xffdfffffffffffff, x10, 16, x16)

# opcode: divuw ; op1:x2; op2:x17; dest:x20; op1val:0x0000000000000001;  op2val:0xfffffffffffffffb
TEST_RR_OP(divuw, x20, x2, x17, 0x0000000000000000, 0x0000000000000001, 0xfffffffffffffffb, x10, 24, x16)

# opcode: divuw ; op1:x1; op2:x3; dest:x3; op1val:0xffdfffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(divuw, x3, x1, x3, 0x0000000000000000, 0xffdfffffffffffff, 0x8000000000000000, x10, 32, x16)

# opcode: divuw ; op1:x20; op2:x4; dest:x7; op1val:0x0400000000000000;  op2val:0x0000000000000000
TEST_RR_OP(divuw, x7, x20, x4, 0x0000000000000000, 0x0400000000000000, 0x0000000000000000, x10, 40, x16)

# opcode: divuw ; op1:x4; op2:x29; dest:x17; op1val:0x0000020000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(divuw, x17, x4, x29, 0x0000000000000000, 0x0000020000000000, 0x7fffffffffffffff, x10, 48, x16)

# opcode: divuw ; op1:x14; op2:x19; dest:x8; op1val:0x0000000002000000;  op2val:0x0000000000000001
TEST_RR_OP(divuw, x8, x14, x19, 0x0000000000000000, 0x0000000002000000, 0x0000000000000001, x10, 56, x16)

# opcode: divuw ; op1:x15; op2:x23; dest:x22; op1val:0xfffffffbffffffff;  op2val:0x0000400000000000
TEST_RR_OP(divuw, x22, x15, x23, 0x0000000000000000, 0xfffffffbffffffff, 0x0000400000000000, x10, 64, x16)

# opcode: divuw ; op1:x9; op2:x30; dest:x5; op1val:0x0000000000000005;  op2val:0x0000000000000005
TEST_RR_OP(divuw, x5, x9, x30, 0x0000000000000000, 0x0000000000000005, 0x0000000000000005, x10, 72, x16)

# opcode: divuw ; op1:x0; op2:x25; dest:x14; op1val:0x0000000000000002;  op2val:0x0000040000000000
TEST_RR_OP(divuw, x14, x0, x25, 0x0000000000000000, 0x0000000000000002, 0x0000040000000000, x10, 80, x16)

# opcode: divuw ; op1:x26; op2:x12; dest:x1; op1val:0x0000000000000004;  op2val:0xffffffffffffbfff
TEST_RR_OP(divuw, x1, x26, x12, 0x0000000000000000, 0x0000000000000004, 0xffffffffffffbfff, x10, 88, x16)

# opcode: divuw ; op1:x3; op2:x18; dest:x12; op1val:0x0000000000000008;  op2val:0x0000000000000020
TEST_RR_OP(divuw, x12, x3, x18, 0x0000000000000000, 0x0000000000000008, 0x0000000000000020, x10, 96, x16)

# opcode: divuw ; op1:x6; op2:x15; dest:x0; op1val:0x0000000000000010;  op2val:0xffffffffffffbfff
TEST_RR_OP(divuw, x0, x6, x15, 0x0000000000000000, 0x0000000000000010, 0xffffffffffffbfff, x10, 104, x16)

# opcode: divuw ; op1:x30; op2:x21; dest:x26; op1val:0x0000000000000020;  op2val:0xffffefffffffffff
TEST_RR_OP(divuw, x26, x30, x21, 0x0000000000000000, 0x0000000000000020, 0xffffefffffffffff, x10, 112, x16)

# opcode: divuw ; op1:x13; op2:x0; dest:x27; op1val:0x0000000000000040;  op2val:0xfffffffbffffffff
TEST_RR_OP(divuw, x27, x13, x0, 0x0000000000000000, 0x0000000000000040, 0xfffffffbffffffff, x10, 120, x16)

# opcode: divuw ; op1:x12; op2:x14; dest:x11; op1val:0x0000000000000080;  op2val:0x0000000000000200
TEST_RR_OP(divuw, x11, x12, x14, 0x0000000000000000, 0x0000000000000080, 0x0000000000000200, x10, 128, x16)

# opcode: divuw ; op1:x31; op2:x6; dest:x2; op1val:0x0000000000000100;  op2val:0x0000008000000000
TEST_RR_OP(divuw, x2, x31, x6, 0x0000000000000000, 0x0000000000000100, 0x0000008000000000, x10, 136, x8)
la x3,signature_x3_0

# opcode: divuw ; op1:x29; op2:x26; dest:x30; op1val:0x0000000000000200;  op2val:0xc000000000000000
TEST_RR_OP(divuw, x30, x29, x26, 0x0000000000000000, 0x0000000000000200, 0xc000000000000000, x3, 0, x8)

# opcode: divuw ; op1:x23; op2:x28; dest:x16; op1val:0x0000000000000400;  op2val:0x0000000002000000
TEST_RR_OP(divuw, x16, x23, x28, 0x0000000000000000, 0x0000000000000400, 0x0000000002000000, x3, 8, x8)

# opcode: divuw ; op1:x16; op2:x1; dest:x10; op1val:0x0000000000000800;  op2val:0x0000000000000800
TEST_RR_OP(divuw, x10, x16, x1, 0x0000000000000000, 0x0000000000000800, 0x0000000000000800, x3, 16, x8)

# opcode: divuw ; op1:x25; op2:x16; dest:x21; op1val:0x0000000000001000;  op2val:0x0000000000001000
TEST_RR_OP(divuw, x21, x25, x16, 0x0000000000000000, 0x0000000000001000, 0x0000000000001000, x3, 24, x8)

# opcode: divuw ; op1:x22; op2:x11; dest:x28; op1val:0x0000000000002000;  op2val:0xffdfffffffffffff
TEST_RR_OP(divuw, x28, x22, x11, 0x0000000000000000, 0x0000000000002000, 0xffdfffffffffffff, x3, 32, x8)

# opcode: divuw ; op1:x11; op2:x2; dest:x18; op1val:0x0000000000004000;  op2val:0xffffffffbfffffff
TEST_RR_OP(divuw, x18, x11, x2, 0x0000000000000000, 0x0000000000004000, 0xffffffffbfffffff, x3, 40, x8)

# opcode: divuw ; op1:x10; op2:x27; dest:x15; op1val:0x0000000000008000;  op2val:0xffffefffffffffff
TEST_RR_OP(divuw, x15, x10, x27, 0x0000000000000000, 0x0000000000008000, 0xffffefffffffffff, x3, 48, x8)

# opcode: divuw ; op1:x27; op2:x20; dest:x13; op1val:0x0000000000010000;  op2val:0xefffffffffffffff
TEST_RR_OP(divuw, x13, x27, x20, 0x0000000000000000, 0x0000000000010000, 0xefffffffffffffff, x3, 56, x8)

# opcode: divuw ; op1:x5; op2:x13; dest:x4; op1val:0x0000000000020000;  op2val:0x0000000000000400
TEST_RR_OP(divuw, x4, x5, x13, 0x0000000000000000, 0x0000000000020000, 0x0000000000000400, x3, 64, x8)

# opcode: divuw ; op1:x21; op2:x31; dest:x6; op1val:0x0000000000040000;  op2val:0xfffffffffffffffb
TEST_RR_OP(divuw, x6, x21, x31, 0x0000000000000000, 0x0000000000040000, 0xfffffffffffffffb, x3, 72, x8)

# opcode: divuw ; op1:x17; op2:x22; dest:x29; op1val:0x0000000000080000;  op2val:0xfffffffffffffffd
TEST_RR_OP(divuw, x29, x17, x22, 0x0000000000000000, 0x0000000000080000, 0xfffffffffffffffd, x3, 80, x8)

# opcode: divuw ; op1:x7; op2:x10; dest:x31; op1val:0x0000000000100000;  op2val:0x0010000000000000
TEST_RR_OP(divuw, x31, x7, x10, 0x0000000000000000, 0x0000000000100000, 0x0010000000000000, x3, 88, x8)

# opcode: divuw ; op1:x18; op2:x5; dest:x25; op1val:0x0000000000200000;  op2val:0x0000000000000001
TEST_RR_OP(divuw, x25, x18, x5, 0x0000000000000000, 0x0000000000200000, 0x0000000000000001, x3, 96, x8)

# opcode: divuw ; op1:x28; op2:x9; dest:x23; op1val:0x0000000000400000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(divuw, x23, x28, x9, 0x0000000000000000, 0x0000000000400000, 0xfffffffff7ffffff, x3, 104, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000080
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0x0000000000000080, x3, 112, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000001000000, 0xfffffeffffffffff, x3, 120, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000004000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0x0000000000004000, x3, 128, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0800000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0x0800000000000000, x3, 136, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000400000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0x0000400000000000, x3, 144, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffffffffffff8
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xfffffffffffffff8, x3, 152, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xffffffffffffffdf
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0xffffffffffffffdf, x3, 160, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xfffffffffffbffff, x3, 168, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0xdfffffffffffffff, x3, 176, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xfffffffffdffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0xfffffffffdffffff, x3, 184, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000200000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0x0000000200000000, x3, 192, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffff7fffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xffffff7fffffffff, x3, 200, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xffffefffffffffff, x3, 208, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xffffffbfffffffff, x3, 216, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0400000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0400000000000000, x3, 224, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0100000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0x0100000000000000, x3, 232, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0xfffffffdffffffff, x3, 240, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000040000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0x0000040000000000, x3, 248, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0xfffffffff7ffffff, x3, 256, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000008
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0x0000000000000008, x3, 264, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xffffffffbfffffff, x3, 272, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000001000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0x0000000000001000, x3, 280, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x4000000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x4000000000000000, x3, 288, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x4000000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0x4000000000000000, x3, 296, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000008000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0000000000008000, x3, 304, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000200
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0x0000000000000200, x3, 312, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000400000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0008000000000000, 0x0000000000400000, x3, 320, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xfffffffffffffff6, x3, 328, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000002000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000002000000000, x3, 336, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000400000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0x0000400000000000, x3, 344, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xfdffffffffffffff, x3, 352, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0xfffffeffffffffff, x3, 360, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000010000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0000000000010000, x3, 368, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000800000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0x0000800000000000, x3, 376, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xfffffffffffdffff, x3, 384, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000080
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0x0000000000000080, x3, 392, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000006
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0x0000000000000006, x3, 400, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfffffffff7ffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0xfffffffff7ffffff, x3, 408, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xc000000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0xc000000000000000, x3, 416, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffeffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0xfffeffffffffffff, x3, 424, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffffffffffffeff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xfffffffffffffeff, x3, 432, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0080000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0x0080000000000000, x3, 440, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000008000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0x0000000000008000, x3, 448, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000040000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0x0000000040000000, x3, 456, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000020000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0x0000000020000000, x3, 464, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000200000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0x0000200000000000, x3, 472, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000400000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0x0000400000000000, x3, 480, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xffbfffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0xffbfffffffffffff, x3, 488, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x5555555555555555
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0x5555555555555555, x3, 496, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xfffbffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000001, 0xfffbffffffffffff, x3, 504, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0xfff7ffffffffffff, x3, 512, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0xffefffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000008000, 0xffefffffffffffff, x3, 520, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000001000000, 0xff7fffffffffffff, x3, 528, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0xfeffffffffffffff, x3, 536, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0xfbffffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000006, 0xfbffffffffffffff, x3, 544, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000080000, 0xf7ffffffffffffff, x3, 552, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0xbfffffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0xbfffffffffffffff, x3, 560, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0xaaaaaaaaaaaaaaaa, x3, 568, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffffefffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0xffffffffffefffff, x3, 576, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0010000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0x0010000000000000, x3, 584, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000008000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0000000008000000, x3, 592, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000003
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0x0000000000000003, x3, 600, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xffffffffffff7fff, x3, 608, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000800000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0x0000000000800000, x3, 616, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000005
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0x0000000000000005, x3, 624, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000400000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0x0000000400000000, x3, 632, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000004000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0x0000004000000000, x3, 640, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000002000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0x0000000002000000, x3, 648, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0xfffffbffffffffff, x3, 656, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0xfffffffffffdffff, x3, 664, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0xfffffffff7ffffff, x3, 672, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0xfffffbffffffffff, x3, 680, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0xffffffffbfffffff, x3, 688, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfffffffffffffff7
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xfffffffffffffff7, x3, 696, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xffffffffefffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0xffffffffefffffff, x3, 704, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000008000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0x0000000000008000, x3, 712, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0xffffffffff7fffff, x3, 720, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0xfffffffffffffeff, x3, 728, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0xffdfffffffffffff, x3, 736, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffffffffffffff8
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0xfffffffffffffff8, x3, 744, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0xffffffffffffefff, x3, 752, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0xffffdfffffffffff, x3, 760, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xfffffffffffffff8
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0xfffffffffffffff8, x3, 768, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000006
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0x0000000000000006, x3, 776, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0800000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x0800000000000000, x3, 784, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffffffffff8
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xfffffffffffffff8, x3, 792, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0xfffffffffeffffff, x3, 800, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xfffffdffffffffff, x3, 808, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000200000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0x0000000000200000, x3, 816, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0xfffffffffffffdff, x3, 824, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0x0000000000000001, x3, 832, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000000000010, x3, 840, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x1000000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0x1000000000000000, x3, 848, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0xfffffffffffffffe, x3, 856, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0xffdfffffffffffff, x3, 864, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0xfffdffffffffffff, x3, 872, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0xfffff7ffffffffff, x3, 880, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000100000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0x0000000100000000, x3, 888, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0xfffffffffffffffd, x3, 896, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xffffffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0xffffffffffffffff, x3, 904, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0xfffffffeffffffff, x3, 912, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000200000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0x0000000000200000, x3, 920, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0xfffbffffffffffff, x3, 928, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000800000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0x0000800000000000, x3, 936, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000001000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x0000000001000000, x3, 944, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000007
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0x0000000000000007, x3, 952, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000000000002
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000020, 0x0000000000000002, x3, 960, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000004
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0x0000000000000004, x3, 968, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000040
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0x0000000000000040, x3, 976, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000100
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0x0000000000000100, x3, 984, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0x0000000000002000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffa, 0x0000000000002000, x3, 992, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000020000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0x0000000000020000, x3, 1000, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000040000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0x0000000000040000, x3, 1008, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000080000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0x0000000000080000, x3, 1016, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000000100000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000020, 0x0000000000100000, x3, 1024, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000004000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0x0000000004000000, x3, 1032, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0x0000000010000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000400, 0x0000000010000000, x3, 1040, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000080000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0x0000000080000000, x3, 1048, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000800000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0x0000000800000000, x3, 1056, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0004000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0x0004000000000000, x3, 1064, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0008000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0x0008000000000000, x3, 1072, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0020000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0x0020000000000000, x3, 1080, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0002000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0x0002000000000000, x3, 1088, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0040000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0x0040000000000000, x3, 1096, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0x0200000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000100, 0x0200000000000000, x3, 1104, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x2000000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000400000, 0x2000000000000000, x3, 1112, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0xffffffffffffffef
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000007, 0xffffffffffffffef, x3, 1120, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffffffffffffffbf
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0xffffffffffffffbf, x3, 1128, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0xffffffffffffff7f, x3, 1136, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0xfffffffffffffbff, x3, 1144, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0xfffffffffffff7ff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000020, 0xfffffffffffff7ff, x3, 1152, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0xffffffffffffdfff, x3, 1160, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfffffffffffeffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0xfffffffffffeffff, x3, 1168, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0xfffffffffff7ffff, x3, 1176, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xffffffffffdfffff, x3, 1184, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0xffffffffffffefff, x3, 1192, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0xffffffffffbfffff, x3, 1200, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffffdfffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xffffffffdfffffff, x3, 1208, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0xffffffff7fffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000200000, 0xffffffff7fffffff, x3, 1216, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0xfffffff7ffffffff, x3, 1224, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000001000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0x0000001000000000, x3, 1232, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xffffffefffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xffffffefffffffff, x3, 1240, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0x0000010000000000, x3, 1248, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000020000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0x0000020000000000, x3, 1256, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000080000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0x0000080000000000, x3, 1264, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000100000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0x0000100000000000, x3, 1272, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xffffbfffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000100000, 0xffffbfffffffffff, x3, 1280, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xffff7fffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xffff7fffffffffff, x3, 1288, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0001000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0x0001000000000000, x3, 1296, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xfffffffffffffffd, x3, 1304, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0xfffffffffbffffff, x3, 1312, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000000, 0xffffffdfffffffff, x3, 1320, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x7fffffffffffffff, 0xffdfffffffffffff, x3, 1328, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0x8000000000000000, x3, 1336, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0000040000000000
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000002, 0x0000040000000000, x3, 1344, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0xffffffffffffbfff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0xffffffffffffbfff, x3, 1352, x8)

# opcode: divuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0xfffffffbffffffff
TEST_RR_OP(divuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000040, 0xfffffffbffffffff, x3, 1360, x8)
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
    .fill 18*(XLEN/32),4,0xafacadee


signature_x3_0:
    .fill 171*(XLEN/32),4,0xafacadee

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xafacadee

#endif

RVMODEL_DATA_END
