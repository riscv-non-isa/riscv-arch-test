
#This assembly file tests the remuw instruction of the RISC-V M extension for the remuw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*M.*);def TEST_CASE_1=True;",remuw)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 == rs2 != rd, rs1==x19, rs2==x19, rd==x30, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs2_val == -2305843009213693953, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: remuw ; op1:x19; op2:x19; dest:x30; op1val:0x8000000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(remuw, x30, x19, x19, 0x0000000000000000, 0x8000000000000000, 0xdfffffffffffffff, x2, 0, x6)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x5, rs2==x3, rd==x9, rs1_val == 0, rs2_val == -1025
# opcode: remuw ; op1:x5; op2:x3; dest:x9; op1val:0x0000000000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(remuw, x9, x5, x3, 0x0000000000000000, 0x0000000000000000, 0xfffffffffffffbff, x2, 8, x6)

# rs1 == rd != rs2, rs1==x4, rs2==x23, rd==x4, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs2_val == -4097, rs1_val == 9223372036854775807
# opcode: remuw ; op1:x4; op2:x23; dest:x4; op1val:0x7fffffffffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(remuw, x4, x4, x23, 0x0000000000000000, 0x7fffffffffffffff, 0xffffffffffffefff, x2, 16, x6)

# rs2 == rd != rs1, rs1==x17, rs2==x0, rd==x0, rs1_val == 1, rs2_val == -18014398509481985
# opcode: remuw ; op1:x17; op2:x0; dest:x0; op1val:0x0000000000000001;  op2val:0xffbfffffffffffff
TEST_RR_OP(remuw, x0, x17, x0, 0x0000000000000000, 0x0000000000000001, 0xffbfffffffffffff, x2, 24, x6)

# rs1 == rs2 == rd, rs1==x26, rs2==x26, rd==x26, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808
# opcode: remuw ; op1:x26; op2:x26; dest:x26; op1val:0xffffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(remuw, x26, x26, x26, 0x0000000000000000, 0xffffffffffffffff, 0x8000000000000000, x2, 32, x6)

# rs1==x9, rs2==x1, rd==x22, rs2_val == 0, rs1_val == -8193
# opcode: remuw ; op1:x9; op2:x1; dest:x22; op1val:0xffffffffffffdfff;  op2val:0x0000000000000000
TEST_RR_OP(remuw, x22, x9, x1, 0x0000000000000000, 0xffffffffffffdfff, 0x0000000000000000, x2, 40, x6)

# rs1==x0, rs2==x18, rd==x27, rs2_val == (2**(xlen-1)-1), rs1_val == -35184372088833, rs1_val < 0 and rs2_val > 0, rs2_val == 9223372036854775807
# opcode: remuw ; op1:x0; op2:x18; dest:x27; op1val:0xffffdfffffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(remuw, x27, x0, x18, 0x0000000000000000, 0xffffdfffffffffff, 0x7fffffffffffffff, x2, 48, x6)

# rs1==x14, rs2==x11, rd==x28, rs2_val == 1, rs1_val > 0 and rs2_val > 0, rs1_val == 67108864
# opcode: remuw ; op1:x14; op2:x11; dest:x28; op1val:0x0000000004000000;  op2val:0x0000000000000001
TEST_RR_OP(remuw, x28, x14, x11, 0x0000000000000000, 0x0000000004000000, 0x0000000000000001, x2, 56, x6)

# rs1==x20, rs2==x22, rd==x11, rs1_val == rs2_val, rs1_val == -549755813889, rs2_val == -549755813889
# opcode: remuw ; op1:x20; op2:x22; dest:x11; op1val:0xffffff7fffffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(remuw, x11, x20, x22, 0x0000000000000000, 0xffffff7fffffffff, 0xffffff7fffffffff, x2, 64, x6)

# rs1==x23, rs2==x10, rd==x16, rs1_val == 2, rs2_val == 4294967296
# opcode: remuw ; op1:x23; op2:x10; dest:x16; op1val:0x0000000000000002;  op2val:0x0000000100000000
TEST_RR_OP(remuw, x16, x23, x10, 0x0000000000000000, 0x0000000000000002, 0x0000000100000000, x2, 72, x6)

# rs1==x29, rs2==x24, rd==x18, rs1_val == 4, rs2_val == 2
# opcode: remuw ; op1:x29; op2:x24; dest:x18; op1val:0x0000000000000004;  op2val:0x0000000000000002
TEST_RR_OP(remuw, x18, x29, x24, 0x0000000000000000, 0x0000000000000004, 0x0000000000000002, x2, 80, x6)

