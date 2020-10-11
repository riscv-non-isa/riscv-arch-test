
#This assembly file tests the andi instruction of the RISC-V I extension for the andi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",andi)

la x1,signature_x1_1

# rs1 == rd, rs1==x17, rd==x17, rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 512, imm_val == 512
# opcode: andi ; op1:x17; dest:x17; op1val:0x00000200;  immval:512
TEST_IMM_OP( andi, x17, x17, 0x200, 0x00000200, 512, x1, 0, x7)

# rs1 != rd, rs1==x25, rd==x11, rs1_val != imm_val, rs1_val == 8, imm_val == 1024
# opcode: andi ; op1:x25; dest:x11; op1val:0x00000008;  immval:1024
TEST_IMM_OP( andi, x11, x25, 0x0, 0x00000008, 1024, x1, 4, x7)

# rs1==x24, rd==x9, rs1_val > 0 and imm_val < 0, imm_val == -257
# opcode: andi ; op1:x24; dest:x9; op1val:0x00000003;  immval:-257
TEST_IMM_OP( andi, x9, x24, 0x3, 0x00000003, -257, x1, 8, x7)

# rs1==x6, rd==x5, rs1_val < 0 and imm_val > 0, rs1_val == -16385
# opcode: andi ; op1:x6; dest:x5; op1val:0xffffbfff;  immval:9
TEST_IMM_OP( andi, x5, x6, 0x9, 0xffffbfff, 9, x1, 12, x7)

# rs1==x8, rd==x2, rs1_val < 0 and imm_val < 0, rs1_val == -33, imm_val == -9
# opcode: andi ; op1:x8; dest:x2; op1val:0xffffffdf;  immval:-9
TEST_IMM_OP( andi, x2, x8, 0xffffffd7, 0xffffffdf, -9, x1, 16, x7)

# rs1==x12, rd==x8, rs1_val == (-2**(xlen-1)), imm_val == -2048, imm_val == (-2**(12-1)), rs1_val == -2147483648
# opcode: andi ; op1:x12; dest:x8; op1val:0x80000000;  immval:-2048
TEST_IMM_OP( andi, x8, x12, 0x80000000, 0x80000000, -2048, x1, 20, x7)

# rs1==x27, rd==x18, rs1_val == 0, imm_val == -513
# opcode: andi ; op1:x27; dest:x18; op1val:0x00000000;  immval:-513
TEST_IMM_OP( andi, x18, x27, 0x0, 0x00000000, -513, x1, 24, x7)

# rs1==x20, rd==x15, rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647, imm_val == 256
# opcode: andi ; op1:x20; dest:x15; op1val:0x7fffffff;  immval:256
TEST_IMM_OP( andi, x15, x20, 0x100, 0x7fffffff, 256, x1, 28, x7)

# rs1==x5, rd==x22, rs1_val == 1, 
# opcode: andi ; op1:x5; dest:x22; op1val:0x00000001;  immval:7
TEST_IMM_OP( andi, x22, x5, 0x1, 0x00000001, 7, x1, 32, x7)

# rs1==x15, rd==x16, imm_val == 0, 
# opcode: andi ; op1:x15; dest:x16; op1val:0xffffffff;  immval:0
TEST_IMM_OP( andi, x16, x15, 0x0, 0xffffffff, 0, x1, 36, x7)

# rs1==x16, rd==x27, imm_val == (2**(12-1)-1), imm_val == 2047
# opcode: andi ; op1:x16; dest:x27; op1val:0x00000009;  immval:2047
TEST_IMM_OP( andi, x27, x16, 0x9, 0x00000009, 2047, x1, 40, x7)

# rs1==x29, rd==x6, imm_val == 1, rs1_val == -32769
# opcode: andi ; op1:x29; dest:x6; op1val:0xffff7fff;  immval:1
TEST_IMM_OP( andi, x6, x29, 0x1, 0xffff7fff, 1, x1, 44, x7)

# rs1==x28, rd==x31, rs1_val == 2, imm_val == -129
# opcode: andi ; op1:x28; dest:x31; op1val:0x00000002;  immval:-129
TEST_IMM_OP( andi, x31, x28, 0x2, 0x00000002, -129, x1, 48, x7)

# rs1==x23, rd==x24, rs1_val == 4, imm_val == 2
# opcode: andi ; op1:x23; dest:x24; op1val:0x00000004;  immval:2
TEST_IMM_OP( andi, x24, x23, 0x0, 0x00000004, 2, x1, 52, x7)

# rs1==x11, rd==x28, rs1_val == 16, imm_val == 32
# opcode: andi ; op1:x11; dest:x28; op1val:0x00000010;  immval:32
TEST_IMM_OP( andi, x28, x11, 0x0, 0x00000010, 32, x1, 56, x7)

# rs1==x13, rd==x26, rs1_val == 32, imm_val == -17
# opcode: andi ; op1:x13; dest:x26; op1val:0x00000020;  immval:-17
TEST_IMM_OP( andi, x26, x13, 0x20, 0x00000020, -17, x1, 60, x7)

