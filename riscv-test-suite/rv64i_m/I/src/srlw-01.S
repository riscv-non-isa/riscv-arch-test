
#This assembly file tests the srlw instruction of the RISC-V i extension for the srlw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64i")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",srlw)

RVTEST_SIGBASE( x5,signature_x5_1)

# rs1 == rs2 == rd, rs1==x29, rs2==x29, rd==x29, rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -134217729, rs2_val == 23
# opcode: srlw ; op1:x29; op2:x29; dest:x29; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000017
TEST_RR_OP(srlw, x29, x29, x29, 0x1ef, 0xfffffffff7ffffff, 0x0000000000000017, x5, 0, x2)

# rs1 == rd != rs2, rs1==x21, rs2==x27, rd==x21, rs1_val > 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == 9007199254740992
# opcode: srlw ; op1:x21; op2:x27; dest:x21; op1val:0x0020000000000000;  op2val:0x0000000000000012
TEST_RR_OP(srlw, x21, x21, x27, 0x0, 0x0020000000000000, 0x0000000000000012, x5, 8, x2)

# rs2 == rd != rs1, rs1==x10, rs2==x24, rd==x24, rs1_val < 0 and rs2_val == 0, rs1_val == -262145
# opcode: srlw ; op1:x10; op2:x24; dest:x24; op1val:0xfffffffffffbffff;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x24, x10, x24, 0xfffbffff, 0xfffffffffffbffff, 0x0000000000000000, x5, 16, x2)

# rs1 == rs2 != rd, rs1==x31, rs2==x31, rd==x22, rs1_val > 0 and rs2_val == 0, rs1_val == 8796093022208
# opcode: srlw ; op1:x31; op2:x31; dest:x22; op1val:0x0000080000000000;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x22, x31, x31, 0x0, 0x0000080000000000, 0x0000000000000000, x5, 24, x2)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x20, rs2==x15, rd==x31, rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen, rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen, rs2_val == 1, rs1_val == 1
# opcode: srlw ; op1:x20; op2:x15; dest:x31; op1val:0x0000000000000001;  op2val:0x0000000000000001
TEST_RR_OP(srlw, x31, x20, x15, 0x0, 0x0000000000000001, 0x0000000000000001, x5, 32, x2)

# rs1==x11, rs2==x21, rd==x8, rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen, rs2_val == 2, rs1_val == -9223372036854775808
# opcode: srlw ; op1:x11; op2:x21; dest:x8; op1val:0x8000000000000000;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x8, x11, x21, 0x0, 0x8000000000000000, 0x0000000000000002, x5, 40, x2)

# rs1==x14, rs2==x12, rd==x28, rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen, 
# opcode: srlw ; op1:x14; op2:x12; dest:x28; op1val:0x0000000000000000;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x28, x14, x12, 0x0, 0x0000000000000000, 0x000000000000000d, x5, 48, x2)

# rs1==x18, rs2==x25, rd==x3, rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen, rs1_val == 9223372036854775807, rs2_val == 16
# opcode: srlw ; op1:x18; op2:x25; dest:x3; op1val:0x7fffffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x3, x18, x25, 0xffff, 0x7fffffffffffffff, 0x0000000000000010, x5, 56, x2)

# rs1==x15, rs2==x1, rd==x19, rs2_val == 4, rs1_val == -2305843009213693953
# opcode: srlw ; op1:x15; op2:x1; dest:x19; op1val:0xdfffffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x19, x15, x1, 0xfffffff, 0xdfffffffffffffff, 0x0000000000000004, x5, 64, x2)

# rs1==x12, rs2==x26, rd==x18, rs2_val == 8, 
# opcode: srlw ; op1:x12; op2:x26; dest:x18; op1val:0xfffffffffffbffff;  op2val:0x0000000000000008
TEST_RR_OP(srlw, x18, x12, x26, 0xfffbff, 0xfffffffffffbffff, 0x0000000000000008, x5, 72, x2)

# rs1==x23, rs2==x14, rd==x20, rs2_val == 30, rs1_val == 4
# opcode: srlw ; op1:x23; op2:x14; dest:x20; op1val:0x0000000000000004;  op2val:0x000000000000001e
TEST_RR_OP(srlw, x20, x23, x14, 0x0, 0x0000000000000004, 0x000000000000001e, x5, 80, x2)

