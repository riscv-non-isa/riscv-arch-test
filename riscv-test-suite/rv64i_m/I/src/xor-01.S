
#This assembly file tests the xor instruction of the RISC-V I extension for the xor covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",xor)

RVTEST_SIGBASE( x17,signature_x17_1)

# rs1 == rs2 == rd, rs1==x24, rs2==x24, rd==x24, rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: xor ; op1:x24; op2:x24; dest:x24; op1val:0x8000000000000000;  op2val:0xfffffffffffffff9
TEST_RR_OP(xor, x24, x24, x24, 0x7ffffffffffffff9, 0x8000000000000000, 0xfffffffffffffff9, x17, 0, x3)

# rs1 == rd != rs2, rs1==x29, rs2==x30, rd==x29, rs1_val == 0, rs2_val == 16777216
# opcode: xor ; op1:x29; op2:x30; dest:x29; op1val:0x0000000000000000;  op2val:0x0000000001000000
TEST_RR_OP(xor, x29, x29, x30, 0x1000000, 0x0000000000000000, 0x0000000001000000, x17, 8, x3)

# rs2 == rd != rs1, rs1==x11, rs2==x8, rd==x8, rs1_val == (2**(xlen-1)-1), rs1_val > 0 and rs2_val < 0, rs2_val == -16385, rs1_val == 9223372036854775807
# opcode: xor ; op1:x11; op2:x8; dest:x8; op1val:0x7fffffffffffffff;  op2val:0xffffffffffffbfff
TEST_RR_OP(xor, x8, x11, x8, 0x8000000000004000, 0x7fffffffffffffff, 0xffffffffffffbfff, x17, 16, x3)

# rs1 == rs2 != rd, rs1==x25, rs2==x25, rd==x7, rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 2199023255552
# opcode: xor ; op1:x25; op2:x25; dest:x7; op1val:0x0000000000000001;  op2val:0x0000020000000000
TEST_RR_OP(xor, x7, x25, x25, 0x20000000001, 0x0000000000000001, 0x0000020000000000, x17, 24, x3)

# rs1 != rs2  and rs1 != rd and rs2 != rd, rs1==x27, rs2==x20, rd==x30, rs2_val == (-2**(xlen-1)), rs1_val == 1048576, rs2_val == -9223372036854775808
# opcode: xor ; op1:x27; op2:x20; dest:x30; op1val:0x0000000000100000;  op2val:0x8000000000000000
TEST_RR_OP(xor, x30, x27, x20, 0x8000000000100000, 0x0000000000100000, 0x8000000000000000, x17, 32, x3)

# rs1==x26, rs2==x23, rd==x31, rs2_val == 0, rs1_val == 6148914691236517205
# opcode: xor ; op1:x26; op2:x23; dest:x31; op1val:0x5555555555555555;  op2val:0x0000000000000000
TEST_RR_OP(xor, x31, x26, x23, 0x5555555555555555, 0x5555555555555555, 0x0000000000000000, x17, 40, x3)

# rs1==x13, rs2==x9, rd==x1, rs2_val == (2**(xlen-1)-1), rs1_val == 9007199254740992, rs2_val == 9223372036854775807
# opcode: xor ; op1:x13; op2:x9; dest:x1; op1val:0x0020000000000000;  op2val:0x7fffffffffffffff
TEST_RR_OP(xor, x1, x13, x9, 0x7fdfffffffffffff, 0x0020000000000000, 0x7fffffffffffffff, x17, 48, x3)

# rs1==x28, rs2==x6, rd==x11, rs2_val == 1, rs1_val == 256
# opcode: xor ; op1:x28; op2:x6; dest:x11; op1val:0x0000000000000100;  op2val:0x0000000000000001
TEST_RR_OP(xor, x11, x28, x6, 0x101, 0x0000000000000100, 0x0000000000000001, x17, 56, x3)

# rs1==x2, rs2==x16, rd==x14, rs1_val < 0 and rs2_val > 0, rs2_val == 1048576, rs1_val == -549755813889
# opcode: xor ; op1:x2; op2:x16; dest:x14; op1val:0xffffff7fffffffff;  op2val:0x0000000000100000
TEST_RR_OP(xor, x14, x2, x16, 0xffffff7fffefffff, 0xffffff7fffffffff, 0x0000000000100000, x17, 64, x3)

# rs1==x15, rs2==x2, rd==x6, rs1_val == rs2_val, rs1_val == 524288, rs2_val == 524288
# opcode: xor ; op1:x15; op2:x2; dest:x6; op1val:0x0000000000080000;  op2val:0x0000000000080000
TEST_RR_OP(xor, x6, x15, x2, 0x0, 0x0000000000080000, 0x0000000000080000, x17, 72, x3)

# rs1==x8, rs2==x12, rd==x23, rs1_val == 2, rs2_val == 128
# opcode: xor ; op1:x8; op2:x12; dest:x23; op1val:0x0000000000000002;  op2val:0x0000000000000080
TEST_RR_OP(xor, x23, x8, x12, 0x82, 0x0000000000000002, 0x0000000000000080, x17, 80, x3)

# rs1==x30, rs2==x4, rd==x0, rs1_val == 4, rs2_val == 8388608
# opcode: xor ; op1:x30; op2:x4; dest:x0; op1val:0x0000000000000004;  op2val:0x0000000000800000
TEST_RR_OP(xor, x0, x30, x4, 0x800004, 0x0000000000000004, 0x0000000000800000, x17, 88, x3)

# rs1==x18, rs2==x10, rd==x26, rs1_val == 8, 
# opcode: xor ; op1:x18; op2:x10; dest:x26; op1val:0x0000000000000008;  op2val:0xffffffffffffffff
TEST_RR_OP(xor, x26, x18, x10, 0xfffffffffffffff7, 0x0000000000000008, 0xffffffffffffffff, x17, 96, x3)

