
#This assembly file tests the or instruction of the RISC-V I extension for the or covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",or)

RVTEST_SIGBASE( x3,signature_x3_1)

# rs1 == rs2 == rd, rs1==x0, rs2==x0, rd==x0, rs1_val == (-2**(xlen-1)), rs2_val == 16384, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: or ; op1:x0; op2:x0; dest:x0; op1val:0x8000000000000000;  op2val:0x0000000000004000
TEST_RR_OP(or, x0, x0, x0, 0x8000000000004000, 0x8000000000000000, 0x0000000000004000, x3, 0, x1)

# rs1 == rd != rs2, rs1==x22, rs2==x7, rd==x22, rs1_val == 0, rs2_val == 32
# opcode: or ; op1:x22; op2:x7; dest:x22; op1val:0x0000000000000000;  op2val:0x0000000000000020
TEST_RR_OP(or, x22, x22, x7, 0x20, 0x0000000000000000, 0x0000000000000020, x3, 8, x1)

# rs2 == rd != rs1, rs1==x20, rs2==x4, rd==x4, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs1_val == 9223372036854775807, rs2_val == -2
# opcode: or ; op1:x20; op2:x4; dest:x4; op1val:0x7fffffffffffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(or, x4, x20, x4, 0xffffffffffffffff, 0x7fffffffffffffff, 0xfffffffffffffffe, x3, 16, x1)

# rs1 == rs2 != rd, rs1==x31, rs2==x31, rd==x6, rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 70368744177664
# opcode: or ; op1:x31; op2:x31; dest:x6; op1val:0x0000000000000001;  op2val:0x0000400000000000
TEST_RR_OP(or, x6, x31, x31, 0x400000000001, 0x0000000000000001, 0x0000400000000000, x3, 24, x1)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x28, rs2==x12, rd==x9, rs2_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs2_val == -9223372036854775808, rs1_val == -2199023255553
# opcode: or ; op1:x28; op2:x12; dest:x9; op1val:0xfffffdffffffffff;  op2val:0x8000000000000000
TEST_RR_OP(or, x9, x28, x12, 0xfffffdffffffffff, 0xfffffdffffffffff, 0x8000000000000000, x3, 32, x1)

# rs1==x8, rs2==x26, rd==x30, rs2_val == 0, rs1_val == -288230376151711745
# opcode: or ; op1:x8; op2:x26; dest:x30; op1val:0xfbffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(or, x30, x8, x26, 0xfbffffffffffffff, 0xfbffffffffffffff, 0x0000000000000000, x3, 40, x1)

# rs1==x5, rs2==x11, rd==x10, rs2_val == (2**(xlen-1)-1), rs1_val == 2305843009213693952, rs2_val == 9223372036854775807
# opcode: or ; op1:x5; op2:x11; dest:x10; op1val:0x2000000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(or, x10, x5, x11, 0x7fffffffffffffff, 0x2000000000000000, 0x7fffffffffffffff, x3, 48, x1)

# rs1==x17, rs2==x25, rd==x21, rs2_val == 1, rs1_val == -257
# opcode: or ; op1:x17; op2:x25; dest:x21; op1val:0xfffffffffffffeff;  op2val:0x0000000000000001
TEST_RR_OP(or, x21, x17, x25, 0xfffffffffffffeff, 0xfffffffffffffeff, 0x0000000000000001, x3, 56, x1)

# rs1==x25, rs2==x5, rd==x28, rs1_val == rs2_val, 
# opcode: or ; op1:x25; op2:x5; dest:x28; op1val:0xfffffffffffffffa;  op2val:0xfffffffffffffffa
TEST_RR_OP(or, x28, x25, x5, 0xfffffffffffffffa, 0xfffffffffffffffa, 0xfffffffffffffffa, x3, 64, x1)

# rs1==x29, rs2==x8, rd==x19, rs1_val == 2, rs2_val == 1024
# opcode: or ; op1:x29; op2:x8; dest:x19; op1val:0x0000000000000002;  op2val:0x0000000000000400
TEST_RR_OP(or, x19, x29, x8, 0x402, 0x0000000000000002, 0x0000000000000400, x3, 72, x1)

# rs1==x18, rs2==x17, rd==x7, rs1_val == 4, 
# opcode: or ; op1:x18; op2:x17; dest:x7; op1val:0x0000000000000004;  op2val:0xfffffffffffffff8
TEST_RR_OP(or, x7, x18, x17, 0xfffffffffffffffc, 0x0000000000000004, 0xfffffffffffffff8, x3, 80, x1)

# rs1==x15, rs2==x30, rd==x16, rs1_val == 8, rs2_val == 67108864
# opcode: or ; op1:x15; op2:x30; dest:x16; op1val:0x0000000000000008;  op2val:0x0000000004000000
TEST_RR_OP(or, x16, x15, x30, 0x4000008, 0x0000000000000008, 0x0000000004000000, x3, 88, x1)

