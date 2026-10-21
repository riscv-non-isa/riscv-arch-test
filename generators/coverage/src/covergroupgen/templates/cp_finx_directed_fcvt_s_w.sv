// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fcvt_s_w: coverpoint {64'(unsigned'(ins.current.rs1_val))} iff (ins.trap == 0) {
        bins positive_tie = {64'h0000000001000001};
        bins negative_tie = {64'h00000000feffffff};
        bins minimum = {64'h0000000080000000};
    }