# rs1==x10, rd==x29, rs1_val == 64, 
# opcode: andi ; op1:x10; dest:x29; op1val:0x00000040;  immval:1023
TEST_IMM_OP( andi, x29, x10, 0x40, 0x00000040, 1023, x1, 64, x7)

# rs1==x0, rd==x4, rs1_val == 128, imm_val == -2
# opcode: andi ; op1:x0; dest:x4; op1val:0x00000080;  immval:-2
TEST_IMM_OP( andi, x4, x0, 0x80, 0x00000080, -2, x1, 68, x7)

# rs1==x30, rd==x10, rs1_val == 256, 
# opcode: andi ; op1:x30; dest:x10; op1val:0x00000100;  immval:-7
TEST_IMM_OP( andi, x10, x30, 0x100, 0x00000100, -7, x1, 72, x7)

# rs1==x21, rd==x3, rs1_val == 1024, 
# opcode: andi ; op1:x21; dest:x3; op1val:0x00000400;  immval:-17
TEST_IMM_OP( andi, x3, x21, 0x400, 0x00000400, -17, x1, 76, x7)

# rs1==x19, rd==x21, rs1_val == 2048, 
# opcode: andi ; op1:x19; dest:x21; op1val:0x00000800;  immval:5
TEST_IMM_OP( andi, x21, x19, 0x0, 0x00000800, 5, x1, 80, x6)
la x5,signature_x5_0

# rs1==x2, rd==x1, rs1_val == 4096, 
# opcode: andi ; op1:x2; dest:x1; op1val:0x00001000;  immval:-4
TEST_IMM_OP( andi, x1, x2, 0x1000, 0x00001000, -4, x5, 0, x6)

# rs1==x22, rd==x30, rs1_val == 8192, imm_val == 4
# opcode: andi ; op1:x22; dest:x30; op1val:0x00002000;  immval:4
TEST_IMM_OP( andi, x30, x22, 0x0, 0x00002000, 4, x5, 4, x6)

# rs1==x1, rd==x14, rs1_val == 16384, 
# opcode: andi ; op1:x1; dest:x14; op1val:0x00004000;  immval:-4
TEST_IMM_OP( andi, x14, x1, 0x4000, 0x00004000, -4, x5, 8, x6)

# rs1==x9, rd==x13, rs1_val == 32768, 
# opcode: andi ; op1:x9; dest:x13; op1val:0x00008000;  immval:-7
TEST_IMM_OP( andi, x13, x9, 0x8000, 0x00008000, -7, x5, 12, x6)

# rs1==x31, rd==x25, rs1_val == 65536, imm_val == -1366
# opcode: andi ; op1:x31; dest:x25; op1val:0x00010000;  immval:-1366
TEST_IMM_OP( andi, x25, x31, 0x10000, 0x00010000, -1366, x5, 16, x6)

# rs1==x18, rd==x0, rs1_val == 131072, imm_val == -1025
# opcode: andi ; op1:x18; dest:x0; op1val:0x00020000;  immval:-1025
TEST_IMM_OP( andi, x0, x18, 0x20000, 0x00020000, -1025, x5, 20, x6)

# rs1==x3, rd==x12, rs1_val == 262144, 
# opcode: andi ; op1:x3; dest:x12; op1val:0x00040000;  immval:1023
TEST_IMM_OP( andi, x12, x3, 0x0, 0x00040000, 1023, x5, 24, x6)

# rs1==x14, rd==x20, rs1_val == 524288, imm_val == -3
# opcode: andi ; op1:x14; dest:x20; op1val:0x00080000;  immval:-3
TEST_IMM_OP( andi, x20, x14, 0x80000, 0x00080000, -3, x5, 28, x6)

# rs1==x7, rd==x23, rs1_val == 1048576, imm_val == -33
# opcode: andi ; op1:x7; dest:x23; op1val:0x00100000;  immval:-33
TEST_IMM_OP( andi, x23, x7, 0x100000, 0x00100000, -33, x5, 32, x6)

# rs1==x26, rd==x7, rs1_val == 2097152, 
# opcode: andi ; op1:x26; dest:x7; op1val:0x00200000;  immval:-4
TEST_IMM_OP( andi, x7, x26, 0x200000, 0x00200000, -4, x5, 36, x6)

# rs1==x4, rd==x19, rs1_val == 4194304, 
# opcode: andi ; op1:x4; dest:x19; op1val:0x00400000;  immval:-2048
TEST_IMM_OP( andi, x19, x4, 0x400000, 0x00400000, -2048, x5, 40, x6)

# rs1_val == 8388608, imm_val == -5
# opcode: andi ; op1:x10; dest:x11; op1val:0x00800000;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0x800000, 0x00800000, -5, x5, 44, x6)

