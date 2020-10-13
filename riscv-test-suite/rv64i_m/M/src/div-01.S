
#This assembly file tests the div instruction of the RISC-V M extension for the div covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",div)

RVTEST_SIGBASE( x24,signature_x24_1)

# rs1 == rd != rs2, rs1==x23, rs2==x18, rd==x23, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: div ; op1:x23; op2:x18; dest:x23; op1val:0x8000000000000000;  op2val:0x0000000000000006
TEST_RR_OP(div, x23, x23, x18, 0x0000000000000000, 0x8000000000000000, 0x0000000000000006, x24, 0, x30)

# rs2 == rd != rs1, rs1==x8, rs2==x26, rd==x26, rs1_val == 0, 
# opcode: div ; op1:x8; op2:x26; dest:x26; op1val:0x0000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(div, x26, x8, x26, 0x0000000000000000, 0x0000000000000000, 0x0000000000000003, x24, 8, x30)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x11, rs2==x15, rd==x3, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs1_val == 9223372036854775807, rs2_val == -1073741825
# opcode: div ; op1:x11; op2:x15; dest:x3; op1val:0x7fffffffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(div, x3, x11, x15, 0x0000000000000000, 0x7fffffffffffffff, 0xffffffffbfffffff, x24, 16, x30)

# rs1 == rs2 != rd, rs1==x22, rs2==x22, rd==x19, rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 134217728
# opcode: div ; op1:x22; op2:x22; dest:x19; op1val:0x0000000000000001;  op2val:0x0000000008000000
TEST_RR_OP(div, x19, x22, x22, 0x0000000000000000, 0x0000000000000001, 0x0000000008000000, x24, 24, x30)

# rs1 == rs2 == rd, rs1==x25, rs2==x25, rd==x25, rs2_val == (-2**(xlen-1)), rs1_val == 8796093022208, rs2_val == -9223372036854775808
# opcode: div ; op1:x25; op2:x25; dest:x25; op1val:0x0000080000000000;  op2val:0x8000000000000000
TEST_RR_OP(div, x25, x25, x25, 0x0000000000000000, 0x0000080000000000, 0x8000000000000000, x24, 32, x30)

# rs1==x19, rs2==x31, rd==x22, rs2_val == 0, rs1_val == 2251799813685248
# opcode: div ; op1:x19; op2:x31; dest:x22; op1val:0x0008000000000000;  op2val:0x0000000000000000
TEST_RR_OP(div, x22, x19, x31, 0x0000000000000000, 0x0008000000000000, 0x0000000000000000, x24, 40, x30)

# rs1==x21, rs2==x10, rd==x1, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807, rs1_val == -3
# opcode: div ; op1:x21; op2:x10; dest:x1; op1val:0xfffffffffffffffd;  op2val:0x7fffffffffffffff
TEST_RR_OP(div, x1, x21, x10, 0x0000000000000000, 0xfffffffffffffffd, 0x7fffffffffffffff, x24, 48, x30)

# rs1==x14, rs2==x0, rd==x15, rs2_val == 1, 
# opcode: div ; op1:x14; op2:x0; dest:x15; op1val:0xfffffffffffffffd;  op2val:0x0000000000000001
TEST_RR_OP(div, x15, x14, x0, 0x0000000000000000, 0xfffffffffffffffd, 0x0000000000000001, x24, 56, x30)

# rs1==x27, rs2==x6, rd==x12, rs1_val < 0 and rs2_val < 0, rs2_val == -140737488355329
# opcode: div ; op1:x27; op2:x6; dest:x12; op1val:0xfffffffffffffff8;  op2val:0xffff7fffffffffff
TEST_RR_OP(div, x12, x27, x6, 0x0000000000000000, 0xfffffffffffffff8, 0xffff7fffffffffff, x24, 64, x30)

# rs1==x16, rs2==x11, rd==x2, rs1_val == rs2_val, rs1_val == -9, rs2_val == -9
# opcode: div ; op1:x16; op2:x11; dest:x2; op1val:0xfffffffffffffff7;  op2val:0xfffffffffffffff7
TEST_RR_OP(div, x2, x16, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xfffffffffffffff7, x24, 72, x30)

