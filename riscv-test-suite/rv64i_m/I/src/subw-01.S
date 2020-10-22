
#This assembly file tests the subw instruction of the RISC-V I extension for the subw covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*RV64.*I.*);def TEST_CASE_1=True;",subw)

RVTEST_SIGBASE( x22,signature_x22_1)

# rs1 == rd != rs2, rs1==x9, rs2==x3, rd==x9, rs1_val == (-2**(xlen-1)), rs2_val == 68719476736, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: subw ; op1:x9; op2:x3; dest:x9; op1val:0x8000000000000000;  op2val:0x0000001000000000
TEST_RR_OP(subw, x9, x9, x3, 0x0, 0x8000000000000000, 0x0000001000000000, x22, 0, x7)

# rs1 == rs2 != rd, rs1==x5, rs2==x5, rd==x21, rs1_val == 0, rs2_val == -536870913
# opcode: subw ; op1:x5; op2:x5; dest:x21; op1val:0x0000000000000000;  op2val:0xffffffffdfffffff
TEST_RR_OP(subw, x21, x5, x5, 0xffffffff20000001, 0x0000000000000000, 0xffffffffdfffffff, x22, 8, x7)

# rs2 == rd != rs1, rs1==x29, rs2==x14, rd==x14, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 2048, rs1_val == 9223372036854775807
# opcode: subw ; op1:x29; op2:x14; dest:x14; op1val:0x7fffffffffffffff;  op2val:0x0000000000000800
TEST_RR_OP(subw, x14, x29, x14, 0xfffff7ff, 0x7fffffffffffffff, 0x0000000000000800, x22, 16, x7)

# rs1 == rs2 == rd, rs1==x8, rs2==x8, rd==x8, rs1_val == 1, rs2_val == 1073741824
# opcode: subw ; op1:x8; op2:x8; dest:x8; op1val:0x0000000000000001;  op2val:0x0000000040000000
TEST_RR_OP(subw, x8, x8, x8, 0xffffffffc0000001, 0x0000000000000001, 0x0000000040000000, x22, 24, x7)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x26, rs2==x16, rd==x24, rs2_val == (-2**(xlen-1)), rs1_val > 0 and rs2_val < 0, rs2_val == -9223372036854775808
# opcode: subw ; op1:x26; op2:x16; dest:x24; op1val:0x0000000000000001;  op2val:0x8000000000000000
TEST_RR_OP(subw, x24, x26, x16, 0x1, 0x0000000000000001, 0x8000000000000000, x22, 32, x7)

# rs1==x1, rs2==x23, rd==x16, rs2_val == 0, rs1_val == 562949953421312
# opcode: subw ; op1:x1; op2:x23; dest:x16; op1val:0x0002000000000000;  op2val:0x0000000000000000
TEST_RR_OP(subw, x16, x1, x23, 0x0, 0x0002000000000000, 0x0000000000000000, x22, 40, x7)

# rs1==x4, rs2==x10, rd==x26, rs2_val == (2**(xlen-1)-1), rs1_val == 17592186044416, rs2_val == 9223372036854775807
# opcode: subw ; op1:x4; op2:x10; dest:x26; op1val:0x0000100000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(subw, x26, x4, x10, 0xffffffff00000001, 0x0000100000000000, 0x7fffffffffffffff, x22, 48, x7)

# rs1==x10, rs2==x0, rd==x11, rs2_val == 1, rs1_val == -262145
# opcode: subw ; op1:x10; op2:x0; dest:x11; op1val:0xfffffffffffbffff;  op2val:0x0000000000000001
TEST_RR_OP(subw, x11, x10, x0, 0xfffbfffe, 0xfffffffffffbffff, 0x0000000000000001, x22, 56, x7)

# rs1==x19, rs2==x18, rd==x17, rs1_val < 0 and rs2_val < 0, rs1_val == -4194305, rs2_val == -16385
# opcode: subw ; op1:x19; op2:x18; dest:x17; op1val:0xffffffffffbfffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(subw, x17, x19, x18, 0xffffffffffc04000, 0xffffffffffbfffff, 0xffffffffffffbfff, x22, 64, x7)

# rs1==x17, rs2==x24, rd==x0, rs1_val == rs2_val, rs1_val == -33, rs2_val == -33
# opcode: subw ; op1:x17; op2:x24; dest:x0; op1val:0xffffffffffffffdf;  op2val:0xffffffffffffffdf
TEST_RR_OP(subw, x0, x17, x24, 0x0, 0xffffffffffffffdf, 0xffffffffffffffdf, x22, 72, x7)

# rs1==x6, rs2==x12, rd==x29, rs1_val == 2, rs2_val == 2251799813685248
# opcode: subw ; op1:x6; op2:x12; dest:x29; op1val:0x0000000000000002;  op2val:0x0008000000000000
TEST_RR_OP(subw, x29, x6, x12, 0x2, 0x0000000000000002, 0x0008000000000000, x22, 80, x7)

# rs1==x13, rs2==x11, rd==x5, rs1_val == 4, rs2_val == -8193
# opcode: subw ; op1:x13; op2:x11; dest:x5; op1val:0x0000000000000004;  op2val:0xffffffffffffdfff
TEST_RR_OP(subw, x5, x13, x11, 0xffffffff00002005, 0x0000000000000004, 0xffffffffffffdfff, x22, 88, x7)

