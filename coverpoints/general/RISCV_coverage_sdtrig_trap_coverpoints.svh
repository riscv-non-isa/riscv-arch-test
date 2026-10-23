///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Shared Coverpoints
//
// Copyright (C) 2026 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0
//
// Description:
//   itrigger/etrigger building blocks: the trap taken on this record (sdtrig_trap_* in
//   RISCV_coverage_sdtrig_functions.svh).
//   Weight 0: only the crosses count.
//
///////////////////////////////////////////
trap_from_m: coverpoint sdtrig_trap_origin(ins) {
    type_option.weight = 0;
    bins M_mode = {2'd3};
}
trap_from_s: coverpoint sdtrig_trap_origin(ins) {
    type_option.weight = 0;
    bins S_mode = {2'd1};
}
trap_from_u: coverpoint sdtrig_trap_origin(ins) {
    type_option.weight = 0;
    bins U_mode = {2'd0};
}
trap_selected: coverpoint sdtrig_trap_selected(ins) {
    type_option.weight = 0;
    bins selected = {1'b1};
}
trap_not_selected: coverpoint sdtrig_trap_selected(ins) {
    type_option.weight = 0;
    bins other = {1'b0};
}
trap_not_delegated: coverpoint sdtrig_trap_delegated(ins) {
    type_option.weight = 0;
    bins not_delegated = {1'b0};
}
trap_delegated: coverpoint sdtrig_trap_delegated(ins) {
    type_option.weight = 0;
    bins delegated = {1'b1};
}
// handled in M: never fires, whatever the origin mode's tdata1 bit (both reentrancy options)
trap_result_m: coverpoint sdtrig_trap_result(ins) {
    type_option.weight = 0;
    bins priv_clear_suppressed = {4'b11_0_0};
    bins priv_set_suppressed   = {4'b11_1_0};
}
// handled in S with medeleg[3] = 0: fires into M iff the origin mode's tdata1 bit is set
trap_result_s: coverpoint sdtrig_trap_result(ins) {
    type_option.weight = 0;
    bins priv_clear_suppressed = {4'b01_0_0};
    bins priv_set_fired        = {4'b01_1_1};
}
// handled in S on a cause tdata2 does not select: never fires
trap_result_s_other: coverpoint sdtrig_trap_result(ins) {
    type_option.weight = 0;
    bins priv_clear_suppressed = {4'b01_0_0};
    bins priv_set_suppressed   = {4'b01_1_0};
}
// handled in M or S on a cause tdata2 does not select: never fires
trap_result_other: coverpoint sdtrig_trap_result(ins) {
    type_option.weight = 0;
    bins priv_clear_suppressed = {4'b11_0_0, 4'b01_0_0};
    bins priv_set_suppressed   = {4'b11_1_0, 4'b01_1_0};
}
// SdtrigS/U (medeleg[3] = 1): handled in S, the origin mode's tdata1 bit clear or set. Whether the trigger fires then
// depends on the hart's re-entrancy option (suppressed with SIE = 0, or into M with tcontrol), so it is not a bin.
trap_handled_s: coverpoint sdtrig_trap_result(ins)[3:1] {
    type_option.weight = 0;
    bins priv_clear = {3'b01_0};
    bins priv_set   = {3'b01_1};
}
// the origin mode's tdata1 bit
trap_priv: coverpoint sdtrig_trap_result(ins)[1] {
    type_option.weight = 0;
    bins clear = {1'b0};
    bins set   = {1'b1};
}
// the selected trigger is an itrigger and an interrupt was taken on this record
itrigger_interrupt: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (sdtrig_trap_interrupt(ins)) {
    type_option.weight = 0;
    bins itrigger = {4'd4};
}
// S-level interrupts delegated to S
itrigger_code_s: coverpoint sdtrig_trap_cause(ins)[7:0] {
    type_option.weight = 0;
    `ifdef UDB_SSI_INTR_IMPL
        `ifdef UDB_SDTRIG_ITRIGGER_SUPPORTED_INTERRUPTS_1 bins ssi = {8'd1}; `endif
    `endif
    `ifdef UDB_STI_INTR_IMPL
        `ifdef UDB_SDTRIG_ITRIGGER_SUPPORTED_INTERRUPTS_5 bins sti = {8'd5}; `endif
    `endif
    `ifdef UDB_SEI_INTR_IMPL
        `ifdef UDB_SDTRIG_ITRIGGER_SUPPORTED_INTERRUPTS_9 bins sei = {8'd9}; `endif
    `endif
    `ifdef SSCOFPMF_SUPPORTED
        `ifdef UDB_SDTRIG_ITRIGGER_SUPPORTED_INTERRUPTS_13 bins lcofi = {8'd13}; `endif
    `endif
}
// the selected trigger is an etrigger and an exception was taken on this record
etrigger_exception: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "tdata1", "type")[3:0] iff (sdtrig_trap_exception(ins)) {
    type_option.weight = 0;
    bins etrigger = {4'd5};
}
