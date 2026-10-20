##################################
# cp_custom_vfredusum.py
#
# Range-checked tests for the unordered floating-point sum reductions vfredusum.vs and vfwredusum.vs.
# david_harris@hmc.edu Oct 2026
# SPDX-License-Identifier: Apache-2.0
##################################

"""
Tests for vfredusum.vs and vfwredusum.vs that accept every legal reduction tree.

The result of an unordered reduction depends on the tree and on the format of each node, so these tests do not
compare vd[0] with the reference model's value. For each testcase, _redusum_model computes every legal outcome at
generation time, and the assembly checks that vd[0] is one of them and that fflags holds every flag that must be
raised and no flag that cannot be. A passing check records 0 in the signature; a failing one records the result
(never 0) and fflags | 0x100, so the failure report shows what the DUT produced.

The reductions use LMUL=8 so that vl can reach VLMAX = 8*VLEN/SEW. The preprocessor removes testcases whose vl
exceeds VLMAX for the configuration.
"""

import random

from testgen.asm.helpers import write_sigupd
from testgen.coverpoints.registry import add_coverpoint_generator
from testgen.coverpoints.vector import _redusum_model as model
from testgen.data.state import TestData
from testgen.data.test_chunk import TestChunk

_VL_SWEEP = (1, 2, 3, 4, 8, 16, 32, 64, 128, 256, 512)
_DETERMINISM_VLS = (3, 8, 16, 512)
_LMUL = 8
_VLEN_MAX = 1024
_MASK_BITS = 8 * _VLEN_MAX // 16  # VLMAX at SEW=16, LMUL=8 and the largest VLEN ACT supports
_VS2, _VS1, _VD = 8, 16, 24  # vs2 is the v8-v15 group; vs1 and vd are single registers
_SAVE, _SAVE_RDN = 28, 29  # first results kept for the determinism checks
_REPORT_FLAGS = 0x100  # set in a failing fflags report so that fflags = 0 still reads as a failure
_REG_NAMES = ("a", "n", "t", "f", "p", "r", "u", "f1", "f2")


class _Ctx:
    """Per-call state: instruction, element and accumulator formats, and the testcases built so far."""

    def __init__(self, instr_name: str, coverpoint: str, test_data: TestData) -> None:
        assert test_data.config.sew is not None, "SEW must be provided for vector tests"
        self.instr = instr_name
        self.coverpoint = coverpoint
        self.td = test_data
        self.sew = test_data.config.sew
        self.widening = instr_name.startswith("vfw")
        self.efmt = model.FORMATS[self.sew]
        self.acc = model.FORMATS[2 * self.sew] if self.widening else self.efmt
        self.w = self.acc.width
        self.vlmax = _LMUL * _VLEN_MAX // self.sew
        self.prefix = f"redusum_{'w' if self.widening else ''}e{self.sew}"
        self.chunks: list[TestChunk] = []
        self.labels: list[str] = []
        self.regs: dict[str, int] = {}

    def skip(self) -> bool:
        return self.sew > self.td.config.flen

    def data(self, name: str, elems: list[int], width: int) -> str:
        """Register a data label used by the current testcase."""
        label = f"{self.prefix}_{name}"
        self.td.register_vector_data(label, width, elements=elems)
        self.labels.append(label)
        return label

    def acc_const(self, name: str, value: int) -> str:
        return self.data(f"{name}_{value:x}", [value], self.w)

    def begin(self) -> list[str]:
        """Start a testcase chunk with fresh integer registers; return its (empty) list of lines."""
        self.td.begin_test_chunk()
        self.labels = []
        regs = self.td.int_regs.get_registers(len(_REG_NAMES), exclude_regs=[0])
        self.regs = dict(zip(_REG_NAMES, regs, strict=True))
        return []

    def end(self, lines: list[str]) -> None:
        tc = self.td.test_chunk
        assert tc is not None
        tc.code.extend(lines)
        for label in dict.fromkeys(self.labels):
            elems, width = self.td.vector_labels[label]
            tc.vector_labels.append((label, elems, width))
        self.td.int_regs.return_registers(list(self.regs.values()))
        self.chunks.append(self.td.end_test_chunk())


