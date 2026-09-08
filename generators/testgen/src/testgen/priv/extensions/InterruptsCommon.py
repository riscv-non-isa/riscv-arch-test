##################################
# priv/extensions/InterruptsCommon.py
#
# Shared interrupt test generation for InterruptsS and InterruptsSm.
# David_Harris@hmc.edu 6 September 2026
# SPDX-License-Identifier: Apache-2.0
##################################


"""Shared interrupt test generators"""

from collections.abc import Callable

from testgen.asm.helpers import comment_banner
from testgen.asm.tsbi import tsbi_call
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk

machine_ints = {"MEI": 11, "MTI": 7, "MSI": 3}
supervisor_ints = {"LCOFI": 13, "SEI": 9, "STI": 5, "SSI": 1, "VSEI": 10, "VSTI": 6, "VSSI": 2}
# Interrupts raised by writing a pending bit directly instead of through the platform (cp_trigger_reg)
reg_ints = {"MIP_SEIP": 9, "MIP_SSIP": 1, "SIP_SSIP": 1}
# STI raised through stimecmp with menvcfg.STCE = 0 or 1 (cp_trigger_sti_sstc)
sstc_ints = {"SSTC_STCE0": 5, "SSTC_STCE1": 5}
# Guard symbol and coverpoint for types that do not use the UDB_<int>_INTR_IMPL / cp_trigger defaults
int_guard = {"MIP_SEIP": "UDB_SEI_INTR_IMPL", "MIP_SSIP": "UDB_SSI_INTR_IMPL", "SIP_SSIP": "UDB_SSI_INTR_IMPL"}
int_guard |= {name: "SSTC_SUPPORTED" for name in sstc_ints}
int_coverpoint = {name: "cp_trigger_reg" for name in reg_ints}
int_coverpoint |= {name: "cp_trigger_sti_sstc" for name in sstc_ints}

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
int_macro |= {name: name for name in [*reg_ints, *sstc_ints]}

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