# rs1==x8, rs2==x4, rd==x9, rs2_val == 29, rs1_val == -576460752303423489
# opcode: srlw ; op1:x8; op2:x4; dest:x9; op1val:0xf7ffffffffffffff;  op2val:0x000000000000001d
TEST_RR_OP(srlw, x9, x8, x4, 0x7, 0xf7ffffffffffffff, 0x000000000000001d, x5, 88, x2)

# rs1==x30, rs2==x10, rd==x27, rs2_val == 27, rs1_val == -33
# opcode: srlw ; op1:x30; op2:x10; dest:x27; op1val:0xffffffffffffffdf;  op2val:0x000000000000001b
TEST_RR_OP(srlw, x27, x30, x10, 0x1f, 0xffffffffffffffdf, 0x000000000000001b, x5, 96, x2)

# rs1==x16, rs2==x13, rd==x7, rs2_val == 15, rs1_val == 140737488355328
# opcode: srlw ; op1:x16; op2:x13; dest:x7; op1val:0x0000800000000000;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x7, x16, x13, 0x0, 0x0000800000000000, 0x000000000000000f, x5, 104, x2)

# rs1==x0, rs2==x20, rd==x4, rs2_val == 21, rs1_val == 35184372088832
# opcode: srlw ; op1:x0; op2:x20; dest:x4; op1val:0x0000200000000000;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x4, x0, x20, 0x0, 0x0000200000000000, 0x0000000000000015, x5, 112, x21)

# rs1==x7, rs2==x0, rd==x16, rs2_val == 10, rs1_val == 562949953421312
# opcode: srlw ; op1:x7; op2:x0; dest:x16; op1val:0x0002000000000000;  op2val:0x000000000000000a
TEST_RR_OP(srlw, x16, x7, x0, 0x0, 0x0002000000000000, 0x000000000000000a, x5, 120, x21)

# rs1==x9, rs2==x19, rd==x25, rs1_val == 2, 
# opcode: srlw ; op1:x9; op2:x19; dest:x25; op1val:0x0000000000000002;  op2val:0x0000000000000011
TEST_RR_OP(srlw, x25, x9, x19, 0x0, 0x0000000000000002, 0x0000000000000011, x5, 128, x21)

# rs1==x27, rs2==x9, rd==x2, rs1_val == 8, 
# opcode: srlw ; op1:x27; op2:x9; dest:x2; op1val:0x0000000000000008;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x2, x27, x9, 0x0, 0x0000000000000008, 0x0000000000000004, x5, 136, x21)
RVTEST_SIGBASE( x9,signature_x9_0)

# rs1==x19, rs2==x22, rd==x30, rs1_val == 16, 
# opcode: srlw ; op1:x19; op2:x22; dest:x30; op1val:0x0000000000000010;  op2val:0x0000000000000001
TEST_RR_OP(srlw, x30, x19, x22, 0x8, 0x0000000000000010, 0x0000000000000001, x9, 0, x21)

# rs1==x13, rs2==x3, rd==x5, rs1_val == 32, 
# opcode: srlw ; op1:x13; op2:x3; dest:x5; op1val:0x0000000000000020;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x5, x13, x3, 0x0, 0x0000000000000020, 0x0000000000000015, x9, 8, x21)

# rs1==x17, rs2==x30, rd==x1, rs1_val == 64, 
# opcode: srlw ; op1:x17; op2:x30; dest:x1; op1val:0x0000000000000040;  op2val:0x0000000000000007
TEST_RR_OP(srlw, x1, x17, x30, 0x0, 0x0000000000000040, 0x0000000000000007, x9, 16, x21)

# rs1==x1, rs2==x7, rd==x15, rs1_val == 128, 
# opcode: srlw ; op1:x1; op2:x7; dest:x15; op1val:0x0000000000000080;  op2val:0x000000000000000e
TEST_RR_OP(srlw, x15, x1, x7, 0x0, 0x0000000000000080, 0x000000000000000e, x9, 24, x21)

