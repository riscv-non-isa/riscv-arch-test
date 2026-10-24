##################################
# latency.py
#
# David_Harris@hmc.edu 24 Oct 2026
# SPDX-License-Identifier: Apache-2.0
##################################

"""Data-independent latency checks for the cryptographic instructions in the ordinary suites.

The scalar and vector cryptographic instructions must execute with a latency that does not depend on
their data, whether or not Zkt or Zvkt is implemented. Every testcase of one of these instructions in the
ordinary suites is timed with the method of the Zkt suite (docs/ctp/src/k.adoc,
zkt-principle-of-operation): the testcase runs twice and the second run is timed inside one 64-byte line
(a jump skips the alignment padding), with the instruction made to depend on the first counter read. The
signature gets the latency minus a baseline, which must be 0. The baseline is the latency of the first
timed testcase with the same key: the instruction, its immediate and, for vector instructions, vl, LMUL
and the tail and mask policies, which may all legally affect the latency. It lives in a data word that
the first timed testcase fills at run time. A key with only one testcase gets a second one with the same
encoding and vl but random data (add_second_testcases), so every key has something to compare against.

RVTEST_CYCLE_CSR (tests/env/riscv_arch_test.h) is cycle with Zicntr, else mcycle in M-mode on a DUT with
standard M-mode CSRs. With neither, the testcases run untimed.
"""

import random
import re
from dataclasses import dataclass

from testgen.asm.helpers import write_sigupd
from testgen.data.params import InstructionParams
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk

# Mnemonic prefixes of the instructions whose latency must not depend on their data:
# Zknd, Zkne, Zknh, Zksed, Zksh, Zvkned, Zvknha, Zvknhb, Zvkg, Zvksed and Zvksh
_LATENCY_PREFIXES = (
    "aes32",
    "aes64",
    "sha256",
    "sha512",
    "sm3",
    "sm4",
    "vaes",
    "vsha2",
    "vghsh",
    "vgmul",
    "vsm3",
    "vsm4",
)


# Pads the vector window to 8 instructions. Sail advances cycle once every instructions_per_tick (2 in every
# config) retired instructions, so the difference of two reads k instructions apart is k/2 when k is even
# but 1 or 2 more or less than that, depending on where the window falls, when k is odd. The scalar window
# (csrr, sltu, or, instruction, then the second csrr) is 4 instructions from read to read; the vector one
# (csrr, sltu, add, vsetvl, instruction, csrr) is 5, so 3 nops make it 8.
_WINDOW_PAD = ["nop                         # pad the window to 8 instructions (see _WINDOW_PAD)"] * 3


def is_latency_checked(instr_name: str) -> bool:
    """True for an instruction whose latency the ordinary suites check for data independence."""
    return instr_name.startswith(_LATENCY_PREFIXES)


def latency_key(instr_name: str, setup: str, params: InstructionParams, label_line: str) -> str:
    """The baseline key: instruction, immediate and, for a vector instruction, vl, LMUL and policies."""
    key = instr_name
    if params.immval is not None:
        key += f"_imm{params.immval}"
    if not instr_name.startswith("v"):
        return key
    last = None
    for line in setup.splitlines():
        stripped = line.strip()
        if stripped.startswith(("vsetvli", "vsetivli")):
            last = stripped.split("#")[0]
    if last is None:
        raise ValueError("vector testcase setup has no vsetvli/vsetivli")
    _, rest = last.split(None, 1)
    _rd, avl, *vtype = (field.strip() for field in rest.split(","))
    if avl == "x0":
        vl = "vlmax"
    elif avl.isdigit():
        vl = avl
    elif params.vl_random is not None:
        vl = f"random{params.vl_random}"  # a second testcase repeats the same random value
    else:
        vl = label_line.strip().rstrip(":")  # a run-time vl of unknown origin is its own key
    return "_".join([key, vl, *vtype])


