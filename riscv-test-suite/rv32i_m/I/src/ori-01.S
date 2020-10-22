
#This assembly file tests the ori instruction of the RISC-V I extension for the ori covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",ori)

RVTEST_SIGBASE( x1,signature_x1_1)

# rs1 != rd, rs1==x17, rd==x7, rs1_val == imm_val, rs1_val < 0 and imm_val < 0
# opcode: ori ; op1:x17; dest:x7; op1val:0xfffffffa;  immval:-6
TEST_IMM_OP( ori, x7, x17, 0xfffffffa, 0xfffffffa, -6, x1, 0, x9)

# rs1 == rd, rs1==x23, rd==x23, rs1_val != imm_val, rs1_val < 0 and imm_val > 0, rs1_val == -1025
# opcode: ori ; op1:x23; dest:x23; op1val:0xfffffbff;  immval:5
TEST_IMM_OP( ori, x23, x23, 0xfffffbff, 0xfffffbff, 5, x1, 4, x9)

# rs1==x4, rd==x5, rs1_val > 0 and imm_val > 0, rs1_val == 67108864
# opcode: ori ; op1:x4; dest:x5; op1val:0x04000000;  immval:7
TEST_IMM_OP( ori, x5, x4, 0x4000007, 0x04000000, 7, x1, 8, x9)

# rs1==x10, rd==x2, rs1_val > 0 and imm_val < 0, imm_val == -65, rs1_val == 131072
# opcode: ori ; op1:x10; dest:x2; op1val:0x00020000;  immval:-65
TEST_IMM_OP( ori, x2, x10, 0xffffffbf, 0x00020000, -65, x1, 12, x9)

# rs1==x25, rd==x30, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648
# opcode: ori ; op1:x25; dest:x30; op1val:0x80000000;  immval:-1024
TEST_IMM_OP( ori, x30, x25, 0xfffffc00, 0x80000000, -1024, x1, 16, x9)

# rs1==x15, rd==x28, rs1_val == 0, imm_val == (2**(12-1)-1), imm_val == 2047
# opcode: ori ; op1:x15; dest:x28; op1val:0x00000000;  immval:2047
TEST_IMM_OP( ori, x28, x15, 0x7ff, 0x00000000, 2047, x1, 20, x9)

# rs1==x19, rd==x13, rs1_val == (2**(xlen-1)-1), imm_val == 16, rs1_val == 2147483647
# opcode: ori ; op1:x19; dest:x13; op1val:0x7fffffff;  immval:16
TEST_IMM_OP( ori, x13, x19, 0x7fffffff, 0x7fffffff, 16, x1, 24, x9)

# rs1==x5, rd==x12, rs1_val == 1, imm_val == 64
# opcode: ori ; op1:x5; dest:x12; op1val:0x00000001;  immval:64
TEST_IMM_OP( ori, x12, x5, 0x41, 0x00000001, 64, x1, 28, x9)

# rs1==x13, rd==x25, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == -262145
# opcode: ori ; op1:x13; dest:x25; op1val:0xfffbffff;  immval:-2048
TEST_IMM_OP( ori, x25, x13, 0xffffffff, 0xfffbffff, -2048, x1, 32, x9)

# rs1==x20, rd==x26, imm_val == 0, rs1_val == -16777217
# opcode: ori ; op1:x20; dest:x26; op1val:0xfeffffff;  immval:0
TEST_IMM_OP( ori, x26, x20, 0xfeffffff, 0xfeffffff, 0, x1, 36, x9)

# rs1==x7, rd==x22, imm_val == 1, rs1_val == 8
# opcode: ori ; op1:x7; dest:x22; op1val:0x00000008;  immval:1
TEST_IMM_OP( ori, x22, x7, 0x9, 0x00000008, 1, x1, 40, x9)

# rs1==x12, rd==x27, rs1_val == 2, 
# opcode: ori ; op1:x12; dest:x27; op1val:0x00000002;  immval:1
TEST_IMM_OP( ori, x27, x12, 0x3, 0x00000002, 1, x1, 44, x9)