# rs1==x28, rs2==x23, rd==x14, rs1_val == 2, rs2_val == 268435456
# opcode: div ; op1:x28; op2:x23; dest:x14; op1val:0x0000000000000002;  op2val:0x0000000010000000
TEST_RR_OP(div, x14, x28, x23, 0x0000000000000000, 0x0000000000000002, 0x0000000010000000, x24, 80, x30)

# rs1==x15, rs2==x7, rd==x20, rs1_val == 4, rs2_val == 536870912
# opcode: div ; op1:x15; op2:x7; dest:x20; op1val:0x0000000000000004;  op2val:0x0000000020000000
TEST_RR_OP(div, x20, x15, x7, 0x0000000000000000, 0x0000000000000004, 0x0000000020000000, x24, 88, x30)

# rs1==x26, rs2==x9, rd==x10, rs1_val == 8, rs2_val == -17592186044417
# opcode: div ; op1:x26; op2:x9; dest:x10; op1val:0x0000000000000008;  op2val:0xffffefffffffffff
TEST_RR_OP(div, x10, x26, x9, 0x0000000000000000, 0x0000000000000008, 0xffffefffffffffff, x24, 96, x30)

# rs1==x31, rs2==x4, rd==x8, rs1_val == 16, rs2_val == -3
# opcode: div ; op1:x31; op2:x4; dest:x8; op1val:0x0000000000000010;  op2val:0xfffffffffffffffd
TEST_RR_OP(div, x8, x31, x4, 0x0000000000000000, 0x0000000000000010, 0xfffffffffffffffd, x24, 104, x30)

# rs1==x10, rs2==x20, rd==x29, rs1_val == 32, rs2_val == 512
# opcode: div ; op1:x10; op2:x20; dest:x29; op1val:0x0000000000000020;  op2val:0x0000000000000200
TEST_RR_OP(div, x29, x10, x20, 0x0000000000000000, 0x0000000000000020, 0x0000000000000200, x24, 112, x30)

# rs1==x29, rs2==x1, rd==x0, rs1_val == 64, rs2_val == -65
# opcode: div ; op1:x29; op2:x1; dest:x0; op1val:0x0000000000000040;  op2val:0xffffffffffffffbf
TEST_RR_OP(div, x0, x29, x1, 0x0000000000000000, 0x0000000000000040, 0xffffffffffffffbf, x24, 120, x30)

# rs1==x17, rs2==x13, rd==x5, rs1_val == 128, rs2_val == 140737488355328
# opcode: div ; op1:x17; op2:x13; dest:x5; op1val:0x0000000000000080;  op2val:0x0000800000000000
TEST_RR_OP(div, x5, x17, x13, 0x0000000000000000, 0x0000000000000080, 0x0000800000000000, x24, 128, x30)
RVTEST_SIGBASE( x15,signature_x15_0)

# rs1==x5, rs2==x29, rd==x17, rs1_val == 256, rs2_val == -4503599627370497
# opcode: div ; op1:x5; op2:x29; dest:x17; op1val:0x0000000000000100;  op2val:0xffefffffffffffff
TEST_RR_OP(div, x17, x5, x29, 0x0000000000000000, 0x0000000000000100, 0xffefffffffffffff, x15, 0, x22)

# rs1==x20, rs2==x24, rd==x30, rs1_val == 512, rs2_val == 1048576
# opcode: div ; op1:x20; op2:x24; dest:x30; op1val:0x0000000000000200;  op2val:0x0000000000100000
TEST_RR_OP(div, x30, x20, x24, 0x0000000000000000, 0x0000000000000200, 0x0000000000100000, x15, 8, x22)

# rs1==x3, rs2==x2, rd==x24, rs1_val == 1024, rs2_val == -129
# opcode: div ; op1:x3; op2:x2; dest:x24; op1val:0x0000000000000400;  op2val:0xffffffffffffff7f
TEST_RR_OP(div, x24, x3, x2, 0x0000000000000000, 0x0000000000000400, 0xffffffffffffff7f, x15, 16, x22)

# rs1==x2, rs2==x16, rd==x21, rs1_val == 2048, rs2_val == -257
# opcode: div ; op1:x2; op2:x16; dest:x21; op1val:0x0000000000000800;  op2val:0xfffffffffffffeff
TEST_RR_OP(div, x21, x2, x16, 0x0000000000000000, 0x0000000000000800, 0xfffffffffffffeff, x15, 24, x22)

