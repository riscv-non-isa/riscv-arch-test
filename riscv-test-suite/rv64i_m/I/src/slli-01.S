
#This assembly file tests the slli instruction of the RISC-V I extension for the slli covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",slli)

RVTEST_SIGBASE( x4,signature_x4_1)

# rs1 == rd, rs1==x26, rd==x26, rs1_val < 0 and imm_val > 0 and imm_val < xlen, rs1_val == -2147483649
# opcode: slli ; op1:x26; dest:x26; op1val:0xffffffff7fffffff;  immval:11
TEST_IMM_OP( slli, x26, x26, 0xfffffbfffffff800, 0xffffffff7fffffff, 11, x4, 0, x17)

# rs1 != rd, rs1==x3, rd==x7, rs1_val > 0 and imm_val > 0 and imm_val < xlen, rs1_val == 4398046511104, imm_val == 4
# opcode: slli ; op1:x3; dest:x7; op1val:0x0000040000000000;  immval:4
TEST_IMM_OP( slli, x7, x3, 0x400000000000, 0x0000040000000000, 4, x4, 8, x17)

# rs1==x31, rd==x5, rs1_val < 0 and imm_val == 0, rs1_val == -16777217
# opcode: slli ; op1:x31; dest:x5; op1val:0xfffffffffeffffff;  immval:0
TEST_IMM_OP( slli, x5, x31, 0xfffffffffeffffff, 0xfffffffffeffffff, 0, x4, 16, x17)

# rs1==x10, rd==x9, rs1_val > 0 and imm_val == 0, 
# opcode: slli ; op1:x10; dest:x9; op1val:0x0000000000000003;  immval:0
TEST_IMM_OP( slli, x9, x10, 0x3, 0x0000000000000003, 0, x4, 24, x17)

# rs1==x15, rd==x8, rs1_val < 0 and imm_val == (xlen-1), rs1_val == -17592186044417
# opcode: slli ; op1:x15; dest:x8; op1val:0xffffefffffffffff;  immval:63
TEST_IMM_OP( slli, x8, x15, 0x8000000000000000, 0xffffefffffffffff, 63, x4, 32, x17)

# rs1==x9, rd==x11, rs1_val > 0 and imm_val == (xlen-1), rs1_val == 68719476736
# opcode: slli ; op1:x9; dest:x11; op1val:0x0000001000000000;  immval:63
TEST_IMM_OP( slli, x11, x9, 0x0, 0x0000001000000000, 63, x4, 40, x17)

# rs1==x1, rd==x0, rs1_val == imm_val and imm_val > 0 and imm_val < xlen, 
# opcode: slli ; op1:x1; dest:x0; op1val:0x0000000000000006;  immval:6
TEST_IMM_OP( slli, x0, x1, 0x180, 0x0000000000000006, 6, x4, 48, x17)

# rs1==x11, rd==x19, rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen, rs1_val == -9223372036854775808, imm_val == 59
# opcode: slli ; op1:x11; dest:x19; op1val:0x8000000000000000;  immval:59
TEST_IMM_OP( slli, x19, x11, 0x0, 0x8000000000000000, 59, x4, 56, x17)

# rs1==x22, rd==x24, rs1_val == 0 and imm_val >= 0 and imm_val < xlen, imm_val == 16
# opcode: slli ; op1:x22; dest:x24; op1val:0x0000000000000000;  immval:16
TEST_IMM_OP( slli, x24, x22, 0x0, 0x0000000000000000, 16, x4, 64, x17)

# rs1==x12, rd==x31, rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen, rs1_val == 9223372036854775807
# opcode: slli ; op1:x12; dest:x31; op1val:0x7fffffffffffffff;  immval:19
TEST_IMM_OP( slli, x31, x12, 0xfffffffffff80000, 0x7fffffffffffffff, 19, x4, 72, x17)

# rs1==x16, rd==x2, rs1_val == 1 and imm_val >= 0 and imm_val < xlen, rs1_val == 1
# opcode: slli ; op1:x16; dest:x2; op1val:0x0000000000000001;  immval:10
TEST_IMM_OP( slli, x2, x16, 0x400, 0x0000000000000001, 10, x4, 80, x17)

