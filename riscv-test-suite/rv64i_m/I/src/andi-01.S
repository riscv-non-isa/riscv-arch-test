
#This assembly file tests the andi instruction of the RISC-V I extension for the andi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",andi)

RVTEST_SIGBASE( x17,signature_x17_1)

# rs1 == rd, rs1==x13, rd==x13, rs1_val == imm_val, imm_val == -65, rs1_val == -65, rs1_val < 0 and imm_val < 0
# opcode: andi ; op1:x13; dest:x13; op1val:0xffffffffffffffbf;  immval:-65
TEST_IMM_OP( andi, x13, x13, 0xffffffffffffffbf, 0xffffffffffffffbf, -65, x17, 0, x7)

# rs1 != rd, rs1==x0, rd==x27, rs1_val != imm_val, rs1_val > 0 and imm_val > 0, imm_val == 1365, rs1_val == 8589934592
# opcode: andi ; op1:x0; dest:x27; op1val:0x0000000200000000;  immval:1365
TEST_IMM_OP( andi, x27, x0, 0x0, 0x0000000200000000, 1365, x17, 8, x7)

# rs1==x14, rd==x19, rs1_val > 0 and imm_val < 0, rs1_val == 2
# opcode: andi ; op1:x14; dest:x19; op1val:0x0000000000000002;  immval:-65
TEST_IMM_OP( andi, x19, x14, 0x2, 0x0000000000000002, -65, x17, 16, x7)

# rs1==x19, rd==x9, rs1_val < 0 and imm_val > 0, imm_val == 16, rs1_val == -262145
# opcode: andi ; op1:x19; dest:x9; op1val:0xfffffffffffbffff;  immval:16
TEST_IMM_OP( andi, x9, x19, 0x10, 0xfffffffffffbffff, 16, x17, 24, x7)

# rs1==x1, rd==x2, rs1_val == (-2**(xlen-1)), imm_val == -1025, rs1_val == -9223372036854775808
# opcode: andi ; op1:x1; dest:x2; op1val:0x8000000000000000;  immval:-1025
TEST_IMM_OP( andi, x2, x1, 0x8000000000000000, 0x8000000000000000, -1025, x17, 32, x7)

# rs1==x10, rd==x25, rs1_val == 0, imm_val == -33
# opcode: andi ; op1:x10; dest:x25; op1val:0x0000000000000000;  immval:-33
TEST_IMM_OP( andi, x25, x10, 0x0, 0x0000000000000000, -33, x17, 40, x7)

# rs1==x24, rd==x28, rs1_val == (2**(xlen-1)-1), rs1_val == 9223372036854775807
# opcode: andi ; op1:x24; dest:x28; op1val:0x7fffffffffffffff;  immval:5
TEST_IMM_OP( andi, x28, x24, 0x5, 0x7fffffffffffffff, 5, x17, 48, x7)

# rs1==x5, rd==x3, rs1_val == 1, 
# opcode: andi ; op1:x5; dest:x3; op1val:0x0000000000000001;  immval:16
TEST_IMM_OP( andi, x3, x5, 0x0, 0x0000000000000001, 16, x17, 56, x7)

# rs1==x12, rd==x1, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -36028797018963969
# opcode: andi ; op1:x12; dest:x1; op1val:0xff7fffffffffffff;  immval:-2048
TEST_IMM_OP( andi, x1, x12, 0xff7ffffffffff800, 0xff7fffffffffffff, -2048, x17, 64, x7)

# rs1==x15, rd==x31, imm_val == 0, rs1_val == 16777216
# opcode: andi ; op1:x15; dest:x31; op1val:0x0000000001000000;  immval:0
TEST_IMM_OP( andi, x31, x15, 0x0, 0x0000000001000000, 0, x17, 72, x7)

# rs1==x25, rd==x4, imm_val == (2**(12-1)-1), rs1_val == -1099511627777, imm_val == 2047
# opcode: andi ; op1:x25; dest:x4; op1val:0xfffffeffffffffff;  immval:2047
TEST_IMM_OP( andi, x4, x25, 0x7ff, 0xfffffeffffffffff, 2047, x17, 80, x7)

# rs1==x26, rd==x23, imm_val == 1, rs1_val == -576460752303423489
# opcode: andi ; op1:x26; dest:x23; op1val:0xf7ffffffffffffff;  immval:1
TEST_IMM_OP( andi, x23, x26, 0x1, 0xf7ffffffffffffff, 1, x17, 88, x7)

