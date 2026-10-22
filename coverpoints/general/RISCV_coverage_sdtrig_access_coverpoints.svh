///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Shared Coverpoints
//
// Copyright (C) 2026 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
// Description:
//   cp_csr_access_common building blocks of the SdtrigSm/SdtrigS access covergroups
//   Weight 0: only the crosses count.
//
///////////////////////////////////////////
// supported standard trigger types; 1 and 2 are legacy, 7 is tmexttrigger, 8-11 are reserved, 12-14 are custom.
// 0 means no trigger at this tselect, which no implemented trigger (triggernum) can read back.
tdata1_type: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] {
    type_option.weight = 0;
    bins icount    = {4'd3};
    bins itrigger  = {4'd4};
    bins etrigger  = {4'd5};
    bins mcontrol6 = {4'd6};
    bins disabled  = {4'd15};
}
csr_common_reg: coverpoint ins.current.insn[31:20] {
    type_option.weight = 0;
    bins tdata1 = {CSR_TDATA1};
    bins tdata2 = {CSR_TDATA2};
    bins tdata3 = {CSR_TDATA3};
    bins tinfo  = {CSR_TINFO};
    `ifdef UDB_TCONTROL_AVAILABLE
        bins tcontrol = {CSR_TCONTROL};
    `endif
    `ifdef UDB_MCONTEXT_AVAILABLE
        bins mcontext = {CSR_MCONTEXT};
    `endif
    `ifdef UDB_SCONTEXT_AVAILABLE
        bins scontext = {CSR_SCONTEXT};
    `endif
    `ifdef UDB_HCONTEXT_AVAILABLE
        bins hcontext = {CSR_HCONTEXT};
    `endif
}
csr_access_common: coverpoint ins.current.insn {
    type_option.weight = 0;
    wildcard bins csrr   = {CSRR};
    wildcard bins csrrw1 = {CSRW} iff (ins.current.rs1_val == '1);
    wildcard bins csrrw0 = {CSRW} iff (ins.current.rs1_val == '0);
    wildcard bins csrrs1 = {CSRS} iff (ins.current.rs1_val == '1);
    wildcard bins csrrc1 = {CSRC} iff (ins.current.rs1_val == '1);
}
