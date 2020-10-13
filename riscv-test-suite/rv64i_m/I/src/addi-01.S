
#This assembly file tests the addi instruction of the RISC-V I extension for the addi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",addi)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 == rd, rs1==x23, rd==x23, rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 256, imm_val == 256
# opcode: addi ; op1:x23; dest:x23; op1val:0x0000000000000100;  immval:256
TEST_IMM_OP( addi, x23, x23, 0x200, 0x0000000000000100, 256, x4, 0, x3)

# rs1 != rd, rs1==x19, rd==x8, rs1_val != imm_val, rs1_val > 0 and imm_val < 0, rs1_val == 140737488355328, imm_val == -9
# opcode: addi ; op1:x19; dest:x8; op1val:0x0000800000000000;  immval:-9
TEST_IMM_OP( addi, x8, x19, 0x7ffffffffff7, 0x0000800000000000, -9, x4, 8, x3)

# rs1==x8, rd==x22, rs1_val < 0 and imm_val > 0, rs1_val == -129, imm_val == 1365
# opcode: addi ; op1:x8; dest:x22; op1val:0xffffffffffffff7f;  immval:1365
TEST_IMM_OP( addi, x22, x8, 0x4d4, 0xffffffffffffff7f, 1365, x4, 16, x3)

# rs1==x29, rd==x30, rs1_val < 0 and imm_val < 0, rs1_val == -2251799813685249
# opcode: addi ; op1:x29; dest:x30; op1val:0xfff7ffffffffffff;  immval:-1024
TEST_IMM_OP( addi, x30, x29, 0xfff7fffffffffbff, 0xfff7ffffffffffff, -1024, x4, 24, x3)

# rs1==x13, rd==x26, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808
# opcode: addi ; op1:x13; dest:x26; op1val:0x8000000000000000;  immval:-6
TEST_IMM_OP( addi, x26, x13, 0x7ffffffffffffffa, 0x8000000000000000, -6, x4, 32, x3)

# rs1==x5, rd==x1, rs1_val == 0, imm_val == 1
# opcode: addi ; op1:x5; dest:x1; op1val:0x0000000000000000;  immval:1
TEST_IMM_OP( addi, x1, x5, 0x1, 0x0000000000000000, 1, x4, 40, x3)

# rs1==x7, rd==x6, rs1_val == (2**(xlen-1)-1), imm_val == -3, rs1_val == 9223372036854775807
# opcode: addi ; op1:x7; dest:x6; op1val:0x7fffffffffffffff;  immval:-3
TEST_IMM_OP( addi, x6, x7, 0x7ffffffffffffffc, 0x7fffffffffffffff, -3, x4, 48, x3)

# rs1==x26, rd==x28, rs1_val == 1, imm_val == 4
# opcode: addi ; op1:x26; dest:x28; op1val:0x0000000000000001;  immval:4
TEST_IMM_OP( addi, x28, x26, 0x5, 0x0000000000000001, 4, x4, 56, x3)

# rs1==x24, rd==x16, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == 2147483648
# opcode: addi ; op1:x24; dest:x16; op1val:0x0000000080000000;  immval:-2048
TEST_IMM_OP( addi, x16, x24, 0x7ffff800, 0x0000000080000000, -2048, x4, 64, x3)

# rs1==x9, rd==x25, imm_val == 0, rs1_val == 17179869184
# opcode: addi ; op1:x9; dest:x25; op1val:0x0000000400000000;  immval:0
TEST_IMM_OP( addi, x25, x9, 0x400000000, 0x0000000400000000, 0, x4, 72, x3)

# rs1==x12, rd==x9, imm_val == (2**(12-1)-1), rs1_val == -2147483649, imm_val == 2047
# opcode: addi ; op1:x12; dest:x9; op1val:0xffffffff7fffffff;  immval:2047
TEST_IMM_OP( addi, x9, x12, 0xffffffff800007fe, 0xffffffff7fffffff, 2047, x4, 80, x3)

# rs1==x16, rd==x24, rs1_val == 2, 
# opcode: addi ; op1:x16; dest:x24; op1val:0x0000000000000002;  immval:-4
TEST_IMM_OP( addi, x24, x16, 0xfffffffffffffffe, 0x0000000000000002, -4, x4, 88, x3)

# rs1==x31, rd==x11, rs1_val == 4, 
# opcode: addi ; op1:x31; dest:x11; op1val:0x0000000000000004;  immval:-9
TEST_IMM_OP( addi, x11, x31, 0xfffffffffffffffb, 0x0000000000000004, -9, x4, 96, x3)