# rs1==x9, rs2==x7, rd==x5, rs1_val == 16, rs2_val == 67108864
# opcode: xor ; op1:x9; op2:x7; dest:x5; op1val:0x0000000000000010;  op2val:0x0000000004000000
TEST_RR_OP(xor, x5, x9, x7, 0x4000010, 0x0000000000000010, 0x0000000004000000, x17, 104, x3)

# rs1==x6, rs2==x22, rd==x4, rs1_val == 32, rs2_val == -34359738369
# opcode: xor ; op1:x6; op2:x22; dest:x4; op1val:0x0000000000000020;  op2val:0xfffffff7ffffffff
TEST_RR_OP(xor, x4, x6, x22, 0xfffffff7ffffffdf, 0x0000000000000020, 0xfffffff7ffffffff, x17, 112, x3)

# rs1==x4, rs2==x0, rd==x3, rs1_val == 64, rs2_val == 4096
# opcode: xor ; op1:x4; op2:x0; dest:x3; op1val:0x0000000000000040;  op2val:0x0000000000001000
TEST_RR_OP(xor, x3, x4, x0, 0x1040, 0x0000000000000040, 0x0000000000001000, x17, 120, x6)
RVTEST_SIGBASE( x4,signature_x4_0)

# rs1==x0, rs2==x19, rd==x21, rs1_val == 128, rs2_val == 2305843009213693952
# opcode: xor ; op1:x0; op2:x19; dest:x21; op1val:0x0000000000000080;  op2val:0x2000000000000000
TEST_RR_OP(xor, x21, x0, x19, 0x2000000000000080, 0x0000000000000080, 0x2000000000000000, x4, 0, x6)

# rs1==x20, rs2==x26, rd==x28, rs1_val == 512, rs2_val == 576460752303423488
# opcode: xor ; op1:x20; op2:x26; dest:x28; op1val:0x0000000000000200;  op2val:0x0800000000000000
TEST_RR_OP(xor, x28, x20, x26, 0x800000000000200, 0x0000000000000200, 0x0800000000000000, x4, 8, x6)

# rs1==x16, rs2==x14, rd==x19, rs1_val == 1024, rs2_val == 4398046511104
# opcode: xor ; op1:x16; op2:x14; dest:x19; op1val:0x0000000000000400;  op2val:0x0000040000000000
TEST_RR_OP(xor, x19, x16, x14, 0x40000000400, 0x0000000000000400, 0x0000040000000000, x4, 16, x6)

# rs1==x22, rs2==x28, rd==x20, rs1_val == 2048, rs2_val == -129
# opcode: xor ; op1:x22; op2:x28; dest:x20; op1val:0x0000000000000800;  op2val:0xffffffffffffff7f
TEST_RR_OP(xor, x20, x22, x28, 0xfffffffffffff77f, 0x0000000000000800, 0xffffffffffffff7f, x4, 24, x6)

# rs1==x19, rs2==x31, rd==x16, rs1_val == 4096, rs2_val == -4097
# opcode: xor ; op1:x19; op2:x31; dest:x16; op1val:0x0000000000001000;  op2val:0xffffffffffffefff
TEST_RR_OP(xor, x16, x19, x31, 0xffffffffffffffff, 0x0000000000001000, 0xffffffffffffefff, x4, 32, x6)

# rs1==x23, rs2==x5, rd==x22, rs1_val == 8192, rs2_val == 4
# opcode: xor ; op1:x23; op2:x5; dest:x22; op1val:0x0000000000002000;  op2val:0x0000000000000004
TEST_RR_OP(xor, x22, x23, x5, 0x2004, 0x0000000000002000, 0x0000000000000004, x4, 40, x6)

# rs1==x1, rs2==x21, rd==x13, rs1_val == 16384, 
# opcode: xor ; op1:x1; op2:x21; dest:x13; op1val:0x0000000000004000;  op2val:0x0000040000000000
TEST_RR_OP(xor, x13, x1, x21, 0x40000004000, 0x0000000000004000, 0x0000040000000000, x4, 48, x6)

# rs1==x12, rs2==x18, rd==x9, rs1_val == 32768, 
# opcode: xor ; op1:x12; op2:x18; dest:x9; op1val:0x0000000000008000;  op2val:0x0000000000001000
TEST_RR_OP(xor, x9, x12, x18, 0x9000, 0x0000000000008000, 0x0000000000001000, x4, 56, x6)

# rs1==x14, rs2==x11, rd==x2, rs1_val == 65536, rs2_val == 36028797018963968
# opcode: xor ; op1:x14; op2:x11; dest:x2; op1val:0x0000000000010000;  op2val:0x0080000000000000
TEST_RR_OP(xor, x2, x14, x11, 0x80000000010000, 0x0000000000010000, 0x0080000000000000, x4, 64, x6)

# rs1==x21, rs2==x15, rd==x25, rs1_val == 131072, rs2_val == -65
# opcode: xor ; op1:x21; op2:x15; dest:x25; op1val:0x0000000000020000;  op2val:0xffffffffffffffbf
TEST_RR_OP(xor, x25, x21, x15, 0xfffffffffffdffbf, 0x0000000000020000, 0xffffffffffffffbf, x4, 72, x6)

# rs1==x3, rs2==x13, rd==x15, rs1_val == 262144, rs2_val == 2
# opcode: xor ; op1:x3; op2:x13; dest:x15; op1val:0x0000000000040000;  op2val:0x0000000000000002
TEST_RR_OP(xor, x15, x3, x13, 0x40002, 0x0000000000040000, 0x0000000000000002, x4, 80, x6)

# rs1==x17, rs2==x29, rd==x12, rs1_val == 2097152, rs2_val == -8589934593
# opcode: xor ; op1:x17; op2:x29; dest:x12; op1val:0x0000000000200000;  op2val:0xfffffffdffffffff
TEST_RR_OP(xor, x12, x17, x29, 0xfffffffdffdfffff, 0x0000000000200000, 0xfffffffdffffffff, x4, 88, x6)

