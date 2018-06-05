# RISC-V Compliance Test BC-I-ANDI-01
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
# Description: Binary test for ANDI.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # ANDI
    andi    x0, x1, 0
    andi    x1, x2, 0
    andi    x2, x3, 0
    andi    x3, x4, 0
    andi    x4, x5, 0
    andi    x5, x6, 0
    andi    x6, x7, 0
    andi    x7, x8, 0
    andi    x8, x9, 0
    andi    x9, x10, 0
    andi    x10, x11, 0
    andi    x11, x12, 0
    andi    x12, x13, 0
    andi    x13, x14, 0
    andi    x14, x15, 0
    andi    x15, x16, 0
    andi    x16, x17, 0
    andi    x17, x18, 0
    andi    x18, x19, 0
    andi    x19, x20, 0
    andi    x20, x21, 0
    andi    x21, x22, 0
    andi    x22, x23, 0
    andi    x23, x24, 0
    andi    x24, x25, 0
    andi    x25, x26, 0
    andi    x26, x27, 0
    andi    x27, x28, 0
    andi    x28, x29, 0
    andi    x29, x30, 0
    andi    x30, x31, 0
    andi    x31, x0, 0

    andi    x1, x2, 0x00000000
    andi    x1, x2, 0xFFFFFFFF
    andi    x1, x2, 0x00000001
    andi    x1, x2, 0x00000002
    andi    x1, x2, 0x00000004
    andi    x1, x2, 0x00000008
    andi    x1, x2, 0x00000010
    andi    x1, x2, 0x00000020
    andi    x1, x2, 0x00000040
    andi    x1, x2, 0x00000080
    andi    x1, x2, 0x00000100
    andi    x1, x2, 0x00000200
    andi    x1, x2, 0x00000400
    andi    x1, x2, 0xFFFFF800
    andi    x1, x2, 0xFFFFFFFE
    andi    x1, x2, 0xFFFFFFFD
    andi    x1, x2, 0xFFFFFFFB
    andi    x1, x2, 0xFFFFFFF7
    andi    x1, x2, 0xFFFFFFEF
    andi    x1, x2, 0xFFFFFFDF
    andi    x1, x2, 0xFFFFFFBF
    andi    x1, x2, 0xFFFFFF7F
    andi    x1, x2, 0xFFFFFEFF
    andi    x1, x2, 0xFFFFFDFF
    andi    x1, x2, 0xFFFFFBFF
    andi    x1, x2, 0x000007FF

# CODE_END
