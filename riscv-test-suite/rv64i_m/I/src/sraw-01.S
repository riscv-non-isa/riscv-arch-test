
#This assembly file tests the sraw instruction of the RISC-V i extension for the sraw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",sraw)

RVTEST_SIGBASE( x13,signature_x13_1)

# rs1 == rs2 == rd, rs1==x19, rs2==x19, rd==x19, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -2
# opcode: sraw ; op1:x19; op2:x19; dest:x19; op1val:0xfffffffffffffffe;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x19, x19, x19, 0x1fffffff, 0xfffffffffffffffe, 0x0000000000000003, x13, 0, x7)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x8, rs2==x10, rd==x28, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs2_val == 2, rs1_val == 256
# opcode: sraw ; op1:x8; op2:x10; dest:x28; op1val:0x0000000000000100;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x28, x8, x10, 0x40, 0x0000000000000100, 0x0000000000000002, x13, 8, x7)

# rs1 == rs2 != rd, rs1==x29, rs2==x29, rd==x5, rs1_val < 0 and rs2_val == 0, rs1_val == -70368744177665
# opcode: sraw ; op1:x29; op2:x29; dest:x5; op1val:0xffffbfffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x5, x29, x29, 0xffffffff, 0xffffbfffffffffff, 0x0000000000000000, x13, 16, x7)

# rs2 == rd != rs1, rs1==x11, rs2==x2, rd==x2, rs1_val > 0 and rs2_val == 0, rs1_val == 4398046511104
# opcode: sraw ; op1:x11; op2:x2; dest:x2; op1val:0x0000040000000000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x2, x11, x2, 0x0, 0x0000040000000000, 0x0000000000000000, x13, 24, x7)

# rs1 == rd != rs2, rs1==x26, rs2==x3, rd==x26, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 16, rs2_val == 16
# opcode: sraw ; op1:x26; op2:x3; dest:x26; op1val:0x0000000000000010;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x26, x26, x3, 0x0, 0x0000000000000010, 0x0000000000000010, x13, 32, x7)

# rs1==x1, rs2==x30, rd==x10, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs1_val == -9223372036854775808
# opcode: sraw ; op1:x1; op2:x30; dest:x10; op1val:0x8000000000000000;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x10, x1, x30, 0x0, 0x8000000000000000, 0x0000000000000009, x13, 40, x7)

# rs1==x4, rs2==x24, rd==x23, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, 
# opcode: sraw ; op1:x4; op2:x24; dest:x23; op1val:0x0000000000000000;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x23, x4, x24, 0x0, 0x0000000000000000, 0x000000000000001f, x13, 48, x7)

# rs1==x31, rs2==x1, rd==x12, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 9223372036854775807
# opcode: sraw ; op1:x31; op2:x1; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x31, x1, 0x1fffff, 0x7fffffffffffffff, 0x000000000000000b, x13, 56, x7)

# rs1==x22, rs2==x27, rd==x31, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 1, rs1_val == 1
# opcode: sraw ; op1:x22; op2:x27; dest:x31; op1val:0x0000000000000001;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x31, x22, x27, 0x0, 0x0000000000000001, 0x0000000000000001, x13, 64, x7)

# rs1==x24, rs2==x18, rd==x17, rs2_val == 4, rs1_val == 1048576
# opcode: sraw ; op1:x24; op2:x18; dest:x17; op1val:0x0000000000100000;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x17, x24, x18, 0x10000, 0x0000000000100000, 0x0000000000000004, x13, 72, x7)

# rs1==x25, rs2==x21, rd==x20, rs2_val == 8, rs1_val == -32769
# opcode: sraw ; op1:x25; op2:x21; dest:x20; op1val:0xffffffffffff7fff;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x20, x25, x21, 0xffff7f, 0xffffffffffff7fff, 0x0000000000000008, x13, 80, x7)

# rs1==x14, rs2==x6, rd==x0, rs2_val == 30, rs1_val == -36028797018963969
# opcode: sraw ; op1:x14; op2:x6; dest:x0; op1val:0xff7fffffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x0, x14, x6, 0x3, 0xff7fffffffffffff, 0x000000000000001e, x13, 88, x7)

