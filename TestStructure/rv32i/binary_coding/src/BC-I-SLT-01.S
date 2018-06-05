# RISC-V Compliance Test BC-I-SLT-01
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
# Description: Binary test for SLT.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # SLT
    slt     x0, x1, x2
    slt     x1, x2, x3
    slt     x2, x3, x4
    slt     x3, x4, x5
    slt     x4, x5, x6
    slt     x5, x6, x7
    slt     x6, x7, x8
    slt     x7, x8, x9
    slt     x8, x9, x10
    slt     x9, x10, x11
    slt     x10, x11, x12
    slt     x11, x12, x13
    slt     x12, x13, x14
    slt     x13, x14, x15
    slt     x14, x15, x16
    slt     x15, x16, x17
    slt     x16, x17, x18
    slt     x17, x18, x19
    slt     x18, x19, x20
    slt     x19, x20, x21
    slt     x20, x21, x22
    slt     x21, x22, x23
    slt     x22, x23, x24
    slt     x23, x24, x25
    slt     x24, x25, x26
    slt     x25, x26, x27
    slt     x26, x27, x28
    slt     x27, x28, x29
    slt     x28, x29, x30
    slt     x29, x30, x31
    slt     x30, x31, x0
    slt     x31, x0, x1

# CODE_END