# rs1==x31, rs2==x30, rd==x7, rs1_val == 8, rs2_val == -17
# opcode: remuw ; op1:x31; op2:x30; dest:x7; op1val:0x0000000000000008;  op2val:0xffffffffffffffef
TEST_RR_OP(remuw, x7, x31, x30, 0x0000000000000000, 0x0000000000000008, 0xffffffffffffffef, x2, 88, x6)

# rs1==x16, rs2==x5, rd==x19, rs1_val == 16, 
# opcode: remuw ; op1:x16; op2:x5; dest:x19; op1val:0x0000000000000010;  op2val:0xffbfffffffffffff
TEST_RR_OP(remuw, x19, x16, x5, 0x0000000000000000, 0x0000000000000010, 0xffbfffffffffffff, x2, 96, x6)

# rs1==x24, rs2==x9, rd==x10, rs1_val == 32, rs2_val == -17592186044417
# opcode: remuw ; op1:x24; op2:x9; dest:x10; op1val:0x0000000000000020;  op2val:0xffffefffffffffff
TEST_RR_OP(remuw, x10, x24, x9, 0x0000000000000000, 0x0000000000000020, 0xffffefffffffffff, x2, 104, x6)

# rs1==x18, rs2==x29, rd==x12, rs1_val == 64, rs2_val == 524288
# opcode: remuw ; op1:x18; op2:x29; dest:x12; op1val:0x0000000000000040;  op2val:0x0000000000080000
TEST_RR_OP(remuw, x12, x18, x29, 0x0000000000000000, 0x0000000000000040, 0x0000000000080000, x2, 112, x6)

# rs1==x10, rs2==x21, rd==x31, rs1_val == 128, rs2_val == 8192
# opcode: remuw ; op1:x10; op2:x21; dest:x31; op1val:0x0000000000000080;  op2val:0x0000000000002000
TEST_RR_OP(remuw, x31, x10, x21, 0x0000000000000000, 0x0000000000000080, 0x0000000000002000, x2, 120, x6)

# rs1==x8, rs2==x16, rd==x3, rs1_val == 256, rs2_val == 1048576
# opcode: remuw ; op1:x8; op2:x16; dest:x3; op1val:0x0000000000000100;  op2val:0x0000000000100000
TEST_RR_OP(remuw, x3, x8, x16, 0x0000000000000000, 0x0000000000000100, 0x0000000000100000, x2, 128, x6)

# rs1==x1, rs2==x17, rd==x14, rs1_val == 512, 
# opcode: remuw ; op1:x1; op2:x17; dest:x14; op1val:0x0000000000000200;  op2val:0x8000000000000000
TEST_RR_OP(remuw, x14, x1, x17, 0x0000000000000000, 0x0000000000000200, 0x8000000000000000, x2, 136, x6)

# rs1==x7, rs2==x13, rd==x8, rs1_val == 1024, 
# opcode: remuw ; op1:x7; op2:x13; dest:x8; op1val:0x0000000000000400;  op2val:0xfffffffffffffffa
TEST_RR_OP(remuw, x8, x7, x13, 0x0000000000000000, 0x0000000000000400, 0xfffffffffffffffa, x2, 144, x6)

# rs1==x30, rs2==x6, rd==x13, rs1_val == 2048, rs2_val == -257
# opcode: remuw ; op1:x30; op2:x6; dest:x13; op1val:0x0000000000000800;  op2val:0xfffffffffffffeff
TEST_RR_OP(remuw, x13, x30, x6, 0x0000000000000000, 0x0000000000000800, 0xfffffffffffffeff, x2, 152, x16)
RVTEST_SIGBASE( x9,signature_x9_0)

# rs1==x3, rs2==x28, rd==x24, rs1_val == 4096, rs2_val == -33
# opcode: remuw ; op1:x3; op2:x28; dest:x24; op1val:0x0000000000001000;  op2val:0xffffffffffffffdf
TEST_RR_OP(remuw, x24, x3, x28, 0x0000000000000000, 0x0000000000001000, 0xffffffffffffffdf, x9, 0, x16)