# rs1==x12, rs2==x23, rd==x2, rs1_val == 16, rs2_val == 18014398509481984
# opcode: or ; op1:x12; op2:x23; dest:x2; op1val:0x0000000000000010;  op2val:0x0040000000000000
TEST_RR_OP(or, x2, x12, x23, 0x40000000000010, 0x0000000000000010, 0x0040000000000000, x3, 96, x1)

# rs1==x7, rs2==x9, rd==x26, rs1_val == 32, rs2_val == -65537
# opcode: or ; op1:x7; op2:x9; dest:x26; op1val:0x0000000000000020;  op2val:0xfffffffffffeffff
TEST_RR_OP(or, x26, x7, x9, 0xfffffffffffeffff, 0x0000000000000020, 0xfffffffffffeffff, x3, 104, x1)

# rs1==x16, rs2==x14, rd==x20, rs1_val == 64, rs2_val == -2147483649
# opcode: or ; op1:x16; op2:x14; dest:x20; op1val:0x0000000000000040;  op2val:0xffffffff7fffffff
TEST_RR_OP(or, x20, x16, x14, 0xffffffff7fffffff, 0x0000000000000040, 0xffffffff7fffffff, x3, 112, x1)

# rs1==x19, rs2==x22, rd==x14, rs1_val == 128, rs2_val == -2097153
# opcode: or ; op1:x19; op2:x22; dest:x14; op1val:0x0000000000000080;  op2val:0xffffffffffdfffff
TEST_RR_OP(or, x14, x19, x22, 0xffffffffffdfffff, 0x0000000000000080, 0xffffffffffdfffff, x3, 120, x1)

# rs1==x24, rs2==x10, rd==x29, rs1_val == 256, rs2_val == 17592186044416
# opcode: or ; op1:x24; op2:x10; dest:x29; op1val:0x0000000000000100;  op2val:0x0000100000000000
TEST_RR_OP(or, x29, x24, x10, 0x100000000100, 0x0000000000000100, 0x0000100000000000, x3, 128, x1)

# rs1==x10, rs2==x1, rd==x27, rs1_val == 512, rs2_val == -18014398509481985
# opcode: or ; op1:x10; op2:x1; dest:x27; op1val:0x0000000000000200;  op2val:0xffbfffffffffffff
TEST_RR_OP(or, x27, x10, x1, 0xffbfffffffffffff, 0x0000000000000200, 0xffbfffffffffffff, x3, 136, x5)
RVTEST_SIGBASE( x7,signature_x7_0)

# rs1==x9, rs2==x6, rd==x24, rs1_val == 1024, rs2_val == 8192
# opcode: or ; op1:x9; op2:x6; dest:x24; op1val:0x0000000000000400;  op2val:0x0000000000002000
TEST_RR_OP(or, x24, x9, x6, 0x2400, 0x0000000000000400, 0x0000000000002000, x7, 0, x5)

# rs1==x21, rs2==x28, rd==x18, rs1_val == 2048, rs2_val == 8589934592
# opcode: or ; op1:x21; op2:x28; dest:x18; op1val:0x0000000000000800;  op2val:0x0000000200000000
TEST_RR_OP(or, x18, x21, x28, 0x200000800, 0x0000000000000800, 0x0000000200000000, x7, 8, x5)

# rs1==x14, rs2==x16, rd==x31, rs1_val == 4096, rs2_val == 8
# opcode: or ; op1:x14; op2:x16; dest:x31; op1val:0x0000000000001000;  op2val:0x0000000000000008
TEST_RR_OP(or, x31, x14, x16, 0x1008, 0x0000000000001000, 0x0000000000000008, x7, 16, x5)

# rs1==x1, rs2==x18, rd==x17, rs1_val == 8192, rs2_val == -65
# opcode: or ; op1:x1; op2:x18; dest:x17; op1val:0x0000000000002000;  op2val:0xffffffffffffffbf
TEST_RR_OP(or, x17, x1, x18, 0xffffffffffffffbf, 0x0000000000002000, 0xffffffffffffffbf, x7, 24, x5)

# rs1==x27, rs2==x3, rd==x8, rs1_val == 16384, 
# opcode: or ; op1:x27; op2:x3; dest:x8; op1val:0x0000000000004000;  op2val:0xffffffff7fffffff
TEST_RR_OP(or, x8, x27, x3, 0xffffffff7fffffff, 0x0000000000004000, 0xffffffff7fffffff, x7, 32, x5)

# rs1==x3, rs2==x29, rd==x1, rs1_val == 32768, rs2_val == -1073741825
# opcode: or ; op1:x3; op2:x29; dest:x1; op1val:0x0000000000008000;  op2val:0xffffffffbfffffff
TEST_RR_OP(or, x1, x3, x29, 0xffffffffbfffffff, 0x0000000000008000, 0xffffffffbfffffff, x7, 40, x5)