# rs1==x29, rd==x20, imm_val == 1, rs1_val == -35184372088833
# opcode: slli ; op1:x29; dest:x20; op1val:0xffffdfffffffffff;  immval:1
TEST_IMM_OP( slli, x20, x29, 0xffffbffffffffffe, 0xffffdfffffffffff, 1, x4, 88, x17)

# rs1==x28, rd==x12, imm_val == 2, 
# opcode: slli ; op1:x28; dest:x12; op1val:0x0000040000000000;  immval:2
TEST_IMM_OP( slli, x12, x28, 0x100000000000, 0x0000040000000000, 2, x4, 96, x17)

# rs1==x8, rd==x6, imm_val == 8, 
# opcode: slli ; op1:x8; dest:x6; op1val:0xffffffffffffffff;  immval:8
TEST_IMM_OP( slli, x6, x8, 0xffffffffffffff00, 0xffffffffffffffff, 8, x4, 104, x17)

# rs1==x7, rd==x30, imm_val == 32, 
# opcode: slli ; op1:x7; dest:x30; op1val:0xffffefffffffffff;  immval:32
TEST_IMM_OP( slli, x30, x7, 0xffffffff00000000, 0xffffefffffffffff, 32, x4, 112, x17)

# rs1==x23, rd==x18, imm_val == 62, rs1_val == 67108864
# opcode: slli ; op1:x23; dest:x18; op1val:0x0000000004000000;  immval:62
TEST_IMM_OP( slli, x18, x23, 0x0, 0x0000000004000000, 62, x4, 120, x17)

# rs1==x0, rd==x10, imm_val == 61, rs1_val == -1099511627777
# opcode: slli ; op1:x0; dest:x10; op1val:0xfffffeffffffffff;  immval:61
TEST_IMM_OP( slli, x10, x0, 0xe000000000000000, 0xfffffeffffffffff, 61, x4, 128, x17)

# rs1==x2, rd==x23, imm_val == 55, rs1_val == -549755813889
# opcode: slli ; op1:x2; dest:x23; op1val:0xffffff7fffffffff;  immval:55
TEST_IMM_OP( slli, x23, x2, 0xff80000000000000, 0xffffff7fffffffff, 55, x4, 136, x17)

# rs1==x14, rd==x29, imm_val == 47, rs1_val == 34359738368
# opcode: slli ; op1:x14; dest:x29; op1val:0x0000000800000000;  immval:47
TEST_IMM_OP( slli, x29, x14, 0x0, 0x0000000800000000, 47, x4, 144, x17)

# rs1==x13, rd==x3, imm_val == 31, rs1_val == -16385
# opcode: slli ; op1:x13; dest:x3; op1val:0xffffffffffffbfff;  immval:31
TEST_IMM_OP( slli, x3, x13, 0xffffdfff80000000, 0xffffffffffffbfff, 31, x4, 152, x17)

# rs1==x24, rd==x21, imm_val == 21, rs1_val == -2199023255553
# opcode: slli ; op1:x24; dest:x21; op1val:0xfffffdffffffffff;  immval:21
TEST_IMM_OP( slli, x21, x24, 0xbfffffffffe00000, 0xfffffdffffffffff, 21, x4, 160, x17)

# rs1==x25, rd==x16, imm_val == 42, rs1_val == -288230376151711745
# opcode: slli ; op1:x25; dest:x16; op1val:0xfbffffffffffffff;  immval:42
TEST_IMM_OP( slli, x16, x25, 0xfffffc0000000000, 0xfbffffffffffffff, 42, x4, 168, x3)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x19, rd==x15, rs1_val == 2, 
# opcode: slli ; op1:x19; dest:x15; op1val:0x0000000000000002;  immval:8
TEST_IMM_OP( slli, x15, x19, 0x200, 0x0000000000000002, 8, x2, 0, x3)

# rs1==x6, rd==x14, rs1_val == 4, 
# opcode: slli ; op1:x6; dest:x14; op1val:0x0000000000000004;  immval:5
TEST_IMM_OP( slli, x14, x6, 0x80, 0x0000000000000004, 5, x2, 8, x3)

