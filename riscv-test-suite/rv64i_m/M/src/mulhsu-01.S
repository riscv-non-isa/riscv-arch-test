
#This assembly file tests the mulhsu instruction of the RISC-V M extension for the mulhsu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mulhsu)

RVTEST_SIGBASE( x9,signature_x9_1)

# rs1 == rs2 != rd, rs1==x13, rs2==x13, rd==x22, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val, rs2_val == 65536
# opcode: mulhsu ; op1:x13; op2:x13; dest:x22; op1val:0x8000000000000000;  op2val:0x0000000000010000
TEST_RR_OP(mulhsu, x22, x13, x13, 0x0000000000000000, 0x8000000000000000, 0x0000000000010000, x9, 0, x18)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x23, rs2==x24, rd==x5, rs1_val == 0, rs2_val == 576460752303423488
# opcode: mulhsu ; op1:x23; op2:x24; dest:x5; op1val:0x0000000000000000;  op2val:0x0800000000000000
TEST_RR_OP(mulhsu, x5, x23, x24, 0x0000000000000000, 0x0000000000000000, 0x0800000000000000, x9, 8, x18)

# rs1 == rd != rs2, rs1==x14, rs2==x2, rd==x14, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs1_val == 9223372036854775807, rs2_val == 256
# opcode: mulhsu ; op1:x14; op2:x2; dest:x14; op1val:0x7fffffffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(mulhsu, x14, x14, x2, 0x0000000000000000, 0x7fffffffffffffff, 0x0000000000000100, x9, 16, x18)

# rs2 == rd != rs1, rs1==x4, rs2==x29, rd==x29, rs1_val == 1, rs1_val > 0 and rs2_val < 0, rs2_val == -65
# opcode: mulhsu ; op1:x4; op2:x29; dest:x29; op1val:0x0000000000000001;  op2val:0xffffffffffffffbf
TEST_RR_OP(mulhsu, x29, x4, x29, 0x0000000000000000, 0x0000000000000001, 0xffffffffffffffbf, x9, 24, x18)

# rs1 == rs2 == rd, rs1==x3, rs2==x3, rd==x3, rs2_val == (-2**(xlen-1)), rs1_val == -2251799813685249, rs1_val < 0 and rs2_val < 0, rs2_val == -9223372036854775808
# opcode: mulhsu ; op1:x3; op2:x3; dest:x3; op1val:0xfff7ffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(mulhsu, x3, x3, x3, 0x0000000000000000, 0xfff7ffffffffffff, 0x8000000000000000, x9, 32, x18)

# rs1==x30, rs2==x12, rd==x27, rs2_val == 0, rs1_val == -9007199254740993
# opcode: mulhsu ; op1:x30; op2:x12; dest:x27; op1val:0xffdfffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(mulhsu, x27, x30, x12, 0x0000000000000000, 0xffdfffffffffffff, 0x0000000000000000, x9, 40, x18)

# rs1==x15, rs2==x14, rd==x23, rs2_val == (2**(xlen-1)-1), rs1_val == 1152921504606846976, rs2_val == 9223372036854775807
# opcode: mulhsu ; op1:x15; op2:x14; dest:x23; op1val:0x1000000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(mulhsu, x23, x15, x14, 0x0000000000000000, 0x1000000000000000, 0x7fffffffffffffff, x9, 48, x18)

# rs1==x7, rs2==x27, rd==x11, rs2_val == 1, rs1_val == -4194305
# opcode: mulhsu ; op1:x7; op2:x27; dest:x11; op1val:0xffffffffffbfffff;  op2val:0x0000000000000001
TEST_RR_OP(mulhsu, x11, x7, x27, 0x0000000000000000, 0xffffffffffbfffff, 0x0000000000000001, x9, 56, x18)

# rs1==x19, rs2==x15, rd==x10, rs1_val == rs2_val, rs1_val == -144115188075855873, rs2_val == -144115188075855873
# opcode: mulhsu ; op1:x19; op2:x15; dest:x10; op1val:0xfdffffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(mulhsu, x10, x19, x15, 0x0000000000000000, 0xfdffffffffffffff, 0xfdffffffffffffff, x9, 64, x18)

# rs1==x20, rs2==x7, rd==x16, rs1_val == 2, rs2_val == 1125899906842624
# opcode: mulhsu ; op1:x20; op2:x7; dest:x16; op1val:0x0000000000000002;  op2val:0x0004000000000000
TEST_RR_OP(mulhsu, x16, x20, x7, 0x0000000000000000, 0x0000000000000002, 0x0004000000000000, x9, 72, x18)