# rs1==x2, rd==x10, rs1_val == 8, imm_val == -1366
# opcode: addi ; op1:x2; dest:x10; op1val:0x0000000000000008;  immval:-1366
TEST_IMM_OP( addi, x10, x2, 0xfffffffffffffab2, 0x0000000000000008, -1366, x4, 104, x3)

# rs1==x21, rd==x15, rs1_val == 16, imm_val == 1024
# opcode: addi ; op1:x21; dest:x15; op1val:0x0000000000000010;  immval:1024
TEST_IMM_OP( addi, x15, x21, 0x410, 0x0000000000000010, 1024, x4, 112, x3)

# rs1==x20, rd==x18, rs1_val == 32, 
# opcode: addi ; op1:x20; dest:x18; op1val:0x0000000000000020;  immval:-2048
TEST_IMM_OP( addi, x18, x20, 0xfffffffffffff820, 0x0000000000000020, -2048, x4, 120, x3)

# rs1==x17, rd==x13, rs1_val == 64, 
# opcode: addi ; op1:x17; dest:x13; op1val:0x0000000000000040;  immval:4
TEST_IMM_OP( addi, x13, x17, 0x44, 0x0000000000000040, 4, x4, 128, x3)

# rs1==x10, rd==x12, rs1_val == 128, 
# opcode: addi ; op1:x10; dest:x12; op1val:0x0000000000000080;  immval:1024
TEST_IMM_OP( addi, x12, x10, 0x480, 0x0000000000000080, 1024, x4, 136, x8)

# rs1==x18, rd==x20, rs1_val == 512, imm_val == -17
# opcode: addi ; op1:x18; dest:x20; op1val:0x0000000000000200;  immval:-17
TEST_IMM_OP( addi, x20, x18, 0x1ef, 0x0000000000000200, -17, x4, 144, x8)

# rs1==x3, rd==x7, rs1_val == 1024, 
# opcode: addi ; op1:x3; dest:x7; op1val:0x0000000000000400;  immval:-6
TEST_IMM_OP( addi, x7, x3, 0x3fa, 0x0000000000000400, -6, x4, 152, x8)
RVTEST_SIGBASE( x7,signature_x7_0)

# rs1==x14, rd==x31, rs1_val == 2048, imm_val == 64
# opcode: addi ; op1:x14; dest:x31; op1val:0x0000000000000800;  immval:64
TEST_IMM_OP( addi, x31, x14, 0x840, 0x0000000000000800, 64, x7, 0, x8)

# rs1==x22, rd==x14, rs1_val == 4096, imm_val == -1025
# opcode: addi ; op1:x22; dest:x14; op1val:0x0000000000001000;  immval:-1025
TEST_IMM_OP( addi, x14, x22, 0xbff, 0x0000000000001000, -1025, x7, 8, x8)

# rs1==x25, rd==x27, rs1_val == 8192, 
# opcode: addi ; op1:x25; dest:x27; op1val:0x0000000000002000;  immval:6
TEST_IMM_OP( addi, x27, x25, 0x2006, 0x0000000000002000, 6, x7, 16, x8)

# rs1==x11, rd==x0, rs1_val == 16384, 
# opcode: addi ; op1:x11; dest:x0; op1val:0x0000000000004000;  immval:3
TEST_IMM_OP( addi, x0, x11, 0x4003, 0x0000000000004000, 3, x7, 24, x8)

# rs1==x15, rd==x29, rs1_val == 32768, imm_val == 32
# opcode: addi ; op1:x15; dest:x29; op1val:0x0000000000008000;  immval:32
TEST_IMM_OP( addi, x29, x15, 0x8020, 0x0000000000008000, 32, x7, 32, x8)

# rs1==x1, rd==x3, rs1_val == 65536, 
# opcode: addi ; op1:x1; dest:x3; op1val:0x0000000000010000;  immval:4
TEST_IMM_OP( addi, x3, x1, 0x10004, 0x0000000000010000, 4, x7, 40, x8)

# rs1==x27, rd==x5, rs1_val == 131072, 
# opcode: addi ; op1:x27; dest:x5; op1val:0x0000000000020000;  immval:-9
TEST_IMM_OP( addi, x5, x27, 0x1fff7, 0x0000000000020000, -9, x7, 48, x8)

# rs1==x4, rd==x2, rs1_val == 262144, imm_val == 512
# opcode: addi ; op1:x4; dest:x2; op1val:0x0000000000040000;  immval:512
TEST_IMM_OP( addi, x2, x4, 0x40200, 0x0000000000040000, 512, x7, 56, x8)

