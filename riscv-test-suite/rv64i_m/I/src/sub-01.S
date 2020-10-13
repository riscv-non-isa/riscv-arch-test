
#This assembly file tests the sub instruction of the RISC-V I extension for the sub covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sub)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 == rs2 == rd, rs1==x20, rs2==x20, rd==x20, rs1_val == (-2**(xlen-1)), rs2_val == 536870912, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: sub ; op1:x20; op2:x20; dest:x20; op1val:0x8000000000000000;  op2val:0x0000000020000000
TEST_RR_OP(sub, x20, x20, x20, 0x7fffffffe0000000, 0x8000000000000000, 0x0000000020000000, x1, 0, x12)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x27, rs2==x26, rd==x3, rs1_val == 0, rs2_val == 16
# opcode: sub ; op1:x27; op2:x26; dest:x3; op1val:0x0000000000000000;  op2val:0x0000000000000010
TEST_RR_OP(sub, x3, x27, x26, 0xfffffffffffffff0, 0x0000000000000000, 0x0000000000000010, x1, 8, x12)

# rs1 == rs2 != rd, rs1==x11, rs2==x11, rd==x22, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs2_val == -65, rs1_val == 9223372036854775807
# opcode: sub ; op1:x11; op2:x11; dest:x22; op1val:0x7fffffffffffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(sub, x22, x11, x11, 0x8000000000000040, 0x7fffffffffffffff, 0xffffffffffffffbf, x1, 16, x12)

# rs2 == rd != rs1, rs1==x29, rs2==x31, rd==x31, rs1_val == 1, rs2_val == -129
# opcode: sub ; op1:x29; op2:x31; dest:x31; op1val:0x0000000000000001;  op2val:0xffffffffffffff7f
TEST_RR_OP(sub, x31, x29, x31, 0x82, 0x0000000000000001, 0xffffffffffffff7f, x1, 24, x12)

# rs1 == rd != rs2, rs1==x4, rs2==x3, rd==x4, rs2_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -549755813889, rs2_val == -9223372036854775808
# opcode: sub ; op1:x4; op2:x3; dest:x4; op1val:0xffffff7fffffffff;  op2val:0x8000000000000000
TEST_RR_OP(sub, x4, x4, x3, 0x7fffff7fffffffff, 0xffffff7fffffffff, 0x8000000000000000, x1, 32, x12)

# rs1==x7, rs2==x10, rd==x21, rs2_val == 0, rs1_val == -9007199254740993
# opcode: sub ; op1:x7; op2:x10; dest:x21; op1val:0xffdfffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sub, x21, x7, x10, 0xffdfffffffffffff, 0xffdfffffffffffff, 0x0000000000000000, x1, 40, x12)

# rs1==x14, rs2==x8, rd==x9, rs2_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs1_val == 268435456, rs2_val == 9223372036854775807
# opcode: sub ; op1:x14; op2:x8; dest:x9; op1val:0x0000000010000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(sub, x9, x14, x8, 0x8000000010000001, 0x0000000010000000, 0x7fffffffffffffff, x1, 48, x12)

# rs1==x8, rs2==x18, rd==x11, rs2_val == 1, rs1_val == -8193
# opcode: sub ; op1:x8; op2:x18; dest:x11; op1val:0xffffffffffffdfff;  op2val:0x0000000000000001
TEST_RR_OP(sub, x11, x8, x18, 0xffffffffffffdffe, 0xffffffffffffdfff, 0x0000000000000001, x1, 56, x12)

# rs1==x26, rs2==x27, rd==x5, rs1_val == rs2_val, rs1_val == -68719476737, rs2_val == -68719476737
# opcode: sub ; op1:x26; op2:x27; dest:x5; op1val:0xffffffefffffffff;  op2val:0xffffffefffffffff
TEST_RR_OP(sub, x5, x26, x27, 0x0, 0xffffffefffffffff, 0xffffffefffffffff, x1, 64, x12)

# rs1==x19, rs2==x29, rd==x15, rs1_val == 2, rs2_val == -131073
# opcode: sub ; op1:x19; op2:x29; dest:x15; op1val:0x0000000000000002;  op2val:0xfffffffffffdffff
TEST_RR_OP(sub, x15, x19, x29, 0x20003, 0x0000000000000002, 0xfffffffffffdffff, x1, 72, x12)

# rs1==x3, rs2==x0, rd==x25, rs1_val == 4, 
# opcode: sub ; op1:x3; op2:x0; dest:x25; op1val:0x0000000000000004;  op2val:0xfffffffffffffff9
TEST_RR_OP(sub, x25, x3, x0, 0xb, 0x0000000000000004, 0xfffffffffffffff9, x1, 80, x12)

# rs1==x5, rs2==x28, rd==x2, rs1_val == 8, rs2_val == -2
# opcode: sub ; op1:x5; op2:x28; dest:x2; op1val:0x0000000000000008;  op2val:0xfffffffffffffffe
TEST_RR_OP(sub, x2, x5, x28, 0xa, 0x0000000000000008, 0xfffffffffffffffe, x1, 88, x12)

