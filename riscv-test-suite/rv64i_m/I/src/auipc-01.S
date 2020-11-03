
#This assembly file tests the auipc instruction of the RISC-V I extension for the auipc covergroup.


#include "compliance_model.h"
#include "compliance_test.h"
RVTEST_ISA("RV64I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN
RVMODEL_TARGET_INIT

#ifdef TEST_CASE_1

RVTEST_CASE(0,"//check ISA:=regex(.*64.*);check ISA:=regex(.*I.*);def TEST_CASE_1=True;",auipc)

RVTEST_SIGBASE( x7,signature_x7_1)

# rd==x13, imm_val == 0, 
# opcode: auipc ; dest:x13; immval:0
TEST_AUIPC(auipc, x13, 0x0, 0, x7, 0, x9)

# rd==x5, imm_val > 0, imm_val == 1015807
# opcode: auipc ; dest:x5; immval:1015807
TEST_AUIPC(auipc, x5, 0xf7fff00000000000, 1015807, x7, 8, x9)

# rd==x10, imm_val == ((2**20)-1), 
# opcode: auipc ; dest:x10; immval:1048575
TEST_AUIPC(auipc, x10, 0xfffff00000000000, 1048575, x7, 16, x9)

# rd==x20, imm_val == 1, 
# opcode: auipc ; dest:x20; immval:1
TEST_AUIPC(auipc, x20, 0x100000000000, 1, x7, 24, x9)

# rd==x16, imm_val == 2, 
# opcode: auipc ; dest:x16; immval:2
TEST_AUIPC(auipc, x16, 0x200000000000, 2, x7, 32, x9)

# rd==x29, imm_val == 4, 
# opcode: auipc ; dest:x29; immval:4
TEST_AUIPC(auipc, x29, 0x400000000000, 4, x7, 40, x9)

# rd==x11, imm_val == 8, 
# opcode: auipc ; dest:x11; immval:8
TEST_AUIPC(auipc, x11, 0x800000000000, 8, x7, 48, x9)

# rd==x14, imm_val == 16, 
# opcode: auipc ; dest:x14; immval:16
TEST_AUIPC(auipc, x14, 0x1000000000000, 16, x7, 56, x9)

# rd==x17, imm_val == 32, 
# opcode: auipc ; dest:x17; immval:32
TEST_AUIPC(auipc, x17, 0x2000000000000, 32, x7, 64, x9)

# rd==x28, imm_val == 64, 
# opcode: auipc ; dest:x28; immval:64
TEST_AUIPC(auipc, x28, 0x4000000000000, 64, x7, 72, x9)

# rd==x27, imm_val == 128, 
# opcode: auipc ; dest:x27; immval:128
TEST_AUIPC(auipc, x27, 0x8000000000000, 128, x7, 80, x9)

# rd==x22, imm_val == 256, 
# opcode: auipc ; dest:x22; immval:256
TEST_AUIPC(auipc, x22, 0x10000000000000, 256, x7, 88, x9)

# rd==x6, imm_val == 512, 
# opcode: auipc ; dest:x6; immval:512
TEST_AUIPC(auipc, x6, 0x20000000000000, 512, x7, 96, x9)

# rd==x12, imm_val == 1024, 
# opcode: auipc ; dest:x12; immval:1024
TEST_AUIPC(auipc, x12, 0x40000000000000, 1024, x7, 104, x9)

# rd==x0, imm_val == 2048, 
# opcode: auipc ; dest:x0; immval:2048
TEST_AUIPC(auipc, x0, 0x80000000000000, 2048, x7, 112, x9)

# rd==x19, imm_val == 4096, 
# opcode: auipc ; dest:x19; immval:4096
TEST_AUIPC(auipc, x19, 0x100000000000000, 4096, x7, 120, x9)

# rd==x3, imm_val == 8192, 
# opcode: auipc ; dest:x3; immval:8192
TEST_AUIPC(auipc, x3, 0x200000000000000, 8192, x7, 128, x9)

# rd==x1, imm_val == 16384, 
# opcode: auipc ; dest:x1; immval:16384
TEST_AUIPC(auipc, x1, 0x400000000000000, 16384, x7, 136, x9)

# rd==x15, imm_val == 32768, 
# opcode: auipc ; dest:x15; immval:32768
TEST_AUIPC(auipc, x15, 0x800000000000000, 32768, x7, 144, x9)

# rd==x24, imm_val == 65536, 
# opcode: auipc ; dest:x24; immval:65536
TEST_AUIPC(auipc, x24, 0x1000000000000000, 65536, x7, 152, x9)

# rd==x30, imm_val == 131072, 
# opcode: auipc ; dest:x30; immval:131072
TEST_AUIPC(auipc, x30, 0x2000000000000000, 131072, x7, 160, x9)

# rd==x25, imm_val == 262144, 
# opcode: auipc ; dest:x25; immval:262144
TEST_AUIPC(auipc, x25, 0x4000000000000000, 262144, x7, 168, x9)

# rd==x8, imm_val == 524288, 
# opcode: auipc ; dest:x8; immval:524288
TEST_AUIPC(auipc, x8, 0x8000000000000000, 524288, x7, 176, x9)

# rd==x4, imm_val == 1048574, 
# opcode: auipc ; dest:x4; immval:1048574
TEST_AUIPC(auipc, x4, 0xffffe00000000000, 1048574, x7, 184, x9)

# rd==x21, imm_val == 1048573, 
# opcode: auipc ; dest:x21; immval:1048573
TEST_AUIPC(auipc, x21, 0xffffd00000000000, 1048573, x7, 192, x9)

# rd==x31, imm_val == 1048571, 
# opcode: auipc ; dest:x31; immval:1048571
TEST_AUIPC(auipc, x31, 0xffffb00000000000, 1048571, x7, 200, x9)

# rd==x2, imm_val == 1048567, 
# opcode: auipc ; dest:x2; immval:1048567
TEST_AUIPC(auipc, x2, 0xffff700000000000, 1048567, x7, 208, x9)

# rd==x18, imm_val == 1048559, 
# opcode: auipc ; dest:x18; immval:1048559
TEST_AUIPC(auipc, x18, 0xfffef00000000000, 1048559, x7, 216, x9)

# rd==x23, imm_val == 1048543, 
# opcode: auipc ; dest:x23; immval:1048543
TEST_AUIPC(auipc, x23, 0xfffdf00000000000, 1048543, x7, 224, x2)
RVTEST_SIGBASE( x1,signature_x1_0)

# rd==x7, imm_val == 1048063, 
# opcode: auipc ; dest:x7; immval:1048063
TEST_AUIPC(auipc, x7, 0xffdff00000000000, 1048063, x1, 0, x2)

# rd==x26, imm_val == 1047551, 
# opcode: auipc ; dest:x26; immval:1047551
TEST_AUIPC(auipc, x26, 0xffbff00000000000, 1047551, x1, 8, x2)

# rd==x9, imm_val == 1046527, 
# opcode: auipc ; dest:x9; immval:1046527
TEST_AUIPC(auipc, x9, 0xff7ff00000000000, 1046527, x1, 16, x2)

# imm_val == 1044479, 
# opcode: auipc ; dest:x10; immval:1044479
TEST_AUIPC(auipc, x10, 0xfefff00000000000, 1044479, x1, 24, x2)

# imm_val == 1040383, 
# opcode: auipc ; dest:x10; immval:1040383
TEST_AUIPC(auipc, x10, 0xfdfff00000000000, 1040383, x1, 32, x2)

# imm_val == 1032191, 
# opcode: auipc ; dest:x10; immval:1032191
TEST_AUIPC(auipc, x10, 0xfbfff00000000000, 1032191, x1, 40, x2)

# imm_val == 983039, 
# opcode: auipc ; dest:x10; immval:983039
TEST_AUIPC(auipc, x10, 0xeffff00000000000, 983039, x1, 48, x2)

# imm_val == 917503, 
# opcode: auipc ; dest:x10; immval:917503
TEST_AUIPC(auipc, x10, 0xdffff00000000000, 917503, x1, 56, x2)

# imm_val == 786431, 
# opcode: auipc ; dest:x10; immval:786431
TEST_AUIPC(auipc, x10, 0xbffff00000000000, 786431, x1, 64, x2)

# imm_val == 524287, 
# opcode: auipc ; dest:x10; immval:524287
TEST_AUIPC(auipc, x10, 0x7ffff00000000000, 524287, x1, 72, x2)

# imm_val == 349525, 
# opcode: auipc ; dest:x10; immval:349525
TEST_AUIPC(auipc, x10, 0x5555500000000000, 349525, x1, 80, x2)

# imm_val == 699050, 
# opcode: auipc ; dest:x10; immval:699050
TEST_AUIPC(auipc, x10, 0xaaaaa00000000000, 699050, x1, 88, x2)

# imm_val == 1048511, 
# opcode: auipc ; dest:x10; immval:1048511
TEST_AUIPC(auipc, x10, 0xfffbf00000000000, 1048511, x1, 96, x2)

# imm_val == 1048447, 
# opcode: auipc ; dest:x10; immval:1048447
TEST_AUIPC(auipc, x10, 0xfff7f00000000000, 1048447, x1, 104, x2)

# imm_val == 1048319, 
# opcode: auipc ; dest:x10; immval:1048319
TEST_AUIPC(auipc, x10, 0xffeff00000000000, 1048319, x1, 112, x2)

# imm_val == 2048, 
# opcode: auipc ; dest:x10; immval:2048
TEST_AUIPC(auipc, x10, 0x80000000000000, 2048, x1, 120, x2)
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

signature_x7_0:
    .fill 0*(XLEN/32),4,0xdeadbeef


signature_x7_1:
    .fill 29*(XLEN/32),4,0xdeadbeef


signature_x1_0:
    .fill 16*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

RVMODEL_DATA_END