# rs1==x11, rs2==x27, rd==x6, rs1_val == 8, rs2_val == 1024
# opcode: subw ; op1:x11; op2:x27; dest:x6; op1val:0x0000000000000008;  op2val:0x0000000000000400
TEST_RR_OP(subw, x6, x11, x27, 0xfffffffffffffc08, 0x0000000000000008, 0x0000000000000400, x22, 96, x7)

# rs1==x21, rs2==x25, rd==x4, rs1_val == 16, rs2_val == -2147483649
# opcode: subw ; op1:x21; op2:x25; dest:x4; op1val:0x0000000000000010;  op2val:0xffffffff7fffffff
TEST_RR_OP(subw, x4, x21, x25, 0xffffffff80000011, 0x0000000000000010, 0xffffffff7fffffff, x22, 104, x7)

# rs1==x16, rs2==x9, rd==x3, rs1_val == 32, rs2_val == -17179869185
# opcode: subw ; op1:x16; op2:x9; dest:x3; op1val:0x0000000000000020;  op2val:0xfffffffbffffffff
TEST_RR_OP(subw, x3, x16, x9, 0xffffffff00000021, 0x0000000000000020, 0xfffffffbffffffff, x22, 112, x7)

# rs1==x14, rs2==x19, rd==x31, rs1_val == 64, rs2_val == -4194305
# opcode: subw ; op1:x14; op2:x19; dest:x31; op1val:0x0000000000000040;  op2val:0xffffffffffbfffff
TEST_RR_OP(subw, x31, x14, x19, 0xffffffff00400041, 0x0000000000000040, 0xffffffffffbfffff, x22, 120, x7)

# rs1==x25, rs2==x15, rd==x23, rs1_val == 128, rs2_val == 140737488355328
# opcode: subw ; op1:x25; op2:x15; dest:x23; op1val:0x0000000000000080;  op2val:0x0000800000000000
TEST_RR_OP(subw, x23, x25, x15, 0x80, 0x0000000000000080, 0x0000800000000000, x22, 128, x7)

# rs1==x24, rs2==x13, rd==x2, rs1_val == 256, rs2_val == -36028797018963969
# opcode: subw ; op1:x24; op2:x13; dest:x2; op1val:0x0000000000000100;  op2val:0xff7fffffffffffff
TEST_RR_OP(subw, x2, x24, x13, 0xffffffff00000101, 0x0000000000000100, 0xff7fffffffffffff, x22, 136, x7)

# rs1==x31, rs2==x26, rd==x27, rs1_val == 512, rs2_val == 1048576
# opcode: subw ; op1:x31; op2:x26; dest:x27; op1val:0x0000000000000200;  op2val:0x0000000000100000
TEST_RR_OP(subw, x27, x31, x26, 0xfffffffffff00200, 0x0000000000000200, 0x0000000000100000, x22, 144, x7)

# rs1==x2, rs2==x20, rd==x13, rs1_val == 1024, rs2_val == -70368744177665
# opcode: subw ; op1:x2; op2:x20; dest:x13; op1val:0x0000000000000400;  op2val:0xffffbfffffffffff
TEST_RR_OP(subw, x13, x2, x20, 0xffffffff00000401, 0x0000000000000400, 0xffffbfffffffffff, x22, 152, x7)

# rs1==x12, rs2==x7, rd==x15, rs1_val == 2048, rs2_val == 8388608
# opcode: subw ; op1:x12; op2:x7; dest:x15; op1val:0x0000000000000800;  op2val:0x0000000000800000
TEST_RR_OP(subw, x15, x12, x7, 0xffffffffff800800, 0x0000000000000800, 0x0000000000800000, x22, 160, x8)
RVTEST_SIGBASE( x5,signature_x5_0)

# rs1==x22, rs2==x28, rd==x25, rs1_val == 4096, 
# opcode: subw ; op1:x22; op2:x28; dest:x25; op1val:0x0000000000001000;  op2val:0xffffffffffbfffff
TEST_RR_OP(subw, x25, x22, x28, 0xffffffff00401001, 0x0000000000001000, 0xffffffffffbfffff, x5, 0, x8)

# rs1==x0, rs2==x2, rd==x1, rs1_val == 8192, rs2_val == 1099511627776
# opcode: subw ; op1:x0; op2:x2; dest:x1; op1val:0x0000000000002000;  op2val:0x0000010000000000
TEST_RR_OP(subw, x1, x0, x2, 0x2000, 0x0000000000002000, 0x0000010000000000, x5, 8, x8)

# rs1==x28, rs2==x30, rd==x7, rs1_val == 16384, rs2_val == -67108865
# opcode: subw ; op1:x28; op2:x30; dest:x7; op1val:0x0000000000004000;  op2val:0xfffffffffbffffff
TEST_RR_OP(subw, x7, x28, x30, 0xffffffff04004001, 0x0000000000004000, 0xfffffffffbffffff, x5, 16, x8)