# rs1==x3, rs2==x2, rd==x11, rs1_val == 256, 
# opcode: srlw ; op1:x3; op2:x2; dest:x11; op1val:0x0000000000000100;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x11, x3, x2, 0x10, 0x0000000000000100, 0x0000000000000004, x9, 32, x21)

# rs1==x25, rs2==x8, rd==x17, rs1_val == 512, 
# opcode: srlw ; op1:x25; op2:x8; dest:x17; op1val:0x0000000000000200;  op2val:0x000000000000001b
TEST_RR_OP(srlw, x17, x25, x8, 0x0, 0x0000000000000200, 0x000000000000001b, x9, 40, x21)

# rs1==x6, rs2==x17, rd==x12, rs1_val == 1024, 
# opcode: srlw ; op1:x6; op2:x17; dest:x12; op1val:0x0000000000000400;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x6, x17, 0x0, 0x0000000000000400, 0x000000000000000f, x9, 48, x21)

# rs1==x4, rs2==x18, rd==x23, rs1_val == 2048, 
# opcode: srlw ; op1:x4; op2:x18; dest:x23; op1val:0x0000000000000800;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x23, x4, x18, 0x0, 0x0000000000000800, 0x0000000000000010, x9, 56, x21)

# rs1==x24, rs2==x23, rd==x0, rs1_val == 4096, 
# opcode: srlw ; op1:x24; op2:x23; dest:x0; op1val:0x0000000000001000;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x0, x24, x23, 0x8, 0x0000000000001000, 0x0000000000000009, x9, 64, x21)

# rs1==x5, rs2==x16, rd==x14, rs1_val == 8192, 
# opcode: srlw ; op1:x5; op2:x16; dest:x14; op1val:0x0000000000002000;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x14, x5, x16, 0x0, 0x0000000000002000, 0x000000000000000f, x9, 72, x21)

# rs1==x2, rs2==x28, rd==x10, rs1_val == 16384, 
# opcode: srlw ; op1:x2; op2:x28; dest:x10; op1val:0x0000000000004000;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x10, x2, x28, 0x0, 0x0000000000004000, 0x0000000000000013, x9, 80, x21)

# rs1==x28, rs2==x11, rd==x13, rs1_val == 32768, 
# opcode: srlw ; op1:x28; op2:x11; dest:x13; op1val:0x0000000000008000;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x13, x28, x11, 0x0, 0x0000000000008000, 0x0000000000000013, x9, 88, x21)

# rs1==x22, rs2==x6, rd==x26, rs1_val == 65536, 
# opcode: srlw ; op1:x22; op2:x6; dest:x26; op1val:0x0000000000010000;  op2val:0x0000000000000001
TEST_RR_OP(srlw, x26, x22, x6, 0x8000, 0x0000000000010000, 0x0000000000000001, x9, 96, x21)

# rs1==x26, rs2==x5, rd==x6, rs1_val == 131072, 
# opcode: srlw ; op1:x26; op2:x5; dest:x6; op1val:0x0000000000020000;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x6, x26, x5, 0x100, 0x0000000000020000, 0x0000000000000009, x9, 104, x1)

# rs1_val == 262144, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0x000000000000000e
TEST_RR_OP(srlw, x12, x10, x11, 0x10, 0x0000000000040000, 0x000000000000000e, x9, 112, x1)

# rs1_val == 524288, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000080000;  op2val:0x0000000000000006
TEST_RR_OP(srlw, x12, x10, x11, 0x2000, 0x0000000000080000, 0x0000000000000006, x9, 120, x1)

# rs1_val == 1048576, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000100000;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x12, x10, x11, 0x10, 0x0000000000100000, 0x0000000000000010, x9, 128, x1)

# rs1_val == 2097152, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000000000012
TEST_RR_OP(srlw, x12, x10, x11, 0x8, 0x0000000000200000, 0x0000000000000012, x9, 136, x1)

# rs1_val == 4194304, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0x000000000000001e
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000000400000, 0x000000000000001e, x9, 144, x1)

# rs1_val == 8388608, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x12, x10, x11, 0x80, 0x0000000000800000, 0x0000000000000010, x9, 152, x1)

# rs1_val == 16777216, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x000000000000000c
TEST_RR_OP(srlw, x12, x10, x11, 0x1000, 0x0000000001000000, 0x000000000000000c, x9, 160, x1)