# rs1==x2, rs2==x6, rd==x16, rs1_val == 16, rs2_val == -536870913
# opcode: sub ; op1:x2; op2:x6; dest:x16; op1val:0x0000000000000010;  op2val:0xffffffffdfffffff
TEST_RR_OP(sub, x16, x2, x6, 0x20000011, 0x0000000000000010, 0xffffffffdfffffff, x1, 96, x12)

# rs1==x30, rs2==x7, rd==x24, rs1_val == 32, rs2_val == 64
# opcode: sub ; op1:x30; op2:x7; dest:x24; op1val:0x0000000000000020;  op2val:0x0000000000000040
TEST_RR_OP(sub, x24, x30, x7, 0xffffffffffffffe0, 0x0000000000000020, 0x0000000000000040, x1, 104, x12)

# rs1==x24, rs2==x23, rd==x27, rs1_val == 64, rs2_val == 262144
# opcode: sub ; op1:x24; op2:x23; dest:x27; op1val:0x0000000000000040;  op2val:0x0000000000040000
TEST_RR_OP(sub, x27, x24, x23, 0xfffffffffffc0040, 0x0000000000000040, 0x0000000000040000, x1, 112, x12)

# rs1==x12, rs2==x24, rd==x26, rs1_val == 128, rs2_val == 70368744177664
# opcode: sub ; op1:x12; op2:x24; dest:x26; op1val:0x0000000000000080;  op2val:0x0000400000000000
TEST_RR_OP(sub, x26, x12, x24, 0xffffc00000000080, 0x0000000000000080, 0x0000400000000000, x1, 120, x11)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x1, rs2==x5, rd==x7, rs1_val == 256, 
# opcode: sub ; op1:x1; op2:x5; dest:x7; op1val:0x0000000000000100;  op2val:0x0000000020000000
TEST_RR_OP(sub, x7, x1, x5, 0xffffffffe0000100, 0x0000000000000100, 0x0000000020000000, x3, 0, x11)

# rs1==x9, rs2==x12, rd==x14, rs1_val == 512, 
# opcode: sub ; op1:x9; op2:x12; dest:x14; op1val:0x0000000000000200;  op2val:0x8000000000000000
TEST_RR_OP(sub, x14, x9, x12, 0x8000000000000200, 0x0000000000000200, 0x8000000000000000, x3, 8, x11)

# rs1==x6, rs2==x15, rd==x13, rs1_val == 1024, rs2_val == 549755813888
# opcode: sub ; op1:x6; op2:x15; dest:x13; op1val:0x0000000000000400;  op2val:0x0000008000000000
TEST_RR_OP(sub, x13, x6, x15, 0xffffff8000000400, 0x0000000000000400, 0x0000008000000000, x3, 16, x11)

# rs1==x28, rs2==x22, rd==x6, rs1_val == 2048, rs2_val == 2048
# opcode: sub ; op1:x28; op2:x22; dest:x6; op1val:0x0000000000000800;  op2val:0x0000000000000800
TEST_RR_OP(sub, x6, x28, x22, 0x0, 0x0000000000000800, 0x0000000000000800, x3, 24, x11)

# rs1==x31, rs2==x30, rd==x28, rs1_val == 4096, 
# opcode: sub ; op1:x31; op2:x30; dest:x28; op1val:0x0000000000001000;  op2val:0xfffffffffffffff6
TEST_RR_OP(sub, x28, x31, x30, 0x100a, 0x0000000000001000, 0xfffffffffffffff6, x3, 32, x11)

# rs1==x17, rs2==x2, rd==x1, rs1_val == 8192, rs2_val == 288230376151711744
# opcode: sub ; op1:x17; op2:x2; dest:x1; op1val:0x0000000000002000;  op2val:0x0400000000000000
TEST_RR_OP(sub, x1, x17, x2, 0xfc00000000002000, 0x0000000000002000, 0x0400000000000000, x3, 40, x11)

# rs1==x21, rs2==x13, rd==x18, rs1_val == 16384, rs2_val == -2097153
# opcode: sub ; op1:x21; op2:x13; dest:x18; op1val:0x0000000000004000;  op2val:0xffffffffffdfffff
TEST_RR_OP(sub, x18, x21, x13, 0x204001, 0x0000000000004000, 0xffffffffffdfffff, x3, 48, x11)

# rs1==x16, rs2==x14, rd==x12, rs1_val == 32768, 
# opcode: sub ; op1:x16; op2:x14; dest:x12; op1val:0x0000000000008000;  op2val:0xffffffefffffffff
TEST_RR_OP(sub, x12, x16, x14, 0x1000008001, 0x0000000000008000, 0xffffffefffffffff, x3, 56, x11)

# rs1==x25, rs2==x16, rd==x17, rs1_val == 65536, rs2_val == -33
# opcode: sub ; op1:x25; op2:x16; dest:x17; op1val:0x0000000000010000;  op2val:0xffffffffffffffdf
TEST_RR_OP(sub, x17, x25, x16, 0x10021, 0x0000000000010000, 0xffffffffffffffdf, x3, 64, x11)

# rs1==x15, rs2==x1, rd==x0, rs1_val == 131072, rs2_val == 1152921504606846976
# opcode: sub ; op1:x15; op2:x1; dest:x0; op1val:0x0000000000020000;  op2val:0x1000000000000000
TEST_RR_OP(sub, x0, x15, x1, 0xf000000000020000, 0x0000000000020000, 0x1000000000000000, x3, 72, x11)

