# RISC-V Compliance Test BC-I-ADD-01
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
# Description: Binary test for ADD.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # ADD
    add     x0, x1, x2
    add     x1, x2, x3
    add     x2, x3, x4
    add     x3, x4, x5
    add     x4, x5, x6
    add     x5, x6, x7
    add     x6, x7, x8
    add     x7, x8, x9
    add     x8, x9, x10
    add     x9, x10, x11
    add     x10, x11, x12
    add     x11, x12, x13
    add     x12, x13, x14
    add     x13, x14, x15
    add     x14, x15, x16
    add     x15, x16, x17
    add     x16, x17, x18
    add     x17, x18, x19
    add     x18, x19, x20
    add     x19, x20, x21
    add     x20, x21, x22
    add     x21, x22, x23
    add     x22, x23, x24
    add     x23, x24, x25
    add     x24, x25, x26
    add     x25, x26, x27
    add     x26, x27, x28
    add     x27, x28, x29
    add     x28, x29, x30
    add     x29, x30, x31
    add     x30, x31, x0
    add     x31, x0, x1

# CODE_END