# rs1==x13, rs2==x14, rd==x27, rs1_val == 4096, 
# opcode: div ; op1:x13; op2:x14; dest:x27; op1val:0x0000000000001000;  op2val:0xffffefffffffffff
TEST_RR_OP(div, x27, x13, x14, 0x0000000000000000, 0x0000000000001000, 0xffffefffffffffff, x15, 32, x22)

# rs1==x1, rs2==x5, rd==x28, rs1_val == 8192, 
# opcode: div ; op1:x1; op2:x5; dest:x28; op1val:0x0000000000002000;  op2val:0x8000000000000000
TEST_RR_OP(div, x28, x1, x5, 0x0000000000000000, 0x0000000000002000, 0x8000000000000000, x15, 40, x22)

# rs1==x9, rs2==x17, rd==x6, rs1_val == 16384, 
# opcode: div ; op1:x9; op2:x17; dest:x6; op1val:0x0000000000004000;  op2val:0xfffffffffffffff8
TEST_RR_OP(div, x6, x9, x17, 0x0000000000000000, 0x0000000000004000, 0xfffffffffffffff8, x15, 48, x22)

# rs1==x7, rs2==x28, rd==x11, rs1_val == 32768, rs2_val == -8193
# opcode: div ; op1:x7; op2:x28; dest:x11; op1val:0x0000000000008000;  op2val:0xffffffffffffdfff
TEST_RR_OP(div, x11, x7, x28, 0x0000000000000000, 0x0000000000008000, 0xffffffffffffdfff, x15, 56, x22)

# rs1==x6, rs2==x30, rd==x31, rs1_val == 65536, rs2_val == -1025
# opcode: div ; op1:x6; op2:x30; dest:x31; op1val:0x0000000000010000;  op2val:0xfffffffffffffbff
TEST_RR_OP(div, x31, x6, x30, 0x0000000000000000, 0x0000000000010000, 0xfffffffffffffbff, x15, 64, x22)

# rs1==x30, rs2==x8, rd==x7, rs1_val == 131072, 
# opcode: div ; op1:x30; op2:x8; dest:x7; op1val:0x0000000000020000;  op2val:0xfffffffffffffffd
TEST_RR_OP(div, x7, x30, x8, 0x0000000000000000, 0x0000000000020000, 0xfffffffffffffffd, x15, 72, x22)

# rs1==x24, rs2==x3, rd==x16, rs1_val == 262144, rs2_val == 562949953421312
# opcode: div ; op1:x24; op2:x3; dest:x16; op1val:0x0000000000040000;  op2val:0x0002000000000000
TEST_RR_OP(div, x16, x24, x3, 0x0000000000000000, 0x0000000000040000, 0x0002000000000000, x15, 80, x22)

# rs1==x0, rs2==x19, rd==x9, rs1_val == 524288, 
# opcode: div ; op1:x0; op2:x19; dest:x9; op1val:0x0000000000080000;  op2val:0x8000000000000000
TEST_RR_OP(div, x9, x0, x19, 0x0000000000000000, 0x0000000000080000, 0x8000000000000000, x15, 88, x22)

# rs1==x4, rs2==x27, rd==x13, rs1_val == 1048576, rs2_val == -268435457
# opcode: div ; op1:x4; op2:x27; dest:x13; op1val:0x0000000000100000;  op2val:0xffffffffefffffff
TEST_RR_OP(div, x13, x4, x27, 0x0000000000000000, 0x0000000000100000, 0xffffffffefffffff, x15, 96, x22)

# rs1==x12, rs2==x21, rd==x18, rs1_val == 2097152, rs2_val == 4398046511104
# opcode: div ; op1:x12; op2:x21; dest:x18; op1val:0x0000000000200000;  op2val:0x0000040000000000
TEST_RR_OP(div, x18, x12, x21, 0x0000000000000000, 0x0000000000200000, 0x0000040000000000, x15, 104, x22)

# rs1==x18, rs2==x12, rd==x4, rs1_val == 4194304, rs2_val == -9007199254740993
# opcode: div ; op1:x18; op2:x12; dest:x4; op1val:0x0000000000400000;  op2val:0xffdfffffffffffff
TEST_RR_OP(div, x4, x18, x12, 0x0000000000000000, 0x0000000000400000, 0xffdfffffffffffff, x15, 112, x22)

# rs1_val == 8388608, rs2_val == -68719476737
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xffffffefffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0xffffffefffffffff, x15, 120, x22)