# rs1==x6, rs2==x24, rd==x12, rs1_val == 65536, rs2_val == 140737488355328
# opcode: or ; op1:x6; op2:x24; dest:x12; op1val:0x0000000000010000;  op2val:0x0000800000000000
TEST_RR_OP(or, x12, x6, x24, 0x800000010000, 0x0000000000010000, 0x0000800000000000, x7, 48, x5)

# rs1==x4, rs2==x20, rd==x15, rs1_val == 131072, rs2_val == 1099511627776
# opcode: or ; op1:x4; op2:x20; dest:x15; op1val:0x0000000000020000;  op2val:0x0000010000000000
TEST_RR_OP(or, x15, x4, x20, 0x10000020000, 0x0000000000020000, 0x0000010000000000, x7, 56, x5)

# rs1==x30, rs2==x19, rd==x13, rs1_val == 262144, rs2_val == -17179869185
# opcode: or ; op1:x30; op2:x19; dest:x13; op1val:0x0000000000040000;  op2val:0xfffffffbffffffff
TEST_RR_OP(or, x13, x30, x19, 0xfffffffbffffffff, 0x0000000000040000, 0xfffffffbffffffff, x7, 64, x5)

# rs1==x13, rs2==x27, rd==x25, rs1_val == 524288, rs2_val == -131073
# opcode: or ; op1:x13; op2:x27; dest:x25; op1val:0x0000000000080000;  op2val:0xfffffffffffdffff
TEST_RR_OP(or, x25, x13, x27, 0xfffffffffffdffff, 0x0000000000080000, 0xfffffffffffdffff, x7, 72, x5)

# rs1==x26, rs2==x13, rd==x23, rs1_val == 1048576, 
# opcode: or ; op1:x26; op2:x13; dest:x23; op1val:0x0000000000100000;  op2val:0xfffffffffffffff9
TEST_RR_OP(or, x23, x26, x13, 0xfffffffffffffff9, 0x0000000000100000, 0xfffffffffffffff9, x7, 80, x5)

# rs1==x2, rs2==x21, rd==x3, rs1_val == 2097152, rs2_val == -36028797018963969
# opcode: or ; op1:x2; op2:x21; dest:x3; op1val:0x0000000000200000;  op2val:0xff7fffffffffffff
TEST_RR_OP(or, x3, x2, x21, 0xff7fffffffffffff, 0x0000000000200000, 0xff7fffffffffffff, x7, 88, x5)

# rs1==x11, rs2==x15, rd==x5, rs1_val == 4194304, 
# opcode: or ; op1:x11; op2:x15; dest:x5; op1val:0x0000000000400000;  op2val:0xffffffff7fffffff
TEST_RR_OP(or, x5, x11, x15, 0xffffffff7fffffff, 0x0000000000400000, 0xffffffff7fffffff, x7, 96, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x23, rs2==x2, rd==x11, rs1_val == 8388608, rs2_val == 8796093022208
# opcode: or ; op1:x23; op2:x2; dest:x11; op1val:0x0000000000800000;  op2val:0x0000080000000000
TEST_RR_OP(or, x11, x23, x2, 0x80000800000, 0x0000000000800000, 0x0000080000000000, x1, 0, x3)

# rs1_val == 16777216, rs2_val == -2251799813685249
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfff7ffffffffffff, 0x0000000001000000, 0xfff7ffffffffffff, x1, 8, x3)

# rs1_val == 33554432, rs2_val == -32769
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffff7fff, 0x0000000002000000, 0xffffffffffff7fff, x1, 16, x3)

# rs1_val == 67108864, rs2_val == 1152921504606846976
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x1000000000000000
TEST_RR_OP(or, x12, x10, x11, 0x1000000004000000, 0x0000000004000000, 0x1000000000000000, x1, 24, x3)

# rs1_val == 134217728, rs2_val == 536870912
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000020000000
TEST_RR_OP(or, x12, x10, x11, 0x28000000, 0x0000000008000000, 0x0000000020000000, x1, 32, x3)

# rs1_val == 268435456, rs2_val == -6148914691236517206
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(or, x12, x10, x11, 0xaaaaaaaabaaaaaaa, 0x0000000010000000, 0xaaaaaaaaaaaaaaaa, x1, 40, x3)

# rs1_val == 536870912, rs2_val == -16777217
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffffffeffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffeffffff, 0x0000000020000000, 0xfffffffffeffffff, x1, 48, x3)

# rs1_val == 1073741824, rs2_val == 4096
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000001000
TEST_RR_OP(or, x12, x10, x11, 0x40001000, 0x0000000040000000, 0x0000000000001000, x1, 56, x3)

