
#This assembly file tests the sltu instruction of the RISC-V I extension for the sltu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltu)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 == rs2 == rd, rs1==x23, rs2==x23, rd==x23, rs1_val == 0, rs2_val == 18446744073709551611
# opcode: sltu ; op1:x23; op2:x23; dest:x23; op1val:0x0000000000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(sltu, x23, x23, x23, 0x1, 0x0000000000000000, 0xfffffffffffffffb, x4, 0, x7)

# rs1 == rd != rs2, rs1==x2, rs2==x17, rd==x2, rs1_val == (2**(xlen)-1), rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0, rs2_val == 18302628885633695743, rs1_val > 0 and rs2_val > 0
# opcode: sltu ; op1:x2; op2:x17; dest:x2; op1val:0xffffffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(sltu, x2, x2, x17, 0x0, 0xffffffffffffffff, 0xfdffffffffffffff, x4, 8, x7)

# rs2 == rd != rs1, rs1==x31, rs2==x3, rd==x3, rs1_val == 1, rs2_val == 18446744073675997183
# opcode: sltu ; op1:x31; op2:x3; dest:x3; op1val:0x0000000000000001;  op2val:0xfffffffffdffffff
TEST_RR_OP(sltu, x3, x31, x3, 0x1, 0x0000000000000001, 0xfffffffffdffffff, x4, 16, x7)

# rs1 == rs2 != rd, rs1==x20, rs2==x20, rd==x30, rs2_val == 0, rs1_val == 18446726481523507199
# opcode: sltu ; op1:x20; op2:x20; dest:x30; op1val:0xffffefffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sltu, x30, x20, x20, 0x0, 0xffffefffffffffff, 0x0000000000000000, x4, 24, x7)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x13, rs2==x10, rd==x12, rs2_val == (2**(xlen)-1), 
# opcode: sltu ; op1:x13; op2:x10; dest:x12; op1val:0x0000000000000003;  op2val:0xffffffffffffffff
TEST_RR_OP(sltu, x12, x13, x10, 0x1, 0x0000000000000003, 0xffffffffffffffff, x4, 32, x7)

# rs1==x8, rs2==x19, rd==x21, rs2_val == 1, rs1_val == 65536
# opcode: sltu ; op1:x8; op2:x19; dest:x21; op1val:0x0000000000010000;  op2val:0x0000000000000001
TEST_RR_OP(sltu, x21, x8, x19, 0x0, 0x0000000000010000, 0x0000000000000001, x4, 40, x7)

# rs1==x28, rs2==x15, rd==x9, rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0, rs1_val == 562949953421312, rs2_val == 562949953421312
# opcode: sltu ; op1:x28; op2:x15; dest:x9; op1val:0x0002000000000000;  op2val:0x0002000000000000
TEST_RR_OP(sltu, x9, x28, x15, 0x0, 0x0002000000000000, 0x0002000000000000, x4, 48, x7)

# rs1==x30, rs2==x18, rd==x8, rs1_val == 2, rs2_val == 18446744073709551614
# opcode: sltu ; op1:x30; op2:x18; dest:x8; op1val:0x0000000000000002;  op2val:0xfffffffffffffffe
TEST_RR_OP(sltu, x8, x30, x18, 0x1, 0x0000000000000002, 0xfffffffffffffffe, x4, 56, x7)

# rs1==x15, rs2==x12, rd==x19, rs1_val == 4, rs2_val == 8388608
# opcode: sltu ; op1:x15; op2:x12; dest:x19; op1val:0x0000000000000004;  op2val:0x0000000000800000
TEST_RR_OP(sltu, x19, x15, x12, 0x1, 0x0000000000000004, 0x0000000000800000, x4, 64, x7)

# rs1==x10, rs2==x27, rd==x26, rs1_val == 8, 
# opcode: sltu ; op1:x10; op2:x27; dest:x26; op1val:0x0000000000000008;  op2val:0x000000000000000d
TEST_RR_OP(sltu, x26, x10, x27, 0x1, 0x0000000000000008, 0x000000000000000d, x4, 72, x7)

# rs1==x3, rs2==x6, rd==x31, rs1_val == 16, 
# opcode: sltu ; op1:x3; op2:x6; dest:x31; op1val:0x0000000000000010;  op2val:0x000000000000000d
TEST_RR_OP(sltu, x31, x3, x6, 0x0, 0x0000000000000010, 0x000000000000000d, x4, 80, x7)

