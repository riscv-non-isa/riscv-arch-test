
#This assembly file tests the ori instruction of the RISC-V I extension for the ori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",ori)

RVTEST_SIGBASE( x15,signature_x15_1)

# rs1 != rd, rs1==x9, rd==x27, rs1_val == imm_val, rs1_val == -17, rs1_val < 0 and imm_val < 0, imm_val == -17
# opcode: ori ; op1:x9; dest:x27; op1val:0xffffffffffffffef;  immval:-17
TEST_IMM_OP( ori, x27, x9, 0xffffffffffffffef, 0xffffffffffffffef, -17, x15, 0, x18)

# rs1 == rd, rs1==x21, rd==x21, rs1_val != imm_val, rs1_val == -2251799813685249
# opcode: ori ; op1:x21; dest:x21; op1val:0xfff7ffffffffffff;  immval:-7
TEST_IMM_OP( ori, x21, x21, 0xffffffffffffffff, 0xfff7ffffffffffff, -7, x15, 8, x18)

# rs1==x20, rd==x10, rs1_val > 0 and imm_val > 0, rs1_val == 576460752303423488
# opcode: ori ; op1:x20; dest:x10; op1val:0x0800000000000000;  immval:6
TEST_IMM_OP( ori, x10, x20, 0x800000000000006, 0x0800000000000000, 6, x15, 16, x18)

# rs1==x28, rd==x8, rs1_val > 0 and imm_val < 0, rs1_val == 65536
# opcode: ori ; op1:x28; dest:x8; op1val:0x0000000000010000;  immval:-1
TEST_IMM_OP( ori, x8, x28, 0xffffffffffffffff, 0x0000000000010000, -1, x15, 24, x18)

# rs1==x5, rd==x6, rs1_val < 0 and imm_val > 0, rs1_val == -4294967297, imm_val == 128
# opcode: ori ; op1:x5; dest:x6; op1val:0xfffffffeffffffff;  immval:128
TEST_IMM_OP( ori, x6, x5, 0xfffffffeffffffff, 0xfffffffeffffffff, 128, x15, 32, x18)

# rs1==x14, rd==x22, rs1_val == (-2**(xlen-1)), rs1_val == -9223372036854775808, imm_val == -1366
# opcode: ori ; op1:x14; dest:x22; op1val:0x8000000000000000;  immval:-1366
TEST_IMM_OP( ori, x22, x14, 0xfffffffffffffaaa, 0x8000000000000000, -1366, x15, 40, x18)

# rs1==x16, rd==x0, rs1_val == 0, 
# opcode: ori ; op1:x16; dest:x0; op1val:0x0000000000000000;  immval:5
TEST_IMM_OP( ori, x0, x16, 0x5, 0x0000000000000000, 5, x15, 48, x18)

# rs1==x2, rd==x30, rs1_val == (2**(xlen-1)-1), imm_val == 16, rs1_val == 9223372036854775807
# opcode: ori ; op1:x2; dest:x30; op1val:0x7fffffffffffffff;  immval:16
TEST_IMM_OP( ori, x30, x2, 0x7fffffffffffffff, 0x7fffffffffffffff, 16, x15, 56, x18)

# rs1==x3, rd==x16, rs1_val == 1, imm_val == 8
# opcode: ori ; op1:x3; dest:x16; op1val:0x0000000000000001;  immval:8
TEST_IMM_OP( ori, x16, x3, 0x9, 0x0000000000000001, 8, x15, 64, x18)

# rs1==x13, rd==x28, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == 1024
# opcode: ori ; op1:x13; dest:x28; op1val:0x0000000000000400;  immval:-2048
TEST_IMM_OP( ori, x28, x13, 0xfffffffffffffc00, 0x0000000000000400, -2048, x15, 72, x18)

# rs1==x26, rd==x1, imm_val == 0, 
# opcode: ori ; op1:x26; dest:x1; op1val:0x0800000000000000;  immval:0
TEST_IMM_OP( ori, x1, x26, 0x800000000000000, 0x0800000000000000, 0, x15, 80, x18)