# rs1==x21, rd==x5, rs1_val == 4, 
# opcode: andi ; op1:x21; dest:x5; op1val:0x0000000000000004;  immval:-6
TEST_IMM_OP( andi, x5, x21, 0x0, 0x0000000000000004, -6, x17, 96, x7)

# rs1==x23, rd==x8, rs1_val == 8, 
# opcode: andi ; op1:x23; dest:x8; op1val:0x0000000000000008;  immval:-33
TEST_IMM_OP( andi, x8, x23, 0x8, 0x0000000000000008, -33, x17, 104, x7)

# rs1==x28, rd==x14, rs1_val == 16, 
# opcode: andi ; op1:x28; dest:x14; op1val:0x0000000000000010;  immval:9
TEST_IMM_OP( andi, x14, x28, 0x0, 0x0000000000000010, 9, x17, 112, x7)

# rs1==x6, rd==x0, rs1_val == 32, 
# opcode: andi ; op1:x6; dest:x0; op1val:0x0000000000000020;  immval:-8
TEST_IMM_OP( andi, x0, x6, 0x20, 0x0000000000000020, -8, x17, 120, x7)

# rs1==x9, rd==x29, rs1_val == 64, 
# opcode: andi ; op1:x9; dest:x29; op1val:0x0000000000000040;  immval:7
TEST_IMM_OP( andi, x29, x9, 0x0, 0x0000000000000040, 7, x17, 128, x7)

# rs1==x3, rd==x12, rs1_val == 128, imm_val == -257
# opcode: andi ; op1:x3; dest:x12; op1val:0x0000000000000080;  immval:-257
TEST_IMM_OP( andi, x12, x3, 0x80, 0x0000000000000080, -257, x17, 136, x7)

# rs1==x20, rd==x24, rs1_val == 256, imm_val == -513
# opcode: andi ; op1:x20; dest:x24; op1val:0x0000000000000100;  immval:-513
TEST_IMM_OP( andi, x24, x20, 0x100, 0x0000000000000100, -513, x17, 144, x7)

# rs1==x27, rd==x30, rs1_val == 512, 
# opcode: andi ; op1:x27; dest:x30; op1val:0x0000000000000200;  immval:0
TEST_IMM_OP( andi, x30, x27, 0x0, 0x0000000000000200, 0, x17, 152, x7)

# rs1==x31, rd==x11, rs1_val == 1024, 
# opcode: andi ; op1:x31; dest:x11; op1val:0x0000000000000400;  immval:1365
TEST_IMM_OP( andi, x11, x31, 0x400, 0x0000000000000400, 1365, x17, 160, x7)

# rs1==x16, rd==x15, rs1_val == 2048, 
# opcode: andi ; op1:x16; dest:x15; op1val:0x0000000000000800;  immval:1023
TEST_IMM_OP( andi, x15, x16, 0x0, 0x0000000000000800, 1023, x17, 168, x7)

# rs1==x22, rd==x7, rs1_val == 4096, 
# opcode: andi ; op1:x22; dest:x7; op1val:0x0000000000001000;  immval:-257
TEST_IMM_OP( andi, x7, x22, 0x1000, 0x0000000000001000, -257, x17, 176, x3)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x4, rd==x21, rs1_val == 8192, 
# opcode: andi ; op1:x4; dest:x21; op1val:0x0000000000002000;  immval:-1025
TEST_IMM_OP( andi, x21, x4, 0x2000, 0x0000000000002000, -1025, x1, 0, x3)

# rs1==x29, rd==x6, rs1_val == 16384, 
# opcode: andi ; op1:x29; dest:x6; op1val:0x0000000000004000;  immval:16
TEST_IMM_OP( andi, x6, x29, 0x0, 0x0000000000004000, 16, x1, 8, x3)

# rs1==x11, rd==x16, rs1_val == 32768, 
# opcode: andi ; op1:x11; dest:x16; op1val:0x0000000000008000;  immval:-65
TEST_IMM_OP( andi, x16, x11, 0x8000, 0x0000000000008000, -65, x1, 16, x3)

# rs1==x17, rd==x10, rs1_val == 65536, 
# opcode: andi ; op1:x17; dest:x10; op1val:0x0000000000010000;  immval:0
TEST_IMM_OP( andi, x10, x17, 0x0, 0x0000000000010000, 0, x1, 24, x3)

# rs1==x7, rd==x20, rs1_val == 131072, 
# opcode: andi ; op1:x7; dest:x20; op1val:0x0000000000020000;  immval:-33
TEST_IMM_OP( andi, x20, x7, 0x20000, 0x0000000000020000, -33, x1, 32, x3)