# rs1==x11, rs2==x27, rd==x15, rs1_val == 8192, rs2_val == 4503599627370496
# opcode: remuw ; op1:x11; op2:x27; dest:x15; op1val:0x0000000000002000;  op2val:0x0010000000000000
TEST_RR_OP(remuw, x15, x11, x27, 0x0000000000000000, 0x0000000000002000, 0x0010000000000000, x9, 8, x16)

# rs1==x28, rs2==x25, rd==x6, rs1_val == 16384, rs2_val == 17592186044416
# opcode: remuw ; op1:x28; op2:x25; dest:x6; op1val:0x0000000000004000;  op2val:0x0000100000000000
TEST_RR_OP(remuw, x6, x28, x25, 0x0000000000000000, 0x0000000000004000, 0x0000100000000000, x9, 16, x16)

# rs1==x15, rs2==x12, rd==x29, rs1_val == 32768, rs2_val == -262145
# opcode: remuw ; op1:x15; op2:x12; dest:x29; op1val:0x0000000000008000;  op2val:0xfffffffffffbffff
TEST_RR_OP(remuw, x29, x15, x12, 0x0000000000000000, 0x0000000000008000, 0xfffffffffffbffff, x9, 24, x16)

# rs1==x13, rs2==x2, rd==x23, rs1_val == 65536, rs2_val == 4
# opcode: remuw ; op1:x13; op2:x2; dest:x23; op1val:0x0000000000010000;  op2val:0x0000000000000004
TEST_RR_OP(remuw, x23, x13, x2, 0x0000000000000000, 0x0000000000010000, 0x0000000000000004, x9, 32, x16)

# rs1==x6, rs2==x7, rd==x25, rs1_val == 131072, rs2_val == 8589934592
# opcode: remuw ; op1:x6; op2:x7; dest:x25; op1val:0x0000000000020000;  op2val:0x0000000200000000
TEST_RR_OP(remuw, x25, x6, x7, 0x0000000000000000, 0x0000000000020000, 0x0000000200000000, x9, 40, x16)

# rs1==x2, rs2==x8, rd==x20, rs1_val == 262144, rs2_val == -140737488355329
# opcode: remuw ; op1:x2; op2:x8; dest:x20; op1val:0x0000000000040000;  op2val:0xffff7fffffffffff
TEST_RR_OP(remuw, x20, x2, x8, 0x0000000000000000, 0x0000000000040000, 0xffff7fffffffffff, x9, 48, x16)

# rs1==x25, rs2==x15, rd==x5, rs1_val == 524288, rs2_val == 2097152
# opcode: remuw ; op1:x25; op2:x15; dest:x5; op1val:0x0000000000080000;  op2val:0x0000000000200000
TEST_RR_OP(remuw, x5, x25, x15, 0x0000000000000000, 0x0000000000080000, 0x0000000000200000, x9, 56, x16)

# rs1==x22, rs2==x14, rd==x17, rs1_val == 1048576, rs2_val == -2199023255553
# opcode: remuw ; op1:x22; op2:x14; dest:x17; op1val:0x0000000000100000;  op2val:0xfffffdffffffffff
TEST_RR_OP(remuw, x17, x22, x14, 0x0000000000000000, 0x0000000000100000, 0xfffffdffffffffff, x9, 64, x16)

# rs1==x12, rs2==x31, rd==x2, rs1_val == 2097152, rs2_val == -16385
# opcode: remuw ; op1:x12; op2:x31; dest:x2; op1val:0x0000000000200000;  op2val:0xffffffffffffbfff
TEST_RR_OP(remuw, x2, x12, x31, 0x0000000000000000, 0x0000000000200000, 0xffffffffffffbfff, x9, 72, x16)

# rs1==x27, rs2==x20, rd==x1, rs1_val == 4194304, rs2_val == 512
# opcode: remuw ; op1:x27; op2:x20; dest:x1; op1val:0x0000000000400000;  op2val:0x0000000000000200
TEST_RR_OP(remuw, x1, x27, x20, 0x0000000000000000, 0x0000000000400000, 0x0000000000000200, x9, 80, x16)

# rs1==x21, rs1_val == 8388608, 
# opcode: remuw ; op1:x21; op2:x3; dest:x7; op1val:0x0000000000800000;  op2val:0xffffefffffffffff
TEST_RR_OP(remuw, x7, x21, x3, 0x0000000000000000, 0x0000000000800000, 0xffffefffffffffff, x9, 88, x16)

