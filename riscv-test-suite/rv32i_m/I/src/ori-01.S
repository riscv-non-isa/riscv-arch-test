
#This assembly file tests the ori instruction of the RISC-V I extension for the ori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",ori)

RVTEST_SIGBASE( x2,signature_x2_1)

# rs1 != rd, rs1==x17, rd==x13, rs1_val == imm_val, rs1_val > 0 and imm_val > 0
# opcode: ori ; op1:x17; dest:x13; op1val:0x00000003;  immval:3
TEST_IMM_OP( ori, x13, x17, 0x3, 0x00000003, 3, x2, 0, x4)

# rs1 == rd, rs1==x14, rd==x14, rs1_val != imm_val, rs1_val < 0 and imm_val > 0, imm_val == 512, rs1_val == -8388609
# opcode: ori ; op1:x14; dest:x14; op1val:0xff7fffff;  immval:512
TEST_IMM_OP( ori, x14, x14, 0xff7fffff, 0xff7fffff, 512, x2, 4, x4)

# rs1==x18, rd==x27, rs1_val > 0 and imm_val < 0, rs1_val == 512
# opcode: ori ; op1:x18; dest:x27; op1val:0x00000200;  immval:-4
TEST_IMM_OP( ori, x27, x18, 0xfffffffc, 0x00000200, -4, x2, 8, x4)

# rs1==x16, rd==x19, rs1_val < 0 and imm_val < 0, imm_val == -3, rs1_val == -129
# opcode: ori ; op1:x16; dest:x19; op1val:0xffffff7f;  immval:-3
TEST_IMM_OP( ori, x19, x16, 0xffffffff, 0xffffff7f, -3, x2, 12, x4)

# rs1==x28, rd==x25, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648, imm_val == -9
# opcode: ori ; op1:x28; dest:x25; op1val:0x80000000;  immval:-9
TEST_IMM_OP( ori, x25, x28, 0xfffffff7, 0x80000000, -9, x2, 16, x4)

# rs1==x13, rd==x3, rs1_val == 0, imm_val == 128
# opcode: ori ; op1:x13; dest:x3; op1val:0x00000000;  immval:128
TEST_IMM_OP( ori, x3, x13, 0x80, 0x00000000, 128, x2, 20, x4)

# rs1==x23, rd==x22, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647, imm_val == 256
# opcode: ori ; op1:x23; dest:x22; op1val:0x7fffffff;  immval:256
TEST_IMM_OP( ori, x22, x23, 0x7fffffff, 0x7fffffff, 256, x2, 24, x4)

# rs1==x22, rd==x23, rs1_val == 1, imm_val == -17
# opcode: ori ; op1:x22; dest:x23; op1val:0x00000001;  immval:-17
TEST_IMM_OP( ori, x23, x22, 0xffffffef, 0x00000001, -17, x2, 28, x4)

# rs1==x31, rd==x10, imm_val == (-2**(12-1)), imm_val == -2048
# opcode: ori ; op1:x31; dest:x10; op1val:0xfffffffc;  immval:-2048
TEST_IMM_OP( ori, x10, x31, 0xfffffffc, 0xfffffffc, -2048, x2, 32, x4)

# rs1==x20, rd==x24, imm_val == 0, rs1_val == 8388608
# opcode: ori ; op1:x20; dest:x24; op1val:0x00800000;  immval:0
TEST_IMM_OP( ori, x24, x20, 0x800000, 0x00800000, 0, x2, 36, x4)

# rs1==x0, rd==x12, imm_val == (2**(12-1)-1), imm_val == 2047
# opcode: ori ; op1:x0; dest:x12; op1val:0xffffff7f;  immval:2047
TEST_IMM_OP( ori, x12, x0, 0xffffffff, 0xffffff7f, 2047, x2, 40, x4)

# rs1==x30, rd==x16, imm_val == 1, rs1_val == -262145
# opcode: ori ; op1:x30; dest:x16; op1val:0xfffbffff;  immval:1
TEST_IMM_OP( ori, x16, x30, 0xfffbffff, 0xfffbffff, 1, x2, 44, x4)

# rs1==x10, rd==x28, rs1_val == 2, imm_val == 64
# opcode: ori ; op1:x10; dest:x28; op1val:0x00000002;  immval:64
TEST_IMM_OP( ori, x28, x10, 0x42, 0x00000002, 64, x2, 48, x4)

# rs1==x12, rd==x8, rs1_val == 4, imm_val == 32
# opcode: ori ; op1:x12; dest:x8; op1val:0x00000004;  immval:32
TEST_IMM_OP( ori, x8, x12, 0x24, 0x00000004, 32, x2, 52, x4)

# rs1==x15, rd==x29, rs1_val == 8, imm_val == 8
# opcode: ori ; op1:x15; dest:x29; op1val:0x00000008;  immval:8
TEST_IMM_OP( ori, x29, x15, 0x8, 0x00000008, 8, x2, 56, x4)

