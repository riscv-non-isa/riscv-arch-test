// SPDX-License-Identifier: Apache-2.0
    cmp_rd_rs3 : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.current.rd == ins.current.rs3 & ins.trap == 0 )  {
        // Compare assignments of all registers
    }
