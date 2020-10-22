
#This assembly file tests the sub instruction of the RISC-V I extension for the sub covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sub)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 == rd != rs2, rs1==x2, rs2==x8, rd==x2, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs2_val == -4611686018427387905, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: sub ; op1:x2; op2:x8; dest:x2; op1val:0x8000000000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x2, x2, x8, 0xc000000000000001, 0x8000000000000000, 0xbfffffffffffffff, x1, 0, x9)

# rs1 == rs2 != rd, rs1==x13, rs2==x13, rd==x24, rs1_val == 0, rs2_val == 8192
# opcode: sub ; op1:x13; op2:x13; dest:x24; op1val:0x0000000000000000;  op2val:0x0000000000002000
TEST_RR_OP(sub, x24, x13, x13, 0xffffffffffffe000, 0x0000000000000000, 0x0000000000002000, x1, 8, x9)

# rs2 == rd != rs1, rs1==x0, rs2==x12, rd==x12, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs1_val == 9223372036854775807, rs2_val == 4294967296
# opcode: sub ; op1:x0; op2:x12; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000100000000
TEST_RR_OP(sub, x12, x0, x12, 0x7ffffffeffffffff, 0x7fffffffffffffff, 0x0000000100000000, x1, 16, x9)

# rs1 == rs2 == rd, rs1==x18, rs2==x18, rd==x18, rs1_val == 1, rs1_val > 0 and rs2_val < 0, rs2_val == -4194305
# opcode: sub ; op1:x18; op2:x18; dest:x18; op1val:0x0000000000000001;  op2val:0xffffffffffbfffff
TEST_RR_OP(sub, x18, x18, x18, 0x400002, 0x0000000000000001, 0xffffffffffbfffff, x1, 24, x9)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x10, rs2==x14, rd==x6, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode: sub ; op1:x10; op2:x14; dest:x6; op1val:0xc000000000000000;  op2val:0x8000000000000000
TEST_RR_OP(sub, x6, x10, x14, 0x4000000000000000, 0xc000000000000000, 0x8000000000000000, x1, 32, x9)

# rs1==x14, rs2==x4, rd==x31, rs2_val == 0, rs1_val == 33554432
# opcode: sub ; op1:x14; op2:x4; dest:x31; op1val:0x0000000002000000;  op2val:0x0000000000000000
TEST_RR_OP(sub, x31, x14, x4, 0x2000000, 0x0000000002000000, 0x0000000000000000, x1, 40, x9)

# rs1==x4, rs2==x5, rd==x15, rs2_val == (2**(xlen-1)-1), rs1_val == -65, rs1_val < 0 and rs2_val > 0, rs2_val == 9223372036854775807
# opcode: sub ; op1:x4; op2:x5; dest:x15; op1val:0xffffffffffffffbf;  op2val:0x7fffffffffffffff
TEST_RR_OP(sub, x15, x4, x5, 0x7fffffffffffffc0, 0xffffffffffffffbf, 0x7fffffffffffffff, x1, 48, x9)

# rs1==x29, rs2==x28, rd==x14, rs2_val == 1, rs1_val == -274877906945
# opcode: sub ; op1:x29; op2:x28; dest:x14; op1val:0xffffffbfffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sub, x14, x29, x28, 0xffffffbffffffffe, 0xffffffbfffffffff, 0x0000000000000001, x1, 56, x9)

# rs1==x7, rs2==x10, rd==x30, rs1_val == rs2_val, rs1_val == -137438953473, rs2_val == -137438953473
# opcode: sub ; op1:x7; op2:x10; dest:x30; op1val:0xffffffdfffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(sub, x30, x7, x10, 0x0, 0xffffffdfffffffff, 0xffffffdfffffffff, x1, 64, x9)

# rs1==x16, rs2==x19, rd==x22, rs1_val == 2, rs2_val == 36028797018963968
# opcode: sub ; op1:x16; op2:x19; dest:x22; op1val:0x0000000000000002;  op2val:0x0080000000000000
TEST_RR_OP(sub, x22, x16, x19, 0xff80000000000002, 0x0000000000000002, 0x0080000000000000, x1, 72, x9)

# rs1==x20, rs2==x22, rd==x19, rs1_val == 4, rs2_val == -288230376151711745
# opcode: sub ; op1:x20; op2:x22; dest:x19; op1val:0x0000000000000004;  op2val:0xfbffffffffffffff
TEST_RR_OP(sub, x19, x20, x22, 0x400000000000005, 0x0000000000000004, 0xfbffffffffffffff, x1, 80, x9)

# rs1==x23, rs2==x31, rd==x13, rs1_val == 8, rs2_val == -17
# opcode: sub ; op1:x23; op2:x31; dest:x13; op1val:0x0000000000000008;  op2val:0xffffffffffffffef
TEST_RR_OP(sub, x13, x23, x31, 0x19, 0x0000000000000008, 0xffffffffffffffef, x1, 88, x9)

