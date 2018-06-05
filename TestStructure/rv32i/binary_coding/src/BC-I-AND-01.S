# RISC-V Compliance Test BC-I-AND-01
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
# Description: Binary test for AND.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # AND
    and     x0, x1, x2
    and     x1, x2, x3
    and     x2, x3, x4
    and     x3, x4, x5
    and     x4, x5, x6
    and     x5, x6, x7
    and     x6, x7, x8
    and     x7, x8, x9
    and     x8, x9, x10
    and     x9, x10, x11
    and     x10, x11, x12
    and     x11, x12, x13
    and     x12, x13, x14
    and     x13, x14, x15
    and     x14, x15, x16
    and     x15, x16, x17
    and     x16, x17, x18
    and     x17, x18, x19
    and     x18, x19, x20
    and     x19, x20, x21
    and     x20, x21, x22
    and     x21, x22, x23
    and     x22, x23, x24
    and     x23, x24, x25
    and     x24, x25, x26
    and     x25, x26, x27
    and     x26, x27, x28
    and     x27, x28, x29
    and     x28, x29, x30
    and     x29, x30, x31
    and     x30, x31, x0
    and     x31, x0, x1

# CODE_END