# rs1==x5, rs2==x3, rd==x27, rs1_val == 4194304, rs2_val == -281474976710657
# opcode: xor ; op1:x5; op2:x3; dest:x27; op1val:0x0000000000400000;  op2val:0xfffeffffffffffff
TEST_RR_OP(xor, x27, x5, x3, 0xfffeffffffbfffff, 0x0000000000400000, 0xfffeffffffffffff, x4, 96, x6)

# rs1==x31, rs2==x1, rd==x17, rs1_val == 8388608, rs2_val == 68719476736
# opcode: xor ; op1:x31; op2:x1; dest:x17; op1val:0x0000000000800000;  op2val:0x0000001000000000
TEST_RR_OP(xor, x17, x31, x1, 0x1000800000, 0x0000000000800000, 0x0000001000000000, x4, 104, x6)

# rs1==x10, rs2==x17, rd==x18, rs1_val == 16777216, 
# opcode: xor ; op1:x10; op2:x17; dest:x18; op1val:0x0000000001000000;  op2val:0xc000000000000000
TEST_RR_OP(xor, x18, x10, x17, 0xc000000001000000, 0x0000000001000000, 0xc000000000000000, x4, 112, x6)

# rs1==x7, rs2==x27, rd==x10, rs1_val == 33554432, 
# opcode: xor ; op1:x7; op2:x27; dest:x10; op1val:0x0000000002000000;  op2val:0x0000000000000001
TEST_RR_OP(xor, x10, x7, x27, 0x2000001, 0x0000000002000000, 0x0000000000000001, x4, 120, x6)

# rs1_val == 67108864, rs2_val == -68719476737
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000004000000;  op2val:0xffffffefffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffeffbffffff, 0x0000000004000000, 0xffffffefffffffff, x4, 128, x6)

# rs1_val == 134217728, rs2_val == 140737488355328
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000008000000;  op2val:0x0000800000000000
TEST_RR_OP(xor, x12, x10, x11, 0x800008000000, 0x0000000008000000, 0x0000800000000000, x4, 136, x6)

# rs1_val == 268435456, rs2_val == 274877906944
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000004000000000
TEST_RR_OP(xor, x12, x10, x11, 0x4010000000, 0x0000000010000000, 0x0000004000000000, x4, 144, x6)

# rs1_val == 536870912, rs2_val == -8796093022209
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000020000000;  op2val:0xfffff7ffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffff7ffdfffffff, 0x0000000020000000, 0xfffff7ffffffffff, x4, 152, x6)

# rs1_val == 1073741824, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000040000000;  op2val:0xfffeffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffeffffbfffffff, 0x0000000040000000, 0xfffeffffffffffff, x4, 160, x6)

# rs1_val == 2147483648, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000080000000;  op2val:0x0000000000000002
TEST_RR_OP(xor, x12, x10, x11, 0x80000002, 0x0000000080000000, 0x0000000000000002, x4, 168, x6)

# rs1_val == 4294967296, rs2_val == -274877906945
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0xffffffbfffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffbeffffffff, 0x0000000100000000, 0xffffffbfffffffff, x4, 176, x6)

# rs1_val == 8589934592, rs2_val == 34359738368
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000200000000;  op2val:0x0000000800000000
TEST_RR_OP(xor, x12, x10, x11, 0xa00000000, 0x0000000200000000, 0x0000000800000000, x4, 184, x6)

# rs1_val == 17179869184, rs2_val == 1152921504606846976
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000400000000;  op2val:0x1000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x1000000400000000, 0x0000000400000000, 0x1000000000000000, x4, 192, x6)

# rs1_val == 34359738368, rs2_val == -2305843009213693953
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000800000000;  op2val:0xdfffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xdffffff7ffffffff, 0x0000000800000000, 0xdfffffffffffffff, x4, 200, x6)

# rs1_val == 68719476736, rs2_val == -1125899906842625
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000001000000000;  op2val:0xfffbffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffbffefffffffff, 0x0000001000000000, 0xfffbffffffffffff, x4, 208, x6)

# rs1_val == 137438953472, rs2_val == 262144
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0x0000000000040000
TEST_RR_OP(xor, x12, x10, x11, 0x2000040000, 0x0000002000000000, 0x0000000000040000, x4, 216, x6)

# rs1_val == 274877906944, rs2_val == -4503599627370497
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000004000000000;  op2val:0xffefffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffefffbfffffffff, 0x0000004000000000, 0xffefffffffffffff, x4, 224, x6)

# rs1_val == 549755813888, rs2_val == -131073
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000008000000000;  op2val:0xfffffffffffdffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffff7ffffdffff, 0x0000008000000000, 0xfffffffffffdffff, x4, 232, x6)

# rs1_val == 1099511627776, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000010000000000;  op2val:0x0000001000000000
TEST_RR_OP(xor, x12, x10, x11, 0x11000000000, 0x0000010000000000, 0x0000001000000000, x4, 240, x6)

# rs1_val == 2199023255552, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x0000000000000080
TEST_RR_OP(xor, x12, x10, x11, 0x20000000080, 0x0000020000000000, 0x0000000000000080, x4, 248, x6)

# rs1_val == 4398046511104, rs2_val == -4294967297
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffbfeffffffff, 0x0000040000000000, 0xfffffffeffffffff, x4, 256, x6)

# rs1_val == 8796093022208, rs2_val == -70368744177665
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000080000000000;  op2val:0xffffbfffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffb7ffffffffff, 0x0000080000000000, 0xffffbfffffffffff, x4, 264, x6)

# rs1_val == 17592186044416, rs2_val == 32
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000100000000000;  op2val:0x0000000000000020
TEST_RR_OP(xor, x12, x10, x11, 0x100000000020, 0x0000100000000000, 0x0000000000000020, x4, 272, x6)

# rs1_val == 35184372088832, rs2_val == -2251799813685249
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000200000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfff7dfffffffffff, 0x0000200000000000, 0xfff7ffffffffffff, x4, 280, x6)

# rs1_val == 70368744177664, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000400000000000;  op2val:0xfff7ffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfff7bfffffffffff, 0x0000400000000000, 0xfff7ffffffffffff, x4, 288, x6)

