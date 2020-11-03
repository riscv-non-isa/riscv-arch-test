
#This assembly file tests the ori instruction of the RISC-V I extension for the ori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",ori)

RVTEST_SIGBASE( x15,signature_x15_1)

# rs1 == rd, rs1==x31, rd==x31, rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 128, imm_val == 128
# opcode: ori ; op1:x31; dest:x31; op1val:0x0000000000000080;  immval:128
TEST_IMM_OP( ori, x31, x31, 0x80, 0x0000000000000080, 128, x15, 0, x18)

# rs1 != rd, rs1==x16, rd==x13, rs1_val != imm_val, rs1_val == 268435456, imm_val == 1
# opcode: ori ; op1:x16; dest:x13; op1val:0x0000000010000000;  immval:1
TEST_IMM_OP( ori, x13, x16, 0x10000001, 0x0000000010000000, 1, x15, 8, x18)

# rs1==x13, rd==x28, rs1_val > 0 and imm_val < 0, rs1_val == 8388608
# opcode: ori ; op1:x13; dest:x28; op1val:0x0000000000800000;  immval:-7
TEST_IMM_OP( ori, x28, x13, 0xfffffffffffffff9, 0x0000000000800000, -7, x15, 16, x18)

# rs1==x8, rd==x4, rs1_val < 0 and imm_val > 0, rs1_val == -70368744177665, imm_val == 256
# opcode: ori ; op1:x8; dest:x4; op1val:0xffffbfffffffffff;  immval:256
TEST_IMM_OP( ori, x4, x8, 0xffffbfffffffffff, 0xffffbfffffffffff, 256, x15, 24, x18)

# rs1==x14, rd==x1, rs1_val < 0 and imm_val < 0, rs1_val == -274877906945
# opcode: ori ; op1:x14; dest:x1; op1val:0xffffffbfffffffff;  immval:-1024
TEST_IMM_OP( ori, x1, x14, 0xffffffffffffffff, 0xffffffbfffffffff, -1024, x15, 32, x18)

# rs1==x11, rd==x25, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808, imm_val == -1366
# opcode: ori ; op1:x11; dest:x25; op1val:0x8000000000000000;  immval:-1366
TEST_IMM_OP( ori, x25, x11, 0xfffffffffffffaaa, 0x8000000000000000, -1366, x15, 40, x18)

# rs1==x6, rd==x10, rs1_val == 0, imm_val == -65
# opcode: ori ; op1:x6; dest:x10; op1val:0x0000000000000000;  immval:-65
TEST_IMM_OP( ori, x10, x6, 0xffffffffffffffbf, 0x0000000000000000, -65, x15, 48, x18)

# rs1==x0, rd==x3, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807
# opcode: ori ; op1:x0; dest:x3; op1val:0x7fffffffffffffff;  immval:-6
TEST_IMM_OP( ori, x3, x0, 0xffffffffffffffff, 0x7fffffffffffffff, -6, x15, 56, x18)

# rs1==x29, rd==x7, rs1_val == 1, 
# opcode: ori ; op1:x29; dest:x7; op1val:0x0000000000000001;  immval:1
TEST_IMM_OP( ori, x7, x29, 0x1, 0x0000000000000001, 1, x15, 64, x18)

# rs1==x26, rd==x6, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -4398046511105
# opcode: ori ; op1:x26; dest:x6; op1val:0xfffffbffffffffff;  immval:-2048
TEST_IMM_OP( ori, x6, x26, 0xffffffffffffffff, 0xfffffbffffffffff, -2048, x15, 72, x18)

# rs1==x4, rd==x29, imm_val == 0, rs1_val == -3
# opcode: ori ; op1:x4; dest:x29; op1val:0xfffffffffffffffd;  immval:0
TEST_IMM_OP( ori, x29, x4, 0xfffffffffffffffd, 0xfffffffffffffffd, 0, x15, 80, x18)

# rs1==x27, rd==x17, imm_val == (2**(12-1)-1), rs1_val == 4194304, imm_val == 2047
# opcode: ori ; op1:x27; dest:x17; op1val:0x0000000000400000;  immval:2047
TEST_IMM_OP( ori, x17, x27, 0x4007ff, 0x0000000000400000, 2047, x15, 88, x18)

# rs1==x12, rd==x9, rs1_val == 2, imm_val == 8
# opcode: ori ; op1:x12; dest:x9; op1val:0x0000000000000002;  immval:8
TEST_IMM_OP( ori, x9, x12, 0xa, 0x0000000000000002, 8, x15, 96, x18)