# rs1==x12, rs2==x25, rd==x27, rs1_val == 16, 
# opcode: sub ; op1:x12; op2:x25; dest:x27; op1val:0x0000000000000010;  op2val:0xffffffffffffffff
TEST_RR_OP(sub, x27, x12, x25, 0x11, 0x0000000000000010, 0xffffffffffffffff, x1, 96, x9)

# rs1==x6, rs2==x17, rd==x0, rs1_val == 32, rs2_val == -5
# opcode: sub ; op1:x6; op2:x17; dest:x0; op1val:0x0000000000000020;  op2val:0xfffffffffffffffb
TEST_RR_OP(sub, x0, x6, x17, 0x25, 0x0000000000000020, 0xfffffffffffffffb, x1, 104, x9)

# rs1==x30, rs2==x0, rd==x4, rs1_val == 64, rs2_val == 256
# opcode: sub ; op1:x30; op2:x0; dest:x4; op1val:0x0000000000000040;  op2val:0x0000000000000100
TEST_RR_OP(sub, x4, x30, x0, 0xffffffffffffff40, 0x0000000000000040, 0x0000000000000100, x1, 112, x9)

# rs1==x3, rs2==x15, rd==x20, rs1_val == 128, rs2_val == 32
# opcode: sub ; op1:x3; op2:x15; dest:x20; op1val:0x0000000000000080;  op2val:0x0000000000000020
TEST_RR_OP(sub, x20, x3, x15, 0x60, 0x0000000000000080, 0x0000000000000020, x1, 120, x9)

# rs1==x22, rs2==x23, rd==x3, rs1_val == 256, rs2_val == 524288
# opcode: sub ; op1:x22; op2:x23; dest:x3; op1val:0x0000000000000100;  op2val:0x0000000000080000
TEST_RR_OP(sub, x3, x22, x23, 0xfffffffffff80100, 0x0000000000000100, 0x0000000000080000, x1, 128, x9)

# rs1==x8, rs2==x11, rd==x26, rs1_val == 512, rs2_val == -2049
# opcode: sub ; op1:x8; op2:x11; dest:x26; op1val:0x0000000000000200;  op2val:0xfffffffffffff7ff
TEST_RR_OP(sub, x26, x8, x11, 0xa01, 0x0000000000000200, 0xfffffffffffff7ff, x1, 136, x9)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x15, rs2==x2, rd==x16, rs1_val == 1024, rs2_val == -4503599627370497
# opcode: sub ; op1:x15; op2:x2; dest:x16; op1val:0x0000000000000400;  op2val:0xffefffffffffffff
TEST_RR_OP(sub, x16, x15, x2, 0x10000000000401, 0x0000000000000400, 0xffefffffffffffff, x4, 0, x13)

# rs1==x9, rs2==x20, rd==x28, rs1_val == 2048, rs2_val == -562949953421313
# opcode: sub ; op1:x9; op2:x20; dest:x28; op1val:0x0000000000000800;  op2val:0xfffdffffffffffff
TEST_RR_OP(sub, x28, x9, x20, 0x2000000000801, 0x0000000000000800, 0xfffdffffffffffff, x4, 8, x13)

# rs1==x31, rs2==x1, rd==x10, rs1_val == 4096, 
# opcode: sub ; op1:x31; op2:x1; dest:x10; op1val:0x0000000000001000;  op2val:0x0000000000000009
TEST_RR_OP(sub, x10, x31, x1, 0xff7, 0x0000000000001000, 0x0000000000000009, x4, 16, x13)

# rs1==x28, rs2==x16, rd==x7, rs1_val == 8192, rs2_val == -18014398509481985
# opcode: sub ; op1:x28; op2:x16; dest:x7; op1val:0x0000000000002000;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x7, x28, x16, 0x40000000002001, 0x0000000000002000, 0xffbfffffffffffff, x4, 24, x13)

# rs1==x25, rs2==x7, rd==x8, rs1_val == 16384, rs2_val == -524289
# opcode: sub ; op1:x25; op2:x7; dest:x8; op1val:0x0000000000004000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(sub, x8, x25, x7, 0x84001, 0x0000000000004000, 0xfffffffffff7ffff, x4, 32, x13)

# rs1==x21, rs2==x26, rd==x29, rs1_val == 32768, rs2_val == -140737488355329
# opcode: sub ; op1:x21; op2:x26; dest:x29; op1val:0x0000000000008000;  op2val:0xffff7fffffffffff
TEST_RR_OP(sub, x29, x21, x26, 0x800000008001, 0x0000000000008000, 0xffff7fffffffffff, x4, 40, x13)

# rs1==x17, rs2==x27, rd==x21, rs1_val == 65536, rs2_val == 4503599627370496
# opcode: sub ; op1:x17; op2:x27; dest:x21; op1val:0x0000000000010000;  op2val:0x0010000000000000
TEST_RR_OP(sub, x21, x17, x27, 0xfff0000000010000, 0x0000000000010000, 0x0010000000000000, x4, 48, x13)

