///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Written: David_Harris@hmc.edu October 2026
//
// SPDX-License-Identifier: Apache-2.0
//
////////////////////////////////////////////////////////////////////////////////////////////////

`define COVER_SVVPTC

// The virtual address of the last lw, sw and fetch that took a page fault, held until the
// same access runs again at that address (the retry) or an SFENCE.VMA runs.
// Index 0 is lw, 1 is sw and 2 is fetch.
bit        svvptc_fault_pending [3];
`XLEN_BITS svvptc_fault_va [3];

covergroup Svvptc_cg with function sample(ins_t ins, bit load_retried, bit store_retried, bit fetch_retried);
    option.per_instance = 0;
    `include "general/RISCV_coverage_standard_coverpoints.svh"

    // An access repeated after it took a page fault, with no SFENCE.VMA in between
    load_retry: coverpoint load_retried {
        bins retried = {1};
    }
    store_retry: coverpoint store_retried {
        bins retried = {1};
    }
    fetch_retry: coverpoint fetch_retried {
        bins retried = {1};
    }

    `ifdef UDB_MXLEN_64
        satp_mode: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "satp", "mode")[3:0] {
            `ifdef SV39_SUPPORTED
                bins sv39 = {4'b1000};
            `endif
            `ifdef SV48_SUPPORTED
                bins sv48 = {4'b1001};
            `endif
            `ifdef SV57_SUPPORTED
                bins sv57 = {4'b1010};
            `endif
        }
    `else
        satp_mode: coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "satp", "mode")[0] {
            bins sv32 = {1'b1};
        }
    `endif

    cp_retry_load:  cross load_retry,  satp_mode, priv_mode_s_u;
    cp_retry_store: cross store_retry, satp_mode, priv_mode_s_u;
    cp_retry_fetch: cross fetch_retry, satp_mode, priv_mode_s_u;
endgroup

// Returns 1 when an access retries the pending page fault at index i: match says it is the same
// kind of access at the faulting address. A page fault (re)arms index i with the address in stval.
// A retry is counted whether or not it faults again; the test checks the result.
function bit svvptc_retry(int hart, int issue, int i, bit match, bit page_fault);
    bit retried = match && svvptc_fault_pending[i];
    svvptc_fault_pending[i] = page_fault || (svvptc_fault_pending[i] && !retried);
    if (page_fault) svvptc_fault_va[i] = get_csr_val(hart, issue, `SAMPLE_AFTER, "stval", "stval");
    return retried;
endfunction

function void svvptc_sample(int hart, int issue, ins_t ins);
    `XLEN_BITS cause = get_csr_val(hart, issue, `SAMPLE_AFTER, "scause", "code");
    bit        trapped = ins.current.csr_wb[CSR_SCAUSE];
    bit        lw = ins.current.insn ==? LW;
    bit        sw = ins.current.insn ==? SW;
    bit        jalr = ins.current.insn ==? JALR;
    bit        load_retried, store_retried, fetch_retried;

    if (ins.current.insn ==? SFENCE_VMA) svvptc_fault_pending = '{default: 0};

    load_retried = svvptc_retry(hart, issue, 0, lw && ins.current.virt_adr_d == svvptc_fault_va[0],
                                lw && trapped && cause == `UDB_MXLEN'(LOAD_PAGE_FAULT));
    store_retried = svvptc_retry(hart, issue, 1, sw && ins.current.virt_adr_d == svvptc_fault_va[1],
                                 sw && trapped && cause == `UDB_MXLEN'(STORE_AMO_PAGE_FAULT));
    // A fetch page fault is reported on the jump to the page; the retry is the instruction fetched there.
    fetch_retried = svvptc_retry(hart, issue, 2, (ins.prev.insn ==? JALR) && ins.current.virt_adr_i == svvptc_fault_va[2],
                                 jalr && trapped && cause == `UDB_MXLEN'(INSTRUCTION_PAGE_FAULT));

    Svvptc_cg.sample(ins, load_retried, store_retried, fetch_retried);
endfunction
