##################################
# priv/extensions/SstcS.py
#
# SstcS privileged extension test generator.
# sanarayanan@hmc.edu April 2026
# SPDX-License-Identifier: Apache-2.0
##################################

"""Sstc interrupt test generator (supervisor and user modes).

The suite boots to S-mode, leaves mideleg.STI at its boot value of 1, and reaches M-mode
CSRs (mcounteren, menvcfg, stimecmp while STCE=0) only through T-SBI calls. U-mode bins are set up from S-mode and entered with RVTEST_TSBI_GOTO_UMODE.
"""

from testgen.asm.helpers import comment_banner
from testgen.asm.interrupts import set_stimecmp_max, set_stimecmp_soon, set_stimecmp_zero
from testgen.asm.tsbi import tsbi_call
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.SstcCommon import (
    MODE_NAMES,
    menvcfg_stce,
    stce_tests,
    tm_tests,
)
from testgen.priv.registry import add_priv_test_generator

_CG = "SstcS_cg"
_MODES = ["S", "U"]


def _tsbi_stimecmp_max(reg: int) -> list[str]:
    """stimecmp = -1 through T-SBI, for use while STCE=0 makes stimecmp inaccessible below M-mode."""
    return [
        f"LI(x{reg}, -1)",
        "#if __riscv_xlen == 32",
        tsbi_call(f"csrw stimecmph, x{reg}"),
        "#endif",
        tsbi_call(f"csrw stimecmp, x{reg}"),
    ]


def _tsbi_stimecmp_zero() -> list[str]:
    """stimecmp = 0 through T-SBI, for use while STCE=0."""
    return [
        "#if __riscv_xlen == 32",
        tsbi_call("csrw stimecmph, zero"),
        "#endif",
        tsbi_call("csrw stimecmp, zero"),
    ]


def lower_sti_tests(test_data: TestData, covergroup: str, mode: str) -> list[str]:
    """STI cross of menvcfg_stce x sstatus_sie x sie_stie (8 bins), with mcounteren.TM=1.

    S-mode (cp_supervisor_sti): for STCE=1, write stimecmp=0 in S-mode so the interrupt fires
    while already in S-mode. For STCE=0, stimecmp=0 is written through T-SBI before the testcase
    label (STCE=0 keeps STIP from asserting and makes stimecmp inaccessible below M-mode), so
    S-mode runs freely and the labeled nop samples the CSR state.

    U-mode (cp_user_sti): from S-mode, stimecmp = TIME+RVMODEL_TIMER_INT_SOON_DELAY immediately
    before entering U-mode so the interrupt fires in U-mode; it is delegated to S-mode
    regardless of SIE. With STCE=0 no timer interrupt fires and only the CSR state is sampled.

    Entry and exit state for each bin: STCE=0, stimecmp=-1, sie=0, SIE=0.
    """
    coverpoint = f"cp_{MODE_NAMES[mode]}_sti"
    r_scratch, r_time, r_hi = test_data.int_regs.get_registers(3)

    lines = [
        comment_banner(coverpoint, f"{mode}-mode STI: menvcfg_stce x sstatus_sie x sie_stie (8 bins)"),
        "",
    ]

    for stce in [0, 1]:
        for sie in [0, 1]:
            for stie in [0, 1]:
                binname = f"stce{stce}_sie{sie}_stie{stie}"
                lines += [
                    "",
                    f"# {coverpoint}: STCE={stce} SIE={sie} STIE={stie}",
                ]
                if stce:
                    lines += menvcfg_stce(r_scratch, True, mode)
                # sie.STIE is writable in S-mode because mideleg.STI=1
                if stie:
                    lines += [f"LI(x{r_scratch}, 0x20)", f"csrw sie, x{r_scratch}"]
                else:
                    lines.append("csrw sie, zero")
                lines.append("csrsi sstatus, 2" if sie else "csrci sstatus, 2")

                if mode == "S":
                    if stce:
                        # sampled at the stimecmp write itself, which raises the interrupt
                        lines.append(test_data.add_testcase(binname, coverpoint, covergroup))
                        lines += set_stimecmp_zero()
                    else:
                        # stimecmp is only reachable through T-SBI while STCE=0; sample the nop after it returns
                        lines += _tsbi_stimecmp_zero()
                        lines.append(test_data.add_testcase(binname, coverpoint, covergroup))
                        lines.append("nop")
                    lines.append(f"RVTEST_IDLE_FOR_INTERRUPT(x{r_scratch})")
                else:
                    if stce:
                        lines += set_stimecmp_soon(r_scratch, r_time, r_hi)
                    lines += [
                        "RVTEST_TSBI_GOTO_UMODE",
                        test_data.add_testcase(binname, coverpoint, covergroup),
                        f"RVTEST_IDLE_FOR_TIMER_INTERRUPT(x{r_scratch})",
                        "RVTEST_TSBI_GOTO_SMODE",
                    ]

                lines += ["csrci sstatus, 2", "csrw sie, zero"]
                if stce:
                    lines += set_stimecmp_max(r_scratch)
                    lines += menvcfg_stce(r_scratch, False, mode)
                elif mode == "S":
                    lines += _tsbi_stimecmp_max(r_scratch)

    test_data.int_regs.return_registers([r_scratch, r_time, r_hi])
    return lines


def emit_lower_tests(test_data: TestData, covergroup: str, mode: str) -> list[TestChunk]:
    """All Sstc tests for one lower mode as one chunk; starts and ends in S-mode."""
    tc = test_data.begin_test_chunk()
    r_scratch = test_data.int_regs.get_register()
    tc.code = [
        comment_banner("SstcS", f"Supervisor timer (Sstc) interrupt tests from {mode}-mode"),
        "",
        "# Boot state: mideleg.STI=1, mcounteren=-1, scounteren=-1, STCE=0, so S-mode can access",
        "# stimecmp once STCE=1 and only mcounteren.TM/STCE gate U-mode reads. stimecmp has no",
        "# reset value, so park it at -1 before any test sets STCE.",
        *_tsbi_stimecmp_max(r_scratch),
        "",
    ]
    test_data.int_regs.return_registers([r_scratch])
    tc.code += lower_sti_tests(test_data, covergroup, mode)
    tc.code += tm_tests(test_data, covergroup, mode)
    tc.code += stce_tests(test_data, covergroup, mode)
    return [test_data.end_test_chunk()]


@add_priv_test_generator(
    "SstcS",
    required_extensions=["S", "Sstc"],
    extra_defines=["#define BOOT_TO_SMODE"],
)
def make_sstcs(test_data: TestData) -> list[TestChunk]:
    """Generate tests for SstcS coverpoints."""
    test_chunks: list[TestChunk] = []
    for mode in _MODES:
        test_chunks.extend(emit_lower_tests(test_data, _CG, mode))
    return test_chunks