# rs1==x5, rs2==x6, rd==x17, rs1_val == 131072, rs2_val == -1025
# opcode: sub ; op1:x5; op2:x6; dest:x17; op1val:0x0000000000020000;  op2val:0xfffffffffffffbff
TEST_RR_OP(sub, x17, x5, x6, 0x20401, 0x0000000000020000, 0xfffffffffffffbff, x4, 56, x13)

# rs1==x24, rs2==x29, rd==x23, rs1_val == 262144, rs2_val == -6148914691236517206
# opcode: sub ; op1:x24; op2:x29; dest:x23; op1val:0x0000000000040000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sub, x23, x24, x29, 0x5555555555595556, 0x0000000000040000, 0xaaaaaaaaaaaaaaaa, x4, 64, x13)

# rs1==x26, rs2==x9, rd==x5, rs1_val == 524288, rs2_val == -9007199254740993
# opcode: sub ; op1:x26; op2:x9; dest:x5; op1val:0x0000000000080000;  op2val:0xffdfffffffffffff
TEST_RR_OP(sub, x5, x26, x9, 0x20000000080001, 0x0000000000080000, 0xffdfffffffffffff, x4, 72, x13)

# rs1==x19, rs2==x24, rd==x9, rs1_val == 1048576, rs2_val == -8589934593
# opcode: sub ; op1:x19; op2:x24; dest:x9; op1val:0x0000000000100000;  op2val:0xfffffffdffffffff
TEST_RR_OP(sub, x9, x19, x24, 0x200100001, 0x0000000000100000, 0xfffffffdffffffff, x4, 80, x13)

# rs1==x11, rs2==x3, rd==x1, rs1_val == 2097152, 
# opcode: sub ; op1:x11; op2:x3; dest:x1; op1val:0x0000000000200000;  op2val:0x0000000000000001
TEST_RR_OP(sub, x1, x11, x3, 0x1fffff, 0x0000000000200000, 0x0000000000000001, x4, 88, x13)

# rs1==x27, rs2==x21, rd==x11, rs1_val == 4194304, 
# opcode: sub ; op1:x27; op2:x21; dest:x11; op1val:0x0000000000400000;  op2val:0xfffffffffffffbff
TEST_RR_OP(sub, x11, x27, x21, 0x400401, 0x0000000000400000, 0xfffffffffffffbff, x4, 96, x13)

# rs1==x1, rs2==x30, rd==x25, rs1_val == 8388608, 
# opcode: sub ; op1:x1; op2:x30; dest:x25; op1val:0x0000000000800000;  op2val:0x0000000000080000
TEST_RR_OP(sub, x25, x1, x30, 0x780000, 0x0000000000800000, 0x0000000000080000, x4, 104, x13)

# rs1_val == 16777216, rs2_val == -513
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(sub, x12, x10, x11, 0x1000201, 0x0000000001000000, 0xfffffffffffffdff, x4, 112, x13)

# rs1_val == 67108864, rs2_val == 1048576
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000100000
TEST_RR_OP(sub, x12, x10, x11, 0x3f00000, 0x0000000004000000, 0x0000000000100000, x4, 120, x13)

# rs1_val == 134217728, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000005
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffb, 0x0000000008000000, 0x0000000000000005, x4, 128, x13)

# rs1_val == 268435456, rs2_val == 1099511627776
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000010000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffff0010000000, 0x0000000010000000, 0x0000010000000000, x4, 136, x13)

# rs1_val == 536870912, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x20000020000001, 0x0000000020000000, 0xffdfffffffffffff, x4, 144, x13)

# rs1_val == 1073741824, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000009
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffff7, 0x0000000040000000, 0x0000000000000009, x4, 152, x13)

# rs1_val == 2147483648, rs2_val == 288230376151711744
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0400000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfc00000080000000, 0x0000000080000000, 0x0400000000000000, x4, 160, x13)

# rs1_val == 4294967296, rs2_val == 512
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000200
TEST_RR_OP(sub, x12, x10, x11, 0xfffffe00, 0x0000000100000000, 0x0000000000000200, x4, 168, x13)

# rs1_val == 8589934592, rs2_val == -1152921504606846977
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xefffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000000200000001, 0x0000000200000000, 0xefffffffffffffff, x4, 176, x13)

# rs1_val == 17179869184, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(sub, x12, x10, x11, 0x400000005, 0x0000000400000000, 0xfffffffffffffffb, x4, 184, x13)

# rs1_val == 34359738368, rs2_val == 1024
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000400
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffc00, 0x0000000800000000, 0x0000000000000400, x4, 192, x13)

# rs1_val == 68719476736, rs2_val == -2199023255553
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x21000000001, 0x0000001000000000, 0xfffffdffffffffff, x4, 200, x13)

# rs1_val == 137438953472, rs2_val == 34359738368
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000800000000
TEST_RR_OP(sub, x12, x10, x11, 0x1800000000, 0x0000002000000000, 0x0000000800000000, x4, 208, x13)