# rs1==x0, rd==x21, rs1_val == 524288, imm_val == 8
# opcode: addi ; op1:x0; dest:x21; op1val:0x0000000000080000;  immval:8
TEST_IMM_OP( addi, x21, x0, 0x80008, 0x0000000000080000, 8, x7, 64, x8)

# rs1==x6, rd==x17, rs1_val == 1048576, 
# opcode: addi ; op1:x6; dest:x17; op1val:0x0000000000100000;  immval:9
TEST_IMM_OP( addi, x17, x6, 0x100009, 0x0000000000100000, 9, x7, 72, x8)

# rs1==x28, rd==x19, rs1_val == 2097152, 
# opcode: addi ; op1:x28; dest:x19; op1val:0x0000000000200000;  immval:5
TEST_IMM_OP( addi, x19, x28, 0x200005, 0x0000000000200000, 5, x7, 80, x8)

# rs1==x30, rd==x4, rs1_val == 4194304, 
# opcode: addi ; op1:x30; dest:x4; op1val:0x0000000000400000;  immval:1024
TEST_IMM_OP( addi, x4, x30, 0x400400, 0x0000000000400000, 1024, x7, 88, x8)

# rs1_val == 8388608, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0x8003ff, 0x0000000000800000, 1023, x7, 96, x8)

# rs1_val == 16777216, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xfffc00, 0x0000000001000000, -1024, x7, 104, x8)

# rs1_val == 33554432, imm_val == 128
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x2000080, 0x0000000002000000, 128, x7, 112, x8)

# rs1_val == 67108864, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:32
TEST_IMM_OP( addi, x11, x10, 0x4000020, 0x0000000004000000, 32, x7, 120, x8)

# rs1_val == 134217728, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:9
TEST_IMM_OP( addi, x11, x10, 0x8000009, 0x0000000008000000, 9, x7, 128, x8)

# rs1_val == 268435456, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0xffffc00, 0x0000000010000000, -1024, x7, 136, x8)

# rs1_val == 536870912, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0x1ffffff7, 0x0000000020000000, -9, x7, 144, x8)

# rs1_val == 1073741824, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x40000006, 0x0000000040000000, 6, x7, 152, x8)

# rs1_val == 4294967296, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0x100000555, 0x0000000100000000, 1365, x7, 160, x8)

# rs1_val == 8589934592, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:-1024
TEST_IMM_OP( addi, x11, x10, 0x1fffffc00, 0x0000000200000000, -1024, x7, 168, x8)

# rs1_val == 34359738368, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:32
TEST_IMM_OP( addi, x11, x10, 0x800000020, 0x0000000800000000, 32, x7, 176, x8)

# rs1_val == 68719476736, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x1000000400, 0x0000001000000000, 1024, x7, 184, x8)

# rs1_val == 137438953472, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:-9
TEST_IMM_OP( addi, x11, x10, 0x1ffffffff7, 0x0000002000000000, -9, x7, 192, x8)

# rs1_val == 274877906944, imm_val == -33
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0x3fffffffdf, 0x0000004000000000, -33, x7, 200, x8)

# rs1_val == 549755813888, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:6
TEST_IMM_OP( addi, x11, x10, 0x8000000006, 0x0000008000000000, 6, x7, 208, x8)

# rs1_val == 1099511627776, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xffffffffdf, 0x0000010000000000, -33, x7, 216, x8)

# rs1_val == 2199023255552, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-1
TEST_IMM_OP( addi, x11, x10, 0x1ffffffffff, 0x0000020000000000, -1, x7, 224, x8)

# rs1_val == 4398046511104, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0x3fffffffbff, 0x0000040000000000, -1025, x7, 232, x8)

# rs1_val == 8796093022208, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:-10
TEST_IMM_OP( addi, x11, x10, 0x7fffffffff6, 0x0000080000000000, -10, x7, 240, x8)

# rs1_val == 17592186044416, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:64
TEST_IMM_OP( addi, x11, x10, 0x100000000040, 0x0000100000000000, 64, x7, 248, x8)

# rs1_val == 35184372088832, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:7
TEST_IMM_OP( addi, x11, x10, 0x200000000007, 0x0000200000000000, 7, x7, 256, x8)

# rs1_val == 70368744177664, imm_val == -5
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0x3ffffffffffb, 0x0000400000000000, -5, x7, 264, x8)

