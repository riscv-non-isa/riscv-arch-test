
#This assembly file tests the andi instruction of the RISC-V I extension for the andi covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",andi)

RVTEST_SIGBASE( x15,signature_x15_1)

# rs1 != rd, rs1==x7, rd==x21, rs1_val == imm_val, rs1_val > 0 and imm_val > 0, rs1_val == 2, imm_val == 2
# opcode: andi ; op1:x7; dest:x21; op1val:0x00000002;  immval:2
TEST_IMM_OP( andi, x21, x7, 0x2, 0x00000002, 2, x15, 0, x20)

# rs1 == rd, rs1==x14, rd==x14, rs1_val != imm_val, rs1_val < 0 and imm_val > 0
# opcode: andi ; op1:x14; dest:x14; op1val:0xffffffff;  immval:6
TEST_IMM_OP( andi, x14, x14, 0x6, 0xffffffff, 6, x15, 4, x20)

# rs1==x4, rd==x2, rs1_val > 0 and imm_val < 0, imm_val == -65, rs1_val == 512
# opcode: andi ; op1:x4; dest:x2; op1val:0x00000200;  immval:-65
TEST_IMM_OP( andi, x2, x4, 0x200, 0x00000200, -65, x15, 8, x20)

# rs1==x21, rd==x24, rs1_val < 0 and imm_val < 0, imm_val == -9
# opcode: andi ; op1:x21; dest:x24; op1val:0xfffffffa;  immval:-9
TEST_IMM_OP( andi, x24, x21, 0xfffffff2, 0xfffffffa, -9, x15, 12, x20)

# rs1==x12, rd==x27, rs1_val == (-2**(xlen-1)), rs1_val == -2147483648
# opcode: andi ; op1:x12; dest:x27; op1val:0x80000000;  immval:2
TEST_IMM_OP( andi, x27, x12, 0x0, 0x80000000, 2, x15, 16, x20)

# rs1==x3, rd==x10, rs1_val == 0, 
# opcode: andi ; op1:x3; dest:x10; op1val:0x00000000;  immval:5
TEST_IMM_OP( andi, x10, x3, 0x0, 0x00000000, 5, x15, 20, x20)

# rs1==x22, rd==x5, rs1_val == (2**(xlen-1)-1), imm_val == -1025, rs1_val == 2147483647
# opcode: andi ; op1:x22; dest:x5; op1val:0x7fffffff;  immval:-1025
TEST_IMM_OP( andi, x5, x22, 0x7ffffbff, 0x7fffffff, -1025, x15, 24, x20)

# rs1==x26, rd==x18, rs1_val == 1, imm_val == 256
# opcode: andi ; op1:x26; dest:x18; op1val:0x00000001;  immval:256
TEST_IMM_OP( andi, x18, x26, 0x0, 0x00000001, 256, x15, 28, x20)

# rs1==x2, rd==x11, imm_val == (-2**(12-1)), imm_val == -2048, rs1_val == 4194304
# opcode: andi ; op1:x2; dest:x11; op1val:0x00400000;  immval:-2048
TEST_IMM_OP( andi, x11, x2, 0x400000, 0x00400000, -2048, x15, 32, x20)

# rs1==x6, rd==x30, imm_val == 0, rs1_val == 524288
# opcode: andi ; op1:x6; dest:x30; op1val:0x00080000;  immval:0
TEST_IMM_OP( andi, x30, x6, 0x0, 0x00080000, 0, x15, 36, x20)

# rs1==x24, rd==x19, imm_val == (2**(12-1)-1), rs1_val == -8388609, imm_val == 2047
# opcode: andi ; op1:x24; dest:x19; op1val:0xff7fffff;  immval:2047
TEST_IMM_OP( andi, x19, x24, 0x7ff, 0xff7fffff, 2047, x15, 40, x20)

# rs1==x27, rd==x0, imm_val == 1, 
# opcode: andi ; op1:x27; dest:x0; op1val:0x00000003;  immval:1
TEST_IMM_OP( andi, x0, x27, 0x1, 0x00000003, 1, x15, 44, x20)

# rs1==x8, rd==x25, rs1_val == 4, 
# opcode: andi ; op1:x8; dest:x25; op1val:0x00000004;  immval:9
TEST_IMM_OP( andi, x25, x8, 0x0, 0x00000004, 9, x15, 48, x20)

