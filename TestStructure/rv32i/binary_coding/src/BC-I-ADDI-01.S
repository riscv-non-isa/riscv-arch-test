# RISC-V Compliance Test BC-I-ADDI-01
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
# Description: Binary test for ADDI.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # ADDI
    addi    x0, x1, 0
    addi    x1, x2, 0
    addi    x2, x3, 0
    addi    x3, x4, 0
    addi    x4, x5, 0
    addi    x5, x6, 0
    addi    x6, x7, 0
    addi    x7, x8, 0
    addi    x8, x9, 0
    addi    x9, x10, 0
    addi    x10, x11, 0
    addi    x11, x12, 0
    addi    x12, x13, 0
    addi    x13, x14, 0
    addi    x14, x15, 0
    addi    x15, x16, 0
    addi    x16, x17, 0
    addi    x17, x18, 0
    addi    x18, x19, 0
    addi    x19, x20, 0
    addi    x20, x21, 0
    addi    x21, x22, 0
    addi    x22, x23, 0
    addi    x23, x24, 0
    addi    x24, x25, 0
    addi    x25, x26, 0
    addi    x26, x27, 0
    addi    x27, x28, 0
    addi    x28, x29, 0
    addi    x29, x30, 0
    addi    x30, x31, 0
    addi    x31, x0, 0

    addi    x1, x2, 0x00000000
    addi    x1, x2, 0xFFFFFFFF
    addi    x1, x2, 0x00000001
    addi    x1, x2, 0x00000002
    addi    x1, x2, 0x00000004
    addi    x1, x2, 0x00000008
    addi    x1, x2, 0x00000010
    addi    x1, x2, 0x00000020
    addi    x1, x2, 0x00000040
    addi    x1, x2, 0x00000080
    addi    x1, x2, 0x00000100
    addi    x1, x2, 0x00000200
    addi    x1, x2, 0x00000400
    addi    x1, x2, 0xFFFFF800
    addi    x1, x2, 0xFFFFFFFE
    addi    x1, x2, 0xFFFFFFFD
    addi    x1, x2, 0xFFFFFFFB
    addi    x1, x2, 0xFFFFFFF7
    addi    x1, x2, 0xFFFFFFEF
    addi    x1, x2, 0xFFFFFFDF
    addi    x1, x2, 0xFFFFFFBF
    addi    x1, x2, 0xFFFFFF7F
    addi    x1, x2, 0xFFFFFEFF
    addi    x1, x2, 0xFFFFFDFF
    addi    x1, x2, 0xFFFFFBFF
    addi    x1, x2, 0x000007FF

# CODE_END