# rs1==x22, rd==x9, imm_val == (2**(12-1)-1), rs1_val == 6148914691236517205, imm_val == 2047
# opcode: ori ; op1:x22; dest:x9; op1val:0x5555555555555555;  immval:2047
TEST_IMM_OP( ori, x9, x22, 0x55555555555557ff, 0x5555555555555555, 2047, x15, 88, x18)

# rs1==x1, rd==x29, imm_val == 1, rs1_val == -8193
# opcode: ori ; op1:x1; dest:x29; op1val:0xffffffffffffdfff;  immval:1
TEST_IMM_OP( ori, x29, x1, 0xffffffffffffdfff, 0xffffffffffffdfff, 1, x15, 96, x18)

# rs1==x6, rd==x4, rs1_val == 2, 
# opcode: ori ; op1:x6; dest:x4; op1val:0x0000000000000002;  immval:1023
TEST_IMM_OP( ori, x4, x6, 0x3ff, 0x0000000000000002, 1023, x15, 104, x18)

# rs1==x4, rd==x25, rs1_val == 4, 
# opcode: ori ; op1:x4; dest:x25; op1val:0x0000000000000004;  immval:5
TEST_IMM_OP( ori, x25, x4, 0x5, 0x0000000000000004, 5, x15, 112, x18)

# rs1==x29, rd==x3, rs1_val == 8, 
# opcode: ori ; op1:x29; dest:x3; op1val:0x0000000000000008;  immval:8
TEST_IMM_OP( ori, x3, x29, 0x8, 0x0000000000000008, 8, x15, 120, x18)

# rs1==x17, rd==x13, rs1_val == 16, imm_val == -513
# opcode: ori ; op1:x17; dest:x13; op1val:0x0000000000000010;  immval:-513
TEST_IMM_OP( ori, x13, x17, 0xfffffffffffffdff, 0x0000000000000010, -513, x15, 128, x18)

# rs1==x27, rd==x11, rs1_val == 32, 
# opcode: ori ; op1:x27; dest:x11; op1val:0x0000000000000020;  immval:-6
TEST_IMM_OP( ori, x11, x27, 0xfffffffffffffffa, 0x0000000000000020, -6, x15, 136, x18)

# rs1==x12, rd==x7, rs1_val == 64, 
# opcode: ori ; op1:x12; dest:x7; op1val:0x0000000000000040;  immval:-513
TEST_IMM_OP( ori, x7, x12, 0xfffffffffffffdff, 0x0000000000000040, -513, x15, 144, x18)

# rs1==x10, rd==x17, rs1_val == 128, 
# opcode: ori ; op1:x10; dest:x17; op1val:0x0000000000000080;  immval:2047
TEST_IMM_OP( ori, x17, x10, 0x7ff, 0x0000000000000080, 2047, x15, 152, x18)

# rs1==x25, rd==x24, rs1_val == 256, 
# opcode: ori ; op1:x25; dest:x24; op1val:0x0000000000000100;  immval:-1366
TEST_IMM_OP( ori, x24, x25, 0xfffffffffffffbaa, 0x0000000000000100, -1366, x15, 160, x18)

# rs1==x31, rd==x5, rs1_val == 512, imm_val == 64
# opcode: ori ; op1:x31; dest:x5; op1val:0x0000000000000200;  immval:64
TEST_IMM_OP( ori, x5, x31, 0x240, 0x0000000000000200, 64, x15, 168, x18)