# rs1==x19, rs2==x26, rd==x24, rs1_val == 32, rs2_val == 18446744073709547519
# opcode: sltu ; op1:x19; op2:x26; dest:x24; op1val:0x0000000000000020;  op2val:0xffffffffffffefff
TEST_RR_OP(sltu, x24, x19, x26, 0x1, 0x0000000000000020, 0xffffffffffffefff, x4, 88, x7)

# rs1==x14, rs2==x2, rd==x1, rs1_val == 64, rs2_val == 18374686479671623679
# opcode: sltu ; op1:x14; op2:x2; dest:x1; op1val:0x0000000000000040;  op2val:0xfeffffffffffffff
TEST_RR_OP(sltu, x1, x14, x2, 0x1, 0x0000000000000040, 0xfeffffffffffffff, x4, 96, x7)

# rs1==x17, rs2==x8, rd==x18, rs1_val == 128, rs2_val == 18446744056529682431
# opcode: sltu ; op1:x17; op2:x8; dest:x18; op1val:0x0000000000000080;  op2val:0xfffffffbffffffff
TEST_RR_OP(sltu, x18, x17, x8, 0x1, 0x0000000000000080, 0xfffffffbffffffff, x4, 104, x7)

# rs1==x24, rs2==x22, rd==x28, rs1_val == 256, rs2_val == 9007199254740992
# opcode: sltu ; op1:x24; op2:x22; dest:x28; op1val:0x0000000000000100;  op2val:0x0020000000000000
TEST_RR_OP(sltu, x28, x24, x22, 0x1, 0x0000000000000100, 0x0020000000000000, x4, 112, x7)

# rs1==x6, rs2==x14, rd==x20, rs1_val == 512, rs2_val == 18014398509481984
# opcode: sltu ; op1:x6; op2:x14; dest:x20; op1val:0x0000000000000200;  op2val:0x0040000000000000
TEST_RR_OP(sltu, x20, x6, x14, 0x1, 0x0000000000000200, 0x0040000000000000, x4, 120, x7)

# rs1==x21, rs2==x1, rd==x11, rs1_val == 1024, rs2_val == 18446462598732840959
# opcode: sltu ; op1:x21; op2:x1; dest:x11; op1val:0x0000000000000400;  op2val:0xfffeffffffffffff
TEST_RR_OP(sltu, x11, x21, x1, 0x1, 0x0000000000000400, 0xfffeffffffffffff, x4, 128, x7)

# rs1==x11, rs2==x16, rd==x17, rs1_val == 2048, rs2_val == 1125899906842624
# opcode: sltu ; op1:x11; op2:x16; dest:x17; op1val:0x0000000000000800;  op2val:0x0004000000000000
TEST_RR_OP(sltu, x17, x11, x16, 0x1, 0x0000000000000800, 0x0004000000000000, x4, 136, x7)

# rs1==x9, rs2==x13, rd==x6, rs1_val == 4096, rs2_val == 2
# opcode: sltu ; op1:x9; op2:x13; dest:x6; op1val:0x0000000000001000;  op2val:0x0000000000000002
TEST_RR_OP(sltu, x6, x9, x13, 0x0, 0x0000000000001000, 0x0000000000000002, x4, 144, x7)

# rs1==x26, rs2==x29, rd==x5, rs1_val == 8192, rs2_val == 36028797018963968
# opcode: sltu ; op1:x26; op2:x29; dest:x5; op1val:0x0000000000002000;  op2val:0x0080000000000000
TEST_RR_OP(sltu, x5, x26, x29, 0x1, 0x0000000000002000, 0x0080000000000000, x4, 152, x7)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x4, rs2==x24, rd==x27, rs1_val == 16384, rs2_val == 18446744072635809791
# opcode: sltu ; op1:x4; op2:x24; dest:x27; op1val:0x0000000000004000;  op2val:0xffffffffbfffffff
TEST_RR_OP(sltu, x27, x4, x24, 0x1, 0x0000000000004000, 0xffffffffbfffffff, x2, 0, x3)

