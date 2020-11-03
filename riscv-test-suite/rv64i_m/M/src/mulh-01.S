
#This assembly file tests the mulh instruction of the RISC-V M extension for the mulh covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",mulh)

RVTEST_SIGBASE( x18,signature_x18_1)

# rs1 == rs2 != rd, rs1==x20, rs2==x20, rd==x5, rs1_val == (-2**(xlen-1)), rs2_val == 524288, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: mulh ; op1:x20; op2:x20; dest:x5; op1val:0x8000000000000000;  op2val:0x0000000000080000
TEST_RR_OP(mulh, x5, x20, x20, 0x0000000000000000, 0x8000000000000000, 0x0000000000080000, x18, 0, x15)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x14, rs2==x13, rd==x9, rs1_val == 0, rs2_val == -4503599627370497
# opcode: mulh ; op1:x14; op2:x13; dest:x9; op1val:0x0000000000000000;  op2val:0xffefffffffffffff
TEST_RR_OP(mulh, x9, x14, x13, 0x0000000000000000, 0x0000000000000000, 0xffefffffffffffff, x18, 8, x15)

# rs1 == rd != rs2, rs1==x23, rs2==x27, rd==x23, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs1_val == 9223372036854775807, rs2_val == -274877906945
# opcode: mulh ; op1:x23; op2:x27; dest:x23; op1val:0x7fffffffffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(mulh, x23, x23, x27, 0x0000000000000000, 0x7fffffffffffffff, 0xffffffbfffffffff, x18, 16, x15)

# rs2 == rd != rs1, rs1==x29, rs2==x6, rd==x6, rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 2305843009213693952
# opcode: mulh ; op1:x29; op2:x6; dest:x6; op1val:0x0000000000000001;  op2val:0x2000000000000000
TEST_RR_OP(mulh, x6, x29, x6, 0x0000000000000000, 0x0000000000000001, 0x2000000000000000, x18, 24, x15)

# rs1 == rs2 == rd, rs1==x19, rs2==x19, rd==x19, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode: mulh ; op1:x19; op2:x19; dest:x19; op1val:0x0000000000000005;  op2val:0x8000000000000000
TEST_RR_OP(mulh, x19, x19, x19, 0x0000000000000000, 0x0000000000000005, 0x8000000000000000, x18, 32, x15)

# rs1==x24, rs2==x14, rd==x1, rs2_val == 0, rs1_val == 288230376151711744
# opcode: mulh ; op1:x24; op2:x14; dest:x1; op1val:0x0400000000000000;  op2val:0x0000000000000000
TEST_RR_OP(mulh, x1, x24, x14, 0x0000000000000000, 0x0400000000000000, 0x0000000000000000, x18, 40, x15)

# rs1==x27, rs2==x22, rd==x21, rs2_val == (2**(xlen-1)-1), rs2_val == 9223372036854775807, rs1_val == 4398046511104
# opcode: mulh ; op1:x27; op2:x22; dest:x21; op1val:0x0000040000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(mulh, x21, x27, x22, 0x0000000000000000, 0x0000040000000000, 0x7fffffffffffffff, x18, 48, x15)

# rs1==x11, rs2==x4, rd==x0, rs2_val == 1, rs1_val == 35184372088832
# opcode: mulh ; op1:x11; op2:x4; dest:x0; op1val:0x0000200000000000;  op2val:0x0000000000000001
TEST_RR_OP(mulh, x0, x11, x4, 0x0000000000000000, 0x0000200000000000, 0x0000000000000001, x18, 56, x15)

# rs1==x5, rs2==x10, rd==x28, rs1_val < 0 and rs2_val < 0, rs2_val == -70368744177665, rs1_val == -33554433
# opcode: mulh ; op1:x5; op2:x10; dest:x28; op1val:0xfffffffffdffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(mulh, x28, x5, x10, 0x0000000000000000, 0xfffffffffdffffff, 0xffffbfffffffffff, x18, 64, x15)

# rs1==x17, rs2==x2, rd==x4, rs1_val == rs2_val, rs1_val == -35184372088833, rs2_val == -35184372088833
# opcode: mulh ; op1:x17; op2:x2; dest:x4; op1val:0xffffdfffffffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(mulh, x4, x17, x2, 0x0000000000000000, 0xffffdfffffffffff, 0xffffdfffffffffff, x18, 72, x15)