# rs1_val == 274877906944, rs2_val == 2
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000002
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffffe, 0x0000004000000000, 0x0000000000000002, x4, 216, x13)

# rs1_val == 549755813888, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000010000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffff8000000000, 0x0000008000000000, 0x0000010000000000, x4, 224, x13)

# rs1_val == 1099511627776, rs2_val == 4
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000004
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffc, 0x0000010000000000, 0x0000000000000004, x4, 232, x13)

# rs1_val == 2199023255552, rs2_val == 64
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000040
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffffffc0, 0x0000020000000000, 0x0000000000000040, x4, 240, x13)

# rs1_val == 4398046511104, rs2_val == 2305843009213693952
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x2000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xe000040000000000, 0x0000040000000000, 0x2000000000000000, x4, 248, x13)

# rs1_val == 8796093022208, rs2_val == 8
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000000008
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffffff8, 0x0000080000000000, 0x0000000000000008, x4, 256, x13)

# rs1_val == 17592186044416, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000008
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffff8, 0x0000100000000000, 0x0000000000000008, x4, 264, x13)

# rs1_val == 35184372088832, rs2_val == -144115188075855873
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x200200000000001, 0x0000200000000000, 0xfdffffffffffffff, x4, 272, x13)

# rs1_val == 70368744177664, rs2_val == 70368744177664
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000400000000000
TEST_RR_OP(sub, x12, x10, x11, 0x0, 0x0000400000000000, 0x0000400000000000, x4, 280, x13)

# rs1_val == 140737488355328, rs2_val == -34359738369
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x800800000001, 0x0000800000000000, 0xfffffff7ffffffff, x4, 288, x13)

# rs1_val == 281474976710656, rs2_val == -16777217
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000001000001, 0x0001000000000000, 0xfffffffffeffffff, x4, 296, x13)

# rs1_val == 562949953421312, rs2_val == 2097152
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000200000
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffffe00000, 0x0002000000000000, 0x0000000000200000, x4, 304, x13)

# rs1_val == 1125899906842624, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000400
TEST_RR_OP(sub, x12, x10, x11, 0x3fffffffffc00, 0x0004000000000000, 0x0000000000000400, x4, 312, x13)

# rs1_val == 2251799813685248, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000000200000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffffe00000, 0x0008000000000000, 0x0000000000200000, x4, 320, x13)

# rs1_val == 4503599627370496, rs2_val == -17179869185
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x10000400000001, 0x0010000000000000, 0xfffffffbffffffff, x4, 328, x13)

# rs1_val == 9007199254740992, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000001
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffffffffff, 0x0020000000000000, 0x0000000000000001, x4, 336, x13)

# rs1_val == 18014398509481984, rs2_val == -8796093022209
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x40080000000001, 0x0040000000000000, 0xfffff7ffffffffff, x4, 344, x13)

# rs1_val == 36028797018963968, rs2_val == 32768
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000008000
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffffff8000, 0x0080000000000000, 0x0000000000008000, x4, 352, x13)

# rs1_val == 72057594037927936, rs2_val == 1152921504606846976
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x1000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xf100000000000000, 0x0100000000000000, 0x1000000000000000, x4, 360, x13)

# rs1_val == 144115188075855872, rs2_val == -1099511627777
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x200010000000001, 0x0200000000000000, 0xfffffeffffffffff, x4, 368, x13)

# rs1_val == 288230376151711744, rs2_val == -65537
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfffffffffffeffff
TEST_RR_OP(sub, x12, x10, x11, 0x400000000010001, 0x0400000000000000, 0xfffffffffffeffff, x4, 376, x13)

# rs1_val == 576460752303423488, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000002000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffffffffe000, 0x0800000000000000, 0x0000000000002000, x4, 384, x13)

# rs1_val == 1152921504606846976, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(sub, x12, x10, x11, 0x1000000000000201, 0x1000000000000000, 0xfffffffffffffdff, x4, 392, x13)

# rs1_val == 2305843009213693952, rs2_val == -16385
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffffbfff
TEST_RR_OP(sub, x12, x10, x11, 0x2000000000004001, 0x2000000000000000, 0xffffffffffffbfff, x4, 400, x13)

# rs1_val == 4611686018427387904, rs2_val == -9
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffffffffff7
TEST_RR_OP(sub, x12, x10, x11, 0x4000000000000009, 0x4000000000000000, 0xfffffffffffffff7, x4, 408, x13)

# rs1_val == -2, rs2_val == -2
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfffffffffffffffe
TEST_RR_OP(sub, x12, x10, x11, 0x0, 0xfffffffffffffffe, 0xfffffffffffffffe, x4, 416, x13)

# rs1_val == -3, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffffffffffffffb
TEST_RR_OP(sub, x12, x10, x11, 0x2, 0xfffffffffffffffd, 0xfffffffffffffffb, x4, 424, x13)