# rs1==x3, rs2==x14, rd==x9, rs2_val == 29, rs1_val == 18014398509481984
# opcode: sraw ; op1:x3; op2:x14; dest:x9; op1val:0x0040000000000000;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x9, x3, x14, 0x0, 0x0040000000000000, 0x000000000000001d, x13, 96, x7)

# rs1==x0, rs2==x20, rd==x1, rs2_val == 27, rs1_val == 8
# opcode: sraw ; op1:x0; op2:x20; dest:x1; op1val:0x0000000000000008;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x1, x0, x20, 0x0, 0x0000000000000008, 0x000000000000001b, x13, 104, x2)

# rs1==x23, rs2==x22, rd==x11, rs2_val == 23, rs1_val == 33554432
# opcode: sraw ; op1:x23; op2:x22; dest:x11; op1val:0x0000000002000000;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x11, x23, x22, 0x4, 0x0000000002000000, 0x0000000000000017, x13, 112, x2)

# rs1==x7, rs2==x4, rd==x3, rs2_val == 15, 
# opcode: sraw ; op1:x7; op2:x4; dest:x3; op1val:0x0000000002000000;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x3, x7, x4, 0x400, 0x0000000002000000, 0x000000000000000f, x13, 120, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x30, rs2==x23, rd==x7, rs2_val == 21, rs1_val == 70368744177664
# opcode: sraw ; op1:x30; op2:x23; dest:x7; op1val:0x0000400000000000;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x7, x30, x23, 0x0, 0x0000400000000000, 0x0000000000000015, x1, 0, x2)

# rs1==x10, rs2==x15, rd==x22, rs2_val == 10, rs1_val == 524288
# opcode: sraw ; op1:x10; op2:x15; dest:x22; op1val:0x0000000000080000;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x22, x10, x15, 0x200, 0x0000000000080000, 0x000000000000000a, x1, 8, x2)

# rs1==x20, rs2==x9, rd==x4, rs1_val == 2, 
# opcode: sraw ; op1:x20; op2:x9; dest:x4; op1val:0x0000000000000002;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x4, x20, x9, 0x0, 0x0000000000000002, 0x0000000000000012, x1, 16, x2)

# rs1==x27, rs2==x26, rd==x15, rs1_val == 4, 
# opcode: sraw ; op1:x27; op2:x26; dest:x15; op1val:0x0000000000000004;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x15, x27, x26, 0x0, 0x0000000000000004, 0x0000000000000008, x1, 24, x2)

# rs1==x5, rs2==x28, rd==x21, rs1_val == 32, 
# opcode: sraw ; op1:x5; op2:x28; dest:x21; op1val:0x0000000000000020;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x21, x5, x28, 0x2, 0x0000000000000020, 0x0000000000000004, x1, 32, x2)

# rs1==x12, rs2==x7, rd==x8, rs1_val == 64, 
# opcode: sraw ; op1:x12; op2:x7; dest:x8; op1val:0x0000000000000040;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x8, x12, x7, 0x10, 0x0000000000000040, 0x0000000000000002, x1, 40, x2)

# rs1==x6, rs2==x5, rd==x25, rs1_val == 128, 
# opcode: sraw ; op1:x6; op2:x5; dest:x25; op1val:0x0000000000000080;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x25, x6, x5, 0x20, 0x0000000000000080, 0x0000000000000002, x1, 48, x2)

# rs1==x16, rs2==x31, rd==x6, rs1_val == 512, 
# opcode: sraw ; op1:x16; op2:x31; dest:x6; op1val:0x0000000000000200;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x6, x16, x31, 0x20, 0x0000000000000200, 0x0000000000000004, x1, 56, x2)

# rs1==x21, rs2==x8, rd==x14, rs1_val == 1024, 
# opcode: sraw ; op1:x21; op2:x8; dest:x14; op1val:0x0000000000000400;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x14, x21, x8, 0x0, 0x0000000000000400, 0x000000000000001d, x1, 64, x2)

# rs1==x13, rs2==x11, rd==x16, rs1_val == 2048, 
# opcode: sraw ; op1:x13; op2:x11; dest:x16; op1val:0x0000000000000800;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x16, x13, x11, 0x8, 0x0000000000000800, 0x0000000000000008, x1, 72, x2)