# rs1_val == 2147483648, rs2_val == 2305843009213693952
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x2000000000000000
TEST_RR_OP(or, x12, x10, x11, 0x2000000080000000, 0x0000000080000000, 0x2000000000000000, x1, 64, x3)

# rs1_val == 4294967296, rs2_val == 4398046511104
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000040000000000
TEST_RR_OP(or, x12, x10, x11, 0x40100000000, 0x0000000100000000, 0x0000040000000000, x1, 72, x3)

# rs1_val == 8589934592, rs2_val == 4611686018427387904
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x4000000000000000
TEST_RR_OP(or, x12, x10, x11, 0x4000000200000000, 0x0000000200000000, 0x4000000000000000, x1, 80, x3)

# rs1_val == 17179869184, rs2_val == -1099511627777
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffeffffffffff, 0x0000000400000000, 0xfffffeffffffffff, x1, 88, x3)

# rs1_val == 34359738368, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000200000000
TEST_RR_OP(or, x12, x10, x11, 0xa00000000, 0x0000000800000000, 0x0000000200000000, x1, 96, x3)

# rs1_val == 68719476736, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffff6, 0x0000001000000000, 0xfffffffffffffff6, x1, 104, x3)

# rs1_val == 137438953472, rs2_val == 288230376151711744
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0400000000000000
TEST_RR_OP(or, x12, x10, x11, 0x400002000000000, 0x0000002000000000, 0x0400000000000000, x1, 112, x3)

# rs1_val == 274877906944, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000000
TEST_RR_OP(or, x12, x10, x11, 0x4000000000, 0x0000004000000000, 0x0000000000000000, x1, 120, x3)

# rs1_val == 549755813888, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000004000
TEST_RR_OP(or, x12, x10, x11, 0x8000004000, 0x0000008000000000, 0x0000000000004000, x1, 128, x3)

# rs1_val == 1099511627776, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000400
TEST_RR_OP(or, x12, x10, x11, 0x10000000400, 0x0000010000000000, 0x0000000000000400, x1, 136, x3)

# rs1_val == 2199023255552, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xffffffffffffffbf
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffbf, 0x0000020000000000, 0xffffffffffffffbf, x1, 144, x3)

# rs1_val == 4398046511104, rs2_val == 2097152
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000200000
TEST_RR_OP(or, x12, x10, x11, 0x40000200000, 0x0000040000000000, 0x0000000000200000, x1, 152, x3)

# rs1_val == 8796093022208, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffff7fffffff, 0x0000080000000000, 0xffffffff7fffffff, x1, 160, x3)

# rs1_val == 17592186044416, rs2_val == -134217729
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffffff7ffffff, 0x0000100000000000, 0xfffffffff7ffffff, x1, 168, x3)

# rs1_val == 35184372088832, rs2_val == 562949953421312
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0002000000000000
TEST_RR_OP(or, x12, x10, x11, 0x2200000000000, 0x0000200000000000, 0x0002000000000000, x1, 176, x3)

# rs1_val == 70368744177664, rs2_val == 512
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000200
TEST_RR_OP(or, x12, x10, x11, 0x400000000200, 0x0000400000000000, 0x0000000000000200, x1, 184, x3)

# rs1_val == 140737488355328, rs2_val == -549755813889
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xffffff7fffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffff7fffffffff, 0x0000800000000000, 0xffffff7fffffffff, x1, 192, x3)

# rs1_val == 281474976710656, rs2_val == 2147483648
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000080000000
TEST_RR_OP(or, x12, x10, x11, 0x1000080000000, 0x0001000000000000, 0x0000000080000000, x1, 200, x3)

# rs1_val == 562949953421312, rs2_val == -281474976710657
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffeffffffffffff, 0x0002000000000000, 0xfffeffffffffffff, x1, 208, x3)

# rs1_val == 1125899906842624, rs2_val == -4611686018427387905
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xbfffffffffffffff, 0x0004000000000000, 0xbfffffffffffffff, x1, 216, x3)

# rs1_val == 2251799813685248, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffffc, 0x0008000000000000, 0xfffffffffffffffc, x1, 224, x3)

# rs1_val == 4503599627370496, rs2_val == -17592186044417
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffefffffffffff, 0x0010000000000000, 0xffffefffffffffff, x1, 232, x3)

# rs1_val == 9007199254740992, rs2_val == -140737488355329
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffff7fffffffffff, 0x0020000000000000, 0xffff7fffffffffff, x1, 240, x3)

# rs1_val == 18014398509481984, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x1000000000000000
TEST_RR_OP(or, x12, x10, x11, 0x1040000000000000, 0x0040000000000000, 0x1000000000000000, x1, 248, x3)

# rs1_val == 36028797018963968, rs2_val == 1125899906842624
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0004000000000000
TEST_RR_OP(or, x12, x10, x11, 0x84000000000000, 0x0080000000000000, 0x0004000000000000, x1, 256, x3)