# rs1==x21, rs2==x25, rd==x31, rs1_val == 4, rs2_val == 16
# opcode: mulhsu ; op1:x21; op2:x25; dest:x31; op1val:0x0000000000000004;  op2val:0x0000000000000010
TEST_RR_OP(mulhsu, x31, x21, x25, 0x0000000000000000, 0x0000000000000004, 0x0000000000000010, x9, 80, x18)

# rs1==x31, rs2==x4, rd==x25, rs1_val == 8, rs2_val == 36028797018963968
# opcode: mulhsu ; op1:x31; op2:x4; dest:x25; op1val:0x0000000000000008;  op2val:0x0080000000000000
TEST_RR_OP(mulhsu, x25, x31, x4, 0x0000000000000000, 0x0000000000000008, 0x0080000000000000, x9, 88, x18)

# rs1==x16, rs2==x21, rd==x17, rs1_val == 16, rs2_val == 262144
# opcode: mulhsu ; op1:x16; op2:x21; dest:x17; op1val:0x0000000000000010;  op2val:0x0000000000040000
TEST_RR_OP(mulhsu, x17, x16, x21, 0x0000000000000000, 0x0000000000000010, 0x0000000000040000, x9, 96, x18)

# rs1==x2, rs2==x30, rd==x12, rs1_val == 32, rs2_val == 268435456
# opcode: mulhsu ; op1:x2; op2:x30; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000010000000
TEST_RR_OP(mulhsu, x12, x2, x30, 0x0000000000000000, 0x0000000000000020, 0x0000000010000000, x9, 104, x18)

# rs1==x27, rs2==x0, rd==x6, rs1_val == 64, rs2_val == -1099511627777
# opcode: mulhsu ; op1:x27; op2:x0; dest:x6; op1val:0x0000000000000040;  op2val:0xfffffeffffffffff
TEST_RR_OP(mulhsu, x6, x27, x0, 0x0000000000000000, 0x0000000000000040, 0xfffffeffffffffff, x9, 112, x18)

# rs1==x10, rs2==x16, rd==x8, rs1_val == 128, rs2_val == -65537
# opcode: mulhsu ; op1:x10; op2:x16; dest:x8; op1val:0x0000000000000080;  op2val:0xfffffffffffeffff
TEST_RR_OP(mulhsu, x8, x10, x16, 0x0000000000000000, 0x0000000000000080, 0xfffffffffffeffff, x9, 120, x18)

# rs1==x26, rs2==x17, rd==x1, rs1_val == 256, rs2_val == 140737488355328
# opcode: mulhsu ; op1:x26; op2:x17; dest:x1; op1val:0x0000000000000100;  op2val:0x0000800000000000
TEST_RR_OP(mulhsu, x1, x26, x17, 0x0000000000000000, 0x0000000000000100, 0x0000800000000000, x9, 128, x18)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x17, rs2==x5, rd==x18, rs1_val == 512, rs2_val == 17179869184
# opcode: mulhsu ; op1:x17; op2:x5; dest:x18; op1val:0x0000000000000200;  op2val:0x0000000400000000
TEST_RR_OP(mulhsu, x18, x17, x5, 0x0000000000000000, 0x0000000000000200, 0x0000000400000000, x3, 0, x14)

# rs1==x6, rs2==x22, rd==x13, rs1_val == 1024, 
# opcode: mulhsu ; op1:x6; op2:x22; dest:x13; op1val:0x0000000000000400;  op2val:0x0000000000010000
TEST_RR_OP(mulhsu, x13, x6, x22, 0x0000000000000000, 0x0000000000000400, 0x0000000000010000, x3, 8, x14)

# rs1==x5, rs2==x11, rd==x0, rs1_val == 2048, 
# opcode: mulhsu ; op1:x5; op2:x11; dest:x0; op1val:0x0000000000000800;  op2val:0x0000000000000009
TEST_RR_OP(mulhsu, x0, x5, x11, 0x0000000000000000, 0x0000000000000800, 0x0000000000000009, x3, 16, x14)