# rs1==x8, rd==x10, rs1_val == 4, 
# opcode: ori ; op1:x8; dest:x10; op1val:0x00000004;  immval:0
TEST_IMM_OP( ori, x10, x8, 0x4, 0x00000004, 0, x1, 48, x9)

# rs1==x11, rd==x31, rs1_val == 16, 
# opcode: ori ; op1:x11; dest:x31; op1val:0x00000010;  immval:5
TEST_IMM_OP( ori, x31, x11, 0x15, 0x00000010, 5, x1, 52, x9)

# rs1==x6, rd==x18, rs1_val == 32, 
# opcode: ori ; op1:x6; dest:x18; op1val:0x00000020;  immval:-2048
TEST_IMM_OP( ori, x18, x6, 0xfffff820, 0x00000020, -2048, x1, 56, x9)

# rs1==x30, rd==x20, rs1_val == 64, imm_val == -17
# opcode: ori ; op1:x30; dest:x20; op1val:0x00000040;  immval:-17
TEST_IMM_OP( ori, x20, x30, 0xffffffef, 0x00000040, -17, x1, 60, x9)

# rs1==x27, rd==x11, rs1_val == 128, 
# opcode: ori ; op1:x27; dest:x11; op1val:0x00000080;  immval:-7
TEST_IMM_OP( ori, x11, x27, 0xfffffff9, 0x00000080, -7, x1, 64, x9)

# rs1==x29, rd==x4, rs1_val == 256, imm_val == 1024
# opcode: ori ; op1:x29; dest:x4; op1val:0x00000100;  immval:1024
TEST_IMM_OP( ori, x4, x29, 0x500, 0x00000100, 1024, x1, 68, x9)

# rs1==x0, rd==x21, rs1_val == 512, 
# opcode: ori ; op1:x0; dest:x21; op1val:0x00000200;  immval:7
TEST_IMM_OP( ori, x21, x0, 0x207, 0x00000200, 7, x1, 72, x9)

# rs1==x18, rd==x29, rs1_val == 1024, 
# opcode: ori ; op1:x18; dest:x29; op1val:0x00000400;  immval:9
TEST_IMM_OP( ori, x29, x18, 0x409, 0x00000400, 9, x1, 76, x9)

# rs1==x2, rd==x3, rs1_val == 2048, imm_val == 4
# opcode: ori ; op1:x2; dest:x3; op1val:0x00000800;  immval:4
TEST_IMM_OP( ori, x3, x2, 0x804, 0x00000800, 4, x1, 80, x9)

# rs1==x16, rd==x14, rs1_val == 4096, imm_val == 32
# opcode: ori ; op1:x16; dest:x14; op1val:0x00001000;  immval:32
TEST_IMM_OP( ori, x14, x16, 0x1020, 0x00001000, 32, x1, 84, x9)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x28, rd==x1, rs1_val == 8192, imm_val == 2
# opcode: ori ; op1:x28; dest:x1; op1val:0x00002000;  immval:2
TEST_IMM_OP( ori, x1, x28, 0x2002, 0x00002000, 2, x2, 0, x4)

# rs1==x1, rd==x15, rs1_val == 16384, imm_val == 256
# opcode: ori ; op1:x1; dest:x15; op1val:0x00004000;  immval:256
TEST_IMM_OP( ori, x15, x1, 0x4100, 0x00004000, 256, x2, 4, x4)

# rs1==x31, rd==x9, rs1_val == 32768, imm_val == -129
# opcode: ori ; op1:x31; dest:x9; op1val:0x00008000;  immval:-129
TEST_IMM_OP( ori, x9, x31, 0xffffff7f, 0x00008000, -129, x2, 8, x4)

# rs1==x26, rd==x24, rs1_val == 65536, 
# opcode: ori ; op1:x26; dest:x24; op1val:0x00010000;  immval:16
TEST_IMM_OP( ori, x24, x26, 0x10010, 0x00010000, 16, x2, 12, x4)

# rs1==x22, rd==x19, rs1_val == 262144, 
# opcode: ori ; op1:x22; dest:x19; op1val:0x00040000;  immval:-17
TEST_IMM_OP( ori, x19, x22, 0xffffffef, 0x00040000, -17, x2, 16, x4)