# rs1==x23, rs2==x9, rd==x30, rs1_val == 262144, 
# opcode: sub ; op1:x23; op2:x9; dest:x30; op1val:0x0000000000040000;  op2val:0x8000000000000000
TEST_RR_OP(sub, x30, x23, x9, 0x8000000000040000, 0x0000000000040000, 0x8000000000000000, x3, 80, x11)

# rs1==x0, rs2==x4, rd==x8, rs1_val == 524288, rs2_val == -18014398509481985
# opcode: sub ; op1:x0; op2:x4; dest:x8; op1val:0x0000000000080000;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x8, x0, x4, 0x40000000080001, 0x0000000000080000, 0xffbfffffffffffff, x3, 88, x11)

# rs1==x18, rs2==x21, rd==x29, rs1_val == 1048576, rs2_val == 1073741824
# opcode: sub ; op1:x18; op2:x21; dest:x29; op1val:0x0000000000100000;  op2val:0x0000000040000000
TEST_RR_OP(sub, x29, x18, x21, 0xffffffffc0100000, 0x0000000000100000, 0x0000000040000000, x3, 96, x11)

# rs1==x22, rs2==x17, rd==x10, rs1_val == 2097152, rs2_val == 281474976710656
# opcode: sub ; op1:x22; op2:x17; dest:x10; op1val:0x0000000000200000;  op2val:0x0001000000000000
TEST_RR_OP(sub, x10, x22, x17, 0xffff000000200000, 0x0000000000200000, 0x0001000000000000, x3, 104, x11)

# rs1==x10, rs2==x19, rd==x23, rs1_val == 4194304, rs2_val == -524289
# opcode: sub ; op1:x10; op2:x19; dest:x23; op1val:0x0000000000400000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(sub, x23, x10, x19, 0x480001, 0x0000000000400000, 0xfffffffffff7ffff, x3, 112, x11)

# rs1==x13, rs2==x25, rd==x19, rs1_val == 8388608, 
# opcode: sub ; op1:x13; op2:x25; dest:x19; op1val:0x0000000000800000;  op2val:0x7fffffffffffffff
TEST_RR_OP(sub, x19, x13, x25, 0x8000000000800001, 0x0000000000800000, 0x7fffffffffffffff, x3, 120, x1)

# rs1_val == 16777216, rs2_val == -4398046511105
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x40001000001, 0x0000000001000000, 0xfffffbffffffffff, x3, 128, x1)

# rs1_val == 33554432, rs2_val == -4097
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xffffffffffffefff
TEST_RR_OP(sub, x12, x10, x11, 0x2001001, 0x0000000002000000, 0xffffffffffffefff, x3, 136, x1)

# rs1_val == 67108864, rs2_val == 137438953472
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000002000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffe004000000, 0x0000000004000000, 0x0000002000000000, x3, 144, x1)

# rs1_val == 134217728, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xffffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x8000001, 0x0000000008000000, 0xffffffffffffffff, x3, 152, x1)

# rs1_val == 536870912, rs2_val == -4294967297
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x120000001, 0x0000000020000000, 0xfffffffeffffffff, x3, 160, x1)

# rs1_val == 1073741824, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xffffffffffffff7f
TEST_RR_OP(sub, x12, x10, x11, 0x40000081, 0x0000000040000000, 0xffffffffffffff7f, x3, 168, x1)

# rs1_val == 2147483648, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xffffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x80000001, 0x0000000080000000, 0xffffffffffffffff, x3, 176, x1)

# rs1_val == 4294967296, rs2_val == 17179869184
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000400000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffd00000000, 0x0000000100000000, 0x0000000400000000, x3, 184, x1)

# rs1_val == 8589934592, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x40000200000001, 0x0000000200000000, 0xffbfffffffffffff, x3, 192, x1)

# rs1_val == 17179869184, rs2_val == 131072
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000020000
TEST_RR_OP(sub, x12, x10, x11, 0x3fffe0000, 0x0000000400000000, 0x0000000000020000, x3, 200, x1)

# rs1_val == 34359738368, rs2_val == 512
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000000000200
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffe00, 0x0000000800000000, 0x0000000000000200, x3, 208, x1)

# rs1_val == 68719476736, rs2_val == 274877906944
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000004000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffd000000000, 0x0000001000000000, 0x0000004000000000, x3, 216, x1)

# rs1_val == 137438953472, rs2_val == -5
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xfffffffffffffffb
TEST_RR_OP(sub, x12, x10, x11, 0x2000000005, 0x0000002000000000, 0xfffffffffffffffb, x3, 224, x1)

# rs1_val == 274877906944, rs2_val == 32
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0000000000000020
TEST_RR_OP(sub, x12, x10, x11, 0x3fffffffe0, 0x0000004000000000, 0x0000000000000020, x3, 232, x1)

# rs1_val == 549755813888, rs2_val == -32769
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(sub, x12, x10, x11, 0x8000008001, 0x0000008000000000, 0xffffffffffff7fff, x3, 240, x1)

# rs1_val == 1099511627776, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000003
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffd, 0x0000010000000000, 0x0000000000000003, x3, 248, x1)

# rs1_val == 2199023255552, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(sub, x12, x10, x11, 0x20000008001, 0x0000020000000000, 0xffffffffffff7fff, x3, 256, x1)