# ---------------------------------------------------------------------------------------------------------------
# Operand values
# ---------------------------------------------------------------------------------------------------------------


def _fval(fmt: model.Fmt, mant: int, exp: int) -> int:
    """Encode mant * 2^exp, which must be exactly representable in fmt."""
    shift = exp + fmt.q
    mag = abs(mant)
    if shift >= 0:
        x = mag << shift
    else:
        assert mag & ((1 << -shift) - 1) == 0, "value below the smallest subnormal"
        x = mag >> -shift
    return model.encode(-x if mant < 0 else x, mant < 0, fmt)


def _edge_values(fmt: model.Fmt) -> dict[str, int]:
    """Edge values by class name."""
    return {
        "pos0": 0,
        "neg0": fmt.sign_bit,
        "posinf": fmt.pos_inf,
        "neginf": fmt.pos_inf | fmt.sign_bit,
        "qnan": fmt.canonical_nan,
        "negqnanpayload": fmt.canonical_nan | fmt.sign_bit | 1,
        "snan": fmt.pos_inf | 1,
        "posmax": model.encode(fmt.max_norm, False, fmt),
        "negmax": model.encode(-fmt.max_norm, False, fmt),
        "minsub": 1,
        "neg1": _fval(fmt, -1, 0),
        "onepulp": _fval(fmt, (1 << (fmt.prec - 1)) + 1, 1 - fmt.prec),
    }


