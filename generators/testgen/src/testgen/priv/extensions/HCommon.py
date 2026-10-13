##################################
# priv/extensions/HCommon.py
#
# Shared H and HSm CSR test generation
# wutianze@ict.ac.cn Sep 2026
# SPDX-License-Identifier: Apache-2.0
##################################
"""CSR stimuli and execution using the ACT4 trap handler and T-SBI."""

from collections.abc import Iterator
from dataclasses import dataclass
from itertools import product

from testgen.asm.helpers import comment_banner, write_sigupd
from testgen.asm.tsbi import tsbi_call_or_direct
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk, trap_sigupd_count

M_CSRS = ("mtval2", "mtinst")
H_CSRS = (
    "hstatus",
    "hedeleg",
    "hideleg",
    "hie",
    "hcounteren",
    "hgeie",
    "henvcfg",
    "htval",
    "hip",
    "hvip",
    "htinst",
    "hgatp",
    "hgeip",
)
S_CSRS = ("sstatus", "sie", "stval", "sip", "stvec", "sscratch", "sepc", "scause", "satp")
VS_CSRS = ("vsstatus", "vsie", "vstval", "vsip", "vstvec", "vsscratch", "vsepc", "vscause", "vsatp")
OPS = (
    "write_zero",
    "write_ones",
    "set",
    "clear",
    "read",
    "read_clear",
    "write_no_read",
    "write_imm_zero",
    "write_imm",
    "set_imm",
    "clear_imm",
    "read_imm",
    "read_clear_imm",
    "set_zero",
    "clear_zero",
)
_MODE = {"m": "M", "hs": "S", "vs": "VS", "u": "U", "vu": "VU"}
_GOTO = {"m": "MMODE", "hs": "SMODE", "vs": "VSMODE", "u": "UMODE", "vu": "VUMODE"}
_CSR_NUMBERS: dict[str, int] = dict(zip(S_CSRS, (0x100, 0x104, 0x143, 0x144, 0x105, 0x140, 0x141, 0x142, 0x180)))
_CSR_NUMBERS.update(zip(VS_CSRS, (0x200, 0x204, 0x243, 0x244, 0x205, 0x240, 0x241, 0x242, 0x280)))
_CSR_NUMBERS.update(
    {
        "mstatus": 0x300,
        "mie": 0x304,
        "mcounteren": 0x306,
        "menvcfg": 0x30A,
        "menvcfgh": 0x31A,
        "mstateen0": 0x30C,
        "mstateen0h": 0x31C,
        "mtval": 0x343,
        "mideleg": 0x303,
        "mtval2": 0x34B,
        "mtinst": 0x34A,
        "senvcfg": 0x10A,
        "scounteren": 0x106,
        "hstatus": 0x600,
        "hedeleg": 0x602,
        "hideleg": 0x603,
        "hie": 0x604,
        "htimedelta": 0x605,
        "hcounteren": 0x606,
        "hgeie": 0x607,
        "henvcfg": 0x60A,
        "hstateen0": 0x60C,
        "htval": 0x643,
        "hip": 0x644,
        "hvip": 0x645,
        "htinst": 0x64A,
        "hgatp": 0x680,
        "hgeip": 0xE12,
        "hedelegh": 0x612,
        "htimedeltah": 0x615,
        "henvcfgh": 0x61A,
        "hstateen0h": 0x61C,
        "vstimecmp": 0x24D,
        "vstimecmph": 0x25D,
    }
)


@dataclass(frozen=True)
class CSR:
    name: str
    guard: str | None = None
    access_bits: int | None = None


def csr_inventory(machine: bool = False, supervisor: bool = False) -> list[CSR]:
    names = (M_CSRS if machine else ()) + H_CSRS + VS_CSRS + (S_CSRS if supervisor else ())
    return [CSR(name) for name in names] + [
        CSR("htimedelta"),
        CSR("vstimecmp", "defined(SSTC_SUPPORTED)"),
        CSR("hedelegh", "__riscv_xlen == 32", 32),
        CSR("henvcfgh", "__riscv_xlen == 32", 32),
        CSR("htimedeltah", "__riscv_xlen == 32", 32),
        CSR("vstimecmph", "__riscv_xlen == 32 && defined(SSTC_SUPPORTED)", 32),
    ]


