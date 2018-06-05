# RISC-V Compliance Test BC-I-OR-01
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
# Description: Binary test for OR.

#include "compliance_test.h"

# Test code region.
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # OR
    or      x0, x1, x2
    or      x1, x2, x3
    or      x2, x3, x4
    or      x3, x4, x5
    or      x4, x5, x6
    or      x5, x6, x7
    or      x6, x7, x8
    or      x7, x8, x9
    or      x8, x9, x10
    or      x9, x10, x11
    or      x10, x11, x12
    or      x11, x12, x13
    or      x12, x13, x14
    or      x13, x14, x15
    or      x14, x15, x16
    or      x15, x16, x17
    or      x16, x17, x18
    or      x17, x18, x19
    or      x18, x19, x20
    or      x19, x20, x21
    or      x20, x21, x22
    or      x21, x22, x23
    or      x22, x23, x24
    or      x23, x24, x25
    or      x24, x25, x26
    or      x25, x26, x27
    or      x26, x27, x28
    or      x27, x28, x29
    or      x28, x29, x30
    or      x29, x30, x31
    or      x30, x31, x0
    or      x31, x0, x1

# CODE_END