# rs1_val == 16777216, rs2_val == 17179869184
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000400000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000001000000, 0x0000000400000000, x15, 128, x22)

# rs1_val == 33554432, rs2_val == 8
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000008
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000002000000, 0x0000000000000008, x15, 136, x22)

# rs1_val == 67108864, rs2_val == -274877906945
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0xffffffbfffffffff, x15, 144, x22)

# rs1_val == 134217728, rs2_val == -2
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffffffffe
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0xfffffffffffffffe, x15, 152, x22)

# rs1_val == 268435456, rs2_val == 4
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000004
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0x0000000000000004, x15, 160, x22)

# rs1_val == 536870912, rs2_val == 2097152
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000200000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0x0000000000200000, x15, 168, x22)

# rs1_val == 1073741824, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfffffffffffffffa
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0xfffffffffffffffa, x15, 176, x22)

# rs1_val == 2147483648, rs2_val == -131073
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xfffffffffffdffff, x15, 184, x22)

# rs1_val == 4294967296, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0xfffffffffffffffc, x15, 192, x22)

# rs1_val == 8589934592, rs2_val == -2147483649
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0xffffffff7fffffff, x15, 200, x22)

# rs1_val == 17179869184, rs2_val == -549755813889
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xffffff7fffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0xffffff7fffffffff, x15, 208, x22)

# rs1_val == 34359738368, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xfffffffffffffff8
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xfffffffffffffff8, x15, 216, x22)

# rs1_val == 68719476736, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xfffffffffffffeff, x15, 224, x22)

# rs1_val == 137438953472, rs2_val == -1099511627777
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xfffffeffffffffff, x15, 232, x22)

# rs1_val == 274877906944, rs2_val == 2048
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000800
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000000000800, x15, 240, x22)

# rs1_val == 549755813888, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000009
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0x0000000000000009, x15, 248, x22)

# rs1_val == 1099511627776, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0xffffffbfffffffff, x15, 256, x22)

# rs1_val == 2199023255552, rs2_val == 128
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000080
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0x0000000000000080, x15, 264, x22)

# rs1_val == 4398046511104, rs2_val == 4503599627370496
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0010000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0x0010000000000000, x15, 272, x22)

# rs1_val == 17592186044416, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xffffffff7fffffff, x15, 280, x22)

# rs1_val == 35184372088832, rs2_val == -67108865
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xfffffffffbffffff, x15, 288, x22)

# rs1_val == 70368744177664, rs2_val == -34359738369
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xfffffff7ffffffff, x15, 296, x22)

# rs1_val == 140737488355328, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffffffffffffff8
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0xfffffffffffffff8, x15, 304, x22)

# rs1_val == 281474976710656, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000100000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0x0000000000100000, x15, 312, x22)

# rs1_val == 562949953421312, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000004
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0000000000000004, x15, 320, x22)

# rs1_val == 1125899906842624, rs2_val == 70368744177664
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000400000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0x0000400000000000, x15, 328, x22)

# rs1_val == 4503599627370496, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xffffefffffffffff, x15, 336, x22)

# rs1_val == 9007199254740992, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0xffffffff7fffffff, x15, 344, x22)

# rs1_val == 18014398509481984, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000800000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0x0000800000000000, x15, 352, x22)

# rs1_val == 36028797018963968, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xffffffffffffdfff, x15, 360, x22)

# rs1_val == 72057594037927936, rs2_val == -513
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0xfffffffffffffdff, x15, 368, x22)

# rs1_val == 144115188075855872, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000008000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0000000008000000, x15, 376, x22)

# rs1_val == 288230376151711744, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000004
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0x0000000000000004, x15, 384, x22)

# rs1_val == 576460752303423488, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xfffffffffffffff8
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0xfffffffffffffff8, x15, 392, x22)

# rs1_val == 1152921504606846976, rs2_val == -4194305
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xffffffffffbfffff, x15, 400, x22)

# rs1_val == 2305843009213693952, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000040000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0x0000040000000000, x15, 408, x22)

# rs1_val == 4611686018427387904, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0xfffffffffffffff6, x15, 416, x22)

# rs1_val == -2, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfffffffffffffffe
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0xfffffffffffffffe, x15, 424, x22)

# rs1_val == -5, rs2_val == 1152921504606846976
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x1000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0x1000000000000000, x15, 432, x22)