# rs2==x4, rs1_val == 16777216, rs2_val == -70368744177665
# opcode: remuw ; op1:x7; op2:x4; dest:x20; op1val:0x0000000001000000;  op2val:0xffffbfffffffffff
TEST_RR_OP(remuw, x20, x7, x4, 0x0000000000000000, 0x0000000001000000, 0xffffbfffffffffff, x9, 96, x16)

# rd==x21, rs1_val == 33554432, rs2_val == -5
# opcode: remuw ; op1:x30; op2:x10; dest:x21; op1val:0x0000000002000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(remuw, x21, x30, x10, 0x0000000000000000, 0x0000000002000000, 0xfffffffffffffffb, x9, 104, x16)

# rs1_val == 134217728, rs2_val == 16
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000010
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0x0000000000000010, x9, 112, x16)

# rs1_val == 268435456, rs2_val == -9007199254740993
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xffdfffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0xffdfffffffffffff, x9, 120, x16)

# rs1_val == 536870912, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xfffffffffffffeff, x9, 128, x16)

# rs1_val == 1073741824, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000009
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0x0000000000000009, x9, 136, x16)

# rs1_val == 2147483648, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xffbfffffffffffff, x9, 144, x16)

# rs1_val == 4294967296, rs2_val == 6148914691236517205
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x5555555555555555
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x5555555555555555, x9, 152, x16)

# rs1_val == 8589934592, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000010
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0x0000000000000010, x9, 160, x16)

# rs1_val == 17179869184, rs2_val == 2147483648
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000080000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0x0000000080000000, x9, 168, x16)

# rs1_val == 34359738368, rs2_val == -1048577
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xffffffffffefffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xffffffffffefffff, x9, 176, x16)

# rs1_val == 68719476736, rs2_val == -35184372088833
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xffffdfffffffffff, x9, 184, x16)

# rs1_val == 137438953472, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xffffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xffffffffffffffff, x9, 192, x16)

# rs1_val == 274877906944, rs2_val == -8589934593
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0xfffffffdffffffff, x9, 200, x16)

# rs1_val == 549755813888, rs2_val == -33554433
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffffdffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xfffffffffdffffff, x9, 208, x16)

# rs1_val == 1099511627776, rs2_val == 65536
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000010000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0x0000000000010000, x9, 216, x16)

# rs1_val == 2199023255552, rs2_val == 35184372088832
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000200000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0x0000200000000000, x9, 224, x16)

# rs1_val == 4398046511104, rs2_val == 288230376151711744
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0400000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0x0400000000000000, x9, 232, x16)

# rs1_val == 8796093022208, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000010000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0000000000010000, x9, 240, x16)

# rs1_val == 17592186044416, rs2_val == -36028797018963969
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xff7fffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0xff7fffffffffffff, x9, 248, x16)

# rs1_val == 35184372088832, rs2_val == 1099511627776
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000010000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0x0000010000000000, x9, 256, x16)

# rs1_val == 70368744177664, rs2_val == -137438953473
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xffffffdfffffffff, x9, 264, x16)

# rs1_val == 140737488355328, rs2_val == 1024
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000400
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0x0000000000000400, x9, 272, x16)

# rs1_val == 281474976710656, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0xffffdfffffffffff, x9, 280, x16)

# rs1_val == 562949953421312, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xfffffffffffffff9
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0xfffffffffffffff9, x9, 288, x16)

# rs1_val == 1125899906842624, rs2_val == -1099511627777
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0xfffffeffffffffff, x9, 296, x16)

# rs1_val == 2251799813685248, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0008000000000000, 0xfffffffffffbffff, x9, 304, x16)

# rs1_val == 4503599627370496, rs2_val == -288230376151711745
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xfbffffffffffffff, x9, 312, x16)

# rs1_val == 9007199254740992, rs2_val == -8193
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0xffffffffffffdfff, x9, 320, x16)

# rs1_val == 18014398509481984, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000100000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0x0000000100000000, x9, 328, x16)

# rs1_val == 36028797018963968, rs2_val == -16777217
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0xfffffffffeffffff, x9, 336, x16)

# rs1_val == 72057594037927936, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000100000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0x0000000000100000, x9, 344, x16)

# rs1_val == 144115188075855872, rs2_val == 4096
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000001000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0000000000001000, x9, 352, x16)

# rs1_val == 288230376151711744, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xffffbfffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0xffffbfffffffffff, x9, 360, x16)

