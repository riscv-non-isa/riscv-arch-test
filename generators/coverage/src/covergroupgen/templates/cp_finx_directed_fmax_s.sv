// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fmax_s: coverpoint {64'(unsigned'(ins.current.rs1_val)), 64'(unsigned'(ins.current.rs2_val))} iff (ins.trap == 0) {
        bins signed_zeros = {128'h00000000800000000000000000000000};
        bins quiet_number = {128'h000000003f800000000000007fc12345};
    }
