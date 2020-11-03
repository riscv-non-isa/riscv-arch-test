
#This assembly file tests the remu instruction of the RISC-V M extension for the remu covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64IM")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*M.*);def TEST_CASE_1=True;",remu)

RVTEST_SIGBASE( x17,signature_x17_1)

# rs1 == rs2 != rd, rs1==x4, rs2==x4, rd==x26, rs1_val == (-2**(xlen-1)), rs2_val == 2251799813685248, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: remu ; op1:x4; op2:x4; dest:x26; op1val:0x8000000000000000;  op2val:0x0008000000000000
TEST_RR_OP(remu, x26, x4, x4, 0x0000000000000000, 0x8000000000000000, 0x0008000000000000, x17, 0, x27)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x1, rs2==x14, rd==x10, rs1_val == 0, rs2_val == 128
# opcode: remu ; op1:x1; op2:x14; dest:x10; op1val:0x0000000000000000;  op2val:0x0000000000000080
TEST_RR_OP(remu, x10, x1, x14, 0x0000000000000000, 0x0000000000000000, 0x0000000000000080, x17, 8, x27)

# rs1 == rd != rs2, rs1==x14, rs2==x2, rd==x14, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 1073741824, rs1_val == 9223372036854775807
# opcode: remu ; op1:x14; op2:x2; dest:x14; op1val:0x7fffffffffffffff;  op2val:0x0000000040000000
TEST_RR_OP(remu, x14, x14, x2, 0x0000000000000000, 0x7fffffffffffffff, 0x0000000040000000, x17, 16, x27)

# rs2 == rd != rs1, rs1==x16, rs2==x28, rd==x28, rs1_val == 1, rs1_val > 0 and rs2_val < 0, rs2_val == -140737488355329
# opcode: remu ; op1:x16; op2:x28; dest:x28; op1val:0x0000000000000001;  op2val:0xffff7fffffffffff
TEST_RR_OP(remu, x28, x16, x28, 0x0000000000000000, 0x0000000000000001, 0xffff7fffffffffff, x17, 24, x27)

# rs1 == rs2 == rd, rs1==x9, rs2==x9, rd==x9, rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808, rs1_val == 2199023255552
# opcode: remu ; op1:x9; op2:x9; dest:x9; op1val:0x0000020000000000;  op2val:0x8000000000000000
TEST_RR_OP(remu, x9, x9, x9, 0x0000000000000000, 0x0000020000000000, 0x8000000000000000, x17, 32, x27)

# rs1==x25, rs2==x19, rd==x2, rs2_val == 0, rs1_val == -8589934593
# opcode: remu ; op1:x25; op2:x19; dest:x2; op1val:0xfffffffdffffffff;  op2val:0x0000000000000000
TEST_RR_OP(remu, x2, x25, x19, 0x0000000000000000, 0xfffffffdffffffff, 0x0000000000000000, x17, 40, x27)

# rs1==x26, rs2==x5, rd==x15, rs2_val == (2**(xlen-1)-1), rs1_val == 2251799813685248, rs2_val == 9223372036854775807
# opcode: remu ; op1:x26; op2:x5; dest:x15; op1val:0x0008000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(remu, x15, x26, x5, 0x0000000000000000, 0x0008000000000000, 0x7fffffffffffffff, x17, 48, x27)

# rs1==x21, rs2==x15, rd==x19, rs2_val == 1, rs1_val == -4294967297
# opcode: remu ; op1:x21; op2:x15; dest:x19; op1val:0xfffffffeffffffff;  op2val:0x0000000000000001
TEST_RR_OP(remu, x19, x21, x15, 0x0000000000000000, 0xfffffffeffffffff, 0x0000000000000001, x17, 56, x27)

# rs1==x12, rs2==x22, rd==x1, rs1_val < 0 and rs2_val < 0, rs1_val == -8193, rs2_val == -131073
# opcode: remu ; op1:x12; op2:x22; dest:x1; op1val:0xffffffffffffdfff;  op2val:0xfffffffffffdffff
TEST_RR_OP(remu, x1, x12, x22, 0x0000000000000000, 0xffffffffffffdfff, 0xfffffffffffdffff, x17, 64, x27)