# rs1==x21, rd==x28, rs1_val == 8, 
# opcode: slli ; op1:x21; dest:x28; op1val:0x0000000000000008;  immval:5
TEST_IMM_OP( slli, x28, x21, 0x100, 0x0000000000000008, 5, x2, 16, x3)

# rs1==x4, rd==x13, rs1_val == 16, 
# opcode: slli ; op1:x4; dest:x13; op1val:0x0000000000000010;  immval:9
TEST_IMM_OP( slli, x13, x4, 0x2000, 0x0000000000000010, 9, x2, 24, x3)

# rs1==x27, rd==x17, rs1_val == 32, 
# opcode: slli ; op1:x27; dest:x17; op1val:0x0000000000000020;  immval:19
TEST_IMM_OP( slli, x17, x27, 0x1000000, 0x0000000000000020, 19, x2, 32, x3)

# rs1==x18, rd==x25, rs1_val == 64, 
# opcode: slli ; op1:x18; dest:x25; op1val:0x0000000000000040;  immval:8
TEST_IMM_OP( slli, x25, x18, 0x4000, 0x0000000000000040, 8, x2, 40, x3)

# rs1==x30, rd==x22, rs1_val == 128, 
# opcode: slli ; op1:x30; dest:x22; op1val:0x0000000000000080;  immval:2
TEST_IMM_OP( slli, x22, x30, 0x200, 0x0000000000000080, 2, x2, 48, x3)

# rs1==x5, rd==x1, rs1_val == 256, 
# opcode: slli ; op1:x5; dest:x1; op1val:0x0000000000000100;  immval:3
TEST_IMM_OP( slli, x1, x5, 0x800, 0x0000000000000100, 3, x2, 56, x3)

# rs1==x20, rd==x4, rs1_val == 512, 
# opcode: slli ; op1:x20; dest:x4; op1val:0x0000000000000200;  immval:62
TEST_IMM_OP( slli, x4, x20, 0x0, 0x0000000000000200, 62, x2, 64, x3)

# rs1==x17, rd==x27, rs1_val == 1024, 
# opcode: slli ; op1:x17; dest:x27; op1val:0x0000000000000400;  immval:55
TEST_IMM_OP( slli, x27, x17, 0x0, 0x0000000000000400, 55, x2, 72, x3)

# rs1_val == 2048, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000000800;  immval:32
TEST_IMM_OP( slli, x11, x10, 0x80000000000, 0x0000000000000800, 32, x2, 80, x3)

# rs1_val == 4096, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000001000;  immval:7
TEST_IMM_OP( slli, x11, x10, 0x80000, 0x0000000000001000, 7, x2, 88, x3)

# rs1_val == 8192, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000002000;  immval:6
TEST_IMM_OP( slli, x11, x10, 0x80000, 0x0000000000002000, 6, x2, 96, x3)

# rs1_val == 16384, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000004000;  immval:15
TEST_IMM_OP( slli, x11, x10, 0x20000000, 0x0000000000004000, 15, x2, 104, x3)

# rs1_val == 32768, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000008000;  immval:62
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000008000, 62, x2, 112, x3)

# rs1_val == 65536, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000010000;  immval:10
TEST_IMM_OP( slli, x11, x10, 0x4000000, 0x0000000000010000, 10, x2, 120, x3)

# rs1_val == 131072, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000020000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x100000, 0x0000000000020000, 3, x2, 128, x3)

# rs1_val == 262144, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000040000;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000040000, 63, x2, 136, x3)

# rs1_val == 524288, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000080000;  immval:16
TEST_IMM_OP( slli, x11, x10, 0x800000000, 0x0000000000080000, 16, x2, 144, x3)

# rs1_val == 1048576, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000100000;  immval:11
TEST_IMM_OP( slli, x11, x10, 0x80000000, 0x0000000000100000, 11, x2, 152, x3)

# rs1_val == 2097152, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000200000;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x4000000000, 0x0000000000200000, 17, x2, 160, x3)

# rs1_val == 4194304, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000400000;  immval:11
TEST_IMM_OP( slli, x11, x10, 0x200000000, 0x0000000000400000, 11, x2, 168, x3)