# rs1_val == 281474976710656, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:8
TEST_IMM_OP( addi, x11, x10, 0x1000000000008, 0x0001000000000000, 8, x7, 272, x8)

# rs1_val == 562949953421312, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:32
TEST_IMM_OP( addi, x11, x10, 0x2000000000020, 0x0002000000000000, 32, x7, 280, x8)

# rs1_val == 1125899906842624, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0x3fffffffff800, 0x0004000000000000, -2048, x7, 288, x8)

# rs1_val == 2251799813685248, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:128
TEST_IMM_OP( addi, x11, x10, 0x8000000000080, 0x0008000000000000, 128, x7, 296, x8)

# rs1_val == 4503599627370496, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffb, 0x0010000000000000, -5, x7, 304, x8)

# rs1_val == 9007199254740992, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:4
TEST_IMM_OP( addi, x11, x10, 0x20000000000004, 0x0020000000000000, 4, x7, 312, x8)

# rs1_val == 18014398509481984, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:8
TEST_IMM_OP( addi, x11, x10, 0x40000000000008, 0x0040000000000000, 8, x7, 320, x8)

# rs1_val == 36028797018963968, imm_val == 16
# opcode: addi ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:16
TEST_IMM_OP( addi, x11, x10, 0x80000000000010, 0x0080000000000000, 16, x7, 328, x8)

# rs1_val == 72057594037927936, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:16
TEST_IMM_OP( addi, x11, x10, 0x100000000000010, 0x0100000000000000, 16, x7, 336, x8)

# rs1_val == 144115188075855872, imm_val == -513
# opcode: addi ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0x1fffffffffffdff, 0x0200000000000000, -513, x7, 344, x8)

# rs1_val == 288230376151711744, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:2047
TEST_IMM_OP( addi, x11, x10, 0x4000000000007ff, 0x0400000000000000, 2047, x7, 352, x8)

# rs1_val == 576460752303423488, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:64
TEST_IMM_OP( addi, x11, x10, 0x800000000000040, 0x0800000000000000, 64, x7, 360, x8)

# rs1_val == 1152921504606846976, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffa, 0x1000000000000000, -6, x7, 368, x8)

# rs1_val == 2305843009213693952, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0x1ffffffffffffffb, 0x2000000000000000, -5, x7, 376, x8)

# rs1_val == 4611686018427387904, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0x3ffffffffffffff8, 0x4000000000000000, -8, x7, 384, x8)

# rs1_val == -2, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:7
TEST_IMM_OP( addi, x11, x10, 0x5, 0xfffffffffffffffe, 7, x7, 392, x8)

# rs1_val == -3, imm_val == 2
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:2
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffd, 2, x7, 400, x8)

# rs1_val == -5, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0x550, 0xfffffffffffffffb, 1365, x7, 408, x8)

# rs1_val == -4503599627370497, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:5
TEST_IMM_OP( addi, x11, x10, 0xfff0000000000004, 0xffefffffffffffff, 5, x7, 416, x8)

# rs1_val == -9007199254740993, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xffe0000000000003, 0xffdfffffffffffff, 4, x7, 424, x8)

# rs1_val == -18014398509481985, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-1
TEST_IMM_OP( addi, x11, x10, 0xffbffffffffffffe, 0xffbfffffffffffff, -1, x7, 432, x8)

# rs1_val == -36028797018963969, imm_val == -129
# opcode: addi ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xff7fffffffffff7e, 0xff7fffffffffffff, -129, x7, 440, x8)

# rs1_val == -72057594037927937, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-2048
TEST_IMM_OP( addi, x11, x10, 0xfefffffffffff7ff, 0xfeffffffffffffff, -2048, x7, 448, x8)

# rs1_val == -144115188075855873, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:7
TEST_IMM_OP( addi, x11, x10, 0xfe00000000000006, 0xfdffffffffffffff, 7, x7, 456, x8)

# rs1_val == -288230376151711745, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0xfbfffffffffffaa9, 0xfbffffffffffffff, -1366, x7, 464, x8)

# rs1_val == -576460752303423489, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xf7fffffffffffff8, 0xf7ffffffffffffff, -7, x7, 472, x8)

# rs1_val == -1152921504606846977, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xf000000000000005, 0xefffffffffffffff, 6, x7, 480, x8)

# rs1_val == -2305843009213693953, imm_val == -257
# opcode: addi ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xdffffffffffffefe, 0xdfffffffffffffff, -257, x7, 488, x8)