# rs1==x17, rd==x26, rs1_val == 4, 
# opcode: ori ; op1:x17; dest:x26; op1val:0x0000000000000004;  immval:-4
TEST_IMM_OP( ori, x26, x17, 0xfffffffffffffffc, 0x0000000000000004, -4, x15, 104, x18)

# rs1==x24, rd==x12, rs1_val == 8, 
# opcode: ori ; op1:x24; dest:x12; op1val:0x0000000000000008;  immval:-8
TEST_IMM_OP( ori, x12, x24, 0xfffffffffffffff8, 0x0000000000000008, -8, x15, 112, x18)

# rs1==x25, rd==x23, rs1_val == 16, imm_val == -1025
# opcode: ori ; op1:x25; dest:x23; op1val:0x0000000000000010;  immval:-1025
TEST_IMM_OP( ori, x23, x25, 0xfffffffffffffbff, 0x0000000000000010, -1025, x15, 120, x18)

# rs1==x3, rd==x2, rs1_val == 32, imm_val == 512
# opcode: ori ; op1:x3; dest:x2; op1val:0x0000000000000020;  immval:512
TEST_IMM_OP( ori, x2, x3, 0x220, 0x0000000000000020, 512, x15, 128, x18)

# rs1==x2, rd==x30, rs1_val == 64, 
# opcode: ori ; op1:x2; dest:x30; op1val:0x0000000000000040;  immval:-1025
TEST_IMM_OP( ori, x30, x2, 0xfffffffffffffbff, 0x0000000000000040, -1025, x15, 136, x18)

# rs1==x30, rd==x24, rs1_val == 256, imm_val == 2
# opcode: ori ; op1:x30; dest:x24; op1val:0x0000000000000100;  immval:2
TEST_IMM_OP( ori, x24, x30, 0x102, 0x0000000000000100, 2, x15, 144, x18)

# rs1==x22, rd==x8, rs1_val == 512, 
# opcode: ori ; op1:x22; dest:x8; op1val:0x0000000000000200;  immval:-8
TEST_IMM_OP( ori, x8, x22, 0xfffffffffffffff8, 0x0000000000000200, -8, x15, 152, x18)

# rs1==x19, rd==x5, rs1_val == 1024, 
# opcode: ori ; op1:x19; dest:x5; op1val:0x0000000000000400;  immval:7
TEST_IMM_OP( ori, x5, x19, 0x407, 0x0000000000000400, 7, x15, 160, x18)

# rs1==x28, rd==x22, rs1_val == 2048, 
# opcode: ori ; op1:x28; dest:x22; op1val:0x0000000000000800;  immval:-1025
TEST_IMM_OP( ori, x22, x28, 0xfffffffffffffbff, 0x0000000000000800, -1025, x15, 168, x3)

# rs1==x20, rd==x21, rs1_val == 4096, imm_val == 32
# opcode: ori ; op1:x20; dest:x21; op1val:0x0000000000001000;  immval:32
TEST_IMM_OP( ori, x21, x20, 0x1020, 0x0000000000001000, 32, x15, 176, x3)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x15, rd==x20, rs1_val == 8192, imm_val == 1365
# opcode: ori ; op1:x15; dest:x20; op1val:0x0000000000002000;  immval:1365
TEST_IMM_OP( ori, x20, x15, 0x2555, 0x0000000000002000, 1365, x2, 0, x3)

# rs1==x7, rd==x14, rs1_val == 16384, imm_val == -2
# opcode: ori ; op1:x7; dest:x14; op1val:0x0000000000004000;  immval:-2
TEST_IMM_OP( ori, x14, x7, 0xfffffffffffffffe, 0x0000000000004000, -2, x2, 8, x3)

# rs1==x18, rd==x16, rs1_val == 32768, 
# opcode: ori ; op1:x18; dest:x16; op1val:0x0000000000008000;  immval:7
TEST_IMM_OP( ori, x16, x18, 0x8007, 0x0000000000008000, 7, x2, 16, x3)

# rs1==x1, rd==x0, rs1_val == 65536, imm_val == -9
# opcode: ori ; op1:x1; dest:x0; op1val:0x0000000000010000;  immval:-9
TEST_IMM_OP( ori, x0, x1, 0xfffffffffffffff7, 0x0000000000010000, -9, x2, 24, x3)

# rs1==x21, rd==x11, rs1_val == 131072, 
# opcode: ori ; op1:x21; dest:x11; op1val:0x0000000000020000;  immval:-6
TEST_IMM_OP( ori, x11, x21, 0xfffffffffffffffa, 0x0000000000020000, -6, x2, 32, x3)