# rs1==x19, rd==x8, rs1_val == 8, imm_val == 8
# opcode: andi ; op1:x19; dest:x8; op1val:0x00000008;  immval:8
TEST_IMM_OP( andi, x8, x19, 0x8, 0x00000008, 8, x15, 52, x20)

# rs1==x10, rd==x17, rs1_val == 16, 
# opcode: andi ; op1:x10; dest:x17; op1val:0x00000010;  immval:8
TEST_IMM_OP( andi, x17, x10, 0x0, 0x00000010, 8, x15, 56, x20)

# rs1==x25, rd==x6, rs1_val == 32, 
# opcode: andi ; op1:x25; dest:x6; op1val:0x00000020;  immval:0
TEST_IMM_OP( andi, x6, x25, 0x0, 0x00000020, 0, x15, 60, x20)

# rs1==x9, rd==x26, rs1_val == 64, 
# opcode: andi ; op1:x9; dest:x26; op1val:0x00000040;  immval:-6
TEST_IMM_OP( andi, x26, x9, 0x40, 0x00000040, -6, x15, 64, x20)

# rs1==x11, rd==x13, rs1_val == 128, imm_val == -5
# opcode: andi ; op1:x11; dest:x13; op1val:0x00000080;  immval:-5
TEST_IMM_OP( andi, x13, x11, 0x80, 0x00000080, -5, x15, 68, x20)

# rs1==x18, rd==x22, rs1_val == 256, 
# opcode: andi ; op1:x18; dest:x22; op1val:0x00000100;  immval:-2048
TEST_IMM_OP( andi, x22, x18, 0x0, 0x00000100, -2048, x15, 72, x20)

# rs1==x28, rd==x16, rs1_val == 1024, 
# opcode: andi ; op1:x28; dest:x16; op1val:0x00000400;  immval:-1024
TEST_IMM_OP( andi, x16, x28, 0x400, 0x00000400, -1024, x15, 76, x20)

# rs1==x23, rd==x28, rs1_val == 2048, 
# opcode: andi ; op1:x23; dest:x28; op1val:0x00000800;  immval:1
TEST_IMM_OP( andi, x28, x23, 0x0, 0x00000800, 1, x15, 80, x20)

# rs1==x1, rd==x29, rs1_val == 4096, 
# opcode: andi ; op1:x1; dest:x29; op1val:0x00001000;  immval:-4
TEST_IMM_OP( andi, x29, x1, 0x1000, 0x00001000, -4, x15, 84, x20)
RVTEST_SIGBASE( x2,signature_x2_0)

# rs1==x15, rd==x23, rs1_val == 8192, 
# opcode: andi ; op1:x15; dest:x23; op1val:0x00002000;  immval:-8
TEST_IMM_OP( andi, x23, x15, 0x2000, 0x00002000, -8, x2, 0, x6)

# rs1==x20, rd==x31, rs1_val == 16384, imm_val == -129
# opcode: andi ; op1:x20; dest:x31; op1val:0x00004000;  immval:-129
TEST_IMM_OP( andi, x31, x20, 0x4000, 0x00004000, -129, x2, 4, x6)

# rs1==x31, rd==x3, rs1_val == 32768, 
# opcode: andi ; op1:x31; dest:x3; op1val:0x00008000;  immval:-1025
TEST_IMM_OP( andi, x3, x31, 0x8000, 0x00008000, -1025, x2, 8, x6)

# rs1==x5, rd==x7, rs1_val == 65536, 
# opcode: andi ; op1:x5; dest:x7; op1val:0x00010000;  immval:-1025
TEST_IMM_OP( andi, x7, x5, 0x10000, 0x00010000, -1025, x2, 12, x6)

# rs1==x0, rd==x15, rs1_val == 131072, imm_val == 512
# opcode: andi ; op1:x0; dest:x15; op1val:0x00020000;  immval:512
TEST_IMM_OP( andi, x15, x0, 0x0, 0x00020000, 512, x2, 16, x6)

# rs1==x13, rd==x12, rs1_val == 262144, 
# opcode: andi ; op1:x13; dest:x12; op1val:0x00040000;  immval:0
TEST_IMM_OP( andi, x12, x13, 0x0, 0x00040000, 0, x2, 20, x6)