# rs1_val == 140737488355328, rs2_val == -4398046511105
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000800000000000;  op2val:0xfffffbffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffff7bffffffffff, 0x0000800000000000, 0xfffffbffffffffff, x4, 296, x6)

# rs1_val == 281474976710656, rs2_val == 17179869184
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0001000000000000;  op2val:0x0000000400000000
TEST_RR_OP(xor, x12, x10, x11, 0x1000400000000, 0x0001000000000000, 0x0000000400000000, x4, 304, x6)

# rs1_val == 562949953421312, rs2_val == 35184372088832
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0002000000000000;  op2val:0x0000200000000000
TEST_RR_OP(xor, x12, x10, x11, 0x2200000000000, 0x0002000000000000, 0x0000200000000000, x4, 312, x6)

# rs1_val == 1125899906842624, rs2_val == -524289
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0004000000000000;  op2val:0xfffffffffff7ffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffbfffffff7ffff, 0x0004000000000000, 0xfffffffffff7ffff, x4, 320, x6)

# rs1_val == 2251799813685248, rs2_val == -2097153
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0xffffffffffdfffff
TEST_RR_OP(xor, x12, x10, x11, 0xfff7ffffffdfffff, 0x0008000000000000, 0xffffffffffdfffff, x4, 328, x6)

# rs1_val == 4503599627370496, rs2_val == -8193
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0010000000000000;  op2val:0xffffffffffffdfff
TEST_RR_OP(xor, x12, x10, x11, 0xffefffffffffdfff, 0x0010000000000000, 0xffffffffffffdfff, x4, 336, x6)

# rs1_val == 18014398509481984, rs2_val == -18014398509481985
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0040000000000000;  op2val:0xffbfffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffffffff, 0x0040000000000000, 0xffbfffffffffffff, x4, 344, x6)

# rs1_val == 36028797018963968, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0080000000000000;  op2val:0xffffbfffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xff7fbfffffffffff, 0x0080000000000000, 0xffffbfffffffffff, x4, 352, x6)

# rs1_val == 72057594037927936, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0100000000000000;  op2val:0xc000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xc100000000000000, 0x0100000000000000, 0xc000000000000000, x4, 360, x6)

# rs1_val == 144115188075855872, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0xfffffffffffffffa
TEST_RR_OP(xor, x12, x10, x11, 0xfdfffffffffffffa, 0x0200000000000000, 0xfffffffffffffffa, x4, 368, x6)

# rs1_val == 288230376151711744, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0400000000000000;  op2val:0x0080000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x480000000000000, 0x0400000000000000, 0x0080000000000000, x4, 376, x6)

# rs1_val == 576460752303423488, rs2_val == -35184372088833
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xffffdfffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xf7ffdfffffffffff, 0x0800000000000000, 0xffffdfffffffffff, x4, 384, x6)

# rs1_val == 1152921504606846976, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x1000000000000000;  op2val:0x0000000000000080
TEST_RR_OP(xor, x12, x10, x11, 0x1000000000000080, 0x1000000000000000, 0x0000000000000080, x4, 392, x6)

# rs1_val == 2305843009213693952, rs2_val == -32769
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x2000000000000000;  op2val:0xffffffffffff7fff
TEST_RR_OP(xor, x12, x10, x11, 0xdfffffffffff7fff, 0x2000000000000000, 0xffffffffffff7fff, x4, 400, x6)

# rs1_val == 4611686018427387904, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x4000000000000000;  op2val:0xfffffffeffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xbffffffeffffffff, 0x4000000000000000, 0xfffffffeffffffff, x4, 408, x6)

# rs1_val == -2, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffe;  op2val:0x0000000000000001
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffffffff, 0xfffffffffffffffe, 0x0000000000000001, x4, 416, x6)

# rs1_val == -3, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffd;  op2val:0x2000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xdffffffffffffffd, 0xfffffffffffffffd, 0x2000000000000000, x4, 424, x6)

# rs1_val == -5, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffffb;  op2val:0x0000004000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffbffffffffb, 0xfffffffffffffffb, 0x0000004000000000, x4, 432, x6)

# rs1_val == -9, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff7;  op2val:0xffffdfffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x200000000008, 0xfffffffffffffff7, 0xffffdfffffffffff, x4, 440, x6)

# rs1_val == -17, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xfff7ffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x8000000000010, 0xffffffffffffffef, 0xfff7ffffffffffff, x4, 448, x6)

# rs1_val == -33, rs2_val == 8589934592
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffdf;  op2val:0x0000000200000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffdffffffdf, 0xffffffffffffffdf, 0x0000000200000000, x4, 456, x6)

# rs1_val == -65, rs2_val == 8796093022208
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffbf;  op2val:0x0000080000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffff7ffffffffbf, 0xffffffffffffffbf, 0x0000080000000000, x4, 464, x6)

# rs1_val == -129, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffff7f;  op2val:0x0000000001000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffeffff7f, 0xffffffffffffff7f, 0x0000000001000000, x4, 472, x6)

# rs1_val == -257, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffeff;  op2val:0x0000000400000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffbfffffeff, 0xfffffffffffffeff, 0x0000000400000000, x4, 480, x6)

# rs1_val == -513, rs2_val == -2199023255553
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffdff;  op2val:0xfffffdffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x20000000200, 0xfffffffffffffdff, 0xfffffdffffffffff, x4, 488, x6)

# rs1_val == -1025, rs2_val == 562949953421312
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0002000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffdfffffffffbff, 0xfffffffffffffbff, 0x0002000000000000, x4, 496, x6)

# rs1_val == -2049, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffff7ff;  op2val:0x0000000800000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffff7fffff7ff, 0xfffffffffffff7ff, 0x0000000800000000, x4, 504, x6)

# rs2_val == -9007199254740993, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000800000;  op2val:0xffdfffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffdfffffff7fffff, 0x0000000000800000, 0xffdfffffffffffff, x4, 512, x6)

