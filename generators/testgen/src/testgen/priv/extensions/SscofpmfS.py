##################################
# priv/extensions/SscofpmfS.py
# Written by: Ayesha Anwar, ayesha.anwaar2005@gmail.com
# Sscofpmf S-mode test generator.
# SPDX-License-Identifier: Apache-2.0
##################################

from testgen.asm.helpers import comment_banner, write_sigupd
from testgen.asm.interrupts import clr_stimer_mmode, set_stimer_mmode
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.SscofpmfCommon import _csr_access, generate_sscofpmf_suite, nonzero_not_all_ones
from testgen.priv.registry import add_priv_test_generator


def _generate_lcofi_sip_s_tests(test_data: TestData) -> list[str]:
    ######################################
    covergroup = "Sscofpmf_cg"
    coverpoint = "cp_lcofi_sip_s"
    ######################################

    LCOFI_BIT = 1 << 13
    SIE_BIT = 0x2

    r_val, r_temp = test_data.int_regs.get_registers(2, exclude_regs=[0, 31])
    lines = [
        comment_banner(
            coverpoint,
            "Interrupt pending and enable, mode = S.\n"
            "mideleg.LCOFI=1 held fixed (required to reach S-mode with LCOFI\n"
            "visible), sstatus.SIE=1 held fixed per testplan; sweep is\n"
            "sip.LCOFIP x sie.LCOFIE.\n",
        ),
        "",
        _csr_access("csrw mip, zero      # clear all pending", "S"),
        _csr_access("csrw mie, zero      # disable all interrupts", "S"),
        _csr_access("csrw RVMODEL_MHPMEVENT, zero", "S"),
        # mideleg is deliberately excluded from the T-SBI dispatch table (see
        # docs/tsbi-changes.md) -- it needs an actual, one-time mode change, not T-SBI.
        f"LI(x{r_val}, {hex(LCOFI_BIT)})",
        "RVTEST_TSBI_GOTO_MMODE",
        f"csrs mideleg, x{r_val}   # mideleg.LCOFI = 1 (fixed)",
        "RVTEST_TSBI_GOTO_SMODE",
        f"LI(x{r_val}, {hex(SIE_BIT)})",
        f"csrs sstatus, x{r_val}   # sstatus.SIE = 1 (fixed)",
    ]

    for lcofip in [0, 1]:
        for lcofie in [0, 1]:
            binname = f"lcofi_s_lcofip_{lcofip}_lcofie_{lcofie}"
            lines.extend(
                [
                    "",
                    f"# Testcase: sip.LCOFIP={lcofip}, sie.LCOFIE={lcofie}, mode=S",
                ]
            )

            lines.append(f"LI(x{r_val}, {hex(LCOFI_BIT)})")
            if lcofip:
                lines.append(f"csrs sip, x{r_val}   # set sip.LCOFIP directly")
            else:
                lines.extend(
                    [
                        _csr_access("csrw RVMODEL_MHPMCOUNTER, zero   # keep counter clear -- no overflow", "S"),
                        f"csrc sip, x{r_val}   # explicitly hold sip.LCOFIP = 0 (touch it so it samples)",
                    ]
                )

            lines.extend(
                [
                    f"LI(x{r_temp}, {hex(LCOFI_BIT)})",
                    f"{'csrs' if lcofie else 'csrc'} sie, x{r_temp}   # sie.LCOFIE = {lcofie}",
                    "",
                    test_data.add_testcase(binname, coverpoint, covergroup),
                    # sstatus.SIE=1 and mideleg.LCOFI=1 held fixed; only sie.LCOFIE gates the
                    # trap given sip.LCOFIP. Fires during the idle window below if both are set.
                    f"RVTEST_IDLE_FOR_INTERRUPT(x{r_temp})",
                    "",
                    f"csrc sip, x{r_temp}   # clear LCOFIP for next iteration (if it latched)" if lcofip else "",
                    "csrw sie, zero        # disable LCOFIE before next iteration",
                ]
            )

    lines.extend(
        [
            "",
            f"LI(x{r_temp}, {hex(LCOFI_BIT)})",
            f"csrc sip, x{r_temp}      # clear LCOFIP",
            f"csrc sie, x{r_temp}      # clear LCOFIE",
            "RVTEST_TSBI_GOTO_MMODE",
            f"csrc mideleg, x{r_temp}  # clear mideleg.LCOFI",
            "RVTEST_TSBI_GOTO_SMODE",
            f"LI(x{r_val}, {hex(SIE_BIT)})",
            f"csrc sstatus, x{r_val}   # clear sstatus.SIE",
            _csr_access("csrw RVMODEL_MHPMCOUNTER, zero", "S"),
            _csr_access("csrw RVMODEL_MHPMEVENT, zero", "S"),
        ]
    )

    test_data.int_regs.return_registers([r_val, r_temp])
    return lines