# rs1_val == 576460752303423488, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0xffffffffffffffef, x9, 368, x16)

# rs1_val == 1152921504606846976, rs2_val == 8796093022208
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000080000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0x0000080000000000, x9, 376, x16)

# rs1_val == 2305843009213693952, rs2_val == 32
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000020
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0x0000000000000020, x9, 384, x16)

# rs1_val == 4611686018427387904, rs2_val == -4398046511105
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0xfffffbffffffffff, x9, 392, x16)

# rs1_val == -2, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000080000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0x0000000080000000, x9, 400, x16)

# rs1_val == -3, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffffffffffffff8
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0xfffffffffffffff8, x9, 408, x16)

# rs1_val == -5, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x7fffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0x7fffffffffffffff, x9, 416, x16)

# rs1_val == -9, rs2_val == 67108864
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000004000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0x0000000004000000, x9, 424, x16)

# rs1_val == -17, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffffffffffef
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0xffffffffffffffef, x9, 432, x16)

# rs1_val == -33, rs2_val == 134217728
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000008000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0x0000000008000000, x9, 440, x16)

# rs1_val == -65, rs2_val == -65
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xffffffffffffffbf
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0xffffffffffffffbf, x9, 448, x16)

# rs1_val == -129, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffffffeffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0xfffffffffeffffff, x9, 456, x16)

# rs1_val == -257, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfffffffffffffffb
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xfffffffffffffffb, x9, 464, x16)

# rs1_val == -513, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000080000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0x0000000080000000, x9, 472, x16)

# rs2_val == -1125899906842625, rs1_val == -2199023255553
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xfffbffffffffffff, x9, 480, x16)

# rs2_val == -2251799813685249, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0xfff7ffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000400, 0xfff7ffffffffffff, x9, 488, x16)

# rs2_val == -4503599627370497, rs1_val == -68719476737
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0xffefffffffffffff, x9, 496, x16)

# rs2_val == -72057594037927937, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfeffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0xfeffffffffffffff, x9, 504, x16)

# rs2_val == -144115188075855873, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xfdffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000100000, 0xfdffffffffffffff, x9, 512, x16)

# rs2_val == -576460752303423489, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0xf7ffffffffffffff, x9, 520, x16)

# rs2_val == -1152921504606846977, rs1_val == -8388609
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xefffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0xefffffffffffffff, x9, 528, x16)

# rs2_val == -4611686018427387905, rs1_val == -268435457
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xbfffffffffffffff, x9, 536, x16)

# rs2_val == -6148914691236517206, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0xaaaaaaaaaaaaaaaa, x9, 544, x16)

# rs1_val == -1025, rs2_val == 281474976710656
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0001000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0x0001000000000000, x9, 552, x16)

# rs1_val == -2049, rs2_val == 1125899906842624
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0004000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0x0004000000000000, x9, 560, x16)

# rs1_val == -4097, rs2_val == -562949953421313
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfffdffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0xfffdffffffffffff, x9, 568, x16)

# rs1_val == -16385, rs2_val == -65537
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfffffffffffeffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0xfffffffffffeffff, x9, 576, x16)

# rs1_val == -32769, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xffdfffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0xffdfffffffffffff, x9, 584, x16)

# rs1_val == -65537, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xaaaaaaaaaaaaaaaa, x9, 592, x16)

# rs1_val == -131073, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xc000000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0xc000000000000000, x9, 600, x16)

# rs1_val == -262145, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000002000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0x0000000000002000, x9, 608, x16)

# rs1_val == -524289, rs2_val == 536870912
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000020000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0x0000000020000000, x9, 616, x16)

# rs1_val == -1048577, rs2_val == -8388609
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xffffffffff7fffff, x9, 624, x16)

# rs1_val == -2097153, rs2_val == 70368744177664
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000400000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0x0000400000000000, x9, 632, x16)

# rs1_val == -4194305, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0xffffff7fffffffff, x9, 640, x16)

# rs1_val == -16777217, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0xfff7ffffffffffff, x9, 648, x16)

# rs1_val == -33554433, rs2_val == -134217729
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0xfffffffff7ffffff, x9, 656, x16)

# rs1_val == -67108865, rs2_val == -536870913
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0xffffffffdfffffff, x9, 664, x16)

# rs1_val == -134217729, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0xaaaaaaaaaaaaaaaa, x9, 672, x16)