# rs1==x25, rd==x5, rs1_val == 16, imm_val == 2
# opcode: ori ; op1:x25; dest:x5; op1val:0x00000010;  immval:2
TEST_IMM_OP( ori, x5, x25, 0x12, 0x00000010, 2, x2, 60, x4)

# rs1==x11, rd==x20, rs1_val == 32, imm_val == -65
# opcode: ori ; op1:x11; dest:x20; op1val:0x00000020;  immval:-65
TEST_IMM_OP( ori, x20, x11, 0xffffffbf, 0x00000020, -65, x2, 64, x4)

# rs1==x7, rd==x6, rs1_val == 64, 
# opcode: ori ; op1:x7; dest:x6; op1val:0x00000040;  immval:64
TEST_IMM_OP( ori, x6, x7, 0x40, 0x00000040, 64, x2, 68, x4)

# rs1==x21, rd==x11, rs1_val == 128, 
# opcode: ori ; op1:x21; dest:x11; op1val:0x00000080;  immval:-6
TEST_IMM_OP( ori, x11, x21, 0xfffffffa, 0x00000080, -6, x2, 72, x4)

# rs1==x27, rd==x7, rs1_val == 256, imm_val == -257
# opcode: ori ; op1:x27; dest:x7; op1val:0x00000100;  immval:-257
TEST_IMM_OP( ori, x7, x27, 0xffffffff, 0x00000100, -257, x2, 76, x4)

# rs1==x5, rd==x1, rs1_val == 1024, 
# opcode: ori ; op1:x5; dest:x1; op1val:0x00000400;  immval:512
TEST_IMM_OP( ori, x1, x5, 0x600, 0x00000400, 512, x2, 80, x4)

# rs1==x3, rd==x18, rs1_val == 2048, 
# opcode: ori ; op1:x3; dest:x18; op1val:0x00000800;  immval:2
TEST_IMM_OP( ori, x18, x3, 0x802, 0x00000800, 2, x2, 84, x5)

# rs1==x6, rd==x9, rs1_val == 4096, imm_val == 1024
# opcode: ori ; op1:x6; dest:x9; op1val:0x00001000;  immval:1024
TEST_IMM_OP( ori, x9, x6, 0x1400, 0x00001000, 1024, x2, 88, x5)
RVTEST_SIGBASE( x3,signature_x3_0)

# rs1==x19, rd==x15, rs1_val == 8192, imm_val == 4
# opcode: ori ; op1:x19; dest:x15; op1val:0x00002000;  immval:4
TEST_IMM_OP( ori, x15, x19, 0x2004, 0x00002000, 4, x3, 0, x5)

# rs1==x9, rd==x4, rs1_val == 16384, 
# opcode: ori ; op1:x9; dest:x4; op1val:0x00004000;  immval:2
TEST_IMM_OP( ori, x4, x9, 0x4002, 0x00004000, 2, x3, 4, x5)

# rs1==x24, rd==x0, rs1_val == 32768, 
# opcode: ori ; op1:x24; dest:x0; op1val:0x00008000;  immval:128
TEST_IMM_OP( ori, x0, x24, 0x8080, 0x00008000, 128, x3, 8, x5)

# rs1==x8, rd==x17, rs1_val == 65536, 
# opcode: ori ; op1:x8; dest:x17; op1val:0x00010000;  immval:1023
TEST_IMM_OP( ori, x17, x8, 0x103ff, 0x00010000, 1023, x3, 12, x5)

# rs1==x4, rd==x26, rs1_val == 131072, 
# opcode: ori ; op1:x4; dest:x26; op1val:0x00020000;  immval:4
TEST_IMM_OP( ori, x26, x4, 0x20004, 0x00020000, 4, x3, 16, x5)

# rs1==x29, rd==x30, rs1_val == 262144, 
# opcode: ori ; op1:x29; dest:x30; op1val:0x00040000;  immval:2047
TEST_IMM_OP( ori, x30, x29, 0x407ff, 0x00040000, 2047, x3, 20, x5)

# rs1==x1, rd==x31, rs1_val == 524288, 
# opcode: ori ; op1:x1; dest:x31; op1val:0x00080000;  immval:2047
TEST_IMM_OP( ori, x31, x1, 0x807ff, 0x00080000, 2047, x3, 24, x5)

# rs1==x2, rd==x21, rs1_val == 1048576, imm_val == -2
# opcode: ori ; op1:x2; dest:x21; op1val:0x00100000;  immval:-2
TEST_IMM_OP( ori, x21, x2, 0xfffffffe, 0x00100000, -2, x3, 28, x5)

# rs1==x26, rd==x2, rs1_val == 2097152, 
# opcode: ori ; op1:x26; dest:x2; op1val:0x00200000;  immval:2047
TEST_IMM_OP( ori, x2, x26, 0x2007ff, 0x00200000, 2047, x3, 32, x5)

# rs1_val == 4194304, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x00400000;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0x4007ff, 0x00400000, 2047, x3, 36, x5)

# rs1_val == 16777216, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x01000000;  immval:6
TEST_IMM_OP( ori, x11, x10, 0x1000006, 0x01000000, 6, x3, 40, x5)