# rs1_val == -17, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffffefffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xffffffffefffffff, x15, 440, x22)

# rs1_val == -33, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffffffffffffbff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0xfffffffffffffbff, x15, 448, x22)

# rs1_val == -65, rs2_val == 288230376151711744
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0400000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0x0400000000000000, x15, 456, x22)

# rs1_val == -129, rs2_val == -281474976710657
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffeffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0xfffeffffffffffff, x15, 464, x22)

# rs1_val == -257, rs2_val == -8388609
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xffffffffff7fffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xffffffffff7fffff, x15, 472, x22)

# rs1_val == -513, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x8000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0x8000000000000000, x15, 480, x22)

# rs1_val == -1025, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0010000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0x0010000000000000, x15, 488, x22)

# rs1_val == -2049, rs2_val == 2147483648
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000080000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0x0000000080000000, x15, 496, x22)

# rs1_val == -4097, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffffffff7f
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0xffffffffffffff7f, x15, 504, x22)

# rs1_val == -8193, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000008
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0x0000000000000008, x15, 512, x22)

# rs1_val == -16385, rs2_val == 274877906944
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000004000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0000004000000000, x15, 520, x22)

# rs1_val == -32769, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xffdfffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0xffdfffffffffffff, x15, 528, x22)

# rs1_val == -65537, rs2_val == -4611686018427387905
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xbfffffffffffffff, x15, 536, x22)

# rs1_val == -131073, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000020000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0x0000000020000000, x15, 544, x22)

# rs2_val == -1125899906842625, rs1_val == -33554433
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0xfffbffffffffffff, x15, 552, x22)

# rs2_val == -2251799813685249, rs1_val == -6148914691236517206
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xfff7ffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0xfff7ffffffffffff, x15, 560, x22)

# rs2_val == -18014398509481985, rs1_val == -4503599627370497
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0xffbfffffffffffff, x15, 568, x22)

# rs2_val == -36028797018963969, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0xff7fffffffffffff, x15, 576, x22)

# rs2_val == -72057594037927937, rs1_val == -4294967297
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0xfeffffffffffffff, x15, 584, x22)

# rs2_val == -144115188075855873, rs1_val == -8796093022209
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xfdffffffffffffff, x15, 592, x22)

# rs2_val == -288230376151711745, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0xfbffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000020000, 0xfbffffffffffffff, x15, 600, x22)

# rs2_val == -576460752303423489, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0xf7ffffffffffffff, x15, 608, x22)

# rs2_val == -1152921504606846977, rs1_val == -4194305
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xefffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0xefffffffffffffff, x15, 616, x22)

# rs2_val == -2305843009213693953, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xdfffffffffffffff, x15, 624, x22)

# rs2_val == 6148914691236517205, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0x5555555555555555
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000008000, 0x5555555555555555, x15, 632, x22)

# rs2_val == -6148914691236517206, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000008, 0xaaaaaaaaaaaaaaaa, x15, 640, x22)

# rs1_val == -262145, rs2_val == -70368744177665
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0xffffbfffffffffff, x15, 648, x22)

# rs1_val == -524289, rs2_val == 8796093022208
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000080000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0x0000080000000000, x15, 656, x22)

# rs1_val == -1048577, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xfffffffffffffff8
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xfffffffffffffff8, x15, 664, x22)

# rs1_val == -2097153, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0xffffff7fffffffff, x15, 672, x22)

# rs1_val == -8388609, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000007
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0x0000000000000007, x15, 680, x22)

# rs1_val == -16777217, rs2_val == 35184372088832
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000200000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0000200000000000, x15, 688, x22)

# rs1_val == -67108865, rs2_val == 2199023255552
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000020000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0x0000020000000000, x15, 696, x22)

# rs1_val == -134217729, rs2_val == 67108864
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000004000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0x0000000004000000, x15, 704, x22)

# rs1_val == -268435457, rs2_val == -524289
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xfffffffffff7ffff, x15, 712, x22)

# rs1_val == -536870913, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000800
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0x0000000000000800, x15, 720, x22)

# rs1_val == -1073741825, rs2_val == 131072
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000020000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0x0000000000020000, x15, 728, x22)

# rs1_val == -2147483649, rs2_val == 34359738368
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000800000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0x0000000800000000, x15, 736, x22)

