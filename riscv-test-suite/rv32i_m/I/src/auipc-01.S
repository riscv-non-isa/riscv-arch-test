
#This assembly file tests the auipc instruction of the RISC-V I extension for the auipc covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*32.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",auipc)

RVTEST_SIGBASE( x9,signature_x9_1)

# rd==x28, imm_val == 0, 
# opcode: auipc ; dest:x28; immval:0
TEST_AUIPC(auipc, x28, 0x0, 0, x9, 0, x11)

# rd==x16, imm_val > 0, 
# opcode: auipc ; dest:x16; immval:9
TEST_AUIPC(auipc, x16, 0x9000, 9, x9, 4, x11)

# rd==x3, imm_val == ((2**20)-1), 
# opcode: auipc ; dest:x3; immval:1048575
TEST_AUIPC(auipc, x3, 0xfffff000, 1048575, x9, 8, x11)

# rd==x0, imm_val == 1, 
# opcode: auipc ; dest:x0; immval:1
TEST_AUIPC(auipc, x0, 0x1000, 1, x9, 12, x11)

# rd==x7, imm_val == 2, 
# opcode: auipc ; dest:x7; immval:2
TEST_AUIPC(auipc, x7, 0x2000, 2, x9, 16, x11)

# rd==x19, imm_val == 4, 
# opcode: auipc ; dest:x19; immval:4
TEST_AUIPC(auipc, x19, 0x4000, 4, x9, 20, x11)

# rd==x22, imm_val == 8, 
# opcode: auipc ; dest:x22; immval:8
TEST_AUIPC(auipc, x22, 0x8000, 8, x9, 24, x11)

# rd==x25, imm_val == 16, 
# opcode: auipc ; dest:x25; immval:16
TEST_AUIPC(auipc, x25, 0x10000, 16, x9, 28, x11)

# rd==x14, imm_val == 32, 
# opcode: auipc ; dest:x14; immval:32
TEST_AUIPC(auipc, x14, 0x20000, 32, x9, 32, x11)

# rd==x8, imm_val == 64, 
# opcode: auipc ; dest:x8; immval:64
TEST_AUIPC(auipc, x8, 0x40000, 64, x9, 36, x11)

# rd==x4, imm_val == 128, 
# opcode: auipc ; dest:x4; immval:128
TEST_AUIPC(auipc, x4, 0x80000, 128, x9, 40, x11)

# rd==x13, imm_val == 256, 
# opcode: auipc ; dest:x13; immval:256
TEST_AUIPC(auipc, x13, 0x100000, 256, x9, 44, x11)

# rd==x10, imm_val == 512, 
# opcode: auipc ; dest:x10; immval:512
TEST_AUIPC(auipc, x10, 0x200000, 512, x9, 48, x11)

# rd==x23, imm_val == 1024, 
# opcode: auipc ; dest:x23; immval:1024
TEST_AUIPC(auipc, x23, 0x400000, 1024, x9, 52, x11)

# rd==x17, imm_val == 2048, 
# opcode: auipc ; dest:x17; immval:2048
TEST_AUIPC(auipc, x17, 0x800000, 2048, x9, 56, x11)

# rd==x1, imm_val == 4096, 
# opcode: auipc ; dest:x1; immval:4096
TEST_AUIPC(auipc, x1, 0x1000000, 4096, x9, 60, x11)

# rd==x2, imm_val == 8192, 
# opcode: auipc ; dest:x2; immval:8192
TEST_AUIPC(auipc, x2, 0x2000000, 8192, x9, 64, x11)

# rd==x18, imm_val == 16384, 
# opcode: auipc ; dest:x18; immval:16384
TEST_AUIPC(auipc, x18, 0x4000000, 16384, x9, 68, x11)

# rd==x29, imm_val == 32768, 
# opcode: auipc ; dest:x29; immval:32768
TEST_AUIPC(auipc, x29, 0x8000000, 32768, x9, 72, x11)

# rd==x5, imm_val == 65536, 
# opcode: auipc ; dest:x5; immval:65536
TEST_AUIPC(auipc, x5, 0x10000000, 65536, x9, 76, x11)

# rd==x27, imm_val == 131072, 
# opcode: auipc ; dest:x27; immval:131072
TEST_AUIPC(auipc, x27, 0x20000000, 131072, x9, 80, x11)

# rd==x6, imm_val == 262144, 
# opcode: auipc ; dest:x6; immval:262144
TEST_AUIPC(auipc, x6, 0x40000000, 262144, x9, 84, x11)

# rd==x26, imm_val == 524288, 
# opcode: auipc ; dest:x26; immval:524288
TEST_AUIPC(auipc, x26, 0x80000000, 524288, x9, 88, x11)