# rs1==x3, rd==x17, rs1_val == 524288, 
# opcode: ori ; op1:x3; dest:x17; op1val:0x00080000;  immval:-65
TEST_IMM_OP( ori, x17, x3, 0xffffffbf, 0x00080000, -65, x2, 20, x4)

# rs1==x14, rd==x0, rs1_val == 1048576, imm_val == 8
# opcode: ori ; op1:x14; dest:x0; op1val:0x00100000;  immval:8
TEST_IMM_OP( ori, x0, x14, 0x100008, 0x00100000, 8, x2, 24, x4)

# rs1==x24, rd==x8, rs1_val == 2097152, imm_val == -5
# opcode: ori ; op1:x24; dest:x8; op1val:0x00200000;  immval:-5
TEST_IMM_OP( ori, x8, x24, 0xfffffffb, 0x00200000, -5, x2, 28, x4)

# rs1==x21, rd==x16, rs1_val == 4194304, 
# opcode: ori ; op1:x21; dest:x16; op1val:0x00400000;  immval:7
TEST_IMM_OP( ori, x16, x21, 0x400007, 0x00400000, 7, x2, 32, x4)

# rs1==x9, rd==x6, rs1_val == 8388608, 
# opcode: ori ; op1:x9; dest:x6; op1val:0x00800000;  immval:4
TEST_IMM_OP( ori, x6, x9, 0x800004, 0x00800000, 4, x2, 36, x4)

# rs1_val == 16777216, imm_val == 128
# opcode: ori ; op1:x10; dest:x11; op1val:0x01000000;  immval:128
TEST_IMM_OP( ori, x11, x10, 0x1000080, 0x01000000, 128, x2, 40, x4)

# rs1_val == 33554432, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x02000000;  immval:3
TEST_IMM_OP( ori, x11, x10, 0x2000003, 0x02000000, 3, x2, 44, x4)

# rs1_val == 134217728, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x08000000;  immval:0
TEST_IMM_OP( ori, x11, x10, 0x8000000, 0x08000000, 0, x2, 48, x4)

# rs1_val == 268435456, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x10000000;  immval:32
TEST_IMM_OP( ori, x11, x10, 0x10000020, 0x10000000, 32, x2, 52, x4)

# rs1_val == 536870912, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x20000000;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffbf, 0x20000000, -65, x2, 56, x4)

# rs1_val == 1073741824, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x40000000;  immval:6
TEST_IMM_OP( ori, x11, x10, 0x40000006, 0x40000000, 6, x2, 60, x4)

# rs1_val == -2, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffffe, -65, x2, 64, x4)

# rs1_val == -3, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:8
TEST_IMM_OP( ori, x11, x10, 0xfffffffd, 0xfffffffd, 8, x2, 68, x4)

# rs1_val == -5, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-1024
TEST_IMM_OP( ori, x11, x10, 0xfffffffb, 0xfffffffb, -1024, x2, 72, x4)

# rs1_val == -9, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0xfffffff7, 0xfffffff7, 1024, x2, 76, x4)

# rs1_val == -17, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffef;  immval:1
TEST_IMM_OP( ori, x11, x10, 0xffffffef, 0xffffffef, 1, x2, 80, x4)

# rs1_val == -33, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:32
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffffdf, 32, x2, 84, x4)

# rs1_val == -65, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:6
TEST_IMM_OP( ori, x11, x10, 0xffffffbf, 0xffffffbf, 6, x2, 88, x4)

# rs1_val == -129, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffff7f, 128, x2, 92, x4)

# rs1_val == -257, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:1023
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffeff, 1023, x2, 96, x4)

# rs1_val == -524289, imm_val == -33
# opcode: ori ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-33
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfff7ffff, -33, x2, 100, x4)

# rs1_val == -1048577, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffefffff, -4, x2, 104, x4)

# rs1_val == -2097153, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-4
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffdfffff, -4, x2, 108, x4)

# rs1_val == -4194305, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-65
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffbfffff, -65, x2, 112, x4)

# rs1_val == -8388609, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:3
TEST_IMM_OP( ori, x11, x10, 0xff7fffff, 0xff7fffff, 3, x2, 116, x4)