# rs1_val == -8589934593, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0xffffbfffffffffff, x15, 744, x22)

# rs1_val == -17179869185, rs2_val == 4194304
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000400000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0x0000000000400000, x15, 752, x22)

# rs1_val == -34359738369, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0xffffffffffffdfff, x15, 760, x22)

# rs1_val == -68719476737, rs2_val == 65536
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000010000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0x0000000000010000, x15, 768, x22)

# rs1_val == -137438953473, rs2_val == 4096
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000001000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0x0000000000001000, x15, 776, x22)

# rs1_val == -274877906945, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0xfffffffffffdffff, x15, 784, x22)

# rs1_val == -549755813889, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000001000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0x0000000000001000, x15, 792, x22)

# rs1_val == -1099511627777, rs2_val == -134217729
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0xfffffffff7ffffff, x15, 800, x22)

# rs1_val == -2199023255553, rs2_val == 2305843009213693952
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x2000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0x2000000000000000, x15, 808, x22)

# rs1_val == -4398046511105, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xc000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0xc000000000000000, x15, 816, x22)

# rs1_val == -17592186044417, rs2_val == 16384
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000004000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0x0000000000004000, x15, 824, x22)

# rs1_val == -35184372088833, rs2_val == 4611686018427387904
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x4000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0x4000000000000000, x15, 832, x22)

# rs1_val == -70368744177665, rs2_val == 17592186044416
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000100000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0x0000100000000000, x15, 840, x22)

# rs1_val == -140737488355329, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0xfffffff7ffffffff, x15, 848, x22)

# rs1_val == -281474976710657, rs2_val == -137438953473
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0xffffffdfffffffff, x15, 856, x22)

# rs1_val == -562949953421313, rs2_val == -1048577
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0xffffffffffefffff, x15, 864, x22)

# rs1_val == -1125899906842625, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xffffffffbfffffff, x15, 872, x22)

# rs1_val == -2251799813685249, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x8000000000000000, x15, 880, x22)

# rs1_val == -9007199254740993, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0xfdffffffffffffff, x15, 888, x22)

# rs1_val == -18014398509481985, rs2_val == 256
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0x0000000000000100, x15, 896, x22)

# rs1_val == -36028797018963969, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x1000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0x1000000000000000, x15, 904, x22)

# rs1_val == -72057594037927937, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xfdffffffffffffff, x15, 912, x22)

# rs1_val == -144115188075855873, rs2_val == -17179869185
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0xfffffffbffffffff, x15, 920, x22)

# rs1_val == -288230376151711745, rs2_val == 9007199254740992
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0020000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0x0020000000000000, x15, 928, x22)

# rs1_val == -576460752303423489, rs2_val == 16777216
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000001000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0x0000000001000000, x15, 936, x22)

# rs1_val == -1152921504606846977, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0xffdfffffffffffff, x15, 944, x22)

# rs1_val == -2305843009213693953, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0x0000000000000008, x15, 952, x22)

# rs1_val == -4611686018427387905, rs2_val == 18014398509481984
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0x0040000000000000, x15, 960, x22)

# rs1_val == 6148914691236517205, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xffffffffffefffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xffffffffffefffff, x15, 968, x22)

# rs2_val == 2, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0x0000000000000002, x15, 976, x22)

# rs2_val == 16, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000010
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0x0000000000000010, x15, 984, x22)

# rs2_val == 32, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000020
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0x0000000000000020, x15, 992, x22)

# rs2_val == 64, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000040
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0x0000000000000040, x15, 1000, x22)

# rs2_val == 1024, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000400
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x0000000000000400, x15, 1008, x22)

# rs2_val == 8192, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000002000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0x0000000000002000, x15, 1016, x22)

# rs2_val == 32768, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000008000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0x0000000000008000, x15, 1024, x22)

# rs2_val == 262144, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000040000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0x0000000000040000, x15, 1032, x22)

# rs2_val == 524288, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000080000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0x0000000000080000, x15, 1040, x22)

# rs2_val == 8388608, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000800000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0x0000000000800000, x15, 1048, x22)

# rs2_val == 33554432, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000002000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x0000000002000000, x15, 1056, x22)

# rs2_val == 1073741824, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000000040000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000000, 0x0000000040000000, x15, 1064, x22)

# rs2_val == 4294967296, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0x0000000100000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000005, 0x0000000100000000, x15, 1072, x22)

