##################################
# priv/extensions/InterruptsCommon.py
#
# Shared interrupt test generation for InterruptsS and InterruptsSm.
# David_Harris@hmc.edu 6 September 2026
# SPDX-License-Identifier: Apache-2.0
##################################


"""Shared interrupt test generators"""

from collections.abc import Callable
from itertools import combinations

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
int_macro |= {name: name for name in ["LCOFI", *reg_ints, *sstc_ints]}

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
    # LCOFI has no platform source; raise and clear it through mip.LCOFIP
    "#define RVTEST_SET_LCOFI_INT_M li a1, 1<<13; csrs mip, a1",
    "#define RVTEST_CLR_LCOFI_INT_M li a1, 1<<13; csrc mip, a1",
    "#define RVTEST_SET_LCOFI_INT_S RVTEST_TSBI_CSR_SET(CSR_MIP, 1<<13)",
    "#define RVTEST_CLR_LCOFI_INT_S RVTEST_TSBI_CSR_CLEAR(CSR_MIP, 1<<13)",
    "#define RVTEST_SET_LCOFI_INT_U RVTEST_TSBI_CSR_SET(CSR_MIP, 1<<13)",
    "#define RVTEST_CLR_LCOFI_INT_U RVTEST_TSBI_CSR_CLEAR(CSR_MIP, 1<<13)",
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


