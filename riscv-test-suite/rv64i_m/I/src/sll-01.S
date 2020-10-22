
#This assembly file tests the sll instruction of the RISC-V i extension for the sll covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sll)

RVTEST_SIGBASE( x9,signature_x9_1)

# rs1 == rd != rs2, rs1==x5, rs2==x29, rd==x5, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -2147483649, rs2_val == 42
# opcode: sll ; op1:x5; op2:x29; dest:x5; op1val:0xffffffff7fffffff;  op2val:0x000000000000002a
TEST_RR_OP(sll, x5, x5, x29, 0xfffffdfffffffc00, 0xffffffff7fffffff, 0x000000000000002a, x9, 0, x7)

# rs1 == rs2 != rd, rs1==x17, rs2==x17, rd==x15, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 1152921504606846976
# opcode: sll ; op1:x17; op2:x17; dest:x15; op1val:0x1000000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sll, x15, x17, x17, 0x0, 0x1000000000000000, 0x0000000000000013, x9, 8, x7)

# rs2 == rd != rs1, rs1==x26, rs2==x8, rd==x8, rs1_val < 0 and rs2_val == 0, rs1_val == -4194305
# opcode: sll ; op1:x26; op2:x8; dest:x8; op1val:0xffffffffffbfffff;  op2val:0x0000000000000000
TEST_RR_OP(sll, x8, x26, x8, 0xffffffffffbfffff, 0xffffffffffbfffff, 0x0000000000000000, x9, 16, x7)

# rs1 == rs2 == rd, rs1==x6, rs2==x6, rd==x6, rs1_val > 0 and rs2_val == 0, rs1_val == 8
# opcode: sll ; op1:x6; op2:x6; dest:x6; op1val:0x0000000000000008;  op2val:0x0000000000000000
TEST_RR_OP(sll, x6, x6, x6, 0x8, 0x0000000000000008, 0x0000000000000000, x9, 24, x7)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x16, rs2==x14, rd==x20, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 4, rs2_val == 4
# opcode: sll ; op1:x16; op2:x14; dest:x20; op1val:0x0000000000000004;  op2val:0x0000000000000004
TEST_RR_OP(sll, x20, x16, x14, 0x40, 0x0000000000000004, 0x0000000000000004, x9, 32, x7)

# rs1==x23, rs2==x28, rd==x24, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 1, rs1_val == -9223372036854775808
# opcode: sll ; op1:x23; op2:x28; dest:x24; op1val:0x8000000000000000;  op2val:0x0000000000000001
TEST_RR_OP(sll, x24, x23, x28, 0x0, 0x8000000000000000, 0x0000000000000001, x9, 40, x7)

# rs1==x2, rs2==x12, rd==x13, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, 
# opcode: sll ; op1:x2; op2:x12; dest:x13; op1val:0x0000000000000000;  op2val:0x000000000000000a
TEST_RR_OP(sll, x13, x2, x12, 0x0, 0x0000000000000000, 0x000000000000000a, x9, 48, x7)

# rs1==x0, rs2==x22, rd==x31, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 55, rs1_val == 9223372036854775807
# opcode: sll ; op1:x0; op2:x22; dest:x31; op1val:0x7fffffffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x31, x0, x22, 0xffffffffff800000, 0x7fffffffffffffff, 0x0000000000000037, x9, 56, x7)

# rs1==x12, rs2==x11, rd==x28, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs1_val == 1
# opcode: sll ; op1:x12; op2:x11; dest:x28; op1val:0x0000000000000001;  op2val:0x0000000000000037
TEST_RR_OP(sll, x28, x12, x11, 0x800000, 0x0000000000000001, 0x0000000000000037, x9, 64, x7)

# rs1==x25, rs2==x13, rd==x26, rs2_val == 2, rs1_val == -17179869185
# opcode: sll ; op1:x25; op2:x13; dest:x26; op1val:0xfffffffbffffffff;  op2val:0x0000000000000002
TEST_RR_OP(sll, x26, x25, x13, 0xffffffeffffffffc, 0xfffffffbffffffff, 0x0000000000000002, x9, 72, x7)

# rs1==x28, rs2==x23, rd==x3, rs2_val == 8, rs1_val == 1125899906842624
# opcode: sll ; op1:x28; op2:x23; dest:x3; op1val:0x0004000000000000;  op2val:0x0000000000000008
TEST_RR_OP(sll, x3, x28, x23, 0x400000000000000, 0x0004000000000000, 0x0000000000000008, x9, 80, x7)