# rs1==x29, rs2==x11, rd==x25, rs1_val == 32768, rs2_val == 4611686018427387904
# opcode: sltu ; op1:x29; op2:x11; dest:x25; op1val:0x0000000000008000;  op2val:0x4000000000000000
TEST_RR_OP(sltu, x25, x29, x11, 0x1, 0x0000000000008000, 0x4000000000000000, x2, 8, x3)

# rs1==x25, rs2==x28, rd==x4, rs1_val == 131072, 
# opcode: sltu ; op1:x25; op2:x28; dest:x4; op1val:0x0000000000020000;  op2val:0x0000000000000001
TEST_RR_OP(sltu, x4, x25, x28, 0x0, 0x0000000000020000, 0x0000000000000001, x2, 16, x3)

# rs1==x16, rs2==x9, rd==x13, rs1_val == 262144, rs2_val == 70368744177664
# opcode: sltu ; op1:x16; op2:x9; dest:x13; op1val:0x0000000000040000;  op2val:0x0000400000000000
TEST_RR_OP(sltu, x13, x16, x9, 0x1, 0x0000000000040000, 0x0000400000000000, x2, 24, x3)

# rs1==x0, rs2==x4, rd==x10, rs1_val == 524288, 
# opcode: sltu ; op1:x0; op2:x4; dest:x10; op1val:0x0000000000080000;  op2val:0xfffeffffffffffff
TEST_RR_OP(sltu, x10, x0, x4, 0x1, 0x0000000000080000, 0xfffeffffffffffff, x2, 32, x3)

# rs1==x7, rs2==x0, rd==x22, rs1_val == 1048576, 
# opcode: sltu ; op1:x7; op2:x0; dest:x22; op1val:0x0000000000100000;  op2val:0xfffffffffffffffe
TEST_RR_OP(sltu, x22, x7, x0, 0x1, 0x0000000000100000, 0xfffffffffffffffe, x2, 40, x3)

# rs1==x1, rs2==x25, rd==x7, rs1_val == 2097152, rs2_val == 33554432
# opcode: sltu ; op1:x1; op2:x25; dest:x7; op1val:0x0000000000200000;  op2val:0x0000000002000000
TEST_RR_OP(sltu, x7, x1, x25, 0x1, 0x0000000000200000, 0x0000000002000000, x2, 48, x3)

# rs1==x12, rs2==x21, rd==x29, rs1_val == 4194304, rs2_val == 134217728
# opcode: sltu ; op1:x12; op2:x21; dest:x29; op1val:0x0000000000400000;  op2val:0x0000000008000000
TEST_RR_OP(sltu, x29, x12, x21, 0x1, 0x0000000000400000, 0x0000000008000000, x2, 56, x3)

# rs1==x18, rs2==x31, rd==x14, rs1_val == 8388608, rs2_val == 536870912
# opcode: sltu ; op1:x18; op2:x31; dest:x14; op1val:0x0000000000800000;  op2val:0x0000000020000000
TEST_RR_OP(sltu, x14, x18, x31, 0x1, 0x0000000000800000, 0x0000000020000000, x2, 64, x3)

# rs1==x5, rs2==x30, rd==x15, rs1_val == 16777216, rs2_val == 131072
# opcode: sltu ; op1:x5; op2:x30; dest:x15; op1val:0x0000000001000000;  op2val:0x0000000000020000
TEST_RR_OP(sltu, x15, x5, x30, 0x0, 0x0000000001000000, 0x0000000000020000, x2, 72, x3)

# rs1==x22, rs2==x5, rd==x16, rs1_val == 33554432, rs2_val == 18446744039349813247
# opcode: sltu ; op1:x22; op2:x5; dest:x16; op1val:0x0000000002000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(sltu, x16, x22, x5, 0x1, 0x0000000002000000, 0xfffffff7ffffffff, x2, 80, x3)

# rs1==x27, rs2==x7, rd==x0, rs1_val == 67108864, rs2_val == 18446739675663040511
# opcode: sltu ; op1:x27; op2:x7; dest:x0; op1val:0x0000000004000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(sltu, x0, x27, x7, 0x1, 0x0000000004000000, 0xfffffbffffffffff, x2, 88, x3)

# rs1_val == 134217728, rs2_val == 18446744073642442751
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000008000000, 0xfffffffffbffffff, x2, 96, x3)