# rs2_val == -36028797018963969, rs1_val == -262145
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffbffff;  op2val:0xff7fffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x80000000040000, 0xfffffffffffbffff, 0xff7fffffffffffff, x4, 520, x6)

# rs2_val == -72057594037927937, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x100000000000000, 0xffffffffffffffff, 0xfeffffffffffffff, x4, 528, x6)

# rs2_val == -144115188075855873, rs1_val == -9007199254740993
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffdfffffffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x220000000000000, 0xffdfffffffffffff, 0xfdffffffffffffff, x4, 536, x6)

# rs2_val == -288230376151711745, rs1_val == -70368744177665
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x400400000000000, 0xffffbfffffffffff, 0xfbffffffffffffff, x4, 544, x6)

# rs2_val == -576460752303423489, rs1_val == -281474976710657
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffeffffffffffff;  op2val:0xf7ffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x801000000000000, 0xfffeffffffffffff, 0xf7ffffffffffffff, x4, 552, x6)

# rs2_val == -1152921504606846977, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffffef;  op2val:0xefffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x1000000000000010, 0xffffffffffffffef, 0xefffffffffffffff, x4, 560, x6)

# rs2_val == -4611686018427387905, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000002000000000;  op2val:0xbfffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xbfffffdfffffffff, 0x0000002000000000, 0xbfffffffffffffff, x4, 568, x6)

# rs2_val == 6148914691236517205, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000020000000000;  op2val:0x5555555555555555
TEST_RR_OP(xor, x12, x10, x11, 0x5555575555555555, 0x0000020000000000, 0x5555555555555555, x4, 576, x6)

# rs2_val == -6148914691236517206, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000001000000;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(xor, x12, x10, x11, 0xaaaaaaaaabaaaaaa, 0x0000000001000000, 0xaaaaaaaaaaaaaaaa, x4, 584, x6)

# rs1_val == -4097, rs2_val == 18014398509481984
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffefff;  op2val:0x0040000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffbfffffffffefff, 0xffffffffffffefff, 0x0040000000000000, x4, 592, x6)

# rs1_val == -8193, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0xfffeffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x1000000002000, 0xffffffffffffdfff, 0xfffeffffffffffff, x4, 600, x6)

# rs1_val == -16385, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffbfff;  op2val:0xfffffff7ffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x800004000, 0xffffffffffffbfff, 0xfffffff7ffffffff, x4, 608, x6)

# rs1_val == -32769, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffff7fff;  op2val:0x0000200000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffdfffffff7fff, 0xffffffffffff7fff, 0x0000200000000000, x4, 616, x6)

# rs1_val == -65537, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x20000010000, 0xfffffffffffeffff, 0xfffffdffffffffff, x4, 624, x6)

# rs1_val == -131073, rs2_val == 281474976710656
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffdffff;  op2val:0x0001000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffefffffffdffff, 0xfffffffffffdffff, 0x0001000000000000, x4, 632, x6)

# rs1_val == -524289, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0x0000020000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffdfffff7ffff, 0xfffffffffff7ffff, 0x0000020000000000, x4, 640, x6)

# rs1_val == -1048577, rs2_val == 8192
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffefffff;  op2val:0x0000000000002000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffefdfff, 0xffffffffffefffff, 0x0000000000002000, x4, 648, x6)

# rs1_val == -2097153, rs2_val == 70368744177664
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0000400000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffbfffffdfffff, 0xffffffffffdfffff, 0x0000400000000000, x4, 656, x6)

# rs1_val == -4194305, rs2_val == 1099511627776
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffbfffff;  op2val:0x0000010000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffeffffbfffff, 0xffffffffffbfffff, 0x0000010000000000, x4, 664, x6)

# rs1_val == -8388609, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffff7fffff;  op2val:0x0000400000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffbfffff7fffff, 0xffffffffff7fffff, 0x0000400000000000, x4, 672, x6)

# rs1_val == -16777217, rs2_val == 1125899906842624
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffeffffff;  op2val:0x0004000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffbfffffeffffff, 0xfffffffffeffffff, 0x0004000000000000, x4, 680, x6)

# rs1_val == -33554433, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffdffffff;  op2val:0x2000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xdffffffffdffffff, 0xfffffffffdffffff, 0x2000000000000000, x4, 688, x6)

# rs1_val == -67108865, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x0000000000002000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffbffdfff, 0xfffffffffbffffff, 0x0000000000002000, x4, 696, x6)

# rs1_val == -134217729, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0x0000800000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffff7ffff7ffffff, 0xfffffffff7ffffff, 0x0000800000000000, x4, 704, x6)

# rs1_val == -268435457, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000000000001
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffeffffffe, 0xffffffffefffffff, 0x0000000000000001, x4, 712, x6)

# rs1_val == -536870913, rs2_val == -17
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffdfffffff;  op2val:0xffffffffffffffef
TEST_RR_OP(xor, x12, x10, x11, 0x20000010, 0xffffffffdfffffff, 0xffffffffffffffef, x4, 720, x6)

# rs1_val == -1073741825, rs2_val == 32768
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffbfffffff;  op2val:0x0000000000008000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffbfff7fff, 0xffffffffbfffffff, 0x0000000000008000, x4, 728, x6)

# rs1_val == -2147483649, rs2_val == 131072
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffff7fffffff;  op2val:0x0000000000020000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffff7ffdffff, 0xffffffff7fffffff, 0x0000000000020000, x4, 736, x6)

# rs1_val == -4294967297, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0000004000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffbeffffffff, 0xfffffffeffffffff, 0x0000004000000000, x4, 744, x6)

# rs1_val == -8589934593, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffdffffffff;  op2val:0x8000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x7ffffffdffffffff, 0xfffffffdffffffff, 0x8000000000000000, x4, 752, x6)

# rs1_val == -17179869185, rs2_val == -137438953473
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xffffffdfffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x2400000000, 0xfffffffbffffffff, 0xffffffdfffffffff, x4, 760, x6)