# rs1_val == 33554432, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0000000000000017
TEST_RR_OP(srlw, x12, x10, x11, 0x4, 0x0000000002000000, 0x0000000000000017, x9, 168, x1)

# rs1_val == 67108864, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0x400000, 0x0000000004000000, 0x0000000000000004, x9, 176, x1)

# rs1_val == 134217728, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x000000000000000b
TEST_RR_OP(srlw, x12, x10, x11, 0x10000, 0x0000000008000000, 0x000000000000000b, x9, 184, x1)

# rs1_val == 268435456, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x000000000000001f
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000010000000, 0x000000000000001f, x9, 192, x1)

# rs1_val == 536870912, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x12, x10, x11, 0x8000000, 0x0000000020000000, 0x0000000000000002, x9, 200, x1)

# rs1_val == 1073741824, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x8000, 0x0000000040000000, 0x000000000000000f, x9, 208, x1)

# rs1_val == 2147483648, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x12, x10, x11, 0x400, 0x0000000080000000, 0x0000000000000015, x9, 216, x1)

# rs1_val == 4294967296, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000000012
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000100000000, 0x0000000000000012, x9, 224, x1)

# rs1_val == 8589934592, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x000000000000000a
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000200000000, 0x000000000000000a, x9, 232, x1)

# rs1_val == 17179869184, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0000000000000006
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000400000000, 0x0000000000000006, x9, 240, x1)

# rs1_val == 34359738368, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x000000000000000e
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000000800000000, 0x000000000000000e, x9, 248, x1)

# rs1_val == 68719476736, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000001000000000, 0x000000000000000f, x9, 256, x1)

# rs1_val == 137438953472, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000002000000000, 0x0000000000000010, x9, 264, x1)

# rs1_val == 274877906944, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x000000000000000e
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000004000000000, 0x000000000000000e, x9, 272, x1)

# rs1_val == 549755813888, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0x000000000000001f
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000008000000000, 0x000000000000001f, x9, 280, x1)

# rs1_val == 1099511627776, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000000000000005
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000010000000000, 0x0000000000000005, x9, 288, x1)

# rs1_val == 2199023255552, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000020000000000, 0x0000000000000010, x9, 296, x1)

# rs1_val == 4398046511104, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000040000000000, 0x0000000000000000, x9, 304, x1)

# rs1_val == 17592186044416, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x000000000000000e
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000100000000000, 0x000000000000000e, x9, 312, x1)

# rs1_val == 70368744177664, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0x000000000000001d
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000400000000000, 0x000000000000001d, x9, 320, x1)

# rs1_val == 281474976710656, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0001000000000000, 0x0000000000000004, x9, 328, x1)

# rs1_val == 1125899906842624, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0004000000000000, 0x0000000000000002, x9, 336, x1)

# rs1_val == 2251799813685248, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x000000000000001f
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0008000000000000, 0x000000000000001f, x9, 344, x1)

# rs1_val == 4503599627370496, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0010000000000000, 0x000000000000000f, x9, 352, x1)

# rs1_val == 18014398509481984, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x000000000000001e
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0040000000000000, 0x000000000000001e, x9, 360, x1)

# rs1_val == 36028797018963968, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0000000000000005
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0080000000000000, 0x0000000000000005, x9, 368, x1)

# rs1_val == 72057594037927936, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x000000000000001d
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0100000000000000, 0x000000000000001d, x9, 376, x1)

# rs1_val == 144115188075855872, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0200000000000000, 0x000000000000000f, x9, 384, x1)

# rs1_val == 288230376151711744, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000017
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0400000000000000, 0x0000000000000017, x9, 392, x1)

# rs1_val == 576460752303423488, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0800000000000000, 0x0000000000000009, x9, 400, x1)

# rs1_val == -8796093022209, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0xffffffff, 0xfffff7ffffffffff, 0x0000000000000000, x9, 408, x1)

# rs1_val == -17592186044417, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x12, x10, x11, 0x7ffff, 0xffffefffffffffff, 0x000000000000000d, x9, 416, x1)

