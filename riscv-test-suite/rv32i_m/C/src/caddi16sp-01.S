
#This assembly file tests the c.addi16sp instruction of the RISC-V C extension for the caddi16sp covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32IC")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*C.*);def TEST_CASE_1=True;",caddi16sp)

la x1,signature_x1_1

# rd==x2, imm_val == -512, rs1_val > 0 and imm_val < 0, rs1_val == 32, rs1_val != imm_val
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000020; immval:-512
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000020, -512, x1, 0, x3)

# imm_val == 496, rs1_val > 0 and imm_val > 0, rs1_val == 536870912
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x20000000; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x20000000, 496, x1, 4, x3)

# rs1_val == (-2**(xlen-1)), rs1_val < 0 and imm_val > 0, rs1_val == -2147483648
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x80000000; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x80000000, 496, x1, 8, x3)

# rs1_val == 0, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000000; immval:144
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000000, 144, x1, 12, x3)

# rs1_val == (2**(xlen-1)-1), rs1_val == 2147483647
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x7fffffff; immval:-96
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x7fffffff, -96, x1, 16, x3)

# rs1_val == 1, imm_val == -48
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000001; immval:-48
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000001, -48, x1, 20, x3)

# rs1_val == imm_val, rs1_val == 64, imm_val == 64
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000040; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000040, 64, x1, 24, x3)

# rs1_val < 0 and imm_val < 0, imm_val == -272
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffff8; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffff8, -272, x1, 28, x3)

# imm_val == 16, rs1_val == -65
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffbf; immval:16
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffffbf, 16, x1, 32, x3)

# imm_val == 32, rs1_val == 4096
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00001000; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00001000, 32, x1, 36, x3)

# imm_val == 128, rs1_val == -5
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffb; immval:128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffffb, 128, x1, 40, x3)

# imm_val == 256, rs1_val == 134217728
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x08000000; immval:256
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x08000000, 256, x1, 44, x3)

# imm_val == -32, rs1_val == 1073741824
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x40000000; immval:-32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x40000000, -32, x1, 48, x3)

# imm_val == -80, rs1_val == 33554432
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x02000000; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x02000000, -80, x1, 52, x3)

# imm_val == -144, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000003; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000003, -144, x1, 56, x3)

# imm_val == 336, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000007; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000007, 336, x1, 60, x3)

# imm_val == -352, rs1_val == -8193
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffdfff; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffdfff, -352, x1, 64, x3)

# rs1_val == 2, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000002; immval:-112
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000002, -112, x1, 68, x3)

# rs1_val == 4, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000004; immval:112
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000004, 112, x1, 72, x3)

# rs1_val == 8, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000008; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000008, -64, x1, 76, x3)

# rs1_val == 16, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000010; immval:-160
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000010, -160, x1, 80, x3)

# rs1_val == 128, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000080; immval:-32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000080, -32, x1, 84, x3)

# rs1_val == 256, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000100; immval:-512
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000100, -512, x1, 88, x3)

# rs1_val == 512, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000200; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000200, 48, x1, 92, x3)

# rs1_val == 1024, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000400; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000400, 32, x1, 96, x3)

# rs1_val == 2048, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00000800; immval:16
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00000800, 16, x1, 100, x3)

# rs1_val == 8192, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00002000; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00002000, -144, x1, 104, x3)

# rs1_val == 16384, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00004000; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00004000, 32, x1, 108, x3)

# rs1_val == 32768, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00008000; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00008000, 336, x1, 112, x3)

# rs1_val == 65536, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00010000; immval:96
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00010000, 96, x1, 116, x3)

# rs1_val == 131072, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00020000; immval:-112
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00020000, -112, x1, 120, x3)

# rs1_val == 262144, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00040000; immval:-32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00040000, -32, x1, 124, x3)

# rs1_val == 524288, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00080000; immval:96
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00080000, 96, x1, 128, x3)

# rs1_val == 1048576, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00100000; immval:96
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00100000, 96, x1, 132, x3)