# rs1_val == -33554433, imm_val == 512
# opcode: ori ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xfdffffff, 0xfdffffff, 512, x2, 120, x4)

# rs1_val == -67108865, imm_val == -2
# opcode: ori ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:-2
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfbffffff, -2, x2, 124, x4)

# rs1_val == -134217729, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:64
TEST_IMM_OP( ori, x11, x10, 0xf7ffffff, 0xf7ffffff, 64, x2, 128, x4)

# rs1_val == -268435457, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xefffffff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xefffffff, 0xefffffff, 256, x2, 132, x4)

# rs1_val == -536870913, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:128
TEST_IMM_OP( ori, x11, x10, 0xdfffffff, 0xdfffffff, 128, x2, 136, x4)

# rs1_val == -1073741825, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:256
TEST_IMM_OP( ori, x11, x10, 0xbfffffff, 0xbfffffff, 256, x2, 140, x4)

# rs1_val == 1431655765, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x55555555;  immval:6
TEST_IMM_OP( ori, x11, x10, 0x55555557, 0x55555555, 6, x2, 144, x4)

# rs1_val == -1431655766, imm_val == -9
# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-9
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xaaaaaaaa, -9, x2, 148, x4)

# imm_val == -257, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xfffffeff, 0xaaaaaaaa, -257, x2, 152, x4)

# imm_val == -513, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x80000000;  immval:-513
TEST_IMM_OP( ori, x11, x10, 0xfffffdff, 0x80000000, -513, x2, 156, x4)

# imm_val == -1025, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x55555555;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0x55555555, -1025, x2, 160, x4)

# imm_val == 1365, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffefffff;  immval:1365
TEST_IMM_OP( ori, x11, x10, 0xffefffff, 0xffefffff, 1365, x2, 164, x4)

# imm_val == -1366, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-1366
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffdfffff, -1366, x2, 168, x4)

# imm_val == -3, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-3
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffffff7, -3, x2, 172, x4)

# rs1_val == -513, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:1024
TEST_IMM_OP( ori, x11, x10, 0xfffffdff, 0xfffffdff, 1024, x2, 176, x4)

# rs1_val == -2049, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-257
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xfffff7ff, -257, x2, 180, x4)

# rs1_val == -4097, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-7
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffffefff, -7, x2, 184, x4)

# rs1_val == -8193, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:7
TEST_IMM_OP( ori, x11, x10, 0xffffdfff, 0xffffdfff, 7, x2, 188, x4)

# rs1_val == -16385, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:512
TEST_IMM_OP( ori, x11, x10, 0xffffbfff, 0xffffbfff, 512, x2, 192, x4)

# rs1_val == -32769, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-1025
TEST_IMM_OP( ori, x11, x10, 0xffffffff, 0xffff7fff, -1025, x2, 196, x4)

# rs1_val == -65537, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:64
TEST_IMM_OP( ori, x11, x10, 0xfffeffff, 0xfffeffff, 64, x2, 200, x4)

# rs1_val == -131073, 
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:2047
TEST_IMM_OP( ori, x11, x10, 0xfffdffff, 0xfffdffff, 2047, x2, 204, x4)

# rs1_val != imm_val, rs1_val < 0 and imm_val > 0, rs1_val == -1025
# opcode: ori ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:5
TEST_IMM_OP( ori, x11, x10, 0xfffffbff, 0xfffffbff, 5, x2, 208, x4)

# rs1_val == 512, 
# opcode: ori ; op1:x10; dest:x11; op1val:0x00000200;  immval:7
TEST_IMM_OP( ori, x11, x10, 0x207, 0x00000200, 7, x2, 212, x4)

# rs1_val == 1048576, imm_val == 8
# opcode: ori ; op1:x10; dest:x11; op1val:0x00100000;  immval:8
TEST_IMM_OP( ori, x11, x10, 0x100008, 0x00100000, 8, x2, 216, x4)
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

signature_x1_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x1_1:
    .fill 22*(XLEN/32),4,0xdeadbeef


signature_x2_0:
    .fill 55*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