# rs1_val == -5, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffffffffffffff8
TEST_RR_OP(sub, x12, x10, x11, 0x3, 0xfffffffffffffffb, 0xfffffffffffffff8, x4, 432, x13)

# rs1_val == -9, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000200
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffffdf7, 0xfffffffffffffff7, 0x0000000000000200, x4, 440, x13)

# rs1_val == -17, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xfffffffffffffdff
TEST_RR_OP(sub, x12, x10, x11, 0x1f0, 0xffffffffffffffef, 0xfffffffffffffdff, x4, 448, x13)

# rs1_val == -33, rs2_val == 68719476736
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000001000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffefffffffdf, 0xffffffffffffffdf, 0x0000001000000000, x4, 456, x13)

# rs1_val == -129, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000200000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffdfff7f, 0xffffffffffffff7f, 0x0000000000200000, x4, 464, x13)

# rs1_val == -257, rs2_val == 268435456
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000010000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffeffffeff, 0xfffffffffffffeff, 0x0000000010000000, x4, 472, x13)

# rs1_val == -513, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x2000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xdffffffffffffdff, 0xfffffffffffffdff, 0x2000000000000000, x4, 480, x13)

# rs2_val == -1125899906842625, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0xfffbffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4000000000201, 0x0000000000000200, 0xfffbffffffffffff, x4, 488, x13)

# rs2_val == -2251799813685249, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x8000000100001, 0x0000000000100000, 0xfff7ffffffffffff, x4, 496, x13)

# rs2_val == -36028797018963969, rs1_val == 6148914691236517205
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xff7fffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x55d5555555555556, 0x5555555555555555, 0xff7fffffffffffff, x4, 504, x13)

# rs2_val == -72057594037927937, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfeffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffe0, 0xffffffffffffffdf, 0xfeffffffffffffff, x4, 512, x13)

# rs2_val == -576460752303423489, rs1_val == -18014398509481985
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7c0000000000000, 0xffbfffffffffffff, 0xf7ffffffffffffff, x4, 520, x13)

# rs2_val == -2305843009213693953, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2000400000000001, 0x0000400000000000, 0xdfffffffffffffff, x4, 528, x13)

# rs2_val == 6148914691236517205, rs1_val == -144115188075855873
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(sub, x12, x10, x11, 0xa8aaaaaaaaaaaaaa, 0xfdffffffffffffff, 0x5555555555555555, x4, 536, x13)

# rs1_val == -1025, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000400
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffff7ff, 0xfffffffffffffbff, 0x0000000000000400, x4, 544, x13)

# rs1_val == -2049, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000800000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff7fffff7ff, 0xfffffffffffff7ff, 0x0000000800000000, x4, 552, x13)

# rs1_val == -4097, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xefffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffff000, 0xffffffffffffefff, 0xefffffffffffffff, x4, 560, x13)

# rs1_val == -8193, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xfffffffffffffff9
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffe006, 0xffffffffffffdfff, 0xfffffffffffffff9, x4, 568, x13)

# rs1_val == -16385, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xffefffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffc000, 0xffffffffffffbfff, 0xffefffffffffffff, x4, 576, x13)

# rs1_val == -32769, rs2_val == -134217729
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ff8000, 0xffffffffffff7fff, 0xfffffffff7ffffff, x4, 584, x13)

# rs1_val == -65537, rs2_val == 9007199254740992
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0020000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffdffffffffeffff, 0xfffffffffffeffff, 0x0020000000000000, x4, 592, x13)

# rs1_val == -131073, rs2_val == -17592186044417
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xffffefffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffe0000, 0xfffffffffffdffff, 0xffffefffffffffff, x4, 600, x13)

# rs1_val == -262145, rs2_val == -2147483649
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ffc0000, 0xfffffffffffbffff, 0xffffffff7fffffff, x4, 608, x13)

# rs1_val == -524289, rs2_val == 144115188075855872
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0200000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfdfffffffff7ffff, 0xfffffffffff7ffff, 0x0200000000000000, x4, 616, x13)

# rs1_val == -1048577, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ff00000, 0xffffffffffefffff, 0xffffffff7fffffff, x4, 624, x13)

# rs1_val == -2097153, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x5555555555555555
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaaaaaaa8aaaaa, 0xffffffffffdfffff, 0x5555555555555555, x4, 632, x13)

# rs1_val == -4194305, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000002000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffbfdfff, 0xffffffffffbfffff, 0x0000000000002000, x4, 640, x13)

# rs1_val == -8388609, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffffff800000, 0xffffffffff7fffff, 0xf7ffffffffffffff, x4, 648, x13)

# rs1_val == -16777217, rs2_val == -131073
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffff020000, 0xfffffffffeffffff, 0xfffffffffffdffff, x4, 656, x13)

# rs1_val == -33554433, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000400
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffdfffbff, 0xfffffffffdffffff, 0x0000000000000400, x4, 664, x13)

# rs1_val == -67108865, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xc000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffffbffffff, 0xfffffffffbffffff, 0xc000000000000000, x4, 672, x13)