class Case:
    """One testcase, with setup and checks in its suite's boot mode."""

    def __init__(
        self, td: TestData, cp: str, mode: str, name: str, changed: tuple[str, ...] = (), guard: str | None = None
    ) -> None:
        self.td = td
        self.home = "m" if td.testsuite == "HSm" else "hs"
        self.current = self.home
        self.mode = mode
        self.guard = guard
        self.tc = td.begin_test_chunk(cp.removeprefix("cp_"))
        self.tc.section_header = comment_banner(cp, name)
        self.regs = td.int_regs.get_registers(6)
        self.p, self.t, self.r, self.c, self.a, self.b = self.regs
        cg = "HSm_cg" if self.home == "m" else "H_cg"
        self.label = td.add_testcase(name, cp, cg).rstrip(":")
        self.base = self.label + "_state"
        self.saved: list[str] = []
        self.save_masks: dict[str, int | str | None] = {}
        self.save_guards: dict[str, str | None] = {}
        self.expected_cause = -1
        if guard:
            self.emit(f"#if {guard}")
        self.emit(".option push", ".option norvc")
        self.emit(f"LA(x{self.p}, saved_xcause)", f"LI(x{self.t}, -1)", f"SREG x{self.t}, 0(x{self.p})")
        # T-SBI reads mstatus in a trap context; preserve only unaffected fields.
        self.save("mstatus", (1 << 17) | (1 << 20) | ((1 << 3) if self.home == "m" else 0))
        self.save("sstatus", (1 << 1) | (3 << 9) | (3 << 13) | (1 << 18) | (1 << 19))
        for csr in ("mie", "hie", "hvip"):
            self.save(csr)
        self.field("mstatus", (1 << 17) | (1 << 20), 0)
        if self.home == "m":
            self.field("mstatus", 1 << 3, 0)
        self.field("sstatus", 1 << 1, 0)
        for csr in ("mie", "hie", "hvip"):
            self.write(csr, "zero")
        if mode in ("vs", "vu"):
            for csr in ("hstatus", "vsstatus", "vsatp", "hgatp", "hedeleg", "hideleg"):
                self.save(csr)
            self.field("vsstatus", 1 << 1, 0)
            for csr in ("vsatp", "hgatp", "hedeleg", "hideleg"):
                self.write(csr, "zero")
            self.emit("hfence.vvma zero, zero", "hfence.gvma zero, zero")
            self.field("hstatus", (1 << 20) | (1 << 21) | (1 << 22), 0)
        for csr in changed:
            if csr != "hgeip":
                self.save(csr)

    def emit(self, *lines: str) -> None:
        self.tc.code.extend(lines)

    def read(self, reg: int, csr: str) -> None:
        self.emit(tsbi_call_or_direct(f"csrr x{reg}, 0x{_CSR_NUMBERS[csr]:03x}", _MODE[self.current]))

    def write(self, csr: str, reg: int | str) -> None:
        operand = f"x{reg}" if isinstance(reg, int) else reg
        self.emit(tsbi_call_or_direct(f"csrw 0x{_CSR_NUMBERS[csr]:03x}, {operand}", _MODE[self.current]))

    def field(self, csr: str, mask: int | str, value: int | str) -> None:
        self.read(self.t, csr)
        self.emit(
            f"LI(x{self.a}, {mask})",
            f"not x{self.a}, x{self.a}",
            f"and x{self.t}, x{self.t}, x{self.a}",
            f"LI(x{self.a}, ({value}) & ({mask}))",
            f"or x{self.t}, x{self.t}, x{self.a}",
        )
        self.write(csr, self.t)

    def save(self, csr: str, mask: int | str | None = None, guard: str | None = None) -> None:
        if csr in self.saved:
            if mask is None:
                self.save_masks[csr] = None
            return
        self.saved.append(csr)
        self.save_masks[csr] = mask
        self.save_guards[csr] = guard
        if guard:
            self.emit(f"#if {guard}")
        self.read(self.t, csr)
        self.emit(f"LA(x{self.p}, {self.base})", f"SREG x{self.t}, {self.saved.index(csr) * 8}(x{self.p})")
        if guard:
            self.emit("#endif")

    def store_slot(self, reg: int, index: int) -> None:
        self.emit(f"LA(x{self.p}, {self.base}_scratch)", f"SREG x{reg}, {index * 8}(x{self.p})")

    def load_slot(self, reg: int, index: int) -> None:
        self.emit(f"LA(x{self.p}, {self.base}_scratch)", f"LREG x{reg}, {index * 8}(x{self.p})")

    def enter(self) -> None:
        if self.mode != self.current:
            self.emit(f"RVTEST_TSBI_GOTO_{_GOTO[self.mode]}")
            self.current = self.mode

    def instruction(self, instruction: str) -> None:
        self.check_trap()
        self.emit(
            "LI(a0, -1)",
            f"{self.label}:",
            instruction,
        )

    def recover(self, expected: int) -> None:
        self.expected_cause = expected if expected else -1
        self.tc.trap_sigupd_count = trap_sigupd_count(int(expected != 0))
        if self.current != self.home:
            self.emit(f"RVTEST_TSBI_GOTO_{_GOTO[self.home]}")
            self.current = self.home
        self.check_trap()
        self.emit(f"LI(x{self.c}, 0)")
        self.signature(self.c)

    def check_trap(self) -> None:
        self.emit(f"LA(x{self.p}, saved_xcause)", f"LREG x{self.c}, 0(x{self.p})")
        self.expect(self.c, self.expected_cause)
        if self.expected_cause != -1:
            self.emit(f"LA(x{self.p}, saved_xepc)", f"LREG x{self.c}, 0(x{self.p})", f"LA(x{self.t}, {self.label})")
            self.emit(f"sub x{self.c}, x{self.c}, x{self.t}")
            self.expect(self.c, 0)

    def expect(self, reg: int, value: int | str) -> None:
        self.emit(
            f"LI(x{self.t}, {value})",
            f"beq x{reg}, x{self.t}, 1f",
            f"LA(x{self.t}, rvmodel_halt_fail)",
            f"jalr zero, 0(x{self.t})",
            "1:",
        )

    def signature(self, reg: int) -> None:
        self.emit(write_sigupd(reg, self.td))

    def enable_stateen(self, csr: str) -> None:
        mask = 1 << (56 if csr == "hedelegh" else 62)
        for name, part, xlen in (("mstateen0", mask, 64), ("mstateen0h", mask >> 32, 32)):
            guard = f"defined(SMSTATEEN_SUPPORTED) && __riscv_xlen == {xlen}"
            self.save(name, part, guard)
            self.emit(f"#if {guard}")
            self.field(name, part, part)
            self.emit("#endif")
        if self.mode == "vs" and csr == "senvcfg":
            for name, part, xlen in (("hstateen0", 1 << 62, 64), ("hstateen0h", 1 << 30, 32)):
                guard = f"(defined(SMSTATEEN_SUPPORTED) || defined(SSSTATEEN_SUPPORTED)) && __riscv_xlen == {xlen}"
                self.save(name, part, guard)
                self.emit(f"#if {guard}")
                self.field(name, part, part)
                self.emit("#endif")

    def restore_field(self, csr: str, mask: int | str) -> None:
        self.read(self.t, csr)
        self.emit(
            f"LI(x{self.a}, {mask})",
            f"and x{self.b}, x{self.b}, x{self.a}",
            f"not x{self.a}, x{self.a}",
            f"and x{self.t}, x{self.t}, x{self.a}",
            f"or x{self.t}, x{self.t}, x{self.b}",
        )
        self.write(csr, self.t)

    def finish(self) -> TestChunk:
        assert self.current == self.home
        first = [csr for csr in ("stvec", "sscratch", "vstimecmph", "vstimecmp") if csr in self.saved]
        permissions = [
            csr
            for csr in ("hstateen0", "hstateen0h", "mstateen0", "mstateen0h", "mcounteren", "menvcfgh", "menvcfg")
            if csr in self.saved
        ]
        last = [csr for csr in ("sstatus", "mie", "mstatus") if csr in self.saved]
        middle = [csr for csr in self.saved if csr not in (*first, *permissions, *last)]
        order = first + middle + permissions + last
        for csr in order:
            guard = self.save_guards[csr]
            if guard:
                self.emit(f"#if {guard}")
            self.emit(f"LA(x{self.p}, {self.base})", f"LREG x{self.b}, {self.saved.index(csr) * 8}(x{self.p})")
            mask = self.save_masks[csr]
            if mask is None:
                self.write(csr, self.b)
            else:
                self.restore_field(csr, mask)
            if guard:
                self.emit("#endif")
        self.check_trap()
        self.emit(".option pop")
        if self.guard:
            self.emit("#endif")
        self.tc.raw_data.extend(
            [
                ".balign 8",
                f"{self.base}:",
                f".zero {8 * len(self.saved)}",
                f"{self.base}_scratch:",
                ".zero 96",
            ]
        )
        self.td.int_regs.return_registers(self.regs)
        return self.td.end_test_chunk()