# rs1==x8, rs2==x19, rd==x10, rs2_val == 16, rs1_val == 512
# opcode: sll ; op1:x8; op2:x19; dest:x10; op1val:0x0000000000000200;  op2val:0x0000000000000010
TEST_RR_OP(sll, x10, x8, x19, 0x2000000, 0x0000000000000200, 0x0000000000000010, x9, 88, x7)

# rs1==x15, rs2==x21, rd==x11, rs2_val == 32, rs1_val == -1073741825
# opcode: sll ; op1:x15; op2:x21; dest:x11; op1val:0xffffffffbfffffff;  op2val:0x0000000000000020
TEST_RR_OP(sll, x11, x15, x21, 0xffffffffbfffffff, 0xffffffffbfffffff, 0x0000000000000020, x9, 96, x7)

# rs1==x29, rs2==x2, rd==x17, rs2_val == 62, rs1_val == -4097
# opcode: sll ; op1:x29; op2:x2; dest:x17; op1val:0xffffffffffffefff;  op2val:0x000000000000003e
TEST_RR_OP(sll, x17, x29, x2, 0xfffffbffc0000000, 0xffffffffffffefff, 0x000000000000003e, x9, 104, x7)

# rs1==x1, rs2==x4, rd==x21, rs2_val == 61, rs1_val == 131072
# opcode: sll ; op1:x1; op2:x4; dest:x21; op1val:0x0000000000020000;  op2val:0x000000000000003d
TEST_RR_OP(sll, x21, x1, x4, 0x400000000000, 0x0000000000020000, 0x000000000000003d, x9, 112, x7)

# rs1==x3, rs2==x10, rd==x25, rs2_val == 59, 
# opcode: sll ; op1:x3; op2:x10; dest:x25; op1val:0x0000000000020000;  op2val:0x000000000000003b
TEST_RR_OP(sll, x25, x3, x10, 0x100000000000, 0x0000000000020000, 0x000000000000003b, x9, 120, x7)

# rs1==x18, rs2==x16, rd==x12, rs2_val == 47, rs1_val == 281474976710656
# opcode: sll ; op1:x18; op2:x16; dest:x12; op1val:0x0001000000000000;  op2val:0x000000000000002f
TEST_RR_OP(sll, x12, x18, x16, 0x8000000000000000, 0x0001000000000000, 0x000000000000002f, x9, 128, x7)

# rs1==x24, rs2==x7, rd==x30, rs2_val == 31, rs1_val == -4611686018427387905
# opcode: sll ; op1:x24; op2:x7; dest:x30; op1val:0xbfffffffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sll, x30, x24, x7, 0xffffffff80000000, 0xbfffffffffffffff, 0x000000000000001f, x9, 136, x8)
RVTEST_SIGBASE( x6,signature_x6_0)

# rs1==x21, rs2==x27, rd==x19, rs2_val == 21, rs1_val == -137438953473
# opcode: sll ; op1:x21; op2:x27; dest:x19; op1val:0xffffffdfffffffff;  op2val:0x0000000000000015
TEST_RR_OP(sll, x19, x21, x27, 0xfbffffffffe00000, 0xffffffdfffffffff, 0x0000000000000015, x6, 0, x8)

# rs1==x27, rs2==x0, rd==x18, rs1_val == 2, 
# opcode: sll ; op1:x27; op2:x0; dest:x18; op1val:0x0000000000000002;  op2val:0x0000000000000020
TEST_RR_OP(sll, x18, x27, x0, 0x2, 0x0000000000000002, 0x0000000000000020, x6, 8, x8)

# rs1==x4, rs2==x26, rd==x29, rs1_val == 16, 
# opcode: sll ; op1:x4; op2:x26; dest:x29; op1val:0x0000000000000010;  op2val:0x0000000000000009
TEST_RR_OP(sll, x29, x4, x26, 0x2000, 0x0000000000000010, 0x0000000000000009, x6, 16, x8)

# rs1==x11, rs2==x24, rd==x9, rs1_val == 32, 
# opcode: sll ; op1:x11; op2:x24; dest:x9; op1val:0x0000000000000020;  op2val:0x000000000000000f
TEST_RR_OP(sll, x9, x11, x24, 0x100000, 0x0000000000000020, 0x000000000000000f, x6, 24, x8)