# rs1_val == -4611686018427387905, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-513
TEST_IMM_OP( addi, x11, x10, 0xbffffffffffffdfe, 0xbfffffffffffffff, -513, x7, 496, x8)

# rs1_val == 6148914691236517205, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:32
TEST_IMM_OP( addi, x11, x10, 0x5555555555555575, 0x5555555555555555, 32, x7, 504, x8)

# rs1_val == -6148914691236517206, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:1365
TEST_IMM_OP( addi, x11, x10, 0xaaaaaaaaaaaaafff, 0xaaaaaaaaaaaaaaaa, 1365, x7, 512, x8)

# imm_val == -2, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0x3ffffffffe, 0x0000004000000000, -2, x7, 520, x8)

# imm_val == -65, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xffffffffbf, 0x0000010000000000, -65, x7, 528, x8)

# rs1_val == -9, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffffb, 0xfffffffffffffff7, 4, x7, 536, x8)

# rs1_val == -17, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffffef, 0xffffffffffffffef, 0, x7, 544, x8)

# rs1_val == -33, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0x3df, 0xffffffffffffffdf, 1024, x7, 552, x8)

# rs1_val == -65, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffff7e, 0xffffffffffffffbf, -65, x7, 560, x8)

# rs1_val == -257, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-1025
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffafe, 0xfffffffffffffeff, -1025, x7, 568, x8)

# rs1_val == -513, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:128
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffe7f, 0xfffffffffffffdff, 128, x7, 576, x8)

# rs1_val == -1025, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffffbfb, 0xfffffffffffffbff, -4, x7, 584, x8)

# rs1_val == -2049, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff805, 0xfffffffffffff7ff, 6, x7, 592, x8)

# rs1_val == -4097, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:1024
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffff3ff, 0xffffffffffffefff, 1024, x7, 600, x8)

# rs1_val == -8193, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffdfbe, 0xffffffffffffdfff, -65, x7, 608, x8)

# rs1_val == -16385, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:4
TEST_IMM_OP( addi, x11, x10, 0xffffffffffffc003, 0xffffffffffffbfff, 4, x7, 616, x8)

# rs1_val == -32769, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:128
TEST_IMM_OP( addi, x11, x10, 0xffffffffffff807f, 0xffffffffffff7fff, 128, x7, 624, x8)

# rs1_val == -65537, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xffffffffffff003f, 0xfffffffffffeffff, 64, x7, 632, x8)

# rs1_val == -131073, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-5
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffdfffa, 0xfffffffffffdffff, -5, x7, 640, x8)

# rs1_val == -262145, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xfffffffffffc0007, 0xfffffffffffbffff, 8, x7, 648, x8)

# rs1_val == -524289, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xfffffffffff7ff7e, 0xfffffffffff7ffff, -129, x7, 656, x8)

# rs1_val == -1048577, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:64
TEST_IMM_OP( addi, x11, x10, 0xfffffffffff0003f, 0xffffffffffefffff, 64, x7, 664, x8)

# rs1_val == -2097153, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:-65
TEST_IMM_OP( addi, x11, x10, 0xffffffffffdfffbe, 0xffffffffffdfffff, -65, x7, 672, x8)

# rs1_val == -4194305, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-2
TEST_IMM_OP( addi, x11, x10, 0xffffffffffbffffd, 0xffffffffffbfffff, -2, x7, 680, x8)

# rs1_val == -8388609, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:5
TEST_IMM_OP( addi, x11, x10, 0xffffffffff800004, 0xffffffffff7fffff, 5, x7, 688, x8)

# rs1_val == -16777217, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-3
TEST_IMM_OP( addi, x11, x10, 0xfffffffffefffffc, 0xfffffffffeffffff, -3, x7, 696, x8)

# rs1_val == -33554433, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-8
TEST_IMM_OP( addi, x11, x10, 0xfffffffffdfffff7, 0xfffffffffdffffff, -8, x7, 704, x8)

# rs1_val == -67108865, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:-129
TEST_IMM_OP( addi, x11, x10, 0xfffffffffbffff7e, 0xfffffffffbffffff, -129, x7, 712, x8)

# rs1_val == -134217729, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:-6
TEST_IMM_OP( addi, x11, x10, 0xfffffffff7fffff9, 0xfffffffff7ffffff, -6, x7, 720, x8)

# rs1_val == -268435457, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:0
TEST_IMM_OP( addi, x11, x10, 0xffffffffefffffff, 0xffffffffefffffff, 0, x7, 728, x8)

