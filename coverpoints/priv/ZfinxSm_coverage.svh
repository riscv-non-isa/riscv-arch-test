// SPDX-License-Identifier: Apache-2.0

`define COVER_ZFINXSM
covergroup ZfinxSm_cg with function sample(ins_t ins);
    cp_mstatus_fs: coverpoint ins.current.rs1_val[14:13]
      iff (ins.current.insn[6:0] == 7'h73 && ins.current.insn[31:20] == CSR_MSTATUS &&
           ins.current.insn[14:12] == 3'b010 && ins.trap == 0) {
        bins attempts[] = {[0:3]};
    }
    cp_misa_F_D_Q: coverpoint {ins.current.rs1_val[16], ins.current.rs1_val[5], ins.current.rs1_val[3]}
      iff (ins.current.insn[6:0] == 7'h73 && ins.current.insn[31:20] == CSR_MISA &&
           ins.current.insn[14:12] == 3'b010 && ins.trap == 0) {
        bins attempts[] = {[0:7]};
    }
    cp_fcsr_fs_off: coverpoint {ins.current.insn[31:20], ins.current.rs1_val[7:0]}
      iff (ins.current.insn[6:0] == 7'h73 && ins.current.insn[14:12] == 3'b001 &&
           get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "fs") == 0 && ins.trap == 0) {
        bins fflags[] = {[20'h00100:20'h0011f]};
        bins frm[] = {[20'h00200:20'h00204]};
        bins fcsr[] = {20'h00300, 20'h0031f, 20'h00380, 20'h0039f};
    }
    cp_fp_fs_off: coverpoint (ins.current.insn[11:7] == 0)
      iff (ins.current.insn[31:25] == 7'b0001100 && ins.current.insn[6:0] == 7'h53 &&
           get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "mstatus", "fs") == 0 && ins.trap == 0) {
        bins nonzero_rd = {0};
        bins zero_rd = {1};
    }
endgroup

function void zfinxsm_sample(int hart, int issue, ins_t ins);
    ZfinxSm_cg.sample(ins);
endfunction
