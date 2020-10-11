
#This assembly file tests the ori instruction of the RISC-V I extension for the ori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",ori)

la x21,signature_x21_1

# rs1 == rd, rs1==x1, rd==x1, rs1_val == imm_val, imm_val == -65, rs1_val == -65, rs1_val < 0 and imm_val < 0
# opcode: ori ; op1:x1; dest:x1; op1val:0xffffffbf;  immval:-65
TEST_IMM_OP( ori, x1, x1, 0xffffffbf, 0xffffffbf, -65, x21, 0, x23)

# rs1 != rd, rs1==x25, rd==x0, rs1_val != imm_val, rs1_val == 8, rs1_val > 0 and imm_val > 0
# opcode: ori ; op1:x25; dest:x0; op1val:0x00000008;  immval:3
TEST_IMM_OP( ori, x0, x25, 0xb, 0x00000008, 3, x21, 4, x23)

# rs1==x12, rd==x5, rs1_val > 0 and imm_val < 0, imm_val == -17
# opcode: ori ; op1:x12; dest:x5; op1val:0x00000003;  immval:-17
TEST_IMM_OP( ori, x5, x12, 0xffffffef, 0x00000003, -17, x21, 8, x23)

# rs1==x22, rd==x12, rs1_val < 0 and imm_val > 0, rs1_val == -524289
# opcode: ori ; op1:x22; dest:x12; op1val:0xfff7ffff;  immval:9
TEST_IMM_OP( ori, x12, x22, 0xfff7ffff, 0xfff7ffff, 9, x21, 12, x23)

# rs1==x6, rd==x15, rs1_val == (-2**(xlen-1)), imm_val == -2048, imm_val == (-2**(12-1)), rs1_val == -2147483648
# opcode: ori ; op1:x6; dest:x15; op1val:0x80000000;  immval:-2048
TEST_IMM_OP( ori, x15, x6, 0xfffff800, 0x80000000, -2048, x21, 16, x23)

# rs1==x2, rd==x18, rs1_val == 0, 
# opcode: ori ; op1:x2; dest:x18; op1val:0x00000000;  immval:-8
TEST_IMM_OP( ori, x18, x2, 0xfffffff8, 0x00000000, -8, x21, 20, x23)

# rs1==x29, rd==x24, rs1_val == (2**(xlen-1)-1), imm_val == 4, rs1_val == 2147483647
# opcode: ori ; op1:x29; dest:x24; op1val:0x7fffffff;  immval:4
TEST_IMM_OP( ori, x24, x29, 0x7fffffff, 0x7fffffff, 4, x21, 24, x23)

# rs1==x14, rd==x3, rs1_val == 1, imm_val == 1024
# opcode: ori ; op1:x14; dest:x3; op1val:0x00000001;  immval:1024
TEST_IMM_OP( ori, x3, x14, 0x401, 0x00000001, 1024, x21, 28, x23)

# rs1==x15, rd==x7, imm_val == 0, rs1_val == -65537
# opcode: ori ; op1:x15; dest:x7; op1val:0xfffeffff;  immval:0
TEST_IMM_OP( ori, x7, x15, 0xfffeffff, 0xfffeffff, 0, x21, 32, x23)

# rs1==x20, rd==x26, imm_val == (2**(12-1)-1), imm_val == 2047
# opcode: ori ; op1:x20; dest:x26; op1val:0x00000008;  immval:2047
TEST_IMM_OP( ori, x26, x20, 0x7ff, 0x00000008, 2047, x21, 36, x23)

# rs1==x4, rd==x9, imm_val == 1, rs1_val == 4
# opcode: ori ; op1:x4; dest:x9; op1val:0x00000004;  immval:1
TEST_IMM_OP( ori, x9, x4, 0x5, 0x00000004, 1, x21, 40, x23)

# rs1==x30, rd==x6, rs1_val == 2, imm_val == 64
# opcode: ori ; op1:x30; dest:x6; op1val:0x00000002;  immval:64
TEST_IMM_OP( ori, x6, x30, 0x42, 0x00000002, 64, x21, 44, x23)

# rs1==x5, rd==x13, rs1_val == 16, 
# opcode: ori ; op1:x5; dest:x13; op1val:0x00000010;  immval:-7
TEST_IMM_OP( ori, x13, x5, 0xfffffff9, 0x00000010, -7, x21, 48, x23)

# rs1==x0, rd==x30, rs1_val == 32, imm_val == 512
# opcode: ori ; op1:x0; dest:x30; op1val:0x00000020;  immval:512
TEST_IMM_OP( ori, x30, x0, 0x220, 0x00000020, 512, x21, 52, x23)

# rs1==x13, rd==x19, rs1_val == 64, 
# opcode: ori ; op1:x13; dest:x19; op1val:0x00000040;  immval:1
TEST_IMM_OP( ori, x19, x13, 0x41, 0x00000040, 1, x21, 56, x23)

# rs1==x11, rd==x27, rs1_val == 128, 
# opcode: ori ; op1:x11; dest:x27; op1val:0x00000080;  immval:-6
TEST_IMM_OP( ori, x27, x11, 0xfffffffa, 0x00000080, -6, x21, 60, x23)

