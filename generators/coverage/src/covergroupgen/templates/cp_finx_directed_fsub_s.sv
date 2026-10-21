// SPDX-License-Identifier: Apache-2.0
    cp_finx_directed_fsub_s: coverpoint {64'(unsigned'(ins.current.rs1_val)), 64'(unsigned'(ins.current.rs2_val))} iff (ins.trap == 0) {
        bins positive_tie = {128'h000000003f80000000000000b3800000};
        bins negative_tie = {128'h00000000bf8000000000000033800000};
        bins cancel = {128'h000000003f800000000000003f800000};
    }
