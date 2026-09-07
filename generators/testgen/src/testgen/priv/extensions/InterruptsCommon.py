##################################
# priv/extensions/InterruptsCommon.py
#
# Shared interrupt test generation for InterruptsS and InterruptsSm.
# David_Harris@hmc.edu 6 September 2026
# SPDX-License-Identifier: Apache-2.0
##################################


"""Shared interrupt test generators"""

from collections.abc import Callable

from testgen.asm.tsbi import tsbi_call
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk

machine_ints = {"MEI": 11, "MTI": 7, "MSI": 3}
supervisor_ints = {"LCOFI": 13, "SEI": 9, "STI": 5, "SSI": 1, "VSEI": 10, "VSTI": 6, "VSSI": 2}
# Interrupts raised by writing a pending bit directly instead of through the platform (cp_trigger_reg)
reg_ints = {"MIP_SEIP": 9, "MIP_SSIP": 1, "SIP_SSIP": 1}
# UDB_<int>_INTR_IMPL guard for each register-triggered interrupt
reg_impl = {"MIP_SEIP": "SEI", "MIP_SSIP": "SSI", "SIP_SSIP": "SSI"}

# TODO: remove once https://github.com/riscv/riscv-unified-db/pull/1963 is merged and UDB emits these
# from the MEI/MTI/MSI/SEI/STI/SSI_INTR_IMPL parameters. UDB_LCOFI_INTR_IMPL stays derived from
# SSCOFPMF_SUPPORTED in tests/env/derived_config.h.  VS*I_INTR_IMPL also need to be added to UDB.
INTR_IMPL_DEFINES = [
    '#include "rvtest_config.h"',
    "#define UDB_MEI_INTR_IMPL",
    "#define UDB_MTI_INTR_IMPL",
    "#define UDB_MSI_INTR_IMPL",
    "#ifdef S_SUPPORTED",
    "#define UDB_SEI_INTR_IMPL",
    "#define UDB_STI_INTR_IMPL",
    "#define UDB_SSI_INTR_IMPL",
    "#endif // S_SUPPORTED",
    "#ifdef H_SUPPORTED",
    "#define UDB_VSEI_INTR_IMPL",
    "#define UDB_VSTI_INTR_IMPL",
    "#define UDB_VSSI_INTR_IMPL",
    "#endif // H_SUPPORTED",
]

# RVTEST_SET/CLR_<name>_INT_<priv> macro name (tests/env/utils.h) for each interrupt type.
# Types missing here have no trigger macros yet; their UDB_<int>_INTR_IMPL guard is never defined.
int_macro = {"MEI": "MEXT", "MTI": "MTIME", "MSI": "MSW", "SEI": "SEXT", "STI": "STIME", "SSI": "SSW"}
int_macro |= {name: name for name in reg_ints}

# RVTEST_SET/CLR_<name>_INT_<priv> for the register-triggered interrupts. M-mode writes mip and sip
# directly, S-mode writes sip directly and mip through T-SBI, and U-mode uses T-SBI for both.
REG_TRIGGER_DEFINES = [
    "#define RVTEST_SET_MIP_SEIP_INT_M li a1, 1<<9; csrs mip, a1",
    "#define RVTEST_CLR_MIP_SEIP_INT_M li a1, 1<<9; csrc mip, a1",
    "#define RVTEST_SET_MIP_SSIP_INT_M csrsi mip, 1<<1",
    "#define RVTEST_CLR_MIP_SSIP_INT_M csrci mip, 1<<1",
    "#define RVTEST_SET_SIP_SSIP_INT_M csrsi sip, 1<<1",
    "#define RVTEST_CLR_SIP_SSIP_INT_M csrci sip, 1<<1",
    "#define RVTEST_SET_MIP_SEIP_INT_S RVTEST_TSBI_CSR_SET(CSR_MIP, 1<<9)",
    "#define RVTEST_CLR_MIP_SEIP_INT_S RVTEST_TSBI_CSR_CLEAR(CSR_MIP, 1<<9)",
    "#define RVTEST_SET_MIP_SSIP_INT_S RVTEST_TSBI_CSR_SET(CSR_MIP, 1<<1)",
    "#define RVTEST_CLR_MIP_SSIP_INT_S RVTEST_TSBI_CSR_CLEAR(CSR_MIP, 1<<1)",
    "#define RVTEST_SET_SIP_SSIP_INT_S csrsi sip, 1<<1",
    "#define RVTEST_CLR_SIP_SSIP_INT_S csrci sip, 1<<1",
    "#define RVTEST_SET_MIP_SEIP_INT_U RVTEST_TSBI_CSR_SET(CSR_MIP, 1<<9)",
    "#define RVTEST_CLR_MIP_SEIP_INT_U RVTEST_TSBI_CSR_CLEAR(CSR_MIP, 1<<9)",
    "#define RVTEST_SET_MIP_SSIP_INT_U RVTEST_TSBI_CSR_SET(CSR_MIP, 1<<1)",
    "#define RVTEST_CLR_MIP_SSIP_INT_U RVTEST_TSBI_CSR_CLEAR(CSR_MIP, 1<<1)",
    "#define RVTEST_SET_SIP_SSIP_INT_U RVTEST_TSBI_CSR_SET(CSR_SIP, 1<<1)",
    "#define RVTEST_CLR_SIP_SSIP_INT_U RVTEST_TSBI_CSR_CLEAR(CSR_SIP, 1<<1)",
]