# rs1==x23, rd==x26, rs1_val == 2048, imm_val == 32
# opcode: ori ; op1:x23; dest:x26; op1val:0x0000000000000800;  immval:32
TEST_IMM_OP( ori, x26, x23, 0x820, 0x0000000000000800, 32, x15, 176, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x24, rd==x15, rs1_val == 4096, 
# opcode: ori ; op1:x24; dest:x15; op1val:0x0000000000001000;  immval:-7
TEST_IMM_OP( ori, x15, x24, 0xfffffffffffffff9, 0x0000000000001000, -7, x1, 0, x3)

# rs1==x15, rd==x18, rs1_val == 8192, imm_val == 1024
# opcode: ori ; op1:x15; dest:x18; op1val:0x0000000000002000;  immval:1024
TEST_IMM_OP( ori, x18, x15, 0x2400, 0x0000000000002000, 1024, x1, 8, x3)

# rs1==x19, rd==x12, rs1_val == 16384, 
# opcode: ori ; op1:x19; dest:x12; op1val:0x0000000000004000;  immval:1024
TEST_IMM_OP( ori, x12, x19, 0x4400, 0x0000000000004000, 1024, x1, 16, x3)

# rs1==x30, rd==x31, rs1_val == 32768, imm_val == 512
# opcode: ori ; op1:x30; dest:x31; op1val:0x0000000000008000;  immval:512
TEST_IMM_OP( ori, x31, x30, 0x8200, 0x0000000000008000, 512, x1, 24, x3)

# rs1==x8, rd==x20, rs1_val == 131072, 
# opcode: ori ; op1:x8; dest:x20; op1val:0x0000000000020000;  immval:-7
TEST_IMM_OP( ori, x20, x8, 0xfffffffffffffff9, 0x0000000000020000, -7, x1, 32, x3)

# rs1==x11, rd==x19, rs1_val == 262144, 
# opcode: ori ; op1:x11; dest:x19; op1val:0x0000000000040000;  immval:0
TEST_IMM_OP( ori, x19, x11, 0x40000, 0x0000000000040000, 0, x1, 40, x3)

# rs1==x18, rd==x23, rs1_val == 524288, 
# opcode: ori ; op1:x18; dest:x23; op1val:0x0000000000080000;  immval:-10
TEST_IMM_OP( ori, x23, x18, 0xfffffffffffffff6, 0x0000000000080000, -10, x1, 48, x3)

# rs1==x7, rd==x14, rs1_val == 1048576, 
# opcode: ori ; op1:x7; dest:x14; op1val:0x0000000000100000;  immval:-17
TEST_IMM_OP( ori, x14, x7, 0xffffffffffffffef, 0x0000000000100000, -17, x1, 56, x3)

# rs1==x0, rd==x2, rs1_val == 2097152, imm_val == -2
# opcode: ori ; op1:x0; dest:x2; op1val:0x0000000000200000;  immval:-2
TEST_IMM_OP( ori, x2, x0, 0xfffffffffffffffe, 0x0000000000200000, -2, x1, 64, x3)

# rs1_val == 4194304, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffef, 0x0000000000400000, -17, x1, 72, x3)

# rs1_val == 8388608, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x8003ff, 0x0000000000800000, 1023, x1, 80, x3)

# rs1_val == 16777216, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffaaa, 0x0000000001000000, -1366, x1, 88, x3)

# rs1_val == 33554432, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0x20007ff, 0x0000000002000000, 2047, x1, 96, x3)

# rs1_val == 67108864, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x40003ff, 0x0000000004000000, 1023, x1, 104, x3)

# rs1_val == 134217728, imm_val == -9
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff7, 0x0000000008000000, -9, x1, 112, x3)

# rs1_val == 268435456, imm_val == -1025
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffbff, 0x0000000010000000, -1025, x1, 120, x3)

# rs1_val == 536870912, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff7, 0x0000000020000000, -9, x1, 128, x3)

# rs1_val == 1073741824, imm_val == -65
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffbf, 0x0000000040000000, -65, x1, 136, x3)

# rs1_val == 2147483648, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:6
TEST_IMM_OP( ori, x11, x10, 0x80000006, 0x0000000080000000, 6, x1, 144, x3)

