
#This assembly file tests the andi instruction of the RISC-V I extension for the andi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",andi)

RVTEST_SIGBASE( x7,signature_x7_1)

# rs1 != rd, rs1==x0, rd==x13, rs1_val == imm_val, rs1_val < 0 and imm_val < 0
# opcode: andi ; op1:x0; dest:x13; op1val:0xfffffff8;  immval:-8
TEST_IMM_OP( andi, x13, x0, 0xfffffff8, 0xfffffff8, -8, x7, 0, x21)

# rs1 == rd, rs1==x4, rd==x4, rs1_val != imm_val, rs1_val == -2049, rs1_val < 0 and imm_val > 0, imm_val == 1
# opcode: andi ; op1:x4; dest:x4; op1val:0xfffff7ff;  immval:1
TEST_IMM_OP( andi, x4, x4, 0x1, 0xfffff7ff, 1, x7, 4, x21)

# rs1==x11, rd==x29, rs1_val > 0 and imm_val > 0, rs1_val == 536870912
# opcode: andi ; op1:x11; dest:x29; op1val:0x20000000;  immval:3
TEST_IMM_OP( andi, x29, x11, 0x0, 0x20000000, 3, x7, 8, x21)

# rs1==x22, rd==x14, rs1_val > 0 and imm_val < 0, imm_val == -513
# opcode: andi ; op1:x22; dest:x14; op1val:0x00000009;  immval:-513
TEST_IMM_OP( andi, x14, x22, 0x9, 0x00000009, -513, x7, 12, x21)

# rs1==x31, rd==x22, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648
# opcode: andi ; op1:x31; dest:x22; op1val:0x80000000;  immval:-1
TEST_IMM_OP( andi, x22, x31, 0x80000000, 0x80000000, -1, x7, 16, x21)

# rs1==x3, rd==x20, rs1_val == 0, imm_val == 256
# opcode: andi ; op1:x3; dest:x20; op1val:0x00000000;  immval:256
TEST_IMM_OP( andi, x20, x3, 0x0, 0x00000000, 256, x7, 20, x21)

# rs1==x27, rd==x8, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647, imm_val == -17
# opcode: andi ; op1:x27; dest:x8; op1val:0x7fffffff;  immval:-17
TEST_IMM_OP( andi, x8, x27, 0x7fffffef, 0x7fffffff, -17, x7, 24, x21)

# rs1==x28, rd==x27, rs1_val == 1, 
# opcode: andi ; op1:x28; dest:x27; op1val:0x00000001;  immval:9
TEST_IMM_OP( andi, x27, x28, 0x1, 0x00000001, 9, x7, 28, x21)

# rs1==x25, rd==x23, imm_val == (-2**(12-1)), imm_val == -2048
# opcode: andi ; op1:x25; dest:x23; op1val:0x00000000;  immval:-2048
TEST_IMM_OP( andi, x23, x25, 0x0, 0x00000000, -2048, x7, 32, x21)

# rs1==x13, rd==x0, imm_val == 0, rs1_val == 8
# opcode: andi ; op1:x13; dest:x0; op1val:0x00000008;  immval:0
TEST_IMM_OP( andi, x0, x13, 0x0, 0x00000008, 0, x7, 36, x21)

# rs1==x29, rd==x6, imm_val == (2**(12-1)-1), rs1_val == -32769, imm_val == 2047
# opcode: andi ; op1:x29; dest:x6; op1val:0xffff7fff;  immval:2047
TEST_IMM_OP( andi, x6, x29, 0x7ff, 0xffff7fff, 2047, x7, 40, x21)

# rs1==x23, rd==x1, rs1_val == 2, 
# opcode: andi ; op1:x23; dest:x1; op1val:0x00000002;  immval:-4
TEST_IMM_OP( andi, x1, x23, 0x0, 0x00000002, -4, x7, 44, x21)

# rs1==x15, rd==x12, rs1_val == 4, imm_val == 64
# opcode: andi ; op1:x15; dest:x12; op1val:0x00000004;  immval:64
TEST_IMM_OP( andi, x12, x15, 0x0, 0x00000004, 64, x7, 48, x21)

# rs1==x30, rd==x28, rs1_val == 16, 
# opcode: andi ; op1:x30; dest:x28; op1val:0x00000010;  immval:-1024
TEST_IMM_OP( andi, x28, x30, 0x0, 0x00000010, -1024, x7, 52, x21)

# rs1==x1, rd==x9, rs1_val == 32, 
# opcode: andi ; op1:x1; dest:x9; op1val:0x00000020;  immval:-513
TEST_IMM_OP( andi, x9, x1, 0x20, 0x00000020, -513, x7, 56, x21)

# rs1==x6, rd==x10, rs1_val == 64, imm_val == 128
# opcode: andi ; op1:x6; dest:x10; op1val:0x00000040;  immval:128
TEST_IMM_OP( andi, x10, x6, 0x0, 0x00000040, 128, x7, 60, x21)