# rd==x12, imm_val == 1048574, 
# opcode: auipc ; dest:x12; immval:1048574
TEST_AUIPC(auipc, x12, 0xffffe000, 1048574, x9, 92, x11)

# rd==x31, imm_val == 1048573, 
# opcode: auipc ; dest:x31; immval:1048573
TEST_AUIPC(auipc, x31, 0xffffd000, 1048573, x9, 96, x11)

# rd==x24, imm_val == 1048571, 
# opcode: auipc ; dest:x24; immval:1048571
TEST_AUIPC(auipc, x24, 0xffffb000, 1048571, x9, 100, x11)

# rd==x20, imm_val == 1048567, 
# opcode: auipc ; dest:x20; immval:1048567
TEST_AUIPC(auipc, x20, 0xffff7000, 1048567, x9, 104, x11)

# rd==x21, imm_val == 1048559, 
# opcode: auipc ; dest:x21; immval:1048559
TEST_AUIPC(auipc, x21, 0xfffef000, 1048559, x9, 108, x11)

# rd==x30, imm_val == 1048543, 
# opcode: auipc ; dest:x30; immval:1048543
TEST_AUIPC(auipc, x30, 0xfffdf000, 1048543, x9, 112, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x15, imm_val == 1048511, 
# opcode: auipc ; dest:x15; immval:1048511
TEST_AUIPC(auipc, x15, 0xfffbf000, 1048511, x1, 0, x2)

# rd==x11, imm_val == 1048063, 
# opcode: auipc ; dest:x11; immval:1048063
TEST_AUIPC(auipc, x11, 0xffdff000, 1048063, x1, 4, x2)

# rd==x9, imm_val == 1047551, 
# opcode: auipc ; dest:x9; immval:1047551
TEST_AUIPC(auipc, x9, 0xffbff000, 1047551, x1, 8, x2)

# imm_val == 1046527, 
# opcode: auipc ; dest:x10; immval:1046527
TEST_AUIPC(auipc, x10, 0xff7ff000, 1046527, x1, 12, x2)

# imm_val == 1044479, 
# opcode: auipc ; dest:x10; immval:1044479
TEST_AUIPC(auipc, x10, 0xfefff000, 1044479, x1, 16, x2)

# imm_val == 1040383, 
# opcode: auipc ; dest:x10; immval:1040383
TEST_AUIPC(auipc, x10, 0xfdfff000, 1040383, x1, 20, x2)

# imm_val == 1032191, 
# opcode: auipc ; dest:x10; immval:1032191
TEST_AUIPC(auipc, x10, 0xfbfff000, 1032191, x1, 24, x2)

# imm_val == 1015807, 
# opcode: auipc ; dest:x10; immval:1015807
TEST_AUIPC(auipc, x10, 0xf7fff000, 1015807, x1, 28, x2)

# imm_val == 983039, 
# opcode: auipc ; dest:x10; immval:983039
TEST_AUIPC(auipc, x10, 0xeffff000, 983039, x1, 32, x2)

# imm_val == 917503, 
# opcode: auipc ; dest:x10; immval:917503
TEST_AUIPC(auipc, x10, 0xdffff000, 917503, x1, 36, x2)

# imm_val == 786431, 
# opcode: auipc ; dest:x10; immval:786431
TEST_AUIPC(auipc, x10, 0xbffff000, 786431, x1, 40, x2)

# imm_val == 524287, 
# opcode: auipc ; dest:x10; immval:524287
TEST_AUIPC(auipc, x10, 0x7ffff000, 524287, x1, 44, x2)

# imm_val == 349525, 
# opcode: auipc ; dest:x10; immval:349525
TEST_AUIPC(auipc, x10, 0x55555000, 349525, x1, 48, x2)

# imm_val == 699050, 
# opcode: auipc ; dest:x10; immval:699050
TEST_AUIPC(auipc, x10, 0xaaaaa000, 699050, x1, 52, x2)

# imm_val == 1048447, 
# opcode: auipc ; dest:x10; immval:1048447
TEST_AUIPC(auipc, x10, 0xfff7f000, 1048447, x1, 56, x2)

# imm_val == 1048319, 
# opcode: auipc ; dest:x10; immval:1048319
TEST_AUIPC(auipc, x10, 0xffeff000, 1048319, x1, 60, x2)

# imm_val == 1, 
# opcode: auipc ; dest:x10; immval:1
TEST_AUIPC(auipc, x10, 0x1000, 1, x1, 64, x2)
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

signature_x9_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x9_1:
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 17*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