# rs1_val == 268435456, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x000000000000000e
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000010000000, 0x000000000000000e, x2, 104, x3)

# rs1_val == 536870912, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0004000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000020000000, 0x0004000000000000, x2, 112, x3)

# rs1_val == 1073741824, rs2_val == 4194304
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000400000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000040000000, 0x0000000000400000, x2, 120, x3)

# rs1_val == 2147483648, rs2_val == 2048
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000800
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000080000000, 0x0000000000000800, x2, 128, x3)

# rs1_val == 4294967296, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0004000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000100000000, 0x0004000000000000, x2, 136, x3)

# rs1_val == 8589934592, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000200000000, 0xfffffbffffffffff, x2, 144, x3)

# rs1_val == 17179869184, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000400000000, 0xfffffffbffffffff, x2, 152, x3)

# rs1_val == 34359738368, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x000000000000000f
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000800000000, 0x000000000000000f, x2, 160, x3)

# rs1_val == 68719476736, rs2_val == 18446744073705357311
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000001000000000, 0xffffffffffbfffff, x2, 168, x3)

# rs1_val == 137438953472, rs2_val == 18446744065119617023
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000002000000000, 0xfffffffdffffffff, x2, 176, x3)

# rs1_val == 274877906944, rs2_val == 8192
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000002000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000004000000000, 0x0000000000002000, x2, 184, x3)

# rs1_val == 549755813888, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffbffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000008000000000, 0xfffffffbffffffff, x2, 192, x3)

# rs1_val == 1099511627776, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x000000000000000e
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000010000000000, 0x000000000000000e, x2, 200, x3)

# rs1_val == 2199023255552, rs2_val == 68719476736
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000001000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000001000000000, x2, 208, x3)

# rs1_val == 4398046511104, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000001
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000000001, x2, 216, x3)

# rs1_val == 8796093022208, rs2_val == 18446742974197923839
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000080000000000, 0xfffffeffffffffff, x2, 224, x3)

# rs1_val == 17592186044416, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000002000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000100000000000, 0x0000000002000000, x2, 232, x3)

# rs1_val == 35184372088832, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0080000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000200000000000, 0x0080000000000000, x2, 240, x3)

# rs1_val == 70368744177664, rs2_val == 32768
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000008000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000400000000000, 0x0000000000008000, x2, 248, x3)

# rs1_val == 140737488355328, rs2_val == 18446744073709550591
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000800000000000, 0xfffffffffffffbff, x2, 256, x3)

# rs1_val == 281474976710656, rs2_val == 16140901064495857663
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0001000000000000, 0xdfffffffffffffff, x2, 264, x3)

# rs1_val == 1125899906842624, rs2_val == 524288
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000080000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000000080000, x2, 272, x3)

# rs1_val == 2251799813685248, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0008000000000000, 0xdfffffffffffffff, x2, 280, x3)

# rs1_val == 4503599627370496, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0010000000000000, 0xffffffffbfffffff, x2, 288, x3)

# rs1_val == 9007199254740992, rs2_val == 18446726481523507199
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0020000000000000, 0xffffefffffffffff, x2, 296, x3)

# rs1_val == 18014398509481984, rs2_val == 18446603336221196287
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0040000000000000, 0xffff7fffffffffff, x2, 304, x3)

# rs1_val == 36028797018963968, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000005
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000005, x2, 312, x3)

# rs1_val == 72057594037927936, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000080000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0100000000000000, 0x0000000000080000, x2, 320, x3)

# rs1_val == 144115188075855872, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0200000000000000, 0xfffffffdffffffff, x2, 328, x3)

# rs1_val == 288230376151711744, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0400000000000000, 0xffffefffffffffff, x2, 336, x3)

# rs1_val == 576460752303423488, rs2_val == 64
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000040
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000000040, x2, 344, x3)

# rs1_val == 1152921504606846976, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfffffffffbffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x1000000000000000, 0xfffffffffbffffff, x2, 352, x3)

# rs1_val == 2305843009213693952, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xfffffffffffffffe
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x2000000000000000, 0xfffffffffffffffe, x2, 360, x3)

# rs1_val == 4611686018427387904, rs2_val == 18446744073709551359
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x4000000000000000, 0xfffffffffffffeff, x2, 368, x3)