# rs1_val == 2097152, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00200000; immval:16
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00200000, 16, x1, 136, x3)

# rs1_val == 4194304, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00400000; immval:-160
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00400000, -160, x1, 140, x3)

# rs1_val == 8388608, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x00800000; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x00800000, -144, x1, 144, x3)

# rs1_val == 16777216, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x01000000; immval:144
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x01000000, 144, x1, 148, x3)

# rs1_val == 67108864, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x04000000; immval:-352
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x04000000, -352, x1, 152, x3)

# rs1_val == -513, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffdff; immval:-512
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffdff, -512, x1, 156, x3)

# rs1_val == -1025, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffbff; immval:16
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffbff, 16, x1, 160, x3)

# rs1_val == -2049, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffff7ff; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffff7ff, 64, x1, 164, x3)

# rs1_val == -4097, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffefff; immval:-32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffefff, -32, x1, 168, x3)

# rs1_val == -16385, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffbfff; immval:128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffbfff, 128, x1, 172, x3)

# rs1_val == -32769, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffff7fff; immval:-512
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffff7fff, -512, x1, 176, x3)

# rs1_val == -65537, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffeffff; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffeffff, -64, x1, 180, x3)

# rs1_val == -131073, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffdffff; immval:-64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffdffff, -64, x1, 184, x3)

# rs1_val == -262145, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffbffff; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffbffff, 64, x1, 188, x3)

# rs1_val == -524289, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfff7ffff; immval:-112
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfff7ffff, -112, x1, 192, x3)

# rs1_val == -1048577, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffefffff; immval:-128
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffefffff, -128, x1, 196, x3)

# rs1_val == -2097153, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffdfffff; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffdfffff, 496, x1, 200, x3)

# rs1_val == -4194305, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffbfffff; immval:336
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffbfffff, 336, x1, 204, x3)

# rs1_val == -8388609, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xff7fffff; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xff7fffff, -272, x1, 208, x3)

# rs1_val == -16777217, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfeffffff; immval:64
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfeffffff, 64, x1, 212, x3)

# rs1_val == -33554433, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfdffffff; immval:-80
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfdffffff, -80, x1, 216, x3)

# rs1_val == -9, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffff7; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffff7, -272, x1, 220, x3)

# rs1_val == -67108865, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfbffffff; immval:112
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfbffffff, 112, x1, 224, x3)

# rs1_val == -134217729, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xf7ffffff; immval:-160
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xf7ffffff, -160, x1, 228, x3)

# rs1_val == -268435457, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xefffffff; immval:-144
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xefffffff, -144, x1, 232, x3)

# rs1_val == 268435456, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x10000000; immval:-272
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x10000000, -272, x1, 236, x3)

# rs1_val == -536870913, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xdfffffff; immval:256
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xdfffffff, 256, x1, 240, x3)

# rs1_val == -1073741825, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xbfffffff; immval:-160
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xbfffffff, -160, x1, 244, x3)

# rs1_val == 1431655765, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0x55555555; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0x55555555, 48, x1, 248, x3)

# rs1_val == -2, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffe; immval:32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffffe, 32, x1, 252, x3)

# rs1_val == -1431655766, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xaaaaaaaa; immval:48
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xaaaaaaaa, 48, x1, 256, x3)

# rs1_val == -3, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffffd; immval:-32
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffffd, -32, x1, 260, x3)

# rs1_val == -17, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffef; immval:496
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffffef, 496, x1, 264, x3)

# rs1_val == -33, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffffdf; immval:-16
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffffdf, -16, x1, 268, x3)

# rs1_val == -129, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xffffff7f; immval:-256
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xffffff7f, -256, x1, 272, x3)

# rs1_val == -257, 
# opcode:c.addi16sp; op1:x2; dest:x2 op1val:0xfffffeff; immval:144
TEST_CI_OP( c.addi16sp, x2, 0x00000000, 0xfffffeff, 144, x1, 276, x3)
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
    .fill 70*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