# rs1==x7, rs2==x13, rd==x22, rs1_val == rs2_val, rs1_val == -1048577, rs2_val == -1048577
# opcode: remu ; op1:x7; op2:x13; dest:x22; op1val:0xffffffffffefffff;  op2val:0xffffffffffefffff
TEST_RR_OP(remu, x22, x7, x13, 0x0000000000000000, 0xffffffffffefffff, 0xffffffffffefffff, x17, 72, x27)

# rs1==x23, rs2==x25, rd==x7, rs1_val == 2, rs2_val == -33554433
# opcode: remu ; op1:x23; op2:x25; dest:x7; op1val:0x0000000000000002;  op2val:0xfffffffffdffffff
TEST_RR_OP(remu, x7, x23, x25, 0x0000000000000000, 0x0000000000000002, 0xfffffffffdffffff, x17, 80, x27)

# rs1==x24, rs2==x8, rd==x13, rs1_val == 4, rs2_val == 16777216
# opcode: remu ; op1:x24; op2:x8; dest:x13; op1val:0x0000000000000004;  op2val:0x0000000001000000
TEST_RR_OP(remu, x13, x24, x8, 0x0000000000000000, 0x0000000000000004, 0x0000000001000000, x17, 88, x27)

# rs1==x10, rs2==x1, rd==x0, rs1_val == 8, rs2_val == 67108864
# opcode: remu ; op1:x10; op2:x1; dest:x0; op1val:0x0000000000000008;  op2val:0x0000000004000000
TEST_RR_OP(remu, x0, x10, x1, 0x0000000000000000, 0x0000000000000008, 0x0000000004000000, x17, 96, x27)

# rs1==x22, rs2==x31, rd==x5, rs1_val == 16, rs2_val == -17592186044417
# opcode: remu ; op1:x22; op2:x31; dest:x5; op1val:0x0000000000000010;  op2val:0xffffefffffffffff
TEST_RR_OP(remu, x5, x22, x31, 0x0000000000000000, 0x0000000000000010, 0xffffefffffffffff, x17, 104, x27)

# rs1==x0, rs2==x3, rd==x21, rs1_val == 32, rs2_val == -1099511627777
# opcode: remu ; op1:x0; op2:x3; dest:x21; op1val:0x0000000000000020;  op2val:0xfffffeffffffffff
TEST_RR_OP(remu, x21, x0, x3, 0x0000000000000000, 0x0000000000000020, 0xfffffeffffffffff, x17, 112, x27)

# rs1==x18, rs2==x10, rd==x24, rs1_val == 64, 
# opcode: remu ; op1:x18; op2:x10; dest:x24; op1val:0x0000000000000040;  op2val:0xfffffffffffffffc
TEST_RR_OP(remu, x24, x18, x10, 0x0000000000000000, 0x0000000000000040, 0xfffffffffffffffc, x17, 120, x27)

# rs1==x8, rs2==x6, rd==x20, rs1_val == 128, rs2_val == -281474976710657
# opcode: remu ; op1:x8; op2:x6; dest:x20; op1val:0x0000000000000080;  op2val:0xfffeffffffffffff
TEST_RR_OP(remu, x20, x8, x6, 0x0000000000000000, 0x0000000000000080, 0xfffeffffffffffff, x17, 128, x27)

# rs1==x3, rs2==x11, rd==x18, rs1_val == 256, rs2_val == 268435456
# opcode: remu ; op1:x3; op2:x11; dest:x18; op1val:0x0000000000000100;  op2val:0x0000000010000000
TEST_RR_OP(remu, x18, x3, x11, 0x0000000000000000, 0x0000000000000100, 0x0000000010000000, x17, 136, x27)