# rs1_val == 8388608, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000800000;  immval:47
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000000800000, 47, x2, 176, x3)

# rs1_val == 16777216, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000001000000;  immval:18
TEST_IMM_OP( slli, x11, x10, 0x40000000000, 0x0000000001000000, 18, x2, 184, x3)

# rs1_val == 33554432, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000002000000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x100000000000, 0x0000000002000000, 19, x2, 192, x3)

# rs1_val == 134217728, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000008000000;  immval:21
TEST_IMM_OP( slli, x11, x10, 0x1000000000000, 0x0000000008000000, 21, x2, 200, x3)

# rs1_val == 268435456, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000010000000;  immval:61
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000010000000, 61, x2, 208, x3)

# rs1_val == 536870912, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000020000000;  immval:17
TEST_IMM_OP( slli, x11, x10, 0x400000000000, 0x0000000020000000, 17, x2, 216, x3)

# rs1_val == 1073741824, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000040000000;  immval:2
TEST_IMM_OP( slli, x11, x10, 0x100000000, 0x0000000040000000, 2, x2, 224, x3)

# rs1_val == 2147483648, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000080000000;  immval:62
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000000080000000, 62, x2, 232, x3)

# rs1_val == 4294967296, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000100000000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x1000000000, 0x0000000100000000, 4, x2, 240, x3)

# rs1_val == 8589934592, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000200000000;  immval:10
TEST_IMM_OP( slli, x11, x10, 0x80000000000, 0x0000000200000000, 10, x2, 248, x3)

# rs1_val == 17179869184, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000400000000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x4000000000, 0x0000000400000000, 4, x2, 256, x3)

# rs1_val == 137438953472, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000002000000000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x10000000000, 0x0000002000000000, 3, x2, 264, x3)

# rs1_val == 274877906944, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000004000000000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x20000000000, 0x0000004000000000, 3, x2, 272, x3)

# rs1_val == 549755813888, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000008000000000;  immval:8
TEST_IMM_OP( slli, x11, x10, 0x800000000000, 0x0000008000000000, 8, x2, 280, x3)

# rs1_val == 1099511627776, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000010000000000;  immval:47
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000010000000000, 47, x2, 288, x3)

# rs1_val == 2199023255552, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000020000000000;  immval:3
TEST_IMM_OP( slli, x11, x10, 0x100000000000, 0x0000020000000000, 3, x2, 296, x3)

# rs1_val == 8796093022208, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000080000000000;  immval:42
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000080000000000, 42, x2, 304, x3)

# rs1_val == 17592186044416, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000100000000000;  immval:11
TEST_IMM_OP( slli, x11, x10, 0x80000000000000, 0x0000100000000000, 11, x2, 312, x3)

# rs1_val == 35184372088832, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000200000000000;  immval:47
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0000200000000000, 47, x2, 320, x3)

# rs1_val == 70368744177664, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000400000000000;  immval:4
TEST_IMM_OP( slli, x11, x10, 0x4000000000000, 0x0000400000000000, 4, x2, 328, x3)

# rs1_val == 140737488355328, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000800000000000;  immval:14
TEST_IMM_OP( slli, x11, x10, 0x2000000000000000, 0x0000800000000000, 14, x2, 336, x3)

# rs1_val == 281474976710656, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0001000000000000;  immval:42
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0001000000000000, 42, x2, 344, x3)

# rs1_val == 562949953421312, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0002000000000000;  immval:16
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0002000000000000, 16, x2, 352, x3)

# rs1_val == 1125899906842624, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0004000000000000;  immval:19
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0004000000000000, 19, x2, 360, x3)

# rs1_val == 2251799813685248, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0008000000000000;  immval:42
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0008000000000000, 42, x2, 368, x3)

# rs1_val == 4503599627370496, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0010000000000000;  immval:6
TEST_IMM_OP( slli, x11, x10, 0x400000000000000, 0x0010000000000000, 6, x2, 376, x3)

# rs1_val == 9007199254740992, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0020000000000000;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0020000000000000, 63, x2, 384, x3)

# rs1_val == 18014398509481984, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0040000000000000;  immval:14
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0040000000000000, 14, x2, 392, x3)

