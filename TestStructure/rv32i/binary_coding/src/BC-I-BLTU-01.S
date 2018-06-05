# RISC-V Compliance Test BC-I-BLTU-01
#
# Copyright (c) 2017, Codasip Ltd.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#      * Redistributions of source code must retain the above copyright
#        notice, this list of conditions and the following disclaimer.
#      * Redistributions in binary form must reproduce the above copyright
#        notice, this list of conditions and the following disclaimer in the
#        documentation and/or other materials provided with the distribution.
#      * Neither the name of the Codasip Ltd. nor the
#        names of its contributors may be used to endorse or promote products
#        derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
# IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Codasip Ltd. BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
# THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# Specification: RV32I Base Integer Instruction Set, Version 2.0
# Description: Binary test for BLTU.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # BLTU
    1: bltu    x0, x1, 1b
    1: bltu    x1, x2, 1b
    1: bltu    x2, x3, 1b
    1: bltu    x3, x4, 1b
    1: bltu    x4, x5, 1b
    1: bltu    x5, x6, 1b
    1: bltu    x6, x7, 1b
    1: bltu    x7, x8, 1b
    1: bltu    x8, x9, 1b
    1: bltu    x9, x10, 1b
    1: bltu    x10, x11, 1b
    1: bltu    x11, x12, 1b
    1: bltu    x12, x13, 1b
    1: bltu    x13, x14, 1b
    1: bltu    x14, x15, 1b
    1: bltu    x15, x16, 1b
    1: bltu    x16, x17, 1b
    1: bltu    x17, x18, 1b
    1: bltu    x18, x19, 1b
    1: bltu    x19, x20, 1b
    1: bltu    x20, x21, 1b
    1: bltu    x21, x22, 1b
    1: bltu    x22, x23, 1b
    1: bltu    x23, x24, 1b
    1: bltu    x24, x25, 1b
    1: bltu    x25, x26, 1b
    1: bltu    x26, x27, 1b
    1: bltu    x27, x28, 1b
    1: bltu    x28, x29, 1b
    1: bltu    x29, x30, 1b
    1: bltu    x30, x31, 1b
    1: bltu    x31, x0, 1b

    1: bltu    x1, x2, 1b + 0       # 0x00000000
    1: bltu    x1, x2, 1b + -2      # 0xFFFFFFFE
    1: bltu    x1, x2, 1b + 2       # 0x00000002
    1: bltu    x1, x2, 1b + 4       # 0x00000004
    1: bltu    x1, x2, 1b + 8       # 0x00000008
    1: bltu    x1, x2, 1b + 16      # 0x00000010
    1: bltu    x1, x2, 1b + 32      # 0x00000020
    1: bltu    x1, x2, 1b + 64      # 0x00000040
    1: bltu    x1, x2, 1b + 128     # 0x00000080
    1: bltu    x1, x2, 1b + 256     # 0x00000100
    1: bltu    x1, x2, 1b + 512     # 0x00000200
    1: bltu    x1, x2, 1b + 1024    # 0x00000400
    1: bltu    x1, x2, 1b + 2048    # 0x00000800
    1: bltu    x1, x2, 1b + -4096   # 0xFFFFF000
    1: bltu    x1, x2, 1b + -4      # 0xFFFFFFFC
    1: bltu    x1, x2, 1b + -6      # 0xFFFFFFFA
    1: bltu    x1, x2, 1b + -10     # 0xFFFFFFF6
    1: bltu    x1, x2, 1b + -18     # 0xFFFFFFEE
    1: bltu    x1, x2, 1b + -34     # 0xFFFFFFDE
    1: bltu    x1, x2, 1b + -66     # 0xFFFFFFBE
    1: bltu    x1, x2, 1b + -130    # 0xFFFFFF7E
    1: bltu    x1, x2, 1b + -258    # 0xFFFFFEFE
    1: bltu    x1, x2, 1b + -514    # 0xFFFFFDFE
    1: bltu    x1, x2, 1b + -1026   # 0xFFFFFBFE
    1: bltu    x1, x2, 1b + -2050   # 0xFFFFF7FE
    1: bltu    x1, x2, 1b + 4094    # 0x00000FFE

# CODE_END
