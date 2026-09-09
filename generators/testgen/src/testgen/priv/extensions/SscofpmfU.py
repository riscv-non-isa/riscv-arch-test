##################################
# priv/extensions/SscofpmfU.py
# Written by: Ayesha Anwar, ayesha.anwaar2005@gmail.com
# Sscofpmf U-mode test generator.
# SPDX-License-Identifier: Apache-2.0
##################################

from testgen.asm.helpers import comment_banner
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk
from testgen.priv.extensions.SscofpmfCommon import _csr_access, generate_sscofpmf_suite
from testgen.priv.registry import add_priv_test_generator


def _generate_lcofi_sip_u_tests(test_data: TestData) -> list[str]:
    ######################################
    covergroup = "Sscofpmf_cg"
    coverpoint = "cp_lcofi_sip_u"
    ######################################

    LCOFI_BIT = 1 << 13
    SIE_BIT = 0x2

    r_val, r_temp = test_data.int_regs.get_registers(2, exclude_regs=[0, 31])

    lines = [
        comment_banner(
            coverpoint,
            "Interrupt pending and enable, mode = U.\n"
            "mideleg.LCOFI=1 held fixed (required to reach U-mode with LCOFI\n"
            "delegated below M), sstatus.SIE=1 held fixed per testplan; sweep is\n"
            "sip.LCOFIP x sie.LCOFIE.\n",
        ),
        "",
        _csr_access("csrw mip, zero      # clear all pending", "U"),
        _csr_access("csrw mie, zero      # disable all interrupts", "U"),
        _csr_access("csrw RVMODEL_MHPMEVENT, zero", "U"),
        f"LI(x{r_val}, {hex(LCOFI_BIT)})",
        "RVTEST_TSBI_GOTO_MMODE",
        f"csrs mideleg, x{r_val}   # mideleg.LCOFI = 1 (fixed)",
        "RVTEST_TSBI_GOTO_UMODE",
        f"LI(x{r_val}, {hex(SIE_BIT)})",
        _csr_access(f"csrs sstatus, x{r_val}   # sstatus.SIE = 1 (fixed)", "U"),
    ]

    for lcofip in [0, 1]:
        for lcofie in [0, 1]:
            binname = f"lcofi_u_lcofip_{lcofip}_lcofie_{lcofie}"
            lines.extend(
                [
                    "",
                    f"# Testcase: sip.LCOFIP={lcofip}, sie.LCOFIE={lcofie}, mode=U",
                ]
            )

            lines.append(f"LI(x{r_val}, {hex(LCOFI_BIT)})")
            if lcofip:
                lines.append(_csr_access(f"csrs sip, x{r_val}   # set sip.LCOFIP directly", "U"))
            else:
                lines.extend(
                    [
                        _csr_access("csrw RVMODEL_MHPMCOUNTER, zero   # keep counter clear -- no overflow", "U"),
                        _csr_access(
                            f"csrc sip, x{r_val}   # explicitly hold sip.LCOFIP = 0 (touch it so it samples)", "U"
                        ),
                    ]
                )

            lines.extend(
                [
                    f"LI(x{r_temp}, {hex(LCOFI_BIT)})",
                    _csr_access(f"{'csrs' if lcofie else 'csrc'} sie, x{r_temp}   # sie.LCOFIE = {lcofie}", "U"),
                    "",
                    test_data.add_testcase(binname, coverpoint, covergroup),
                    f"RVTEST_IDLE_FOR_INTERRUPT(x{r_temp})",
                    "",
                    (
                        _csr_access(f"csrc sip, x{r_temp}   # clear LCOFIP for next iteration (if it latched)", "U")
                        if lcofip
                        else ""
                    ),
                    _csr_access("csrw sie, zero        # disable LCOFIE before next iteration", "U"),
                ]
            )

    lines.extend(
        [
            "",
            f"LI(x{r_temp}, {hex(LCOFI_BIT)})",
            _csr_access(f"csrc sip, x{r_temp}      # clear LCOFIP", "U"),
            _csr_access(f"csrc sie, x{r_temp}      # clear LCOFIE", "U"),
            "RVTEST_TSBI_GOTO_MMODE",
            f"csrc mideleg, x{r_temp}  # clear mideleg.LCOFI",
            "RVTEST_TSBI_GOTO_UMODE",
            f"LI(x{r_val}, {hex(SIE_BIT)})",
            _csr_access(f"csrc sstatus, x{r_val}   # clear sstatus.SIE", "U"),
            _csr_access("csrw RVMODEL_MHPMCOUNTER, zero", "U"),
            _csr_access("csrw RVMODEL_MHPMEVENT, zero", "U"),
        ]
    )

    test_data.int_regs.return_registers([r_val, r_temp])
    return lines


@add_priv_test_generator(
    "SscofpmfU",
    required_extensions=["U", "Sscofpmf"],
    march_extensions=[],
    extra_defines=[],
)
def make_sscofpmfu(test_data: TestData) -> list[TestChunk]:
    """Generate tests for the SscofpmfU performance-counter-overflow testsuite."""
    test_chunks: list[TestChunk] = []
    tc = test_data.begin_test_chunk()
    tc.code.extend(_generate_lcofi_sip_u_tests(test_data))
    test_chunks.append(test_data.end_test_chunk())
    test_chunks.extend(generate_sscofpmf_suite(test_data, "U"))
    return test_chunks