# rs1==x20, rs2==x1, rd==x22, rs1_val == 32768, rs2_val == 2305843009213693952
# opcode: subw ; op1:x20; op2:x1; dest:x22; op1val:0x0000000000008000;  op2val:0x2000000000000000
TEST_RR_OP(subw, x22, x20, x1, 0x8000, 0x0000000000008000, 0x2000000000000000, x5, 24, x8)

# rs1==x15, rs2==x21, rd==x18, rs1_val == 65536, 
# opcode: subw ; op1:x15; op2:x21; dest:x18; op1val:0x0000000000010000;  op2val:0x0000000000000005
TEST_RR_OP(subw, x18, x15, x21, 0xfffb, 0x0000000000010000, 0x0000000000000005, x5, 32, x8)

# rs1==x30, rs2==x17, rd==x19, rs1_val == 131072, rs2_val == -34359738369
# opcode: subw ; op1:x30; op2:x17; dest:x19; op1val:0x0000000000020000;  op2val:0xfffffff7ffffffff
TEST_RR_OP(subw, x19, x30, x17, 0xffffffff00020001, 0x0000000000020000, 0xfffffff7ffffffff, x5, 40, x8)

# rs1==x23, rs2==x29, rd==x28, rs1_val == 262144, 
# opcode: subw ; op1:x23; op2:x29; dest:x28; op1val:0x0000000000040000;  op2val:0x0000000000000007
TEST_RR_OP(subw, x28, x23, x29, 0x3fff9, 0x0000000000040000, 0x0000000000000007, x5, 48, x8)

# rs1==x27, rs2==x4, rd==x10, rs1_val == 524288, rs2_val == -5
# opcode: subw ; op1:x27; op2:x4; dest:x10; op1val:0x0000000000080000;  op2val:0xfffffffffffffffb
TEST_RR_OP(subw, x10, x27, x4, 0xffffffff00080005, 0x0000000000080000, 0xfffffffffffffffb, x5, 56, x8)

# rs1==x18, rs2==x31, rd==x30, rs1_val == 1048576, rs2_val == 1125899906842624
# opcode: subw ; op1:x18; op2:x31; dest:x30; op1val:0x0000000000100000;  op2val:0x0004000000000000
TEST_RR_OP(subw, x30, x18, x31, 0x100000, 0x0000000000100000, 0x0004000000000000, x5, 64, x8)

# rs1==x7, rs2==x6, rd==x20, rs1_val == 2097152, rs2_val == 524288
# opcode: subw ; op1:x7; op2:x6; dest:x20; op1val:0x0000000000200000;  op2val:0x0000000000080000
TEST_RR_OP(subw, x20, x7, x6, 0x180000, 0x0000000000200000, 0x0000000000080000, x5, 72, x8)

# rs1==x3, rs2==x22, rd==x12, rs1_val == 4194304, rs2_val == -576460752303423489
# opcode: subw ; op1:x3; op2:x22; dest:x12; op1val:0x0000000000400000;  op2val:0xf7ffffffffffffff
TEST_RR_OP(subw, x12, x3, x22, 0xffffffff00400001, 0x0000000000400000, 0xf7ffffffffffffff, x5, 80, x8)

# rs1_val == 8388608, rs2_val == -549755813889
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xffffff7fffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00800001, 0x0000000000800000, 0xffffff7fffffffff, x5, 88, x8)

# rs1_val == 16777216, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x1000000, 0x0000000001000000, 0x0000000000000000, x5, 96, x8)

# rs1_val == 33554432, rs2_val == 72057594037927936
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0x0100000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x2000000, 0x0000000002000000, 0x0100000000000000, x5, 104, x8)

# rs1_val == 67108864, rs2_val == -72057594037927937
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfeffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff04000001, 0x0000000004000000, 0xfeffffffffffffff, x5, 112, x8)

# rs1_val == 134217728, rs2_val == -35184372088833
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff08000001, 0x0000000008000000, 0xffffdfffffffffff, x5, 120, x8)

# rs1_val == 268435456, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000000000001
TEST_RR_OP(subw, x12, x10, x11, 0xfffffff, 0x0000000010000000, 0x0000000000000001, x5, 128, x8)

# rs1_val == 536870912, rs2_val == -68719476737
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xffffffefffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff20000001, 0x0000000020000000, 0xffffffefffffffff, x5, 136, x8)

# rs1_val == 1073741824, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfffffffffffffffc
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff40000004, 0x0000000040000000, 0xfffffffffffffffc, x5, 144, x8)

# rs1_val == 2147483648, rs2_val == 16384
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000004000
TEST_RR_OP(subw, x12, x10, x11, 0x7fffc000, 0x0000000080000000, 0x0000000000004000, x5, 152, x8)

# rs1_val == 4294967296, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0004000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000000100000000, 0x0004000000000000, x5, 160, x8)

# rs1_val == 8589934592, rs2_val == 268435456
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000010000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff0000000, 0x0000000200000000, 0x0000000010000000, x5, 168, x8)

# rs1_val == 17179869184, rs2_val == 576460752303423488
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x0800000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000000400000000, 0x0800000000000000, x5, 176, x8)