# rs1_val == 36028797018963968, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0080000000000000;  immval:55
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0080000000000000, 55, x2, 400, x3)

# rs1_val == -4398046511105, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffbffffffffff;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xfffff7fffffffffe, 0xfffffbffffffffff, 1, x2, 408, x3)

# rs1_val == -8796093022209, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffff7ffffffffff;  immval:14
TEST_IMM_OP( slli, x11, x10, 0xfdffffffffffc000, 0xfffff7ffffffffff, 14, x2, 416, x3)

# rs1_val == -70368744177665, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffbfffffffffff;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xffff7ffffffffffe, 0xffffbfffffffffff, 1, x2, 424, x3)

# rs1_val == -140737488355329, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffff7fffffffffff;  immval:14
TEST_IMM_OP( slli, x11, x10, 0xdfffffffffffc000, 0xffff7fffffffffff, 14, x2, 432, x3)

# rs1_val == -281474976710657, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffeffffffffffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xffffffffffff0000, 0xfffeffffffffffff, 16, x2, 440, x3)

# rs1_val == -562949953421313, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffdffffffffffff;  immval:59
TEST_IMM_OP( slli, x11, x10, 0xf800000000000000, 0xfffdffffffffffff, 59, x2, 448, x3)

# rs1_val == -1125899906842625, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffbffffffffffff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xfdffffffffffff80, 0xfffbffffffffffff, 7, x2, 456, x3)

# rs1_val == -2251799813685249, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfff7ffffffffffff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfffffffffff80000, 0xfff7ffffffffffff, 19, x2, 464, x3)

# rs1_val == -4503599627370497, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffefffffffffffff;  immval:42
TEST_IMM_OP( slli, x11, x10, 0xfffffc0000000000, 0xffefffffffffffff, 42, x2, 472, x3)

# rs1_val == -9007199254740993, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffdfffffffffffff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfffffffffff80000, 0xffdfffffffffffff, 19, x2, 480, x3)

# rs1_val == -18014398509481985, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffbfffffffffffff;  immval:21
TEST_IMM_OP( slli, x11, x10, 0xffffffffffe00000, 0xffbfffffffffffff, 21, x2, 488, x3)

# rs1_val == -36028797018963969, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xff7fffffffffffff;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xfefffffffffffffe, 0xff7fffffffffffff, 1, x2, 496, x3)

# rs1_val == -72057594037927937, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfeffffffffffffff;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x8000000000000000, 0xfeffffffffffffff, 63, x2, 504, x3)

# rs1_val == -144115188075855873, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfdffffffffffffff;  immval:62
TEST_IMM_OP( slli, x11, x10, 0xc000000000000000, 0xfdffffffffffffff, 62, x2, 512, x3)

# rs1_val == -576460752303423489, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xf7ffffffffffffff;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffe0000, 0xf7ffffffffffffff, 17, x2, 520, x3)

# rs1_val == -1152921504606846977, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xefffffffffffffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffff00, 0xefffffffffffffff, 8, x2, 528, x3)

# rs1_val == -2305843009213693953, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xdfffffffffffffff;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xffffffffffff0000, 0xdfffffffffffffff, 16, x2, 536, x3)

# rs1_val == -4611686018427387905, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xbfffffffffffffff;  immval:59
TEST_IMM_OP( slli, x11, x10, 0xf800000000000000, 0xbfffffffffffffff, 59, x2, 544, x3)

# rs1_val == 6148914691236517205, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x5555555555555555;  immval:17
TEST_IMM_OP( slli, x11, x10, 0xaaaaaaaaaaaa0000, 0x5555555555555555, 17, x2, 552, x3)

# rs1_val == -6148914691236517206, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xaaaaaaaaaaaaaaaa;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xaaaaaaaaaaaaaaa0, 0xaaaaaaaaaaaaaaaa, 4, x2, 560, x3)

# rs1_val == 72057594037927936, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0100000000000000;  immval:62
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0100000000000000, 62, x2, 568, x3)

# rs1_val == 144115188075855872, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0200000000000000;  immval:62
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0200000000000000, 62, x2, 576, x3)

