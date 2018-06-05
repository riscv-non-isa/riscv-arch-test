# RISC-V Compliance Test BC-I-SLTIU-01
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
# Description: Binary test for SLTIU.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # SLTIU
    sltiu   x0, x1, 0
    sltiu   x1, x2, 0
    sltiu   x2, x3, 0
    sltiu   x3, x4, 0
    sltiu   x4, x5, 0
    sltiu   x5, x6, 0
    sltiu   x6, x7, 0
    sltiu   x7, x8, 0
    sltiu   x8, x9, 0
    sltiu   x9, x10, 0
    sltiu   x10, x11, 0
    sltiu   x11, x12, 0
    sltiu   x12, x13, 0
    sltiu   x13, x14, 0
    sltiu   x14, x15, 0
    sltiu   x15, x16, 0
    sltiu   x16, x17, 0
    sltiu   x17, x18, 0
    sltiu   x18, x19, 0
    sltiu   x19, x20, 0
    sltiu   x20, x21, 0
    sltiu   x21, x22, 0
    sltiu   x22, x23, 0
    sltiu   x23, x24, 0
    sltiu   x24, x25, 0
    sltiu   x25, x26, 0
    sltiu   x26, x27, 0
    sltiu   x27, x28, 0
    sltiu   x28, x29, 0
    sltiu   x29, x30, 0
    sltiu   x30, x31, 0
    sltiu   x31, x0, 0

    sltiu   x0, x1, 0x00000000
    sltiu   x0, x1, 0xFFFFFFFF
    sltiu   x0, x1, 0x00000001
    sltiu   x0, x1, 0x00000002
    sltiu   x0, x1, 0x00000004
    sltiu   x0, x1, 0x00000008
    sltiu   x0, x1, 0x00000010
    sltiu   x0, x1, 0x00000020
    sltiu   x0, x1, 0x00000040
    sltiu   x0, x1, 0x00000080
    sltiu   x0, x1, 0x00000100
    sltiu   x0, x1, 0x00000200
    sltiu   x0, x1, 0x00000400
    sltiu   x0, x1, 0xFFFFF800
    sltiu   x0, x1, 0xFFFFFFFE
    sltiu   x0, x1, 0xFFFFFFFD
    sltiu   x0, x1, 0xFFFFFFFB
    sltiu   x0, x1, 0xFFFFFFF7
    sltiu   x0, x1, 0xFFFFFFEF
    sltiu   x0, x1, 0xFFFFFFDF
    sltiu   x0, x1, 0xFFFFFFBF
    sltiu   x0, x1, 0xFFFFFF7F
    sltiu   x0, x1, 0xFFFFFEFF
    sltiu   x0, x1, 0xFFFFFDFF
    sltiu   x0, x1, 0xFFFFFBFF
    sltiu   x0, x1, 0x000007FF

# CODE_END
