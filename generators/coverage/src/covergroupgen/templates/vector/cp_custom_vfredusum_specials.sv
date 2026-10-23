    //////////////////////////////////////////////////////////////////////////////////
    // cp_custom_vfredusum_specials
    // Unordered sum reductions of special values: class of vs1[0] (vs1 at SEW) x class of vs2[0]
    //////////////////////////////////////////////////////////////////////////////////

    vfredusum_specials_vs1 : coverpoint vred_fp_class(get_vr_element_zero(ins.hart, ins.issue, ins.current.vs1_val), vred_sew(ins.hart, ins.issue)) {
        bins pos0           = {vred_pos0};
        bins neg0           = {vred_neg0};
        bins posinf         = {vred_posinf};
        bins neginf         = {vred_neginf};
        bins qnan           = {vred_qnan};
        bins qnan_other     = {vred_qnan_other};
        bins snan           = {vred_snan};
        bins posmax         = {vred_posmax};
        bins negmax         = {vred_negmax};
        bins minsub         = {vred_minsub};
        bins neg1           = {vred_neg1};
        bins onepulp        = {vred_onepulp};
    }

    vfredusum_specials_vs2 : coverpoint vred_fp_class(get_vr_element_zero(ins.hart, ins.issue, ins.current.vs2_val), vred_sew(ins.hart, ins.issue)) {
        bins pos0           = {vred_pos0};
        bins neg0           = {vred_neg0};
        bins posinf         = {vred_posinf};
        bins neginf         = {vred_neginf};
        bins qnan           = {vred_qnan};
        bins qnan_other     = {vred_qnan_other};
        bins snan           = {vred_snan};
        bins posmax         = {vred_posmax};
        bins negmax         = {vred_negmax};
        bins minsub         = {vred_minsub};
        bins neg1           = {vred_neg1};
        bins onepulp        = {vred_onepulp};
    }

    vfredusum_specials_unmasked : coverpoint ins.current.vm {
        bins unmasked = {1'b1};
    }

    cp_custom_vfredusum_specials : cross std_vec, vfredusum_specials_vs1, vfredusum_specials_vs2, vfredusum_specials_unmasked iff (ins.trap == 0);

    //// end cp_custom_vfredusum_specials ////////////////////////////////////////////////