# rs1_val == -34359738369, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffff7ffffffff;  op2val:0x0000000000002000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffff7ffffdfff, 0xfffffff7ffffffff, 0x0000000000002000, x4, 768, x6)

# rs1_val == -68719476737, rs2_val == -16777217
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffeffffff
TEST_RR_OP(xor, x12, x10, x11, 0x1001000000, 0xffffffefffffffff, 0xfffffffffeffffff, x4, 776, x6)

# rs1_val == -137438953473, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffdfffffffff;  op2val:0xfdffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x200002000000000, 0xffffffdfffffffff, 0xfdffffffffffffff, x4, 784, x6)

# rs1_val == -274877906945, rs2_val == 2048
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000000000000800
TEST_RR_OP(xor, x12, x10, x11, 0xffffffbffffff7ff, 0xffffffbfffffffff, 0x0000000000000800, x4, 792, x6)

# rs1_val == -1099511627777, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffeffffffffff;  op2val:0x0000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffffeffffffffff, 0xfffffeffffffffff, 0x0000000000000000, x4, 800, x6)

# rs1_val == -2199023255553, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffbffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x4020000000000, 0xfffffdffffffffff, 0xfffbffffffffffff, x4, 808, x6)

# rs1_val == -4398046511105, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffbffffffffff;  op2val:0x0000000000000001
TEST_RR_OP(xor, x12, x10, x11, 0xfffffbfffffffffe, 0xfffffbffffffffff, 0x0000000000000001, x4, 816, x6)

# rs1_val == -8796093022209, rs2_val == 549755813888
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffff7ffffffffff;  op2val:0x0000008000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffff77fffffffff, 0xfffff7ffffffffff, 0x0000008000000000, x4, 824, x6)

# rs1_val == -17592186044417, rs2_val == -33554433
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(xor, x12, x10, x11, 0x100002000000, 0xffffefffffffffff, 0xfffffffffdffffff, x4, 832, x6)

# rs1_val == -35184372088833, rs2_val == 288230376151711744
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffdfffffffffff;  op2val:0x0400000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfbffdfffffffffff, 0xffffdfffffffffff, 0x0400000000000000, x4, 840, x6)

# rs1_val == -140737488355329, rs2_val == -17179869185
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffff7fffffffffff;  op2val:0xfffffffbffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x800400000000, 0xffff7fffffffffff, 0xfffffffbffffffff, x4, 848, x6)

# rs1_val == -562949953421313, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffdffffffffffff;  op2val:0xfffffffffdffffff
TEST_RR_OP(xor, x12, x10, x11, 0x2000002000000, 0xfffdffffffffffff, 0xfffffffffdffffff, x4, 856, x6)

# rs1_val == -2251799813685249, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfff7ffffffffffff;  op2val:0xfeffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x108000000000000, 0xfff7ffffffffffff, 0xfeffffffffffffff, x4, 864, x6)

# rs1_val == -4503599627370497, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffefffffffffffff;  op2val:0x0400000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfbefffffffffffff, 0xffefffffffffffff, 0x0400000000000000, x4, 872, x6)

# rs1_val == -18014398509481985, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(xor, x12, x10, x11, 0xffbffffffffffffc, 0xffbfffffffffffff, 0x0000000000000003, x4, 880, x6)

# rs1_val == -36028797018963969, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xff7fffffffffffff;  op2val:0x0000000000000004
TEST_RR_OP(xor, x12, x10, x11, 0xff7ffffffffffffb, 0xff7fffffffffffff, 0x0000000000000004, x4, 888, x6)

# rs2_val == -562949953421313, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffff7ffffff;  op2val:0xfffdffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x2000008000000, 0xfffffffff7ffffff, 0xfffdffffffffffff, x4, 896, x6)

# rs1_val == -72057594037927937, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfeffffffffffffff;  op2val:0xfff7ffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x108000000000000, 0xfeffffffffffffff, 0xfff7ffffffffffff, x4, 904, x6)

# rs1_val == -144115188075855873, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfdffffffffffffff;  op2val:0xfffffdffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x200020000000000, 0xfdffffffffffffff, 0xfffffdffffffffff, x4, 912, x6)

# rs1_val == -288230376151711745, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfbffffffffffffff;  op2val:0xfbffffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x0, 0xfbffffffffffffff, 0xfbffffffffffffff, x4, 920, x6)

# rs1_val == -576460752303423489, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0xaaaaaaaaaaaaaaaa
TEST_RR_OP(xor, x12, x10, x11, 0x5d55555555555555, 0xf7ffffffffffffff, 0xaaaaaaaaaaaaaaaa, x4, 928, x6)

# rs1_val == -1152921504606846977, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xefffffffffffffff;  op2val:0x0080000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xef7fffffffffffff, 0xefffffffffffffff, 0x0080000000000000, x4, 936, x6)

# rs1_val == -2305843009213693953, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0x0000000000000003
TEST_RR_OP(xor, x12, x10, x11, 0xdffffffffffffffc, 0xdfffffffffffffff, 0x0000000000000003, x4, 944, x6)

# rs1_val == -4611686018427387905, rs2_val == -513
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xbfffffffffffffff;  op2val:0xfffffffffffffdff
TEST_RR_OP(xor, x12, x10, x11, 0x4000000000000200, 0xbfffffffffffffff, 0xfffffffffffffdff, x4, 952, x6)

# rs1_val == -6148914691236517206, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xff7fffffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x55d5555555555555, 0xaaaaaaaaaaaaaaaa, 0xff7fffffffffffff, x4, 960, x6)

# rs2_val == 8, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffeffff;  op2val:0x0000000000000008
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffffefff7, 0xfffffffffffeffff, 0x0000000000000008, x4, 968, x6)

# rs2_val == 16, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xf7ffffffffffffff;  op2val:0x0000000000000010
TEST_RR_OP(xor, x12, x10, x11, 0xf7ffffffffffffef, 0xf7ffffffffffffff, 0x0000000000000010, x4, 976, x6)