def _exact_family(ctx: _Ctx, variant: str) -> tuple[int, list[int]]:
    """
    Order-independent data: small integers times a power of two, bounded so that every partial sum is a value of
    the accumulator format. The scale puts them in the normal ("int"), subnormal ("sub") or top-binade ("top")
    range of the element format.
    """
    scale = {"int": 0, "sub": ctx.efmt.emin - ctx.efmt.prec + 1, "top": ctx.efmt.emax - ctx.efmt.prec + 1}[variant]
    rng = random.Random(f"{ctx.prefix}_{variant}")
    limit = min(((1 << ctx.acc.prec) - 1) // (_MASK_BITS + 1), (1 << ctx.efmt.prec) - 1)
    vals = [rng.randint(-limit, limit) for _ in range(ctx.vlmax + 1)]
    return _fval(ctx.acc, vals[0], scale), [_fval(ctx.efmt, v, scale) for v in vals[1:]]


def _mild_family(ctx: _Ctx, scale: int = 0, negate: bool = False) -> tuple[int, list[int]]:
    """
    Somewhat order-dependent data: scalar 2^t and every element c = 0.75 ulp(2^t) in the accumulator format.
    Adding the elements to the scalar one at a time rounds each one to 0 or 1 ulp, while adding them together
    first keeps their sum, so the legal results spread by about one ulp per four elements.
    """
    t = (1 if ctx.widening and ctx.sew == 16 else 0) + scale
    sgn = -1 if negate else 1
    c = _fval(ctx.efmt, 3 * sgn, t - ctx.acc.prec - 1)
    return _fval(ctx.acc, sgn, t), [c] * ctx.vlmax


def _cancel_family(ctx: _Ctx, n: int, scale: int = 0, negate: bool = False) -> tuple[int, list[int]]:
    """
    Maximally order-dependent data: element 0 is +B, element n-1 is -B, up to eight copies of t = 3/8 ulp(B) lie
    evenly between them, and the other elements are alternating signed zeros. The scalar is also t. Absorbing each
    t into +-B before they cancel loses it or rounds it up to a whole ulp(B), while adding the ts together first
    keeps them, so the legal results range from 0 to well above the exact sum.
    """
    eb = ctx.efmt.emax if ctx.widening else ctx.acc.prec + 1
    et = eb - ctx.acc.prec + 1 - 3
    sgn = -1 if negate else 1
    t = _fval(ctx.efmt, 3 * sgn, et + scale)
    elems = [ctx.efmt.sign_bit if i % 2 else 0 for i in range(n)]
    elems[0] = _fval(ctx.efmt, sgn, eb + scale)
    if n >= 3:
        elems[n - 1] = _fval(ctx.efmt, -sgn, eb + scale)
    elif n == 2:
        elems[1] = t
    inner = list(range(1, n - 1))
    m = min(len(inner), 8)
    for j in range(m):
        elems[inner[(j * len(inner)) // m]] = t
    return _fval(ctx.acc, 3 * sgn, et + scale), elems


def _random_mask() -> list[int]:
    """Fixed pseudo-random mask bytes covering _MASK_BITS elements (about half active).

    Elements 0 and 2 are active and element 1 is not, so vl = 1, 2 and 3 have active and (for vl >= 2) inactive
    elements.
    """
    rng = random.Random("vfredusum_mask")
    mask = [rng.randrange(256) for _ in range(_MASK_BITS // 8)]
    mask[0] = (mask[0] & ~0b111) | 0b101
    return mask


def _active(elems: list[int], mask: list[int] | None, n: int) -> list[int]:
    if mask is None:
        return elems[:n]
    return [elems[i] for i in range(n) if mask[i // 8] >> (i % 8) & 1]


def _outcomes(ctx: _Ctx, scalar: int, active: list[int], mode: int) -> model.Result:
    res = model.exact_bits(scalar, active, mode, ctx.sew, ctx.widening)
    if res is None:
        res = model.reduce_bits(scalar, active, mode, ctx.sew, ctx.widening)
    return res


def _same(a: model.Result, b: model.Result) -> bool:
    fields = ("lo_bits", "hi_bits", "pos_inf", "neg_inf", "nan", "may", "must", "passthrough")
    return all(getattr(a, f) == getattr(b, f) for f in fields)


# ---------------------------------------------------------------------------------------------------------------
# Assembly
# ---------------------------------------------------------------------------------------------------------------


def _guard(ctx: _Ctx, n: int) -> list[str]:
    return [f"#if (UDB_VLEN * {_LMUL} / {ctx.sew}) >= {n}"] if n > _LMUL else []


def _endguard(ctx: _Ctx, n: int) -> list[str]:
    return ["#endif"] if _guard(ctx, n) else []


def _load(
    ctx: _Ctx,
    n: int,
    elems: str,
    scalar: str,
    mask: str | None = None,
    vd_init: str | None = None,
    vs2: int = _VS2,
    vs1: int = _VS1,
    vd: int = _VD,
) -> list[str]:
    """Set vl = n at LMUL=8 and load vs2, the mask, vs1[0] and optionally vd[0]."""
    r = ctx.regs
    lines = [
        f"LI(x{r['n']}, {n}) # vl",
        f"vsetvli x{r['t']}, x{r['n']}, e{ctx.sew}, m{_LMUL}, tu, mu",
        f"LA(x{r['a']}, {elems})",
        f"vle{ctx.sew}.v v{vs2}, (x{r['a']}) # vs2 elements",
    ]
    if mask is not None:
        lines += [f"LA(x{r['a']}, {mask})", f"vlm.v v0, (x{r['a']}) # mask"]
    lines += [
        f"vsetivli x0, 1, e{ctx.w}, m1, tu, mu",
        f"LA(x{r['a']}, {scalar})",
        f"vle{ctx.w}.v v{vs1}, (x{r['a']}) # vs1[0]",
    ]
    if vd_init is not None:
        lines += [f"LA(x{r['a']}, {vd_init})", f"vle{ctx.w}.v v{vd}, (x{r['a']}) # vd sentinel"]
    lines.append(f"vsetvli x{r['t']}, x{r['n']}, e{ctx.sew}, m{_LMUL}, tu, mu")
    return lines


def _reduce(
    ctx: _Ctx,
    mode: int,
    label_line: str,
    masked: bool = False,
    vs2: int = _VS2,
    vs1: int = _VS1,
    vd: int = _VD,
    flags_reg: str = "f",
) -> list[str]:
    return [
        f"fsrmi {mode} # frm = {model.MODE_NAMES[mode].upper()}",
        "fsflagsi 0 # clear fflags",
        label_line,
        f"{ctx.instr} v{vd}, v{vs2}, v{vs1}{', v0.t' if masked else ''}",
        f"csrr x{ctx.regs[flags_reg]}, fflags",
        "fsrmi 0",
        f"vsetivli x0, 1, e{ctx.w}, m1, tu, mu",
    ]


def _sign_lines(ctx: _Ctx) -> list[str]:
    """v2 = sign bit; x{t} = width - 1."""
    t = ctx.regs["t"]
    return [f"LI(x{t}, {ctx.w - 1})", "vmv.v.i v2, 1", f"vsll.vx v2, v2, x{t} # sign bit"]


def _report(ctx: _Ctx, value_ok: int, flags_ok: int, src: int = _VD) -> list[str]:
    """Record 0 for a pass; otherwise the result (never 0) and fflags | 0x100."""
    r, u, f = ctx.regs["r"], ctx.regs["u"], ctx.regs["f"]
    return [
        f"vmv.x.s x{r}, v{src} # result for the failure report",
        f"seqz x{u}, x{r}",
        f"or x{r}, x{r}, x{u} # never 0",
        f"addi x{u}, x{value_ok}, -1 # 0 if vd[0] is legal",
        f"and x{r}, x{r}, x{u}",
        write_sigupd(r, ctx.td),
        f"ori x{u}, x{f}, {_REPORT_FLAGS}",
        f"addi x{flags_ok}, x{flags_ok}, -1 # 0 if fflags are legal",
        f"and x{u}, x{u}, x{flags_ok}",
        write_sigupd(u, ctx.td),
    ]


def _check(ctx: _Ctx, res: model.Result, vd: int = _VD) -> list[str]:
    """Check vd[0] and fflags against every legal outcome in res. Assumes SEW = accumulator width, vl = 1."""
    a, p, t, u, f = (ctx.regs[k] for k in ("a", "p", "t", "u", "f"))
    lines: list[str] = []
    if res.passthrough is not None:
        # No active elements and a NaN scalar: vs1[0] unchanged with no flags, or canonicalized
        canon = ctx.acc_const("canon_nan", ctx.acc.canonical_nan)
        lines += [
            f"vmseq.vv v5, v{vd}, v{_VS1} # vs1[0] unchanged",
            f"vcpop.m x{p}, v5",
            f"seqz x{t}, x{f} # with no flags",
            f"and x{p}, x{p}, x{t}",
            f"LA(x{a}, {canon})",
            f"vle{ctx.w}.v v3, (x{a})",
            f"vmseq.vv v5, v{vd}, v3 # or the canonical NaN",
            f"vcpop.m x{u}, v5",
            f"xori x{t}, x{f}, {res.passthrough_canon_flags:#x}",
            f"seqz x{t}, x{t} # with NV exactly when vs1[0] is a signaling NaN",
            f"and x{u}, x{u}, x{t}",
            f"or x{p}, x{p}, x{u}",
            f"mv x{t}, x{p}",
        ]
        return lines + _report(ctx, p, t, vd)
    if res.lo_bits is not None:
        assert res.hi_bits is not None
        lo = ctx.acc_const("key", model.key_of_bits(res.lo_bits, ctx.w))
        hi = ctx.acc_const("key", model.key_of_bits(res.hi_bits, ctx.w))
        lines += _sign_lines(ctx)
        lines += [
            f"vsra.vx v1, v{vd}, x{t} # all ones if negative",
            "vor.vv v1, v1, v2",
            f"vxor.vv v1, v1, v{vd} # v1 = order key of vd[0]",
            f"LA(x{a}, {lo})",
            f"vle{ctx.w}.v v3, (x{a}) # key of the lowest legal value {res.lo_bits:#x}",
            f"LA(x{a}, {hi})",
            f"vle{ctx.w}.v v4, (x{a}) # key of the highest legal value {res.hi_bits:#x}",
            "vmsleu.vv v5, v1, v4 # key <= highest",
            "vmsleu.vv v6, v3, v1 # lowest <= key",
            "vmand.mm v5, v5, v6",
        ]
    else:
        lines.append("vmclr.m v5 # no finite result is legal")
    for allowed, name, value in (
        (res.pos_inf, "pos_inf", ctx.acc.pos_inf),
        (res.neg_inf, "neg_inf", ctx.acc.pos_inf | ctx.acc.sign_bit),
        (res.nan, "canon_nan", ctx.acc.canonical_nan),
    ):
        if allowed:
            label = ctx.acc_const(name, value)
            lines += [
                f"LA(x{a}, {label})",
                f"vle{ctx.w}.v v3, (x{a})",
                f"vmseq.vv v6, v{vd}, v3 # or {name}",
                "vmor.mm v5, v5, v6",
            ]
    lines += [
        f"vcpop.m x{p}, v5 # 1 if vd[0] is legal",
        f"andi x{t}, x{f}, {~res.may & 0x1F:#x} # flags that cannot be raised",
        f"andi x{u}, x{f}, {res.must:#x}",
        f"xori x{u}, x{u}, {res.must:#x} # required flags that are missing",
        f"or x{t}, x{t}, x{u}",
        f"seqz x{t}, x{t} # 1 if fflags are legal",
    ]
    return lines + _report(ctx, p, t, vd)


# ---------------------------------------------------------------------------------------------------------------
# Coverpoint generators
# ---------------------------------------------------------------------------------------------------------------


@add_coverpoint_generator("cp_custom_vfredusum_sweep")
def cp_custom_vfredusum_sweep(
    instr_name: str, instr_type: str, coverpoint: str, test_data: TestData
) -> list[TestChunk]:
    """
    vl = 1, 2, 3, 4, 8, 16, ... VLMAX at every rounding mode, unmasked, with a pseudo-random mask and with no
    active elements, for data whose sum is the same for every tree (exact), differs by a few ulps by tree (mild),
    or ranges from 0 to well above the exact sum by tree (cancel). Exact data also runs scaled into the subnormal
    and top-binade ranges.
    """
    del instr_type
    ctx = _Ctx(instr_name, coverpoint, test_data)
    if ctx.skip():
        return []
    mask = _random_mask()
    sweep = [n for n in _VL_SWEEP if n <= ctx.vlmax]
    data: list[tuple[str, int, list[int], int | None]] = []
    for fam, (scalar, elems) in (("exact", _exact_family(ctx, "int")), ("mild", _mild_family(ctx))):
        data += [(fam, scalar, elems, n) for n in sweep]
    data += [("cancel", *_cancel_family(ctx, n), n) for n in sweep]

    masks = {
        "unmasked": None,
        "masked": (f"{ctx.prefix}_mask_random", mask),
        "noactive": (f"{ctx.prefix}_mask_zero", [0] * (_MASK_BITS // 8)),
    }
    for fam, scalar, elems, n in data:
        assert n is not None
        for mtag, mdata in masks.items():
            for mode in model.MODES:
                active = elems[:n] if mdata is None else _active(elems, mdata[1], n)
                res = (
                    _outcomes(ctx, scalar, active, mode)
                    if active
                    else model.reduce_bits(scalar, [], mode, ctx.sew, ctx.widening)
                )
                sl = f"{ctx.prefix}_{fam}_scalar"
                el = f"{ctx.prefix}_{fam}_elems" + (f"_n{n}" if fam == "cancel" else "")
                name = f"{fam}_vl{n}_{mtag}_{model.MODE_NAMES[mode]}"
                _data_case(
                    ctx,
                    name,
                    f"{fam} data, vl={n}, {mtag}, frm={model.MODE_NAMES[mode]}",
                    n,
                    mode,
                    (sl, [scalar], ctx.w),
                    (el, elems, ctx.sew),
                    None if mdata is None else (mdata[0], mdata[1], 8),
                    res,
                )

    for variant in ("sub", "top"):
        scalar, elems = _exact_family(ctx, variant)
        for n in sweep:
            res = _outcomes(ctx, scalar, elems[:n], model.RNE)
            _data_case(
                ctx,
                f"exact{variant}_vl{n}_unmasked_rne",
                f"exact {variant} data, vl={n}, unmasked, frm=rne",
                n,
                model.RNE,
                (f"{ctx.prefix}_exact{variant}_scalar", [scalar], ctx.w),
                (f"{ctx.prefix}_exact{variant}_elems", elems, ctx.sew),
                None,
                res,
            )
    return ctx.chunks


def _data_case(
    ctx: _Ctx,
    bin_name: str,
    desc: str,
    n: int,
    mode: int,
    scalar: tuple[str, list[int], int],
    elems: tuple[str, list[int], int],
    mask: tuple[str, list[int], int] | None,
    res: model.Result,
    vd_init: tuple[str, list[int], int] | None = None,
) -> None:
    """Register the operand data (by full label) and emit one testcase."""
    labels = []
    for item in (scalar, elems, mask, vd_init):
        if item is None:
            labels.append(None)
            continue
        label, values, width = item
        ctx.td.register_vector_data(label, width, elements=values)
        labels.append(label)
    sl, el, ml, vl = labels
    assert sl is not None and el is not None

    lines = ctx.begin()
    ctx.labels = [x for x in labels if x is not None]
    lines.append(f"# Testcase {desc}")
    lines += _guard(ctx, n)
    lines += _load(ctx, n, el, sl, ml, vl)
    lines += _reduce(ctx, mode, ctx.td.add_testcase(bin_name, ctx.coverpoint), masked=ml is not None)
    lines += _check(ctx, res)
    lines += _endguard(ctx, n)
    ctx.end(lines)


def _class_data(ctx: _Ctx, cls: str, fmt: model.Fmt, values: dict[str, int]) -> tuple[str, list[int], int]:
    return (f"{ctx.prefix}_{'acc' if fmt is ctx.acc else 'elem'}_{cls}", [values[cls]], fmt.width)


_SPECIAL_LISTS = (
    ("posinf", "neginf"),
    ("posinf", "posinf"),
    ("posmax", "posmax"),
    ("posmax", "negmax"),
    ("negmax", "neginf"),
    ("qnan", "posinf", "neginf"),
    ("snan", "neginf"),
    ("neg0", "neg0"),
    ("pos0", "neg0"),
    ("minsub", "minsub"),
    ("onepulp", "neg1"),
    ("posmax", "posmax", "negmax", "negmax"),
)
_SPECIAL_SCALARS = ("pos0", "neg0", "posinf", "qnan", "snan", "posmax", "negmax", "minsub")


@add_coverpoint_generator("cp_custom_vfredusum_specials")
def cp_custom_vfredusum_specials(
    instr_name: str, instr_type: str, coverpoint: str, test_data: TestData
) -> list[TestChunk]:
    """
    Signed zeros, infinities, NaNs, the largest finite values and subnormals, both as vs1[0] and as elements:
    every scalar class with every single element class (vl = 1), and selected element lists (vl = 2 to 4) that
    produce +inf + -inf, overflow, overflow that a wider intermediate format avoids, and signed-zero sums. Each
    case runs at RNE and at every other rounding mode whose legal outcomes differ.
    """
    del instr_type
    ctx = _Ctx(instr_name, coverpoint, test_data)
    if ctx.skip():
        return []
    avals = _edge_values(ctx.acc)
    evals = _edge_values(ctx.efmt)
    cases: list[tuple[str, tuple[str, ...]]] = [(s, (e,)) for s in avals for e in evals]
    cases += [(s, lst) for lst in _SPECIAL_LISTS for s in _SPECIAL_SCALARS]
    for scalar_cls, elem_cls in cases:
        scalar = avals[scalar_cls]
        elems = [evals[c] for c in elem_cls]
        name = f"{scalar_cls}_{'_'.join(elem_cls)}"
        el = (f"{ctx.prefix}_elems_{'_'.join(elem_cls)}", elems, ctx.sew)
        base = _outcomes(ctx, scalar, elems, model.RNE)
        for mode in model.MODES:
            res = base if mode == model.RNE else _outcomes(ctx, scalar, elems, mode)
            if mode != model.RNE and _same(res, base):
                continue
            _data_case(
                ctx,
                f"{name}_{model.MODE_NAMES[mode]}",
                f"vs1[0]={scalar_cls}, vs2={list(elem_cls)}, frm={model.MODE_NAMES[mode]}",
                len(elems),
                mode,
                _class_data(ctx, scalar_cls, ctx.acc, avals),
                el,
                None,
                res,
            )
    return ctx.chunks


@add_coverpoint_generator("cp_custom_vfredusum_noactive")
def cp_custom_vfredusum_noactive(
    instr_name: str, instr_type: str, coverpoint: str, test_data: TestData
) -> list[TestChunk]:
    """
    No active elements: vl = 1 and 8 with an all-zero mask and signaling-NaN elements, for every vs1[0] class, at
    RNE and RDN (whose additive identities differ). vd[0] must be vs1[0]; a NaN scalar may instead become the
    canonical NaN, with NV only if it was signaling. Also vl = 0, which must leave vd and fflags unchanged.
    """
    del instr_type
    ctx = _Ctx(instr_name, coverpoint, test_data)
    if ctx.skip():
        return []
    avals = _edge_values(ctx.acc)
    snans = [_edge_values(ctx.efmt)["snan"]] * 8
    zero_mask = (f"{ctx.prefix}_mask_zero", [0] * (_MASK_BITS // 8), 8)
    el = (f"{ctx.prefix}_elems_snan8", snans, ctx.sew)
    for cls, scalar in avals.items():
        for n in (1, 8):
            for mode in (model.RNE, model.RDN):
                res = model.reduce_bits(scalar, [], mode, ctx.sew, ctx.widening)
                _data_case(
                    ctx,
                    f"{cls}_vl{n}_{model.MODE_NAMES[mode]}",
                    f"no active elements, vs1[0]={cls}, vl={n}, frm={model.MODE_NAMES[mode]}",
                    n,
                    mode,
                    _class_data(ctx, cls, ctx.acc, avals),
                    el,
                    zero_mask,
                    res,
                )
    sentinel = _fval(ctx.acc, 5, -1)
    keep = model.Result(sentinel, sentinel, False, False, False, False, 0, 0)
    for masked in (False, True):
        mtag = "masked" if masked else "unmasked"
        _data_case(
            ctx,
            f"vl0_{mtag}",
            f"vl=0, {mtag}: vd and fflags unchanged",
            0,
            model.RNE,
            _class_data(ctx, "neg1", ctx.acc, avals),
            el,
            zero_mask if masked else None,
            keep,
            (f"{ctx.prefix}_sentinel", [sentinel], ctx.w),
        )
    return ctx.chunks


@add_coverpoint_generator("cp_custom_vfredusum_determinism")
def cp_custom_vfredusum_determinism(
    instr_name: str, instr_type: str, coverpoint: str, test_data: TestData
) -> list[TestChunk]:
    """
    The reduction tree is fixed for a given vtype and vl, so for order-dependent data D the result must satisfy
    identities that hold for any one tree: repeating D (in other registers) gives the same bits; 2^k * D gives
    2^k times the result; -D gives the negated result at RNE; and -D at RUP gives the negation of D at RDN. The
    flags must also match. The first results are also range-checked.
    """
    del instr_type
    ctx = _Ctx(instr_name, coverpoint, test_data)
    if ctx.skip():
        return []
    for n in (v for v in _DETERMINISM_VLS if v <= ctx.vlmax):
        for fam in ("cancel", "mild"):
            if fam == "cancel":
                k = -3 if ctx.widening else 3
                d, ds, dn = (_cancel_family(ctx, n), _cancel_family(ctx, n, k), _cancel_family(ctx, n, 0, True))
            else:
                k = 3
                d, ds, dn = (_mild_family(ctx), _mild_family(ctx, k), _mild_family(ctx, 0, True))
            _determinism_case(ctx, fam, n, k, d, ds, dn)
    return ctx.chunks


def _determinism_case(
    ctx: _Ctx,
    fam: str,
    n: int,
    k: int,
    d: tuple[int, list[int]],
    ds: tuple[int, list[int]],
    dn: tuple[int, list[int]],
) -> None:
    lines = ctx.begin()
    labels = {}
    for tag, (scalar, elems) in (("d", d), ("s", ds), ("n", dn)):
        suffix = f"_n{n}" if fam == "cancel" else ""
        labels[tag] = (
            ctx.data(f"det_{fam}_{tag}_scalar", [scalar], ctx.w),
            ctx.data(f"det_{fam}_{tag}_elems{suffix}", elems[: max(n, 1)] if fam == "cancel" else elems, ctx.sew),
        )
    r = ctx.regs
    lines.append(f"# Testcase determinism, {fam} data, vl={n}")
    lines += _guard(ctx, n)

    def run(
        tag: str, mode: int, bin_name: str, flags: str = "f", vs2: int = _VS2, vs1: int = _VS1, vd: int = _VD
    ) -> list[str]:
        scalar_label, elems_label = labels[tag]
        out = _load(ctx, n, elems_label, scalar_label, vs2=vs2, vs1=vs1, vd=vd)
        return out + _reduce(
            ctx, mode, ctx.td.add_testcase(bin_name, ctx.coverpoint), vs2=vs2, vs1=vs1, vd=vd, flags_reg=flags
        )

    def compare(expected: int, actual: int, flags_ref: str) -> list[str]:
        p, t = r["p"], r["t"]
        return [
            f"vmseq.vv v5, v{actual}, v{expected}",
            f"vcpop.m x{p}, v5 # 1 if the result matches",
            f"xor x{t}, x{r['f']}, x{r[flags_ref]}",
            f"seqz x{t}, x{t} # 1 if fflags match",
            *_report(ctx, p, t, actual),
        ]

    zero_keep = [
        f"vsll.vi v4, v{_SAVE}, 1",
        "vmseq.vi v0, v4, 0 # first result is a zero",
        f"vmerge.vvm v3, v3, v{_SAVE}, v0 # zeros keep their bits",
    ]
    # D at RNE, range-checked, then kept with its flags
    res = _outcomes(ctx, d[0], d[1][:n], model.RNE)
    lines += run("d", model.RNE, f"{fam}_vl{n}_first")
    lines += _check(ctx, res)
    lines += [f"vmv1r.v v{_SAVE}, v{_VD}", f"mv x{r['f1']}, x{r['f']}"]
    # D again, from other registers
    lines += run("d", model.RNE, f"{fam}_vl{n}_repeat", vs2=16, vs1=25, vd=26)
    lines += compare(_SAVE, 26, "f1")
    # 2^k * D
    lines += run("s", model.RNE, f"{fam}_vl{n}_scaled")
    lines += [
        f"LI(x{r['t']}, {k})",
        f"vmv.v.x v3, x{r['t']}",
        f"LI(x{r['t']}, {ctx.acc.frac_bits})",
        f"vsll.vx v3, v3, x{r['t']}",
        f"vadd.vv v3, v3, v{_SAVE} # first result times 2^{k}",
        *zero_keep,
        *compare(3, _VD, "f1"),
    ]
    # -D at RNE
    lines += run("n", model.RNE, f"{fam}_vl{n}_negated")
    lines += [*_sign_lines(ctx), f"vxor.vv v3, v{_SAVE}, v2 # negated first result", *zero_keep]
    lines += compare(3, _VD, "f1")
    # D at RDN, range-checked and kept; -D at RUP must be its negation
    res = _outcomes(ctx, d[0], d[1][:n], model.RDN)
    lines += run("d", model.RDN, f"{fam}_vl{n}_rdn")
    lines += _check(ctx, res)
    lines += [f"vmv1r.v v{_SAVE_RDN}, v{_VD}", f"mv x{r['f2']}, x{r['f']}"]
    lines += run("n", model.RUP, f"{fam}_vl{n}_rup_negated")
    lines += [*_sign_lines(ctx), f"vxor.vv v3, v{_SAVE_RDN}, v2 # negated RDN result"]
    lines += compare(3, _VD, "f2")
    lines += _endguard(ctx, n)
    ctx.end(lines)