# rs1==x22, rs2==x3, rd==x14, rs1_val == 64, 
# opcode: sll ; op1:x22; op2:x3; dest:x14; op1val:0x0000000000000040;  op2val:0x0000000000000012
TEST_RR_OP(sll, x14, x22, x3, 0x1000000, 0x0000000000000040, 0x0000000000000012, x6, 32, x8)

# rs1==x20, rs2==x9, rd==x23, rs1_val == 128, 
# opcode: sll ; op1:x20; op2:x9; dest:x23; op1val:0x0000000000000080;  op2val:0x000000000000003d
TEST_RR_OP(sll, x23, x20, x9, 0x1000000000, 0x0000000000000080, 0x000000000000003d, x6, 40, x8)

# rs1==x13, rs2==x31, rd==x0, rs1_val == 256, 
# opcode: sll ; op1:x13; op2:x31; dest:x0; op1val:0x0000000000000100;  op2val:0x000000000000003b
TEST_RR_OP(sll, x0, x13, x31, 0x800000000, 0x0000000000000100, 0x000000000000003b, x6, 48, x8)

# rs1==x14, rs2==x1, rd==x7, rs1_val == 1024, 
# opcode: sll ; op1:x14; op2:x1; dest:x7; op1val:0x0000000000000400;  op2val:0x000000000000002a
TEST_RR_OP(sll, x7, x14, x1, 0x100000, 0x0000000000000400, 0x000000000000002a, x6, 56, x8)

# rs1==x7, rs2==x5, rd==x16, rs1_val == 2048, 
# opcode: sll ; op1:x7; op2:x5; dest:x16; op1val:0x0000000000000800;  op2val:0x000000000000000e
TEST_RR_OP(sll, x16, x7, x5, 0x2000000, 0x0000000000000800, 0x000000000000000e, x6, 64, x8)

# rs1==x31, rs2==x15, rd==x4, rs1_val == 4096, 
# opcode: sll ; op1:x31; op2:x15; dest:x4; op1val:0x0000000000001000;  op2val:0x0000000000000006
TEST_RR_OP(sll, x4, x31, x15, 0x40000, 0x0000000000001000, 0x0000000000000006, x6, 72, x8)

# rs1==x10, rs2==x20, rd==x1, rs1_val == 8192, 
# opcode: sll ; op1:x10; op2:x20; dest:x1; op1val:0x0000000000002000;  op2val:0x0000000000000007
TEST_RR_OP(sll, x1, x10, x20, 0x100000, 0x0000000000002000, 0x0000000000000007, x6, 80, x8)

# rs1==x19, rs2==x30, rd==x27, rs1_val == 16384, 
# opcode: sll ; op1:x19; op2:x30; dest:x27; op1val:0x0000000000004000;  op2val:0x0000000000000003
TEST_RR_OP(sll, x27, x19, x30, 0x20000, 0x0000000000004000, 0x0000000000000003, x6, 88, x8)

# rs1==x30, rs2==x25, rd==x22, rs1_val == 32768, 
# opcode: sll ; op1:x30; op2:x25; dest:x22; op1val:0x0000000000008000;  op2val:0x000000000000003e
TEST_RR_OP(sll, x22, x30, x25, 0x200000000000, 0x0000000000008000, 0x000000000000003e, x6, 96, x8)

# rs1==x9, rs2==x18, rd==x2, rs1_val == 65536, 
# opcode: sll ; op1:x9; op2:x18; dest:x2; op1val:0x0000000000010000;  op2val:0x0000000000000007
TEST_RR_OP(sll, x2, x9, x18, 0x800000, 0x0000000000010000, 0x0000000000000007, x6, 104, x8)

# rs1_val == 262144, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x0000000000000004
TEST_RR_OP(sll, x12, x10, x11, 0x400000, 0x0000000000040000, 0x0000000000000004, x6, 112, x8)

# rs1_val == 524288, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x0000000000000008
TEST_RR_OP(sll, x12, x10, x11, 0x8000000, 0x0000000000080000, 0x0000000000000008, x6, 120, x1)

# rs1_val == 1048576, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x000000000000000e
TEST_RR_OP(sll, x12, x10, x11, 0x400000000, 0x0000000000100000, 0x000000000000000e, x6, 128, x1)

# rs1_val == 2097152, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0x200000, 0x0000000000200000, 0x0000000000000020, x6, 136, x1)