# rs1_val == 16777216, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x01000000;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x01000000, 512, x5, 48, x6)

# rs1_val == 33554432, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x02000000;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x0, 0x02000000, 2, x5, 52, x6)

# rs1_val == 67108864, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x04000000;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0x4000000, 0x04000000, -9, x5, 56, x6)

# rs1_val == 134217728, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x08000000;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x0, 0x08000000, 32, x5, 60, x6)

# rs1_val == 268435456, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x10000000;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x0, 0x10000000, 1024, x5, 64, x6)

# rs1_val == 536870912, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x20000000;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x0, 0x20000000, 7, x5, 68, x6)

# rs1_val == 1073741824, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x40000000;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x0, 0x40000000, 1024, x5, 72, x6)

# rs1_val == -2, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xfffffffe, 6, x5, 76, x6)

# rs1_val == -3, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0xfffffffc, 0xfffffffd, -4, x5, 80, x6)

# rs1_val == -5, imm_val == 64
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xfffffffb, 64, x5, 84, x6)

# rs1_val == -9, imm_val == 8
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:8
TEST_IMM_OP( andi, x11, x10, 0x0, 0xfffffff7, 8, x5, 88, x6)

# rs1_val == -524289, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0xfff7feff, 0xfff7ffff, -257, x5, 92, x6)

# rs1_val == -1048577, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffefffff;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x5, 0xffefffff, 5, x5, 96, x6)

# rs1_val == -2097153, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:1
TEST_IMM_OP( andi, x11, x10, 0x1, 0xffdfffff, 1, x5, 100, x6)

# rs1_val == -4194305, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xffbffff8, 0xffbfffff, -8, x5, 104, x6)

# rs1_val == -8388609, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xff7fffff;  immval:-7
TEST_IMM_OP( andi, x11, x10, 0xff7ffff9, 0xff7fffff, -7, x5, 108, x6)

# rs1_val == -16777217, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xfeffffff, 6, x5, 112, x6)

# rs1_val == -33554433, imm_val == 16
# opcode: andi ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xfdffffff, 16, x5, 116, x6)

# rs1_val == -67108865, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xfbffffff, 32, x5, 120, x6)

# rs1_val == -134217729, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-4
TEST_IMM_OP( andi, x11, x10, 0xf7fffffc, 0xf7ffffff, -4, x5, 124, x6)

# rs1_val == -268435457, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xefffffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xefffffff, 6, x5, 128, x6)

# rs1_val == -536870913, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xdfffffff, 256, x5, 132, x6)

# rs1_val == -1073741825, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xbfffffff, 64, x5, 136, x6)

# rs1_val == 1431655765, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x55555555;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x155, 0x55555555, 1023, x5, 140, x6)

# rs1_val == -1431655766, imm_val == -65
# opcode: andi ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xaaaaaaaa, 0xaaaaaaaa, -65, x5, 144, x6)

# rs1_val == -8193, imm_val == 1365
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x555, 0xffffdfff, 1365, x5, 148, x6)

# rs1_val == -17, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffef;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x4, 0xffffffef, 4, x5, 152, x6)

# rs1_val == -65, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x3bf, 0xffffffbf, 1023, x5, 156, x6)

# rs1_val == -129, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:256
TEST_IMM_OP( andi, x11, x10, 0x100, 0xffffff7f, 256, x5, 160, x6)

# imm_val == 128, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x00000005;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00000005, 128, x5, 164, x6)

# rs1_val == -257, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xfffffeff, 32, x5, 168, x6)

# rs1_val == -513, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:-5
TEST_IMM_OP( andi, x11, x10, 0xfffffdfb, 0xfffffdff, -5, x5, 172, x6)

# rs1_val == -1025, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x3ff, 0xfffffbff, 1023, x5, 176, x6)

# rs1_val == -2049, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0xfffff6ff, 0xfffff7ff, -257, x5, 180, x6)

# rs1_val == -4097, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffefff;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0xffffefff, 0, x5, 184, x6)

# rs1_val == -65537, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xfffeffff, 16, x5, 188, x6)

# rs1_val == -131073, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xfffdffff, 6, x5, 192, x6)

# rs1_val == -262145, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:16
TEST_IMM_OP( andi, x11, x10, 0x10, 0xfffbffff, 16, x5, 196, x6)

# rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 512, imm_val == 512
# opcode: andi ; op1:x10; dest:x11; op1val:0x00000200;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x200, 0x00000200, 512, x5, 200, x6)

# rs1_val == 128, imm_val == -2
# opcode: andi ; op1:x10; dest:x11; op1val:0x00000080;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0x80, 0x00000080, -2, x5, 204, x6)

# rs1_val == 131072, imm_val == -1025
# opcode: andi ; op1:x10; dest:x11; op1val:0x00020000;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0x20000, 0x00020000, -1025, x5, 208, x6)
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
    .fill 21*(XLEN/32),4,0xdeadbeef


signature_x5_0:
    .fill 53*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