# rs1==x12, rs2==x9, rd==x16, rs1_val == 2, rs2_val == 2
# opcode: mulh ; op1:x12; op2:x9; dest:x16; op1val:0x0000000000000002;  op2val:0x0000000000000002
TEST_RR_OP(mulh, x16, x12, x9, 0x0000000000000000, 0x0000000000000002, 0x0000000000000002, x18, 80, x15)

# rs1==x16, rs2==x24, rd==x3, rs1_val == 4, rs2_val == -513
# opcode: mulh ; op1:x16; op2:x24; dest:x3; op1val:0x0000000000000004;  op2val:0xfffffffffffffdff
TEST_RR_OP(mulh, x3, x16, x24, 0x0000000000000000, 0x0000000000000004, 0xfffffffffffffdff, x18, 88, x15)

# rs1==x8, rs2==x31, rd==x25, rs1_val == 8, 
# opcode: mulh ; op1:x8; op2:x31; dest:x25; op1val:0x0000000000000008;  op2val:0xffefffffffffffff
TEST_RR_OP(mulh, x25, x8, x31, 0x0000000000000000, 0x0000000000000008, 0xffefffffffffffff, x18, 96, x15)

# rs1==x7, rs2==x1, rd==x29, rs1_val == 16, rs2_val == -2251799813685249
# opcode: mulh ; op1:x7; op2:x1; dest:x29; op1val:0x0000000000000010;  op2val:0xfff7ffffffffffff
TEST_RR_OP(mulh, x29, x7, x1, 0x0000000000000000, 0x0000000000000010, 0xfff7ffffffffffff, x18, 104, x15)

# rs1==x31, rs2==x25, rd==x15, rs1_val == 32, rs2_val == 262144
# opcode: mulh ; op1:x31; op2:x25; dest:x15; op1val:0x0000000000000020;  op2val:0x0000000000040000
TEST_RR_OP(mulh, x15, x31, x25, 0x0000000000000000, 0x0000000000000020, 0x0000000000040000, x18, 112, x7)
RVTEST_SIGBASE( x16,signature_x16_0)

# rs1==x26, rs2==x3, rd==x12, rs1_val == 64, rs2_val == -4194305
# opcode: mulh ; op1:x26; op2:x3; dest:x12; op1val:0x0000000000000040;  op2val:0xffffffffffbfffff
TEST_RR_OP(mulh, x12, x26, x3, 0x0000000000000000, 0x0000000000000040, 0xffffffffffbfffff, x16, 0, x7)

# rs1==x4, rs2==x17, rd==x22, rs1_val == 128, 
# opcode: mulh ; op1:x4; op2:x17; dest:x22; op1val:0x0000000000000080;  op2val:0xfffffffffffffffc
TEST_RR_OP(mulh, x22, x4, x17, 0x0000000000000000, 0x0000000000000080, 0xfffffffffffffffc, x16, 8, x7)

# rs1==x15, rs2==x21, rd==x31, rs1_val == 256, rs2_val == 67108864
# opcode: mulh ; op1:x15; op2:x21; dest:x31; op1val:0x0000000000000100;  op2val:0x0000000004000000
TEST_RR_OP(mulh, x31, x15, x21, 0x0000000000000000, 0x0000000000000100, 0x0000000004000000, x16, 16, x7)

# rs1==x25, rs2==x30, rd==x13, rs1_val == 512, rs2_val == 576460752303423488
# opcode: mulh ; op1:x25; op2:x30; dest:x13; op1val:0x0000000000000200;  op2val:0x0800000000000000
TEST_RR_OP(mulh, x13, x25, x30, 0x0000000000000000, 0x0000000000000200, 0x0800000000000000, x16, 24, x7)

# rs1==x6, rs2==x11, rd==x26, rs1_val == 1024, rs2_val == 1024
# opcode: mulh ; op1:x6; op2:x11; dest:x26; op1val:0x0000000000000400;  op2val:0x0000000000000400
TEST_RR_OP(mulh, x26, x6, x11, 0x0000000000000000, 0x0000000000000400, 0x0000000000000400, x16, 32, x7)