# rs1_val == 4398046511104, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(sub, x12, x10, x11, 0x4000000000a, 0x0000040000000000, 0xfffffffffffffff6, x3, 264, x1)

# rs1_val == 8796093022208, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000000006
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffffffa, 0x0000080000000000, 0x0000000000000006, x3, 272, x1)

# rs1_val == 17592186044416, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000001
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffff, 0x0000100000000000, 0x0000000000000001, x3, 280, x1)

# rs1_val == 35184372088832, rs2_val == -1125899906842625
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfffbffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x4200000000001, 0x0000200000000000, 0xfffbffffffffffff, x3, 288, x1)

# rs1_val == 70368744177664, rs2_val == 72057594037927936
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0100000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xff00400000000000, 0x0000400000000000, 0x0100000000000000, x3, 296, x1)

# rs1_val == 140737488355328, rs2_val == 4096
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000001000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffffff000, 0x0000800000000000, 0x0000000000001000, x3, 304, x1)

# rs1_val == 281474976710656, rs2_val == 576460752303423488
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0800000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xf801000000000000, 0x0001000000000000, 0x0800000000000000, x3, 312, x1)

# rs1_val == 562949953421312, rs2_val == 65536
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000010000
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffffff0000, 0x0002000000000000, 0x0000000000010000, x3, 320, x1)

# rs1_val == 1125899906842624, rs2_val == 8796093022208
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000080000000000
TEST_RR_OP(sub, x12, x10, x11, 0x3f80000000000, 0x0004000000000000, 0x0000080000000000, x3, 328, x1)

# rs1_val == 2251799813685248, rs2_val == 16777216
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000000001000000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffff000000, 0x0008000000000000, 0x0000000001000000, x3, 336, x1)

# rs1_val == 4503599627370496, rs2_val == 4611686018427387904
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x4000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xc010000000000000, 0x0010000000000000, 0x4000000000000000, x3, 344, x1)

# rs1_val == 9007199254740992, rs2_val == 8192
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000002000
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffffffe000, 0x0020000000000000, 0x0000000000002000, x3, 352, x1)

# rs1_val == 18014398509481984, rs2_val == 2251799813685248
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0008000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x38000000000000, 0x0040000000000000, 0x0008000000000000, x3, 360, x1)

# rs1_val == 36028797018963968, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000400000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7fc00000000000, 0x0080000000000000, 0x0000400000000000, x3, 368, x1)

# rs1_val == 72057594037927936, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(sub, x12, x10, x11, 0x100000000020001, 0x0100000000000000, 0xfffffffffffdffff, x3, 376, x1)

# rs1_val == 144115188075855872, rs2_val == -576460752303423489
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xa00000000000001, 0x0200000000000000, 0xf7ffffffffffffff, x3, 384, x1)

# rs1_val == 288230376151711744, rs2_val == -2147483649
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(sub, x12, x10, x11, 0x400000080000001, 0x0400000000000000, 0xffffffff7fffffff, x3, 392, x1)

# rs1_val == 576460752303423488, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000001000
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffffffff000, 0x0800000000000000, 0x0000000000001000, x3, 400, x1)

# rs1_val == 1152921504606846976, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0xffffffff7fffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000000080000001, 0x1000000000000000, 0xffffffff7fffffff, x3, 408, x1)

# rs1_val == 2305843009213693952, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000040000000
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffffc0000000, 0x2000000000000000, 0x0000000040000000, x3, 416, x1)

# rs1_val == 4611686018427387904, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x4000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x0, 0x4000000000000000, 0x4000000000000000, x3, 424, x1)

# rs1_val == -2, rs2_val == 2097152
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000200000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffdffffe, 0xfffffffffffffffe, 0x0000000000200000, x3, 432, x1)

# rs1_val == -3, rs2_val == 524288
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000080000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffff7fffd, 0xfffffffffffffffd, 0x0000000000080000, x3, 440, x1)

# rs1_val == -5, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xffffffff7fffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffffc, 0xfffffffffffffffb, 0xffffffff7fffffff, x3, 448, x1)

# rs1_val == -9, rs2_val == -8589934593
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xfffffffdffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffff8, 0xfffffffffffffff7, 0xfffffffdffffffff, x3, 456, x1)

# rs1_val == -17, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000040
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffffaf, 0xffffffffffffffef, 0x0000000000000040, x3, 464, x1)

# rs1_val == -33, rs2_val == -4611686018427387905
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3fffffffffffffe0, 0xffffffffffffffdf, 0xbfffffffffffffff, x3, 472, x1)

# rs1_val == -65, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0xfffffffffffffff8
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffffffc7, 0xffffffffffffffbf, 0xfffffffffffffff8, x3, 480, x1)

# rs1_val == -129, rs2_val == -262145
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffffffffbffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ff80, 0xffffffffffffff7f, 0xfffffffffffbffff, x3, 488, x1)

# rs1_val == -257, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0xfffffbffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffff00, 0xfffffffffffffeff, 0xfffffbffffffffff, x3, 496, x1)

# rs1_val == -513, rs2_val == 2
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000002
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffffdfd, 0xfffffffffffffdff, 0x0000000000000002, x3, 504, x1)