# rs1==x10, rd==x25, rs1_val == 256, 
# opcode: ori ; op1:x10; dest:x25; op1val:0x00000100;  immval:-1024
TEST_IMM_OP( ori, x25, x10, 0xfffffd00, 0x00000100, -1024, x21, 64, x23)

# rs1==x3, rd==x14, rs1_val == 512, imm_val == -1366
# opcode: ori ; op1:x3; dest:x14; op1val:0x00000200;  immval:-1366
TEST_IMM_OP( ori, x14, x3, 0xfffffaaa, 0x00000200, -1366, x21, 68, x23)

# rs1==x27, rd==x8, rs1_val == 1024, imm_val == 16
# opcode: ori ; op1:x27; dest:x8; op1val:0x00000400;  immval:16
TEST_IMM_OP( ori, x8, x27, 0x410, 0x00000400, 16, x21, 72, x23)

# rs1==x26, rd==x17, rs1_val == 2048, 
# opcode: ori ; op1:x26; dest:x17; op1val:0x00000800;  immval:64
TEST_IMM_OP( ori, x17, x26, 0x840, 0x00000800, 64, x21, 76, x23)

# rs1==x16, rd==x10, rs1_val == 4096, imm_val == -9
# opcode: ori ; op1:x16; dest:x10; op1val:0x00001000;  immval:-9
TEST_IMM_OP( ori, x10, x16, 0xfffffff7, 0x00001000, -9, x21, 80, x23)

# rs1==x7, rd==x2, rs1_val == 8192, 
# opcode: ori ; op1:x7; dest:x2; op1val:0x00002000;  immval:4
TEST_IMM_OP( ori, x2, x7, 0x2004, 0x00002000, 4, x21, 84, x3)

# rs1==x28, rd==x11, rs1_val == 16384, 
# opcode: ori ; op1:x28; dest:x11; op1val:0x00004000;  immval:1
TEST_IMM_OP( ori, x11, x28, 0x4001, 0x00004000, 1, x21, 88, x3)
la x1,signature_x1_0

# rs1==x17, rd==x22, rs1_val == 32768, 
# opcode: ori ; op1:x17; dest:x22; op1val:0x00008000;  immval:-7
TEST_IMM_OP( ori, x22, x17, 0xfffffff9, 0x00008000, -7, x1, 0, x3)

# rs1==x23, rd==x31, rs1_val == 65536, imm_val == -5
# opcode: ori ; op1:x23; dest:x31; op1val:0x00010000;  immval:-5
TEST_IMM_OP( ori, x31, x23, 0xfffffffb, 0x00010000, -5, x1, 4, x3)

# rs1==x21, rd==x4, rs1_val == 131072, 
# opcode: ori ; op1:x21; dest:x4; op1val:0x00020000;  immval:0
TEST_IMM_OP( ori, x4, x21, 0x20000, 0x00020000, 0, x1, 8, x3)

# rs1==x24, rd==x20, rs1_val == 262144, 
# opcode: ori ; op1:x24; dest:x20; op1val:0x00040000;  immval:512
TEST_IMM_OP( ori, x20, x24, 0x40200, 0x00040000, 512, x1, 12, x3)

# rs1==x8, rd==x16, rs1_val == 524288, 
# opcode: ori ; op1:x8; dest:x16; op1val:0x00080000;  immval:512
TEST_IMM_OP( ori, x16, x8, 0x80200, 0x00080000, 512, x1, 16, x3)

# rs1==x18, rd==x23, rs1_val == 1048576, imm_val == 2
# opcode: ori ; op1:x18; dest:x23; op1val:0x00100000;  immval:2
TEST_IMM_OP( ori, x23, x18, 0x100002, 0x00100000, 2, x1, 20, x3)

# rs1==x31, rd==x29, rs1_val == 2097152, 
# opcode: ori ; op1:x31; dest:x29; op1val:0x00200000;  immval:-1366
TEST_IMM_OP( ori, x29, x31, 0xfffffaaa, 0x00200000, -1366, x1, 24, x3)

# rs1==x9, rd==x28, rs1_val == 4194304, 
# opcode: ori ; op1:x9; dest:x28; op1val:0x00400000;  immval:-9
TEST_IMM_OP( ori, x28, x9, 0xfffffff7, 0x00400000, -9, x1, 28, x3)

# rs1==x19, rd==x21, rs1_val == 8388608, imm_val == -1025
# opcode: ori ; op1:x19; dest:x21; op1val:0x00800000;  immval:-1025
TEST_IMM_OP( ori, x21, x19, 0xfffffbff, 0x00800000, -1025, x1, 32, x3)

# rs1_val == 16777216, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x01000000;  immval:5
TEST_IMM_OP( ori, x11, x10, 0x1000005, 0x01000000, 5, x1, 36, x3)

# rs1_val == 33554432, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x02000000;  immval:512
TEST_IMM_OP( ori, x11, x10, 0x2000200, 0x02000000, 512, x1, 40, x3)

# rs1_val == 67108864, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x04000000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x40003ff, 0x04000000, 1023, x1, 44, x3)