# rs1==x13, rs2==x15, rd==x27, rs1_val == 2048, rs2_val == 256
# opcode: mulh ; op1:x13; op2:x15; dest:x27; op1val:0x0000000000000800;  op2val:0x0000000000000100
TEST_RR_OP(mulh, x27, x13, x15, 0x0000000000000000, 0x0000000000000800, 0x0000000000000100, x16, 40, x7)

# rs1==x18, rs2==x28, rd==x24, rs1_val == 4096, rs2_val == -65537
# opcode: mulh ; op1:x18; op2:x28; dest:x24; op1val:0x0000000000001000;  op2val:0xfffffffffffeffff
TEST_RR_OP(mulh, x24, x18, x28, 0x0000000000000000, 0x0000000000001000, 0xfffffffffffeffff, x16, 48, x7)

# rs1==x1, rs2==x29, rd==x11, rs1_val == 8192, rs2_val == 288230376151711744
# opcode: mulh ; op1:x1; op2:x29; dest:x11; op1val:0x0000000000002000;  op2val:0x0400000000000000
TEST_RR_OP(mulh, x11, x1, x29, 0x0000000000000000, 0x0000000000002000, 0x0400000000000000, x16, 56, x7)

# rs1==x9, rs2==x23, rd==x20, rs1_val == 16384, rs2_val == 4
# opcode: mulh ; op1:x9; op2:x23; dest:x20; op1val:0x0000000000004000;  op2val:0x0000000000000004
TEST_RR_OP(mulh, x20, x9, x23, 0x0000000000000000, 0x0000000000004000, 0x0000000000000004, x16, 64, x7)

# rs1==x22, rs2==x12, rd==x2, rs1_val == 32768, rs2_val == 549755813888
# opcode: mulh ; op1:x22; op2:x12; dest:x2; op1val:0x0000000000008000;  op2val:0x0000008000000000
TEST_RR_OP(mulh, x2, x22, x12, 0x0000000000000000, 0x0000000000008000, 0x0000008000000000, x16, 72, x7)

# rs1==x28, rs2==x0, rd==x14, rs1_val == 65536, rs2_val == 16384
# opcode: mulh ; op1:x28; op2:x0; dest:x14; op1val:0x0000000000010000;  op2val:0x0000000000004000
TEST_RR_OP(mulh, x14, x28, x0, 0x0000000000000000, 0x0000000000010000, 0x0000000000004000, x16, 80, x7)

# rs1==x0, rs2==x5, rd==x10, rs1_val == 131072, 
# opcode: mulh ; op1:x0; op2:x5; dest:x10; op1val:0x0000000000020000;  op2val:0xffffffffffffffff
TEST_RR_OP(mulh, x10, x0, x5, 0x0000000000000000, 0x0000000000020000, 0xffffffffffffffff, x16, 88, x7)

# rs1==x2, rs2==x8, rd==x7, rs1_val == 262144, 
# opcode: mulh ; op1:x2; op2:x8; dest:x7; op1val:0x0000000000040000;  op2val:0xffffbfffffffffff
TEST_RR_OP(mulh, x7, x2, x8, 0x0000000000000000, 0x0000000000040000, 0xffffbfffffffffff, x16, 96, x4)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x10, rs2==x16, rd==x18, rs1_val == 524288, rs2_val == -18014398509481985
# opcode: mulh ; op1:x10; op2:x16; dest:x18; op1val:0x0000000000080000;  op2val:0xffbfffffffffffff
TEST_RR_OP(mulh, x18, x10, x16, 0x0000000000000000, 0x0000000000080000, 0xffbfffffffffffff, x1, 0, x4)

# rs1==x3, rs2==x18, rd==x30, rs1_val == 1048576, rs2_val == 268435456
# opcode: mulh ; op1:x3; op2:x18; dest:x30; op1val:0x0000000000100000;  op2val:0x0000000010000000
TEST_RR_OP(mulh, x30, x3, x18, 0x0000000000000000, 0x0000000000100000, 0x0000000010000000, x1, 8, x4)

# rs1==x30, rs2==x26, rd==x17, rs1_val == 2097152, rs2_val == 18014398509481984
# opcode: mulh ; op1:x30; op2:x26; dest:x17; op1val:0x0000000000200000;  op2val:0x0040000000000000
TEST_RR_OP(mulh, x17, x30, x26, 0x0000000000000000, 0x0000000000200000, 0x0040000000000000, x1, 16, x4)

