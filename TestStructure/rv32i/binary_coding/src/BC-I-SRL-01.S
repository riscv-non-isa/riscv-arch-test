# RISC-V Compliance Test BC-I-SRL-01
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
# Description: Binary test for SRL.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # SRL
    srl     x0, x1, x2
    srl     x1, x2, x3
    srl     x2, x3, x4
    srl     x3, x4, x5
    srl     x4, x5, x6
    srl     x5, x6, x7
    srl     x6, x7, x8
    srl     x7, x8, x9
    srl     x8, x9, x10
    srl     x9, x10, x11
    srl     x10, x11, x12
    srl     x11, x12, x13
    srl     x12, x13, x14
    srl     x13, x14, x15
    srl     x14, x15, x16
    srl     x15, x16, x17
    srl     x16, x17, x18
    srl     x17, x18, x19
    srl     x18, x19, x20
    srl     x19, x20, x21
    srl     x20, x21, x22
    srl     x21, x22, x23
    srl     x22, x23, x24
    srl     x23, x24, x25
    srl     x24, x25, x26
    srl     x25, x26, x27
    srl     x26, x27, x28
    srl     x27, x28, x29
    srl     x28, x29, x30
    srl     x29, x30, x31
    srl     x30, x31, x0
    srl     x31, x0, x1

# CODE_END