def new_case(
    td: TestData, cp: str, mode: str, name: str, changed: tuple[str, ...] = (), guard: str | None = None
) -> Case:
    if mode in ("u", "vu"):
        guard = f"({guard}) && defined(U_SUPPORTED)" if guard else "defined(U_SUPPORTED)"
    return Case(td, cp, mode, name, changed, guard)


def finish_case(case: Case) -> TestChunk:
    return case.finish()


def legal_mask(csr: str) -> str:
    """Select test fields without changing reserved status or translation fields."""
    if csr in ("satp", "vsatp", "hgatp"):
        return "0xfffff"
    fixed = {
        "hedeleg": 0xB1FF,
        "hedelegh": 0,
        "hideleg": 0x444,
        "hie": 0x1444,
        "hip": 4,
        "hvip": 0x444,
        "hcounteren": 0xFFFFFFFF,
        "henvcfg": 1,
        "henvcfgh": 0,
        "vsie": 0x222,
        "vsip": 2,
        "sie": 0x222,
        "sip": 2,
        "scounteren": 0xFFFFFFFF,
        "senvcfg": 1,
        "scause": 31,
        "vscause": 31,
        "hstatus": 0x700380,
        "sstatus": 0xC6722,
        "vsstatus": 0xC6722,
        "stvec": 0x7FC,
        "vstvec": 0x7FC,
        "sepc": 0x7FC,
        "vsepc": 0x7FC,
    }
    if csr == "hgeie":
        return "((1 << UDB_NUM_EXTERNAL_GUEST_INTERRUPTS) - 1) << 1"
    return str(fixed[csr]) if csr in fixed else "-1"