# rs1==x17, rs2==x0, rd==x27, rs1_val == 4096, 
# opcode: sraw ; op1:x17; op2:x0; dest:x27; op1val:0x0000000000001000;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x27, x17, x0, 0x100, 0x0000000000001000, 0x0000000000000004, x1, 80, x2)

# rs1==x18, rs2==x13, rd==x29, rs1_val == 8192, 
# opcode: sraw ; op1:x18; op2:x13; dest:x29; op1val:0x0000000000002000;  op2val:0x0000000000000011
TEST_RR_OP(sraw, x29, x18, x13, 0x0, 0x0000000000002000, 0x0000000000000011, x1, 88, x2)

# rs1==x15, rs2==x17, rd==x18, rs1_val == 16384, 
# opcode: sraw ; op1:x15; op2:x17; dest:x18; op1val:0x0000000000004000;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x18, x15, x17, 0x80, 0x0000000000004000, 0x0000000000000007, x1, 96, x3)

# rs1==x9, rs2==x12, rd==x13, rs1_val == 32768, 
# opcode: sraw ; op1:x9; op2:x12; dest:x13; op1val:0x0000000000008000;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x13, x9, x12, 0x2000, 0x0000000000008000, 0x0000000000000002, x1, 104, x3)

# rs1==x2, rs2==x25, rd==x30, rs1_val == 65536, 
# opcode: sraw ; op1:x2; op2:x25; dest:x30; op1val:0x0000000000010000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x30, x2, x25, 0x10000, 0x0000000000010000, 0x0000000000000000, x1, 112, x3)

# rs1==x28, rs2==x16, rd==x24, rs1_val == 131072, 
# opcode: sraw ; op1:x28; op2:x16; dest:x24; op1val:0x0000000000020000;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x24, x28, x16, 0x2, 0x0000000000020000, 0x0000000000000010, x1, 120, x3)
RVTEST_SIGBASE( x1,signature_x1_1)

# rs1_val == 262144, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x800, 0x0000000000040000, 0x0000000000000007, x1, 0, x3)

# rs1_val == 2097152, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0x20, 0x0000000000200000, 0x0000000000000010, x1, 8, x3)

# rs1_val == 4194304, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x200000, 0x0000000000400000, 0x0000000000000001, x1, 16, x3)

# rs1_val == 8388608, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x12, x10, x11, 0x40000, 0x0000000000800000, 0x0000000000000005, x1, 24, x3)

# rs1_val == 16777216, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0x1000000, 0x0000000001000000, 0x0000000000000000, x1, 32, x3)

# rs1_val == 67108864, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x8000, 0x0000000004000000, 0x000000000000000b, x1, 40, x3)

# rs1_val == 134217728, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000011
TEST_RR_OP(sraw, x12, x10, x11, 0x400, 0x0000000008000000, 0x0000000000000011, x1, 48, x3)

# rs1_val == 268435456, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0x100000, 0x0000000010000000, 0x0000000000000008, x1, 56, x3)

# rs1_val == 536870912, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000020000000, 0x000000000000001e, x1, 64, x3)

# rs1_val == 1073741824, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x1000, 0x0000000040000000, 0x0000000000000012, x1, 72, x3)

# rs1_val == 2147483648, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x1, 0x0000000080000000, 0x000000000000001f, x1, 80, x3)

# rs1_val == 4294967296, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000000000000003, x1, 88, x3)

# rs1_val == 8589934592, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000200000000, 0x0000000000000012, x1, 96, x3)

# rs1_val == 17179869184, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000400000000, 0x0000000000000004, x1, 104, x3)

# rs1_val == 34359738368, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000800000000, 0x000000000000000a, x1, 112, x3)

# rs1_val == 68719476736, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000002
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000001000000000, 0x0000000000000002, x1, 120, x3)

# rs1_val == 137438953472, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000002000000000, 0x0000000000000007, x1, 128, x3)

# rs1_val == 274877906944, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000004000000000, 0x000000000000000f, x1, 136, x3)

# rs1_val == 549755813888, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000008000000000, 0x000000000000001f, x1, 144, x3)

# rs1_val == 1099511627776, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000000000003, x1, 152, x3)

# rs1_val == 2199023255552, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000000000000017, x1, 160, x3)