# rs1_val == -35184372088833, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(srlw, x12, x10, x11, 0x1ffffff, 0xffffdfffffffffff, 0x0000000000000007, x9, 424, x1)

# rs1_val == -70368744177665, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0xfffffff, 0xffffbfffffffffff, 0x0000000000000004, x9, 432, x1)

# rs1_val == -140737488355329, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0x000000000000000c
TEST_RR_OP(srlw, x12, x10, x11, 0xfffff, 0xffff7fffffffffff, 0x000000000000000c, x9, 440, x1)

# rs1_val == -281474976710657, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(srlw, x12, x10, x11, 0x1, 0xfffeffffffffffff, 0x000000000000001f, x9, 448, x1)

# rs1_val == -562949953421313, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x000000000000001f
TEST_RR_OP(srlw, x12, x10, x11, 0x1, 0xfffdffffffffffff, 0x000000000000001f, x9, 456, x1)

# rs1_val == -1125899906842625, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(srlw, x12, x10, x11, 0x1fffff, 0xfffbffffffffffff, 0x000000000000000b, x9, 464, x1)

# rs1_val == -2251799813685249, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x1ffff, 0xfff7ffffffffffff, 0x000000000000000f, x9, 472, x1)

# rs1_val == -4503599627370497, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x000000000000000e
TEST_RR_OP(srlw, x12, x10, x11, 0x3ffff, 0xffefffffffffffff, 0x000000000000000e, x9, 480, x1)

# rs1_val == -9007199254740993, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(srlw, x12, x10, x11, 0x7ffffff, 0xffdfffffffffffff, 0x0000000000000005, x9, 488, x1)

# rs1_val == -18014398509481985, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000007
TEST_RR_OP(srlw, x12, x10, x11, 0x1ffffff, 0xffbfffffffffffff, 0x0000000000000007, x9, 496, x1)

# rs1_val == -36028797018963969, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x12, x10, x11, 0x1fff, 0xff7fffffffffffff, 0x0000000000000013, x9, 504, x1)

# rs1_val == -72057594037927937, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(srlw, x12, x10, x11, 0x3, 0xfeffffffffffffff, 0x000000000000001e, x9, 512, x1)

# rs1_val == -144115188075855873, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0x0000000000000006
TEST_RR_OP(srlw, x12, x10, x11, 0x3ffffff, 0xfdffffffffffffff, 0x0000000000000006, x9, 520, x1)

# rs1_val == -288230376151711745, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x000000000000000b
TEST_RR_OP(srlw, x12, x10, x11, 0x1fffff, 0xfbffffffffffffff, 0x000000000000000b, x9, 528, x1)

# rs1_val == -1152921504606846977, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x12, x10, x11, 0x7ff, 0xefffffffffffffff, 0x0000000000000015, x9, 536, x1)

# rs1_val == -4611686018427387905, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0x0000000000000005
TEST_RR_OP(srlw, x12, x10, x11, 0x7ffffff, 0xbfffffffffffffff, 0x0000000000000005, x9, 544, x1)

# rs1_val == 6148914691236517205, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0x0000000000000001
TEST_RR_OP(srlw, x12, x10, x11, 0x2aaaaaaa, 0x5555555555555555, 0x0000000000000001, x9, 552, x1)

# rs1_val == -6148914691236517206, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x000000000000001b
TEST_RR_OP(srlw, x12, x10, x11, 0x15, 0xaaaaaaaaaaaaaaaa, 0x000000000000001b, x9, 560, x1)

# rs1_val == 1152921504606846976, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x000000000000000c
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x1000000000000000, 0x000000000000000c, x9, 568, x1)

# rs1_val == 2305843009213693952, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0x0000000000000002
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x2000000000000000, 0x0000000000000002, x9, 576, x1)

# rs1_val == 4611686018427387904, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x4000000000000000, 0x0000000000000013, x9, 584, x1)

# rs1_val == -2, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0xfffffff, 0xfffffffffffffffe, 0x0000000000000004, x9, 592, x1)

# rs1_val == -3, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0xfffffff, 0xfffffffffffffffd, 0x0000000000000004, x9, 600, x1)

# rs1_val == -5, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x1ffff, 0xfffffffffffffffb, 0x000000000000000f, x9, 608, x1)