_BIT_CSRS = {
    "hedeleg",
    "hedelegh",
    "hideleg",
    "hie",
    "hip",
    "hvip",
    "hcounteren",
    "hgeie",
    "henvcfg",
    "henvcfgh",
    "vsie",
    "vsip",
    "sie",
    "sip",
    "scounteren",
    "senvcfg",
    "hstatus",
}
_PLAIN_CSRS = {"htimedelta", "htimedeltah", "sscratch", "vsscratch", "scause", "vscause"}
_NO_WRITE_OPS = {"read", "read_clear", "read_imm", "read_clear_imm"}
_IMM_WRITE_OPS = {"write_imm_zero", "write_imm"}
_IMM_SAFE_CSRS = _BIT_CSRS | _PLAIN_CSRS | {"htval", "htinst", "mtval2", "mtinst", "stval", "vstval"}


def writes_csr(op: str) -> bool:
    return op not in _NO_WRITE_OPS


def translation_modes(csr: str) -> tuple[tuple[str, int, int], ...]:
    suffix = "X4_TRANSLATION" if csr == "hgatp" else "_VSMODE_TRANSLATION"
    return tuple(
        (f"UDB_SV{width}{suffix}", mode, shift)
        for width, mode, shift in ((32, 1, 31), (39, 8, 60), (48, 9, 60), (57, 10, 60))
    )


def prepare_translation_root(case: Case, csr: str) -> None:
    """Select a supported paging mode only while its translation root is inactive."""
    for index, (gate, mode, shift) in enumerate(translation_modes(csr)):
        case.emit(f"#{'if' if index == 0 else 'elif'} defined({gate})", f"LI(x{case.t}, ({mode} << {shift}))")
        case.write(csr, case.t)
    case.emit("#else")
    case.write(csr, "zero")
    case.emit("#endif")


def _actual_csr(mode: str, csr: str) -> str:
    return "v" + csr if mode == "vs" and csr in S_CSRS else csr


def _ops_for(csr: CSR) -> tuple[str, ...]:
    return tuple(op for op in OPS if op not in _IMM_WRITE_OPS or csr.name in _IMM_SAFE_CSRS)


def _init_value(op: str, csr: str) -> str:
    if csr == "satp":
        return "0"
    if op.startswith("clear"):
        return legal_mask(csr)
    return "0"


def _prepare_mask(case: Case, csr: str, actual: str) -> None:
    """Discover independently writable fields, then check required architectural bits."""
    mask = legal_mask(csr)
    case.field(actual, mask, mask)
    case.read(case.a, actual)
    case.emit(f"LI(x{case.t}, {mask})", f"and x{case.a}, x{case.a}, x{case.t}")
    case.store_slot(case.a, 1)
    required = {
        "hedeleg": 0xB1FE,
        "hideleg": 0x444,
        "hie": 0x444,
        "hvip": 0x444,
        "hip": 4,
        "hstatus": 0x700380,
        "vsie": 0x222,
        "vsip": 2,
    }.get(csr)
    if case.mode == "vs" and csr in ("sie", "sip"):
        required = 0x222 if csr == "sie" else 2
    if required is not None:
        case.emit(f"LI(x{case.t}, {required})", f"and x{case.r}, x{case.a}, x{case.t}")
        case.expect(case.r, required)
    if csr == "hgeie":
        case.expect(case.a, mask)
    if csr == "hie":
        case.emit(
            "#if UDB_NUM_EXTERNAL_GUEST_INTERRUPTS > 0",
            f"LI(x{case.t}, 1 << 12)",
            f"and x{case.r}, x{case.a}, x{case.t}",
        )
        case.expect(case.r, 1 << 12)
        case.emit("#endif")
    if csr == "hedeleg":
        case.emit("#if !defined(C_SUPPORTED) && !defined(ZCA_SUPPORTED)", f"andi x{case.r}, x{case.a}, 1")
        case.expect(case.r, 1)
        case.emit("#endif")