# RVTEST_SET/CLR_SSTC_STCE<n>_INT_<priv>: write menvcfg.STCE, then raise STI through stimecmp; clearing
# also restores STCE = 0. stimecmp is written from M-mode (directly or through T-SBI) because S-mode
# access traps when STCE = 0. On RV32 the STCE bit is in menvcfgh.
SSTC_TRIGGER_DEFINES = [
    "#if __riscv_xlen == 64",
    "#define RVTEST_SET_SSTC_STCE0_INT_M li a1, 1<<63; csrc menvcfg, a1; RVTEST_SET_SSTC_INT_M",
    "#define RVTEST_SET_SSTC_STCE1_INT_M li a1, 1<<63; csrs menvcfg, a1; RVTEST_SET_SSTC_INT_M",
    "#define RVTEST_CLR_SSTC_STCE0_INT_M RVTEST_CLR_SSTC_INT_M; li a1, 1<<63; csrc menvcfg, a1",
    "#define RVTEST_CLR_SSTC_STCE1_INT_M RVTEST_CLR_SSTC_INT_M; li a1, 1<<63; csrc menvcfg, a1",
    "#define RVTEST_SET_SSTC_STCE0_INT_S RVTEST_TSBI_CSR_CLEAR(CSR_MENVCFG, 1<<63); RVTEST_SET_SSTC_INT_U",
    "#define RVTEST_SET_SSTC_STCE1_INT_S RVTEST_TSBI_CSR_SET(CSR_MENVCFG, 1<<63); RVTEST_SET_SSTC_INT_U",
    "#define RVTEST_CLR_SSTC_STCE0_INT_S RVTEST_CLR_SSTC_INT_U; RVTEST_TSBI_CSR_CLEAR(CSR_MENVCFG, 1<<63)",
    "#define RVTEST_CLR_SSTC_STCE1_INT_S RVTEST_CLR_SSTC_INT_U; RVTEST_TSBI_CSR_CLEAR(CSR_MENVCFG, 1<<63)",
    "#else",
    "#define RVTEST_SET_SSTC_STCE0_INT_M li a1, 1<<31; csrc menvcfgh, a1; RVTEST_SET_SSTC_INT_M",
    "#define RVTEST_SET_SSTC_STCE1_INT_M li a1, 1<<31; csrs menvcfgh, a1; RVTEST_SET_SSTC_INT_M",
    "#define RVTEST_CLR_SSTC_STCE0_INT_M RVTEST_CLR_SSTC_INT_M; li a1, 1<<31; csrc menvcfgh, a1",
    "#define RVTEST_CLR_SSTC_STCE1_INT_M RVTEST_CLR_SSTC_INT_M; li a1, 1<<31; csrc menvcfgh, a1",
    "#define RVTEST_SET_SSTC_STCE0_INT_S RVTEST_TSBI_CSR_CLEAR(CSR_MENVCFGH, 1<<31); RVTEST_SET_SSTC_INT_U",
    "#define RVTEST_SET_SSTC_STCE1_INT_S RVTEST_TSBI_CSR_SET(CSR_MENVCFGH, 1<<31); RVTEST_SET_SSTC_INT_U",
    "#define RVTEST_CLR_SSTC_STCE0_INT_S RVTEST_CLR_SSTC_INT_U; RVTEST_TSBI_CSR_CLEAR(CSR_MENVCFGH, 1<<31)",
    "#define RVTEST_CLR_SSTC_STCE1_INT_S RVTEST_CLR_SSTC_INT_U; RVTEST_TSBI_CSR_CLEAR(CSR_MENVCFGH, 1<<31)",
    "#endif",
    "#define RVTEST_SET_SSTC_STCE0_INT_U RVTEST_SET_SSTC_STCE0_INT_S",
    "#define RVTEST_SET_SSTC_STCE1_INT_U RVTEST_SET_SSTC_STCE1_INT_S",
    "#define RVTEST_CLR_SSTC_STCE0_INT_U RVTEST_CLR_SSTC_STCE0_INT_S",
    "#define RVTEST_CLR_SSTC_STCE1_INT_U RVTEST_CLR_SSTC_STCE1_INT_S",
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


# cp_enable setup per suite: the interrupts to raise, the enable CSR to write, the global enable
# written in the suite's boot mode, and any delegation setup.
# InterruptsSm clears mideleg so every interrupt is enabled by mie alone.
_ENABLE = {
    "InterruptsSm": {
        "types": [*machine_ints, *supervisor_ints],
        "ie": "mie",
        "status": ("mstatus", 0x88, "MIE"),
        "deleg": ["#ifdef S_SUPPORTED", "csrw mideleg, zero # mideleg = zeros", "#endif // S_SUPPORTED"],
    },
    "InterruptsS": {
        "types": [*supervisor_ints],
        "ie": "sie",
        "status": ("sstatus", 0x22, "SIE"),
        "deleg": [],
    },
}


def _generate_cp_enable(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Raise each interrupt with only its enable bit set, then with every enable bit but its own."""

    ######################################
    coverpoint = "cp_enable"
    ######################################
    setup = _ENABLE[suite]
    ie = setup["ie"]
    status_csr, status_mask, status_field = setup["status"]
    tc = test_data.new_test_chunk(test_chunks, "enable")
    tc.section_header = comment_banner(
        coverpoint,
        f"Enable each interrupt alone and all but itself in {ie} in {priv} mode",
    )
    tc.code += guard_open(suite, priv)
    tmp_reg = test_data.int_regs.get_register()

    for int_type in setup["types"]:
        if int_type not in int_macro:
            continue  # no RVTEST_SET/CLR macros for this interrupt yet
        macro = int_macro[int_type]
        guard = int_guard.get(int_type, f"UDB_{int_type}_INTR_IMPL")
        bit = (machine_ints | supervisor_ints)[int_type]
        # enable only this interrupt (fires), then every interrupt except this one (does not fire)
        for enable, ie_val in [("only", 1 << bit), ("others", ~(1 << bit))]:
            tc.code += [
                f"#ifdef {guard}",
                *setup["deleg"],
                f"LI(x{tmp_reg}, {status_mask:#x})",
                f"csrs {status_csr}, x{tmp_reg} # {status_csr}.{status_field} = 1",
                f"LI(x{tmp_reg}, {ie_val})",
                f"csrw {ie}, x{tmp_reg} # {ie} = {int_type} {enable}",
                test_data.add_testcase(f"priv_{priv}_{int_type}_{ie}_{enable}", coverpoint, f"{suite}_cg"),
                *mode_enter(suite, priv),
                f"RVTEST_SET_{macro}_INT_{priv} # Set the interrupt",
                f"RVTEST_IDLE_FOR_INTERRUPT(x{tmp_reg}) # Wait for interrupt to fire",
                f"RVTEST_CLR_{macro}_INT_{priv} # Clear the interrupt if the interrupt handler hasn't done so",
                *mode_exit(suite, priv),
                f"#endif // {guard}",
                "",
            ]

    test_data.int_regs.return_register(tmp_reg)
    tc.code += guard_close(suite, priv)


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
    test_data: TestData, test_chunks: list[TestChunk], suite: str, privs: list[str], generators: list[Generator]
) -> list[TestChunk]:
    """Run each coverpoint generator for every privilege mode, keeping each coverpoint's chunks contiguous."""

    for generate in generators:
        for priv in privs:
            generate(test_data, test_chunks, suite, priv)

    test_chunks.append(test_data.end_test_chunk())
    return test_chunks