# rs1_val == -536870913, rs2_val == -68719476737
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xffffffefffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0xffffffefffffffff, x9, 680, x16)

# rs1_val == -1073741825, rs2_val == 64
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000040
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0x0000000000000040, x9, 688, x16)

# rs1_val == -2147483649, rs2_val == 549755813888
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000008000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0x0000008000000000, x9, 696, x16)

# rs1_val == -4294967297, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffeffffffff, 0xffff7fffffffffff, x9, 704, x16)

# rs1_val == -8589934593, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000004
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffdffffffff, 0x0000000000000004, x9, 712, x16)

# rs1_val == -17179869185, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0xfffffdffffffffff, x9, 720, x16)

# rs1_val == -34359738369, rs2_val == 4398046511104
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000040000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0x0000040000000000, x9, 728, x16)

# rs1_val == -137438953473, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0010000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0x0010000000000000, x9, 736, x16)

# rs1_val == -274877906945, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0xdfffffffffffffff, x9, 744, x16)

# rs1_val == -1099511627777, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0xffffbfffffffffff, x9, 752, x16)

# rs1_val == -4398046511105, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0xfffffffdffffffff, x9, 760, x16)

# rs1_val == -8796093022209, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xffffffffffffdfff, x9, 768, x16)

# rs1_val == -17592186044417, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0xfffffffffdffffff, x9, 776, x16)

# rs1_val == -70368744177665, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0xffffefffffffffff, x9, 784, x16)

# rs1_val == -140737488355329, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000008000000, x9, 792, x16)

# rs1_val == -281474976710657, rs2_val == 2048
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000800
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0x0000000000000800, x9, 800, x16)

# rs1_val == -562949953421313, rs2_val == 256
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0x0000000000000100, x9, 808, x16)

# rs1_val == -1125899906842625, rs2_val == -2
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xfffffffffffffffe, x9, 816, x16)

# rs1_val == -2251799813685249, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x0000000000000020, x9, 824, x16)

# rs1_val == -4503599627370497, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0xffffffdfffffffff, x9, 832, x16)

# rs1_val == -9007199254740993, rs2_val == 1152921504606846976
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x1000000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0x1000000000000000, x9, 840, x16)

# rs1_val == -18014398509481985, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000200
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0x0000000000000200, x9, 848, x16)

# rs1_val == -36028797018963969, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0xffffbfffffffffff, x9, 856, x16)

# rs1_val == -72057594037927937, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xffffffffffefffff, x9, 864, x16)

# rs1_val == -144115188075855873, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0xfffbffffffffffff, x9, 872, x16)

# rs1_val == -288230376151711745, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0xffffefffffffffff, x9, 880, x16)

# rs1_val == -576460752303423489, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000200000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0x0000000200000000, x9, 888, x16)

# rs1_val == -1152921504606846977, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0xffffffffffefffff, x9, 896, x16)

# rs1_val == -2305843009213693953, rs2_val == 576460752303423488
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0800000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0x0800000000000000, x9, 904, x16)

# rs1_val == -4611686018427387905, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0xffefffffffffffff, x9, 912, x16)

# rs1_val == 6148914691236517205, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfbffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xfbffffffffffffff, x9, 920, x16)

# rs1_val == -6148914691236517206, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffffffffffffefff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0xffffffffffffefff, x9, 928, x16)

# rs2_val == 8, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0x0000000000000008, x9, 936, x16)

# rs2_val == 128, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000080
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0x0000000000000080, x9, 944, x16)

# rs2_val == 16384, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000004000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0x0000000000004000, x9, 952, x16)

# rs2_val == 32768, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000008000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000001000000, 0x0000000000008000, x9, 960, x16)

# rs2_val == 131072, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000020000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0x0000000000020000, x9, 968, x16)

# rs2_val == 262144, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0x0000000000040000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff6, 0x0000000000040000, x9, 976, x16)

# rs2_val == 4194304, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000400000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0x0000000000400000, x9, 984, x16)

# rs2_val == 8388608, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000800000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000000800000, x9, 992, x16)

# rs2_val == 16777216, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000001000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0000000001000000, x9, 1000, x16)

# rs2_val == 33554432, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000002000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0x0000000002000000, x9, 1008, x16)

# rs2_val == 268435456, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000010000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x0000000010000000, x9, 1016, x16)

# rs2_val == 1073741824, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x0000000040000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000200, 0x0000000040000000, x9, 1024, x16)