# rs1_val == -134217729, rs2_val == 2251799813685248
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0008000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfff7fffff7ffffff, 0xfffffffff7ffffff, 0x0008000000000000, x4, 680, x13)

# rs1_val == -268435457, rs2_val == 1125899906842624
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0004000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffbffffefffffff, 0xffffffffefffffff, 0x0004000000000000, x4, 688, x13)

# rs1_val == -536870913, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffe0000000, 0xffffffffdfffffff, 0xfffdffffffffffff, x4, 696, x13)

# rs1_val == -1073741825, rs2_val == 576460752303423488
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0800000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xf7ffffffbfffffff, 0xffffffffbfffffff, 0x0800000000000000, x4, 704, x13)

# rs1_val == -2147483649, rs2_val == 35184372088832
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000200000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffdfff7fffffff, 0xffffffff7fffffff, 0x0000200000000000, x4, 712, x13)

# rs1_val == -4294967297, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0080000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xff7ffffeffffffff, 0xfffffffeffffffff, 0x0080000000000000, x4, 720, x13)

# rs1_val == -8589934593, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfe00000000, 0xfffffffdffffffff, 0xfffffeffffffffff, x4, 728, x13)

# rs1_val == -17179869185, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sub, x12, x10, x11, 0x5555555155555555, 0xfffffffbffffffff, 0xaaaaaaaaaaaaaaaa, x4, 736, x13)

# rs1_val == -34359738369, rs2_val == 140737488355328
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000800000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffff7ff7ffffffff, 0xfffffff7ffffffff, 0x0000800000000000, x4, 744, x13)

# rs1_val == -68719476737, rs2_val == -2097153
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff000200000, 0xffffffefffffffff, 0xffffffffffdfffff, x4, 752, x13)

# rs1_val == -549755813889, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0020000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffdfff7fffffffff, 0xffffff7fffffffff, 0x0020000000000000, x4, 760, x13)

# rs1_val == -1099511627777, rs2_val == 65536
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000000010000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffefffffeffff, 0xfffffeffffffffff, 0x0000000000010000, x4, 768, x13)

# rs1_val == -2199023255553, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffe0200000000, 0xfffffdffffffffff, 0xfffffffdffffffff, x4, 776, x13)

# rs1_val == -4398046511105, rs2_val == -4097
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffc0000001000, 0xfffffbffffffffff, 0xffffffffffffefff, x4, 784, x13)

# rs1_val == -8796093022209, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffff80001000000, 0xfffff7ffffffffff, 0xfffffffffeffffff, x4, 792, x13)

# rs1_val == -17592186044417, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000400
TEST_RR_OP(sub, x12, x10, x11, 0xffffeffffffffbff, 0xffffefffffffffff, 0x0000000000000400, x4, 800, x13)

# rs1_val == -35184372088833, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfffffffffffffff8
TEST_RR_OP(sub, x12, x10, x11, 0xffffe00000000007, 0xffffdfffffffffff, 0xfffffffffffffff8, x4, 808, x13)

# rs1_val == -70368744177665, rs2_val == 4611686018427387904
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x4000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xbfffbfffffffffff, 0xffffbfffffffffff, 0x4000000000000000, x4, 816, x13)

# rs1_val == -140737488355329, rs2_val == -281474976710657
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x800000000000, 0xffff7fffffffffff, 0xfffeffffffffffff, x4, 824, x13)

# rs1_val == -281474976710657, rs2_val == 2048
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000800
TEST_RR_OP(sub, x12, x10, x11, 0xfffefffffffff7ff, 0xfffeffffffffffff, 0x0000000000000800, x4, 832, x13)

# rs1_val == -562949953421313, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0080000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xff7dffffffffffff, 0xfffdffffffffffff, 0x0080000000000000, x4, 840, x13)

# rs1_val == -2251799813685249, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfff8002000000000, 0xfff7ffffffffffff, 0xffffffdfffffffff, x4, 848, x13)

# rs1_val == -4503599627370497, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0200000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfdefffffffffffff, 0xffefffffffffffff, 0x0200000000000000, x4, 856, x13)

# rs1_val == -9007199254740993, rs2_val == -129
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(sub, x12, x10, x11, 0xffe0000000000080, 0xffdfffffffffffff, 0xffffffffffffff7f, x4, 864, x13)

# rs1_val == -36028797018963969, rs2_val == 4194304
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000400000
TEST_RR_OP(sub, x12, x10, x11, 0xff7fffffffbfffff, 0xff7fffffffffffff, 0x0000000000400000, x4, 872, x13)

# rs1_val == -72057594037927937, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sub, x12, x10, x11, 0xfefffffffffffff8, 0xfeffffffffffffff, 0x0000000000000007, x4, 880, x13)

# rs1_val == -288230376151711745, rs2_val == 72057594037927936
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfaffffffffffffff, 0xfbffffffffffffff, 0x0100000000000000, x4, 888, x13)