def _generate_lcofip_priority_s_tests(test_data: TestData) -> list[str]:

    ######################################
    covergroup = "Sscofpmf_cg"
    coverpoint = "cp_lcofip_priority_s"
    ######################################

    SSI_BIT = 1 << 1
    STI_BIT = 1 << 5
    SEI_BIT = 1 << 9
    LCOFI_BIT = 1 << 13
    SIE_BIT = 0x2  # mstatus/sstatus bit 1
    DELEG_MASK = SSI_BIT | STI_BIT | SEI_BIT | LCOFI_BIT  # 0x2222

    r_val, r_temp, r_temp2, r_scratch = test_data.int_regs.get_registers(4, exclude_regs=[0, 31])

    lines = [
        comment_banner(
            coverpoint,
            (
                "Priority of LCOFI interrupt in S-mode (4 cases).\n"
                "sstatus.SIE=1, sie=all 0s.\n"
                "sip = 1 in LCOFIP (via real counter overflow, not a direct\n"
                "write -- see cp_lcofi_sip_s) and one of {SEIP,STIP,SSIP,none}.\n"
                "sie = all 1s. Highest priority interrupt fires; LCOFIP only\n"
                "fires if none of the others are pending (lowest priority)."
            ),
        ),
        "",
        _csr_access("csrw mip, zero      # clear all pending", "S"),
        _csr_access("csrw mie, zero      # disable all interrupts", "S"),
        _csr_access("csrw RVMODEL_MHPMEVENT, zero", "S"),
        # mideleg is deliberately excluded from the T-SBI dispatch table (see
        # docs/tsbi-changes.md) -- it needs an actual, one-time mode change, not T-SBI.
        f"LI(x{r_val}, {hex(DELEG_MASK)})",
        "RVTEST_TSBI_GOTO_MMODE",
        f"csrs mideleg, x{r_val}   # delegate SSI|STI|SEI|LCOFI to S-mode",
        "RVTEST_TSBI_GOTO_SMODE",
        f"csrsi sstatus, {hex(SIE_BIT)}   # sstatus.SIE = 1",
    ]

    other_interrupts = [
        "seip",
        "stip",
        "ssip",
        "none",
    ]

    for other_int in other_interrupts:
        binname = f"lcofip_priority_s_{other_int}"

        lines.extend(
            [
                "",
                f"# Testcase: competing interrupt = {other_int}",
                f"LI(x{r_val}, RVMODEL_MHPMEVENT_VAL)   # select a real event",
                _csr_access(f"csrw RVMODEL_MHPMEVENT, x{r_val}", "S"),
                f"LI(x{r_scratch}, -1)",
                _csr_access(f"csrw RVMODEL_MHPMCOUNTER, x{r_scratch}   # all 1s -> next count overflows", "S"),
                f"LA(x{r_temp}, scratch)",
                "# Incrementing RVMODEL_MHPMCOUNTER in DUT specific way",
                f"RVMODEL_MHPMEVENT_CODE(x{r_temp}, x{r_scratch})",
                f"RVMODEL_MHPMEVENT_CODE(x{r_temp}, x{r_scratch})   # run at least twice per spec",
            ]
        )

        if other_int == "seip":
            lines.append("RVTEST_SET_SEXT_INT")

        elif other_int == "stip":
            # set_stimer_mmode writes mip directly and must run at M.
            lines.append("RVTEST_TSBI_GOTO_MMODE")
            lines.extend(set_stimer_mmode(r_temp2))
            lines.append("RVTEST_TSBI_GOTO_SMODE")

        elif other_int == "ssip":
            lines.extend(
                [
                    f"LI(x{r_temp2}, {hex(SSI_BIT)})",
                    _csr_access(f"csrs mip, x{r_temp2}   # mip.SSIP = 1 (directly writable, unlike LCOFIP)", "S"),
                ]
            )

        # "none" -- no competing interrupt triggered

        lines.extend(
            [
                f"LI(x{r_temp}, -1)",
                _csr_access(f"csrs sie, x{r_temp}   # sie = all 1s (LCOFIE + SSIE/STIE/SEIE)", "S"),
                "",
                test_data.add_testcase(binname, coverpoint, covergroup),
                # -------------------------------------------------
                # Sample MHPMEVENT and dump it to the signature.
                # r_val is free again here -- overwrites the event
                # value we set above, which is fine since we're
                # done using it for the counter-priming block.
                # -------------------------------------------------
                _csr_access(f"csrr x{r_val}, RVMODEL_MHPMEVENT   # sample point for mhpmevent_of", "S"),
                write_sigupd(r_val, test_data),
                _csr_access(
                    f"csrr x{r_scratch}, RVMODEL_MHPMCOUNTER   # sample point for hpmcounter_nonzero/non-all-1s", "S"
                ),
                *nonzero_not_all_ones(r_scratch, r_temp),
                write_sigupd(r_scratch, test_data),
                "",
                # Already at S throughout -- interrupt fires immediately or on timer maturity.
                f"RVTEST_IDLE_FOR_INTERRUPT(x{r_temp})",
                f"csrr x{r_temp2}, sip   # sample point for lcofip priority outcome",
                write_sigupd(r_temp2, test_data),
                "",
            ]
        )

        if other_int == "seip":
            lines.append("RVTEST_CLR_SEXT_INT")

        elif other_int == "stip":
            lines.append("RVTEST_TSBI_GOTO_MMODE")
            lines.extend(clr_stimer_mmode(r_temp2))
            lines.append("RVTEST_TSBI_GOTO_SMODE")

        elif other_int == "ssip":
            lines.extend(
                [
                    f"LI(x{r_temp2}, {hex(SSI_BIT)})",
                    _csr_access(f"csrc mip, x{r_temp2}", "S"),
                ]
            )

        lines.extend(
            [
                _csr_access("csrw RVMODEL_MHPMCOUNTER, zero   # reset counter before next iteration", "S"),
                _csr_access("csrw RVMODEL_MHPMEVENT, zero", "S"),
                _csr_access("csrw mie, zero   # disable all before next iteration", "S"),
            ]
        )

    lines.extend(
        [
            "",
            "RVTEST_TSBI_GOTO_MMODE",
            f"csrc mideleg, x{r_val}   # remove delegation",
            "RVTEST_TSBI_GOTO_SMODE",
            f"csrci sstatus, {hex(SIE_BIT)}   # sstatus.SIE = 0",
        ]
    )

    test_data.int_regs.return_registers([r_val, r_temp, r_temp2, r_scratch])

    return lines


@add_priv_test_generator(
    "SscofpmfS",
    required_extensions=["S", "Sscofpmf"],
    march_extensions=[],
    extra_defines=["#define BOOT_TO_SMODE"],
)
def make_sscofpmfs(test_data: TestData) -> list[TestChunk]:
    """Generate tests for the SscofpmfS performance-counter-overflow testsuite."""
    test_chunks: list[TestChunk] = []
    tc = test_data.begin_test_chunk()
    tc.code.extend(_generate_lcofi_sip_s_tests(test_data))
    tc.code.extend(_generate_lcofip_priority_s_tests(test_data))
    test_chunks.append(test_data.end_test_chunk())
    test_chunks.extend(generate_sscofpmf_suite(test_data, "S"))
    return test_chunks
