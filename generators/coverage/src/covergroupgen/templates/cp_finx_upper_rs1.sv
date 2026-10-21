// SPDX-License-Identifier: Apache-2.0
    ifdef UDB_MXLEN_64
    cp_finx_upper_rs1 : coverpoint ins.current.rs1_val[63:32] iff (ins.trap == 0) {
        bins zero = {32'h00000000};
        bins ones = {32'hffffffff};
        bins odd = {32'haaaaaaaa};
        bins even = {32'h55555555};
    }
    ndif
