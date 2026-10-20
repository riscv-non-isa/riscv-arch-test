##################################
# priv/extensions/Sstc.py
#
# Sstc privileged extension test generator.
# sanarayanan@hmc.edu April 2026
# SPDX-License-Identifier: Apache-2.0
##################################

"""Sstc test generator: stimecmp access in S-mode and U-mode and, with H, stimecmp and vstimecmp access in
HS-mode, VS-mode, VU-mode and U-mode, and vstimecmp interrupts.

The suite boots to S-mode (HS-mode with H) and writes menvcfg and mcounteren through T-SBI.  An access that
menvcfg.STCE or mcounteren.TM forbids raises illegal instruction; one in VS-mode or VU-mode that only
henvcfg.STCE or hcounteren.TM forbids, or that HS-mode could make, raises virtual instruction.
"""

from testgen.asm.csr import csr_access_test
from testgen.asm.helpers import comment_banner, write_sigupd
from testgen.asm.tsbi import tsbi_call
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.PrivCommon import write64
from testgen.priv.extensions.SstcCommon import (
    access_cross,
    rv32_only,
    stce_tests,
    stce_tm,
    tm_tests,
    vstimecmp_int_tests,
)
from testgen.priv.registry import add_priv_test_generator

_CG = "Sstc_cg"
# Distinct values in the future for stimecmp and vstimecmp, and one VS-mode writes through stimecmp
STIMECMP = 0xAAAAAAAAAAAAAAAA
VSTIMECMP = 0x5555555555555555
VS_STIMECMP = 0x3333333333333333


def _tsbi_stimecmp_max(test_data: TestData) -> list[str]:
    """stimecmp = -1 through T-SBI, for use while STCE = 0 makes stimecmp inaccessible below M-mode."""
    reg = test_data.int_regs.get_register()
    lines = [
        f"LI(x{reg}, -1)",
        "#if __riscv_xlen == 32",
        tsbi_call(f"csrw stimecmph, x{reg}"),
        "#endif",
        tsbi_call(f"csrw stimecmp, x{reg}"),
    ]
    test_data.int_regs.return_register(reg)
    return lines


def emit_lower_tests(test_data: TestData, covergroup: str, mode: str) -> list[TestChunk]:
    """All Sstc tests for one lower mode as one chunk; starts and ends in S-mode."""
    tc = test_data.begin_test_chunk()
    tc.code = [
        comment_banner("Sstc", f"Supervisor timer (Sstc) stimecmp access tests from {mode} mode"),
        "",
        "# Boot state: mcounteren=-1, scounteren=-1, STCE=0, so S-mode can access stimecmp once",
        "# STCE=1 and only mcounteren.TM/STCE gate U-mode reads. stimecmp has no reset value, so",
        "# park it at -1 before any test sets STCE.",
        *_tsbi_stimecmp_max(test_data),
        "",
    ]
    tc.code += tm_tests(test_data, covergroup, mode)
    tc.code += stce_tests(test_data, covergroup, mode)
    return [test_data.end_test_chunk()]


@add_priv_test_generator(
    "Sstc",
    required_extensions=["Sstc"],
    extra_defines=["#define BOOT_TO_SMODE"],
)
def make_sstc(test_data: TestData) -> list[TestChunk]:
    """Generate tests for Sstc coverpoints."""
    test_chunks: list[TestChunk] = []
    for mode in ("supervisor", "user"):
        test_chunks.extend(emit_lower_tests(test_data, _CG, mode))
    return test_chunks


def _setup_timecmps(test_data: TestData) -> list[str]:
    """Give stimecmp and vstimecmp distinct values; needs menvcfg.STCE = mcounteren.TM = 1 for the HS-mode writes."""
    tmp_reg = test_data.int_regs.get_register()
    lines = [
        *stce_tm(test_data, 1, 1, 1, 1, "supervisor"),
        *write64("stimecmp", STIMECMP, tmp_reg),
        *write64("vstimecmp", VSTIMECMP, tmp_reg),
    ]
    test_data.int_regs.return_register(tmp_reg)
    return lines


def _hs_tests(test_data: TestData) -> list[str]:
    """vstimecmp from HS-mode: access control by menvcfg.STCE and mcounteren.TM, and every access type."""
    return [
        comment_banner(
            "cp_supervisor_vstimecmp",
            "Read vstimecmp (and vstimecmph) for each value of menvcfg.STCE, henvcfg.STCE, mcounteren.TM and\n"
            "hcounteren.TM.  Illegal instruction when menvcfg.STCE = 0 or mcounteren.TM = 0",
        ),
        *_setup_timecmps(test_data),
        *access_cross(test_data, "cp_supervisor_vstimecmp", _CG, "hs", ["vstimecmp", "vstimecmph"]),
        comment_banner(
            "cp_supervisor_vstimecmp_write",
            "With menvcfg.STCE = mcounteren.TM = 1 and henvcfg.STCE = hcounteren.TM = 0, write 1s and 0s to, set and\n"
            "clear vstimecmp (and vstimecmph)",
        ),
        *stce_tm(test_data, 1, 0, 1, 0, "supervisor"),
        *csr_access_test(test_data, ("vstimecmp", None), _CG, "cp_supervisor_vstimecmp_write"),
        *rv32_only(
            "vstimecmph", csr_access_test(test_data, ("vstimecmph", None), _CG, "cp_supervisor_vstimecmp_write")
        ),
        *stce_tm(test_data, 0, 0, 1, 1, "supervisor"),
    ]