# rs1==x29, rd==x20, rs1_val == 1048576, imm_val == -1366
# opcode: andi ; op1:x29; dest:x20; op1val:0x00100000;  immval:-1366
TEST_IMM_OP( andi, x20, x29, 0x100000, 0x00100000, -1366, x2, 24, x6)

# rs1==x16, rd==x4, rs1_val == 2097152, 
# opcode: andi ; op1:x16; dest:x4; op1val:0x00200000;  immval:512
TEST_IMM_OP( andi, x4, x16, 0x0, 0x00200000, 512, x2, 28, x6)

# rs1==x30, rd==x1, rs1_val == 8388608, imm_val == 16
# opcode: andi ; op1:x30; dest:x1; op1val:0x00800000;  immval:16
TEST_IMM_OP( andi, x1, x30, 0x0, 0x00800000, 16, x2, 32, x6)

# rs1==x17, rd==x9, rs1_val == 16777216, imm_val == -3
# opcode: andi ; op1:x17; dest:x9; op1val:0x01000000;  immval:-3
TEST_IMM_OP( andi, x9, x17, 0x1000000, 0x01000000, -3, x2, 36, x6)

# rs1_val == 33554432, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x02000000;  immval:5
TEST_IMM_OP( andi, x11, x10, 0x0, 0x02000000, 5, x2, 40, x6)

# rs1_val == 67108864, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x04000000;  immval:2
TEST_IMM_OP( andi, x11, x10, 0x0, 0x04000000, 2, x2, 44, x6)

# rs1_val == 134217728, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x08000000;  immval:0
TEST_IMM_OP( andi, x11, x10, 0x0, 0x08000000, 0, x2, 48, x6)

# rs1_val == 268435456, imm_val == 64
# opcode: andi ; op1:x10; dest:x11; op1val:0x10000000;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x0, 0x10000000, 64, x2, 52, x6)

# rs1_val == 536870912, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x20000000;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x0, 0x20000000, 1023, x2, 56, x6)

# rs1_val == 1073741824, imm_val == -17
# opcode: andi ; op1:x10; dest:x11; op1val:0x40000000;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0x40000000, 0x40000000, -17, x2, 60, x6)

# rs1_val == -2, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffe;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xfffffbfe, 0xfffffffe, -1025, x2, 64, x6)

# rs1_val == -3, imm_val == -33
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffd;  immval:-33
TEST_IMM_OP( andi, x11, x10, 0xffffffdd, 0xfffffffd, -33, x2, 68, x6)

# rs1_val == -5, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffffb;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xfffffbfb, 0xfffffffb, -1025, x2, 72, x6)

# rs1_val == -9, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffff7;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xfffffff7, 6, x2, 76, x6)

# rs1_val == -17, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffef;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0xffffffe7, 0xffffffef, -9, x2, 80, x6)

# rs1_val == -33, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:64
TEST_IMM_OP( andi, x11, x10, 0x40, 0xffffffdf, 64, x2, 84, x6)

# rs1_val == -65, imm_val == 1024
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffbf;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x400, 0xffffffbf, 1024, x2, 88, x6)

# rs1_val == -129, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffff7f;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0xffffff6f, 0xffffff7f, -17, x2, 92, x6)

# rs1_val == -524289, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfff7ffff;  immval:9
TEST_IMM_OP( andi, x11, x10, 0x9, 0xfff7ffff, 9, x2, 96, x6)

# rs1_val == -1048577, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffefffff;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xffeffbff, 0xffefffff, -1025, x2, 100, x6)

# rs1_val == -2097153, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffdfffff;  immval:3
TEST_IMM_OP( andi, x11, x10, 0x3, 0xffdfffff, 3, x2, 104, x6)

# rs1_val == -4194305, imm_val == 32
# opcode: andi ; op1:x10; dest:x11; op1val:0xffbfffff;  immval:32
TEST_IMM_OP( andi, x11, x10, 0x20, 0xffbfffff, 32, x2, 108, x6)

# rs1_val == -16777217, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfeffffff;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0xfefffaaa, 0xfeffffff, -1366, x2, 112, x6)

# rs1_val == -33554433, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:6
TEST_IMM_OP( andi, x11, x10, 0x6, 0xfdffffff, 6, x2, 116, x6)