# Per-suite setup shared by cp_enable and cp_priority: the interrupts to raise, the pending and enable
# CSRs, the global enable written in the suite's boot mode, and the default delegation setup.
# InterruptsSm clears mideleg so every interrupt is enabled by mie alone.
_SETUP = {
    "InterruptsSm": {
        "types": [*machine_ints, *supervisor_ints],
        # MEI and SEI usually share one PLIC source, so priority pairs raise SEI through mip.SEIP instead
        "priority_types": ["MEI", "MTI", "MSI", "MIP_SEIP", "STI", "SSI", "LCOFI"],
        "ip": "mip",
        "ie": "mie",
        "status": ("mstatus", 0x88, "MIE"),
        "deleg": ["#ifdef S_SUPPORTED", "csrw mideleg, zero # mideleg = zeros", "#endif // S_SUPPORTED"],
    },
    "InterruptsS": {
        "types": [*supervisor_ints],
        "priority_types": ["SEI", "STI", "SSI", "LCOFI"],
        "ip": "sip",
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
    setup = _SETUP[suite]
    ie = setup["ie"]
    status_csr, status_mask, status_field = setup["status"]
    tc = test_data.new_test_chunk(test_chunks, "enable")
    tc.section_header = comment_banner(
        coverpoint, f"Enable each interrupt in {priv} mode with {status_csr}.{status_field} = 1, {ie} = only/others"
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


def guard_symbol(int_type: str) -> str:
    """Preprocessor symbol that must be defined for ``int_type`` to be raised on the target."""
    return int_guard.get(int_type, f"UDB_{int_type}_INTR_IMPL")


def _raise(raised: list[str], pair: list[str], op: str, priv: str) -> list[str]:
    """RVTEST_<op>_<int>_INT_<priv> lines (op = SET or CLR) for every interrupt in ``raised``.

    The case that calls this is already wrapped in the guard symbols of both members of ``pair``,
    so their lines need no guard. In the ie flavor ``raised`` also includes every other interrupt,
    and each of those is wrapped in its own guard so a target that lacks it (for example S-level
    interrupts without S-mode) does not reference a macro or trap-handler routine it does not have.
    """
    lines = []
    for int_type in raised:
        line = f"RVTEST_{op}_{int_macro[int_type]}_INT_{priv} # {op} {int_type}"
        if int_type in pair:
            lines.append(line)
        else:
            lines += [f"#ifdef {guard_symbol(int_type)}", line, f"#endif // {guard_symbol(int_type)}"]
    return lines


def _generate_cp_priority(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str, vary: str) -> None:
    """Raise pairs of interrupts so the higher priority one is taken first.

    ``vary`` is the CSR that distinguishes the pair: "ip" (pair pending, all enabled), "ie" (all pending,
    pair enabled), or "mideleg" (pair pending and enabled, one of the pair delegated).
    """
    setup = _SETUP[suite]
    ie = setup["ie"]
    status_csr, status_mask, status_field = setup["status"]
    csr = {"ip": setup["ip"], "ie": ie, "mideleg": "mideleg"}[vary]
    ######################################
    coverpoint = f"cp_priority_{csr}"
    ######################################
    tc = test_data.new_test_chunk(test_chunks, f"priority_{csr}")
    tc.section_header = comment_banner(
        coverpoint,
        f"Priority of pairs of interrupts distinguished by {csr} in {priv} mode that are otherwise enabled and pending",
    )
    tc.code += guard_open(suite, priv)
    tmp_reg = test_data.int_regs.get_register()

    types = setup["priority_types"]
    bits = machine_ints | supervisor_ints | reg_ints
    # delegated interrupts are only taken in S-mode with sstatus.SIE set
    if vary == "mideleg":
        status_mask |= 0x22
    # Only S-level interrupts can be delegated; the register-triggered ones share their bit positions
    supervisor_bits = supervisor_ints.values()
    delegatable = []
    for int_type in types:
        if bits[int_type] in supervisor_bits:
            delegatable.append(int_type)
    for first, second in combinations(types, 2):
        pair = [first, second]
        # ie: everything is pending and only the pair is enabled; otherwise only the pair is pending
        raised = types if vary == "ie" else pair
        # ie: enable only the pair; otherwise enable everything
        ie_after = (1 << bits[first]) | (1 << bits[second]) if vary == "ie" else -1
        # mideleg: one case per delegatable member of the pair, delegating that member;
        # otherwise a single case with nothing delegated
        delegations: list[str | None] = [None]
        if vary == "mideleg":
            delegations = []
            for member in pair:
                if member in delegatable:
                    delegations.append(member)
        for deleg in delegations:
            deleg_lines = setup["deleg"]
            bin_name = f"priv_{priv}_{first}_{second}"
            if deleg is not None:
                deleg_lines = [
                    "#ifdef S_SUPPORTED",
                    f"LI(x{tmp_reg}, {1 << bits[deleg]:#x})",
                    f"csrw mideleg, x{tmp_reg} # mideleg = {deleg}",
                    "#endif // S_SUPPORTED",
                ]
                bin_name += f"_deleg_{deleg}"
            tc.code += [
                f"#ifdef {guard_symbol(first)}",
                f"#ifdef {guard_symbol(second)}",
                *deleg_lines,
                f"LI(x{tmp_reg}, {status_mask:#x})",
                f"csrs {status_csr}, x{tmp_reg} # {status_csr}.{status_field} = 1",
                f"LI(x{tmp_reg}, 0)",
                f"csrw {ie}, x{tmp_reg} # {ie} = 0",
                test_data.add_testcase(bin_name, coverpoint, f"{suite}_cg"),
                *mode_enter(suite, priv),
                *_raise(raised, pair, "SET", priv),
                # enable after everything is pending so the pair is arbitrated together, not raced by latency
                f"LI(x{tmp_reg}, {ie_after})",
                csr_access(f"csrw {ie}, x{tmp_reg} # {ie} = {ie_after:#x}", priv),
                f"RVTEST_IDLE_FOR_INTERRUPT(x{tmp_reg}) # Wait for interrupts to fire in priority order",
                *_raise(raised, pair, "CLR", priv),
                *mode_exit(suite, priv),
                f"#endif // {guard_symbol(second)}",
                f"#endif // {guard_symbol(first)}",
                "",
            ]

    test_data.int_regs.return_register(tmp_reg)
    tc.code += guard_close(suite, priv)


def _generate_cp_priority_pending(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Priority of pending interrupts: pair pending, all enabled."""
    _generate_cp_priority(test_data, test_chunks, suite, priv, "ip")


def _generate_cp_priority_enable(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Priority of enabled interrupts: all pending, pair enabled."""
    _generate_cp_priority(test_data, test_chunks, suite, priv, "ie")


def generate_cp_priority_mideleg(test_data: TestData, test_chunks: list[TestChunk], suite: str, priv: str) -> None:
    """Priority of delegated interrupts: pair pending and enabled, one of them delegated (InterruptsSm)."""
    _generate_cp_priority(test_data, test_chunks, suite, priv, "mideleg")


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