def _split_guards(setup: str) -> tuple[list[str], str]:
    """Split off the leading preprocessor conditionals that the setup opens and the check closes.

    Some setups start with a guard such as #if defined(TEST_LMULf2_SUPPORTED) whose #endif follows the
    check. The guard must enclose the whole timed testcase, so it is emitted before it.
    """
    lines = setup.splitlines()
    opens: list[int] = []
    for i, line in enumerate(lines):
        directive = line.strip()
        if directive.startswith(("#if ", "#ifdef ", "#ifndef ", "#if(")):
            opens.append(i)
        elif directive.startswith("#endif") and opens:
            opens.pop()
    if not opens:
        return [], setup
    if opens != list(range(len(opens))):
        raise ValueError(f"setup opens a conditional that it does not close after its first line:\n{setup}")
    return lines[: len(opens)], "\n".join(lines[len(opens) :])


def timed_testcase(
    test_data: TestData,
    instr_name: str,
    setup: str,
    test: str,
    label_line: str,
    data_count: int,
    dep_src: int | None,
    key: str,
) -> list[str]:
    """Lines that run setup and test twice and sign the second run's latency minus the baseline.

    data_count is the number of data words the setup loads, which the second run rewinds.
    dep_src is the scalar source register that carries the dependency on the first counter read; a vector
    instruction (dep_src None) gets it through a vsetvl of its own vl and vtype.
    """
    vector = instr_name.startswith("v")
    # The formatter has already returned the temporaries its setup uses, so keep clear of every register named
    used = sorted({int(reg) for reg in re.findall(r"\bx(\d+)\b", f"{setup}\n{test}")} | {0})
    # Leave the random sequence as it was, so adding the timing does not change the rest of the test
    state = random.getstate()
    start, end, runs, dep, avl = test_data.int_regs.get_registers(5, exclude_regs=used)
    random.setstate(state)
    data_reg = test_data.int_regs.data_reg
    data_bytes = f"{data_count}*SIG_STRIDE"
    guards, setup = _split_guards(setup)
    base = "rvtest_latency_base_" + re.sub(r"\W", "_", key)

    lines = [
        *guards,
        "#ifdef RVTEST_CYCLE_CSR",
        "# Data-independent latency (see asm/latency.py): run twice, time the second run, and sign the",
        "# latency minus the first timed testcase's with the same encoding (and vl and vtype), which must be 0.",
        f".ifndef {base}",
        ".pushsection .data",
        ".balign 8",
        f"{base}: .dword -1           # baseline latency; -1 until the first timed testcase sets it",
        ".popsection",
        ".endif",
        f"LI(x{runs}, 2)              # two runs; the second is timed",
        "7:",
        setup,
    ]
    if data_count:
        lines.append(f"addi x{data_reg}, x{data_reg}, -{data_bytes}    # rewind data for the second run")
    if vector:
        lines.extend(
            [
                f"csrr x{avl}, vl              # vl and vtype, reapplied below with a dependency on the first counter read",
                f"csrr x{end}, vtype",
            ]
        )
    elif dep_src is not None:
        lines.append(f"xor x{start}, x{dep_src}, x{dep_src}           # drain: loads finish first")
    lines.extend(
        [
            "j 9f                        # skip the padding rather than execute it",
            ".balign 64                  # keep the timed window in one cache line",
            "9:",
            f"csrr x{start}, RVTEST_CYCLE_CSR  # first counter read",
            f"sltu x{dep}, x{start}, x0           # dep = 0, ready after the first counter read",
        ]
    )
    if vector:
        lines.extend(
            [
                f"add x{avl}, x{avl}, x{dep}          # AVL depends on the first counter read",
                f"vsetvl x0, x{avl}, x{end}           # same vl and vtype; the vector instruction waits for it",
                *_WINDOW_PAD,
            ]
        )
    elif dep_src is not None:
        lines.append(f"or x{dep_src}, x{dep_src}, x{dep}            # operand depends on the first counter read")
    lines.extend(
        [
            label_line,
            test,
            f"csrr x{end}, RVTEST_CYCLE_CSR  # second counter read",
            f"addi x{runs}, x{runs}, -1",
            f"bnez x{runs}, 7b",
        ]
    )
    if data_count:
        lines.append(f"addi x{data_reg}, x{data_reg}, {data_bytes}   # advance past this testcase's data")
    lines.extend(
        [
            f"sub x{end}, x{end}, x{start}           # latency of the second run",
            # Not LA, whose alignment padding would execute in every testcase: without relaxation, lla is always
            # auipc and addi, so the code layout does not depend on the address
            ".option push",
            ".option norelax",
            f"lla x{start}, {base}",
            ".option pop",
            f"LREG x{dep}, 0(x{start})",
            f"bgez x{dep}, 8f                     # baseline already set",
            f"SREG x{end}, 0(x{start})            # the first timed testcase sets the baseline",
            f"mv x{dep}, x{end}",
            "8:",
            f"sub x{end}, x{end}, x{dep}           # 0 on data-independent hardware",
            write_sigupd(end, test_data, "int"),
            "#else",
            setup,
            label_line,
            test,
            "#endif",
        ]
    )
    test_data.int_regs.return_registers([start, end, runs, dep, avl])
    return lines


