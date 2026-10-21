// SPDX-License-Identifier: Apache-2.0
    cp_finx_flags_preserved: coverpoint
      get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "fcsr", "fflags")[4:0]
      iff (get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") ==
           get_csr_val(ins.hart, ins.issue, `SAMPLE_AFTER, "fcsr", "fflags") && ins.trap == 0) {
        bins flags[] = {[0:31]};
    }
