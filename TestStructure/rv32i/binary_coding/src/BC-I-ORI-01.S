# RISC-V Compliance Test BC-I-ORI-01
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
# Description: Binary test for ORI.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # ORI
    ori     x0, x1, 0
    ori     x1, x2, 0
    ori     x2, x3, 0
    ori     x3, x4, 0
    ori     x4, x5, 0
    ori     x5, x6, 0
    ori     x6, x7, 0
    ori     x7, x8, 0
    ori     x8, x9, 0
    ori     x9, x10, 0
    ori     x10, x11, 0
    ori     x11, x12, 0
    ori     x12, x13, 0
    ori     x13, x14, 0
    ori     x14, x15, 0
    ori     x15, x16, 0
    ori     x16, x17, 0
    ori     x17, x18, 0
    ori     x18, x19, 0
    ori     x19, x20, 0
    ori     x20, x21, 0
    ori     x21, x22, 0
    ori     x22, x23, 0
    ori     x23, x24, 0
    ori     x24, x25, 0
    ori     x25, x26, 0
    ori     x26, x27, 0
    ori     x27, x28, 0
    ori     x28, x29, 0
    ori     x29, x30, 0
    ori     x30, x31, 0
    ori     x31, x0, 0

    ori     x1, x2, 0x00000000
    ori     x1, x2, 0xFFFFFFFF
    ori     x1, x2, 0x00000001
    ori     x1, x2, 0x00000002
    ori     x1, x2, 0x00000004
    ori     x1, x2, 0x00000008
    ori     x1, x2, 0x00000010
    ori     x1, x2, 0x00000020
    ori     x1, x2, 0x00000040
    ori     x1, x2, 0x00000080
    ori     x1, x2, 0x00000100
    ori     x1, x2, 0x00000200
    ori     x1, x2, 0x00000400
    ori     x1, x2, 0xFFFFF800
    ori     x1, x2, 0xFFFFFFFE
    ori     x1, x2, 0xFFFFFFFD
    ori     x1, x2, 0xFFFFFFFB
    ori     x1, x2, 0xFFFFFFF7
    ori     x1, x2, 0xFFFFFFEF
    ori     x1, x2, 0xFFFFFFDF
    ori     x1, x2, 0xFFFFFFBF
    ori     x1, x2, 0xFFFFFF7F
    ori     x1, x2, 0xFFFFFEFF
    ori     x1, x2, 0xFFFFFDFF
    ori     x1, x2, 0xFFFFFBFF
    ori     x1, x2, 0x000007FF

# CODE_END