# rs1_val == -9, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0x000000000000001b
TEST_RR_OP(srlw, x12, x10, x11, 0x1f, 0xfffffffffffffff7, 0x000000000000001b, x9, 616, x1)

# rs1_val == -17, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000011
TEST_RR_OP(srlw, x12, x10, x11, 0x7fff, 0xffffffffffffffef, 0x0000000000000011, x9, 624, x1)

# rs1_val == -65, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x1ffff, 0xffffffffffffffbf, 0x000000000000000f, x9, 632, x1)

# rs1_val == -129, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0xffffff7, 0xffffffffffffff7f, 0x0000000000000004, x9, 640, x1)

# rs1_val == -257, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000017
TEST_RR_OP(srlw, x12, x10, x11, 0x1ff, 0xfffffffffffffeff, 0x0000000000000017, x9, 648, x1)

# rs1_val == -513, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x000000000000001d
TEST_RR_OP(srlw, x12, x10, x11, 0x7, 0xfffffffffffffdff, 0x000000000000001d, x9, 656, x1)

# rs1_val == -1025, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x000000000000001e
TEST_RR_OP(srlw, x12, x10, x11, 0x3, 0xfffffffffffffbff, 0x000000000000001e, x9, 664, x1)

# rs1_val == -2049, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0xfffff7ff, 0xfffffffffffff7ff, 0x0000000000000000, x9, 672, x1)

# rs1_val == -4097, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x12, x10, x11, 0x7ff, 0xffffffffffffefff, 0x0000000000000015, x9, 680, x1)

# rs1_val == -8193, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000000007
TEST_RR_OP(srlw, x12, x10, x11, 0x1ffffbf, 0xffffffffffffdfff, 0x0000000000000007, x9, 688, x1)

# rs1_val == -16385, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000000000000011
TEST_RR_OP(srlw, x12, x10, x11, 0x7fff, 0xffffffffffffbfff, 0x0000000000000011, x9, 696, x1)

# rs1_val == -32769, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0xffff7ff, 0xffffffffffff7fff, 0x0000000000000004, x9, 704, x1)

# rs1_val == -65537, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0xfffeffff, 0xfffffffffffeffff, 0x0000000000000000, x9, 712, x1)

# rs1_val == -131073, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000000005
TEST_RR_OP(srlw, x12, x10, x11, 0x7ffefff, 0xfffffffffffdffff, 0x0000000000000005, x9, 720, x1)

# rs1_val == -524289, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x000000000000001f
TEST_RR_OP(srlw, x12, x10, x11, 0x1, 0xfffffffffff7ffff, 0x000000000000001f, x9, 728, x1)

# rs1_val == -1048577, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000000001
TEST_RR_OP(srlw, x12, x10, x11, 0x7ff7ffff, 0xffffffffffefffff, 0x0000000000000001, x9, 736, x1)

# rs1_val == -2097153, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x000000000000001b
TEST_RR_OP(srlw, x12, x10, x11, 0x1f, 0xffffffffffdfffff, 0x000000000000001b, x9, 744, x1)

# rs1_val == -4194305, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x12, x10, x11, 0x1ff7, 0xffffffffffbfffff, 0x0000000000000013, x9, 752, x1)

# rs1_val == -8388609, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000000000000004
TEST_RR_OP(srlw, x12, x10, x11, 0xff7ffff, 0xffffffffff7fffff, 0x0000000000000004, x9, 760, x1)

# rs1_val == -16777217, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x000000000000001f
TEST_RR_OP(srlw, x12, x10, x11, 0x1, 0xfffffffffeffffff, 0x000000000000001f, x9, 768, x1)

# rs1_val == -33554433, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x0000000000000005
TEST_RR_OP(srlw, x12, x10, x11, 0x7efffff, 0xfffffffffdffffff, 0x0000000000000005, x9, 776, x1)

# rs1_val == -67108865, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x000000000000000c
TEST_RR_OP(srlw, x12, x10, x11, 0xfbfff, 0xfffffffffbffffff, 0x000000000000000c, x9, 784, x1)

# rs1_val == -268435457, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x12, x10, x11, 0x1dff, 0xffffffffefffffff, 0x0000000000000013, x9, 792, x1)