# rs1_val == -576460752303423489, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xf840000000000000, 0xf7ffffffffffffff, 0xffbfffffffffffff, x4, 896, x13)

# rs1_val == -1152921504606846977, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffffffffffffffef
TEST_RR_OP(sub, x12, x10, x11, 0xf000000000000010, 0xefffffffffffffff, 0xffffffffffffffef, x4, 904, x13)

# rs1_val == -2305843009213693953, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000200
TEST_RR_OP(sub, x12, x10, x11, 0xdffffffffffffdff, 0xdfffffffffffffff, 0x0000000000000200, x4, 912, x13)

# rs1_val == -4611686018427387905, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000010000000
TEST_RR_OP(sub, x12, x10, x11, 0xbfffffffefffffff, 0xbfffffffffffffff, 0x0000000010000000, x4, 920, x13)

# rs1_val == -6148914691236517206, rs2_val == -1073741825
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffffffffbfffffff
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaaaaaeaaaaaab, 0xaaaaaaaaaaaaaaaa, 0xffffffffbfffffff, x4, 928, x13)

# rs2_val == 16, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000000010
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffff7ef, 0xfffffffffffff7ff, 0x0000000000000010, x4, 936, x13)

# rs2_val == 128, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000000080
TEST_RR_OP(sub, x12, x10, x11, 0xfeffffffffffff7f, 0xfeffffffffffffff, 0x0000000000000080, x4, 944, x13)

# rs2_val == 4096, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0000000000001000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffefff, 0xffffffffffffffff, 0x0000000000001000, x4, 952, x13)

# rs2_val == 16384, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000004000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffc000, 0x0001000000000000, 0x0000000000004000, x4, 960, x13)

# rs2_val == 131072, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x0000000000020000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffe0200, 0x0000000000000200, 0x0000000000020000, x4, 968, x13)

# rs2_val == 262144, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000040000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffc0000, 0x0000008000000000, 0x0000000000040000, x4, 976, x13)

# rs2_val == 8388608, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000000800000
TEST_RR_OP(sub, x12, x10, x11, 0xfeffffffff7fffff, 0xfeffffffffffffff, 0x0000000000800000, x4, 984, x13)

# rs2_val == 16777216, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000001000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffeefffff, 0xffffffffffefffff, 0x0000000001000000, x4, 992, x13)

# rs2_val == 33554432, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000002000000
TEST_RR_OP(sub, x12, x10, x11, 0xf7fffffffdffffff, 0xf7ffffffffffffff, 0x0000000002000000, x4, 1000, x13)

# rs2_val == 67108864, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000004000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffff9ffffff, 0xfffffffffdffffff, 0x0000000004000000, x4, 1008, x13)

# rs2_val == 134217728, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000008000000
TEST_RR_OP(sub, x12, x10, x11, 0x7ff8000000, 0x0000008000000000, 0x0000000008000000, x4, 1016, x13)

# rs2_val == 536870912, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000020000000
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffe0000000, 0x0400000000000000, 0x0000000020000000, x4, 1024, x13)

# rs2_val == 1073741824, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000040000000
TEST_RR_OP(sub, x12, x10, x11, 0xfc0000000, 0x0000001000000000, 0x0000000040000000, x4, 1032, x13)

# rs2_val == 2147483648, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000080000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffff80020000, 0x0000000000020000, 0x0000000080000000, x4, 1040, x13)

# rs2_val == 8589934592, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000200000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffdf7ffffff, 0xfffffffff7ffffff, 0x0000000200000000, x4, 1048, x13)

# rs2_val == 17179869184, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(sub, x12, x10, x11, 0xdffffffbffffffff, 0xdfffffffffffffff, 0x0000000400000000, x4, 1056, x13)

# rs2_val == 18014398509481984, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0040000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffbffffffffffbff, 0xfffffffffffffbff, 0x0040000000000000, x4, 1064, x13)

# rs2_val == 562949953421312, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0002000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7e000000000000, 0x0080000000000000, 0x0002000000000000, x4, 1072, x13)

# rs2_val == -3, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(sub, x12, x10, x11, 0x4000000000000003, 0x4000000000000000, 0xfffffffffffffffd, x4, 1080, x13)

# rs2_val == -33, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffff00020, 0xffffffffffefffff, 0xffffffffffffffdf, x4, 1088, x13)

# rs2_val == -65, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xffffffffffffffbf
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffff40, 0xfffffffffffffeff, 0xffffffffffffffbf, x4, 1096, x13)

# rs2_val == -257, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffe0100, 0xfffffffffffdffff, 0xfffffffffffffeff, x4, 1104, x13)

# rs2_val == -8193, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(sub, x12, x10, x11, 0x200002001, 0x0000000200000000, 0xffffffffffffdfff, x4, 1112, x13)

# rs2_val == -32769, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffffffffffff7fff
TEST_RR_OP(sub, x12, x10, x11, 0x7fe0, 0xffffffffffffffdf, 0xffffffffffff7fff, x4, 1120, x13)