# rs1==x9, rd==x31, rs1_val == 128, 
# opcode: andi ; op1:x9; dest:x31; op1val:0x00000080;  immval:256
TEST_IMM_OP( andi, x31, x9, 0x0, 0x00000080, 256, x7, 64, x21)

# rs1==x8, rd==x11, rs1_val == 256, 
# opcode: andi ; op1:x8; dest:x11; op1val:0x00000100;  immval:-8
TEST_IMM_OP( andi, x11, x8, 0x100, 0x00000100, -8, x7, 68, x21)

# rs1==x16, rd==x30, rs1_val == 512, imm_val == 32
# opcode: andi ; op1:x16; dest:x30; op1val:0x00000200;  immval:32
TEST_IMM_OP( andi, x30, x16, 0x0, 0x00000200, 32, x7, 72, x21)

# rs1==x18, rd==x15, rs1_val == 1024, imm_val == 16
# opcode: andi ; op1:x18; dest:x15; op1val:0x00000400;  immval:16
TEST_IMM_OP( andi, x15, x18, 0x0, 0x00000400, 16, x7, 76, x21)

# rs1==x12, rd==x2, rs1_val == 2048, 
# opcode: andi ; op1:x12; dest:x2; op1val:0x00000800;  immval:3
TEST_IMM_OP( andi, x2, x12, 0x0, 0x00000800, 3, x7, 80, x21)

# rs1==x2, rd==x5, rs1_val == 4096, 
# opcode: andi ; op1:x2; dest:x5; op1val:0x00001000;  immval:2047
TEST_IMM_OP( andi, x5, x2, 0x0, 0x00001000, 2047, x7, 84, x21)

# rs1==x17, rd==x19, rs1_val == 8192, 
# opcode: andi ; op1:x17; dest:x19; op1val:0x00002000;  immval:-6
TEST_IMM_OP( andi, x19, x17, 0x2000, 0x00002000, -6, x7, 88, x21)

# rs1==x24, rd==x17, rs1_val == 16384, 
# opcode: andi ; op1:x24; dest:x17; op1val:0x00004000;  immval:-6
TEST_IMM_OP( andi, x17, x24, 0x4000, 0x00004000, -6, x7, 92, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rs1==x26, rd==x3, rs1_val == 32768, 
# opcode: andi ; op1:x26; dest:x3; op1val:0x00008000;  immval:-7
TEST_IMM_OP( andi, x3, x26, 0x8000, 0x00008000, -7, x1, 0, x2)

# rs1==x5, rd==x16, rs1_val == 65536, imm_val == -2
# opcode: andi ; op1:x5; dest:x16; op1val:0x00010000;  immval:-2
TEST_IMM_OP( andi, x16, x5, 0x10000, 0x00010000, -2, x1, 4, x2)

# rs1==x21, rd==x26, rs1_val == 131072, imm_val == 2
# opcode: andi ; op1:x21; dest:x26; op1val:0x00020000;  immval:2
TEST_IMM_OP( andi, x26, x21, 0x0, 0x00020000, 2, x1, 8, x2)

# rs1==x10, rd==x24, rs1_val == 262144, 
# opcode: andi ; op1:x10; dest:x24; op1val:0x00040000;  immval:-8
TEST_IMM_OP( andi, x24, x10, 0x40000, 0x00040000, -8, x1, 12, x2)

# rs1==x14, rd==x18, rs1_val == 524288, 
# opcode: andi ; op1:x14; dest:x18; op1val:0x00080000;  immval:0
TEST_IMM_OP( andi, x18, x14, 0x0, 0x00080000, 0, x1, 16, x2)

# rs1==x20, rd==x21, rs1_val == 1048576, 
# opcode: andi ; op1:x20; dest:x21; op1val:0x00100000;  immval:-6
TEST_IMM_OP( andi, x21, x20, 0x100000, 0x00100000, -6, x1, 20, x2)

# rs1==x19, rd==x7, rs1_val == 2097152, 
# opcode: andi ; op1:x19; dest:x7; op1val:0x00200000;  immval:128
TEST_IMM_OP( andi, x7, x19, 0x0, 0x00200000, 128, x1, 24, x2)

# rs1==x7, rd==x25, rs1_val == 4194304, 
# opcode: andi ; op1:x7; dest:x25; op1val:0x00400000;  immval:0
TEST_IMM_OP( andi, x25, x7, 0x0, 0x00400000, 0, x1, 28, x2)

# rs1_val == 8388608, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x00800000;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00800000, 32, x1, 32, x2)

# rs1_val == 16777216, imm_val == -3
# opcode: andi ; op1:x10; dest:x11; op1val:0x01000000;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0x1000000, 0x01000000, -3, x1, 36, x2)

# rs1_val == 33554432, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x02000000;  immval:-1024
TEST_IMM_OP( andi, x11, x10, 0x2000000, 0x02000000, -1024, x1, 40, x2)

# rs1_val == 67108864, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x04000000;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0x4000000, 0x04000000, -17, x1, 44, x2)

# rs1_val == 134217728, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x08000000;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0x8000000, 0x08000000, -1, x1, 48, x2)

# rs1_val == 268435456, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x10000000;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0x10000000, 0x10000000, -7, x1, 52, x2)

# rs1_val == 1073741824, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x40000000;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x0, 0x40000000, 128, x1, 56, x2)

# rs1_val == -2, imm_val == -257
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0xfffffefe, 0xfffffffe, -257, x1, 60, x2)