# rs1==x21, rs2==x7, rd==x8, rs1_val == 4194304, rs2_val == 1125899906842624
# opcode: mulh ; op1:x21; op2:x7; dest:x8; op1val:0x0000000000400000;  op2val:0x0004000000000000
TEST_RR_OP(mulh, x8, x21, x7, 0x0000000000000000, 0x0000000000400000, 0x0004000000000000, x1, 24, x4)

# rs1_val == 8388608, rs2_val == 2251799813685248
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0008000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0x0008000000000000, x1, 32, x4)

# rs1_val == 16777216, rs2_val == 4503599627370496
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0010000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000001000000, 0x0010000000000000, x1, 40, x4)

# rs1_val == 33554432, rs2_val == -2199023255553
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xfffffdffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000002000000, 0xfffffdffffffffff, x1, 48, x4)

# rs1_val == 67108864, rs2_val == 2097152
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000200000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0x0000000000200000, x1, 56, x4)

# rs1_val == 134217728, rs2_val == 68719476736
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000001000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0x0000001000000000, x1, 64, x4)

# rs1_val == 268435456, rs2_val == 2048
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000800
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0x0000000000000800, x1, 72, x4)

# rs1_val == 536870912, rs2_val == -1152921504606846977
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xefffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xefffffffffffffff, x1, 80, x4)

# rs1_val == 1073741824, rs2_val == -17592186044417
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xffffefffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0xffffefffffffffff, x1, 88, x4)

# rs1_val == 2147483648, rs2_val == 4398046511104
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000040000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0x0000040000000000, x1, 96, x4)

# rs1_val == 4294967296, rs2_val == 35184372088832
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000200000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x0000200000000000, x1, 104, x4)

# rs1_val == 8589934592, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0800000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0x0800000000000000, x1, 112, x4)

# rs1_val == 17179869184, rs2_val == -2305843009213693953
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0xdfffffffffffffff, x1, 120, x4)

# rs1_val == 34359738368, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000800
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0x0000000000000800, x1, 128, x4)

# rs1_val == 68719476736, rs2_val == -1073741825
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xffffffffbfffffff, x1, 136, x4)

# rs1_val == 137438953472, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000004
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0x0000000000000004, x1, 144, x4)

# rs1_val == 274877906944, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xffefffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0xffefffffffffffff, x1, 152, x4)

# rs1_val == 549755813888, rs2_val == 65536
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000010000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0x0000000000010000, x1, 160, x4)

# rs1_val == 1099511627776, rs2_val == 34359738368
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000800000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0x0000000800000000, x1, 168, x4)

# rs1_val == 2199023255552, rs2_val == -1099511627777
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0xfffffeffffffffff, x1, 176, x4)

# rs1_val == 8796093022208, rs2_val == 1099511627776
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000010000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0000010000000000, x1, 184, x4)

# rs1_val == 17592186044416, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000004000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0x0000000004000000, x1, 192, x4)

# rs1_val == 70368744177664, rs2_val == 134217728
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000008000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0x0000000008000000, x1, 200, x4)

# rs1_val == 140737488355328, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000080000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x0000000000080000, x1, 208, x4)

# rs1_val == 281474976710656, rs2_val == 32768
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000008000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0x0000000000008000, x1, 216, x4)

# rs1_val == 562949953421312, rs2_val == -144115188075855873
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0xfdffffffffffffff, x1, 224, x4)

# rs1_val == 1125899906842624, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0xfffffffffffffffc, x1, 232, x4)

# rs1_val == 2251799813685248, rs2_val == 2147483648
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000080000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0008000000000000, 0x0000000080000000, x1, 240, x4)

# rs1_val == 4503599627370496, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x0000000008000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0x0000000008000000, x1, 248, x4)

# rs1_val == 9007199254740992, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000008000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000000008000000, x1, 256, x4)

# rs1_val == 18014398509481984, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xffefffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0xffefffffffffffff, x1, 264, x4)

# rs1_val == 36028797018963968, rs2_val == -549755813889
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffffff7fffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xffffff7fffffffff, x1, 272, x4)

# rs1_val == 72057594037927936, rs2_val == -257
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0xfffffffffffffeff, x1, 280, x4)

# rs1_val == 144115188075855872, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0xffffefffffffffff, x1, 288, x4)

# rs1_val == 576460752303423488, rs2_val == -67108865
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0xfffffffffbffffff, x1, 296, x4)