# rs1_val == 8796093022208, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000080000000000, 0x000000000000001e, x1, 168, x3)

# rs1_val == 17592186044416, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000100000000000, 0x0000000000000012, x1, 176, x3)

# rs1_val == 35184372088832, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x000000000000000e
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000200000000000, 0x000000000000000e, x1, 184, x3)

# rs1_val == 140737488355328, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000800000000000, 0x0000000000000013, x1, 192, x3)

# rs1_val == 281474976710656, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x000000000000000c
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0001000000000000, 0x000000000000000c, x1, 200, x3)

# rs1_val == 562949953421312, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000000000000011
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0002000000000000, 0x0000000000000011, x1, 208, x3)

# rs1_val == 1125899906842624, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0004000000000000, 0x000000000000000f, x1, 216, x3)

# rs1_val == 2251799813685248, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0008000000000000, 0x000000000000001b, x1, 224, x3)

# rs1_val == 4503599627370496, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0010000000000000, 0x000000000000001e, x1, 232, x3)

# rs1_val == 9007199254740992, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0020000000000000, 0x0000000000000000, x1, 240, x3)

# rs1_val == 36028797018963968, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000017, x1, 248, x3)

# rs1_val == 72057594037927936, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0100000000000000, 0x000000000000000f, x1, 256, x3)

# rs1_val == 144115188075855872, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0200000000000000, 0x000000000000001e, x1, 264, x3)

# rs1_val == 288230376151711744, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000000000000015, x1, 272, x3)

# rs1_val == 576460752303423488, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x000000000000000c
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0800000000000000, 0x000000000000000c, x1, 280, x3)

# rs1_val == 1152921504606846976, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x1000000000000000, 0x000000000000001e, x1, 288, x3)

# rs1_val == -8796093022209, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffff, 0xfffff7ffffffffff, 0x000000000000000f, x1, 296, x3)

# rs1_val == -17592186044417, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sraw, x12, x10, x11, 0x1fffff, 0xffffefffffffffff, 0x000000000000000b, x1, 304, x3)

# rs1_val == -35184372088833, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x1f, 0xffffdfffffffffff, 0x000000000000001b, x1, 312, x3)

# rs1_val == -140737488355329, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x1f, 0xffff7fffffffffff, 0x000000000000001b, x1, 320, x3)

# rs1_val == -281474976710657, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sraw, x12, x10, x11, 0x3ffffff, 0xfffeffffffffffff, 0x0000000000000006, x1, 328, x3)

# rs1_val == -562949953421313, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0xffffffff, 0xfffdffffffffffff, 0x0000000000000000, x1, 336, x3)

# rs1_val == -1125899906842625, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffff, 0xfffbffffffffffff, 0x000000000000000a, x1, 344, x3)

# rs1_val == -2251799813685249, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x1fffffff, 0xfff7ffffffffffff, 0x0000000000000003, x1, 352, x3)

# rs1_val == -4503599627370497, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000017
TEST_RR_OP(sraw, x12, x10, x11, 0x1ff, 0xffefffffffffffff, 0x0000000000000017, x1, 360, x3)

# rs1_val == -9007199254740993, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffffff, 0xffdfffffffffffff, 0x0000000000000007, x1, 368, x3)

# rs1_val == -18014398509481985, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffff, 0xffbfffffffffffff, 0x000000000000000a, x1, 376, x3)

# rs1_val == -72057594037927937, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffff, 0xfeffffffffffffff, 0x000000000000000a, x1, 384, x3)

# rs1_val == -144115188075855873, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffff, 0xfdffffffffffffff, 0x000000000000000a, x1, 392, x3)

# rs1_val == -288230376151711745, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x7fffffff, 0xfbffffffffffffff, 0x0000000000000001, x1, 400, x3)

# rs1_val == -576460752303423489, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x1, 0xf7ffffffffffffff, 0x000000000000001f, x1, 408, x3)

# rs1_val == -1152921504606846977, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0xfffffff, 0xefffffffffffffff, 0x0000000000000004, x1, 416, x3)

# rs1_val == -2305843009213693953, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sraw, x12, x10, x11, 0x3ffffff, 0xdfffffffffffffff, 0x0000000000000006, x1, 424, x3)