# rs1_val == 288230376151711744, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0400000000000000;  immval:10
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0400000000000000, 10, x2, 584, x3)

# rs1_val == 576460752303423488, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0800000000000000;  immval:32
TEST_IMM_OP( slli, x11, x10, 0x0, 0x0800000000000000, 32, x2, 592, x3)

# rs1_val == 1152921504606846976, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x1000000000000000;  immval:47
TEST_IMM_OP( slli, x11, x10, 0x0, 0x1000000000000000, 47, x2, 600, x3)

# rs1_val == 2305843009213693952, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x2000000000000000;  immval:42
TEST_IMM_OP( slli, x11, x10, 0x0, 0x2000000000000000, 42, x2, 608, x3)

# rs1_val == 4611686018427387904, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x4000000000000000;  immval:9
TEST_IMM_OP( slli, x11, x10, 0x0, 0x4000000000000000, 9, x2, 616, x3)

# rs1_val == -2, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffe;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffe0000, 0xfffffffffffffffe, 16, x2, 624, x3)

# rs1_val == -3, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffd;  immval:16
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffd0000, 0xfffffffffffffffd, 16, x2, 632, x3)

# rs1_val == -5, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffffb;  immval:31
TEST_IMM_OP( slli, x11, x10, 0xfffffffd80000000, 0xfffffffffffffffb, 31, x2, 640, x3)

# rs1_val == -9, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffff7;  immval:47
TEST_IMM_OP( slli, x11, x10, 0xfffb800000000000, 0xfffffffffffffff7, 47, x2, 648, x3)

# rs1_val == -17, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffef;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffffbc, 0xffffffffffffffef, 2, x2, 656, x3)

# rs1_val == -33, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffdf;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xffffffffffffef80, 0xffffffffffffffdf, 7, x2, 664, x3)

# rs1_val == -65, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffffbf;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xfffffffffefc0000, 0xffffffffffffffbf, 18, x2, 672, x3)

# rs1_val == -129, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffff7f;  immval:1
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffffefe, 0xffffffffffffff7f, 1, x2, 680, x3)

# rs1_val == -257, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffeff;  immval:19
TEST_IMM_OP( slli, x11, x10, 0xfffffffff7f80000, 0xfffffffffffffeff, 19, x2, 688, x3)

# rs1_val == -513, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffdff;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x8000000000000000, 0xfffffffffffffdff, 63, x2, 696, x3)

# rs1_val == -1025, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffffbff;  immval:6
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffeffc0, 0xfffffffffffffbff, 6, x2, 704, x3)

# rs1_val == -2049, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffff7ff;  immval:14
TEST_IMM_OP( slli, x11, x10, 0xfffffffffdffc000, 0xfffffffffffff7ff, 14, x2, 712, x3)

# rs1_val == -4097, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffefff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xfffffffffff7ff80, 0xffffffffffffefff, 7, x2, 720, x3)

# rs1_val == -8193, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffffdfff;  immval:61
TEST_IMM_OP( slli, x11, x10, 0xe000000000000000, 0xffffffffffffdfff, 61, x2, 728, x3)

# rs1_val == -32769, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffff7fff;  immval:32
TEST_IMM_OP( slli, x11, x10, 0xffff7fff00000000, 0xffffffffffff7fff, 32, x2, 736, x3)

# rs1_val == -65537, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffeffff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xfffffffffffeffff, 0xfffffffffffeffff, 0, x2, 744, x3)

# rs1_val == -131073, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffdffff;  immval:32
TEST_IMM_OP( slli, x11, x10, 0xfffdffff00000000, 0xfffffffffffdffff, 32, x2, 752, x3)

# rs1_val == -262145, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffffbffff;  immval:4
TEST_IMM_OP( slli, x11, x10, 0xffffffffffbffff0, 0xfffffffffffbffff, 4, x2, 760, x3)

# rs1_val == -524289, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffff7ffff;  immval:62
TEST_IMM_OP( slli, x11, x10, 0xc000000000000000, 0xfffffffffff7ffff, 62, x2, 768, x3)