# rs2_val == 64, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0x0000000000000040
TEST_RR_OP(xor, x12, x10, x11, 0xffffffefffffffbf, 0xffffffefffffffff, 0x0000000000000040, x4, 984, x6)

# rs2_val == 256, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000020;  op2val:0x0000000000000100
TEST_RR_OP(xor, x12, x10, x11, 0x120, 0x0000000000000020, 0x0000000000000100, x4, 992, x6)

# rs2_val == 512, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000000000200
TEST_RR_OP(xor, x12, x10, x11, 0x200000000000200, 0x0200000000000000, 0x0000000000000200, x4, 1000, x6)

# rs2_val == 1024, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0x0000000000000400
TEST_RR_OP(xor, x12, x10, x11, 0xaaaaaaaaaaaaaeaa, 0xaaaaaaaaaaaaaaaa, 0x0000000000000400, x4, 1008, x6)

# rs2_val == 16384, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffefffffffffff;  op2val:0x0000000000004000
TEST_RR_OP(xor, x12, x10, x11, 0xffffefffffffbfff, 0xffffefffffffffff, 0x0000000000004000, x4, 1016, x6)

# rs2_val == 65536, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000100000000;  op2val:0x0000000000010000
TEST_RR_OP(xor, x12, x10, x11, 0x100010000, 0x0000000100000000, 0x0000000000010000, x4, 1024, x6)

# rs2_val == 2097152, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffffdfff;  op2val:0x0000000000200000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffdfdfff, 0xffffffffffffdfff, 0x0000000000200000, x4, 1032, x6)

# rs2_val == 4194304, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000002000;  op2val:0x0000000000400000
TEST_RR_OP(xor, x12, x10, x11, 0x402000, 0x0000000000002000, 0x0000000000400000, x4, 1040, x6)

# rs2_val == 33554432, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffefffffff;  op2val:0x0000000002000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffedffffff, 0xffffffffefffffff, 0x0000000002000000, x4, 1048, x6)

# rs2_val == 134217728, rs1_val == -1125899906842625
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0x0000000008000000
TEST_RR_OP(xor, x12, x10, x11, 0xfffbfffff7ffffff, 0xfffbffffffffffff, 0x0000000008000000, x4, 1056, x6)

# rs2_val == 268435456, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0000000010000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffff7fefffffff, 0xffffff7fffffffff, 0x0000000010000000, x4, 1064, x6)

# rs2_val == 536870912, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffbfffffffffff;  op2val:0x0000000020000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffbfffdfffffff, 0xffffbfffffffffff, 0x0000000020000000, x4, 1072, x6)

# rs2_val == 1073741824, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000200000;  op2val:0x0000000040000000
TEST_RR_OP(xor, x12, x10, x11, 0x40200000, 0x0000000000200000, 0x0000000040000000, x4, 1080, x6)

# rs2_val == 2147483648, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0200000000000000;  op2val:0x0000000080000000
TEST_RR_OP(xor, x12, x10, x11, 0x200000080000000, 0x0200000000000000, 0x0000000080000000, x4, 1088, x6)

# rs2_val == 4294967296, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000010000000;  op2val:0x0000000100000000
TEST_RR_OP(xor, x12, x10, x11, 0x110000000, 0x0000000010000000, 0x0000000100000000, x4, 1096, x6)

# rs2_val == 2251799813685248, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0008000000000000;  op2val:0x0008000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x0, 0x0008000000000000, 0x0008000000000000, x4, 1104, x6)

# rs2_val == 4503599627370496, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffff7fffffffff;  op2val:0x0010000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffefff7fffffffff, 0xffffff7fffffffff, 0x0010000000000000, x4, 1112, x6)

# rs2_val == 9007199254740992, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffeffffffff;  op2val:0x0020000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffdffffeffffffff, 0xfffffffeffffffff, 0x0020000000000000, x4, 1120, x6)

# rs2_val == 72057594037927936, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffffffdfffff;  op2val:0x0100000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfeffffffffdfffff, 0xffffffffffdfffff, 0x0100000000000000, x4, 1128, x6)

# rs2_val == 144115188075855872, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffbff;  op2val:0x0200000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xfdfffffffffffbff, 0xfffffffffffffbff, 0x0200000000000000, x4, 1136, x6)

# rs2_val == 4611686018427387904, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0x4000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0xbffffffffbffffff, 0xfffffffffbffffff, 0x4000000000000000, x4, 1144, x6)

# rs2_val == -2, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xfffffffffffffffe
TEST_RR_OP(xor, x12, x10, x11, 0x4000001, 0xfffffffffbffffff, 0xfffffffffffffffe, x4, 1152, x6)

# rs2_val == -3, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0xfffffffffffffffd
TEST_RR_OP(xor, x12, x10, x11, 0x4000000002, 0xffffffbfffffffff, 0xfffffffffffffffd, x4, 1160, x6)

# rs2_val == -5, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xaaaaaaaaaaaaaaaa;  op2val:0xfffffffffffffffb
TEST_RR_OP(xor, x12, x10, x11, 0x5555555555555551, 0xaaaaaaaaaaaaaaaa, 0xfffffffffffffffb, x4, 1168, x6)

# rs2_val == -9, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffdffffffffff;  op2val:0xfffffffffffffff7
TEST_RR_OP(xor, x12, x10, x11, 0x20000000008, 0xfffffdffffffffff, 0xfffffffffffffff7, x4, 1176, x6)

# rs2_val == -33, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffbffffffffffff;  op2val:0xffffffffffffffdf
TEST_RR_OP(xor, x12, x10, x11, 0x4000000000020, 0xfffbffffffffffff, 0xffffffffffffffdf, x4, 1184, x6)

# rs2_val == -257, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000400000;  op2val:0xfffffffffffffeff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffbffeff, 0x0000000000400000, 0xfffffffffffffeff, x4, 1192, x6)