# rs1_val == 72057594037927936, rs2_val == -129
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffff7f, 0x0100000000000000, 0xffffffffffffff7f, x1, 264, x3)

# rs1_val == 144115188075855872, rs2_val == 268435456
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000010000000
TEST_RR_OP(or, x12, x10, x11, 0x200000010000000, 0x0200000000000000, 0x0000000010000000, x1, 272, x3)

# rs1_val == 288230376151711744, rs2_val == 2048
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000800
TEST_RR_OP(or, x12, x10, x11, 0x400000000000800, 0x0400000000000000, 0x0000000000000800, x1, 280, x3)

# rs1_val == 576460752303423488, rs2_val == -262145
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffbffff, 0x0800000000000000, 0xfffffffffffbffff, x1, 288, x3)

# rs1_val == 1152921504606846976, rs2_val == 4194304
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000400000
TEST_RR_OP(or, x12, x10, x11, 0x1000000000400000, 0x1000000000000000, 0x0000000000400000, x1, 296, x3)

# rs1_val == 4611686018427387904, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0x4000000000000000, 0xbfffffffffffffff, x1, 304, x3)

# rs1_val == -2, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xc000000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffffe, 0xfffffffffffffffe, 0xc000000000000000, x1, 312, x3)

# rs1_val == -3, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000002000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffffd, 0xfffffffffffffffd, 0x0000000000002000, x1, 320, x3)

# rs1_val == -5, rs2_val == -536870913
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xffffffffdfffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffffffb, 0xffffffffdfffffff, x1, 328, x3)

# rs1_val == -9, rs2_val == 4503599627370496
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0010000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffff7, 0xfffffffffffffff7, 0x0010000000000000, x1, 336, x3)

# rs1_val == -17, rs2_val == 131072
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000020000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffef, 0xffffffffffffffef, 0x0000000000020000, x1, 344, x3)

# rs1_val == -33, rs2_val == 281474976710656
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0001000000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffdf, 0xffffffffffffffdf, 0x0001000000000000, x1, 352, x3)

# rs1_val == -65, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000010000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffbf, 0xffffffffffffffbf, 0x0000010000000000, x1, 360, x3)

# rs2_val == -1125899906842625, rs1_val == -17179869185
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffbffffffff, 0xfffbffffffffffff, x1, 368, x3)

# rs2_val == -4503599627370497, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0xffefffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffffffff, 0xffefffffffffffff, x1, 376, x3)

# rs2_val == -9007199254740993, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xffdfffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffdfffffffffffff, 0x0000000000000080, 0xffdfffffffffffff, x1, 384, x3)

# rs2_val == -72057594037927937, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfeffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffffeff, 0xfeffffffffffffff, x1, 392, x3)

# rs2_val == -144115188075855873, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfdffffffffffffff, 0x0000000200000000, 0xfdffffffffffffff, x1, 400, x3)

# rs2_val == -288230376151711745, rs1_val == -274877906945
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffbfffffffff, 0xfbffffffffffffff, x1, 408, x3)

# rs2_val == -576460752303423489, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xc000000000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xf7ffffffffffffff, 0xc000000000000000, 0xf7ffffffffffffff, x1, 416, x3)

# rs2_val == -1152921504606846977, rs1_val == -32769
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0xefffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffff7fff, 0xefffffffffffffff, x1, 424, x3)

# rs2_val == -2305843009213693953, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xdfffffffffffffff, 0x0000002000000000, 0xdfffffffffffffff, x1, 432, x3)

# rs2_val == 6148914691236517205, rs1_val == -562949953421313
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(or, x12, x10, x11, 0xfffdffffffffffff, 0xfffdffffffffffff, 0x5555555555555555, x1, 440, x3)

# rs1_val == -129, rs2_val == -5
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffffffffffffb
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffffff7f, 0xfffffffffffffffb, x1, 448, x3)

# rs1_val == -513, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffdff, 0xfffffffffffffdff, 0x0000000000000000, x1, 456, x3)

# rs1_val == -1025, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000002000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffbff, 0xfffffffffffffbff, 0x0000000000002000, x1, 464, x3)

# rs1_val == -2049, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000000008
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffff7ff, 0xfffffffffffff7ff, 0x0000000000000008, x1, 472, x3)

# rs1_val == -4097, rs2_val == -562949953421313
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfffdffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffffefff, 0xfffdffffffffffff, x1, 480, x3)

# rs1_val == -8193, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xfeffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffffdfff, 0xfeffffffffffffff, x1, 488, x3)

# rs1_val == -16385, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x7fffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffffbfff, 0x7fffffffffffffff, x1, 496, x3)

# rs1_val == -65537, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0001000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffeffff, 0xfffffffffffeffff, 0x0001000000000000, x1, 504, x3)