# rs1_val == -1025, rs2_val == -17
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0xffffffffffffffef
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffffc10, 0xfffffffffffffbff, 0xffffffffffffffef, x3, 512, x1)

# rs2_val == -2251799813685249, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x8008000000000001, 0x8000000000000000, 0xfff7ffffffffffff, x3, 520, x1)

# rs2_val == -4503599627370497, rs1_val == -65537
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xffefffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffff0000, 0xfffffffffffeffff, 0xffefffffffffffff, x3, 528, x1)

# rs2_val == -9007199254740993, rs1_val == -268435457
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffff0000000, 0xffffffffefffffff, 0xffdfffffffffffff, x3, 536, x1)

# rs2_val == -36028797018963969, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff6;  op2val:0xff7fffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffffffffff7, 0xfffffffffffffff6, 0xff7fffffffffffff, x3, 544, x1)

# rs2_val == -72057594037927937, rs1_val == -17592186044417
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfff00000000000, 0xffffefffffffffff, 0xfeffffffffffffff, x3, 552, x1)

# rs2_val == -144115188075855873, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xfdffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x200000100000001, 0x0000000100000000, 0xfdffffffffffffff, x3, 560, x1)

# rs2_val == -288230376151711745, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0xfbffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x400000000040001, 0x0000000000040000, 0xfbffffffffffffff, x3, 568, x1)

# rs2_val == -1152921504606846977, rs1_val == -8796093022209
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffff80000000000, 0xfffff7ffffffffff, 0xefffffffffffffff, x3, 576, x1)

# rs2_val == -2305843009213693953, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2400000000000001, 0x0400000000000000, 0xdfffffffffffffff, x3, 584, x1)

# rs2_val == 6148914691236517205, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x5555555555555555
TEST_RR_OP(sub, x12, x10, x11, 0x2aaaaaaaaaaaaaab, 0x8000000000000000, 0x5555555555555555, x3, 592, x1)

# rs2_val == -6148914691236517206, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sub, x12, x10, x11, 0x5555555557555556, 0x0000000002000000, 0xaaaaaaaaaaaaaaaa, x3, 600, x1)

# rs1_val == -2049, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0xffffffffffdfffff
TEST_RR_OP(sub, x12, x10, x11, 0x1ff800, 0xfffffffffffff7ff, 0xffffffffffdfffff, x3, 608, x1)

# rs1_val == -4097, rs2_val == -8388609
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xffffffffff7fffff
TEST_RR_OP(sub, x12, x10, x11, 0x7ff000, 0xffffffffffffefff, 0xffffffffff7fffff, x3, 616, x1)

# rs1_val == -16385, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xff7fffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffffffc000, 0xffffffffffffbfff, 0xff7fffffffffffff, x3, 624, x1)

# rs1_val == -32769, rs2_val == 4194304
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000400000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffbf7fff, 0xffffffffffff7fff, 0x0000000000400000, x3, 632, x1)

# rs1_val == -131073, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(sub, x12, x10, x11, 0x0, 0xfffffffffffdffff, 0xfffffffffffdffff, x3, 640, x1)

# rs1_val == -262145, rs2_val == -257
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffffc0100, 0xfffffffffffbffff, 0xfffffffffffffeff, x3, 648, x1)

# rs1_val == -524289, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000200000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffd7ffff, 0xfffffffffff7ffff, 0x0000000000200000, x3, 656, x1)

# rs1_val == -1048577, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3ffffffffff00000, 0xffffffffffefffff, 0xbfffffffffffffff, x3, 664, x1)

# rs1_val == -2097153, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffffe00080, 0xffffffffffdfffff, 0xffffffffffffff7f, x3, 672, x1)

# rs1_val == -4194305, rs2_val == -16777217
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(sub, x12, x10, x11, 0xc00000, 0xffffffffffbfffff, 0xfffffffffeffffff, x3, 680, x1)

# rs1_val == -8388609, rs2_val == -65537
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffff810000, 0xffffffffff7fffff, 0xfffffffffffeffff, x3, 688, x1)

# rs1_val == -16777217, rs2_val == -562949953421313
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1ffffff000000, 0xfffffffffeffffff, 0xfffdffffffffffff, x3, 696, x1)

# rs1_val == -33554433, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x5555555555555555
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaaaaaa8aaaaaa, 0xfffffffffdffffff, 0x5555555555555555, x3, 704, x1)

# rs1_val == -67108865, rs2_val == -1073741825
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffbfffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3c000000, 0xfffffffffbffffff, 0xffffffffbfffffff, x3, 712, x1)

# rs1_val == -134217729, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff8000000, 0xfffffffff7ffffff, 0xfeffffffffffffff, x3, 720, x1)

# rs1_val == -536870913, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000400000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffbdfffffff, 0xffffffffdfffffff, 0x0000000400000000, x3, 728, x1)

# rs1_val == -1073741825, rs2_val == -16385
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffc0004000, 0xffffffffbfffffff, 0xffffffffffffbfff, x3, 736, x1)

# rs1_val == -2147483649, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xbfffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3fffffff80000000, 0xffffffff7fffffff, 0xbfffffffffffffff, x3, 744, x1)