# rs2_val == 8589934592, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000200000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0x0000000200000000, x15, 1080, x22)

# rs2_val == 1125899906842624, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0004000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0x0004000000000000, x15, 1088, x22)

# rs2_val == 2251799813685248, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0008000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000008, 0x0008000000000000, x15, 1096, x22)

# rs2_val == 36028797018963968, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0080000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0x0080000000000000, x15, 1104, x22)

# rs2_val == 72057594037927936, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0100000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0x0100000000000000, x15, 1112, x22)

# rs2_val == 144115188075855872, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0200000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0x0200000000000000, x15, 1120, x22)

# rs2_val == 576460752303423488, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0800000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0x0800000000000000, x15, 1128, x22)

# rs2_val == -5, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0xfffffffffffffffb
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000100, 0xfffffffffffffffb, x15, 1136, x22)

# rs2_val == -17, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffffffffffef
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xffffffffffffffef, x15, 1144, x22)

# rs2_val == -33, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0xffffffffffffffdf, x15, 1152, x22)

# rs2_val == -2049, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0xfffffffffffff7ff, x15, 1160, x22)

# rs2_val == -4097, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xffffffffffffefff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0xffffffffffffefff, x15, 1168, x22)

# rs2_val == -16385, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffffffffffbfff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xffffffffffffbfff, x15, 1176, x22)

# rs2_val == -32769, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000008000;  op2val:0xffffffffffff7fff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000008000, 0xffffffffffff7fff, x15, 1184, x22)

# rs2_val == -65537, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0xfffffffffffeffff, x15, 1192, x22)

# rs2_val == -262145, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xfffffffffffbffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000001, 0xfffffffffffbffff, x15, 1200, x22)

# rs2_val == -2097153, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0xffffffffffdfffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000400, 0xffffffffffdfffff, x15, 1208, x22)

# rs2_val == -16777217, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0xfffffffffeffffff, x15, 1216, x22)

# rs2_val == -33554433, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xfffffffffdffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000400000, 0xfffffffffdffffff, x15, 1224, x22)

# rs2_val == -536870913, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xffffffffdfffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0xffffffffdfffffff, x15, 1232, x22)

# rs2_val == -4294967297, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0xfffffffeffffffff, x15, 1240, x22)

# rs2_val == -8589934593, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xfffffffdffffffff, x15, 1248, x22)

# rs2_val == 68719476736, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000001000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000001000000000, x15, 1256, x22)

# rs2_val == 137438953472, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0x0000002000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000005, 0x0000002000000000, x15, 1264, x22)

# rs2_val == 549755813888, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000008000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0x0000008000000000, x15, 1272, x22)

# rs2_val == 1099511627776, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000010000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0x0000010000000000, x15, 1280, x22)

# rs2_val == -2199023255553, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffdffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xfffffdffffffffff, x15, 1288, x22)

# rs2_val == -4398046511105, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xfffffbffffffffff, x15, 1296, x22)

# rs2_val == -8796093022209, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0xfffff7ffffffffff, x15, 1304, x22)

# rs2_val == -35184372088833, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xffffdfffffffffff, x15, 1312, x22)

# rs2_val == 281474976710656, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0001000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x0001000000000000, x15, 1320, x22)

# rs2_val == -562949953421313, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffdffffffffffff
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0xfffdffffffffffff, x15, 1328, x22)

# rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000000000006
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0x0000000000000006, x15, 1336, x22)

# rs1_val == 0, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000000000000003
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000000, 0x0000000000000003, x15, 1344, x22)

# rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 134217728
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000008000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000001, 0x0000000008000000, x15, 1352, x22)

# rs2_val == (-2**(xlen-1)), rs1_val == 8796093022208, rs2_val == -9223372036854775808
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x8000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x8000000000000000, x15, 1360, x22)

# rs2_val == 1, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000001
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0x0000000000000001, x15, 1368, x22)

# rs1_val == 64, rs2_val == -65
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0xffffffffffffffbf
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000000040, 0xffffffffffffffbf, x15, 1376, x22)

# rs1_val == 524288, 
# opcode: div ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x8000000000000000
TEST_RR_OP(div, x12, x10, x11, 0x0000000000000000, 0x0000000000080000, 0x8000000000000000, x15, 1384, x22)
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

signature_x24_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x24_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x15_0:
    .fill 174*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