# rs1==x30, rd==x26, rs1_val == 262144, 
# opcode: andi ; op1:x30; dest:x26; op1val:0x0000000000040000;  immval:-2048
TEST_IMM_OP( andi, x26, x30, 0x40000, 0x0000000000040000, -2048, x1, 40, x3)

# rs1==x2, rd==x22, rs1_val == 524288, 
# opcode: andi ; op1:x2; dest:x22; op1val:0x0000000000080000;  immval:-1025
TEST_IMM_OP( andi, x22, x2, 0x80000, 0x0000000000080000, -1025, x1, 48, x3)

# rs1==x18, rd==x17, rs1_val == 1048576, 
# opcode: andi ; op1:x18; dest:x17; op1val:0x0000000000100000;  immval:6
TEST_IMM_OP( andi, x17, x18, 0x0, 0x0000000000100000, 6, x1, 56, x3)

# rs1==x8, rd==x18, rs1_val == 2097152, imm_val == -5
# opcode: andi ; op1:x8; dest:x18; op1val:0x0000000000200000;  immval:-5
TEST_IMM_OP( andi, x18, x8, 0x200000, 0x0000000000200000, -5, x1, 64, x3)

# rs1_val == 4194304, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000000400000, 1365, x1, 72, x3)

# rs1_val == 8388608, imm_val == -9
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0x800000, 0x0000000000800000, -9, x1, 80, x3)

# rs1_val == 33554432, imm_val == 4
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000002000000, 4, x1, 88, x3)

# rs1_val == 67108864, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000004000000;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000004000000, 9, x1, 96, x3)

# rs1_val == 134217728, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000008000000, 16, x1, 104, x3)

# rs1_val == 268435456, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0x10000000, 0x0000000010000000, -10, x1, 112, x3)

# rs1_val == 536870912, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0x20000000, 0x0000000020000000, -5, x1, 120, x3)

# rs1_val == 1073741824, imm_val == 1024
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000040000000, 1024, x1, 128, x3)

# rs1_val == 2147483648, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0x80000000, 0x0000000080000000, -4, x1, 136, x3)

# rs1_val == 4294967296, imm_val == -3
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0x100000000, 0x0000000100000000, -3, x1, 144, x3)

# rs1_val == 17179869184, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0x400000000, 0x0000000400000000, -1025, x1, 152, x3)

# rs1_val == 34359738368, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000800000000;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0x800000000, 0x0000000800000000, -7, x1, 160, x3)

# rs1_val == 68719476736, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000001000000000;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000001000000000, 1024, x1, 168, x3)

# rs1_val == 137438953472, imm_val == 256
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000002000000000, 256, x1, 176, x3)

# rs1_val == 274877906944, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0x4000000000, 0x0000004000000000, -9, x1, 184, x3)

# rs1_val == 549755813888, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0x8000000000, 0x0000008000000000, -65, x1, 192, x3)

# rs1_val == 1099511627776, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0x10000000000, 0x0000010000000000, -1, x1, 200, x3)

# rs1_val == 2199023255552, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000020000000000, 256, x1, 208, x3)

# rs1_val == 4398046511104, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000040000000000;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000040000000000, 1023, x1, 216, x3)

# rs1_val == 8796093022208, imm_val == 8
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000080000000000, 8, x1, 224, x3)

# rs1_val == 17592186044416, imm_val == -129
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0x100000000000, 0x0000100000000000, -129, x1, 232, x3)

# rs1_val == 35184372088832, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0x200000000000, 0x0000200000000000, -8, x1, 240, x3)

# rs1_val == 70368744177664, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0x400000000000, 0x0000400000000000, -9, x1, 248, x3)

# rs1_val == 140737488355328, imm_val == 64
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000800000000000, 64, x1, 256, x3)

# rs1_val == 281474976710656, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0x1000000000000, 0x0001000000000000, -6, x1, 264, x3)

# rs1_val == 562949953421312, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0x2000000000000, 0x0002000000000000, -5, x1, 272, x3)

# rs1_val == 1125899906842624, imm_val == 512
# opcode: andi ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0004000000000000, 512, x1, 280, x3)

# rs1_val == 2251799813685248, imm_val == 32
# opcode: andi ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0008000000000000, 32, x1, 288, x3)

# rs1_val == 4503599627370496, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0010000000000000, 6, x1, 296, x3)