# rs1==x27, rs2==x7, rd==x31, rs1_val == 512, rs2_val == 274877906944
# opcode: remu ; op1:x27; op2:x7; dest:x31; op1val:0x0000000000000200;  op2val:0x0000004000000000
TEST_RR_OP(remu, x31, x27, x7, 0x0000000000000000, 0x0000000000000200, 0x0000004000000000, x17, 144, x9)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x17, rs2==x24, rd==x8, rs1_val == 1024, 
# opcode: remu ; op1:x17; op2:x24; dest:x8; op1val:0x0000000000000400;  op2val:0xfffffffffffffffa
TEST_RR_OP(remu, x8, x17, x24, 0x0000000000000000, 0x0000000000000400, 0xfffffffffffffffa, x1, 0, x9)

# rs1==x2, rs2==x0, rd==x3, rs1_val == 2048, rs2_val == 256
# opcode: remu ; op1:x2; op2:x0; dest:x3; op1val:0x0000000000000800;  op2val:0x0000000000000100
TEST_RR_OP(remu, x3, x2, x0, 0x0000000000000000, 0x0000000000000800, 0x0000000000000100, x1, 8, x9)

# rs1==x20, rs2==x29, rd==x17, rs1_val == 4096, rs2_val == 281474976710656
# opcode: remu ; op1:x20; op2:x29; dest:x17; op1val:0x0000000000001000;  op2val:0x0001000000000000
TEST_RR_OP(remu, x17, x20, x29, 0x0000000000000000, 0x0000000000001000, 0x0001000000000000, x1, 16, x9)

# rs1==x31, rs2==x26, rd==x30, rs1_val == 8192, rs2_val == -9
# opcode: remu ; op1:x31; op2:x26; dest:x30; op1val:0x0000000000002000;  op2val:0xfffffffffffffff7
TEST_RR_OP(remu, x30, x31, x26, 0x0000000000000000, 0x0000000000002000, 0xfffffffffffffff7, x1, 24, x9)

# rs1==x19, rs2==x30, rd==x11, rs1_val == 16384, rs2_val == 2048
# opcode: remu ; op1:x19; op2:x30; dest:x11; op1val:0x0000000000004000;  op2val:0x0000000000000800
TEST_RR_OP(remu, x11, x19, x30, 0x0000000000000000, 0x0000000000004000, 0x0000000000000800, x1, 32, x9)

# rs1==x13, rs2==x12, rd==x29, rs1_val == 32768, rs2_val == -33
# opcode: remu ; op1:x13; op2:x12; dest:x29; op1val:0x0000000000008000;  op2val:0xffffffffffffffdf
TEST_RR_OP(remu, x29, x13, x12, 0x0000000000000000, 0x0000000000008000, 0xffffffffffffffdf, x1, 40, x9)

# rs1==x28, rs2==x23, rd==x4, rs1_val == 65536, rs2_val == -16777217
# opcode: remu ; op1:x28; op2:x23; dest:x4; op1val:0x0000000000010000;  op2val:0xfffffffffeffffff
TEST_RR_OP(remu, x4, x28, x23, 0x0000000000000000, 0x0000000000010000, 0xfffffffffeffffff, x1, 48, x9)

# rs1==x5, rs2==x16, rd==x25, rs1_val == 131072, rs2_val == -1152921504606846977
# opcode: remu ; op1:x5; op2:x16; dest:x25; op1val:0x0000000000020000;  op2val:0xefffffffffffffff
TEST_RR_OP(remu, x25, x5, x16, 0x0000000000000000, 0x0000000000020000, 0xefffffffffffffff, x1, 56, x9)

# rs1==x15, rs2==x21, rd==x27, rs1_val == 262144, rs2_val == 1152921504606846976
# opcode: remu ; op1:x15; op2:x21; dest:x27; op1val:0x0000000000040000;  op2val:0x1000000000000000
TEST_RR_OP(remu, x27, x15, x21, 0x0000000000000000, 0x0000000000040000, 0x1000000000000000, x1, 64, x9)

# rs1==x11, rs2==x18, rd==x23, rs1_val == 524288, rs2_val == 8192
# opcode: remu ; op1:x11; op2:x18; dest:x23; op1val:0x0000000000080000;  op2val:0x0000000000002000
TEST_RR_OP(remu, x23, x11, x18, 0x0000000000000000, 0x0000000000080000, 0x0000000000002000, x1, 72, x9)

