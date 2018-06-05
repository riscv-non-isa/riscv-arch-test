# RISC-V Compliance Test BC-I-SLTI-01
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
# Description: Binary test for SLTI.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # SLTI
    slti    x0, x1, 0
    slti    x1, x2, 0
    slti    x2, x3, 0
    slti    x3, x4, 0
    slti    x4, x5, 0
    slti    x5, x6, 0
    slti    x6, x7, 0
    slti    x7, x8, 0
    slti    x8, x9, 0
    slti    x9, x10, 0
    slti    x10, x11, 0
    slti    x11, x12, 0
    slti    x12, x13, 0
    slti    x13, x14, 0
    slti    x14, x15, 0
    slti    x15, x16, 0
    slti    x16, x17, 0
    slti    x17, x18, 0
    slti    x18, x19, 0
    slti    x19, x20, 0
    slti    x20, x21, 0
    slti    x21, x22, 0
    slti    x22, x23, 0
    slti    x23, x24, 0
    slti    x24, x25, 0
    slti    x25, x26, 0
    slti    x26, x27, 0
    slti    x27, x28, 0
    slti    x28, x29, 0
    slti    x29, x30, 0
    slti    x30, x31, 0
    slti    x31, x0, 0

    slti    x0, x1, 0x00000000
    slti    x0, x1, 0xFFFFFFFF
    slti    x0, x1, 0x00000001
    slti    x0, x1, 0x00000002
    slti    x0, x1, 0x00000004
    slti    x0, x1, 0x00000008
    slti    x0, x1, 0x00000010
    slti    x0, x1, 0x00000020
    slti    x0, x1, 0x00000040
    slti    x0, x1, 0x00000080
    slti    x0, x1, 0x00000100
    slti    x0, x1, 0x00000200
    slti    x0, x1, 0x00000400
    slti    x0, x1, 0xFFFFF800
    slti    x0, x1, 0xFFFFFFFE
    slti    x0, x1, 0xFFFFFFFD
    slti    x0, x1, 0xFFFFFFFB
    slti    x0, x1, 0xFFFFFFF7
    slti    x0, x1, 0xFFFFFFEF
    slti    x0, x1, 0xFFFFFFDF
    slti    x0, x1, 0xFFFFFFBF
    slti    x0, x1, 0xFFFFFF7F
    slti    x0, x1, 0xFFFFFEFF
    slti    x0, x1, 0xFFFFFDFF
    slti    x0, x1, 0xFFFFFBFF
    slti    x0, x1, 0x000007FF

# CODE_END