# rs1_val == 34359738368, rs2_val == -288230376151711745
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xfbffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000000800000000, 0xfbffffffffffffff, x5, 184, x8)

# rs1_val == 68719476736, rs2_val == -17592186044417
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000001000000000, 0xffffefffffffffff, x5, 192, x8)

# rs1_val == 137438953472, rs2_val == -6148914691236517206
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff55555556, 0x0000002000000000, 0xaaaaaaaaaaaaaaaa, x5, 200, x8)

# rs1_val == 274877906944, rs2_val == -8589934593
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xfffffffdffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000004000000000, 0xfffffffdffffffff, x5, 208, x8)

# rs1_val == 549755813888, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffffffffff6
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff0000000a, 0x0000008000000000, 0xfffffffffffffff6, x5, 216, x8)

# rs1_val == 1099511627776, rs2_val == -2305843009213693953
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0000010000000000, 0xdfffffffffffffff, x5, 224, x8)

# rs1_val == 2199023255552, rs2_val == -17
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000011, 0x0000020000000000, 0xffffffffffffffef, x5, 232, x8)

# rs1_val == 4398046511104, rs2_val == 18014398509481984
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0x0040000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000040000000000, 0x0040000000000000, x5, 240, x8)

# rs1_val == 8796093022208, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xffffffffffffffef
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000011, 0x0000080000000000, 0xffffffffffffffef, x5, 248, x8)

# rs1_val == 35184372088832, rs2_val == 67108864
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0x0000000004000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffc000000, 0x0000200000000000, 0x0000000004000000, x5, 256, x8)

# rs1_val == 70368744177664, rs2_val == -3
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfffffffffffffffd
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000003, 0x0000400000000000, 0xfffffffffffffffd, x5, 264, x8)

# rs1_val == 140737488355328, rs2_val == 32
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0x0000000000000020
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffe0, 0x0000800000000000, 0x0000000000000020, x5, 272, x8)

# rs1_val == 281474976710656, rs2_val == 2
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000000000002
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffe, 0x0001000000000000, 0x0000000000000002, x5, 280, x8)

# rs1_val == 1125899906842624, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0004000000000000, 0xdfffffffffffffff, x5, 288, x8)

# rs1_val == 2251799813685248, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x8000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0008000000000000, 0x8000000000000000, x5, 296, x8)

# rs1_val == 4503599627370496, rs2_val == -8388609
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffffffff7fffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00800001, 0x0010000000000000, 0xffffffffff7fffff, x5, 304, x8)

# rs1_val == 9007199254740992, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0020000000000000, 0xffffdfffffffffff, x5, 312, x8)

# rs1_val == 18014398509481984, rs2_val == 16777216
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0x0000000001000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffff000000, 0x0040000000000000, 0x0000000001000000, x5, 320, x8)

# rs1_val == 36028797018963968, rs2_val == 144115188075855872
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0x0200000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0080000000000000, 0x0200000000000000, x5, 328, x8)

# rs1_val == 72057594037927936, rs2_val == 262144
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0x0000000000040000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffc0000, 0x0100000000000000, 0x0000000000040000, x5, 336, x8)

# rs1_val == 144115188075855872, rs2_val == 16
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000010
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffff0, 0x0200000000000000, 0x0000000000000010, x5, 344, x8)

# rs1_val == 288230376151711744, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0000000000000400
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffc00, 0x0400000000000000, 0x0000000000000400, x5, 352, x8)

# rs1_val == 576460752303423488, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xffffffffffffffdf
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000021, 0x0800000000000000, 0xffffffffffffffdf, x5, 360, x8)

# rs1_val == 1152921504606846976, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000006
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffa, 0x1000000000000000, 0x0000000000000006, x5, 368, x8)

# rs1_val == 2305843009213693952, rs2_val == -257
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xfffffffffffffeff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000101, 0x2000000000000000, 0xfffffffffffffeff, x5, 376, x8)

# rs1_val == 4611686018427387904, rs2_val == 134217728
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0x0000000008000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff8000000, 0x4000000000000000, 0x0000000008000000, x5, 384, x8)

# rs1_val == -2, rs2_val == 562949953421312
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0002000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffe, 0xfffffffffffffffe, 0x0002000000000000, x5, 392, x8)

# rs1_val == -3, rs2_val == 8
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x0000000000000008
TEST_RR_OP(subw, x12, x10, x11, 0xfffffff5, 0xfffffffffffffffd, 0x0000000000000008, x5, 400, x8)

# rs1_val == -5, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000000000000007
TEST_RR_OP(subw, x12, x10, x11, 0xfffffff4, 0xfffffffffffffffb, 0x0000000000000007, x5, 408, x8)

# rs1_val == -9, rs2_val == -18014398509481985
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xffbfffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffff8, 0xfffffffffffffff7, 0xffbfffffffffffff, x5, 416, x8)

# rs1_val == -17, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0x0000000000000007
TEST_RR_OP(subw, x12, x10, x11, 0xffffffe8, 0xffffffffffffffef, 0x0000000000000007, x5, 424, x8)

# rs1_val == -65, rs2_val == 8192
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000000000002000
TEST_RR_OP(subw, x12, x10, x11, 0xffffdfbf, 0xffffffffffffffbf, 0x0000000000002000, x5, 432, x8)

