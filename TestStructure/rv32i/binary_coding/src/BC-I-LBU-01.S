# RISC-V Compliance Test BC-I-LBU-01
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
# Description: Binary test for LBU.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # LBU
    lbu     x0, 0(x1)
    lbu     x1, 0(x2)
    lbu     x2, 0(x3)
    lbu     x3, 0(x4)
    lbu     x4, 0(x5)
    lbu     x5, 0(x6)
    lbu     x6, 0(x7)
    lbu     x7, 0(x8)
    lbu     x8, 0(x9)
    lbu     x9, 0(x10)
    lbu     x10, 0(x11)
    lbu     x11, 0(x12)
    lbu     x12, 0(x13)
    lbu     x13, 0(x14)
    lbu     x14, 0(x15)
    lbu     x15, 0(x16)
    lbu     x16, 0(x17)
    lbu     x17, 0(x18)
    lbu     x18, 0(x19)
    lbu     x19, 0(x20)
    lbu     x20, 0(x21)
    lbu     x21, 0(x22)
    lbu     x22, 0(x23)
    lbu     x23, 0(x24)
    lbu     x24, 0(x25)
    lbu     x25, 0(x26)
    lbu     x26, 0(x27)
    lbu     x27, 0(x28)
    lbu     x28, 0(x29)
    lbu     x29, 0(x30)
    lbu     x30, 0(x31)
    lbu     x31, 0(x0)

    lbu     x1, 0x00000000(x2)
    lbu     x1, 0xFFFFFFFF(x2)
    lbu     x1, 0x00000001(x2)
    lbu     x1, 0x00000002(x2)
    lbu     x1, 0x00000004(x2)
    lbu     x1, 0x00000008(x2)
    lbu     x1, 0x00000010(x2)
    lbu     x1, 0x00000020(x2)
    lbu     x1, 0x00000040(x2)
    lbu     x1, 0x00000080(x2)
    lbu     x1, 0x00000100(x2)
    lbu     x1, 0x00000200(x2)
    lbu     x1, 0x00000400(x2)
    lbu     x1, 0xFFFFF800(x2)
    lbu     x1, 0xFFFFFFFE(x2)
    lbu     x1, 0xFFFFFFFD(x2)
    lbu     x1, 0xFFFFFFFB(x2)
    lbu     x1, 0xFFFFFFF7(x2)
    lbu     x1, 0xFFFFFFEF(x2)
    lbu     x1, 0xFFFFFFDF(x2)
    lbu     x1, 0xFFFFFFBF(x2)
    lbu     x1, 0xFFFFFF7F(x2)
    lbu     x1, 0xFFFFFEFF(x2)
    lbu     x1, 0xFFFFFDFF(x2)
    lbu     x1, 0xFFFFFBFF(x2)
    lbu     x1, 0x000007FF(x2)

# CODE_END