# rs1==x8, rs2==x10, rd==x9, rs1_val == 4096, rs2_val == 1024
# opcode: mulhsu ; op1:x8; op2:x10; dest:x9; op1val:0x0000000000001000;  op2val:0x0000000000000400
TEST_RR_OP(mulhsu, x9, x8, x10, 0x0000000000000000, 0x0000000000001000, 0x0000000000000400, x3, 24, x14)

# rs1==x28, rs2==x8, rd==x26, rs1_val == 8192, 
# opcode: mulhsu ; op1:x28; op2:x8; dest:x26; op1val:0x0000000000002000;  op2val:0x0000000000000100
TEST_RR_OP(mulhsu, x26, x28, x8, 0x0000000000000000, 0x0000000000002000, 0x0000000000000100, x3, 32, x14)

# rs1==x24, rs2==x6, rd==x30, rs1_val == 16384, rs2_val == -2097153
# opcode: mulhsu ; op1:x24; op2:x6; dest:x30; op1val:0x0000000000004000;  op2val:0xffffffffffdfffff
TEST_RR_OP(mulhsu, x30, x24, x6, 0x0000000000000000, 0x0000000000004000, 0xffffffffffdfffff, x3, 40, x14)

# rs1==x12, rs2==x20, rd==x15, rs1_val == 32768, rs2_val == -1048577
# opcode: mulhsu ; op1:x12; op2:x20; dest:x15; op1val:0x0000000000008000;  op2val:0xffffffffffefffff
TEST_RR_OP(mulhsu, x15, x12, x20, 0x0000000000000000, 0x0000000000008000, 0xffffffffffefffff, x3, 48, x14)

# rs1==x9, rs2==x23, rd==x7, rs1_val == 65536, rs2_val == 35184372088832
# opcode: mulhsu ; op1:x9; op2:x23; dest:x7; op1val:0x0000000000010000;  op2val:0x0000200000000000
TEST_RR_OP(mulhsu, x7, x9, x23, 0x0000000000000000, 0x0000000000010000, 0x0000200000000000, x3, 56, x14)

# rs1==x22, rs2==x18, rd==x4, rs1_val == 131072, rs2_val == -34359738369
# opcode: mulhsu ; op1:x22; op2:x18; dest:x4; op1val:0x0000000000020000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(mulhsu, x4, x22, x18, 0x0000000000000000, 0x0000000000020000, 0xfffffff7ffffffff, x3, 64, x14)

# rs1==x29, rs2==x28, rd==x20, rs1_val == 262144, rs2_val == 131072
# opcode: mulhsu ; op1:x29; op2:x28; dest:x20; op1val:0x0000000000040000;  op2val:0x0000000000020000
TEST_RR_OP(mulhsu, x20, x29, x28, 0x0000000000000000, 0x0000000000040000, 0x0000000000020000, x3, 72, x14)

# rs1==x25, rs2==x19, rd==x21, rs1_val == 524288, rs2_val == -3
# opcode: mulhsu ; op1:x25; op2:x19; dest:x21; op1val:0x0000000000080000;  op2val:0xfffffffffffffffd
TEST_RR_OP(mulhsu, x21, x25, x19, 0x0000000000000000, 0x0000000000080000, 0xfffffffffffffffd, x3, 80, x14)

# rs1==x11, rs2==x1, rd==x19, rs1_val == 1048576, rs2_val == 33554432
# opcode: mulhsu ; op1:x11; op2:x1; dest:x19; op1val:0x0000000000100000;  op2val:0x0000000002000000
TEST_RR_OP(mulhsu, x19, x11, x1, 0x0000000000000000, 0x0000000000100000, 0x0000000002000000, x3, 88, x14)

# rs1==x1, rs2==x26, rd==x2, rs1_val == 2097152, rs2_val == -17
# opcode: mulhsu ; op1:x1; op2:x26; dest:x2; op1val:0x0000000000200000;  op2val:0xffffffffffffffef
TEST_RR_OP(mulhsu, x2, x1, x26, 0x0000000000000000, 0x0000000000200000, 0xffffffffffffffef, x3, 96, x14)

# rs1==x18, rs2==x9, rd==x28, rs1_val == 4194304, rs2_val == -35184372088833
# opcode: mulhsu ; op1:x18; op2:x9; dest:x28; op1val:0x0000000000400000;  op2val:0xffffdfffffffffff
TEST_RR_OP(mulhsu, x28, x18, x9, 0x0000000000000000, 0x0000000000400000, 0xffffdfffffffffff, x3, 104, x14)