# rs1==x23, rd==x19, rs1_val == 262144, 
# opcode: ori ; op1:x23; dest:x19; op1val:0x0000000000040000;  immval:-9
TEST_IMM_OP( ori, x19, x23, 0xfffffffffffffff7, 0x0000000000040000, -9, x2, 40, x3)

# rs1==x9, rd==x27, rs1_val == 524288, 
# opcode: ori ; op1:x9; dest:x27; op1val:0x0000000000080000;  immval:8
TEST_IMM_OP( ori, x27, x9, 0x80008, 0x0000000000080000, 8, x2, 48, x3)

# rs1==x10, rd==x15, rs1_val == 1048576, 
# opcode: ori ; op1:x10; dest:x15; op1val:0x0000000000100000;  immval:-10
TEST_IMM_OP( ori, x15, x10, 0xfffffffffffffff6, 0x0000000000100000, -10, x2, 56, x3)

# rs1==x5, rd==x18, rs1_val == 2097152, 
# opcode: ori ; op1:x5; dest:x18; op1val:0x0000000000200000;  immval:7
TEST_IMM_OP( ori, x18, x5, 0x200007, 0x0000000000200000, 7, x2, 64, x3)

# rs1_val == 16777216, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:32
TEST_IMM_OP( ori, x11, x10, 0x1000020, 0x0000000001000000, 32, x2, 72, x3)

# rs1_val == 33554432, imm_val == -513
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffdff, 0x0000000002000000, -513, x2, 80, x3)

# rs1_val == 67108864, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:256
TEST_IMM_OP( ori, x11, x10, 0x4000100, 0x0000000004000000, 256, x2, 88, x3)

# rs1_val == 134217728, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff6, 0x0000000008000000, -10, x2, 96, x3)

# rs1_val == 536870912, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:9
TEST_IMM_OP( ori, x11, x10, 0x20000009, 0x0000000020000000, 9, x2, 104, x3)

# rs1_val == 1073741824, imm_val == 1024
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0x40000400, 0x0000000040000000, 1024, x2, 112, x3)

# rs1_val == 2147483648, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffdff, 0x0000000080000000, -513, x2, 120, x3)

# rs1_val == 4294967296, imm_val == -3
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffd, 0x0000000100000000, -3, x2, 128, x3)

# rs1_val == 8589934592, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffbf, 0x0000000200000000, -65, x2, 136, x3)

# rs1_val == 17179869184, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:256
TEST_IMM_OP( ori, x11, x10, 0x400000100, 0x0000000400000000, 256, x2, 144, x3)

# rs1_val == 34359738368, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffdff, 0x0000000800000000, -513, x2, 152, x3)

# rs1_val == 68719476736, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:256
TEST_IMM_OP( ori, x11, x10, 0x1000000100, 0x0000001000000000, 256, x2, 160, x3)

# rs1_val == 137438953472, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:8
TEST_IMM_OP( ori, x11, x10, 0x2000000008, 0x0000002000000000, 8, x2, 168, x3)

# rs1_val == 274877906944, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:32
TEST_IMM_OP( ori, x11, x10, 0x4000000020, 0x0000004000000000, 32, x2, 176, x3)

# rs1_val == 549755813888, imm_val == -33
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffdf, 0x0000008000000000, -33, x2, 184, x3)

# rs1_val == 1099511627776, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:256
TEST_IMM_OP( ori, x11, x10, 0x10000000100, 0x0000010000000000, 256, x2, 192, x3)

# rs1_val == 2199023255552, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffc00, 0x0000020000000000, -1024, x2, 200, x3)

# rs1_val == 4398046511104, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffbff, 0x0000040000000000, -1025, x2, 208, x3)

# rs1_val == 8796093022208, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:9
TEST_IMM_OP( ori, x11, x10, 0x80000000009, 0x0000080000000000, 9, x2, 216, x3)

# rs1_val == 17592186044416, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0x1000000007ff, 0x0000100000000000, 2047, x2, 224, x3)

# rs1_val == 35184372088832, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:2
TEST_IMM_OP( ori, x11, x10, 0x200000000002, 0x0000200000000000, 2, x2, 232, x3)

# rs1_val == 70368744177664, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffbf, 0x0000400000000000, -65, x2, 240, x3)

# rs1_val == 140737488355328, imm_val == 4
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:4
TEST_IMM_OP( ori, x11, x10, 0x800000000004, 0x0000800000000000, 4, x2, 248, x3)

# rs1_val == 281474976710656, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:2
TEST_IMM_OP( ori, x11, x10, 0x1000000000002, 0x0001000000000000, 2, x2, 256, x3)