@dataclass
class LatencyRecord:
    """A timed testcase, kept so that a key with one testcase can get a second one."""

    key: str
    instr_type: str
    params: InstructionParams
    desc: str
    bin_name: str
    coverpoint: str


def _second_params(test_data: TestData, instr_name: str, record: LatencyRecord) -> InstructionParams:
    """Parameters with the record's registers, immediate, vl and vtype but new random data."""
    from testgen.instructions.params import generate_random_params
    from testgen.instructions.vector_params import generate_random_vector_params

    p = record.params
    if not instr_name.startswith("v"):
        fixed = {name: getattr(p, name) for name in ("rd", "rs1", "rs2", "immval") if getattr(p, name) is not None}
        return generate_random_params(test_data, record.instr_type, **fixed)
    assert p.lmul is not None, "vector testcase without LMUL"
    fixed = {
        name: getattr(p, name)
        for name in ("vd", "vs1", "vs2", "rd", "rs1", "rs2", "immval", "vl", "vl_random", "ta", "ma")
        if getattr(p, name) is not None
    }
    # The generator does not reserve preset vector registers, so reserve their groups as the register coverpoints
    # do; otherwise a signature temporary could land inside one
    for name in ("vd", "vs1", "vs2"):
        if name in fixed:
            test_data.vec_regs.allocate_operand(name, fixed[name], int(max(p.lmul, 1)), suppress_overlap=True)
    # The data pointers are left unset, so the generator registers new random data
    return generate_random_vector_params(
        test_data, instr_name, record.instr_type, p.lmul, suite=p.vector_suite or "base", **fixed
    )


def add_second_testcases(instr_name: str, test_data: TestData, chunks: list[TestChunk]) -> list[TestChunk]:
    """Append a second testcase for each timed testcase whose key has no other, with new random data.

    The second testcases go at the end, in the order they are generated: a chunk's code names the signature
    and data pointer registers current when it was generated, so chunks must run in generation order.
    """
    from testgen.data.state import return_testcase_registers
    from testgen.formatters import format_single_testcase

    records: list[LatencyRecord] = list(test_data.latency_records)
    counts: dict[str, int] = {}
    for record in records:
        counts[record.key] = counts.get(record.key, 0) + 1
    seconds: list[TestChunk] = []
    for record in records:
        if counts[record.key] != 1:
            continue
        params = _second_params(test_data, instr_name, record)
        seconds.append(
            format_single_testcase(
                instr_name,
                record.instr_type,
                test_data,
                params,
                f"{record.desc}, again with random data to compare its latency",
                f"{record.bin_name}_data2",
                record.coverpoint,
            )
        )
        return_testcase_registers(test_data, params)
    return [*chunks, *seconds]
