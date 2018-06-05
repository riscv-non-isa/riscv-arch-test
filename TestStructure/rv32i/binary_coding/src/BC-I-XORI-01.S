# RISC-V Compliance Test BC-I-XORI-01
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
# Description: Binary test for XORI.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # XORI
    xori    x0, x1, 0
    xori    x1, x2, 0
    xori    x2, x3, 0
    xori    x3, x4, 0
    xori    x4, x5, 0
    xori    x5, x6, 0
    xori    x6, x7, 0
    xori    x7, x8, 0
    xori    x8, x9, 0
    xori    x9, x10, 0
    xori    x10, x11, 0
    xori    x11, x12, 0
    xori    x12, x13, 0
    xori    x13, x14, 0
    xori    x14, x15, 0
    xori    x15, x16, 0
    xori    x16, x17, 0
    xori    x17, x18, 0
    xori    x18, x19, 0
    xori    x19, x20, 0
    xori    x20, x21, 0
    xori    x21, x22, 0
    xori    x22, x23, 0
    xori    x23, x24, 0
    xori    x24, x25, 0
    xori    x25, x26, 0
    xori    x26, x27, 0
    xori    x27, x28, 0
    xori    x28, x29, 0
    xori    x29, x30, 0
    xori    x30, x31, 0
    xori    x31, x0, 0

    xori    x1, x2, 0x00000000
    xori    x1, x2, 0xFFFFFFFF
    xori    x1, x2, 0x00000001
    xori    x1, x2, 0x00000002
    xori    x1, x2, 0x00000004
    xori    x1, x2, 0x00000008
    xori    x1, x2, 0x00000010
    xori    x1, x2, 0x00000020
    xori    x1, x2, 0x00000040
    xori    x1, x2, 0x00000080
    xori    x1, x2, 0x00000100
    xori    x1, x2, 0x00000200
    xori    x1, x2, 0x00000400
    xori    x1, x2, 0xFFFFF800
    xori    x1, x2, 0xFFFFFFFE
    xori    x1, x2, 0xFFFFFFFD
    xori    x1, x2, 0xFFFFFFFB
    xori    x1, x2, 0xFFFFFFF7
    xori    x1, x2, 0xFFFFFFEF
    xori    x1, x2, 0xFFFFFFDF
    xori    x1, x2, 0xFFFFFFBF
    xori    x1, x2, 0xFFFFFF7F
    xori    x1, x2, 0xFFFFFEFF
    xori    x1, x2, 0xFFFFFDFF
    xori    x1, x2, 0xFFFFFBFF
    xori    x1, x2, 0x000007FF

# CODE_END