# rs1_val == 9223372036854775808, rs2_val == 18446744073709420543
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x8000000000000000, 0xfffffffffffdffff, x2, 376, x3)

# rs1_val == 18446744073709551614, rs2_val == 18446744073708503039
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xffffffffffefffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffe, 0xffffffffffefffff, x2, 384, x3)

# rs1_val == 18446744073709551613, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0080000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffd, 0x0080000000000000, x2, 392, x3)

# rs1_val == 18446744073709551611, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000012
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffb, 0x0000000000000012, x2, 400, x3)

# rs1_val == 18446744073709551607, rs2_val == 18446744073709551613
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffffffffffffffd
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffffffffff7, 0xfffffffffffffffd, x2, 408, x3)

# rs1_val == 18446744073709551599, rs2_val == 576460752303423488
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0800000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffef, 0x0800000000000000, x2, 416, x3)

# rs1_val == 18446744073709551583, rs2_val == 4294967296
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000100000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffdf, 0x0000000100000000, x2, 424, x3)

# rs1_val == 18446744073709551551, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfffeffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffbf, 0xfffeffffffffffff, x2, 432, x3)

# rs1_val == 18446744073709551487, rs2_val == 18446744073172680703
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xffffffffdfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffff7f, 0xffffffffdfffffff, x2, 440, x3)

# rs1_val == 18446744073709551359, rs2_val == 274877906944
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000004000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffeff, 0x0000004000000000, x2, 448, x3)

# rs1_val == 18446744073709551103, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000080000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffdff, 0x0000000000080000, x2, 456, x3)

# rs1_val == 18446744073709550591, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0004000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffbff, 0x0004000000000000, x2, 464, x3)

# rs1_val == 18446744073709549567, rs2_val == 67108864
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000004000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffff7ff, 0x0000000004000000, x2, 472, x3)

# rs1_val == 18446744073709547519, rs2_val == 8589934592
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000200000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffefff, 0x0000000200000000, x2, 480, x3)

# rs1_val == 18446744073709543423, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x000000000000000d
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffdfff, 0x000000000000000d, x2, 488, x3)

# rs1_val == 18446744073709535231, rs2_val == 18446744073441116159
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xffffffffefffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffbfff, 0xffffffffefffffff, x2, 496, x3)

# rs1_val == 18446744073709518847, rs2_val == 18437736874454810623
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xffdfffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffff7fff, 0xffdfffffffffffff, x2, 504, x3)

# rs1_val == 18446744073709486079, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0020000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffeffff, 0x0020000000000000, x2, 512, x3)

# rs2_val == 18410715276690587647, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0xff7fffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000004, 0xff7fffffffffffff, x2, 520, x3)

# rs2_val == 18158513697557839871, rs1_val == 18446743936270598143
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffdfffffffff, 0xfbffffffffffffff, x2, 528, x3)

# rs2_val == 17870283321406128127, rs1_val == 18446742974197923839
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffeffffffffff, 0xf7ffffffffffffff, x2, 536, x3)

# rs2_val == 17293822569102704639, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xefffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffdfff, 0xefffffffffffffff, x2, 544, x3)

# rs2_val == 13835058055282163711, rs1_val == 18446744073575333887
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffff7ffffff, 0xbfffffffffffffff, x2, 552, x3)

# rs2_val == 9223372036854775807, rs1_val == 18446744056529682431
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffbffffffff, 0x7fffffffffffffff, x2, 560, x3)

# rs2_val == 6148914691236517205, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x5555555555555555
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000010, 0x5555555555555555, x2, 568, x3)

# rs2_val == 12297829382473034410, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0400000000000000, 0xaaaaaaaaaaaaaaaa, x2, 576, x3)

# rs1_val == 18446744073709420543, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000400000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffdffff, 0x0000000000400000, x2, 584, x3)

# rs1_val == 18446744073709289471, rs2_val == 1048576
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000100000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffbffff, 0x0000000000100000, x2, 592, x3)

# rs1_val == 18446744073709027327, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000100000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffff7ffff, 0x0000000100000000, x2, 600, x3)

# rs1_val == 18446744073708503039, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffffffefffff, 0xfffffffffffdffff, x2, 608, x3)

# rs1_val == 18446744073707454463, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffdfffff, 0xf7ffffffffffffff, x2, 616, x3)