# rs1==x0, rs2==x31, rd==x24, rs1_val == 8388608, rs2_val == 512
# opcode: mulhsu ; op1:x0; op2:x31; dest:x24; op1val:0x0000000000800000;  op2val:0x0000000000000200
TEST_RR_OP(mulhsu, x24, x0, x31, 0x0000000000000000, 0x0000000000800000, 0x0000000000000200, x3, 112, x14)

# rs1_val == 16777216, rs2_val == 1073741824
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000040000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000001000000, 0x0000000040000000, x3, 120, x1)

# rs1_val == 33554432, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xfffffffffffffffa
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000002000000, 0xfffffffffffffffa, x3, 128, x1)

# rs1_val == 67108864, rs2_val == -4294967297
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0xfffffffeffffffff, x3, 136, x1)

# rs1_val == 134217728, rs2_val == 281474976710656
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0001000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0x0001000000000000, x3, 144, x1)

# rs1_val == 268435456, rs2_val == -33554433
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xfffffffffdffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0xfffffffffdffffff, x3, 152, x1)

# rs1_val == 536870912, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000007
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0x0000000000000007, x3, 160, x1)

# rs1_val == 1073741824, rs2_val == -129
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0xffffffffffffff7f, x3, 168, x1)

# rs1_val == 2147483648, rs2_val == -4611686018427387905
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xbfffffffffffffff, x3, 176, x1)

# rs1_val == 4294967296, rs2_val == -137438953473
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0xffffffdfffffffff, x3, 184, x1)

# rs1_val == 8589934592, rs2_val == 4194304
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000400000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0x0000000000400000, x3, 192, x1)

# rs1_val == 17179869184, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xc000000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0xc000000000000000, x3, 200, x1)

# rs1_val == 34359738368, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xffffdfffffffffff, x3, 208, x1)

# rs1_val == 68719476736, rs2_val == 288230376151711744
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0400000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0x0400000000000000, x3, 216, x1)

# rs1_val == 137438953472, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0800000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0x0800000000000000, x3, 224, x1)

# rs1_val == 274877906944, rs2_val == -262145
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0xfffffffffffbffff, x3, 232, x1)

# rs1_val == 549755813888, rs2_val == -17179869185
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xfffffffbffffffff, x3, 240, x1)

# rs1_val == 1099511627776, rs2_val == -4194305
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0xffffffffffbfffff, x3, 248, x1)

# rs1_val == 2199023255552, rs2_val == -8193
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0xffffffffffffdfff, x3, 256, x1)

# rs1_val == 4398046511104, rs2_val == -1152921504606846977
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xefffffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0xefffffffffffffff, x3, 264, x1)

# rs1_val == 8796093022208, rs2_val == 562949953421312
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0002000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0002000000000000, x3, 272, x1)

# rs1_val == 17592186044416, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xffffffffffffdfff, x3, 280, x1)

# rs1_val == 35184372088832, rs2_val == -288230376151711745
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xfbffffffffffffff, x3, 288, x1)

# rs1_val == 70368744177664, rs2_val == 2048
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000800
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0x0000000000000800, x3, 296, x1)

# rs1_val == 140737488355328, rs2_val == 16384
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000004000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x0000000000004000, x3, 304, x1)

# rs1_val == 281474976710656, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0x7fffffffffffffff, x3, 312, x1)

# rs1_val == 562949953421312, rs2_val == 9007199254740992
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0020000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0020000000000000, x3, 320, x1)

# rs1_val == 1125899906842624, rs2_val == -257
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0xfffffffffffffeff, x3, 328, x1)

# rs1_val == 2251799813685248, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0008000000000000, 0xffffffffffffdfff, x3, 336, x1)

# rs1_val == 4503599627370496, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xfffffffffffffff6, x3, 344, x1)

# rs1_val == 9007199254740992, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000020000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000000000020000, x3, 352, x1)

# rs1_val == 18014398509481984, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000400
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0x0000000000000400, x3, 360, x1)

# rs1_val == 36028797018963968, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000400000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0x0000000000400000, x3, 368, x1)

# rs1_val == 72057594037927936, rs2_val == -1073741825
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0xffffffffbfffffff, x3, 376, x1)

# rs1_val == 144115188075855872, rs2_val == 1152921504606846976
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x1000000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x1000000000000000, x3, 384, x1)

# rs1_val == 288230376151711744, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000010
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0x0000000000000010, x3, 392, x1)