# rs2_val == -262145, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(sub, x12, x10, x11, 0x4040001, 0x0000000004000000, 0xfffffffffffbffff, x4, 1128, x13)

# rs2_val == 4398046511104, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000040000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffc0010000000, 0x0000000010000000, 0x0000040000000000, x4, 1136, x13)

# rs2_val == -1048577, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(sub, x12, x10, x11, 0x400000000100001, 0x0400000000000000, 0xffffffffffefffff, x4, 1144, x13)

# rs2_val == -8388609, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(sub, x12, x10, x11, 0xff80000000800000, 0xff7fffffffffffff, 0xffffffffff7fffff, x4, 1152, x13)

# rs2_val == -33554433, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0xfffffffffdffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffff7, 0xfffffffffffffff6, 0xfffffffffdffffff, x4, 1160, x13)

# rs2_val == -67108865, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff004000000, 0xffffffefffffffff, 0xfffffffffbffffff, x4, 1168, x13)

# rs2_val == -268435457, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xffffffffefffffff
TEST_RR_OP(sub, x12, x10, x11, 0x12000001, 0x0000000002000000, 0xffffffffefffffff, x4, 1176, x13)

# rs2_val == -536870913, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0xffffffffdfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x20040001, 0x0000000000040000, 0xffffffffdfffffff, x4, 1184, x13)

# rs2_val == -4294967297, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xfffffffeffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff0, 0xffffffffffffffef, 0xfffffffeffffffff, x4, 1192, x13)

# rs2_val == -68719476737, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xffffffefffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffe0001000000000, 0xffdfffffffffffff, 0xffffffefffffffff, x4, 1200, x13)

# rs2_val == 137438953472, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000002000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffe400000000, 0x0000000400000000, 0x0000002000000000, x4, 1208, x13)

# rs2_val == 274877906944, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000004000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffdffbfffffffff, 0xfffdffffffffffff, 0x0000004000000000, x4, 1216, x13)

# rs2_val == -274877906945, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4010000001, 0x0000000010000000, 0xffffffbfffffffff, x4, 1224, x13)

# rs2_val == 549755813888, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0x0000008000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffff8000000009, 0x0000000000000009, 0x0000008000000000, x4, 1232, x13)

# rs2_val == -549755813889, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0xffffff7fffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x8000000006, 0x0000000000000005, 0xffffff7fffffffff, x4, 1240, x13)

# rs2_val == 2199023255552, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000020000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffdfffff7ffff, 0xfffffffffff7ffff, 0x0000020000000000, x4, 1248, x13)

# rs2_val == -4398046511105, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffffbffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xe000040000000000, 0xdfffffffffffffff, 0xfffffbffffffffff, x4, 1256, x13)

# rs2_val == 8796093022208, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000080000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffff7fffffffbff, 0xfffffffffffffbff, 0x0000080000000000, x4, 1264, x13)

# rs2_val == 17592186044416, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000100000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffff00000000000, 0x8000000000000000, 0x0000100000000000, x4, 1272, x13)

# rs2_val == -35184372088833, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x200010000001, 0x0000000010000000, 0xffffdfffffffffff, x4, 1280, x13)

# rs2_val == -70368744177665, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffff00000, 0xffffffffffefffff, 0xffffbfffffffffff, x4, 1288, x13)

# rs2_val == 281474976710656, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0x0001000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffff000000004000, 0x0000000000004000, 0x0001000000000000, x4, 1296, x13)

# rs1_val == -1125899906842625, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(sub, x12, x10, x11, 0xfffc000000000001, 0xfffbffffffffffff, 0xfffffffffffffffe, x4, 1304, x13)

# rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs2_val == -4611686018427387905, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xc000000000000001, 0x8000000000000000, 0xbfffffffffffffff, x4, 1312, x13)

# rs1_val == 0, rs2_val == 8192
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000000000002000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffe000, 0x0000000000000000, 0x0000000000002000, x4, 1320, x13)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs1_val == 9223372036854775807, rs2_val == 4294967296
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000100000000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffffeffffffff, 0x7fffffffffffffff, 0x0000000100000000, x4, 1328, x13)

# rs1_val == 1, rs1_val > 0 and rs2_val < 0, rs2_val == -4194305
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xffffffffffbfffff
TEST_RR_OP(sub, x12, x10, x11, 0x400002, 0x0000000000000001, 0xffffffffffbfffff, x4, 1336, x13)

# rs1_val == 32, rs2_val == -5
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0xfffffffffffffffb
TEST_RR_OP(sub, x12, x10, x11, 0x25, 0x0000000000000020, 0xfffffffffffffffb, x4, 1344, x13)

# rs1_val == 64, rs2_val == 256
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0x0000000000000100
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffff40, 0x0000000000000040, 0x0000000000000100, x4, 1352, x13)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x4_0:
    .fill 170*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