# rs1_val == 18446744073705357311, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffbfffff, 0xfffffffffbffffff, x2, 624, x3)

# rs1_val == 18446744073701163007, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000800000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffff7fffff, 0x0000000000800000, x2, 632, x3)

# rs1_val == 18446744073692774399, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000002
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffeffffff, 0x0000000000000002, x2, 640, x3)

# rs1_val == 18446744073675997183, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffdffffff, 0xffffffffbfffffff, x2, 648, x3)

# rs1_val == 18446744073642442751, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffbffffff, 0xfffffffdffffffff, x2, 656, x3)

# rs1_val == 18446744073441116159, rs2_val == 281474976710656
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0001000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffefffffff, 0x0001000000000000, x2, 664, x3)

# rs1_val == 18446744073172680703, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000800000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffdfffffff, 0x0000000000800000, x2, 672, x3)

# rs1_val == 18446744072635809791, rs2_val == 18446744073575333887
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffffbfffffff, 0xfffffffff7ffffff, x2, 680, x3)

# rs1_val == 18446744071562067967, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0800000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffff7fffffff, 0x0800000000000000, x2, 688, x3)

# rs1_val == 18446744069414584319, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffeffffffff, 0xfffffffffffdffff, x2, 696, x3)

# rs1_val == 18446744065119617023, rs2_val == 288230376151711744
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0400000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffdffffffff, 0x0400000000000000, x2, 704, x3)

# rs1_val == 18446744039349813247, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0080000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffff7ffffffff, 0x0080000000000000, x2, 712, x3)

# rs1_val == 18446744004990074879, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffefffffffff, 0xfffffffffffffeff, x2, 720, x3)

# rs1_val == 18446743798831644671, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffbfffffffff, 0xfffffffffffffeff, x2, 728, x3)

# rs1_val == 18446743523953737727, rs2_val == 18446744073709535231
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffff7fffffffff, 0xffffffffffffbfff, x2, 736, x3)

# rs1_val == 18446741874686296063, rs2_val == 549755813888
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000008000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffdffffffffff, 0x0000008000000000, x2, 744, x3)

# rs1_val == 18446739675663040511, rs2_val == 16
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffbffffffffff, 0x0000000000000010, x2, 752, x3)

# rs1_val == 18446735277616529407, rs2_val == 18446744073709551583
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffff7ffffffffff, 0xffffffffffffffdf, x2, 760, x3)

# rs1_val == 18446708889337462783, rs2_val == 17592186044416
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000100000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffdfffffffffff, 0x0000100000000000, x2, 768, x3)

# rs1_val == 18446673704965373951, rs2_val == 16384
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000004000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffbfffffffffff, 0x0000000000004000, x2, 776, x3)

# rs1_val == 18446603336221196287, rs2_val == 18446181123756130303
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffff7fffffffffff, 0xfffdffffffffffff, x2, 784, x3)

# rs1_val == 18446462598732840959, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffeffffffffffff, 0x0000000000000010, x2, 792, x3)

# rs1_val == 18446181123756130303, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000020000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffdffffffffffff, 0x0000000020000000, x2, 800, x3)

# rs1_val == 18445618173802708991, rs2_val == 18446744073701163007
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffbffffffffffff, 0xffffffffff7fffff, x2, 808, x3)

# rs1_val == 18444492273895866367, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xffffefffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfff7ffffffffffff, 0xffffefffffffffff, x2, 816, x3)

# rs1_val == 18442240474082181119, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0001000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffefffffffffffff, 0x0001000000000000, x2, 824, x3)

# rs1_val == 18437736874454810623, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x7fffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffdfffffffffffff, 0x7fffffffffffffff, x2, 832, x3)

# rs1_val == 18428729675200069631, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000100000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffbfffffffffffff, 0x0000100000000000, x2, 840, x3)

# rs1_val == 18410715276690587647, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xff7fffffffffffff, 0xaaaaaaaaaaaaaaaa, x2, 848, x3)

# rs1_val == 18374686479671623679, rs2_val == 9223372036854775808
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfeffffffffffffff, 0x8000000000000000, x2, 856, x3)

# rs1_val == 18302628885633695743, rs2_val == 18446743936270598143
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfdffffffffffffff, 0xffffffdfffffffff, x2, 864, x3)