# rs1_val == 576460752303423488, rs2_val == -281474976710657
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0xfffeffffffffffff, x3, 400, x1)

# rs1_val == 2305843009213693952, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffefffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0xffffffffffefffff, x3, 408, x1)

# rs1_val == 4611686018427387904, rs2_val == 70368744177664
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000400000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0x0000400000000000, x3, 416, x1)

# rs1_val == -2, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0004000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0x0004000000000000, x3, 424, x1)

# rs1_val == -3, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0x0000000000000000, x3, 432, x1)

# rs1_val == -5, rs2_val == -562949953421313
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffdffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0xfffdffffffffffff, x3, 440, x1)

# rs1_val == -9, rs2_val == -1025
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffffffffffffbff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xfffffffffffffbff, x3, 448, x1)

# rs1_val == -17, rs2_val == -32769
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffffffff7fff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xffffffffffff7fff, x3, 456, x1)

# rs1_val == -33, rs2_val == 32768
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000008000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0x0000000000008000, x3, 464, x1)

# rs1_val == -65, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xffffffffffffffef
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0xffffffffffffffef, x3, 472, x1)

# rs1_val == -129, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xefffffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0xefffffffffffffff, x3, 480, x1)

# rs2_val == -1125899906842625, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0xfffbffffffffffff, x3, 488, x1)

# rs2_val == -2251799813685249, rs1_val == -8193
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0xfff7ffffffffffff, x3, 496, x1)

# rs2_val == -4503599627370497, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xffefffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0xffefffffffffffff, x3, 504, x1)

# rs2_val == -9007199254740993, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xffdfffffffffffff, x3, 512, x1)

# rs2_val == -18014398509481985, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xffbfffffffffffff, x3, 520, x1)

# rs2_val == -36028797018963969, rs1_val == -1048577
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xff7fffffffffffff, x3, 528, x1)

# rs2_val == -72057594037927937, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xfeffffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xfeffffffffffffff, x3, 536, x1)

# rs2_val == -576460752303423489, rs1_val == -2049
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0xf7ffffffffffffff, x3, 544, x1)

# rs2_val == -2305843009213693953, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000000000, 0xdfffffffffffffff, x3, 552, x1)

# rs2_val == 6148914691236517205, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x5555555555555555
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0x5555555555555555, x3, 560, x1)

# rs2_val == -6148914691236517206, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0xaaaaaaaaaaaaaaaa, x3, 568, x1)

# rs1_val == -257, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfffffffffffeffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xfffffffffffeffff, x3, 576, x1)

# rs1_val == -513, rs2_val == -2147483649
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xffffffff7fffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0xffffffff7fffffff, x3, 584, x1)

# rs1_val == -1025, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffffffffffffff9
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0xfffffffffffffff9, x3, 592, x1)

# rs1_val == -4097, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000002000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0x0000000002000000, x3, 600, x1)

# rs1_val == -16385, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000200000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0000200000000000, x3, 608, x1)

# rs1_val == -32769, rs2_val == -549755813889
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xffffff7fffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0xffffff7fffffffff, x3, 616, x1)

# rs1_val == -65537, rs2_val == 34359738368
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000800000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0x0000000800000000, x3, 624, x1)

# rs1_val == -131073, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000008000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0x0000000000008000, x3, 632, x1)

# rs1_val == -262145, rs2_val == -33
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0xffffffffffffffdf, x3, 640, x1)

# rs1_val == -524289, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xfffffffffffffffa
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0xfffffffffffffffa, x3, 648, x1)

# rs1_val == -2097153, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xfffffffffffffbff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0xfffffffffffffbff, x3, 656, x1)

# rs1_val == -8388609, rs2_val == -16385
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0xffffffffffffbfff, x3, 664, x1)

# rs1_val == -16777217, rs2_val == 64
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000040
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0000000000000040, x3, 672, x1)

# rs1_val == -33554433, rs2_val == -513
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0xfffffffffffffdff, x3, 680, x1)

# rs1_val == -67108865, rs2_val == -524289
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0xfffffffffff7ffff, x3, 688, x1)

# rs1_val == -134217729, rs2_val == -8589934593
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0xfffffffdffffffff, x3, 696, x1)

# rs1_val == -268435457, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xffffdfffffffffff, x3, 704, x1)

# rs1_val == -536870913, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0xfffdffffffffffff, x3, 712, x1)