# rs1_val == 4194304, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0x800000, 0x0000000000400000, 0x0000000000000001, x6, 144, x1)

# rs1_val == 8388608, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000004
TEST_RR_OP(sll, x12, x10, x11, 0x8000000, 0x0000000000800000, 0x0000000000000004, x6, 152, x1)

# rs1_val == 16777216, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0x800000000000, 0x0000000001000000, 0x0000000000000037, x6, 160, x1)

# rs1_val == 33554432, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0x100000000000000, 0x0000000002000000, 0x000000000000003f, x6, 168, x1)

# rs1_val == 67108864, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0x200000000000000, 0x0000000004000000, 0x000000000000001f, x6, 176, x1)

# rs1_val == 134217728, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000000000000005
TEST_RR_OP(sll, x12, x10, x11, 0x100000000, 0x0000000008000000, 0x0000000000000005, x6, 184, x1)

# rs1_val == 268435456, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000008
TEST_RR_OP(sll, x12, x10, x11, 0x1000000000, 0x0000000010000000, 0x0000000000000008, x6, 192, x1)

# rs1_val == 536870912, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000015
TEST_RR_OP(sll, x12, x10, x11, 0x4000000000000, 0x0000000020000000, 0x0000000000000015, x6, 200, x1)

# rs1_val == 1073741824, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x000000000000000d
TEST_RR_OP(sll, x12, x10, x11, 0x80000000000, 0x0000000040000000, 0x000000000000000d, x6, 208, x1)

# rs1_val == 2147483648, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x000000000000003e
TEST_RR_OP(sll, x12, x10, x11, 0x2000000000000000, 0x0000000080000000, 0x000000000000003e, x6, 216, x1)

# rs1_val == 4294967296, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000000000, 0x0000000100000000, 0x000000000000001f, x6, 224, x1)

# rs1_val == 8589934592, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x000000000000000e
TEST_RR_OP(sll, x12, x10, x11, 0x800000000000, 0x0000000200000000, 0x000000000000000e, x6, 232, x1)

# rs1_val == 17179869184, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0000000400000000, 0x000000000000003f, x6, 240, x1)

# rs1_val == 34359738368, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x000000000000000e
TEST_RR_OP(sll, x12, x10, x11, 0x2000000000000, 0x0000000800000000, 0x000000000000000e, x6, 248, x1)

# rs1_val == 68719476736, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x0000000000000013
TEST_RR_OP(sll, x12, x10, x11, 0x80000000000000, 0x0000001000000000, 0x0000000000000013, x6, 256, x1)

# rs1_val == 137438953472, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000002
TEST_RR_OP(sll, x12, x10, x11, 0x8000000000, 0x0000002000000000, 0x0000000000000002, x6, 264, x1)

# rs1_val == 274877906944, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x000000000000000a
TEST_RR_OP(sll, x12, x10, x11, 0x1000000000000, 0x0000004000000000, 0x000000000000000a, x6, 272, x1)

# rs1_val == 549755813888, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x0000000000000003
TEST_RR_OP(sll, x12, x10, x11, 0x40000000000, 0x0000008000000000, 0x0000000000000003, x6, 280, x1)

# rs1_val == 1099511627776, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000007
TEST_RR_OP(sll, x12, x10, x11, 0x800000000000, 0x0000010000000000, 0x0000000000000007, x6, 288, x1)

# rs1_val == 2199023255552, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x000000000000002f
TEST_RR_OP(sll, x12, x10, x11, 0x100000000000000, 0x0000020000000000, 0x000000000000002f, x6, 296, x1)

# rs1_val == 4398046511104, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x000000000000000e
TEST_RR_OP(sll, x12, x10, x11, 0x100000000000000, 0x0000040000000000, 0x000000000000000e, x6, 304, x1)

# rs1_val == 8796093022208, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0000080000000000, 0x000000000000003f, x6, 312, x1)

# rs1_val == 17592186044416, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x000000000000000d
TEST_RR_OP(sll, x12, x10, x11, 0x200000000000000, 0x0000100000000000, 0x000000000000000d, x6, 320, x1)

# rs1_val == 35184372088832, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0x200000000000, 0x0000200000000000, 0x0000000000000000, x6, 328, x1)

# rs1_val == 70368744177664, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0x800000000000, 0x0000400000000000, 0x0000000000000001, x6, 336, x1)

# rs1_val == 140737488355328, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0000800000000000, 0x0000000000000037, x6, 344, x1)