# rs1_val == -67108865, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfbffffff;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x3ff, 0xfbffffff, 1023, x2, 120, x6)

# rs1_val == -134217729, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xf7ffffff;  immval:-129
TEST_IMM_OP( andi, x11, x10, 0xf7ffff7f, 0xf7ffffff, -129, x2, 124, x6)

# rs1_val == -268435457, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xefffffff;  immval:-9
TEST_IMM_OP( andi, x11, x10, 0xeffffff7, 0xefffffff, -9, x2, 128, x6)

# rs1_val == -536870913, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xdfffffff;  immval:7
TEST_IMM_OP( andi, x11, x10, 0x7, 0xdfffffff, 7, x2, 132, x6)

# rs1_val == -1073741825, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xbfffffff;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x400, 0xbfffffff, 1024, x2, 136, x6)

# rs1_val == 1431655765, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x55555555;  immval:-1366
TEST_IMM_OP( andi, x11, x10, 0x55555000, 0x55555555, -1366, x2, 140, x6)

# rs1_val == -1431655766, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xaaaaaaaa;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xaaaaaaa8, 0xaaaaaaaa, -8, x2, 144, x6)

# imm_val == 4, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x00000400;  immval:4
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00000400, 4, x2, 148, x6)

# imm_val == 128, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x00000003;  immval:128
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00000003, 128, x2, 152, x6)

# imm_val == -257, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfdffffff;  immval:-257
TEST_IMM_OP( andi, x11, x10, 0xfdfffeff, 0xfdffffff, -257, x2, 156, x6)

# imm_val == -513, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x00000001;  immval:-513
TEST_IMM_OP( andi, x11, x10, 0x1, 0x00000001, -513, x2, 160, x6)

# rs1_val == -8193, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffdfff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xffffdff8, 0xffffdfff, -8, x2, 164, x6)

# imm_val == 1365, 
# opcode: andi ; op1:x10; dest:x11; op1val:0x00000007;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x5, 0x00000007, 1365, x2, 168, x6)

# rs1_val == -257, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffeff;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x400, 0xfffffeff, 1024, x2, 172, x6)

# rs1_val == -513, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffdff;  immval:1024
TEST_IMM_OP( andi, x11, x10, 0x400, 0xfffffdff, 1024, x2, 176, x6)

# rs1_val == -1025, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffffbff;  immval:-65
TEST_IMM_OP( andi, x11, x10, 0xfffffbbf, 0xfffffbff, -65, x2, 180, x6)

# rs1_val == -2049, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffff7ff;  immval:-1025
TEST_IMM_OP( andi, x11, x10, 0xfffff3ff, 0xfffff7ff, -1025, x2, 184, x6)

# rs1_val == -4097, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffefff;  immval:1365
TEST_IMM_OP( andi, x11, x10, 0x555, 0xffffefff, 1365, x2, 188, x6)

# imm_val == -2, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffffdf;  immval:-2
TEST_IMM_OP( andi, x11, x10, 0xffffffde, 0xffffffdf, -2, x2, 192, x6)

# rs1_val == -16385, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffffbfff;  immval:-6
TEST_IMM_OP( andi, x11, x10, 0xffffbffa, 0xffffbfff, -6, x2, 196, x6)

# rs1_val == -32769, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xffff7fff;  immval:-17
TEST_IMM_OP( andi, x11, x10, 0xffff7fef, 0xffff7fff, -17, x2, 200, x6)

# rs1_val == -65537, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffeffff;  immval:-8
TEST_IMM_OP( andi, x11, x10, 0xfffefff8, 0xfffeffff, -8, x2, 204, x6)

# rs1_val == -131073, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffdffff;  immval:-1
TEST_IMM_OP( andi, x11, x10, 0xfffdffff, 0xfffdffff, -1, x2, 208, x6)

# rs1_val == -262145, 
# opcode: andi ; op1:x10; dest:x11; op1val:0xfffbffff;  immval:1023
TEST_IMM_OP( andi, x11, x10, 0x3ff, 0xfffbffff, 1023, x2, 212, x6)

# rs1_val == 131072, imm_val == 512
# opcode: andi ; op1:x10; dest:x11; op1val:0x00020000;  immval:512
TEST_IMM_OP( andi, x11, x10, 0x0, 0x00020000, 512, x2, 216, x6)
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