# rs1_val == 134217728, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x08000000;  immval:9
TEST_IMM_OP( ori, x11, x10, 0x8000009, 0x08000000, 9, x1, 48, x3)

# rs1_val == 268435456, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x10000000;  immval:1
TEST_IMM_OP( ori, x11, x10, 0x10000001, 0x10000000, 1, x1, 52, x3)

# rs1_val == 536870912, imm_val == -33
# opcode: ori ; op1:x10; dest:x11; op1val:0x20000000;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffdf, 0x20000000, -33, x1, 56, x3)

# rs1_val == 1073741824, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x40000000;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xfffff800, 0x40000000, -2048, x1, 60, x3)

# rs1_val == -2, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-2048
TEST_IMM_OP( ori, x11, x10, 0xfffffffe, 0xfffffffe, -2048, x1, 64, x3)

# rs1_val == -3, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffffd, -9, x1, 68, x3)

# rs1_val == -5, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffffb, -33, x1, 72, x3)

# rs1_val == -9, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xfffffff7, 0xfffffff7, 2, x1, 76, x3)

# rs1_val == -17, imm_val == 8
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffef;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xffffffef, 0xffffffef, 8, x1, 80, x3)

# rs1_val == -33, imm_val == -2
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffffdf, -2, x1, 84, x3)

# rs1_val == -129, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffff7f, -5, x1, 88, x3)

# rs1_val == -1048577, imm_val == 128
# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xffefffff, 0xffefffff, 128, x1, 92, x3)

# rs1_val == -2097153, imm_val == 1365
# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0xffdfffff, 0xffdfffff, 1365, x1, 96, x3)

# rs1_val == -4194305, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:16
TEST_IMM_OP( ori, x11, x10, 0xffbfffff, 0xffbfffff, 16, x1, 100, x3)

# rs1_val == -8388609, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xff7fffff, 0xff7fffff, 5, x1, 104, x3)

# rs1_val == -16777217, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0xfeffffff, 0xfeffffff, 1024, x1, 108, x3)

# rs1_val == -33554433, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xfdffffff, 0xfdffffff, 3, x1, 112, x3)

# rs1_val == -67108865, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xfbffffff, 0xfbffffff, 128, x1, 116, x3)

# rs1_val == -134217729, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xf7ffffff, -33, x1, 120, x3)

# rs1_val == -268435457, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xefffffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xefffffff, 0xefffffff, 128, x1, 124, x3)

# rs1_val == -536870913, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xdfffffff, -1025, x1, 128, x3)

# rs1_val == -1073741825, imm_val == 256
# opcode: ori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xbfffffff, 0xbfffffff, 256, x1, 132, x3)

# rs1_val == 1431655765, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x55555555;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0x555557ff, 0x55555555, 2047, x1, 136, x3)

# rs1_val == -1431655766, imm_val == 32
# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:32
TEST_IMM_OP( ori, x11, x10, 0xaaaaaaaa, 0xaaaaaaaa, 32, x1, 140, x3)

# imm_val == -129, rs1_val == -262145
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffbffff, -129, x1, 144, x3)

# imm_val == -257, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xfffffeff, 0xaaaaaaaa, -257, x1, 148, x3)

# imm_val == -513, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x80000000;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xfffffdff, 0x80000000, -513, x1, 152, x3)

# imm_val == -3, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x00000400;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffd, 0x00000400, -3, x1, 156, x3)

# rs1_val == -257, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xfffffeff, 0xfffffeff, 3, x1, 160, x3)

# rs1_val == -513, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffdff, -1025, x1, 164, x3)

# rs1_val == -1025, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:9
TEST_IMM_OP( ori, x11, x10, 0xfffffbff, 0xfffffbff, 9, x1, 168, x3)

# rs1_val == -2049, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffff7ff, -33, x1, 172, x3)

# rs1_val == -4097, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:9
TEST_IMM_OP( ori, x11, x10, 0xffffefff, 0xffffefff, 9, x1, 176, x3)

# rs1_val == -8193, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xffffdfff, 0xffffdfff, 2047, x1, 180, x3)

# rs1_val == -16385, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xffffbfff, 0xffffbfff, 2, x1, 184, x3)

# rs1_val == -32769, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-17
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffff7fff, -17, x1, 188, x3)

# rs1_val == -131073, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xfffdffff, 0xfffdffff, 8, x1, 192, x3)

# rs1_val == imm_val, imm_val == -65, rs1_val == -65, rs1_val < 0 and imm_val < 0
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffbf, 0xffffffbf, -65, x1, 196, x3)

# rs1_val != imm_val, rs1_val == 8, rs1_val > 0 and imm_val > 0
# opcode: ori ; op1:x10; dest:x11; op1val:0x00000008;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xb, 0x00000008, 3, x1, 200, x3)

# rs1_val == 32, imm_val == 512
# opcode: ori ; op1:x10; dest:x11; op1val:0x00000020;  immval:512
TEST_IMM_OP( ori, x11, x10, 0x220, 0x00000020, 512, x1, 204, x3)
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

signature_x21_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x21_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 52*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