# rs1_val == -4611686018427387905, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x12, x10, x11, 0x7fffff, 0xbfffffffffffffff, 0x0000000000000009, x1, 432, x3)

# rs1_val == 6148914691236517205, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x155555, 0x5555555555555555, 0x000000000000000a, x1, 440, x3)

# rs1_val == -6148914691236517206, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000000f
TEST_RR_OP(sraw, x12, x10, x11, 0x15555, 0xaaaaaaaaaaaaaaaa, 0x000000000000000f, x1, 448, x3)

# rs1_val == 2305843009213693952, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x2000000000000000, 0x0000000000000004, x1, 456, x3)

# rs1_val == 4611686018427387904, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x4000000000000000, 0x0000000000000000, x1, 464, x3)

# rs1_val == -3, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0xffffff, 0xfffffffffffffffd, 0x0000000000000008, x1, 472, x3)

# rs1_val == -5, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0xfffffff, 0xfffffffffffffffb, 0x0000000000000004, x1, 480, x3)

# rs1_val == -9, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x3fffff, 0xfffffffffffffff7, 0x000000000000000a, x1, 488, x3)

# rs1_val == -17, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x3, 0xffffffffffffffef, 0x000000000000001e, x1, 496, x3)

# rs1_val == -33, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000000000006
TEST_RR_OP(sraw, x12, x10, x11, 0x3ffffff, 0xffffffffffffffdf, 0x0000000000000006, x1, 504, x3)

# rs1_val == -65, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x000000000000000d
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffff, 0xffffffffffffffbf, 0x000000000000000d, x1, 512, x3)

# rs1_val == -129, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x1fffffef, 0xffffffffffffff7f, 0x0000000000000003, x1, 520, x3)

# rs1_val == -257, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0xfffffef, 0xfffffffffffffeff, 0x0000000000000004, x1, 528, x3)

# rs1_val == -513, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000008
TEST_RR_OP(sraw, x12, x10, x11, 0xfffffd, 0xfffffffffffffdff, 0x0000000000000008, x1, 536, x3)

# rs1_val == -1025, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x12, x10, x11, 0x1fff, 0xfffffffffffffbff, 0x0000000000000013, x1, 544, x3)

# rs1_val == -2049, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x3ffffd, 0xfffffffffffff7ff, 0x000000000000000a, x1, 552, x3)

# rs1_val == -4097, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000005
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffff7f, 0xffffffffffffefff, 0x0000000000000005, x1, 560, x3)

# rs1_val == -8193, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x1ffffbf, 0xffffffffffffdfff, 0x0000000000000007, x1, 568, x3)

# rs1_val == -16385, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x3fff, 0xffffffffffffbfff, 0x0000000000000012, x1, 576, x3)

# rs1_val == -65537, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0xfffeffff, 0xfffffffffffeffff, 0x0000000000000000, x1, 584, x3)

# rs1_val == -131073, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x000000000000000a
TEST_RR_OP(sraw, x12, x10, x11, 0x3fff7f, 0xfffffffffffdffff, 0x000000000000000a, x1, 592, x3)

# rs1_val == -262145, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000011
TEST_RR_OP(sraw, x12, x10, x11, 0x7ffd, 0xfffffffffffbffff, 0x0000000000000011, x1, 600, x3)

# rs1_val == -524289, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000000000000006
TEST_RR_OP(sraw, x12, x10, x11, 0x3ffdfff, 0xfffffffffff7ffff, 0x0000000000000006, x1, 608, x3)

# rs1_val == -1048577, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x1f, 0xffffffffffefffff, 0x000000000000001b, x1, 616, x3)

# rs1_val == -2097153, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x7fefffff, 0xffffffffffdfffff, 0x0000000000000001, x1, 624, x3)

# rs1_val == -4194305, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0xffbf, 0xffffffffffbfffff, 0x0000000000000010, x1, 632, x3)

# rs1_val == -8388609, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0xff7f, 0xffffffffff7fffff, 0x0000000000000010, x1, 640, x3)

# rs1_val == -16777217, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x1f, 0xfffffffffeffffff, 0x000000000000001b, x1, 648, x3)

# rs1_val == -33554433, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000006
TEST_RR_OP(sraw, x12, x10, x11, 0x3f7ffff, 0xfffffffffdffffff, 0x0000000000000006, x1, 656, x3)

