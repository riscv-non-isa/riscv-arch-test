
#include "compliance_model.h"
#include "compliance_test.h"

RVTEST_ISA("RV32I")

RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
RVTEST_CASE(1,"//check ISA:=regex(.*I.*);def TEST_CASE_1=True;",sltiu)
la x1,signature_x1_1
TEST_IMM_OP( sltiu, x31, x30, 0, 2048, 2048, x1, 0, x2)
TEST_IMM_OP( sltiu, x30, x31, 0, 4160749567, 4095, x1, 4, x2)
TEST_IMM_OP( sltiu, x29, x28, 1, 0, 4095, x1, 8, x2)
TEST_IMM_OP( sltiu, x28, x29, 0, 4294967295, 4095, x1, 12, x2)
TEST_IMM_OP( sltiu, x27, x26, 1, 1, 4095, x1, 16, x2)
TEST_IMM_OP( sltiu, x26, x27, 0, 4160749567, 0, x1, 20, x2)
TEST_IMM_OP( sltiu, x25, x24, 0, 4160749567, 1, x1, 24, x2)
TEST_IMM_OP( sltiu, x24, x25, 1, 2, 4095, x1, 28, x2)
TEST_IMM_OP( sltiu, x23, x22, 1, 4, 4095, x1, 32, x2)
TEST_IMM_OP( sltiu, x22, x23, 1, 8, 4095, x1, 36, x2)
TEST_IMM_OP( sltiu, x21, x20, 1, 16, 4095, x1, 40, x2)
TEST_IMM_OP( sltiu, x20, x21, 1, 32, 4095, x1, 44, x2)
TEST_IMM_OP( sltiu, x19, x18, 1, 64, 4095, x1, 48, x2)
TEST_IMM_OP( sltiu, x18, x19, 1, 128, 4095, x1, 52, x2)
TEST_IMM_OP( sltiu, x17, x16, 1, 256, 4095, x1, 56, x2)
TEST_IMM_OP( sltiu, x16, x17, 1, 512, 4095, x1, 60, x2)
TEST_IMM_OP( sltiu, x15, x14, 1, 1024, 4095, x1, 64, x2)
TEST_IMM_OP( sltiu, x14, x15, 0, 4096, 4095, x1, 68, x2)
TEST_IMM_OP( sltiu, x13, x12, 0, 8192, 4095, x1, 72, x2)
TEST_IMM_OP( sltiu, x12, x13, 0, 16384, 4095, x1, 76, x2)
TEST_IMM_OP( sltiu, x11, x10, 0, 32768, 4095, x1, 80, x2)
TEST_IMM_OP( sltiu, x10, x11, 0, 65536, 4095, x1, 84, x2)
TEST_IMM_OP( sltiu, x9, x8, 0, 131072, 4095, x1, 88, x2)
TEST_IMM_OP( sltiu, x8, x9, 0, 262144, 4095, x1, 92, x2)
TEST_IMM_OP( sltiu, x7, x6, 0, 524288, 4095, x1, 96, x2)
TEST_IMM_OP( sltiu, x6, x7, 0, 1048576, 4095, x1, 100, x2)
TEST_IMM_OP( sltiu, x5, x4, 0, 2097152, 4095, x1, 104, x2)
la x6,signature_x6_0
TEST_IMM_OP( sltiu, x4, x5, 0, 4194304, 4095, x6, 0, x7)
TEST_IMM_OP( sltiu, x3, x2, 0, 8388608, 4095, x6, 4, x7)
TEST_IMM_OP( sltiu, x2, x3, 0, 16777216, 4095, x6, 8, x7)
TEST_IMM_OP( sltiu, x1, x0, 0, 33554432, 4095, x6, 12, x7)
TEST_IMM_OP( sltiu, x0, x1, 0, 67108864, 4095, x6, 16, x7)
TEST_IMM_OP( sltiu, x31, x31, 0, 134217728, 4095, x6, 20, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 268435456, 4095, x6, 24, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 536870912, 4095, x6, 28, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 1073741824, 4095, x6, 32, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 2147483648, 4095, x6, 36, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294967294, 4095, x6, 40, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294967293, 4095, x6, 44, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294967291, 4095, x6, 48, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294967287, 4095, x6, 52, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294967279, 4095, x6, 56, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294967263, 4095, x6, 60, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294967231, 4095, x6, 64, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294967167, 4095, x6, 68, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294967039, 4095, x6, 72, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294966783, 4095, x6, 76, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294966271, 4095, x6, 80, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294965247, 4095, x6, 84, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294963199, 4095, x6, 88, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294959103, 4095, x6, 92, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294950911, 4095, x6, 96, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294934527, 4095, x6, 100, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294901759, 4095, x6, 104, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294836223, 4095, x6, 108, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294705151, 4095, x6, 112, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4294443007, 4095, x6, 116, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4293918719, 4095, x6, 120, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4292870143, 4095, x6, 124, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4290772991, 4095, x6, 128, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4286578687, 4095, x6, 132, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4278190079, 4095, x6, 136, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4261412863, 4095, x6, 140, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4227858431, 4095, x6, 144, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4026531839, 4095, x6, 148, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 3758096383, 4095, x6, 152, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 3221225471, 4095, x6, 156, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 2147483647, 4095, x6, 160, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 1431655765, 4095, x6, 164, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 2863311530, 4095, x6, 168, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 2, x6, 172, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 4, x6, 176, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 8, x6, 180, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 16, x6, 184, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 32, x6, 188, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 64, x6, 192, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 128, x6, 196, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 256, x6, 200, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 512, x6, 204, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 1365, x6, 208, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 2730, x6, 212, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 1024, x6, 216, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 4094, x6, 220, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 4093, x6, 224, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 4091, x6, 228, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 4087, x6, 232, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 4079, x6, 236, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 4063, x6, 240, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 4031, x6, 244, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 3967, x6, 248, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 3839, x6, 252, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 3583, x6, 256, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 3071, x6, 260, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 4160749567, 2047, x6, 264, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 33554432, 4095, x6, 268, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 67108864, 4095, x6, 272, x7)
TEST_IMM_OP( sltiu, x11, x10, 0, 134217728, 4095, x6, 276, x7)
#endif


RVMODEL_HALT
RVTEST_CODE_END

RVTEST_DATA_BEGIN
.align 4
.align 4
rvtest_data:
.word 0xbabecafe
RVTEST_DATA_END

RVMODEL_DATA_BEGIN
.align 4

signature_x1_0:
    .fill 0*(XLEN/32),4,0xafacadee


signature_x1_1:
    .fill 27*(XLEN/32),4,0xafacadee


signature_x6_0:
    .fill 70*(XLEN/32),4,0xafacadee

RVMODEL_DATA_END