# rs1_val == -129, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0xfffffffffffffffa
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffff85, 0xffffffffffffff7f, 0xfffffffffffffffa, x5, 440, x8)

# rs2_val == -1125899906842625, rs1_val == -70368744177665
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffbfffffffffff, 0xfffbffffffffffff, x5, 448, x8)

# rs2_val == -2251799813685249, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0xfff7ffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000004, 0x0000000000000003, 0xfff7ffffffffffff, x5, 456, x8)

# rs2_val == -4503599627370497, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0xffefffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffa, 0xfffffffffffffff9, 0xffefffffffffffff, x5, 464, x8)

# rs2_val == -9007199254740993, rs1_val == -16777217
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0xffdfffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffff000000, 0xfffffffffeffffff, 0xffdfffffffffffff, x5, 472, x8)

# rs2_val == -144115188075855873, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xfdffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00800001, 0x0000000000800000, 0xfdffffffffffffff, x5, 480, x8)

# rs2_val == -1152921504606846977, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xefffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0200000000000000, 0xefffffffffffffff, x5, 488, x8)

# rs2_val == -4611686018427387905, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000004000;  op2val:0xbfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00004001, 0x0000000000004000, 0xbfffffffffffffff, x5, 496, x8)

# rs2_val == 6148914691236517205, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x5555555555555555
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffaaaaaacb, 0x0000000000000020, 0x5555555555555555, x5, 504, x8)

# rs1_val == -257, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000000000005
TEST_RR_OP(subw, x12, x10, x11, 0xfffffefa, 0xfffffffffffffeff, 0x0000000000000005, x5, 512, x8)

# rs1_val == -513, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000010000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffdff, 0xfffffffffffffdff, 0x0000010000000000, x5, 520, x8)

# rs1_val == -1025, rs2_val == 288230376151711744
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0400000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffbff, 0xfffffffffffffbff, 0x0400000000000000, x5, 528, x8)

# rs1_val == -2049, rs2_val == 549755813888
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000008000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffff7ff, 0xfffffffffffff7ff, 0x0000008000000000, x5, 536, x8)

# rs1_val == -4097, rs2_val == 2097152
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0000000000200000
TEST_RR_OP(subw, x12, x10, x11, 0xffdfefff, 0xffffffffffffefff, 0x0000000000200000, x5, 544, x8)

# rs1_val == -8193, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000001000000
TEST_RR_OP(subw, x12, x10, x11, 0xfeffdfff, 0xffffffffffffdfff, 0x0000000001000000, x5, 552, x8)

# rs1_val == -16385, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xffffffffdfffffff
TEST_RR_OP(subw, x12, x10, x11, 0x1fffc000, 0xffffffffffffbfff, 0xffffffffdfffffff, x5, 560, x8)

# rs1_val == -32769, rs2_val == 4096
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000000000001000
TEST_RR_OP(subw, x12, x10, x11, 0xffff6fff, 0xffffffffffff7fff, 0x0000000000001000, x5, 568, x8)

# rs1_val == -65537, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffff0000, 0xfffffffffffeffff, 0xfffffff7ffffffff, x5, 576, x8)

# rs1_val == -131073, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0000000000200000
TEST_RR_OP(subw, x12, x10, x11, 0xffddffff, 0xfffffffffffdffff, 0x0000000000200000, x5, 584, x8)

# rs1_val == -524289, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffff80000, 0xfffffffffff7ffff, 0xf7ffffffffffffff, x5, 592, x8)

# rs1_val == -1048577, rs2_val == -65
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0xffffffffffffffbf
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffff00040, 0xffffffffffefffff, 0xffffffffffffffbf, x5, 600, x8)

# rs1_val == -2097153, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffe00000, 0xffffffffffdfffff, 0xfffffff7ffffffff, x5, 608, x8)

# rs1_val == -8388609, rs2_val == -2049
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffff800800, 0xffffffffff7fffff, 0xfffffffffffff7ff, x5, 616, x8)

# rs1_val == -33554433, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffe000000, 0xfffffffffdffffff, 0xfbffffffffffffff, x5, 624, x8)

# rs1_val == -67108865, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000100000
TEST_RR_OP(subw, x12, x10, x11, 0xfbefffff, 0xfffffffffbffffff, 0x0000000000100000, x5, 632, x8)

# rs1_val == -134217729, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff8000000, 0xfffffffff7ffffff, 0xfffffffbffffffff, x5, 640, x8)

# rs1_val == -268435457, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffff0000000, 0xffffffffefffffff, 0xfbffffffffffffff, x5, 648, x8)

# rs1_val == -536870913, rs2_val == -1048577
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffe0100000, 0xffffffffdfffffff, 0xffffffffffefffff, x5, 656, x8)

# rs1_val == -1073741825, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000000010
TEST_RR_OP(subw, x12, x10, x11, 0xbfffffef, 0xffffffffbfffffff, 0x0000000000000010, x5, 664, x8)

# rs1_val == -2147483649, rs2_val == -2199023255553
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff80000000, 0xffffffff7fffffff, 0xfffffdffffffffff, x5, 672, x8)