# rs1==x6, rs2==x20, rd==x16, rs1_val == 1048576, rs2_val == 9007199254740992
# opcode: remu ; op1:x6; op2:x20; dest:x16; op1val:0x0000000000100000;  op2val:0x0020000000000000
TEST_RR_OP(remu, x16, x6, x20, 0x0000000000000000, 0x0000000000100000, 0x0020000000000000, x1, 80, x9)

# rs1==x29, rs2==x17, rd==x12, rs1_val == 2097152, rs2_val == -129
# opcode: remu ; op1:x29; op2:x17; dest:x12; op1val:0x0000000000200000;  op2val:0xffffffffffffff7f
TEST_RR_OP(remu, x12, x29, x17, 0x0000000000000000, 0x0000000000200000, 0xffffffffffffff7f, x1, 88, x9)

# rs1==x30, rs2==x27, rd==x6, rs1_val == 4194304, rs2_val == -2199023255553
# opcode: remu ; op1:x30; op2:x27; dest:x6; op1val:0x0000000000400000;  op2val:0xfffffdffffffffff
TEST_RR_OP(remu, x6, x30, x27, 0x0000000000000000, 0x0000000000400000, 0xfffffdffffffffff, x1, 96, x9)

# rs1_val == 8388608, rs2_val == -274877906945
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xffffffbfffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0xffffffbfffffffff, x1, 104, x9)

# rs1_val == 16777216, rs2_val == -1125899906842625
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xfffbffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000001000000, 0xfffbffffffffffff, x1, 112, x2)

# rs1_val == 33554432, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000007
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000002000000, 0x0000000000000007, x1, 120, x2)

# rs1_val == 67108864, rs2_val == 2305843009213693952
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x2000000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000004000000, 0x2000000000000000, x1, 128, x2)

# rs1_val == 134217728, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000008000000, 0xfffffffffffffffc, x1, 136, x2)

# rs1_val == 268435456, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000010000000, 0xfffffffffffdffff, x1, 144, x2)

# rs1_val == 536870912, rs2_val == -4398046511105
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000020000000, 0xfffffbffffffffff, x1, 152, x2)

# rs1_val == 1073741824, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000040000000, 0xfffeffffffffffff, x1, 160, x2)

# rs1_val == 2147483648, rs2_val == -5
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000080000000, 0xfffffffffffffffb, x1, 168, x2)

# rs1_val == 4294967296, rs2_val == -8388609
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xffffffffff7fffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000100000000, 0xffffffffff7fffff, x1, 176, x2)

# rs1_val == 8589934592, rs2_val == 536870912
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000020000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0x0000000020000000, x1, 184, x2)

# rs1_val == 17179869184, rs2_val == 8796093022208
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000080000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000400000000, 0x0000080000000000, x1, 192, x2)

# rs1_val == 34359738368, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xfffbffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xfffbffffffffffff, x1, 200, x2)

# rs1_val == 68719476736, rs2_val == -1025
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000001000000000, 0xfffffffffffffbff, x1, 208, x2)

# rs1_val == 137438953472, rs2_val == -2251799813685249
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000002000000000, 0xfff7ffffffffffff, x1, 216, x2)

# rs1_val == 274877906944, rs2_val == 1024
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000400
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000000000400, x1, 224, x2)

# rs1_val == 549755813888, rs2_val == 6148914691236517205
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x5555555555555555
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0x5555555555555555, x1, 232, x2)

# rs1_val == 1099511627776, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000010000000000, 0xfffffffffeffffff, x1, 240, x2)

# rs1_val == 4398046511104, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0xfffffffffeffffff, x1, 248, x2)

# rs1_val == 8796093022208, rs2_val == 70368744177664
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000400000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0000400000000000, x1, 256, x2)

# rs1_val == 17592186044416, rs2_val == 64
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000040
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000100000000000, 0x0000000000000040, x1, 264, x2)