# rs1_val == 9007199254740992, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0020000000000000, 256, x1, 304, x3)

# rs1_val == 18014398509481984, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0040000000000000, 32, x1, 312, x3)

# rs1_val == 36028797018963968, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0080000000000000, 512, x1, 320, x3)

# rs1_val == 72057594037927936, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0100000000000000, 4, x1, 328, x3)

# rs1_val == 144115188075855872, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:2047
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0200000000000000, 2047, x1, 336, x3)

# rs1_val == 288230376151711744, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0x400000000000000, 0x0400000000000000, -257, x1, 344, x3)

# rs1_val == 576460752303423488, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0800000000000000, 0, x1, 352, x3)

# rs1_val == 1152921504606846976, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0x1000000000000000, 0, x1, 360, x3)

# rs1_val == 2305843009213693952, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0x2000000000000000, 0x2000000000000000, -7, x1, 368, x3)

# rs1_val == 4611686018427387904, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x0, 0x4000000000000000, 9, x1, 376, x3)

# rs1_val == -2, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x4, 0xfffffffffffffffe, 4, x1, 384, x3)

# rs1_val == -3, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:-1024
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffc00, 0xfffffffffffffffd, -1024, x1, 392, x3)

# rs1_val == -2251799813685249, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x200, 0xfff7ffffffffffff, 512, x1, 400, x3)

# rs1_val == -4503599627370497, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xffefffffffffffbf, 0xffefffffffffffff, -65, x1, 408, x3)

# rs1_val == -9007199254740993, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xffdfffffffffffdf, 0xffdfffffffffffff, -33, x1, 416, x3)

# rs1_val == -18014398509481985, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xffbfffffffffffff, 6, x1, 424, x3)

# rs1_val == -72057594037927937, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xfefffffffffffbff, 0xfeffffffffffffff, -1025, x1, 432, x3)

# rs1_val == -144115188075855873, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x3ff, 0xfdffffffffffffff, 1023, x1, 440, x3)

# rs1_val == -288230376151711745, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfbffffffffffffff;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0xfbfffffffffffeff, 0xfbffffffffffffff, -257, x1, 448, x3)

# rs1_val == -1152921504606846977, imm_val == 128
# opcode: andi ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x80, 0xefffffffffffffff, 128, x1, 456, x3)

# rs1_val == -2305843009213693953, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0xdffffffffffffdff, 0xdfffffffffffffff, -513, x1, 464, x3)

# rs1_val == -4611686018427387905, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0xbffffffffffffdff, 0xbfffffffffffffff, -513, x1, 472, x3)

# rs1_val == 6148914691236517205, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0x5555555555555550, 0x5555555555555555, -6, x1, 480, x3)

# rs1_val == -6148914691236517206, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa, -1, x1, 488, x3)

# imm_val == 2, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffff;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x2, 0xffffffffffffffff, 2, x1, 496, x3)

# imm_val == -2, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0x800000, 0x0000000000800000, -2, x1, 504, x3)

# imm_val == -17, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0x20000000, 0x0000000020000000, -17, x1, 512, x3)

# imm_val == -1366, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0x200000, 0x0000000000200000, -1366, x1, 520, x3)

# rs1_val == -5, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x551, 0xfffffffffffffffb, 1365, x1, 528, x3)

# rs1_val == -9, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xfffffffffffffff7, 3, x1, 536, x3)

# rs1_val == -17, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffff6f, 0xffffffffffffffef, -129, x1, 544, x3)

# rs1_val == -33, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xffffffffffffffdf, 1, x1, 552, x3)

# rs1_val == -129, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x555, 0xffffffffffffff7f, 1365, x1, 560, x3)

# rs1_val == -257, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xfffffffffffffeff, 9, x1, 568, x3)

# rs1_val == -513, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffdfc, 0xfffffffffffffdff, -4, x1, 576, x3)

# rs1_val == -1025, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffffbfc, 0xfffffffffffffbff, -4, x1, 584, x3)

# rs1_val == -2049, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xfffffffffffff7ff, 16, x1, 592, x3)

# rs1_val == -4097, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffef7f, 0xffffffffffffefff, -129, x1, 600, x3)

# rs1_val == -8193, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0xffffffffffffdfef, 0xffffffffffffdfff, -17, x1, 608, x3)

# rs1_val == -16385, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffffbfff;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x5, 0xffffffffffffbfff, 5, x1, 616, x3)

# rs1_val == -32769, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xffffffffffff7ffe, 0xffffffffffff7fff, -2, x1, 624, x3)