# rs1_val == 18158513697557839871, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfbffffffffffffff, 0x000000000000000c, x2, 872, x3)

# rs1_val == 17870283321406128127, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xf7ffffffffffffff, 0x0040000000000000, x2, 880, x3)

# rs1_val == 17293822569102704639, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xefffffffffffffff, 0x000000000000000c, x2, 888, x3)

# rs1_val == 16140901064495857663, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffffffffffffbff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xdfffffffffffffff, 0xfffffffffffffbff, x2, 896, x3)

# rs1_val == 13835058055282163711, rs2_val == 8
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xbfffffffffffffff, 0x0000000000000008, x2, 904, x3)

# rs1_val == 9223372036854775807, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0002000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x7fffffffffffffff, 0x0002000000000000, x2, 912, x3)

# rs1_val == 6148914691236517205, rs2_val == 18446741874686296063
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffdffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x5555555555555555, 0xfffffdffffffffff, x2, 920, x3)

# rs1_val == 12297829382473034410, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xefffffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xaaaaaaaaaaaaaaaa, 0xefffffffffffffff, x2, 928, x3)

# rs2_val == 4, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0x0000000000000004
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000000000006, 0x0000000000000004, x2, 936, x3)

# rs2_val == 32, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0x0000000000000020
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000006, 0x0000000000000020, x2, 944, x3)

# rs2_val == 128, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000080
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffff7f, 0x0000000000000080, x2, 952, x3)

# rs2_val == 256, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000100
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000002000000000, 0x0000000000000100, x2, 960, x3)

# rs2_val == 512, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000200
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffdfffffffff, 0x0000000000000200, x2, 968, x3)

# rs2_val == 1024, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000400
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffeffffffffffff, 0x0000000000000400, x2, 976, x3)

# rs2_val == 4096, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000000001000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000001, 0x0000000000001000, x2, 984, x3)

# rs2_val == 65536, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0000000000010000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000008, 0x0000000000010000, x2, 992, x3)

# rs2_val == 262144, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0x0000000000040000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000004000, 0x0000000000040000, x2, 1000, x3)

# rs2_val == 2097152, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000200000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffdfffffffffff, 0x0000000000200000, x2, 1008, x3)

# rs2_val == 16777216, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000001000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000000001000000, 0x0000000001000000, x2, 1016, x3)

# rs2_val == 268435456, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000010000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffbfffffff, 0x0000000010000000, x2, 1024, x3)

# rs2_val == 1073741824, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0000000040000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000100000, 0x0000000040000000, x2, 1032, x3)

# rs2_val == 2147483648, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000080000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000000080000000, x2, 1040, x3)

# rs2_val == 17179869184, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000400000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffff7ffff, 0x0000000400000000, x2, 1048, x3)

# rs2_val == 34359738368, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000800000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffdffffff, 0x0000000800000000, x2, 1056, x3)

# rs2_val == 137438953472, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000002000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000040000, 0x0000002000000000, x2, 1064, x3)

# rs2_val == 1099511627776, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000010000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffdffffffff, 0x0000010000000000, x2, 1072, x3)

# rs2_val == 2199023255552, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000020000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffff7fffff, 0x0000020000000000, x2, 1080, x3)

# rs2_val == 4398046511104, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000040000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0x0001000000000000, 0x0000040000000000, x2, 1088, x3)

# rs2_val == 8796093022208, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000080000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffff7fffffff, 0x0000080000000000, x2, 1096, x3)

# rs2_val == 35184372088832, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000200000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xefffffffffffffff, 0x0000200000000000, x2, 1104, x3)

# rs2_val == 140737488355328, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000800000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000010, 0x0000800000000000, x2, 1112, x3)

# rs2_val == 72057594037927936, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffff, 0x0100000000000000, x2, 1120, x3)

# rs2_val == 144115188075855872, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0200000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xbfffffffffffffff, 0x0200000000000000, x2, 1128, x3)

# rs2_val == 1152921504606846976, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x1000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000002000000000, 0x1000000000000000, x2, 1136, x3)

# rs2_val == 2305843009213693952, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x2000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000001000, 0x2000000000000000, x2, 1144, x3)

