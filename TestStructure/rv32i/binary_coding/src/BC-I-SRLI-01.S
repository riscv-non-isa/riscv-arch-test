# RISC-V Compliance Test BC-I-SRLI-01
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
# Description: Binary test for SRLI.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # SRLI
    srli    x0, x1, 0
    srli    x1, x2, 0
    srli    x2, x3, 0
    srli    x3, x4, 0
    srli    x4, x5, 0
    srli    x5, x6, 0
    srli    x6, x7, 0
    srli    x7, x8, 0
    srli    x8, x9, 0
    srli    x9, x10, 0
    srli    x10, x11, 0
    srli    x11, x12, 0
    srli    x12, x13, 0
    srli    x13, x14, 0
    srli    x14, x15, 0
    srli    x15, x16, 0
    srli    x16, x17, 0
    srli    x17, x18, 0
    srli    x18, x19, 0
    srli    x19, x20, 0
    srli    x20, x21, 0
    srli    x21, x22, 0
    srli    x22, x23, 0
    srli    x23, x24, 0
    srli    x24, x25, 0
    srli    x25, x26, 0
    srli    x26, x27, 0
    srli    x27, x28, 0
    srli    x28, x29, 0
    srli    x29, x30, 0
    srli    x30, x31, 0
    srli    x31, x0, 0

    srli    x0, x1, 0x00
    srli    x0, x1, 0x1F
    srli    x0, x1, 0x01
    srli    x0, x1, 0x02
    srli    x0, x1, 0x04
    srli    x0, x1, 0x08
    srli    x0, x1, 0x10
    srli    x0, x1, 0x1E
    srli    x0, x1, 0x1D
    srli    x0, x1, 0x1B
    srli    x0, x1, 0x17
    srli    x0, x1, 0x0F

# CODE_END
