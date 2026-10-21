// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fcvt_l_s: coverpoint {64'(unsigned'(ins.current.rs1_val))} iff (ins.trap == 0) {
        bins positive_tie = {64'h000000003fc00000};
        bins negative_tie = {64'h00000000bfc00000};
        bins last_positive = {64'h000000005effffff};
        bins positive_overflow = {64'h000000005f000000};
        bins minimum = {64'h00000000df000000};
        bins negative_overflow = {64'h00000000df000001};
        bins nan = {64'h000000007fc12345};
    }