# rs1_val == -4294967297, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffffffeffffffff, 0xff7fffffffffffff, x5, 680, x8)

# rs1_val == -8589934593, rs2_val == -4097
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xffffffffffffefff
TEST_RR_OP(subw, x12, x10, x11, 0x1000, 0xfffffffdffffffff, 0xffffffffffffefff, x5, 688, x8)

# rs1_val == -17179869185, rs2_val == 2147483648
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0x0000000080000000
TEST_RR_OP(subw, x12, x10, x11, 0x7fffffff, 0xfffffffbffffffff, 0x0000000080000000, x5, 696, x8)

# rs1_val == -34359738369, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0xdfffffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffffff7ffffffff, 0xdfffffffffffffff, x5, 704, x8)

# rs1_val == -68719476737, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000010000000
TEST_RR_OP(subw, x12, x10, x11, 0xefffffff, 0xffffffefffffffff, 0x0000000010000000, x5, 712, x8)

# rs1_val == -137438953473, rs2_val == -16777217
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(subw, x12, x10, x11, 0x1000000, 0xffffffdfffffffff, 0xfffffffffeffffff, x5, 720, x8)

# rs1_val == -274877906945, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x5555555555555555
TEST_RR_OP(subw, x12, x10, x11, 0xaaaaaaaa, 0xffffffbfffffffff, 0x5555555555555555, x5, 728, x8)

# rs1_val == -549755813889, rs2_val == -2097153
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0xffffffffffdfffff
TEST_RR_OP(subw, x12, x10, x11, 0x200000, 0xffffff7fffffffff, 0xffffffffffdfffff, x5, 736, x8)

# rs1_val == -1099511627777, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0xffffdfffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffffeffffffffff, 0xffffdfffffffffff, x5, 744, x8)

# rs1_val == -2199023255553, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x0000000004000000
TEST_RR_OP(subw, x12, x10, x11, 0xfbffffff, 0xfffffdffffffffff, 0x0000000004000000, x5, 752, x8)

# rs1_val == -4398046511105, rs2_val == 17179869184
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000400000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffffbffffffffff, 0x0000000400000000, x5, 760, x8)

# rs1_val == -8796093022209, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000000000800000
TEST_RR_OP(subw, x12, x10, x11, 0xff7fffff, 0xfffff7ffffffffff, 0x0000000000800000, x5, 768, x8)

# rs1_val == -17592186044417, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x5555555555555555
TEST_RR_OP(subw, x12, x10, x11, 0xaaaaaaaa, 0xffffefffffffffff, 0x5555555555555555, x5, 776, x8)

# rs1_val == -35184372088833, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffdfffffffffff, 0xfffffdffffffffff, x5, 784, x8)

# rs1_val == -140737488355329, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffff7fffffffffff, 0xfffffdffffffffff, x5, 792, x8)

# rs1_val == -281474976710657, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0x0000008000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffeffffffffffff, 0x0000008000000000, x5, 800, x8)

# rs1_val == -562949953421313, rs2_val == 32768
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0x0000000000008000
TEST_RR_OP(subw, x12, x10, x11, 0xffff7fff, 0xfffdffffffffffff, 0x0000000000008000, x5, 808, x8)

# rs1_val == -1125899906842625, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000000008000
TEST_RR_OP(subw, x12, x10, x11, 0xffff7fff, 0xfffbffffffffffff, 0x0000000000008000, x5, 816, x8)

# rs1_val == -2251799813685249, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0x0008000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfff7ffffffffffff, 0x0008000000000000, x5, 824, x8)

# rs1_val == -4503599627370497, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(subw, x12, x10, x11, 0x55555555, 0xffefffffffffffff, 0xaaaaaaaaaaaaaaaa, x5, 832, x8)

# rs1_val == -9007199254740993, rs2_val == 65536
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0x0000000000010000
TEST_RR_OP(subw, x12, x10, x11, 0xfffeffff, 0xffdfffffffffffff, 0x0000000000010000, x5, 840, x8)

# rs1_val == -18014398509481985, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xffffffffffefffff
TEST_RR_OP(subw, x12, x10, x11, 0x100000, 0xffbfffffffffffff, 0xffffffffffefffff, x5, 848, x8)

# rs1_val == -36028797018963969, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000002
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffd, 0xff7fffffffffffff, 0x0000000000000002, x5, 856, x8)

# rs1_val == -72057594037927937, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0x0000001000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfeffffffffffffff, 0x0000001000000000, x5, 864, x8)

# rs1_val == -144115188075855873, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfdffffffffffffff, 0xff7fffffffffffff, x5, 872, x8)

# rs1_val == -288230376151711745, rs2_val == 8589934592
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0x0000000200000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfbffffffffffffff, 0x0000000200000000, x5, 880, x8)

# rs1_val == -576460752303423489, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000200000
TEST_RR_OP(subw, x12, x10, x11, 0xffdfffff, 0xf7ffffffffffffff, 0x0000000000200000, x5, 888, x8)

# rs1_val == -1152921504606846977, rs2_val == 512
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0000000000000200
TEST_RR_OP(subw, x12, x10, x11, 0xfffffdff, 0xefffffffffffffff, 0x0000000000000200, x5, 896, x8)