def _vs_tests(test_data: TestData) -> list[str]:
    """stimecmp in VS-mode is vstimecmp; vstimecmp by its own name is not accessible there."""
    tmp_reg, rd = test_data.int_regs.get_registers(2)
    lines = [
        comment_banner(
            "cp_vs_stimecmp",
            "With stimecmp and vstimecmp holding different values, read stimecmp (and stimecmph) in VS-mode for each\n"
            "value of menvcfg.STCE, henvcfg.STCE, mcounteren.TM and hcounteren.TM.  Illegal instruction when\n"
            "menvcfg.STCE = 0 or mcounteren.TM = 0, else virtual instruction when henvcfg.STCE = 0 or\n"
            "hcounteren.TM = 0, else the read returns vstimecmp",
        ),
        *_setup_timecmps(test_data),
        *access_cross(test_data, "cp_vs_stimecmp", _CG, "vs", ["stimecmp", "stimecmph"]),
        comment_banner(
            "cp_vs_vstimecmp",
            "Read vstimecmp (and vstimecmph) in VS-mode for each value of menvcfg.STCE, henvcfg.STCE, mcounteren.TM\n"
            "and hcounteren.TM.  Illegal instruction when HS-mode could not access it, else virtual instruction",
        ),
        *access_cross(test_data, "cp_vs_vstimecmp", _CG, "vs", ["vstimecmp", "vstimecmph"]),
        comment_banner(
            "cp_vs_stimecmp_write",
            "With menvcfg.STCE = henvcfg.STCE = mcounteren.TM = hcounteren.TM = 1, write 1s and 0s to, set and clear\n"
            "stimecmp (and stimecmph) in VS-mode, then write it and check from HS-mode that vstimecmp changed and\n"
            "stimecmp did not",
        ),
        *stce_tm(test_data, 1, 1, 1, 1, "supervisor"),
        "RVTEST_TSBI_GOTO_VSMODE",
        *csr_access_test(test_data, ("stimecmp", None), _CG, "cp_vs_stimecmp_write"),
        *rv32_only("stimecmph", csr_access_test(test_data, ("stimecmph", None), _CG, "cp_vs_stimecmp_write")),
        test_data.add_testcase("write_then_read_from_hs", "cp_vs_stimecmp_write", _CG),
        *write64("stimecmp", VS_STIMECMP, tmp_reg),
        "RVTEST_TSBI_GOTO_SMODE",
    ]
    for csr in ("vstimecmp", "vstimecmph", "stimecmp", "stimecmph"):
        lines.extend(rv32_only(csr, [f"csrr x{rd}, {csr}", write_sigupd(rd, test_data)]))
    lines.extend(stce_tm(test_data, 0, 0, 1, 1, "supervisor"))
    test_data.int_regs.return_registers([tmp_reg, rd])
    return lines


def _user_tests(test_data: TestData) -> list[str]:
    """stimecmp and vstimecmp are never accessible from VU-mode or U-mode."""
    return [
        comment_banner(
            "cp_vu_stimecmp / cp_vu_vstimecmp",
            "Read stimecmp and vstimecmp (and the upper halves) in VU-mode for each value of menvcfg.STCE,\n"
            "henvcfg.STCE, mcounteren.TM and hcounteren.TM.  Illegal instruction when HS-mode could not access\n"
            "them, else virtual instruction",
        ),
        *_setup_timecmps(test_data),
        *access_cross(test_data, "cp_vu_stimecmp", _CG, "vu", ["stimecmp", "stimecmph"]),
        *access_cross(test_data, "cp_vu_vstimecmp", _CG, "vu", ["vstimecmp", "vstimecmph"]),
        comment_banner(
            "cp_user_vstimecmp",
            "Read vstimecmp (and vstimecmph) in U-mode for each value of menvcfg.STCE, henvcfg.STCE,\n"
            "mcounteren.TM and hcounteren.TM.  Always illegal instruction",
        ),
        *access_cross(test_data, "cp_user_vstimecmp", _CG, "u", ["vstimecmp", "vstimecmph"]),
    ]


@add_priv_test_generator(
    "Sstc",
    required_extensions=["Sstc", "H"],
    extra_defines=["#define BOOT_TO_SMODE"],
)
def make_sstc_h(test_data: TestData) -> list[TestChunk]:
    """Sstc tests that need H: vstimecmp from HS-mode, VS-mode, VU-mode and U-mode, and vstimecmp interrupts."""
    test_chunks: list[TestChunk] = []

    tc = test_data.new_test_chunk(test_chunks, "hs")
    tc.code.extend([*_hs_tests(test_data), *vstimecmp_int_tests(test_data, _CG, "supervisor")])

    tc = test_data.new_test_chunk(test_chunks, "vs")
    tc.code.extend(_vs_tests(test_data))

    tc = test_data.new_test_chunk(test_chunks, "vu")
    tc.code.extend(_user_tests(test_data))

    test_chunks.append(test_data.end_test_chunk())
    return test_chunks