# rs1_val == -65537, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xfffffffffffefbff, 0xfffffffffffeffff, -1025, x1, 632, x3)

# rs1_val == -131073, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xfffffffffffdffff, 8, x1, 640, x3)

# rs1_val == -524289, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xfffffffffff7ffff, 64, x1, 648, x3)

# rs1_val == -1048577, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0xffffffffffeffff9, 0xffffffffffefffff, -7, x1, 656, x3)

# rs1_val == -2097153, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x4, 0xffffffffffdfffff, 4, x1, 664, x3)

# rs1_val == -4194305, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xffffffffffbfff7f, 0xffffffffffbfffff, -129, x1, 672, x3)

# rs1_val == -8388609, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xffffffffff7ffff6, 0xffffffffff7fffff, -10, x1, 680, x3)

# rs1_val == -16777217, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffeffffff;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0xfffffffffefff800, 0xfffffffffeffffff, -2048, x1, 688, x3)

# rs1_val == -33554433, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0xfffffffffdfffffc, 0xfffffffffdffffff, -4, x1, 696, x3)

# rs1_val == -67108865, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0xfffffffffbfffff9, 0xfffffffffbffffff, -7, x1, 704, x3)

# rs1_val == -134217729, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xfffffffff7fffff6, 0xfffffffff7ffffff, -10, x1, 712, x3)

# rs1_val == -268435457, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:2047
TEST_IMM_OP( andi, x11, x10, 0x7ff, 0xffffffffefffffff, 2047, x1, 720, x3)

# rs1_val == -536870913, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xffffffffdfffffff, 16, x1, 728, x3)

# rs1_val == -1073741825, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xffffffffbffffff6, 0xffffffffbfffffff, -10, x1, 736, x3)

# rs1_val == -2147483649, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffff7fffffff;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xffffffff7ffffaaa, 0xffffffff7fffffff, -1366, x1, 744, x3)

# rs1_val == -4294967297, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xfffffffeffffffff, 256, x1, 752, x3)

# rs1_val == -8589934593, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0xfffffffdfffff800, 0xfffffffdffffffff, -2048, x1, 760, x3)

# rs1_val == -17179869185, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xfffffffbfffffffe, 0xfffffffbffffffff, -2, x1, 768, x3)

# rs1_val == -34359738369, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xfffffff7ffffffff, 32, x1, 776, x3)

# rs1_val == -68719476737, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xffffffefffffffff, 32, x1, 784, x3)

# rs1_val == -137438953473, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xffffffdfffffff7f, 0xffffffdfffffffff, -129, x1, 792, x3)

# rs1_val == -274877906945, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xffffffbfffffffff, 32, x1, 800, x3)

# rs1_val == -549755813889, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffff7fffffffff;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0xffffff7ffffffffd, 0xffffff7fffffffff, -3, x1, 808, x3)

# rs1_val == -2199023255553, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffdffffffffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xfffffdffffffffff, 256, x1, 816, x3)

# rs1_val == -4398046511105, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xfffffbffffffffff, 16, x1, 824, x3)

# rs1_val == -8796093022209, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:-1024
TEST_IMM_OP( andi, x11, x10, 0xfffff7fffffffc00, 0xfffff7ffffffffff, -1024, x1, 832, x3)

# rs1_val == -17592186044417, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffefffffffffff;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xffffefffffffff7f, 0xffffefffffffffff, -129, x1, 840, x3)

# rs1_val == -35184372088833, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffdfffffffffff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xffffdfffffffffff, 3, x1, 848, x3)

# rs1_val == -70368744177665, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xffffbfffffffffff, 0xffffbfffffffffff, -1, x1, 856, x3)

# rs1_val == -140737488355329, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xffff7fffffffffff, 64, x1, 864, x3)

# rs1_val == -281474976710657, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfffefffffffffff8, 0xfffeffffffffffff, -8, x1, 872, x3)

# rs1_val == -562949953421313, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0xfffdfffffffffff9, 0xfffdffffffffffff, -7, x1, 880, x3)

# rs1_val == -1125899906842625, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0xfffbffffffffffff, 0, x1, 888, x3)

# rs1_val != imm_val, rs1_val > 0 and imm_val > 0, imm_val == 1365, rs1_val == 8589934592
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x0, 0x0000000200000000, 1365, x1, 896, x3)

# rs1_val == 32, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x0000000000000020;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0x20, 0x0000000000000020, -8, x1, 904, x3)
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