# rs1_val == -536870913, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:1023
TEST_IMM_OP( addi, x11, x10, 0xffffffffe00003fe, 0xffffffffdfffffff, 1023, x7, 736, x8)

# rs1_val == -1073741825, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:-257
TEST_IMM_OP( addi, x11, x10, 0xffffffffbffffefe, 0xffffffffbfffffff, -257, x7, 744, x8)

# rs1_val == -4294967297, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xfffffffeffffffee, 0xfffffffeffffffff, -17, x7, 752, x8)

# rs1_val == -8589934593, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-33
TEST_IMM_OP( addi, x11, x10, 0xfffffffdffffffde, 0xfffffffdffffffff, -33, x7, 760, x8)

# rs1_val == -17179869185, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:1
TEST_IMM_OP( addi, x11, x10, 0xfffffffc00000000, 0xfffffffbffffffff, 1, x7, 768, x8)

# rs1_val == -34359738369, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:-17
TEST_IMM_OP( addi, x11, x10, 0xfffffff7ffffffee, 0xfffffff7ffffffff, -17, x7, 776, x8)

# rs1_val == -68719476737, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xffffffeffffffff8, 0xffffffefffffffff, -7, x7, 784, x8)

# rs1_val == -137438953473, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xffffffe000000005, 0xffffffdfffffffff, 6, x7, 792, x8)

# rs1_val == -274877906945, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:6
TEST_IMM_OP( addi, x11, x10, 0xffffffc000000005, 0xffffffbfffffffff, 6, x7, 800, x8)

# rs1_val == -549755813889, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:512
TEST_IMM_OP( addi, x11, x10, 0xffffff80000001ff, 0xffffff7fffffffff, 512, x7, 808, x8)

# rs1_val == -1099511627777, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:3
TEST_IMM_OP( addi, x11, x10, 0xffffff0000000002, 0xfffffeffffffffff, 3, x7, 816, x8)

# rs1_val == -2199023255553, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:5
TEST_IMM_OP( addi, x11, x10, 0xfffffe0000000004, 0xfffffdffffffffff, 5, x7, 824, x8)

# rs1_val == -4398046511105, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:32
TEST_IMM_OP( addi, x11, x10, 0xfffffc000000001f, 0xfffffbffffffffff, 32, x7, 832, x8)

# rs1_val == -8796093022209, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:3
TEST_IMM_OP( addi, x11, x10, 0xfffff80000000002, 0xfffff7ffffffffff, 3, x7, 840, x8)

# rs1_val == -17592186044417, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-4
TEST_IMM_OP( addi, x11, x10, 0xffffeffffffffffb, 0xffffefffffffffff, -4, x7, 848, x8)

# rs1_val == -35184372088833, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-1366
TEST_IMM_OP( addi, x11, x10, 0xffffdffffffffaa9, 0xffffdfffffffffff, -1366, x7, 856, x8)

# rs1_val == -70368744177665, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:8
TEST_IMM_OP( addi, x11, x10, 0xffffc00000000007, 0xffffbfffffffffff, 8, x7, 864, x8)

# rs1_val == -140737488355329, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:256
TEST_IMM_OP( addi, x11, x10, 0xffff8000000000ff, 0xffff7fffffffffff, 256, x7, 872, x8)

# rs1_val == -281474976710657, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-7
TEST_IMM_OP( addi, x11, x10, 0xfffefffffffffff8, 0xfffeffffffffffff, -7, x7, 880, x8)

# rs1_val == -562949953421313, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:128
TEST_IMM_OP( addi, x11, x10, 0xfffe00000000007f, 0xfffdffffffffffff, 128, x7, 888, x8)

# rs1_val == -1125899906842625, 
# opcode: addi ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:5
TEST_IMM_OP( addi, x11, x10, 0xfffc000000000004, 0xfffbffffffffffff, 5, x7, 896, x8)

# rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 256, imm_val == 256
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000000100;  immval:256
TEST_IMM_OP( addi, x11, x10, 0x200, 0x0000000000000100, 256, x7, 904, x8)

# rs1_val == 16384, 
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:3
TEST_IMM_OP( addi, x11, x10, 0x4003, 0x0000000000004000, 3, x7, 912, x8)

# rs1_val == 524288, imm_val == 8
# opcode: addi ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:8
TEST_IMM_OP( addi, x11, x10, 0x80008, 0x0000000000080000, 8, x7, 920, x8)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 20*(XLEN/32),4,0xdeadbeef


signature_x7_0:
    .fill 116*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