# rs1_val == 1152921504606846976, rs2_val == 6148914691236517205
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x5555555555555555
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0x5555555555555555, x1, 304, x4)

# rs1_val == 2305843009213693952, rs2_val == -2097153
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0xffffffffffdfffff, x1, 312, x4)

# rs1_val == 4611686018427387904, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0004000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0x0004000000000000, x1, 320, x4)

# rs1_val == -2, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000010000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0x0000010000000000, x1, 328, x4)

# rs1_val == -3, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xffffff7fffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0xffffff7fffffffff, x1, 336, x4)

# rs1_val == -5, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000400
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0x0000000000000400, x1, 344, x4)

# rs1_val == -9, rs2_val == -281474976710657
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffeffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xfffeffffffffffff, x1, 352, x4)

# rs1_val == -17, rs2_val == -536870913
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffffdfffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xffffffffdfffffff, x1, 360, x4)

# rs1_val == -33, rs2_val == 64
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000040
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0x0000000000000040, x1, 368, x4)

# rs1_val == -65, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000400
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0x0000000000000400, x1, 376, x4)

# rs1_val == -129, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x2000000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0x2000000000000000, x1, 384, x4)

# rs1_val == -257, rs2_val == 72057594037927936
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0100000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0x0100000000000000, x1, 392, x4)

# rs1_val == -513, rs2_val == -33
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xffffffffffffffdf
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0xffffffffffffffdf, x1, 400, x4)

# rs2_val == -1125899906842625, rs1_val == -4503599627370497
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0xfffbffffffffffff, x1, 408, x4)

# rs2_val == -9007199254740993, rs1_val == -1025
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xffdfffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0xffdfffffffffffff, x1, 416, x4)

# rs2_val == -36028797018963969, rs1_val == -549755813889
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0xff7fffffffffffff, x1, 424, x4)

# rs2_val == -72057594037927937, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0xfeffffffffffffff, x1, 432, x4)

# rs2_val == -288230376151711745, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0xfbffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000000400, 0xfbffffffffffffff, x1, 440, x4)

# rs2_val == -576460752303423489, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000100000, 0xf7ffffffffffffff, x1, 448, x4)

# rs2_val == -4611686018427387905, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xbfffffffffffffff, x1, 456, x4)

# rs2_val == -6148914691236517206, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0xaaaaaaaaaaaaaaaa, x1, 464, x4)

# rs1_val == -2049, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffffefffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0xffffefffffffffff, x1, 472, x4)

# rs1_val == -4097, rs2_val == -4398046511105
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfffffbffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0xfffffbffffffffff, x1, 480, x4)

# rs1_val == -8193, rs2_val == -2
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xfffffffffffffffe
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0xfffffffffffffffe, x1, 488, x4)

# rs1_val == -16385, rs2_val == -32769
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xffffffffffff7fff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0xffffffffffff7fff, x1, 496, x4)

# rs1_val == -32769, rs2_val == -562949953421313
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfffdffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0xfffdffffffffffff, x1, 504, x4)

# rs1_val == -65537, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xf7ffffffffffffff, x1, 512, x4)

# rs1_val == -131073, rs2_val == 17592186044416
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000100000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0x0000100000000000, x1, 520, x4)

# rs1_val == -262145, rs2_val == 4096
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000001000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0x0000000000001000, x1, 528, x4)

# rs1_val == -524289, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000010000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0x0000000000010000, x1, 536, x4)

# rs1_val == -1048577, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xffffbfffffffffff, x1, 544, x4)

# rs1_val == -2097153, rs2_val == -68719476737
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xffffffefffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0xffffffefffffffff, x1, 552, x4)

# rs1_val == -4194305, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0xfffffffffffeffff, x1, 560, x4)

# rs1_val == -8388609, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000010000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0x0000000000010000, x1, 568, x4)

# rs1_val == -16777217, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0000000000000000, x1, 576, x4)

# rs1_val == -67108865, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0xffffffffffff7fff, x1, 584, x4)

# rs1_val == -134217729, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0xfeffffffffffffff, x1, 592, x4)

# rs1_val == -268435457, rs2_val == -16385
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xffffffffffffbfff, x1, 600, x4)

# rs1_val == -536870913, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0xfffffeffffffffff, x1, 608, x4)

