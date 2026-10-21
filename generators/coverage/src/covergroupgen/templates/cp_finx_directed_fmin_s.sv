// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fmin_s: coverpoint {64'(unsigned'(ins.current.rs1_val)), 64'(unsigned'(ins.current.rs2_val))} iff (ins.trap == 0) {
        bins signed_zeros = {128'h00000000000000000000000080000000};
        bins quiet_number = {128'h000000007fc12345000000003f800000};
    }