# Privilege needed to access a CSR, keyed by name prefix, and privilege held by each test mode.
# HS-mode can reach h* and vs* CSRs directly; VS-mode reaches only its own s* aliases.
_CSR_LEVEL = {"m": 3, "h": 2, "vs": 2, "s": 1}
_MODE_LEVEL = {"M": 3, "S": 2, "VS": 1, "U": 0, "VU": 0}

# Mode each suite boots into, and the preprocessor symbol required for each test mode.
# InterruptsS requires S and therefore U, so only the virtualized modes need a guard there.
_BOOT_MODE = {"InterruptsSm": "M", "InterruptsS": "S"}
_MODE_GUARD = {
    "InterruptsSm": {"M": None, "S": "S_SUPPORTED", "U": "U_SUPPORTED", "VS": "H_SUPPORTED", "VU": "H_SUPPORTED"},
    "InterruptsS": {"S": None, "U": None, "VS": "H_SUPPORTED", "VU": "H_SUPPORTED"},
}

Generator = Callable[[TestData, list[TestChunk], str, str], None]


def _csr_level(instr: str) -> int:
    """Privilege level of the CSR named in a csr* instruction (0 for unprivileged CSRs)."""
    mnemonic, operands = instr.split("#", 1)[0].split(None, 1)
    fields = [f.strip() for f in operands.split(",")]
    csr = fields[1] if mnemonic.startswith("csrr") else fields[0]
    for prefix, level in _CSR_LEVEL.items():
        if csr.startswith(prefix):
            return level
    return 0


def csr_access(instr: str, mode: str) -> str:
    """A CSR instruction issued directly when ``mode`` can access the CSR, otherwise through T-SBI.

    U-mode reaches m*, s*, h*, and vs* CSRs through T-SBI; S-mode reaches m* CSRs through T-SBI.
    """
    return instr if _MODE_LEVEL[mode] >= _csr_level(instr) else tsbi_call(instr)


def guard_open(suite: str, priv: str) -> list[str]:
    """#ifdef line for tests that run in ``priv``, or nothing when the mode is always present."""
    guard = _MODE_GUARD[suite][priv]
    return [f"#ifdef {guard}"] if guard else []


def guard_close(suite: str, priv: str) -> list[str]:
    """Matching #endif for guard_open; must be emitted in the same test chunk."""
    guard = _MODE_GUARD[suite][priv]
    return [f"#endif // {guard}"] if guard else []


def mode_enter(suite: str, priv: str) -> list[str]:
    """Switch from the suite's boot mode into ``priv``.

    Emitted at the start of every chunk because chunks may be split into separate files,
    each of which boots afresh. Clobbers a0 only.
    """
    if priv == _BOOT_MODE[suite]:
        return []
    return [f"RVTEST_TSBI_GOTO_{priv}MODE # enter {priv}-mode"]


def mode_exit(suite: str, priv: str) -> list[str]:
    """Return from ``priv`` to the suite's boot mode at the end of a chunk. Clobbers a0 only."""
    boot = _BOOT_MODE[suite]
    if priv == boot:
        return []
    return [f"RVTEST_TSBI_GOTO_{boot}MODE # return to {boot}-mode"]


def _generate_cp_trigger_reg(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Trigger interrupts using mip/sip register writes."""


def _generate_cp_trigger_sti_sstc(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Trigger STI with SSTC"""


def _generate_cp_enable(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Test interrupt enables"""


def _generate_cp_priority_pending(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Test priority of multiple pending interrupts"""


def _generate_cp_priority_enable(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Test priority of multiple enabled inputs"""


def _generate_cp_wfi(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Test WFI with timer interrupt"""


def _generate_cp_wfi_timeout(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Test WFI timeout"""


# Coverpoints common to both suites, in emission order; each suite prepends its own cp_trigger.
SHARED_GENERATORS: list[Generator] = [
    _generate_cp_trigger_reg,
    _generate_cp_trigger_sti_sstc,
    _generate_cp_enable,
    _generate_cp_priority_pending,
    _generate_cp_priority_enable,
    _generate_cp_wfi,
    _generate_cp_wfi_timeout,
]


def emit_interrupts(
    test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str, generators: list[Generator]
) -> list[TestChunk]:
    """Run each coverpoint generator for ``priv`` and close the final test chunk."""

    for generate in generators:
        generate(test_data, test_chunks, suite, priv)

    test_chunks.append(test_data.end_test_chunk())
    return test_chunks