# rs1_val == 562949953421312, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x000000000000000d
TEST_RR_OP(sll, x12, x10, x11, 0x4000000000000000, 0x0002000000000000, 0x000000000000000d, x6, 352, x1)

# rs1_val == 2251799813685248, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x000000000000000b
TEST_RR_OP(sll, x12, x10, x11, 0x4000000000000000, 0x0008000000000000, 0x000000000000000b, x6, 360, x1)

# rs1_val == 4503599627370496, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x000000000000002f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0010000000000000, 0x000000000000002f, x6, 368, x1)

# rs1_val == 9007199254740992, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0x000000000000000d
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0020000000000000, 0x000000000000000d, x6, 376, x1)

# rs1_val == 18014398509481984, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x000000000000000a
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0040000000000000, 0x000000000000000a, x6, 384, x1)

# rs1_val == 36028797018963968, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000002
TEST_RR_OP(sll, x12, x10, x11, 0x200000000000000, 0x0080000000000000, 0x0000000000000002, x6, 392, x1)

# rs1_val == 72057594037927936, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0100000000000000, 0x0000000000000037, x6, 400, x1)

# rs1_val == -2199023255553, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(sll, x12, x10, x11, 0xfdffffffffff0000, 0xfffffdffffffffff, 0x0000000000000010, x6, 408, x1)

# rs1_val == -4398046511105, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffff80000000, 0xfffffbffffffffff, 0x000000000000001f, x6, 416, x1)

# rs1_val == -8796093022209, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sll, x12, x10, x11, 0xfff7ffffffffff00, 0xfffff7ffffffffff, 0x0000000000000008, x6, 424, x1)

# rs1_val == -17592186044417, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffff80000000, 0xffffefffffffffff, 0x000000000000003f, x6, 432, x1)

# rs1_val == -35184372088833, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sll, x12, x10, x11, 0xf7ffffffffffc000, 0xffffdfffffffffff, 0x000000000000000e, x6, 440, x1)

# rs1_val == -70368744177665, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(sll, x12, x10, x11, 0xdfffffffffff8000, 0xffffbfffffffffff, 0x000000000000000f, x6, 448, x1)

# rs1_val == -140737488355329, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x000000000000002f
TEST_RR_OP(sll, x12, x10, x11, 0xbfffffffffff8000, 0xffff7fffffffffff, 0x000000000000002f, x6, 456, x1)

# rs1_val == -281474976710657, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(sll, x12, x10, x11, 0xbfffffffffffc000, 0xfffeffffffffffff, 0x000000000000000e, x6, 464, x1)

# rs1_val == -562949953421313, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sll, x12, x10, x11, 0xff7fffffffffffc0, 0xfffdffffffffffff, 0x0000000000000006, x6, 472, x1)

# rs1_val == -1125899906842625, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffff80000000, 0xfffbffffffffffff, 0x000000000000003f, x6, 480, x1)

# rs1_val == -2251799813685249, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffff80000, 0xfff7ffffffffffff, 0x0000000000000013, x6, 488, x1)

# rs1_val == -4503599627370497, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(sll, x12, x10, x11, 0xffbffffffffffffc, 0xffefffffffffffff, 0x0000000000000002, x6, 496, x1)

# rs1_val == -9007199254740993, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(sll, x12, x10, x11, 0xdfffffffffffff00, 0xffdfffffffffffff, 0x0000000000000008, x6, 504, x1)

# rs1_val == -18014398509481985, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0xffbfffffffffffff, 0xffbfffffffffffff, 0x0000000000000000, x6, 512, x1)

# rs1_val == -36028797018963969, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(sll, x12, x10, x11, 0xfbfffffffffffff8, 0xff7fffffffffffff, 0x0000000000000003, x6, 520, x1)

# rs1_val == -72057594037927937, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffff80000000, 0xfeffffffffffffff, 0x000000000000001f, x6, 528, x1)

# rs1_val == -144115188075855873, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0xfdffffffffffffff, 0xfdffffffffffffff, 0x0000000000000000, x6, 536, x1)

# rs1_val == -288230376151711745, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffff800, 0xfbffffffffffffff, 0x000000000000000b, x6, 544, x1)

# rs1_val == -576460752303423489, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0xf7ffffffffffffff, 0xf7ffffffffffffff, 0x0000000000000020, x6, 552, x1)