def csr_instruction(case: Case, csr: str, op: str, value: str | int | None = None, *, paged_root: bool = False) -> str:
    """Emit the actual instruction directly, including zero-operand access semantics."""
    operand = f"0x{_CSR_NUMBERS[csr]:03x}"
    if op in ("read", "read_clear"):
        return f"{'csrrs' if op == 'read' else 'csrrc'} x{case.r}, {operand}, zero"
    if op in ("read_imm", "read_clear_imm"):
        return f"{'csrrsi' if op == 'read_imm' else 'csrrci'} x{case.r}, {operand}, 0"
    if op.endswith("_imm") or op == "write_imm_zero":
        immediate = 0 if op == "write_imm_zero" else 31 if value is None else int(value) & 31
        if csr in _BIT_CSRS or csr in ("sstatus", "vsstatus"):
            fixed_mask = legal_mask(csr)
            if fixed_mask.isdecimal():
                immediate &= int(fixed_mask)
        case.emit(f"LI(x{case.b}, {immediate})")
        mnemonic = {"write_imm_zero": "csrrwi", "write_imm": "csrrwi", "set_imm": "csrrsi", "clear_imm": "csrrci"}[op]
        return f"{mnemonic} x{case.r}, {operand}, {immediate}"
    supplied = (
        "0" if op in ("write_zero", "set_zero", "clear_zero") else legal_mask(csr) if value is None else str(value)
    )
    case.emit(f"LI(x{case.b}, {supplied})")
    if paged_root:
        gates = " || ".join(f"defined({gate})" for gate, _, _ in translation_modes(csr))
        case.emit(f"#if !({gates})", f"LI(x{case.b}, 0)", "#endif")
    if op.startswith("write") and _actual_csr(case.mode, csr) in case.saved:
        case.load_slot(case.a, 0)
        case.emit(
            f"LI(x{case.t}, {legal_mask(csr)})",
            f"and x{case.b}, x{case.b}, x{case.t}",
            f"not x{case.t}, x{case.t}",
            f"and x{case.a}, x{case.a}, x{case.t}",
            f"or x{case.b}, x{case.b}, x{case.a}",
        )
    mnemonic = "csrrs" if op.startswith("set") else "csrrc" if op.startswith("clear") else "csrrw"
    rd = "zero" if op == "write_no_read" else f"x{case.r}"
    return f"{mnemonic} {rd}, {operand}, x{case.b}"


def _check_hie(case: Case) -> None:
    case.load_slot(case.r, 2)
    case.read(case.a, "mie")
    case.emit(f"xor x{case.a}, x{case.a}, x{case.r}", f"LI(x{case.t}, 0x1444)", f"and x{case.a}, x{case.a}, x{case.t}")
    case.expect(case.a, 0)
    if case.home == "m":
        case.read(case.a, "mideleg")
        case.emit(
            f"not x{case.a}, x{case.a}",
            f"and x{case.a}, x{case.a}, x{case.r}",
            f"LI(x{case.t}, 0x1444)",
            f"and x{case.a}, x{case.a}, x{case.t}",
        )
        case.expect(case.a, 0)


def _check_result(case: Case, csr: str, op: str) -> None:
    """Check operation results against local legal state, not another implementation's WARL choice."""
    mask = legal_mask(csr)
    if op == "write_no_read":
        case.load_slot(case.r, 3)
        case.expect(case.r, 0x5A5)
    else:
        case.load_slot(case.r, 3)
        case.load_slot(case.a, 0)
        case.emit(f"xor x{case.r}, x{case.r}, x{case.a}")
        if csr in ("hip", "vsip", "sip"):
            case.emit(f"LI(x{case.t}, {mask})", f"and x{case.r}, x{case.r}, x{case.t}")
        case.expect(case.r, 0)
    if csr in _BIT_CSRS or csr in _PLAIN_CSRS:
        case.load_slot(case.a, 0)
        if op in _NO_WRITE_OPS:
            pass
        elif op.startswith("set"):
            case.emit(f"or x{case.a}, x{case.a}, x{case.b}")
        elif op.startswith("clear"):
            case.emit(f"not x{case.t}, x{case.b}", f"and x{case.a}, x{case.a}, x{case.t}")
        else:
            case.emit(f"mv x{case.a}, x{case.b}")
        if csr in _BIT_CSRS:
            case.load_slot(case.r, 1)
            case.emit(f"and x{case.a}, x{case.a}, x{case.r}")
        case.load_slot(case.r, 2)
        case.emit(f"xor x{case.r}, x{case.r}, x{case.a}")
        if csr in _BIT_CSRS:
            case.emit(f"LI(x{case.t}, {mask})", f"and x{case.r}, x{case.r}, x{case.t}")
        case.expect(case.r, 0)
    elif csr in ("sstatus", "vsstatus", "sepc", "vsepc"):
        case.load_slot(case.a, 0)
        if op in _NO_WRITE_OPS:
            pass
        elif op.startswith("set"):
            case.emit(f"or x{case.a}, x{case.a}, x{case.b}")
        elif op.startswith("clear"):
            case.emit(f"not x{case.t}, x{case.b}", f"and x{case.a}, x{case.a}, x{case.t}")
        else:
            case.emit(f"mv x{case.a}, x{case.b}")
        case.load_slot(case.r, 2)
        deterministic = 0xC0122 if csr in ("sstatus", "vsstatus") else 0x7FC
        case.emit(
            f"xor x{case.r}, x{case.r}, x{case.a}",
            f"LI(x{case.t}, {deterministic})",
            f"and x{case.r}, x{case.r}, x{case.t}",
        )
        case.expect(case.r, 0)
    elif op in ("write_zero", "write_imm_zero"):
        case.load_slot(case.r, 2)
        case.emit(f"LI(x{case.t}, {mask})", f"and x{case.r}, x{case.r}, x{case.t}")
        case.expect(case.r, 0)
    if csr == "hie":
        _check_hie(case)
    if csr == "hgatp":
        case.load_slot(case.r, 2)
        case.emit(f"andi x{case.r}, x{case.r}, 3")
        case.expect(case.r, 0)
    if csr in ("sepc", "vsepc"):
        case.load_slot(case.r, 2)
        case.emit(f"andi x{case.r}, x{case.r}, 1")
        case.expect(case.r, 0)
    case.emit(f"LI(x{case.r}, 0)")
    case.signature(case.r)


