    // c.addi with rd != 0, imm = 0 is a hint
    cp_c_hint_addi : coverpoint ins.get_gpr_reg(ins.current.rd) iff (ins.trap == 0 && ins.current.imm == 0) {
        `ifdef E_SUPPORTED
            bins rd[] = {[x1:x15]}; // rd != x0
        `else
            bins rd[] = {[x1:x31]}; // rd != x0
        `endif
    }