# rs1_val == -67108865, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000000007
TEST_RR_OP(sraw, x12, x10, x11, 0x1f7ffff, 0xfffffffffbffffff, 0x0000000000000007, x1, 664, x3)

# rs1_val == -134217729, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x12, x10, x11, 0x7bffff, 0xfffffffff7ffffff, 0x0000000000000009, x1, 672, x3)

# rs1_val == -268435457, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x3, 0xffffffffefffffff, 0x000000000000001e, x1, 680, x3)

# rs1_val == -536870913, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000015
TEST_RR_OP(sraw, x12, x10, x11, 0x6ff, 0xffffffffdfffffff, 0x0000000000000015, x1, 688, x3)

# rs1_val == -1073741825, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000011
TEST_RR_OP(sraw, x12, x10, x11, 0x5fff, 0xffffffffbfffffff, 0x0000000000000011, x1, 696, x3)

# rs1_val == -2147483649, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000000013
TEST_RR_OP(sraw, x12, x10, x11, 0xfff, 0xffffffff7fffffff, 0x0000000000000013, x1, 704, x3)

# rs1_val == -4294967297, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sraw, x12, x10, x11, 0x1, 0xfffffffeffffffff, 0x000000000000001f, x1, 712, x3)

# rs1_val == -8589934593, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x000000000000001d
TEST_RR_OP(sraw, x12, x10, x11, 0x7, 0xfffffffdffffffff, 0x000000000000001d, x1, 720, x3)

# rs1_val == -17179869185, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000000000012
TEST_RR_OP(sraw, x12, x10, x11, 0x3fff, 0xfffffffbffffffff, 0x0000000000000012, x1, 728, x3)

# rs1_val == -34359738369, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0xfffffff, 0xfffffff7ffffffff, 0x0000000000000004, x1, 736, x3)

# rs1_val == -68719476737, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x7fffffff, 0xffffffefffffffff, 0x0000000000000001, x1, 744, x3)

# rs1_val == -137438953473, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0xffffffff, 0xffffffdfffffffff, 0x0000000000000000, x1, 752, x3)

# rs1_val == -274877906945, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x12, x10, x11, 0x7fffff, 0xffffffbfffffffff, 0x0000000000000009, x1, 760, x3)

# rs1_val == -549755813889, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0xffffffff, 0xffffff7fffffffff, 0x0000000000000000, x1, 768, x3)

# rs1_val == -1099511627777, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x1f, 0xfffffeffffffffff, 0x000000000000001b, x1, 776, x3)

# rs1_val == -2199023255553, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000000009
TEST_RR_OP(sraw, x12, x10, x11, 0x7fffff, 0xfffffdffffffffff, 0x0000000000000009, x1, 784, x3)

# rs1_val == -4398046511105, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(sraw, x12, x10, x11, 0x7fffffff, 0xfffffbffffffffff, 0x0000000000000001, x1, 792, x3)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -2
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000003
TEST_RR_OP(sraw, x12, x10, x11, 0x1fffffff, 0xfffffffffffffffe, 0x0000000000000003, x1, 800, x3)

# rs1_val < 0 and rs2_val == 0, rs1_val == -70368744177665
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0xffffffff, 0xffffbfffffffffff, 0x0000000000000000, x1, 808, x3)

# rs1_val > 0 and rs2_val == 0, rs1_val == 4398046511104
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000000
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000000000, x1, 816, x3)

# rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 16, rs2_val == 16
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0x0000000000000010
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000000010, 0x0000000000000010, x1, 824, x3)

# rs2_val == 30, rs1_val == -36028797018963969
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(sraw, x12, x10, x11, 0x3, 0xff7fffffffffffff, 0x000000000000001e, x1, 832, x3)

# rs2_val == 27, rs1_val == 8
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x000000000000001b
TEST_RR_OP(sraw, x12, x10, x11, 0x0, 0x0000000000000008, 0x000000000000001b, x1, 840, x3)

# rs1_val == 4096, 
# opcode: sraw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x0000000000000004
TEST_RR_OP(sraw, x12, x10, x11, 0x100, 0x0000000000001000, 0x0000000000000004, x1, 848, x3)
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

signature_x13_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x13_1:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 107*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