# rs1_val == -1073741825, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xffffffefffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0xffffffefffffffff, x1, 616, x4)

# rs1_val == -2147483649, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0xffffffffffdfffff, x1, 624, x4)

# rs1_val == -4294967297, rs2_val == 32
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000020
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0x0000000000000020, x1, 632, x4)

# rs1_val == -8589934593, rs2_val == 70368744177664
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000400000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0x0000400000000000, x1, 640, x4)

# rs1_val == -17179869185, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000005
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0x0000000000000005, x1, 648, x4)

# rs1_val == -34359738369, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0xffffffffffffbfff, x1, 656, x4)

# rs1_val == -68719476737, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000010000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0x0000000010000000, x1, 664, x4)

# rs1_val == -137438953473, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000004
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0x0000000000000004, x1, 672, x4)

# rs1_val == -274877906945, rs2_val == 137438953472
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000002000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0x0000002000000000, x1, 680, x4)

# rs1_val == -1099511627777, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000002000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x0000002000000000, x1, 688, x4)

# rs1_val == -2199023255553, rs2_val == 1152921504606846976
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x1000000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0x1000000000000000, x1, 696, x4)

# rs1_val == -4398046511105, rs2_val == -8388609
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0xffffffffff7fffff, x1, 704, x4)

# rs1_val == -8796093022209, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xbfffffffffffffff, x1, 712, x4)

# rs1_val == -17592186044417, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0x0000000000000000, x1, 720, x4)

# rs1_val == -70368744177665, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0xf7ffffffffffffff, x1, 728, x4)

# rs1_val == -140737488355329, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000000000000, x1, 736, x4)

# rs1_val == -281474976710657, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0xfffffdffffffffff, x1, 744, x4)

# rs1_val == -562949953421313, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000010000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0x0000000000010000, x1, 752, x4)

# rs1_val == -1125899906842625, rs2_val == -65
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xffffffffffffffbf, x1, 760, x4)

# rs1_val == -2251799813685249, rs2_val == -4097
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0xffffffffffffefff, x1, 768, x4)

# rs1_val == -9007199254740993, rs2_val == 1048576
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000100000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0x0000000000100000, x1, 776, x4)

# rs1_val == -18014398509481985, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000100000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0x0000000000100000, x1, 784, x4)

# rs1_val == -36028797018963969, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0xf7ffffffffffffff, x1, 792, x4)

# rs1_val == -72057594037927937, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xbfffffffffffffff, x1, 800, x4)

# rs1_val == -144115188075855873, rs2_val == 512
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000200
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0x0000000000000200, x1, 808, x4)

# rs1_val == -288230376151711745, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000001000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0x0000001000000000, x1, 816, x4)

# rs1_val == -576460752303423489, rs2_val == 281474976710656
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0001000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0x0001000000000000, x1, 824, x4)

# rs1_val == -1152921504606846977, rs2_val == -129
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0xffffffffffffff7f, x1, 832, x4)

# rs1_val == -2305843009213693953, rs2_val == 536870912
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000020000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0x0000000020000000, x1, 840, x4)

# rs1_val == -4611686018427387905, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0xff7fffffffffffff, x1, 848, x4)

# rs1_val == 6148914691236517205, rs2_val == -268435457
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xffffffffefffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xffffffffefffffff, x1, 856, x4)

# rs1_val == -6148914691236517206, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000004000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0x0000000004000000, x1, 864, x4)

# rs2_val == 8, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000008
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0x0000000000000008, x1, 872, x4)

# rs2_val == 16, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000010
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0x0000000000000010, x1, 880, x4)

# rs2_val == 128, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000080
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0x0000000000000080, x1, 888, x4)

# rs2_val == 8192, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000002000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0000000000002000, x1, 896, x4)

# rs2_val == 131072, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000020000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0x0000000000020000, x1, 904, x4)

# rs2_val == 4194304, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000400000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0000000000400000, x1, 912, x4)

# rs2_val == 8388608, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000800000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000000000800000, x1, 920, x4)

# rs2_val == 16777216, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0x0000000001000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000000003, 0x0000000001000000, x1, 928, x4)

# rs2_val == 33554432, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000002000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0x0000000002000000, x1, 936, x4)

# rs2_val == 1073741824, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000040000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0x0000000040000000, x1, 944, x4)

