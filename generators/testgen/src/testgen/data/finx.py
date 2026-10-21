# SPDX-License-Identifier: Apache-2.0

"""Directed Zfinx operands, expressed as integer bit patterns."""

# The product (1 + 2^-23) * (1 - 2^-23) rounds to 1 in binary32,
# but subtracting 1 in a fused operation retains the exact -2^-46 result.
FINX_DIRECTED_CASES: dict[str, dict[str, tuple[int, ...]]] = {
    "fadd.s": {
        "positive_tie": (0x3F800000, 0x33800000),
        "negative_tie": (0xBF800000, 0xB3800000),
        "cancel": (0x3F800000, 0xBF800000),
    },
    "fsub.s": {
        "positive_tie": (0x3F800000, 0xB3800000),
        "negative_tie": (0xBF800000, 0x33800000),
        "cancel": (0x3F800000, 0x3F800000),
    },
    "fmul.s": {"tininess_after_rounding": (0x00800001, 0x3F7FFFFE)},
    "fdiv.s": {"inexact_third": (0x3F800000, 0x40400000), "divide_zero": (0x3F800000, 0)},
    "fsqrt.s": {"inexact_sqrt_two": (0x40000000,), "negative_one": (0xBF800000,)},
    "fmadd.s": {
        "single_rounding": (0x3F800001, 0x3F7FFFFE, 0xBF800000),
        "tininess_after_rounding": (0x3F00FBFF, 0x80000001, 0x807FFFFF),
        "zero_times_inf": (0, 0x7F800000, 0x7FC00000),
    },
    "fmsub.s": {
        "single_rounding": (0x3F800001, 0x3F7FFFFE, 0x3F800000),
        "tininess_after_rounding": (0x3F00FBFF, 0x80000001, 0x007FFFFF),
        "zero_times_inf": (0, 0x7F800000, 0x7FC00000),
    },
    "fnmadd.s": {
        "single_rounding": (0x3F800001, 0x3F7FFFFE, 0xBF800000),
        "tininess_after_rounding": (0x3F00FBFF, 0x80000001, 0x807FFFFF),
        "zero_times_inf": (0, 0x7F800000, 0x7FC00000),
    },
    "fnmsub.s": {
        "single_rounding": (0x3F800001, 0x3F7FFFFE, 0x3F800000),
        "tininess_after_rounding": (0x3F00FBFF, 0x80000001, 0x007FFFFF),
        "zero_times_inf": (0, 0x7F800000, 0x7FC00000),
    },
    "fsgnj.s": {"quiet_payload": (0x7FC12345, 0x80000000), "signaling_payload": (0x7F812345, 0)},
    "fsgnjn.s": {"quiet_payload": (0x7FC12345, 0), "signaling_payload": (0x7F812345, 0x80000000)},
    "fsgnjx.s": {"quiet_payload": (0xFFC12345, 0x80000000), "signaling_payload": (0x7F812345, 0)},
    "fmin.s": {"signed_zeros": (0, 0x80000000), "quiet_number": (0x7FC12345, 0x3F800000)},
    "fmax.s": {"signed_zeros": (0x80000000, 0), "quiet_number": (0x3F800000, 0x7FC12345)},
    "feq.s": {"quiet_nan": (0x7FC12345, 0x3F800000), "signaling_nan": (0x7F812345, 0x3F800000)},
    "flt.s": {"quiet_nan": (0x7FC12345, 0x3F800000), "signaling_nan": (0x7F812345, 0x3F800000)},
    "fle.s": {"quiet_nan": (0x7FC12345, 0x3F800000), "signaling_nan": (0x7F812345, 0x3F800000)},
    "fclass.s": {"quiet_payload": (0x7FC12345,), "signaling_payload": (0x7F812345,)},
    "fcvt.w.s": {
        "positive_tie": (0x3FC00000,),
        "negative_tie": (0xBFC00000,),
        "last_positive": (0x4EFFFFFF,),
        "positive_overflow": (0x4F000000,),
        "minimum": (0xCF000000,),
        "negative_overflow": (0xCF000001,),
        "nan": (0x7FC12345,),
    },
    "fcvt.wu.s": {
        "positive_tie": (0x3FC00000,),
        "negative_tie": (0xBF000000,),
        "last_positive": (0x4F7FFFFF,),
        "positive_overflow": (0x4F800000,),
        "nan": (0x7FC12345,),
    },
    "fcvt.l.s": {
        "positive_tie": (0x3FC00000,),
        "negative_tie": (0xBFC00000,),
        "last_positive": (0x5EFFFFFF,),
        "positive_overflow": (0x5F000000,),
        "minimum": (0xDF000000,),
        "negative_overflow": (0xDF000001,),
        "nan": (0x7FC12345,),
    },
    "fcvt.lu.s": {
        "positive_tie": (0x3FC00000,),
        "negative_tie": (0xBF000000,),
        "last_positive": (0x5F7FFFFF,),
        "positive_overflow": (0x5F800000,),
        "nan": (0x7FC12345,),
    },
    "fcvt.s.w": {"positive_tie": (0x01000001,), "negative_tie": (0xFEFFFFFF,), "minimum": (0x80000000,)},
    "fcvt.s.wu": {"positive_tie": (0x01000001,), "maximum": (0xFFFFFFFF,)},
    "fcvt.s.l": {
        "positive_tie": (0x01000001,),
        "negative_tie": (0xFFFFFFFFFEFFFFFF,),
        "minimum": (0x8000000000000000,),
        "maximum": (0x7FFFFFFFFFFFFFFF,),
    },
    "fcvt.s.lu": {"positive_tie": (0x01000001,), "maximum": (0xFFFFFFFFFFFFFFFF,)},
}