# rs2_val == 17179869184, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0000000400000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000008, 0x0000000400000000, x9, 1032, x16)

# rs2_val == 34359738368, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0x0000000800000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000003, 0x0000000800000000, x9, 1040, x16)

# rs2_val == 68719476736, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000001000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0x0000001000000000, x9, 1048, x16)

# rs2_val == 137438953472, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000002000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0x0000002000000000, x9, 1056, x16)

# rs2_val == 274877906944, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000004000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000040000, 0x0000004000000000, x9, 1064, x16)

# rs2_val == 2251799813685248, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0008000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0008000000000000, x9, 1072, x16)

# rs2_val == 9007199254740992, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0020000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0x0020000000000000, x9, 1080, x16)

# rs2_val == 18014398509481984, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0040000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0x0040000000000000, x9, 1088, x16)

# rs2_val == 36028797018963968, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0080000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0080000000000000, x9, 1096, x16)

# rs2_val == 72057594037927936, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0100000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000100000, 0x0100000000000000, x9, 1104, x16)

# rs2_val == 144115188075855872, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0200000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0x0200000000000000, x9, 1112, x16)

# rs2_val == 2305843009213693952, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x2000000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0x2000000000000000, x9, 1120, x16)

# rs2_val == 4611686018427387904, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x4000000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0x4000000000000000, x9, 1128, x16)

# rs2_val == -3, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xfffffffffffffffd, x9, 1136, x16)

# rs2_val == -9, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0xfffffffffffffff7
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000200, 0xfffffffffffffff7, x9, 1144, x16)

# rs2_val == -129, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0xffffffffffffff7f, x9, 1152, x16)

# rs2_val == -513, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0xfffffffffffffdff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000002000, 0xfffffffffffffdff, x9, 1160, x16)

# rs2_val == -2049, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffffffffffff7ff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0xfffffffffffff7ff, x9, 1168, x16)

# rs2_val == -32769, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0xffffffffffff7fff, x9, 1176, x16)

# rs2_val == -131073, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffffffffffdffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0xfffffffffffdffff, x9, 1184, x16)

# rs2_val == -524289, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0xfffffffffff7ffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff9, 0xfffffffffff7ffff, x9, 1192, x16)

# rs2_val == -2097153, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000010000;  op2val:0xffffffffffdfffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000010000, 0xffffffffffdfffff, x9, 1200, x16)

# rs2_val == -4194305, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0xffffffffffbfffff, x9, 1208, x16)

# rs2_val == -67108865, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0xfffffffffbffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff9, 0xfffffffffbffffff, x9, 1216, x16)

# rs2_val == -268435457, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xffffffffefffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0xffffffffefffffff, x9, 1224, x16)

# rs2_val == -1073741825, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0xffffffffbfffffff, x9, 1232, x16)

# rs2_val == -2147483649, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0xffffffff7fffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000020, 0xffffffff7fffffff, x9, 1240, x16)

# rs2_val == -4294967297, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0xfffffffeffffffff, x9, 1248, x16)

# rs2_val == -17179869185, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0xfffffffbffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffa, 0xfffffffbffffffff, x9, 1256, x16)

# rs2_val == -34359738369, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xfffffff7ffffffff, x9, 1264, x16)

# rs2_val == -274877906945, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xffffffbfffffffff, x9, 1272, x16)

# rs2_val == 2199023255552, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000020000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0x0000020000000000, x9, 1280, x16)

# rs2_val == -8796093022209, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0xfffff7ffffffffff, x9, 1288, x16)

# rs2_val == 140737488355328, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000800000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0x0000800000000000, x9, 1296, x16)

# rs2_val == -281474976710657, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0xfffeffffffffffff, x9, 1304, x16)

# rs2_val == 562949953421312, 
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0002000000000000
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0x0002000000000000, x9, 1312, x16)

# rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs2_val == -2305843009213693953, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0xdfffffffffffffff, x9, 1320, x16)

# rs1_val == 1, rs2_val == -18014398509481985
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xffbfffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0x0000000000000001, 0xffbfffffffffffff, x9, 1328, x16)

# rs2_val == (2**(xlen-1)-1), rs1_val == -35184372088833, rs1_val < 0 and rs2_val > 0, rs2_val == 9223372036854775807
# opcode: remuw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(remuw, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0x7fffffffffffffff, x9, 1336, x16)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x9_0:
    .fill 168*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