# rs1_val == 4294967296, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:8
TEST_IMM_OP( ori, x11, x10, 0x100000008, 0x0000000100000000, 8, x1, 152, x3)

# rs1_val == 8589934592, imm_val == 2
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:2
TEST_IMM_OP( ori, x11, x10, 0x200000002, 0x0000000200000000, 2, x1, 160, x3)

# rs1_val == 17179869184, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffaaa, 0x0000000400000000, -1366, x1, 168, x3)

# rs1_val == 34359738368, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:16
TEST_IMM_OP( ori, x11, x10, 0x800000010, 0x0000000800000000, 16, x1, 176, x3)

# rs1_val == 68719476736, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffc, 0x0000001000000000, -4, x1, 184, x3)

# rs1_val == 137438953472, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:64
TEST_IMM_OP( ori, x11, x10, 0x2000000040, 0x0000002000000000, 64, x1, 192, x3)

# rs1_val == 274877906944, imm_val == 4
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:4
TEST_IMM_OP( ori, x11, x10, 0x4000000004, 0x0000004000000000, 4, x1, 200, x3)

# rs1_val == 549755813888, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff7, 0x0000008000000000, -9, x1, 208, x3)

# rs1_val == 1099511627776, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffdff, 0x0000010000000000, -513, x1, 216, x3)

# rs1_val == 2199023255552, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff7, 0x0000020000000000, -9, x1, 224, x3)

# rs1_val == 4398046511104, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0x40000000400, 0x0000040000000000, 1024, x1, 232, x3)

# rs1_val == 8796093022208, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:2
TEST_IMM_OP( ori, x11, x10, 0x80000000002, 0x0000080000000000, 2, x1, 240, x3)

# rs1_val == 17592186044416, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffef, 0x0000100000000000, -17, x1, 248, x3)

# rs1_val == 35184372088832, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:1
TEST_IMM_OP( ori, x11, x10, 0x200000000001, 0x0000200000000000, 1, x1, 256, x3)

# rs1_val == 70368744177664, imm_val == 256
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:256
TEST_IMM_OP( ori, x11, x10, 0x400000000100, 0x0000400000000000, 256, x1, 264, x3)

# rs1_val == 140737488355328, imm_val == -129
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffff7f, 0x0000800000000000, -129, x1, 272, x3)

# rs1_val == 281474976710656, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:64
TEST_IMM_OP( ori, x11, x10, 0x1000000000040, 0x0001000000000000, 64, x1, 280, x3)

# rs1_val == 562949953421312, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:6
TEST_IMM_OP( ori, x11, x10, 0x2000000000006, 0x0002000000000000, 6, x1, 288, x3)

# rs1_val == 1125899906842624, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff7, 0x0004000000000000, -9, x1, 296, x3)

# rs1_val == 2251799813685248, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:-6
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffa, 0x0008000000000000, -6, x1, 304, x3)

# rs1_val == 4503599627370496, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x100000000003ff, 0x0010000000000000, 1023, x1, 312, x3)

# rs1_val == 9007199254740992, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffff800, 0x0020000000000000, -2048, x1, 320, x3)

# rs1_val == 18014398509481984, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x400000000003ff, 0x0040000000000000, 1023, x1, 328, x3)

# rs1_val == 36028797018963968, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffff7f, 0x0080000000000000, -129, x1, 336, x3)

# rs1_val == 72057594037927936, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:8
TEST_IMM_OP( ori, x11, x10, 0x100000000000008, 0x0100000000000000, 8, x1, 344, x3)

# rs1_val == 144115188075855872, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0x2000000000007ff, 0x0200000000000000, 2047, x1, 352, x3)

# rs1_val == 288230376151711744, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:256
TEST_IMM_OP( ori, x11, x10, 0x400000000000100, 0x0400000000000000, 256, x1, 360, x3)

# rs1_val == 1152921504606846976, imm_val == 1365
# opcode: ori ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0x1000000000000555, 0x1000000000000000, 1365, x1, 368, x3)

