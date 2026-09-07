##################################
# priv/extensions/SstcSm.py
#
# SstcSm privileged extension test generator.
# sanarayanan@hmc.edu April 2026
# SPDX-License-Identifier: Apache-2.0
##################################

"""Sstc interrupt test generator (machine-mode only)."""

from testgen.asm.helpers import comment_banner
from testgen.asm.interrupts import mmode_sti_cleanup, mmode_sti_setup, set_stimecmp_zero
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.SstcCommon import stce_tests, tm_tests
from testgen.priv.registry import add_priv_test_generator

_CG = "SstcSm_cg"


def machine_sti_tests(test_data: TestData, covergroup: str) -> list[str]:
    """cp_machine_sti: iterate mideleg x mie_stie; sample at ``csrw stimecmp, zero`` in M-mode.

    STCE=1 and MIE=1 are fixed (required by menvcfg_stce_one and mstatus_mie_one).
    The interrupt fires at the countdown loop after the sample.
    """
    coverpoint = "cp_machine_sti"
    r_scratch, r_stce = test_data.int_regs.get_registers(2)

    lines = [
        comment_banner(coverpoint, "M-mode STI: mideleg x mie_stie (STCE=1, MIE=1 fixed)"),
        "",
    ]

    for mideleg_sti in [0, 1]:
        for mie_stie in [0, 1]:
            binname = f"{'d' if mideleg_sti else 'nd'}_stie{mie_stie}"
            lines += [
                "",
                f"# {coverpoint}: mideleg={mideleg_sti} stie={mie_stie}",
                *mmode_sti_setup(r_scratch, r_stce, mideleg_sti, mie_stie),
                # MIE=1 must be set before stimecmp=0: coverage samples at the csrw stimecmp
                # instruction and requires prev.MIE=1. set_stimecmp_zero() going from -1 to 0
                # is safe on RV32 (intermediate state lo=0,hi=max >> mtime, no spurious fire).
                "csrsi mstatus, 8",
                test_data.add_testcase(binname, coverpoint, covergroup),
                *set_stimecmp_zero(),
                f"RVTEST_IDLE_FOR_INTERRUPT(x{r_scratch})",
                *mmode_sti_cleanup(r_scratch, r_stce),
            ]

    test_data.int_regs.return_registers([r_scratch, r_stce])
    return lines


@add_priv_test_generator(
    "SstcSm",
    required_extensions=["Sm", "S", "Sstc"],
    extra_defines=["#define BOOT_TO_MMODE"],
)
def make_sstcsm(test_data: TestData) -> list[TestChunk]:
    """Generate tests for SstcSm coverpoints; the suite boots to and stays in M-mode."""
    tc = test_data.begin_test_chunk()
    tc.code = [
        comment_banner("SstcSm", "Supervisor timer (Sstc) interrupt tests from M-mode"),
        "",
    ]
    tc.code += machine_sti_tests(test_data, _CG)
    tc.code += tm_tests(test_data, _CG, "Sm")
    tc.code += stce_tests(test_data, _CG, "Sm")
    return [test_data.end_test_chunk()]
