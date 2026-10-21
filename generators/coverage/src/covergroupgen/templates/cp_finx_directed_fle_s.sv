// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fle_s: coverpoint {64'(unsigned'(ins.current.rs1_val)), 64'(unsigned'(ins.current.rs2_val))} iff (ins.trap == 0) {
        bins quiet_nan = {128'h000000007fc12345000000003f800000};
        bins signaling_nan = {128'h000000007f812345000000003f800000};
    }
