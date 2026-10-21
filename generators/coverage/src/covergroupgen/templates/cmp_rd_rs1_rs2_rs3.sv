// SPDX-License-Identifier: Apache-2.0
    cmp_rd_rs1_rs2_rs3 : coverpoint ins.get_gpr_reg(ins.current.rd)
      iff (ins.current.rd == ins.current.rs1 && ins.current.rd == ins.current.rs2 &&
           ins.current.rd == ins.current.rs3 && ins.trap == 0) {
    }