# rs1_val == -2305843009213693953, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffffffffffffeff
TEST_RR_OP(subw, x12, x10, x11, 0x100, 0xdfffffffffffffff, 0xfffffffffffffeff, x5, 904, x8)

# rs1_val == -4611686018427387905, rs2_val == -562949953421313
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xbfffffffffffffff, 0xfffdffffffffffff, x5, 912, x8)

# rs1_val == 6148914691236517205, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x5555555555555555;  op2val:0xffbfffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff55555556, 0x5555555555555555, 0xffbfffffffffffff, x5, 920, x8)

# rs1_val == -6148914691236517206, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000020
TEST_RR_OP(subw, x12, x10, x11, 0xaaaaaa8a, 0xaaaaaaaaaaaaaaaa, 0x0000000000000020, x5, 928, x8)

# rs2_val == 4, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000000000004
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffffffc, 0x0000000200000000, 0x0000000000000004, x5, 936, x8)

# rs2_val == 64, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0000000000000040
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffffffffc0, 0x0000000000000000, 0x0000000000000040, x5, 944, x8)

# rs2_val == 128, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000000000000080
TEST_RR_OP(subw, x12, x10, x11, 0x1fffff80, 0x0000000020000000, 0x0000000000000080, x5, 952, x8)

# rs2_val == 256, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000100
TEST_RR_OP(subw, x12, x10, x11, 0xfffffeff, 0xffffffefffffffff, 0x0000000000000100, x5, 960, x8)

# rs2_val == 131072, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000020000
TEST_RR_OP(subw, x12, x10, x11, 0xbffdffff, 0xffffffffbfffffff, 0x0000000000020000, x5, 968, x8)

# rs2_val == 4194304, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000400000
TEST_RR_OP(subw, x12, x10, x11, 0xfbbfffff, 0xfffffffffbffffff, 0x0000000000400000, x5, 976, x8)

# rs2_val == 33554432, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000400;  op2val:0x0000000002000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffe000400, 0x0000000000000400, 0x0000000002000000, x5, 984, x8)

# rs2_val == 536870912, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0x0000000020000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffe1000000, 0x0000000001000000, 0x0000000020000000, x5, 992, x8)

# rs2_val == 4294967296, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000100000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffffeffffffffff, 0x0000000100000000, x5, 1000, x8)

# rs2_val == 34359738368, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0x0000000800000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000000800000000, 0x0000000800000000, x5, 1008, x8)

# rs2_val == 137438953472, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000002000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffbfffff, 0xffffffffffbfffff, 0x0000002000000000, x5, 1016, x8)

# rs2_val == 274877906944, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0x0000004000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffdff, 0xfffffffffffffdff, 0x0000004000000000, x5, 1024, x8)

# rs2_val == 2199023255552, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000020000000000
TEST_RR_OP(subw, x12, x10, x11, 0xff7fffff, 0xffffffffff7fffff, 0x0000020000000000, x5, 1032, x8)

# rs2_val == 4398046511104, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffa;  op2val:0x0000040000000000
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffa, 0xfffffffffffffffa, 0x0000040000000000, x5, 1040, x8)

# rs2_val == 8796093022208, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000080000000000
TEST_RR_OP(subw, x12, x10, x11, 0xefffffff, 0xffffffffefffffff, 0x0000080000000000, x5, 1048, x8)

# rs2_val == 4503599627370496, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0x0010000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000000000000000, 0x0010000000000000, x5, 1056, x8)

# rs2_val == 9007199254740992, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0020000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xdfffffffffffffff, 0x0020000000000000, x5, 1064, x8)

# rs2_val == 36028797018963968, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0x0080000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x40000000, 0x0000000040000000, 0x0080000000000000, x5, 1072, x8)

# rs2_val == 1152921504606846976, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0x1000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x4, 0x0000000000000004, 0x1000000000000000, x5, 1080, x8)

# rs2_val == 4611686018427387904, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0x4000000000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff, 0xfffffdffffffffff, 0x4000000000000000, x5, 1088, x8)

# rs2_val == -2, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(subw, x12, x10, x11, 0x1, 0xfffffffdffffffff, 0xfffffffffffffffe, x5, 1096, x8)

# rs2_val == -9, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xfffffffffffffff7
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000011, 0x0000000000000008, 0xfffffffffffffff7, x5, 1104, x8)

# rs2_val == -129, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xffffffffffffff7f
TEST_RR_OP(subw, x12, x10, x11, 0x80, 0xbfffffffffffffff, 0xffffffffffffff7f, x5, 1112, x8)

# rs2_val == -513, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xfffffffffffffdff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff02000201, 0x0000000002000000, 0xfffffffffffffdff, x5, 1120, x8)

# rs2_val == -1025, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfffffffffffffbff
TEST_RR_OP(subw, x12, x10, x11, 0x400, 0xffffffdfffffffff, 0xfffffffffffffbff, x5, 1128, x8)

# rs2_val == -32769, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00008001, 0x0000000000000000, 0xffffffffffff7fff, x5, 1136, x8)