# rs1_val == -1048577, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffefffff;  immval:3
TEST_IMM_OP( slli, x11, x10, 0xffffffffff7ffff8, 0xffffffffffefffff, 3, x2, 776, x3)

# rs1_val == -2097153, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffdfffff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffffffffff7ffffc, 0xffffffffffdfffff, 2, x2, 784, x3)

# rs1_val == -4194305, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffffbfffff;  immval:5
TEST_IMM_OP( slli, x11, x10, 0xfffffffff7ffffe0, 0xffffffffffbfffff, 5, x2, 792, x3)

# rs1_val == -8388609, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffff7fffff;  immval:18
TEST_IMM_OP( slli, x11, x10, 0xfffffdfffffc0000, 0xffffffffff7fffff, 18, x2, 800, x3)

# rs1_val == -33554433, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffdffffff;  immval:47
TEST_IMM_OP( slli, x11, x10, 0xffff800000000000, 0xfffffffffdffffff, 47, x2, 808, x3)

# rs1_val == -67108865, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffffbffffff;  immval:12
TEST_IMM_OP( slli, x11, x10, 0xffffffbffffff000, 0xfffffffffbffffff, 12, x2, 816, x3)

# rs1_val == -134217729, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffff7ffffff;  immval:31
TEST_IMM_OP( slli, x11, x10, 0xfbffffff80000000, 0xfffffffff7ffffff, 31, x2, 824, x3)

# rs1_val == -268435457, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffefffffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xffffffefffffff00, 0xffffffffefffffff, 8, x2, 832, x3)

# rs1_val == -536870913, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffdfffffff;  immval:15
TEST_IMM_OP( slli, x11, x10, 0xffffefffffff8000, 0xffffffffdfffffff, 15, x2, 840, x3)

# rs1_val == -1073741825, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffffbfffffff;  immval:9
TEST_IMM_OP( slli, x11, x10, 0xffffff7ffffffe00, 0xffffffffbfffffff, 9, x2, 848, x3)

# rs1_val == -4294967297, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffeffffffff;  immval:63
TEST_IMM_OP( slli, x11, x10, 0x8000000000000000, 0xfffffffeffffffff, 63, x2, 856, x3)

# rs1_val == -8589934593, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffdffffffff;  immval:8
TEST_IMM_OP( slli, x11, x10, 0xfffffdffffffff00, 0xfffffffdffffffff, 8, x2, 864, x3)

# rs1_val == -17179869185, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffffbffffffff;  immval:10
TEST_IMM_OP( slli, x11, x10, 0xffffeffffffffc00, 0xfffffffbffffffff, 10, x2, 872, x3)

# rs1_val == -34359738369, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffff7ffffffff;  immval:2
TEST_IMM_OP( slli, x11, x10, 0xffffffdffffffffc, 0xfffffff7ffffffff, 2, x2, 880, x3)

# rs1_val == -68719476737, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffefffffffff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xfffff7ffffffff80, 0xffffffefffffffff, 7, x2, 888, x3)

# rs1_val == -137438953473, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffdfffffffff;  immval:7
TEST_IMM_OP( slli, x11, x10, 0xffffefffffffff80, 0xffffffdfffffffff, 7, x2, 896, x3)

# rs1_val == -274877906945, 
# opcode: slli ; op1:x10; dest:x11; op1val:0xffffffbfffffffff;  immval:0
TEST_IMM_OP( slli, x11, x10, 0xffffffbfffffffff, 0xffffffbfffffffff, 0, x2, 904, x3)

# rs1_val == imm_val and imm_val > 0 and imm_val < xlen, 
# opcode: slli ; op1:x10; dest:x11; op1val:0x0000000000000006;  immval:6
TEST_IMM_OP( slli, x11, x10, 0x180, 0x0000000000000006, 6, x2, 912, x3)

# imm_val == 61, rs1_val == -1099511627777
# opcode: slli ; op1:x10; dest:x11; op1val:0xfffffeffffffffff;  immval:61
TEST_IMM_OP( slli, x11, x10, 0xe000000000000000, 0xfffffeffffffffff, 61, x2, 920, x3)
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

signature_x4_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x4_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x2_0:
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