# rs1_val == 562949953421312, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:32
TEST_IMM_OP( ori, x11, x10, 0x2000000000020, 0x0002000000000000, 32, x2, 264, x3)

# rs1_val == 1125899906842624, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:5
TEST_IMM_OP( ori, x11, x10, 0x4000000000005, 0x0004000000000000, 5, x2, 272, x3)

# rs1_val == 2251799813685248, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffc00, 0x0008000000000000, -1024, x2, 280, x3)

# rs1_val == 4503599627370496, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff8, 0x0010000000000000, -8, x2, 288, x3)

# rs1_val == 9007199254740992, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffbff, 0x0020000000000000, -1025, x2, 296, x3)

# rs1_val == 18014398509481984, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0x40000000000555, 0x0040000000000000, 1365, x2, 304, x3)

# rs1_val == 36028797018963968, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffe, 0x0080000000000000, -2, x2, 312, x3)

# rs1_val == 72057594037927936, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffbf, 0x0100000000000000, -65, x2, 320, x3)

# rs1_val == 144115188075855872, imm_val == -5
# opcode: ori ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffb, 0x0200000000000000, -5, x2, 328, x3)

# rs1_val == 288230376151711744, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffd, 0x0400000000000000, -3, x2, 336, x3)

# rs1_val == 576460752303423488, imm_val == 64
# opcode: ori ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:64
TEST_IMM_OP( ori, x11, x10, 0x800000000000040, 0x0800000000000000, 64, x2, 344, x3)

# rs1_val == 1152921504606846976, imm_val == -129
# opcode: ori ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffff7f, 0x1000000000000000, -129, x2, 352, x3)

# rs1_val == 2305843009213693952, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:4
TEST_IMM_OP( ori, x11, x10, 0x2000000000000004, 0x2000000000000000, 4, x2, 360, x3)

# rs1_val == 4611686018427387904, imm_val == 16
# opcode: ori ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:16
TEST_IMM_OP( ori, x11, x10, 0x4000000000000010, 0x4000000000000000, 16, x2, 368, x3)

# rs1_val == -2, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffe, 0xfffffffffffffffe, -2048, x2, 376, x3)

# rs1_val == -2251799813685249, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfff7ffffffffffff, -7, x2, 384, x3)

# rs1_val == -4503599627370497, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:9
TEST_IMM_OP( ori, x11, x10, 0xffefffffffffffff, 0xffefffffffffffff, 9, x2, 392, x3)

# rs1_val == -9007199254740993, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffdfffffffffffff, -2, x2, 400, x3)

# rs1_val == -18014398509481985, imm_val == -17
# opcode: ori ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffbfffffffffffff, -17, x2, 408, x3)

# rs1_val == -36028797018963969, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xff7fffffffffffff, 0xff7fffffffffffff, 8, x2, 416, x3)

# rs1_val == -72057594037927937, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfeffffffffffffff, -1024, x2, 424, x3)

# rs1_val == -144115188075855873, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xfdffffffffffffff, 0xfdffffffffffffff, 2047, x2, 432, x3)

# rs1_val == -288230376151711745, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfbffffffffffffff, -6, x2, 440, x3)

# rs1_val == -576460752303423489, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xf7ffffffffffffff, -17, x2, 448, x3)

# rs1_val == -1152921504606846977, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xefffffffffffffff, -65, x2, 456, x3)

# rs1_val == -2305843009213693953, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xdfffffffffffffff, 0xdfffffffffffffff, 1023, x2, 464, x3)

# rs1_val == -4611686018427387905, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:0
TEST_IMM_OP( ori, x11, x10, 0xbfffffffffffffff, 0xbfffffffffffffff, 0, x2, 472, x3)

# rs1_val == 6148914691236517205, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:3
TEST_IMM_OP( ori, x11, x10, 0x5555555555555557, 0x5555555555555555, 3, x2, 480, x3)

# rs1_val == -6148914691236517206, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xaaaaaaaaaaaaafff, 0xaaaaaaaaaaaaaaaa, 2047, x2, 488, x3)

# imm_val == -257, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000000001;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffeff, 0x0000000000000001, -257, x2, 496, x3)

# rs1_val == -5, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffb, 1365, x2, 504, x3)

# rs1_val == -9, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffff7, -513, x2, 512, x3)

# rs1_val == -17, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:64
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffef, 0xffffffffffffffef, 64, x2, 520, x3)

# rs1_val == -33, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffffdf, -513, x2, 528, x3)

# rs1_val == -65, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffffbf, -5, x2, 536, x3)

# rs1_val == -129, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffff7f, -9, x2, 544, x3)