# rs1_val == -3, imm_val == 8
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xfffffffd, 8, x1, 64, x2)

# rs1_val == -5, imm_val == -33
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xffffffdb, 0xfffffffb, -33, x1, 68, x2)

# rs1_val == -9, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:-10
TEST_IMM_OP( andi, x11, x10, 0xfffffff6, 0xfffffff7, -10, x1, 72, x2)

# rs1_val == -17, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffef;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xffffffef, 8, x1, 76, x2)

# rs1_val == -33, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x0, 0xffffffdf, 32, x1, 80, x2)

# rs1_val == -65, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x80, 0xffffffbf, 128, x1, 84, x2)

# rs1_val == -129, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-3
TEST_IMM_OP( andi, x11, x10, 0xffffff7d, 0xffffff7f, -3, x1, 88, x2)

# rs1_val == -257, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xfffffeff, 32, x1, 92, x2)

# rs1_val == -513, imm_val == 4
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x4, 0xfffffdff, 4, x1, 96, x2)

# rs1_val == -524289, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-2048
TEST_IMM_OP( andi, x11, x10, 0xfff7f800, 0xfff7ffff, -2048, x1, 100, x2)

# rs1_val == -1048577, imm_val == -65
# opcode: andi ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xffefffbf, 0xffefffff, -65, x1, 104, x2)

# rs1_val == -2097153, imm_val == -9
# opcode: andi ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0xffdffff7, 0xffdfffff, -9, x1, 108, x2)

# rs1_val == -4194305, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x2, 0xffbfffff, 2, x1, 112, x2)

# rs1_val == -8388609, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x80, 0xff7fffff, 128, x1, 116, x2)

# rs1_val == -16777217, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x2, 0xfeffffff, 2, x1, 120, x2)

# rs1_val == -33554433, imm_val == -1366
# opcode: andi ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xfdfffaaa, 0xfdffffff, -1366, x1, 124, x2)

# rs1_val == -67108865, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xfbffffff, 6, x1, 128, x2)

# rs1_val == -134217729, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xf7ffffff, 0xf7ffffff, -1, x1, 132, x2)

# rs1_val == -268435457, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xefffffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xefffffff, 64, x1, 136, x2)

# rs1_val == -536870913, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xdfffffff, 8, x1, 140, x2)

# rs1_val == -1073741825, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0xbfffffff, 0, x1, 144, x2)

# imm_val == -129, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x10000000;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0x10000000, 0x10000000, -129, x1, 148, x2)

# imm_val == -1025, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x00001000;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0x1000, 0x00001000, -1025, x1, 152, x2)

# imm_val == 1365, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x00080000;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00080000, 1365, x1, 156, x2)

# rs1_val == 1431655765, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x55555555;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0x55555550, 0x55555555, -8, x1, 160, x2)

# rs1_val == -1431655766, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x0, 0xaaaaaaaa, 1, x1, 164, x2)

# imm_val == 512, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x55555555;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x55555555, 512, x1, 168, x2)

# rs1_val == -1025, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0xfffffaff, 0xfffffbff, -257, x1, 172, x2)

# imm_val == 1024, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x04000000;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x0, 0x04000000, 1024, x1, 176, x2)

# rs1_val == -4097, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffefff;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xffffeffe, 0xffffefff, -2, x1, 180, x2)

# rs1_val == -8193, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x8, 0xffffdfff, 8, x1, 184, x2)

# rs1_val == -16385, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xffffbaaa, 0xffffbfff, -1366, x1, 188, x2)

# imm_val == -5, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xc0000000;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0xc0000000, 0xc0000000, -5, x1, 192, x2)

# rs1_val == -65537, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xfffeffff, 64, x1, 196, x2)

# rs1_val == -131073, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xfffdffff, 32, x1, 200, x2)

# rs1_val == -262145, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xfffbffff, 32, x1, 204, x2)

# rs1_val == imm_val, rs1_val < 0 and imm_val < 0
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffff8;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfffffff8, 0xfffffff8, -8, x1, 208, x2)

# rs1_val != imm_val, rs1_val == -2049, rs1_val < 0 and imm_val > 0, imm_val == 1
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xfffff7ff, 1, x1, 212, x2)

# imm_val == 0, rs1_val == 8
# opcode: andi ; op1:x10; dest:x11; op1val:0x00000008;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00000008, 0, x1, 216, x2)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x7_1:
    .fill 24*(XLEN/32),4,0xdeadbeef


signature_x1_0:
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