# rs1_val == -131073, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xffefffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffdffff, 0xffefffffffffffff, x1, 512, x3)

# rs1_val == -262145, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffbffff, 0xf7ffffffffffffff, x1, 520, x3)

# rs1_val == -524289, rs2_val == 64
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000040
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffff7ffff, 0xfffffffffff7ffff, 0x0000000000000040, x1, 528, x3)

# rs1_val == -1048577, rs2_val == -268435457
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffefffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffefffff, 0xffffffffefffffff, x1, 536, x3)

# rs1_val == -2097153, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffdfffff, 0xffffffffffdfffff, 0x0000000000000000, x1, 544, x3)

# rs1_val == -4194305, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffffffff7ffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffbfffff, 0xfffffffff7ffffff, x1, 552, x3)

# rs1_val == -8388609, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0004000000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffff7fffff, 0xffffffffff7fffff, 0x0004000000000000, x1, 560, x3)

# rs1_val == -16777217, rs2_val == 262144
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000000040000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffeffffff, 0xfffffffffeffffff, 0x0000000000040000, x1, 568, x3)

# rs1_val == -33554433, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffdffffff, 0xffff7fffffffffff, x1, 576, x3)

# rs1_val == -67108865, rs2_val == -1025
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffffffffffffbff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffbffffff, 0xfffffffffffffbff, x1, 584, x3)

# rs1_val == -134217729, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffff7ffffff, 0xff7fffffffffffff, x1, 592, x3)

# rs1_val == -268435457, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000004000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffefffffff, 0xffffffffefffffff, 0x0000000004000000, x1, 600, x3)

# rs1_val == -536870913, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xffffffffffff7fff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffdfffffff, 0xffffffffffff7fff, x1, 608, x3)

# rs1_val == -1073741825, rs2_val == 576460752303423488
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0800000000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffbfffffff, 0xffffffffbfffffff, 0x0800000000000000, x1, 616, x3)

# rs1_val == -2147483649, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000100000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffff7fffffff, 0xffffffff7fffffff, 0x0000100000000000, x1, 624, x3)

# rs1_val == -4294967297, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffeffffffff, 0xfeffffffffffffff, x1, 632, x3)

# rs1_val == -8589934593, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffdffffffff, 0xffffffffbfffffff, x1, 640, x3)

# rs1_val == -34359738369, rs2_val == -2049
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffff7ffffffff, 0xfffffffffffff7ff, x1, 648, x3)

# rs1_val == -68719476737, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000020000
TEST_RR_OP(or, x12, x10, x11, 0xffffffefffffffff, 0xffffffefffffffff, 0x0000000000020000, x1, 656, x3)

# rs1_val == -137438953473, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000400000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffdfffffffff, 0xffffffdfffffffff, 0x0000400000000000, x1, 664, x3)

# rs1_val == -549755813889, rs2_val == -4097
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffff7fffffffff, 0xffffffffffffefff, x1, 672, x3)

# rs1_val == -1099511627777, rs2_val == -8388609
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffeffffffffff, 0xffffffffff7fffff, x1, 680, x3)

# rs1_val == -4398046511105, rs2_val == -2199023255553
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffbffffffffff, 0xfffffdffffffffff, x1, 688, x3)

# rs1_val == -8796093022209, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xffbfffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffff7ffffffffff, 0xffbfffffffffffff, x1, 696, x3)

# rs1_val == -17592186044417, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffefffffffffff, 0xfbffffffffffffff, x1, 704, x3)

# rs1_val == -35184372088833, rs2_val == 144115188075855872
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0200000000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffdfffffffffff, 0xffffdfffffffffff, 0x0200000000000000, x1, 712, x3)

# rs1_val == -70368744177665, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffbfffffffffff, 0xffffbfffffffffff, 0x0000010000000000, x1, 720, x3)

# rs1_val == -140737488355329, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000000200000
TEST_RR_OP(or, x12, x10, x11, 0xffff7fffffffffff, 0xffff7fffffffffff, 0x0000000000200000, x1, 728, x3)

# rs1_val == -281474976710657, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffeffffffffffff, 0xfffeffffffffffff, 0xfffeffffffffffff, x1, 736, x3)

# rs1_val == -1125899906842625, rs2_val == 274877906944
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000004000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffbffffffffffff, 0xfffbffffffffffff, 0x0000004000000000, x1, 744, x3)

# rs1_val == -2251799813685249, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffffffffffffff6
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfff7ffffffffffff, 0xfffffffffffffff6, x1, 752, x3)

# rs1_val == -4503599627370497, rs2_val == 4294967296
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000100000000
TEST_RR_OP(or, x12, x10, x11, 0xffefffffffffffff, 0xffefffffffffffff, 0x0000000100000000, x1, 760, x3)