# rs2_val == 4294967296, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000100000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0x0000000100000000, x1, 952, x4)

# rs2_val == 8589934592, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000200000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0x0000000200000000, x1, 960, x4)

# rs2_val == 17179869184, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000000400000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0x0000000400000000, x1, 968, x4)

# rs2_val == 9007199254740992, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0020000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0x0020000000000000, x1, 976, x4)

# rs2_val == 36028797018963968, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0080000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0x0080000000000000, x1, 984, x4)

# rs2_val == 144115188075855872, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x0200000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000000200, 0x0200000000000000, x1, 992, x4)

# rs2_val == 4611686018427387904, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x4000000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000000010, 0x4000000000000000, x1, 1000, x4)

# rs2_val == -3, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0xfffffffffffffffd, x1, 1008, x4)

# rs2_val == -5, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0xfffffffffffffffb
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000020000, 0xfffffffffffffffb, x1, 1016, x4)

# rs2_val == -9, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffffffffffffff7
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0xfffffffffffffff7, x1, 1024, x4)

# rs2_val == -17, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xffffffffffffffef
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000400000, 0xffffffffffffffef, x1, 1032, x4)

# rs2_val == -1025, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xfffffffffffffbff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xfffffffffffffbff, x1, 1040, x4)

# rs2_val == 140737488355328, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000800000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0x0000800000000000, x1, 1048, x4)

# rs2_val == -2049, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffffffff7ff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xfffffffffffff7ff, x1, 1056, x4)

# rs2_val == -8193, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0xffffffffffffdfff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff6, 0xffffffffffffdfff, x1, 1064, x4)

# rs2_val == -131073, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0xfffffffffffdffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000000009, 0xfffffffffffdffff, x1, 1072, x4)

# rs2_val == -262145, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0xfffffffffffbffff, x1, 1080, x4)

# rs2_val == -524289, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0xfffffffffff7ffff, x1, 1088, x4)

# rs2_val == -1048577, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0xffffffffffefffff, x1, 1096, x4)

# rs2_val == -8796093022209, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xfffff7ffffffffff, x1, 1104, x4)

# rs2_val == -16777217, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0xfffffffffeffffff, x1, 1112, x4)

# rs2_val == -33554433, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xfffffffffdffffff, x1, 1120, x4)

# rs2_val == -134217729, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000004000, 0xfffffffff7ffffff, x1, 1128, x4)

# rs2_val == -2147483649, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0xffffffff7fffffff, x1, 1136, x4)

# rs2_val == -4294967297, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xfffffffeffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000000001, 0xfffffffeffffffff, x1, 1144, x4)

# rs2_val == -8589934593, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0xfffffffdffffffff, x1, 1152, x4)

# rs2_val == -17179869185, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffffffbffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0xfffffffbffffffff, x1, 1160, x4)

# rs2_val == -34359738369, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xfffffff7ffffffff, x1, 1168, x4)

# rs2_val == -137438953473, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0xffffffdfffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000000003, 0xffffffdfffffffff, x1, 1176, x4)

# rs2_val == 274877906944, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000004000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0x0000004000000000, x1, 1184, x4)

# rs2_val == 8796093022208, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000080000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0x0000080000000000, x1, 1192, x4)

# rs2_val == 2199023255552, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000020000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0x0000020000000000, x1, 1200, x4)

# rs2_val == -140737488355329, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xffff7fffffffffff
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0xffff7fffffffffff, x1, 1208, x4)

# rs2_val == 562949953421312, 
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0002000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0x0002000000000000, x1, 1216, x4)

# rs1_val == (-2**(xlen-1)), rs2_val == 524288, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000000080000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0x0000000000080000, x1, 1224, x4)

# rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0x8000000000000000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000000005, 0x8000000000000000, x1, 1232, x4)

# rs2_val == 1, rs1_val == 35184372088832
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000001
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0x0000000000000001, x1, 1240, x4)

# rs1_val == 65536, rs2_val == 16384
# opcode: mulh ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0x0000000000004000
TEST_RR_OP(mulh, x12, x10, x11, 0x0000000000000000, 0x0000000000010000, 0x0000000000004000, x1, 1248, x4)
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

signature_x18_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x18_1:
    .fill 15*(XLEN/32),4,0xdeadbeef


signature_x16_0:
    .fill 13*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 157*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