# rs1_val == -1073741825, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x5555555555555555
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0x5555555555555555, x3, 720, x1)

# rs1_val == -2147483649, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0xffffffffffff7fff, x3, 728, x1)

# rs1_val == -4294967297, rs2_val == 524288
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000080000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0x0000000000080000, x3, 736, x1)

# rs1_val == -8589934593, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0xfffffffffffffeff, x3, 744, x1)

# rs1_val == -17179869185, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x1000000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0x1000000000000000, x3, 752, x1)

# rs1_val == -34359738369, rs2_val == 17592186044416
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000100000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0x0000100000000000, x3, 760, x1)

# rs1_val == -68719476737, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0xfffffffffffeffff, x3, 768, x1)

# rs1_val == -137438953473, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0xffffffffffbfffff, x3, 776, x1)

# rs1_val == -274877906945, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0xffbfffffffffffff, x3, 784, x1)

# rs1_val == -549755813889, rs2_val == -8388609
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0xffffffffff7fffff, x3, 792, x1)

# rs1_val == -1099511627777, rs2_val == 4398046511104
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000040000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x0000040000000000, x3, 800, x1)

# rs1_val == -2199023255553, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xffffffffffffbfff, x3, 808, x1)

# rs1_val == -4398046511105, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xc000000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0xc000000000000000, x3, 816, x1)

# rs1_val == -8796093022209, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000080000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0x0000000000080000, x3, 824, x1)

# rs1_val == -17592186044417, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000100000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0x0000100000000000, x3, 832, x1)

# rs1_val == -35184372088833, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0xfffffff7ffffffff, x3, 840, x1)

# rs1_val == -70368744177665, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0x0000000000000003, x3, 848, x1)

# rs1_val == -140737488355329, rs2_val == 2147483648
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000080000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000080000000, x3, 856, x1)

# rs1_val == -281474976710657, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0001000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0x0001000000000000, x3, 864, x1)

# rs1_val == -4503599627370497, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0x5555555555555555, x3, 872, x1)

# rs1_val == -18014398509481985, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000200
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0x0000000000000200, x3, 880, x1)

# rs1_val == -36028797018963969, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0xffffffffffffff7f, x3, 888, x1)

# rs1_val == -72057594037927937, rs2_val == -134217729
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xfffffffff7ffffff, x3, 896, x1)

# rs1_val == -288230376151711745, rs2_val == -9
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xfffffffffffffff7
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0xfffffffffffffff7, x3, 904, x1)

# rs1_val == -576460752303423489, rs2_val == 72057594037927936
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0x0100000000000000, x3, 912, x1)

# rs1_val == -1152921504606846977, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000400
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0x0000000000000400, x3, 920, x1)

# rs1_val == -2305843009213693953, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0xfffdffffffffffff, x3, 928, x1)

# rs1_val == -4611686018427387905, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0xffffffffffffffdf, x3, 936, x1)

# rs1_val == 6148914691236517205, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffffffffff7
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xfffffffffffffff7, x3, 944, x1)

# rs1_val == -6148914691236517206, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000004000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0x0000000000004000, x3, 952, x1)

# rs2_val == 2, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0x0000000000000002, x3, 960, x1)

# rs2_val == 4, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0x0000000000000004
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000000004, 0x0000000000000004, x3, 968, x1)

# rs2_val == 8, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0x0000000000000008, x3, 976, x1)

# rs2_val == 32, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000020
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0x0000000000000020, x3, 984, x1)

# rs2_val == 128, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000080
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0x0000000000000080, x3, 992, x1)

# rs2_val == 4096, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000001000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0x0000000000001000, x3, 1000, x1)

# rs2_val == 8192, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000002000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0x0000000000002000, x3, 1008, x1)

# rs2_val == 1048576, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000100000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0x0000000000100000, x3, 1016, x1)

# rs2_val == 2097152, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000200000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0000000000200000, x3, 1024, x1)

# rs2_val == 8388608, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000800000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0x0000000000800000, x3, 1032, x1)

# rs2_val == 16777216, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0x0000000001000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffc, 0x0000000001000000, x3, 1040, x1)

# rs2_val == 67108864, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0x0000000004000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000000800, 0x0000000004000000, x3, 1048, x1)

# rs2_val == 134217728, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0x0000000008000000, x3, 1056, x1)

# rs2_val == 536870912, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000020000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0x0000000020000000, x3, 1064, x1)