# rs1_val == 35184372088832, rs2_val == -8193
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000200000000000, 0xffffffffffffdfff, x1, 272, x2)

# rs1_val == 70368744177664, rs2_val == -4611686018427387905
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000400000000000, 0xbfffffffffffffff, x1, 280, x2)

# rs1_val == 140737488355328, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0xfffeffffffffffff, x1, 288, x2)

# rs1_val == 281474976710656, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0008000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0001000000000000, 0x0008000000000000, x1, 296, x2)

# rs1_val == 562949953421312, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0xffffffbfffffffff, x1, 304, x2)

# rs1_val == 1125899906842624, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000006
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0004000000000000, 0x0000000000000006, x1, 312, x2)

# rs1_val == 4503599627370496, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xfffffffffffffff6, x1, 320, x2)

# rs1_val == 9007199254740992, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000001
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0020000000000000, 0x0000000000000001, x1, 328, x2)

# rs1_val == 18014398509481984, rs2_val == -2305843009213693953
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0040000000000000, 0xdfffffffffffffff, x1, 336, x2)

# rs1_val == 36028797018963968, rs2_val == 1048576
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000100000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0080000000000000, 0x0000000000100000, x1, 344, x2)

# rs1_val == 72057594037927936, rs2_val == -268435457
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xffffffffefffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0100000000000000, 0xffffffffefffffff, x1, 352, x2)

# rs1_val == 144115188075855872, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000080000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0000080000000000, x1, 360, x2)

# rs1_val == 288230376151711744, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0400000000000000, 0xfffffffffffffffc, x1, 368, x2)

# rs1_val == 576460752303423488, rs2_val == 2199023255552
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000020000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0x0000020000000000, x1, 376, x2)

# rs1_val == 1152921504606846976, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x1000000000000000, 0xfffffffffffdffff, x1, 384, x2)

# rs1_val == 2305843009213693952, rs2_val == -2097153
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x2000000000000000, 0xffffffffffdfffff, x1, 392, x2)

# rs1_val == 4611686018427387904, rs2_val == -513
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x4000000000000000, 0xfffffffffffffdff, x1, 400, x2)

# rs1_val == -2, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000002000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffe, 0x0000000000002000, x1, 408, x2)

# rs1_val == -3, rs2_val == -562949953421313
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0xfffdffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffd, 0xfffdffffffffffff, x1, 416, x2)

# rs1_val == -5, rs2_val == -18014398509481985
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xffbfffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffb, 0xffbfffffffffffff, x1, 424, x2)

# rs1_val == -9, rs2_val == 288230376151711744
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0400000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0x0400000000000000, x1, 432, x2)

# rs1_val == -17, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000004000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffef, 0x0000004000000000, x1, 440, x2)

# rs1_val == -33, rs2_val == 65536
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000010000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0x0000000000010000, x1, 448, x2)

# rs1_val == -65, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000006
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffbf, 0x0000000000000006, x1, 456, x2)

# rs1_val == -129, rs2_val == -35184372088833
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xffffdfffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0xffffdfffffffffff, x1, 464, x2)

# rs1_val == -257, rs2_val == -576460752303423489
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffeff, 0xf7ffffffffffffff, x1, 472, x2)

# rs2_val == -4503599627370497, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0xffefffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000000200, 0xffefffffffffffff, x1, 480, x2)

# rs2_val == -9007199254740993, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffdfffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0xffdfffffffffffff, x1, 488, x2)

# rs2_val == -36028797018963969, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffc;  op2val:0xff7fffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffc, 0xff7fffffffffffff, x1, 496, x2)

# rs2_val == -72057594037927937, rs1_val == -513
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xfeffffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffdff, 0xfeffffffffffffff, x1, 504, x2)

# rs2_val == -144115188075855873, rs1_val == -35184372088833
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffdfffffffffff, 0xfdffffffffffffff, x1, 512, x2)

# rs2_val == -288230376151711745, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000800000000000, 0xfbffffffffffffff, x1, 520, x2)

# rs2_val == -6148914691236517206, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0xaaaaaaaaaaaaaaaa, x1, 528, x2)