# rs1_val == 2305843009213693952, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff9, 0x2000000000000000, -7, x1, 376, x3)

# rs1_val == 4611686018427387904, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffff7f, 0x4000000000000000, -129, x1, 384, x3)

# rs1_val == -2, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffe, 0xfffffffffffffffe, 2, x1, 392, x3)

# rs1_val == -4503599627370497, imm_val == -5
# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffefffffffffffff, -5, x1, 400, x3)

# rs1_val == -9007199254740993, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xffdfffffffffffff, 0xffdfffffffffffff, 8, x1, 408, x3)

# rs1_val == -18014398509481985, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffbfffffffffffff, -1024, x1, 416, x3)

# rs1_val == -36028797018963969, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xff7fffffffffffff, 0xff7fffffffffffff, 512, x1, 424, x3)

# rs1_val == -72057594037927937, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xfeffffffffffffff, 0xfeffffffffffffff, 4, x1, 432, x3)

# rs1_val == -144115188075855873, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:9
TEST_IMM_OP( ori, x11, x10, 0xfdffffffffffffff, 0xfdffffffffffffff, 9, x1, 440, x3)

# rs1_val == -288230376151711745, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xfbffffffffffffff, 0xfbffffffffffffff, 256, x1, 448, x3)

# rs1_val == -576460752303423489, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xf7ffffffffffffff, -513, x1, 456, x3)

# rs1_val == -1152921504606846977, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:0
TEST_IMM_OP( ori, x11, x10, 0xefffffffffffffff, 0xefffffffffffffff, 0, x1, 464, x3)

# rs1_val == -2305843009213693953, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:64
TEST_IMM_OP( ori, x11, x10, 0xdfffffffffffffff, 0xdfffffffffffffff, 64, x1, 472, x3)

# rs1_val == -4611686018427387905, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xbfffffffffffffff, 0xbfffffffffffffff, 8, x1, 480, x3)

# rs1_val == -6148914691236517206, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffb, 0xaaaaaaaaaaaaaaaa, -7, x1, 488, x3)

# imm_val == -3, rs1_val == -16385
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffbfff, -3, x1, 496, x3)

# imm_val == -33, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000000100;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffdf, 0x0000000000000100, -33, x1, 504, x3)

# imm_val == -257, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffeff, 0x0000000010000000, -257, x1, 512, x3)

# rs1_val == -3, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffd, -1025, x1, 520, x3)

# rs1_val == -5, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffffb, -1, x1, 528, x3)

# rs1_val == -9, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffff7, 0xfffffffffffffff7, 5, x1, 536, x3)

# rs1_val == -33, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffdf, 0xffffffffffffffdf, 5, x1, 544, x3)

# rs1_val == -65, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffffffbf, -4, x1, 552, x3)

# rs1_val == -129, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffff7f, 0xffffffffffffff7f, 3, x1, 560, x3)

# rs1_val == -257, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:9
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffeff, 0xfffffffffffffeff, 9, x1, 568, x3)

# rs1_val == -513, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffdff, 2047, x1, 576, x3)

# rs1_val == -1025, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffffbff, -33, x1, 584, x3)

# rs1_val == -2049, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffff7ff, -129, x1, 592, x3)

# rs1_val == -4097, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffefff, 0xffffffffffffefff, 256, x1, 600, x3)

# rs1_val == -32769, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffff7fff, -1024, x1, 608, x3)

# rs1_val == -65537, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:64
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffeffff, 0xfffffffffffeffff, 64, x1, 616, x3)

# rs1_val == -131073, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:1
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffdffff, 0xfffffffffffdffff, 1, x1, 624, x3)

# rs1_val == -262145, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffffbffff, -2, x1, 632, x3)

# rs1_val == -524289, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0xfffffffffff7ffff, 0xfffffffffff7ffff, 1365, x1, 640, x3)