# rs1_val == -536870913, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x12, x10, x11, 0x6ffff, 0xffffffffdfffffff, 0x000000000000000d, x9, 800, x1)

# rs1_val == -1073741825, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x000000000000000d
TEST_RR_OP(srlw, x12, x10, x11, 0x5ffff, 0xffffffffbfffffff, 0x000000000000000d, x9, 808, x1)

# rs1_val == -2147483649, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x000000000000001d
TEST_RR_OP(srlw, x12, x10, x11, 0x3, 0xffffffff7fffffff, 0x000000000000001d, x9, 816, x1)

# rs1_val == -4294967297, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x000000000000000f
TEST_RR_OP(srlw, x12, x10, x11, 0x1ffff, 0xfffffffeffffffff, 0x000000000000000f, x9, 824, x1)

# rs1_val == -8589934593, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x0000000000000010
TEST_RR_OP(srlw, x12, x10, x11, 0xffff, 0xfffffffdffffffff, 0x0000000000000010, x9, 832, x1)

# rs1_val == -17179869185, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x000000000000001b
TEST_RR_OP(srlw, x12, x10, x11, 0x1f, 0xfffffffbffffffff, 0x000000000000001b, x9, 840, x1)

# rs1_val == -34359738369, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x000000000000000e
TEST_RR_OP(srlw, x12, x10, x11, 0x3ffff, 0xfffffff7ffffffff, 0x000000000000000e, x9, 848, x1)

# rs1_val == -68719476737, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000005
TEST_RR_OP(srlw, x12, x10, x11, 0x7ffffff, 0xffffffefffffffff, 0x0000000000000005, x9, 856, x1)

# rs1_val == -137438953473, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0x0000000000000007
TEST_RR_OP(srlw, x12, x10, x11, 0x1ffffff, 0xffffffdfffffffff, 0x0000000000000007, x9, 864, x1)

# rs1_val == -274877906945, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x000000000000000b
TEST_RR_OP(srlw, x12, x10, x11, 0x1fffff, 0xffffffbfffffffff, 0x000000000000000b, x9, 872, x1)

# rs1_val == -549755813889, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000000000013
TEST_RR_OP(srlw, x12, x10, x11, 0x1fff, 0xffffff7fffffffff, 0x0000000000000013, x9, 880, x1)

# rs1_val == -1099511627777, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x000000000000001e
TEST_RR_OP(srlw, x12, x10, x11, 0x3, 0xfffffeffffffffff, 0x000000000000001e, x9, 888, x1)

# rs1_val == -2199023255553, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000000000017
TEST_RR_OP(srlw, x12, x10, x11, 0x1ff, 0xfffffdffffffffff, 0x0000000000000017, x9, 896, x1)

# rs1_val == -4398046511105, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000008
TEST_RR_OP(srlw, x12, x10, x11, 0xffffff, 0xfffffbffffffffff, 0x0000000000000008, x9, 904, x1)

# rs1_val < 0 and rs2_val > 0 and rs2_val < xlen, rs1_val == -134217729, rs2_val == 23
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000000000000017
TEST_RR_OP(srlw, x12, x10, x11, 0x1ef, 0xfffffffff7ffffff, 0x0000000000000017, x9, 912, x1)

# rs1_val > 0 and rs2_val == 0, rs1_val == 8796093022208
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0x0000000000000000
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000080000000000, 0x0000000000000000, x9, 920, x1)

# rs2_val == 21, rs1_val == 35184372088832
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000000000015
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0000200000000000, 0x0000000000000015, x9, 928, x1)

# rs2_val == 10, rs1_val == 562949953421312
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x000000000000000a
TEST_RR_OP(srlw, x12, x10, x11, 0x0, 0x0002000000000000, 0x000000000000000a, x9, 936, x1)

# rs1_val == 4096, 
# opcode: srlw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000001000;  op2val:0x0000000000000009
TEST_RR_OP(srlw, x12, x10, x11, 0x8, 0x0000000000001000, 0x0000000000000009, x9, 944, x1)
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

signature_x5_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x5_1:
    .fill 18*(XLEN/32),4,0xdeadbeef


signature_x9_0:
    .fill 119*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