# rs2_val == -65537, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000008;  op2val:0xfffffffffffeffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00010009, 0x0000000000000008, 0xfffffffffffeffff, x5, 1144, x8)

# rs2_val == -131073, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xfffffffffffdffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffe0000, 0xfffffffffffbffff, 0xfffffffffffdffff, x5, 1152, x8)

# rs2_val == -262145, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffffffbffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00040001, 0x0000008000000000, 0xfffffffffffbffff, x5, 1160, x8)

# rs2_val == -524289, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000800;  op2val:0xfffffffffff7ffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00080801, 0x0000000000000800, 0xfffffffffff7ffff, x5, 1168, x8)

# rs2_val == -33554433, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0xfffffffffdffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff82000001, 0x0000000080000000, 0xfffffffffdffffff, x5, 1176, x8)

# rs2_val == -134217729, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0xfffffffff7ffffff
TEST_RR_OP(subw, x12, x10, x11, 0x7ffffff, 0xfffffffffffffffe, 0xfffffffff7ffffff, x5, 1184, x8)

# rs2_val == -268435457, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0020000000000000;  op2val:0xffffffffefffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff10000001, 0x0020000000000000, 0xffffffffefffffff, x5, 1192, x8)

# rs2_val == -1073741825, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xffffffffbfffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff40000001, 0x0000001000000000, 0xffffffffbfffffff, x5, 1200, x8)

# rs2_val == 281474976710656, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0x0001000000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x0000004000000000, 0x0001000000000000, x5, 1208, x8)

# rs2_val == -4294967297, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xfffffffeffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffeffffffffffff, 0xfffffffeffffffff, x5, 1216, x8)

# rs2_val == -137438953473, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffdfffffffffff, 0xffffffdfffffffff, x5, 1224, x8)

# rs2_val == -274877906945, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xffffffbfffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffbfffffffffff, 0xffffffbfffffffff, x5, 1232, x8)

# rs2_val == -1099511627777, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xfffffeffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff04000001, 0x0000000004000000, 0xfffffeffffffffff, x5, 1240, x8)

# rs2_val == -4398046511105, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0xfffffbffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xfffffffffffff000, 0xffffffffffffefff, 0xfffffbffffffffff, x5, 1248, x8)

# rs2_val == -8796093022209, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff00000001, 0x0008000000000000, 0xfffff7ffffffffff, x5, 1256, x8)

# rs2_val == 17592186044416, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0x0000100000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffbfff, 0xffffffffffffbfff, 0x0000100000000000, x5, 1264, x8)

# rs2_val == 35184372088832, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0x0000200000000000
TEST_RR_OP(subw, x12, x10, x11, 0x20000000, 0x0000000020000000, 0x0000200000000000, x5, 1272, x8)

# rs2_val == 70368744177664, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000400000000000
TEST_RR_OP(subw, x12, x10, x11, 0xffbfffff, 0xffffffffffbfffff, 0x0000400000000000, x5, 1280, x8)

# rs2_val == -140737488355329, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xffff7fffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xfffdffffffffffff, 0xffff7fffffffffff, x5, 1288, x8)

# rs2_val == -281474976710657, 
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0xfffeffffffffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff80000000, 0xffffffff7fffffff, 0xfffeffffffffffff, x5, 1296, x8)

# rs1_val == (-2**(xlen-1)), rs2_val == 68719476736, rs1_val < 0 and rs2_val > 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0x0000001000000000
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0x8000000000000000, 0x0000001000000000, x5, 1304, x8)

# rs1_val == 0, rs2_val == -536870913
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000000;  op2val:0xffffffffdfffffff
TEST_RR_OP(subw, x12, x10, x11, 0xffffffff20000001, 0x0000000000000000, 0xffffffffdfffffff, x5, 1312, x8)

# rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val > 0, rs2_val == 2048, rs1_val == 9223372036854775807
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x7fffffffffffffff;  op2val:0x0000000000000800
TEST_RR_OP(subw, x12, x10, x11, 0xfffff7ff, 0x7fffffffffffffff, 0x0000000000000800, x5, 1320, x8)

# rs1_val == 1, rs2_val == 1073741824
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000000040000000
TEST_RR_OP(subw, x12, x10, x11, 0xffffffffc0000001, 0x0000000000000001, 0x0000000040000000, x5, 1328, x8)

# rs2_val == 1, rs1_val == -262145
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0x0000000000000001
TEST_RR_OP(subw, x12, x10, x11, 0xfffbfffe, 0xfffffffffffbffff, 0x0000000000000001, x5, 1336, x8)

# rs1_val == rs2_val, rs1_val == -33, rs2_val == -33
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0xffffffffffffffdf
TEST_RR_OP(subw, x12, x10, x11, 0x0, 0xffffffffffffffdf, 0xffffffffffffffdf, x5, 1344, x8)

# rs1_val == 8192, rs2_val == 1099511627776
# opcode: subw ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0x0000010000000000
TEST_RR_OP(subw, x12, x10, x11, 0x2000, 0x0000000000002000, 0x0000010000000000, x5, 1352, x8)
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

signature_x22_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x22_1:
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 170*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