# rs1_val == -9007199254740993, rs2_val == -35184372088833
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffdfffffffffffff, 0xffffdfffffffffff, x1, 768, x3)

# rs1_val == -18014398509481985, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(or, x12, x10, x11, 0xffbfffffffffffff, 0xffbfffffffffffff, 0x0000000000000006, x1, 776, x3)

# rs1_val == -36028797018963969, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000002000
TEST_RR_OP(or, x12, x10, x11, 0xff7fffffffffffff, 0xff7fffffffffffff, 0x0000000000002000, x1, 784, x3)

# rs1_val == -72057594037927937, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0040000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfeffffffffffffff, 0xfeffffffffffffff, 0x0040000000000000, x1, 792, x3)

# rs1_val == -144115188075855873, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0200000000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfdffffffffffffff, 0x0200000000000000, x1, 800, x3)

# rs1_val == -576460752303423489, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xfffffffffffffff6
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xf7ffffffffffffff, 0xfffffffffffffff6, x1, 808, x3)

# rs1_val == -1152921504606846977, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xefffffffffffffff, 0xfffffeffffffffff, x1, 816, x3)

# rs1_val == -2305843009213693953, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xdfffffffffffffff, 0xfffffdffffffffff, x1, 824, x3)

# rs1_val == -4611686018427387905, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xbfffffffffffffff, 0xfbffffffffffffff, x1, 832, x3)

# rs1_val == 6148914691236517205, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xbfffffffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0x5555555555555555, 0xbfffffffffffffff, x1, 840, x3)

# rs1_val == -6148914691236517206, rs2_val == -4194305
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffffffffffbfffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffbfffff, 0xaaaaaaaaaaaaaaaa, 0xffffffffffbfffff, x1, 848, x3)

# rs2_val == 2, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000002
TEST_RR_OP(or, x12, x10, x11, 0x20000002, 0x0000000020000000, 0x0000000000000002, x1, 856, x3)

# rs2_val == 4, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0x0000000000000004
TEST_RR_OP(or, x12, x10, x11, 0x204, 0x0000000000000200, 0x0000000000000004, x1, 864, x3)

# rs2_val == 16, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000010
TEST_RR_OP(or, x12, x10, x11, 0x40010, 0x0000000000040000, 0x0000000000000010, x1, 872, x3)

# rs2_val == 128, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000000000080
TEST_RR_OP(or, x12, x10, x11, 0x40000000000080, 0x0040000000000000, 0x0000000000000080, x1, 880, x3)

# rs2_val == 256, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000100
TEST_RR_OP(or, x12, x10, x11, 0xfffdffffffffffff, 0xfffdffffffffffff, 0x0000000000000100, x1, 888, x3)

# rs2_val == 32768, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000008000
TEST_RR_OP(or, x12, x10, x11, 0x1000000000008000, 0x1000000000000000, 0x0000000000008000, x1, 896, x3)

# rs2_val == 65536, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000010000
TEST_RR_OP(or, x12, x10, x11, 0xffdfffffffffffff, 0xffdfffffffffffff, 0x0000000000010000, x1, 904, x3)

# rs2_val == 524288, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000080000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffdffffff, 0xfffffffffdffffff, 0x0000000000080000, x1, 912, x3)

# rs2_val == 1048576, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000100000
TEST_RR_OP(or, x12, x10, x11, 0xffffefffffffffff, 0xffffefffffffffff, 0x0000000000100000, x1, 920, x3)

# rs2_val == 8388608, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000800000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffdffff, 0xfffffffffffdffff, 0x0000000000800000, x1, 928, x3)

# rs2_val == 16777216, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000001000000
TEST_RR_OP(or, x12, x10, x11, 0x80001000000, 0x0000080000000000, 0x0000000001000000, x1, 936, x3)

# rs2_val == 33554432, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000002000000
TEST_RR_OP(or, x12, x10, x11, 0x20000002000000, 0x0020000000000000, 0x0000000002000000, x1, 944, x3)

# rs2_val == 134217728, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000008000000
TEST_RR_OP(or, x12, x10, x11, 0x108000000, 0x0000000100000000, 0x0000000008000000, x1, 952, x3)

# rs2_val == 1073741824, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000040000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffbffffffffff, 0xfffffbffffffffff, 0x0000000040000000, x1, 960, x3)

# rs2_val == 17179869184, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000006;  op2val:0x0000000400000000
TEST_RR_OP(or, x12, x10, x11, 0x400000006, 0x0000000000000006, 0x0000000400000000, x1, 968, x3)

# rs2_val == 2251799813685248, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0008000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffff7ffffffffff, 0xfffff7ffffffffff, 0x0008000000000000, x1, 976, x3)

# rs2_val == 9007199254740992, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0020000000000000
TEST_RR_OP(or, x12, x10, x11, 0x20000000000020, 0x0000000000000020, 0x0020000000000000, x1, 984, x3)