# rs1_val == -1152921504606846977, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffffe000, 0xefffffffffffffff, 0x000000000000000d, x6, 560, x1)

# rs1_val == -2305843009213693953, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffffffc0, 0xdfffffffffffffff, 0x0000000000000006, x6, 568, x1)

# rs1_val == 6148914691236517205, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000006
TEST_RR_OP(sll, x12, x10, x11, 0x5555555555555540, 0x5555555555555555, 0x0000000000000006, x6, 576, x1)

# rs1_val == -6148914691236517206, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000000e
TEST_RR_OP(sll, x12, x10, x11, 0xaaaaaaaaaaaa8000, 0xaaaaaaaaaaaaaaaa, 0x000000000000000e, x6, 584, x1)

# rs1_val == 144115188075855872, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0200000000000000, 0x000000000000002a, x6, 592, x1)

# rs1_val == 288230376151711744, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0400000000000000, 0x000000000000003f, x6, 600, x1)

# rs1_val == 576460752303423488, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x000000000000000e
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x0800000000000000, 0x000000000000000e, x6, 608, x1)

# rs1_val == 2305843009213693952, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x000000000000000d
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x2000000000000000, 0x000000000000000d, x6, 616, x1)

# rs1_val == 4611686018427387904, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0x4000000000000000, 0x4000000000000000, 0x0000000000000020, x6, 624, x1)

# rs1_val == -2, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000005
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffffffc0, 0xfffffffffffffffe, 0x0000000000000005, x6, 632, x1)

# rs1_val == -3, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x000000000000003d
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffa0000000, 0xfffffffffffffffd, 0x000000000000003d, x6, 640, x1)

# rs1_val == -5, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000010
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffb0000, 0xfffffffffffffffb, 0x0000000000000010, x6, 648, x1)

# rs1_val == -9, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffffff7, 0xfffffffffffffff7, 0x0000000000000000, x6, 656, x1)

# rs1_val == -17, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffff7800000, 0xffffffffffffffef, 0x0000000000000037, x6, 664, x1)

# rs1_val == -33, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffff7c00, 0xffffffffffffffdf, 0x000000000000002a, x6, 672, x1)

# rs1_val == -65, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000000004
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffffbf0, 0xffffffffffffffbf, 0x0000000000000004, x6, 680, x1)

# rs1_val == -129, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000004
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffff7f0, 0xffffffffffffff7f, 0x0000000000000004, x6, 688, x1)

# rs1_val == -257, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000005
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffffdfe0, 0xfffffffffffffeff, 0x0000000000000005, x6, 696, x1)

# rs1_val == -513, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffeff800000, 0xfffffffffffffdff, 0x0000000000000037, x6, 704, x1)

# rs1_val == -1025, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0000000000000011
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffff7fe0000, 0xfffffffffffffbff, 0x0000000000000011, x6, 712, x1)

# rs1_val == -2049, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000000008
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffff7ff00, 0xfffffffffffff7ff, 0x0000000000000008, x6, 720, x1)

# rs1_val == -8193, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xffffffefff800000, 0xffffffffffffdfff, 0x0000000000000037, x6, 728, x1)

# rs1_val == -16385, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000006
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffefffc0, 0xffffffffffffbfff, 0x0000000000000006, x6, 736, x1)

# rs1_val == -32769, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000001
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffffefffe, 0xffffffffffff7fff, 0x0000000000000001, x6, 744, x1)

# rs1_val == -65537, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x000000000000002f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffff7fff8000, 0xfffffffffffeffff, 0x000000000000002f, x6, 752, x1)

# rs1_val == -131073, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000010
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffdffff0000, 0xfffffffffffdffff, 0x0000000000000010, x6, 760, x1)

# rs1_val == -262145, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000007
TEST_RR_OP(sll, x12, x10, x11, 0xfffffffffdffff80, 0xfffffffffffbffff, 0x0000000000000007, x6, 768, x1)

# rs1_val == -524289, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x000000000000001f
TEST_RR_OP(sll, x12, x10, x11, 0xfffbffff80000000, 0xfffffffffff7ffff, 0x000000000000001f, x6, 776, x1)

# rs1_val == -1048577, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x000000000000003b
TEST_RR_OP(sll, x12, x10, x11, 0xffff7ffff8000000, 0xffffffffffefffff, 0x000000000000003b, x6, 784, x1)