# rs1_val == -1025, rs2_val == 1125899906842624
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0004000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffbff, 0x0004000000000000, x1, 536, x2)

# rs1_val == -2049, rs2_val == 134217728
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000008000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffff7ff, 0x0000000008000000, x1, 544, x2)

# rs1_val == -4097, rs2_val == 137438953472
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000002000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffefff, 0x0000002000000000, x1, 552, x2)

# rs1_val == -16385, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000002000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffbfff, 0x0000002000000000, x1, 560, x2)

# rs1_val == -32769, rs2_val == 512
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000200
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0x0000000000000200, x1, 568, x2)

# rs1_val == -65537, rs2_val == -4294967297
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xfffffffeffffffff, x1, 576, x2)

# rs1_val == -131073, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000100
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffdffff, 0x0000000000000100, x1, 584, x2)

# rs1_val == -262145, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000100
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffbffff, 0x0000000000000100, x1, 592, x2)

# rs1_val == -524289, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0xffbfffffffffffff, x1, 600, x2)

# rs1_val == -2097153, rs2_val == 562949953421312
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0002000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0x0002000000000000, x1, 608, x2)

# rs1_val == -4194305, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000002000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffbfffff, 0x0000002000000000, x1, 616, x2)

# rs1_val == -8388609, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x1000000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0x1000000000000000, x1, 624, x2)

# rs1_val == -16777217, rs2_val == 4
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000000004
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffeffffff, 0x0000000000000004, x1, 632, x2)

# rs1_val == -33554433, rs2_val == 4294967296
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000100000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0x0000000100000000, x1, 640, x2)

# rs1_val == -67108865, rs2_val == 17179869184
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000400000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0x0000000400000000, x1, 648, x2)

# rs1_val == -134217729, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000400
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffff7ffffff, 0x0000000000000400, x1, 656, x2)

# rs1_val == -268435457, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xfffffffffeffffff, x1, 664, x2)

# rs1_val == -536870913, rs2_val == 72057594037927936
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0100000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffdfffffff, 0x0100000000000000, x1, 672, x2)

# rs1_val == -1073741825, rs2_val == -524289
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffbfffffff, 0xfffffffffff7ffff, x1, 680, x2)

# rs1_val == -2147483649, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0020000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffff7fffffff, 0x0020000000000000, x1, 688, x2)

# rs1_val == -17179869185, rs2_val == 549755813888
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000008000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffbffffffff, 0x0000008000000000, x1, 696, x2)

# rs1_val == -34359738369, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0020000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffff7ffffffff, 0x0020000000000000, x1, 704, x2)

# rs1_val == -68719476737, rs2_val == 16384
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000004000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0x0000000000004000, x1, 712, x2)

# rs1_val == -137438953473, rs2_val == 4611686018427387904
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x4000000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffdfffffffff, 0x4000000000000000, x1, 720, x2)

# rs1_val == -274877906945, rs2_val == 17592186044416
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000100000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffbfffffffff, 0x0000100000000000, x1, 728, x2)

# rs1_val == -549755813889, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0100000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffff7fffffffff, 0x0100000000000000, x1, 736, x2)

# rs1_val == -1099511627777, rs2_val == 144115188075855872
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0200000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffeffffffffff, 0x0200000000000000, x1, 744, x2)

# rs1_val == -2199023255553, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffffffffffc
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffdffffffffff, 0xfffffffffffffffc, x1, 752, x2)

# rs1_val == -4398046511105, rs2_val == 1099511627776
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffbffffffffff, 0x0000010000000000, x1, 760, x2)

# rs1_val == -8796093022209, rs2_val == -32769
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffff7ffffffffff, 0xffffffffffff7fff, x1, 768, x2)

# rs1_val == -17592186044417, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffefffffffffff, 0xfffffffffeffffff, x1, 776, x2)

# rs1_val == -70368744177665, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0100000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffbfffffffffff, 0x0100000000000000, x1, 784, x2)