# rs1_val == 33554432, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x02000000;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xfffffffd, 0x02000000, -3, x3, 44, x5)

# rs1_val == 67108864, imm_val == 16
# opcode: ori ; op1:x10; dest:x11; op1val:0x04000000;  immval:16
TEST_IMM_OP( ori, x11, x10, 0x4000010, 0x04000000, 16, x3, 48, x5)

# rs1_val == 134217728, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x08000000;  immval:1
TEST_IMM_OP( ori, x11, x10, 0x8000001, 0x08000000, 1, x3, 52, x5)

# rs1_val == 268435456, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x10000000;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0x100003ff, 0x10000000, 1023, x3, 56, x5)

# rs1_val == 536870912, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x20000000;  immval:512
TEST_IMM_OP( ori, x11, x10, 0x20000200, 0x20000000, 512, x3, 60, x5)

# rs1_val == 1073741824, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x40000000;  immval:16
TEST_IMM_OP( ori, x11, x10, 0x40000010, 0x40000000, 16, x3, 64, x5)

# rs1_val == -2, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xfffffffe, 0xfffffffe, -8, x3, 68, x5)

# rs1_val == -3, imm_val == -1366
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffffd, -1366, x3, 72, x5)

# rs1_val == -5, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffffb, 1023, x3, 76, x5)

# rs1_val == -9, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:2
TEST_IMM_OP( ori, x11, x10, 0xfffffff7, 0xfffffff7, 2, x3, 80, x5)

# rs1_val == -17, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffef;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffffef, -4, x3, 84, x5)

# rs1_val == -524289, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xfff7ffff, 0xfff7ffff, 3, x3, 88, x5)

# rs1_val == -1048577, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xffefffff, 0xffefffff, 1023, x3, 92, x5)

# rs1_val == -2097153, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:1
TEST_IMM_OP( ori, x11, x10, 0xffdfffff, 0xffdfffff, 1, x3, 96, x5)

# rs1_val == -4194305, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffbfffff, -4, x3, 100, x5)

# rs1_val == -16777217, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfeffffff, -4, x3, 104, x5)

# rs1_val == -33554433, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfdffffff, -9, x3, 108, x5)

# rs1_val == -67108865, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfbffffff, -7, x3, 112, x5)

# rs1_val == -134217729, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-8
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xf7ffffff, -8, x3, 116, x5)

# rs1_val == -268435457, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xefffffff;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xefffffff, -1024, x3, 120, x5)

# rs1_val == -536870913, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xdfffffff, 0xdfffffff, 8, x3, 124, x5)

# rs1_val == -1073741825, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xbfffffff, 0xbfffffff, 5, x3, 128, x5)

# rs1_val == 1431655765, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x55555555;  immval:4
TEST_IMM_OP( ori, x11, x10, 0x55555555, 0x55555555, 4, x3, 132, x5)

# rs1_val == -1431655766, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xaaaaabaa, 0xaaaaaaaa, 256, x3, 136, x5)

# imm_val == -5, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfff7ffff, -5, x3, 140, x5)

# imm_val == -33, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffefffff, -33, x3, 144, x5)

# imm_val == -129, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x55555555;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffff7f, 0x55555555, -129, x3, 148, x5)

# imm_val == -513, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x3fffffff;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0x3fffffff, -513, x3, 152, x5)

# imm_val == -1025, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x00000200;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xfffffbff, 0x00000200, -1025, x3, 156, x5)

# imm_val == 1365, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff6;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0xfffffff7, 0xfffffff6, 1365, x3, 160, x5)

# rs1_val == -33, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffffdf, -1025, x3, 164, x5)

# rs1_val == -65, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:-129
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffffbf, -129, x3, 168, x5)

# rs1_val == -257, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffeff, -33, x3, 172, x5)

# rs1_val == -513, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:4
TEST_IMM_OP( ori, x11, x10, 0xfffffdff, 0xfffffdff, 4, x3, 176, x5)

# rs1_val == -1025, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffbff, -2, x3, 180, x5)

# rs1_val == -2049, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:9
TEST_IMM_OP( ori, x11, x10, 0xfffff7ff, 0xfffff7ff, 9, x3, 184, x5)

# rs1_val == -4097, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-5
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffefff, -5, x3, 188, x5)

# rs1_val == -8193, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-1
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffdfff, -1, x3, 192, x5)

# rs1_val == -16385, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffbfff, -7, x3, 196, x5)

# rs1_val == -32769, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xffff7fff, 0xffff7fff, 1023, x3, 200, x5)

# rs1_val == -65537, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0xfffeffff, 0xfffeffff, 1024, x3, 204, x5)

# rs1_val == -131073, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xfffdffff, 0xfffdffff, 2047, x3, 208, x5)

# rs1_val == 32768, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x00008000;  immval:128
TEST_IMM_OP( ori, x11, x10, 0x8080, 0x00008000, 128, x3, 212, x5)
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

signature_x2_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x2_1:
    .fill 23*(XLEN/32),4,0xdeadbeef


signature_x3_0:
    .fill 54*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
