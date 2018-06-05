# RISC-V Compliance Test BC-I-SLLI-01
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
# Description: Binary test for SLLI.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # SLLI
    slli    x0, x1, 0
    slli    x1, x2, 0
    slli    x2, x3, 0
    slli    x3, x4, 0
    slli    x4, x5, 0
    slli    x5, x6, 0
    slli    x6, x7, 0
    slli    x7, x8, 0
    slli    x8, x9, 0
    slli    x9, x10, 0
    slli    x10, x11, 0
    slli    x11, x12, 0
    slli    x12, x13, 0
    slli    x13, x14, 0
    slli    x14, x15, 0
    slli    x15, x16, 0
    slli    x16, x17, 0
    slli    x17, x18, 0
    slli    x18, x19, 0
    slli    x19, x20, 0
    slli    x20, x21, 0
    slli    x21, x22, 0
    slli    x22, x23, 0
    slli    x23, x24, 0
    slli    x24, x25, 0
    slli    x25, x26, 0
    slli    x26, x27, 0
    slli    x27, x28, 0
    slli    x28, x29, 0
    slli    x29, x30, 0
    slli    x30, x31, 0
    slli    x31, x0, 0

    slli    x0, x1, 0x00
    slli    x0, x1, 0x1F
    slli    x0, x1, 0x01
    slli    x0, x1, 0x02
    slli    x0, x1, 0x04
    slli    x0, x1, 0x08
    slli    x0, x1, 0x10
    slli    x0, x1, 0x1E
    slli    x0, x1, 0x1D
    slli    x0, x1, 0x1B
    slli    x0, x1, 0x17
    slli    x0, x1, 0x0F

# CODE_END