def _timer_setup(case: Case) -> None:
    for name, mask, width in (("menvcfg", "(1 << 63)", 64), ("menvcfgh", "(1 << 31)", 32)):
        guard = f"__riscv_xlen == {width}"
        case.save(name, mask, guard)
        case.emit(f"#if {guard}")
        case.field(name, mask, mask)
        case.emit("#endif")
    case.save("mcounteren", 2)
    case.field("mcounteren", 2, 2)


def csr_case(
    td: TestData,
    cp: str,
    mode: str,
    csr: CSR,
    op: str,
    expected: int = 0,
    value: int | str | None = None,
    tag: str = "",
    tvm: int = 0,
    vtvm: int = 0,
) -> TestChunk:
    actual = _actual_csr(mode, csr.name)
    timer = csr.name in ("vstimecmp", "vstimecmph")
    stateen = mode != "m" and csr.name in ("henvcfg", "henvcfgh", "senvcfg", "hedelegh")
    changed = (actual,) if expected == 0 and csr.name != "hgeip" and not timer and not stateen else ()
    case = new_case(td, cp, mode, f"{mode}_{csr.name}_{op}{tag}", changed, csr.guard)
    if stateen:
        case.enable_stateen(csr.name)
        if expected == 0:
            case.save(actual)
    if timer:
        _timer_setup(case)
        if expected == 0:
            case.save(actual)
    if vtvm or cp.endswith("vtvm"):
        case.save("hstatus")
        case.field("hstatus", 1 << 20, vtvm << 20)
    if expected == 0 and csr.name in ("vsie", "vsip"):
        case.save("hideleg")
        case.field("hideleg", 0x444, 0x444)
    paged = expected == 0 and csr.name in ("hgatp", "vsatp")
    if paged:
        prepare_translation_root(case, actual)
    if expected == 0 and csr.name != "hgeip":
        if csr.name in _BIT_CSRS:
            _prepare_mask(case, csr.name, actual)
        if paged:
            gates = " || ".join(f"defined({gate})" for gate, _, _ in translation_modes(csr.name))
            case.emit(f"#if {gates}")
            case.field(actual, legal_mask(csr.name), _init_value(op, csr.name))
            case.emit("#else")
            case.write(actual, "zero")
            case.emit("#endif")
        else:
            case.field(actual, legal_mask(csr.name), _init_value(op, csr.name))
    case.field("mstatus", 1 << 20, tvm << 20)
    case.enter()
    if expected == 0 and csr.name != "hgeip":
        case.read(case.a, csr.name)
        case.store_slot(case.a, 0)
    case.emit(f"LI(x{case.r}, 0x5a5)")
    instruction = csr_instruction(case, csr.name, op, value, paged_root=paged)
    case.instruction(instruction)
    if expected == 0:
        case.store_slot(case.r, 3)
        case.read(case.a, csr.name)
        case.store_slot(case.a, 2)
        if csr.name not in _BIT_CSRS | _PLAIN_CSRS | {"hgeip"}:
            # A value just read is legal and must be reproducible on a WARL write.
            case.write(csr.name, case.a)
            case.read(case.r, csr.name)
            case.emit(f"xor x{case.r}, x{case.r}, x{case.a}")
            case.expect(case.r, 0)
    case.recover(expected)
    if tvm:
        case.field("mstatus", 1 << 20, 0)
    if vtvm:
        case.field("hstatus", 1 << 20, 0)
    if expected == 0:
        if csr.name == "hgeip":
            case.load_slot(case.r, 2)
            case.emit(
                f"LI(x{case.t}, ~(((1 << UDB_NUM_EXTERNAL_GUEST_INTERRUPTS) - 1) << 1))",
                f"and x{case.r}, x{case.r}, x{case.t}",
            )
            case.expect(case.r, 0)
            case.signature(case.r)
        else:
            _check_result(case, csr.name, op)
    return finish_case(case)


def access_tests(td: TestData, cp: str, mode: str) -> Iterator[TestChunk]:
    for csr in csr_inventory(machine=mode == "m"):
        for op in _ops_for(csr):
            expected = 2 if csr.name == "hgeip" and writes_csr(op) else 0
            yield csr_case(td, cp, mode, csr, op, expected)