# rs1_val == -140737488355329, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0x0000000008000000, x1, 792, x2)

# rs1_val == -281474976710657, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffeffffffffffff, 0xffffffbfffffffff, x1, 800, x2)

# rs1_val == -562949953421313, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffdffffffffffff, 0xffffffffffefffff, x1, 808, x2)

# rs1_val == -2251799813685249, rs2_val == 2
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfff7ffffffffffff, 0x0000000000000002, x1, 816, x2)

# rs1_val == -4503599627370497, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffefffffffffffff, 0xffffdfffffffffff, x1, 824, x2)

# rs1_val == -9007199254740993, rs2_val == -65537
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0xfffffffffffeffff, x1, 832, x2)

# rs1_val == -18014398509481985, rs2_val == -549755813889
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffbfffffffffffff, 0xffffff7fffffffff, x1, 840, x2)

# rs1_val == -36028797018963969, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000200
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xff7fffffffffffff, 0x0000000000000200, x1, 848, x2)

# rs1_val == -72057594037927937, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfeffffffffffffff, 0xefffffffffffffff, x1, 856, x2)

# rs1_val == -144115188075855873, rs2_val == 18014398509481984
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfdffffffffffffff, 0x0040000000000000, x1, 864, x2)

# rs1_val == -288230376151711745, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000800
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0x0000000000000800, x1, 872, x2)

# rs1_val == -576460752303423489, rs2_val == -257
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xf7ffffffffffffff, 0xfffffffffffffeff, x1, 880, x2)

# rs1_val == -1152921504606846977, rs2_val == 4096
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000001000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xefffffffffffffff, 0x0000000000001000, x1, 888, x2)

# rs1_val == -2305843009213693953, rs2_val == -2147483649
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xffffffff7fffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xdfffffffffffffff, 0xffffffff7fffffff, x1, 896, x2)

# rs1_val == -4611686018427387905, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xbfffffffffffffff, 0x0000000000000007, x1, 904, x2)

# rs1_val == 6148914691236517205, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xffffffffffefffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xffffffffffefffff, x1, 912, x2)

# rs1_val == -6148914691236517206, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xfffffffffffeffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xaaaaaaaaaaaaaaaa, 0xfffffffffffeffff, x1, 920, x2)

# rs2_val == 8, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0x0000000000000008
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffffa, 0x0000000000000008, x1, 928, x2)

# rs2_val == 16, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000010
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0x0000000000000010, x1, 936, x2)

# rs2_val == 32, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0x0000000000000020, x1, 944, x2)

# rs2_val == 32768, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000008000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffff7ffff, 0x0000000000008000, x1, 952, x2)

# rs2_val == 131072, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0x0000000000020000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000000006, 0x0000000000020000, x1, 960, x2)

# rs2_val == 262144, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0000000000040000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000000002, 0x0000000000040000, x1, 968, x2)

# rs2_val == 524288, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000080000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffefffffffff, 0x0000000000080000, x1, 976, x2)

# rs2_val == 2097152, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000200000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffff7f, 0x0000000000200000, x1, 984, x2)

# rs2_val == 4194304, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000400000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000200000000, 0x0000000000400000, x1, 992, x2)

# rs2_val == 8388608, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000000000800000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000020000, 0x0000000000800000, x1, 1000, x2)

# rs2_val == 33554432, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000002000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0800000000000000, 0x0000000002000000, x1, 1008, x2)

# rs2_val == 4503599627370496, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0010000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000080000000000, 0x0010000000000000, x1, 1016, x2)

# rs2_val == 36028797018963968, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0080000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0x0080000000000000, x1, 1024, x2)

# rs2_val == 576460752303423488, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0800000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0800000000000000, x1, 1032, x2)

# rs2_val == -2, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffdffffff, 0xfffffffffffffffe, x1, 1040, x2)

# rs2_val == -3, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffffffffffd
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x5555555555555555, 0xfffffffffffffffd, x1, 1048, x2)

# rs2_val == -17, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xffffffffffffffef
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffff7fffff, 0xffffffffffffffef, x1, 1056, x2)