# rs2_val == 36028797018963968, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0080000000000000
TEST_RR_OP(or, x12, x10, x11, 0x84000000000000, 0x0004000000000000, 0x0080000000000000, x1, 992, x3)

# rs2_val == 72057594037927936, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0100000000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffbff, 0xfffffffffffffbff, 0x0100000000000000, x1, 1000, x3)

# rs2_val == -3, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffffd, 0x0000100000000000, 0xfffffffffffffffd, x1, 1008, x3)

# rs2_val == -9, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xfffffffffffffff7
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffffff7, 0x5555555555555555, 0xfffffffffffffff7, x1, 1016, x3)

# rs2_val == -17, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffffffffffffffef
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffef, 0xaaaaaaaaaaaaaaaa, 0xffffffffffffffef, x1, 1024, x3)

# rs2_val == -33, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffff7ffffffff, 0xffffffffffffffdf, x1, 1032, x3)

# rs2_val == -257, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0xfffffffffffffeff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0x0000000000000100, 0xfffffffffffffeff, x1, 1040, x3)

# rs2_val == -513, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffdfffffff, 0xfffffffffffffdff, x1, 1048, x3)

# rs2_val == -8193, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffffffdfff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffbffffff, 0xffffffffffffdfff, x1, 1056, x3)

# rs2_val == -16385, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffffffffbfffff, 0xffffffffffffbfff, x1, 1064, x3)

# rs2_val == -524289, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfffffffffff7ffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffbfffffffffff, 0xfffffffffff7ffff, x1, 1072, x3)

# rs2_val == -1048577, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffbffffffffffff, 0xffffffffffefffff, x1, 1080, x3)

# rs2_val == -33554433, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffff7ffffffffff, 0xfffffffffdffffff, x1, 1088, x3)

# rs2_val == -67108865, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xfffffffffbffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffff7ff, 0xfffffffffbffffff, x1, 1096, x3)

# rs2_val == -4294967297, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000005;  op2val:0xfffffffeffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffffeffffffff, 0x0000000000000005, 0xfffffffeffffffff, x1, 1104, x3)

# rs2_val == -8589934593, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffffff7fffffffff, 0xfffffffdffffffff, x1, 1112, x3)

# rs2_val == 34359738368, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000800000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffdfffffffff, 0xffffffdfffffffff, 0x0000000800000000, x1, 1120, x3)

# rs2_val == -34359738369, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffffdff, 0xfffffff7ffffffff, x1, 1128, x3)

# rs2_val == 68719476736, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000001000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffdffff, 0xfffffffffffdffff, 0x0000001000000000, x1, 1136, x3)

# rs2_val == -68719476737, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0xffffffefffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffefffffffff, 0x0000000000000007, 0xffffffefffffffff, x1, 1144, x3)

# rs2_val == 137438953472, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000002000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffdffff, 0xfffffffffffdffff, 0x0000002000000000, x1, 1152, x3)

# rs2_val == -137438953473, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xffffffdfffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffdfffffffff, 0x0000000000000080, 0xffffffdfffffffff, x1, 1160, x3)

# rs2_val == -274877906945, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xffff7fffffffffff, 0xffffffbfffffffff, x1, 1168, x3)

# rs2_val == 549755813888, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000008000000000
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffef, 0xffffffffffffffef, 0x0000008000000000, x1, 1176, x3)

# rs2_val == 2199023255552, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000020000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffdffffffffffff, 0xfffdffffffffffff, 0x0000020000000000, x1, 1184, x3)

# rs2_val == -4398046511105, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0xfffffbffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffffbffffffffff, 0x0000000000000003, 0xfffffbffffffffff, x1, 1192, x3)

# rs2_val == -8796093022209, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0xfffff7ffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xfffff7ffffffffff, 0x0000000000000080, 0xfffff7ffffffffff, x1, 1200, x3)

# rs2_val == 35184372088832, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000200000000000
TEST_RR_OP(or, x12, x10, x11, 0xfffffffffffdffff, 0xfffffffffffdffff, 0x0000200000000000, x1, 1208, x3)

# rs2_val == -70368744177665, 
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(or, x12, x10, x11, 0xffffffffffffffff, 0xfffdffffffffffff, 0xffffbfffffffffff, x1, 1216, x3)

# rs1_val == (-2**(xlen-1)), rs2_val == 16384, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000000004000
TEST_RR_OP(or, x12, x10, x11, 0x8000000000004000, 0x8000000000000000, 0x0000000000004000, x1, 1224, x3)

# rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 70368744177664
# opcode: or ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000400000000000
TEST_RR_OP(or, x12, x10, x11, 0x400000000001, 0x0000000000000001, 0x0000400000000000, x1, 1232, x3)
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

signature_x3_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x3_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x7_0:
    .fill 13*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 155*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