# rs1_val == -4294967297, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(sub, x12, x10, x11, 0xffffffff00000001, 0xfffffffeffffffff, 0xfffffffffffffffe, x3, 752, x1)

# rs1_val == -8589934593, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffdfffffff8, 0xfffffffdffffffff, 0x0000000000000007, x3, 760, x1)

# rs1_val == -17179869185, rs2_val == 2147483648
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000080000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffb7fffffff, 0xfffffffbffffffff, 0x0000000080000000, x3, 768, x1)

# rs1_val == -34359738369, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff7ffffffef, 0xfffffff7ffffffff, 0x0000000000000010, x3, 776, x1)

# rs1_val == -137438953473, rs2_val == -34359738369
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffffe800000000, 0xffffffdfffffffff, 0xfffffff7ffffffff, x3, 784, x1)

# rs1_val == -274877906945, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(sub, x12, x10, x11, 0x5555551555555555, 0xffffffbfffffffff, 0xaaaaaaaaaaaaaaaa, x3, 792, x1)

# rs1_val == -1099511627777, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000002000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffedfffffffff, 0xfffffeffffffffff, 0x0000002000000000, x3, 800, x1)

# rs1_val == -2199023255553, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xefffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffffe0000000000, 0xfffffdffffffffff, 0xefffffffffffffff, x3, 808, x1)

# rs1_val == -4398046511105, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000002000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffbdfffffffff, 0xfffffbffffffffff, 0x0000002000000000, x3, 816, x1)

# rs1_val == -35184372088833, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000200
TEST_RR_OP(sub, x12, x10, x11, 0xffffdffffffffdff, 0xffffdfffffffffff, 0x0000000000000200, x3, 824, x1)

# rs1_val == -70368744177665, rs2_val == -70368744177665
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffbfffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x0, 0xffffbfffffffffff, 0xffffbfffffffffff, x3, 832, x1)

# rs1_val == -140737488355329, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x0000000080000000
TEST_RR_OP(sub, x12, x10, x11, 0xffff7fff7fffffff, 0xffff7fffffffffff, 0x0000000080000000, x3, 840, x1)

# rs1_val == -281474976710657, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xff000000000000, 0xfffeffffffffffff, 0xfeffffffffffffff, x3, 848, x1)

# rs1_val == -562949953421313, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000020000
TEST_RR_OP(sub, x12, x10, x11, 0xfffdfffffffdffff, 0xfffdffffffffffff, 0x0000000000020000, x3, 856, x1)

# rs1_val == -1125899906842625, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000400000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffbbfffffffffff, 0xfffbffffffffffff, 0x0000400000000000, x3, 864, x1)

# rs1_val == -2251799813685249, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(sub, x12, x10, x11, 0xfff8000000800000, 0xfff7ffffffffffff, 0xffffffffff7fffff, x3, 872, x1)

# rs1_val == -4503599627370497, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000001000
TEST_RR_OP(sub, x12, x10, x11, 0xffefffffffffefff, 0xffefffffffffffff, 0x0000000000001000, x3, 880, x1)

# rs1_val == -18014398509481985, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xfffffffdffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xffc0000200000000, 0xffbfffffffffffff, 0xfffffffdffffffff, x3, 888, x1)

# rs1_val == -36028797018963969, rs2_val == 1048576
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000100000
TEST_RR_OP(sub, x12, x10, x11, 0xff7fffffffefffff, 0xff7fffffffffffff, 0x0000000000100000, x3, 896, x1)

# rs1_val == -72057594037927937, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000000080000000
TEST_RR_OP(sub, x12, x10, x11, 0xfeffffff7fffffff, 0xfeffffffffffffff, 0x0000000080000000, x3, 904, x1)

# rs1_val == -144115188075855873, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000080000000
TEST_RR_OP(sub, x12, x10, x11, 0xfdffffff7fffffff, 0xfdffffffffffffff, 0x0000000080000000, x3, 912, x1)

# rs1_val == -288230376151711745, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sub, x12, x10, x11, 0xfbfffffffffffff6, 0xfbffffffffffffff, 0x0000000000000009, x3, 920, x1)

# rs1_val == -576460752303423489, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(sub, x12, x10, x11, 0xf800000000001000, 0xf7ffffffffffffff, 0xffffffffffffefff, x3, 928, x1)

# rs1_val == -1152921504606846977, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0xffffffffff7fffff
TEST_RR_OP(sub, x12, x10, x11, 0xf000000000800000, 0xefffffffffffffff, 0xffffffffff7fffff, x3, 936, x1)

# rs1_val == -2305843009213693953, rs2_val == -549755813889
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xffffff7fffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xe000008000000000, 0xdfffffffffffffff, 0xffffff7fffffffff, x3, 944, x1)

# rs1_val == -4611686018427387905, rs2_val == 134217728
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(sub, x12, x10, x11, 0xbffffffff7ffffff, 0xbfffffffffffffff, 0x0000000008000000, x3, 952, x1)

# rs1_val == 6148914691236517205, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000800
TEST_RR_OP(sub, x12, x10, x11, 0x5555555555554d55, 0x5555555555555555, 0x0000000000000800, x3, 960, x1)