# rs2_val == -65, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffefffffff, 0xffffffffffffffbf, x1, 1064, x2)

# rs2_val == -2049, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffff7fff, 0xfffffffffffff7ff, x1, 1072, x2)

# rs2_val == -4097, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xffffffffffffefff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000800000, 0xffffffffffffefff, x1, 1080, x2)

# rs2_val == -16385, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffefffff, 0xffffffffffffbfff, x1, 1088, x2)

# rs2_val == -262145, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000004000000000, 0xfffffffffffbffff, x1, 1096, x2)

# rs2_val == -4194305, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffffbfffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffbffffff, 0xffffffffffbfffff, x1, 1104, x2)

# rs2_val == -67108865, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xfffffffffbffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffdfff, 0xfffffffffbffffff, x1, 1112, x2)

# rs2_val == -134217729, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffeffff, 0xfffffffff7ffffff, x1, 1120, x2)

# rs2_val == -536870913, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0xffffffffdfffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000200000, 0xffffffffdfffffff, x1, 1128, x2)

# rs2_val == -1073741825, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000008000000000, 0xffffffffbfffffff, x1, 1136, x2)

# rs2_val == 2147483648, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000080000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffdfffff, 0x0000000080000000, x1, 1144, x2)

# rs2_val == 8589934592, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000200000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000040000000000, 0x0000000200000000, x1, 1152, x2)

# rs2_val == -8589934593, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xfffffffdffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffffffffffffffdf, 0xfffffffdffffffff, x1, 1160, x2)

# rs2_val == -17179869185, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0xfffffffbffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000100000, 0xfffffffbffffffff, x1, 1168, x2)

# rs2_val == 34359738368, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000800000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0200000000000000, 0x0000000800000000, x1, 1176, x2)

# rs2_val == -34359738369, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000800000000, 0xfffffff7ffffffff, x1, 1184, x2)

# rs2_val == 68719476736, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000001000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0002000000000000, 0x0000001000000000, x1, 1192, x2)

# rs2_val == -68719476737, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xffffffefffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffffffffffffff7, 0xffffffefffffffff, x1, 1200, x2)

# rs2_val == -137438953473, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffffdfffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0010000000000000, 0xffffffdfffffffff, x1, 1208, x2)

# rs2_val == 4398046511104, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000040000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000001000000, 0x0000040000000000, x1, 1216, x2)

# rs2_val == -8796093022209, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffff7fffffffffff, 0xfffff7ffffffffff, x1, 1224, x2)

# rs2_val == 35184372088832, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x0000200000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000080000, 0x0000200000000000, x1, 1232, x2)

# rs2_val == -70368744177665, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xffdfffffffffffff, 0xffffbfffffffffff, x1, 1240, x2)

# rs2_val == 140737488355328, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000800000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfbffffffffffffff, 0x0000800000000000, x1, 1248, x2)

# rs1_val == -1125899906842625, 
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0xfffbffffffffffff, 0xfffffffffffffeff, x1, 1256, x2)

# rs1_val == (-2**(xlen-1)), rs2_val == 2251799813685248, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0008000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x8000000000000000, 0x0008000000000000, x1, 1264, x2)

# rs2_val == (-2**(xlen-1)), rs2_val == -9223372036854775808, rs1_val == 2199023255552
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x8000000000000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000020000000000, 0x8000000000000000, x1, 1272, x2)

# rs1_val == 8, rs2_val == 67108864
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0000000004000000
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000000008, 0x0000000004000000, x1, 1280, x2)

# rs1_val == 32, rs2_val == -1099511627777
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0xfffffeffffffffff
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000000020, 0xfffffeffffffffff, x1, 1288, x2)

# rs1_val == 2048, rs2_val == 256
# opcode: remu ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0x0000000000000100
TEST_RR_OP(remu, x12, x10, x11, 0x0000000000000000, 0x0000000000000800, 0x0000000000000100, x1, 1296, x2)
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

signature_x17_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x17_1:
    .fill 19*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 163*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