# rs2_val == 4294967296, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000100000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000000020, 0x0000000100000000, x3, 1072, x1)

# rs2_val == 8589934592, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000200000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0x0000000200000000, x3, 1080, x1)

# rs2_val == 68719476736, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000001000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0x0000001000000000, x3, 1088, x1)

# rs2_val == 2251799813685248, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0008000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000200000, 0x0008000000000000, x3, 1096, x1)

# rs2_val == 4503599627370496, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0x0010000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000004000, 0x0010000000000000, x3, 1104, x1)

# rs2_val == 18014398509481984, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0040000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0040000000000000, x3, 1112, x1)

# rs2_val == 144115188075855872, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0x0200000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff6, 0x0200000000000000, x3, 1120, x1)

# rs2_val == 2305843009213693952, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x2000000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0x2000000000000000, x3, 1128, x1)

# rs2_val == 4611686018427387904, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0x4000000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000000003, 0x4000000000000000, x3, 1136, x1)

# rs2_val == -2, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xfffffffffffffffe
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000000080, 0xfffffffffffffffe, x3, 1144, x1)

# rs2_val == -5, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xfffffffffffffffb
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000000080, 0xfffffffffffffffb, x3, 1152, x1)

# rs2_val == -2049, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffffffffffff7ff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0xfffffffffffff7ff, x3, 1160, x1)

# rs2_val == 2199023255552, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000020000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000020000, 0x0000020000000000, x3, 1168, x1)

# rs2_val == -4097, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xffffffffffffefff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0xffffffffffffefff, x3, 1176, x1)

# rs2_val == -131073, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xfffffffffffdffff, x3, 1184, x1)

# rs2_val == -8796093022209, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xfffff7ffffffffff, x3, 1192, x1)

# rs2_val == -16777217, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xfffffffffeffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000004000, 0xfffffffffeffffff, x3, 1200, x1)

# rs2_val == -67108865, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0xfffffffffbffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000001000, 0xfffffffffbffffff, x3, 1208, x1)

# rs2_val == -268435457, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffffffffefffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xffffffffefffffff, x3, 1216, x1)

# rs2_val == -536870913, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xffffffffdfffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xffffffffdfffffff, x3, 1224, x1)

# rs2_val == -68719476737, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xffffffefffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xffffffefffffffff, x3, 1232, x1)

# rs2_val == 137438953472, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000002000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0x0000002000000000, x3, 1240, x1)

# rs2_val == 274877906944, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000004000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0x0000004000000000, x3, 1248, x1)

# rs2_val == -274877906945, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xffffffbfffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xffffffbfffffffff, x3, 1256, x1)

# rs2_val == 549755813888, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000008000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x0000008000000000, x3, 1264, x1)

# rs2_val == 1099511627776, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000010000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0x0000010000000000, x3, 1272, x1)

# rs2_val == -2199023255553, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0xfffffdffffffffff, x3, 1280, x1)

# rs2_val == -4398046511105, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xfffffbffffffffff, x3, 1288, x1)

# rs2_val == 8796093022208, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0000080000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000000008, 0x0000080000000000, x3, 1296, x1)

# rs2_val == -17592186044417, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0xffffefffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffc, 0xffffefffffffffff, x3, 1304, x1)

# rs2_val == -70368744177665, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xffffbfffffffffff, x3, 1312, x1)

# rs2_val == -140737488355329, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xffff7fffffffffff, x3, 1320, x1)

# rs1_val == -562949953421313, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0xfdffffffffffffff, x3, 1328, x1)

# rs1_val == -1125899906842625, 
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xfbffffffffffffff, x3, 1336, x1)

# rs2_val == (-2**(xlen-1)), rs1_val == -2251799813685249, rs1_val < 0 and rs2_val < 0, rs2_val == -9223372036854775808
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x8000000000000000, x3, 1344, x1)

# rs1_val == 64, rs2_val == -1099511627777
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0xfffffeffffffffff
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000000040, 0xfffffeffffffffff, x3, 1352, x1)

# rs1_val == 8388608, rs2_val == 512
# opcode: mulhsu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000200
TEST_RR_OP(mulhsu, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0x0000000000000200, x3, 1360, x1)
#endif


RVTEST_CODE_END
RVMODEL_HALT

RVTEST_DATA_BEGIN
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x9_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x9_1:
    .fill 17*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 171*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