def denied_tests(td: TestData, cp: str, mode: str, scope: str) -> Iterator[TestChunk]:
    if scope == "machine":
        csrs = [CSR(name) for name in M_CSRS]
    elif scope == "supervisor":
        csrs = csr_inventory(supervisor=True) + [CSR("senvcfg"), CSR("scounteren")]
    else:
        csrs = csr_inventory(machine=scope == "all")
    for csr, op in product(csrs, OPS):
        expected = 2 if mode == "u" or csr.name in M_CSRS or (csr.name == "hgeip" and writes_csr(op)) else 22
        yield csr_case(td, cp, mode, csr, op, expected)


def walk_tests(td: TestData, cp: str, mode: str) -> Iterator[TestChunk]:
    csrs = (
        [CSR(name) for name in M_CSRS]
        if mode == "m"
        else [csr for csr in csr_inventory() if csr.name not in ("hstatus", "vsstatus", "hgeip", "vscause")]
    )
    for csr in csrs:
        for bit in range(csr.access_bits or 64):
            if csr.name in _BIT_CSRS:
                try:
                    if not int(legal_mask(csr.name)) & (1 << bit):
                        continue
                except ValueError:
                    pass
            if csr.name in ("vsatp", "hgatp") and bit >= 20:
                continue
            if csr.name == "vstvec" and bit < 2:
                continue
            guard = csr.guard
            if csr.name in ("hgatp", "vsatp"):
                guard = " || ".join(f"defined({gate})" for gate, _, _ in translation_modes(csr.name))
            if csr.name == "hgeie":
                if bit == 0:
                    continue
                guard = f"UDB_NUM_EXTERNAL_GUEST_INTERRUPTS >= {bit}"
            if bit >= 32:
                guard = f"({guard}) && __riscv_xlen == 64" if guard else "__riscv_xlen == 64"
            for op in ("set", "clear"):
                yield csr_case(td, cp, mode, CSR(csr.name, guard), op, value=1 << bit, tag=f"_bit{bit}")
    if mode == "hs":
        for bit in (0, 1, 2, 3, 4, 31, 63):
            guard = f"__riscv_xlen == {32 if bit == 31 else 64}" if bit >= 31 else None
            for op in ("set", "clear"):
                case = new_case(td, cp, mode, f"hs_vscause_{op}_bit{bit}", ("vscause",), guard)
                initial = (1 if bit >= 31 else 0) | ((1 << bit) if op == "clear" else 0)
                result = initial | (1 << bit) if op == "set" else initial & ~(1 << bit)
                case.emit(f"LI(x{case.b}, {initial})")
                case.write("vscause", case.b)
                case.enter()
                case.instruction(csr_instruction(case, "vscause", op, 1 << bit))
                case.read(case.r, "vscause")
                case.recover(0)
                case.expect(case.r, result)
                case.emit(f"LI(x{case.r}, 0)")
                case.signature(case.r)
                yield finish_case(case)


def replica_tests(td: TestData, cp: str, mode: str) -> Iterator[TestChunk]:
    for host, guest in zip(S_CSRS, VS_CSRS):
        selected = (host,) if mode == "vs" else (host, guest)
        for csr in selected:
            for op in _ops_for(CSR(csr)):
                case = new_case(td, cp, mode, f"{mode}_{csr}_{op}", (host, guest))
                peer = host if mode == "vs" or csr == guest else guest
                case.read(case.a, peer)
                case.store_slot(case.a, 5)
                actual = _actual_csr(mode, csr)
                if csr in _BIT_CSRS:
                    case.save("hideleg")
                    case.field("hideleg", 0x444, 0x444)
                    _prepare_mask(case, csr, actual)
                if csr in ("satp", "vsatp"):
                    case.write(actual, "zero")
                else:
                    case.field(actual, legal_mask(csr), _init_value(op, csr))
                case.enter()
                case.read(case.a, csr)
                case.store_slot(case.a, 0)
                # Bare is the only safe translation mode for an active root.
                value = 0 if csr in ("satp", "vsatp") else None
                case.emit(f"LI(x{case.r}, 0x5a5)")
                case.instruction(csr_instruction(case, csr, op, value))
                case.store_slot(case.r, 3)
                case.read(case.a, csr)
                case.store_slot(case.a, 2)
                if csr not in _BIT_CSRS | _PLAIN_CSRS:
                    case.write(csr, case.a)
                    case.read(case.r, csr)
                    case.emit(f"xor x{case.r}, x{case.r}, x{case.a}")
                    case.expect(case.r, 0)
                case.recover(0)
                if mode == "vs":
                    case.read(case.r, actual)
                    case.load_slot(case.a, 2)
                    case.emit(f"xor x{case.r}, x{case.r}, x{case.a}")
                    if csr == "sip":
                        case.emit(f"andi x{case.r}, x{case.r}, 2")
                    case.expect(case.r, 0)
                    case.signature(case.r)
                if mode != "vs" or host not in ("sepc", "scause", "stval"):
                    case.read(case.r, peer)
                    case.load_slot(case.a, 5)
                    case.emit(f"xor x{case.r}, x{case.r}, x{case.a}")
                    if mode == "vs" and host == "sstatus":
                        # HS trap entry and return change SIE/SPIE/SPP, not guest context fields.
                        case.emit(f"LI(x{case.t}, 0xc6600)", f"and x{case.r}, x{case.r}, x{case.t}")
                    case.expect(case.r, 0)
                    case.signature(case.r)
                if csr in ("satp", "vsatp"):
                    case.load_slot(case.r, 2)
                    case.expect(case.r, 0)
                _check_result(case, csr, op)
                yield finish_case(case)