# rs1_val == -6148914691236517206, rs2_val == -33554433
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xfffffffffdffffff
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaaaaaacaaaaab, 0xaaaaaaaaaaaaaaaa, 0xfffffffffdffffff, x3, 968, x1)

# rs2_val == 4, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x0000000000000004
TEST_RR_OP(sub, x12, x10, x11, 0xffc, 0x0000000000001000, 0x0000000000000004, x3, 976, x1)

# rs2_val == 8, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000008
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff8, 0x0000000100000000, 0x0000000000000008, x3, 984, x1)

# rs2_val == 128, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000080
TEST_RR_OP(sub, x12, x10, x11, 0xfdffffffffffff7f, 0xfdffffffffffffff, 0x0000000000000080, x3, 992, x1)

# rs2_val == 256, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000100
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff7fffffeff, 0xfffffff7ffffffff, 0x0000000000000100, x3, 1000, x1)

# rs2_val == 1024, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x0000000000000400
TEST_RR_OP(sub, x12, x10, x11, 0x7fc00, 0x0000000000080000, 0x0000000000000400, x3, 1008, x1)

# rs2_val == 16384, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000004000
TEST_RR_OP(sub, x12, x10, x11, 0xffffbfffffffbfff, 0xffffbfffffffffff, 0x0000000000004000, x3, 1016, x1)

# rs2_val == 32768, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000008000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffbffffff7fff, 0xfffffbffffffffff, 0x0000000000008000, x3, 1024, x1)

# rs2_val == 8388608, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000800000
TEST_RR_OP(sub, x12, x10, x11, 0xffffffffff7effff, 0xfffffffffffeffff, 0x0000000000800000, x3, 1032, x1)

# rs2_val == 33554432, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000002000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffdffefff, 0xffffffffffffefff, 0x0000000002000000, x3, 1040, x1)

# rs2_val == 67108864, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0000000004000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffaffffff, 0xfffffffffeffffff, 0x0000000004000000, x3, 1048, x1)

# rs2_val == 268435456, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000010000000
TEST_RR_OP(sub, x12, x10, x11, 0x1fff0000000, 0x0000020000000000, 0x0000000010000000, x3, 1056, x1)

# rs2_val == 4294967296, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000100000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffeffefffff, 0xffffffffffefffff, 0x0000000100000000, x3, 1064, x1)

# rs2_val == 8589934592, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000200000000
TEST_RR_OP(sub, x12, x10, x11, 0x7ffffffdffffffff, 0x7fffffffffffffff, 0x0000000200000000, x3, 1072, x1)

# rs2_val == 34359738368, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000800000000
TEST_RR_OP(sub, x12, x10, x11, 0x1800000000, 0x0000002000000000, 0x0000000800000000, x3, 1080, x1)

# rs2_val == 68719476736, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000001000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffff000040000, 0x0000000000040000, 0x0000001000000000, x3, 1088, x1)

# rs2_val == 1099511627776, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000010000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffbffeffffffffff, 0xffbfffffffffffff, 0x0000010000000000, x3, 1096, x1)

# rs2_val == 2199023255552, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0x0000020000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffe0000000007, 0x0000000000000007, 0x0000020000000000, x3, 1104, x1)

# rs2_val == 4398046511104, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000040000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffffbfeffffffff, 0xfffffffeffffffff, 0x0000040000000000, x3, 1112, x1)

# rs2_val == 17592186044416, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000100000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7f00000000000, 0x0008000000000000, 0x0000100000000000, x3, 1120, x1)

# rs2_val == 1125899906842624, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0x0004000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffbffffffffffff, 0xffffffffffffffff, 0x0004000000000000, x3, 1128, x1)

# rs2_val == 4503599627370496, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0x0010000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfff0000000000040, 0x0000000000000040, 0x0010000000000000, x3, 1136, x1)

# rs2_val == 9007199254740992, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0020000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffe0004000000000, 0x0000004000000000, 0x0020000000000000, x3, 1144, x1)

# rs2_val == 18014398509481984, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0040000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffc0000004000000, 0x0000000004000000, 0x0040000000000000, x3, 1152, x1)

# rs2_val == 36028797018963968, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0080000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xff80010000000000, 0x0000010000000000, 0x0080000000000000, x3, 1160, x1)

# rs2_val == 144115188075855872, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0x0200000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfe00000000000100, 0x0000000000000100, 0x0200000000000000, x3, 1168, x1)

# rs2_val == 2305843009213693952, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x2000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xddffffffffffffff, 0xfdffffffffffffff, 0x2000000000000000, x3, 1176, x1)

# rs2_val == -3, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(sub, x12, x10, x11, 0xffe0000000000002, 0xffdfffffffffffff, 0xfffffffffffffffd, x3, 1184, x1)

# rs2_val == -9, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xfffffffffffffff7
TEST_RR_OP(sub, x12, x10, x11, 0x80009, 0x0000000000080000, 0xfffffffffffffff7, x3, 1192, x1)

# rs2_val == 140737488355328, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0000800000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7800000000000, 0x0008000000000000, 0x0000800000000000, x3, 1200, x1)

# rs2_val == -513, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0xfffffffffffffdff
TEST_RR_OP(sub, x12, x10, x11, 0x1201, 0x0000000000001000, 0xfffffffffffffdff, x3, 1208, x1)