# rs2_val == -1025, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000007;  op2val:0xfffffffffffffbff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffffffbf8, 0x0000000000000007, 0xfffffffffffffbff, x4, 1200, x6)

# rs2_val == -2049, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffff7ffff;  op2val:0xfffffffffffff7ff
TEST_RR_OP(xor, x12, x10, x11, 0x80800, 0xfffffffffff7ffff, 0xfffffffffffff7ff, x4, 1208, x6)

# rs2_val == -65537, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffbfffffffffffff;  op2val:0xfffffffffffeffff
TEST_RR_OP(xor, x12, x10, x11, 0x40000000010000, 0xffbfffffffffffff, 0xfffffffffffeffff, x4, 1216, x6)

# rs2_val == -262145, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffefffffffff;  op2val:0xfffffffffffbffff
TEST_RR_OP(xor, x12, x10, x11, 0x1000040000, 0xffffffefffffffff, 0xfffffffffffbffff, x4, 1224, x6)

# rs2_val == -1048577, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000003;  op2val:0xffffffffffefffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffffeffffc, 0x0000000000000003, 0xffffffffffefffff, x4, 1232, x6)

# rs2_val == -4194305, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000002000000;  op2val:0xffffffffffbfffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffffdbfffff, 0x0000000002000000, 0xffffffffffbfffff, x4, 1240, x6)

# rs2_val == -8388609, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xffffffffff7fffff
TEST_RR_OP(xor, x12, x10, x11, 0xf7ffffffff7fffff, 0x0800000000000000, 0xffffffffff7fffff, x4, 1248, x6)

# rs2_val == -67108865, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffbffffffff;  op2val:0xfffffffffbffffff
TEST_RR_OP(xor, x12, x10, x11, 0x404000000, 0xfffffffbffffffff, 0xfffffffffbffffff, x4, 1256, x6)

# rs2_val == -134217729, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000040000;  op2val:0xfffffffff7ffffff
TEST_RR_OP(xor, x12, x10, x11, 0xfffffffff7fbffff, 0x0000000000040000, 0xfffffffff7ffffff, x4, 1264, x6)

# rs2_val == 17592186044416, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xffffffbfffffffff;  op2val:0x0000100000000000
TEST_RR_OP(xor, x12, x10, x11, 0xffffefbfffffffff, 0xffffffbfffffffff, 0x0000100000000000, x4, 1272, x6)

# rs2_val == -268435457, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000009;  op2val:0xffffffffefffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffeffffff6, 0x0000000000000009, 0xffffffffefffffff, x4, 1280, x6)

# rs2_val == -536870913, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffbffffff;  op2val:0xffffffffdfffffff
TEST_RR_OP(xor, x12, x10, x11, 0x24000000, 0xfffffffffbffffff, 0xffffffffdfffffff, x4, 1288, x6)

# rs2_val == 137438953472, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000020000;  op2val:0x0000002000000000
TEST_RR_OP(xor, x12, x10, x11, 0x2000020000, 0x0000000000020000, 0x0000002000000000, x4, 1296, x6)

# rs2_val == -549755813889, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000100;  op2val:0xffffff7fffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffff7ffffffeff, 0x0000000000000100, 0xffffff7fffffffff, x4, 1304, x6)

# rs2_val == -1099511627777, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xdfffffffffffffff;  op2val:0xfffffeffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0x2000010000000000, 0xdfffffffffffffff, 0xfffffeffffffffff, x4, 1312, x6)

# rs2_val == -2147483649, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0xfffffffffffffff9;  op2val:0xffffffff7fffffff
TEST_RR_OP(xor, x12, x10, x11, 0x80000006, 0xfffffffffffffff9, 0xffffffff7fffffff, x4, 1320, x6)

# rs2_val == -17592186044417, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000040000000000;  op2val:0xffffefffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffebffffffffff, 0x0000040000000000, 0xffffefffffffffff, x4, 1328, x6)

# rs2_val == -1073741825, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000010;  op2val:0xffffffffbfffffff
TEST_RR_OP(xor, x12, x10, x11, 0xffffffffbfffffef, 0x0000000000000010, 0xffffffffbfffffff, x4, 1336, x6)

# rs2_val == -140737488355329, 
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0800000000000000;  op2val:0xffff7fffffffffff
TEST_RR_OP(xor, x12, x10, x11, 0xf7ff7fffffffffff, 0x0800000000000000, 0xffff7fffffffffff, x4, 1344, x6)

# rs1_val == (-2**(xlen-1)), rs1_val < 0 and rs2_val < 0, rs1_val == -9223372036854775808, rs1_val != rs2_val
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x8000000000000000;  op2val:0xfffffffffffffff9
TEST_RR_OP(xor, x12, x10, x11, 0x7ffffffffffffff9, 0x8000000000000000, 0xfffffffffffffff9, x4, 1352, x6)

# rs1_val == 1, rs1_val > 0 and rs2_val > 0, rs2_val == 2199023255552
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000001;  op2val:0x0000020000000000
TEST_RR_OP(xor, x12, x10, x11, 0x20000000001, 0x0000000000000001, 0x0000020000000000, x4, 1360, x6)

# rs1_val == 4, rs2_val == 8388608
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000004;  op2val:0x0000000000800000
TEST_RR_OP(xor, x12, x10, x11, 0x800004, 0x0000000000000004, 0x0000000000800000, x4, 1368, x6)

# rs1_val == 64, rs2_val == 4096
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000040;  op2val:0x0000000000001000
TEST_RR_OP(xor, x12, x10, x11, 0x1040, 0x0000000000000040, 0x0000000000001000, x4, 1376, x6)

# rs1_val == 128, rs2_val == 2305843009213693952
# opcode: xor ; op1:x10; op2:x11; dest:x12; op1val:0x0000000000000080;  op2val:0x2000000000000000
TEST_RR_OP(xor, x12, x10, x11, 0x2000000000000080, 0x0000000000000080, 0x2000000000000000, x4, 1384, x6)
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
    .fill 16*(XLEN/32),4,0xdeadbeef


signature_x4_0:
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