# rs1_val == -1048577, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xffffffffffefffff, 0xffffffffffefffff, 128, x1, 648, x3)

# rs1_val == -2097153, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xffffffffffdfffff, 0xffffffffffdfffff, 512, x1, 656, x3)

# rs1_val == -4194305, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffffbfffff, -65, x1, 664, x3)

# rs1_val == -8388609, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffff7fffff, -5, x1, 672, x3)

# rs1_val == -16777217, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffffeffffff, -7, x1, 680, x3)

# rs1_val == -33554433, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xfffffffffdffffff, 0xfffffffffdffffff, 4, x1, 688, x3)

# rs1_val == -67108865, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:32
TEST_IMM_OP( ori, x11, x10, 0xfffffffffbffffff, 0xfffffffffbffffff, 32, x1, 696, x3)

# rs1_val == -134217729, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffff7ffffff, -9, x1, 704, x3)

# rs1_val == -268435457, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xffffffffefffffff, 0xffffffffefffffff, 1023, x1, 712, x3)

# rs1_val == -536870913, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffffdfffffff, -65, x1, 720, x3)

# rs1_val == -1073741825, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xffffffffbfffffff, 0xffffffffbfffffff, 7, x1, 728, x3)

# rs1_val == -2147483649, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffff7fffffff, -1025, x1, 736, x3)

# rs1_val == -8589934593, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xfffffffdffffffff, 0xfffffffdffffffff, 7, x1, 744, x3)

# rs1_val == -17179869185, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffffbffffffff, -9, x1, 752, x3)

# rs1_val == -34359738369, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xfffffff7ffffffff, 0xfffffff7ffffffff, 128, x1, 760, x3)

# rs1_val == -68719476737, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffefffffffff, -513, x1, 768, x3)

# rs1_val == -137438953473, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xffffffdfffffffff, 0xffffffdfffffffff, 8, x1, 776, x3)

# rs1_val == -274877906945, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffffbfffffffff, -7, x1, 784, x3)

# rs1_val == -549755813889, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xffffff7fffffffff, 0xffffff7fffffffff, 2, x1, 792, x3)

# rs1_val == -1099511627777, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:64
TEST_IMM_OP( ori, x11, x10, 0xfffffeffffffffff, 0xfffffeffffffffff, 64, x1, 800, x3)

# rs1_val == -2199023255553, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffdffffffffff, -2048, x1, 808, x3)

# rs1_val == -4398046511105, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffffbffffffffff, -8, x1, 816, x3)

# rs1_val == -8796093022209, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffff7ffffffffff, -1024, x1, 824, x3)

# rs1_val == -17592186044417, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffefffffffffff, -257, x1, 832, x3)

# rs1_val == -35184372088833, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xffffdfffffffffff, 0xffffdfffffffffff, 5, x1, 840, x3)

# rs1_val == -70368744177665, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffffbfffffffffff, -33, x1, 848, x3)

# rs1_val == -140737488355329, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xffff7fffffffffff, -5, x1, 856, x3)

# rs1_val == -281474976710657, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xfffeffffffffffff, 0xfffeffffffffffff, 3, x1, 864, x3)

# rs1_val == -562949953421313, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfffdffffffffffff, -1366, x1, 872, x3)

# rs1_val == -1125899906842625, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xfffbffffffffffff, 0xfffbffffffffffff, 3, x1, 880, x3)

# rs1_val != imm_val, rs1_val == -2251799813685249
# opcode: ori ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffffffffffff, 0xfff7ffffffffffff, -7, x1, 888, x3)

# rs1_val == 0, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000000000;  immval:5
TEST_IMM_OP( ori, x11, x10, 0x5, 0x0000000000000000, 5, x1, 896, x3)

# rs1_val == 2097152, imm_val == -2
# opcode: ori ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xfffffffffffffffe, 0x0000000000200000, -2, x1, 904, x3)
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

signature_x15_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x15_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 114*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