# rs2_val == 18446744073709551607, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0xfffffffffffffff7
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000001000, 0xfffffffffffffff7, x2, 1152, x3)

# rs2_val == 18446744073709551599, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xffffffffffffffef
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xffffffffff7fffff, 0xffffffffffffffef, x2, 1160, x3)

# rs2_val == 18446744073709551551, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0xffffffffffffffbf
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000002, 0xffffffffffffffbf, x2, 1168, x3)

# rs2_val == 18446744073709551487, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xffffffffffffff7f
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffffffef, 0xffffffffffffff7f, x2, 1176, x3)

# rs2_val == 18446744073709551103, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xfffffffffffffdff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffffffff7ff, 0xfffffffffffffdff, x2, 1184, x3)

# rs2_val == 18446744073709549567, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xfffffffffffff7ff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0002000000000000, 0xfffffffffffff7ff, x2, 1192, x3)

# rs2_val == 18446744073709543423, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xffffffffffffdfff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffbff, 0xffffffffffffdfff, x2, 1200, x3)

# rs2_val == 4503599627370496, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0010000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffffe, 0x0010000000000000, x2, 1208, x3)

# rs2_val == 18446744073709518847, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000013;  op2val:0xffffffffffff7fff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000013, 0xffffffffffff7fff, x2, 1216, x3)

# rs2_val == 18446744073709486079, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0xfffffffffffeffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000400, 0xfffffffffffeffff, x2, 1224, x3)

# rs2_val == 18446744073709289471, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000010000000, 0xfffffffffffbffff, x2, 1232, x3)

# rs2_val == 18446744073709027327, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xfffffffffffffbff, 0xfffffffffff7ffff, x2, 1240, x3)

# rs2_val == 18446744073692774399, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x000000000000000e;  op2val:0xfffffffffeffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x000000000000000e, 0xfffffffffeffffff, x2, 1248, x3)

# rs2_val == 18446744071562067967, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0100000000000000, 0xffffffff7fffffff, x2, 1256, x3)

# rs2_val == 18446744069414584319, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfffffffeffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffff7fff, 0xfffffffeffffffff, x2, 1264, x3)

# rs2_val == 18446744004990074879, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xffffffefffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000080000, 0xffffffefffffffff, x2, 1272, x3)

# rs2_val == 18446743798831644671, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x7fffffffffffffff, 0xffffffbfffffffff, x2, 1280, x3)

# rs2_val == 18446743523953737727, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xffffff7fffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000008000000, 0xffffff7fffffffff, x2, 1288, x3)

# rs2_val == 18446735277616529407, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0004000000000000, 0xfffff7ffffffffff, x2, 1296, x3)

# rs2_val == 2251799813685248, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0x0008000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000003, 0x0008000000000000, x2, 1304, x3)

# rs2_val == 18446708889337462783, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffffffffefffff, 0xffffdfffffffffff, x2, 1312, x3)

# rs2_val == 18446673704965373951, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0xffffbfffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000040000, 0xffffbfffffffffff, x2, 1320, x3)

# rs2_val == 18445618173802708991, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xdfffffffffffffff, 0xfffbffffffffffff, x2, 1328, x3)

# rs2_val == 18444492273895866367, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x1000000000000000, 0xfff7ffffffffffff, x2, 1336, x3)

# rs2_val == 18442240474082181119, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xffefffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000040000000, 0xffefffffffffffff, x2, 1344, x3)

# rs2_val == 18446744073707454463, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0xfffffffbffffffff, 0xffffffffffdfffff, x2, 1352, x3)

# rs2_val == 18428729675200069631, 
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x000000000000000f;  op2val:0xffbfffffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x000000000000000f, 0xffbfffffffffffff, x2, 1360, x3)

# rs1_val == 0, rs2_val == 18446744073709551611
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000000000000, 0xfffffffffffffffb, x2, 1368, x3)

# rs2_val == 0, rs1_val == 18446726481523507199
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sltu, x12, x10, x11, 0x0, 0xffffefffffffffff, 0x0000000000000000, x2, 1376, x3)

# rs1_val == 67108864, rs2_val == 18446739675663040511
# opcode: sltu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(sltu, x12, x10, x11, 0x1, 0x0000000004000000, 0xfffffbffffffffff, x2, 1384, x3)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x2_0:
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