# rs1_val == -2097153, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x000000000000000f
TEST_RR_OP(sll, x12, x10, x11, 0xffffffefffff8000, 0xffffffffffdfffff, 0x000000000000000f, x6, 792, x1)

# rs1_val == -8388609, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000010
TEST_RR_OP(sll, x12, x10, x11, 0xffffff7fffff0000, 0xffffffffff7fffff, 0x0000000000000010, x6, 800, x1)

# rs1_val == -16777217, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000003f
TEST_RR_OP(sll, x12, x10, x11, 0xff7fffff80000000, 0xfffffffffeffffff, 0x000000000000003f, x6, 808, x1)

# rs1_val == -33554433, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000004
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffdffffff0, 0xfffffffffdffffff, 0x0000000000000004, x6, 816, x1)

# rs1_val == -67108865, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x000000000000000d
TEST_RR_OP(sll, x12, x10, x11, 0xffffff7fffffe000, 0xfffffffffbffffff, 0x000000000000000d, x6, 824, x1)

# rs1_val == -134217729, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xfffbffffff800000, 0xfffffffff7ffffff, 0x0000000000000037, x6, 832, x1)

# rs1_val == -268435457, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x000000000000003b
TEST_RR_OP(sll, x12, x10, x11, 0xff7ffffff8000000, 0xffffffffefffffff, 0x000000000000003b, x6, 840, x1)

# rs1_val == -536870913, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x0000000000000009
TEST_RR_OP(sll, x12, x10, x11, 0xffffffbffffffe00, 0xffffffffdfffffff, 0x0000000000000009, x6, 848, x1)

# rs1_val == -4294967297, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000000000000006
TEST_RR_OP(sll, x12, x10, x11, 0xffffffbfffffffc0, 0xfffffffeffffffff, 0x0000000000000006, x6, 856, x1)

# rs1_val == -8589934593, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xfeffffffff800000, 0xfffffffdffffffff, 0x0000000000000037, x6, 864, x1)

# rs1_val == -34359738369, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x000000000000003e
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffc0000000, 0xfffffff7ffffffff, 0x000000000000003e, x6, 872, x1)

# rs1_val == -68719476737, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0xffffbffffffffc00, 0xffffffefffffffff, 0x000000000000002a, x6, 880, x1)

# rs1_val == -274877906945, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x000000000000003e
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffc0000000, 0xffffffbfffffffff, 0x000000000000003e, x6, 888, x1)

# rs1_val == -549755813889, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000013
TEST_RR_OP(sll, x12, x10, x11, 0xfbfffffffff80000, 0xffffff7fffffffff, 0x0000000000000013, x6, 896, x1)

# rs1_val == -1099511627777, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(sll, x12, x10, x11, 0xffeffffffffff000, 0xfffffeffffffffff, 0x000000000000000c, x6, 904, x1)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -2147483649, rs2_val == 42
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x000000000000002a
TEST_RR_OP(sll, x12, x10, x11, 0xfffffdfffffffc00, 0xffffffff7fffffff, 0x000000000000002a, x6, 912, x1)

# rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 1152921504606846976
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000013
TEST_RR_OP(sll, x12, x10, x11, 0x0, 0x1000000000000000, 0x0000000000000013, x6, 920, x1)

# rs1_val < 0 and rs2_val == 0, rs1_val == -4194305
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffffbfffff, 0xffffffffffbfffff, 0x0000000000000000, x6, 928, x1)

# rs1_val > 0 and rs2_val == 0, rs1_val == 8
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0x0000000000000000
TEST_RR_OP(sll, x12, x10, x11, 0x8, 0x0000000000000008, 0x0000000000000000, x6, 936, x1)

# rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 55, rs1_val == 9223372036854775807
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000000000037
TEST_RR_OP(sll, x12, x10, x11, 0xffffffffff800000, 0x7fffffffffffffff, 0x0000000000000037, x6, 944, x1)

# rs1_val == 2, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000002;  op2val:0x0000000000000020
TEST_RR_OP(sll, x12, x10, x11, 0x2, 0x0000000000000002, 0x0000000000000020, x6, 952, x1)

# rs1_val == 256, 
# opcode: sll ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0x000000000000003b
TEST_RR_OP(sll, x12, x10, x11, 0x800000000, 0x0000000000000100, 0x000000000000003b, x6, 960, x1)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x9_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x6_0:
    .fill 121*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