# rs1_val == -257, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffeff, 0xfffffffffffffeff, -2048, x2, 552, x3)

# rs1_val == -513, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-10
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffdff, -10, x2, 560, x3)

# rs1_val == -1025, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffbff, 0xfffffffffffffbff, 512, x2, 568, x3)

# rs1_val == -2049, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffff7ff, -9, x2, 576, x3)

# rs1_val == -4097, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffefff, 0xffffffffffffefff, 2047, x2, 584, x3)

# rs1_val == -8193, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffdfff, -513, x2, 592, x3)

# rs1_val == -16385, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffbfff, 0xffffffffffffbfff, 256, x2, 600, x3)

# rs1_val == -32769, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffff7fff, 0xffffffffffff7fff, 5, x2, 608, x3)

# rs1_val == -65537, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffeffff, -3, x2, 616, x3)

# rs1_val == -131073, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffdffff, -257, x2, 624, x3)

# rs1_val == -262145, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffbffff, 0xfffffffffffbffff, 8, x2, 632, x3)

# rs1_val == -524289, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffff7ffff, -9, x2, 640, x3)

# rs1_val == -1048577, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffefffff, 0xffffffffffefffff, 9, x2, 648, x3)

# rs1_val == -2097153, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffdfffff, 0xffffffffffdfffff, 5, x2, 656, x3)

# rs1_val == -4194305, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffbfffff, -1025, x2, 664, x3)

# rs1_val == -8388609, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xffffffffff7fffff, 0xffffffffff7fffff, 256, x2, 672, x3)

# rs1_val == -16777217, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:1
TEST_IMM_OP( ori, x11, x10, 0xfffffffffeffffff, 0xfffffffffeffffff, 1, x2, 680, x3)

# rs1_val == -33554433, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffdffffff, -2, x2, 688, x3)

# rs1_val == -67108865, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0xfffffffffbffffff, 0xfffffffffbffffff, 1024, x2, 696, x3)

# rs1_val == -134217729, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xfffffffff7ffffff, 0xfffffffff7ffffff, 512, x2, 704, x3)

# rs1_val == -268435457, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffefffffff, -5, x2, 712, x3)

# rs1_val == -536870913, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffdfffffff, -513, x2, 720, x3)

# rs1_val == -1073741825, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffbfffffff, -5, x2, 728, x3)

# rs1_val == -2147483649, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xffffffff7fffffff, 0xffffffff7fffffff, 3, x2, 736, x3)

# rs1_val == -4294967297, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xfffffffeffffffff, 0xfffffffeffffffff, 4, x2, 744, x3)

# rs1_val == -8589934593, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:0
TEST_IMM_OP( ori, x11, x10, 0xfffffffdffffffff, 0xfffffffdffffffff, 0, x2, 752, x3)

# rs1_val == -17179869185, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffbffffffff, -513, x2, 760, x3)

# rs1_val == -34359738369, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xfffffff7ffffffff, 0xfffffff7ffffffff, 3, x2, 768, x3)

# rs1_val == -68719476737, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffefffffffff, -17, x2, 776, x3)

# rs1_val == -137438953473, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffdfffffffff, -17, x2, 784, x3)

# rs1_val == -549755813889, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffff7fffffffff, -8, x2, 792, x3)

# rs1_val == -1099511627777, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xfffffeffffffffff, 0xfffffeffffffffff, 2047, x2, 800, x3)

# rs1_val == -2199023255553, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffdffffffffff, -9, x2, 808, x3)

# rs1_val == -8796093022209, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffff7ffffffffff, -1024, x2, 816, x3)

# rs1_val == -17592186044417, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xffffefffffffffff, 0xffffefffffffffff, 8, x2, 824, x3)

# rs1_val == -35184372088833, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffdfffffffffff, -7, x2, 832, x3)

# rs1_val == -140737488355329, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffff7fffffffffff, -1, x2, 840, x3)

# rs1_val == -281474976710657, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffeffffffffffff, -65, x2, 848, x3)

# rs1_val == -562949953421313, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffdffffffffffff, -129, x2, 856, x3)

# rs1_val == -1125899906842625, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xfffbffffffffffff, 0xfffbffffffffffff, 1023, x2, 864, x3)

# rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807
# opcode: ori ; op1:x10; dest:x11; op1val:0x7fffffffffffffff;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0x7fffffffffffffff, -6, x2, 872, x3)

# rs1_val == 65536, imm_val == -9
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff7, 0x0000000000010000, -9, x2, 880, x3)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 111*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
