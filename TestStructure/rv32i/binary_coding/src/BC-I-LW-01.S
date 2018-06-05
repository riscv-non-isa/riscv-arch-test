# RISC-V Compliance Test BC-I-LW-01
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
# Description: Binary test for LW.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # LW
    lw      x0, 0(x1)
    lw      x1, 0(x2)
    lw      x2, 0(x3)
    lw      x3, 0(x4)
    lw      x4, 0(x5)
    lw      x5, 0(x6)
    lw      x6, 0(x7)
    lw      x7, 0(x8)
    lw      x8, 0(x9)
    lw      x9, 0(x10)
    lw      x10, 0(x11)
    lw      x11, 0(x12)
    lw      x12, 0(x13)
    lw      x13, 0(x14)
    lw      x14, 0(x15)
    lw      x15, 0(x16)
    lw      x16, 0(x17)
    lw      x17, 0(x18)
    lw      x18, 0(x19)
    lw      x19, 0(x20)
    lw      x20, 0(x21)
    lw      x21, 0(x22)
    lw      x22, 0(x23)
    lw      x23, 0(x24)
    lw      x24, 0(x25)
    lw      x25, 0(x26)
    lw      x26, 0(x27)
    lw      x27, 0(x28)
    lw      x28, 0(x29)
    lw      x29, 0(x30)
    lw      x30, 0(x31)
    lw      x31, 0(x0)

    lw      x1, 0x00000000(x2)
    lw      x1, 0xFFFFFFFF(x2)
    lw      x1, 0x00000001(x2)
    lw      x1, 0x00000002(x2)
    lw      x1, 0x00000004(x2)
    lw      x1, 0x00000008(x2)
    lw      x1, 0x00000010(x2)
    lw      x1, 0x00000020(x2)
    lw      x1, 0x00000040(x2)
    lw      x1, 0x00000080(x2)
    lw      x1, 0x00000100(x2)
    lw      x1, 0x00000200(x2)
    lw      x1, 0x00000400(x2)
    lw      x1, 0xFFFFF800(x2)
    lw      x1, 0xFFFFFFFE(x2)
    lw      x1, 0xFFFFFFFD(x2)
    lw      x1, 0xFFFFFFFB(x2)
    lw      x1, 0xFFFFFFF7(x2)
    lw      x1, 0xFFFFFFEF(x2)
    lw      x1, 0xFFFFFFDF(x2)
    lw      x1, 0xFFFFFFBF(x2)
    lw      x1, 0xFFFFFF7F(x2)
    lw      x1, 0xFFFFFEFF(x2)
    lw      x1, 0xFFFFFDFF(x2)
    lw      x1, 0xFFFFFBFF(x2)
    lw      x1, 0x000007FF(x2)

# CODE_END