# rs2_val == -1025, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0xfffffffffffffbff
TEST_RR_OP(sub, x12, x10, x11, 0x400000000000401, 0x0400000000000000, 0xfffffffffffffbff, x3, 1216, x1)

# rs2_val == -2049, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffe0000000800, 0xfffffdffffffffff, 0xfffffffffffff7ff, x3, 1224, x1)

# rs2_val == -8193, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0xffffffffffffdfff
TEST_RR_OP(sub, x12, x10, x11, 0x2004, 0x0000000000000003, 0xffffffffffffdfff, x3, 1232, x1)

# rs2_val == -1048577, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xffffffffffefffff
TEST_RR_OP(sub, x12, x10, x11, 0xaaaaaaaaaabaaaab, 0xaaaaaaaaaaaaaaaa, 0xffffffffffefffff, x3, 1240, x1)

# rs2_val == -4194305, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(sub, x12, x10, x11, 0x4000000400001, 0x0004000000000000, 0xffffffffffbfffff, x3, 1248, x1)

# rs2_val == -67108865, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xfffffffffbffffff
TEST_RR_OP(sub, x12, x10, x11, 0x3fffe00, 0xfffffffffffffdff, 0xfffffffffbffffff, x3, 1256, x1)

# rs2_val == -134217729, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0xfffffffff7ffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffc, 0xfffffffffffffffb, 0xfffffffff7ffffff, x3, 1264, x1)

# rs2_val == -268435457, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0xffffffffefffffff
TEST_RR_OP(sub, x12, x10, x11, 0x100010000001, 0x0000100000000000, 0xffffffffefffffff, x3, 1272, x1)

# rs2_val == 35184372088832, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000200000000000
TEST_RR_OP(sub, x12, x10, x11, 0xffffdfefffffffff, 0xffffffefffffffff, 0x0000200000000000, x3, 1280, x1)

# rs2_val == -17179869185, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0xfffffffbffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x400000401, 0x0000000000000400, 0xfffffffbffffffff, x3, 1288, x1)

# rs2_val == -137438953473, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xffffffdfffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffffff, 0xfffffffffffffffe, 0xffffffdfffffffff, x3, 1296, x1)

# rs2_val == -274877906945, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x2000004000000001, 0x2000000000000000, 0xffffffbfffffffff, x3, 1304, x1)

# rs2_val == -1099511627777, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfff8010000000000, 0xfff7ffffffffffff, 0xfffffeffffffffff, x3, 1312, x1)

# rs2_val == -2199023255553, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffe0000, 0xfffffffffffdffff, 0xfffffdffffffffff, x3, 1320, x1)

# rs2_val == -8796093022209, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfffff7ffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x7fffe000000, 0xfffffffffdffffff, 0xfffff7ffffffffff, x3, 1328, x1)

# rs2_val == -17592186044417, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffffefffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0xfffffffffe0, 0xffffffffffffffdf, 0xffffefffffffffff, x3, 1336, x1)

# rs2_val == -35184372088833, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffffdfffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1fffffffffe0, 0xffffffffffffffdf, 0xffffdfffffffffff, x3, 1344, x1)

# rs2_val == -140737488355329, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000200;  op2val:0xffff7fffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x800000000201, 0x0000000000000200, 0xffff7fffffffffff, x3, 1352, x1)

# rs2_val == -281474976710657, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0xfffeffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x1000000040001, 0x0000000000040000, 0xfffeffffffffffff, x3, 1360, x1)

# rs2_val == 562949953421312, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0002000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xfffdfffffffbffff, 0xfffffffffffbffff, 0x0002000000000000, x3, 1368, x1)

# rs1_val == (-2**(xlen-1)), rs2_val == 536870912, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000000020000000
TEST_RR_OP(sub, x12, x10, x11, 0x7fffffffe0000000, 0x8000000000000000, 0x0000000020000000, x3, 1376, x1)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs2_val == -65, rs1_val == 9223372036854775807
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(sub, x12, x10, x11, 0x8000000000000040, 0x7fffffffffffffff, 0xffffffffffffffbf, x3, 1384, x1)

# rs1_val == 1, rs2_val == -129
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0xffffffffffffff7f
TEST_RR_OP(sub, x12, x10, x11, 0x82, 0x0000000000000001, 0xffffffffffffff7f, x3, 1392, x1)

# rs2_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -549755813889, rs2_val == -9223372036854775808
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x8000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0x7fffff7fffffffff, 0xffffff7fffffffff, 0x8000000000000000, x3, 1400, x1)

# rs1_val == 4, 
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0xfffffffffffffff9
TEST_RR_OP(sub, x12, x10, x11, 0xb, 0x0000000000000004, 0xfffffffffffffff9, x3, 1408, x1)

# rs1_val == 131072, rs2_val == 1152921504606846976
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x1000000000000000
TEST_RR_OP(sub, x12, x10, x11, 0xf000000000020000, 0x0000000000020000, 0x1000000000000000, x3, 1416, x1)

# rs1_val == 524288, rs2_val == -18014398509481985
# opcode: sub ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0xffbfffffffffffff
TEST_RR_OP(sub, x12, x10, x11, 0x40000000080001, 0x0000000000080000, 0xffbfffffffffffff, x3, 1424, x1)
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
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 179*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