def high_half_tests(td: TestData, cp: str, mode: str) -> Iterator[TestChunk]:
    for name, gate in (("hedelegh", None), ("henvcfgh", None), ("htimedeltah", None), ("vstimecmph", "SSTC_SUPPORTED")):
        guard = "__riscv_xlen == 64" + (f" && defined({gate})" if gate else "")
        for op in OPS:
            yield csr_case(td, cp, mode, CSR(name, guard), op, 2)


def scalar_tests(td: TestData, cp: str, kind: str) -> Iterator[TestChunk]:
    if kind == "mtval":
        case = new_case(td, cp, "m", "mtval_nonzero", ("mtval",))
        case.emit(f"LA(x{case.b}, {case.base})")
        case.write("mtval", case.b)
        case.instruction(f"csrr x{case.r}, 0x343")
        case.recover(0)
        case.emit(f"snez x{case.r}, x{case.r}")
        case.expect(case.r, 1)
        case.signature(case.r)
        yield finish_case(case)
    elif kind == "vscause":
        values = [str(value) for value in range(32)]
        values += [f"(1 << (__riscv_xlen - 1)) | {value}" for value in (1, 5, 9)]
        for index, value in enumerate(values):
            case = new_case(td, cp, "hs", f"vscause_{index}", ("vscause",))
            case.enter()
            case.emit(f"LI(x{case.b}, {value})")
            case.instruction(f"csrrw x{case.r}, 0x242, x{case.b}")
            case.read(case.r, "vscause")
            case.recover(0)
            case.expect(case.r, value)
            case.emit(f"LI(x{case.r}, 0)")
            case.signature(case.r)
            yield finish_case(case)
    elif kind == "sd":
        for fs, vs, sd, host_fs in product(range(4), range(4), range(2), (0, 3)):
            case = new_case(
                td,
                cp,
                "vs",
                f"fs{fs}_vs{vs}_sd{sd}_hostfs{host_fs}",
                ("vsstatus",),
                "defined(F_SUPPORTED) && defined(V_SUPPORTED)",
            )
            case.field("sstatus", 3 << 13, host_fs << 13)
            case.enter()
            case.read(case.a, "sstatus")
            case.emit(f"LI(x{case.b}, ({fs} << 13) | ({vs} << 9) | ({sd} << (__riscv_xlen - 1)))")
            case.emit(
                f"LI(x{case.t}, (3 << 13) | (3 << 9) | (1 << (__riscv_xlen - 1)))",
                f"not x{case.t}, x{case.t}",
                f"and x{case.a}, x{case.a}, x{case.t}",
                f"or x{case.b}, x{case.b}, x{case.a}",
            )
            case.instruction(f"csrrw x{case.r}, 0x100, x{case.b}")
            case.read(case.r, "sstatus")
            case.emit(
                f"srli x{case.b}, x{case.r}, (__riscv_xlen - 1)",
                f"srli x{case.a}, x{case.r}, 13",
                f"andi x{case.a}, x{case.a}, 3",
                f"xori x{case.a}, x{case.a}, 3",
                f"seqz x{case.a}, x{case.a}",
                f"srli x{case.c}, x{case.r}, 9",
                f"andi x{case.c}, x{case.c}, 3",
                f"xori x{case.c}, x{case.c}, 3",
                f"seqz x{case.c}, x{case.c}",
                f"or x{case.a}, x{case.a}, x{case.c}",
                f"srli x{case.c}, x{case.r}, 15",
                f"andi x{case.c}, x{case.c}, 3",
                f"xori x{case.c}, x{case.c}, 3",
                f"seqz x{case.c}, x{case.c}",
                f"or x{case.a}, x{case.a}, x{case.c}",
                f"xor x{case.r}, x{case.a}, x{case.b}",
            )
            case.store_slot(case.r, 2)
            case.recover(0)
            case.load_slot(case.r, 2)
            case.expect(case.r, 0)
            case.signature(case.r)
            yield finish_case(case)


def tvm_tests(td: TestData) -> Iterator[TestChunk]:
    for csr, op, tvm in product((CSR("satp"), CSR("hgatp")), OPS, range(2)):
        yield csr_case(td, "cp_hs_tvm", "hs", csr, op, 2 if tvm else 0, value=0, tag=f"_tvm{tvm}", tvm=tvm)
    for op, vtvm in product(OPS, range(2)):
        yield csr_case(
            td, "cp_vs_vtvm", "vs", CSR("satp"), op, 22 if vtvm else 0, value=0, tag=f"_vtvm{vtvm}", vtvm=vtvm
        )
