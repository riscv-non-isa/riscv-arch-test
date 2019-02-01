/*
 * Copyright (c) 2005-2019 Imperas Software Ltd., www.imperas.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied.
 *
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

/*============================================================================

This C source file is part of the SoftFloat IEEE Floating-Point Arithmetic
Package, Release 3e, by John R. Hauser.

Copyright 2011, 2012, 2013, 2014, 2015, 2016 The Regents of the University of
California.  All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

 1. Redistributions of source code must retain the above copyright notice,
    this list of conditions, and the following disclaimer.

 2. Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions, and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

 3. Neither the name of the University nor the names of its contributors may
    be used to endorse or promote products derived from this software without
    specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS "AS IS", AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, ARE
DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=============================================================================*/

// standard header files
#include <stdbool.h>
#include <stdint.h>

// VMI header files
#include "vmi/vmiMessage.h"
#include "vmi/vmiTypes.h"

// model header files
#include "riscvMessage.h"
#include "riscvSoftFloat.h"
#include "riscvStructure.h"
#include "riscvTypeRefs.h"


// host is little-endian
#define LITTLEENDIAN

// Int64 is fast on 64-bit host only
#if(IMPERAS_64_BIT_HOST)
    #define SOFTFLOAT_FAST_INT64
    #define SOFTFLOAT_FAST_DIV64TO32
#endif

#define INLINE          inline
#define INLINE_LEVEL    4


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: primitiveTypes.h
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#ifndef primitiveTypes_h
#define primitiveTypes_h 1

#ifdef SOFTFLOAT_FAST_INT64

#ifdef LITTLEENDIAN
struct uint128 { uint64_t v0, v64; };
struct uint64_extra { uint64_t extra, v; };
struct uint128_extra { uint64_t extra; struct uint128 v; };
#else
struct uint128 { uint64_t v64, v0; };
struct uint64_extra { uint64_t v, extra; };
struct uint128_extra { struct uint128 v; uint64_t extra; };
#endif

#endif

/*----------------------------------------------------------------------------
| These macros are used to isolate the differences in word order between big-
| endian and little-endian platforms.
*----------------------------------------------------------------------------*/
#ifdef LITTLEENDIAN
#define wordIncr 1
#define indexWord( total, n ) (n)
#define indexWordHi( total ) ((total) - 1)
#define indexWordLo( total ) 0
#define indexMultiword( total, m, n ) (n)
#define indexMultiwordHi( total, n ) ((total) - (n))
#define indexMultiwordLo( total, n ) 0
#define indexMultiwordHiBut( total, n ) (n)
#define indexMultiwordLoBut( total, n ) 0
#define INIT_UINTM4( v3, v2, v1, v0 ) { v0, v1, v2, v3 }
#else
#define wordIncr -1
#define indexWord( total, n ) ((total) - 1 - (n))
#define indexWordHi( total ) 0
#define indexWordLo( total ) ((total) - 1)
#define indexMultiword( total, m, n ) ((total) - 1 - (m))
#define indexMultiwordHi( total, n ) 0
#define indexMultiwordLo( total, n ) ((total) - (n))
#define indexMultiwordHiBut( total, n ) 0
#define indexMultiwordLoBut( total, n ) (n)
#define INIT_UINTM4( v3, v2, v1, v0 ) { v3, v2, v1, v0 }
#endif

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: softfloat_types.h
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


/*----------------------------------------------------------------------------
| Types used to pass 16-bit, 32-bit, 64-bit, and 128-bit floating-point
| arguments and results to/from functions.  These types must be exactly
| 16 bits, 32 bits, 64 bits, and 128 bits in size, respectively.  Where a
| platform has "native" support for IEEE-Standard floating-point formats,
| the types below may, if desired, be defined as aliases for the native types
| (typically 'float' and 'double', and possibly 'long double').
*----------------------------------------------------------------------------*/
typedef struct { uint16_t v; } float16_t;
typedef struct { uint32_t v; } float32_t;
typedef struct { uint64_t v; } float64_t;
typedef struct { uint64_t v[2]; } float128_t;

/*----------------------------------------------------------------------------
| The format of an 80-bit extended floating-point number in memory.  This
| structure must contain a 16-bit field named 'signExp' and a 64-bit field
| named 'signif'.
*----------------------------------------------------------------------------*/
#ifdef LITTLEENDIAN
struct extFloat80M { uint64_t signif; uint16_t signExp; };
#else
struct extFloat80M { uint16_t signExp; uint64_t signif; };
#endif

/*----------------------------------------------------------------------------
| The type used to pass 80-bit extended floating-point arguments and
| results to/from functions.  This type must have size identical to
| 'struct extFloat80M'.  Type 'extFloat80_t' can be defined as an alias for
| 'struct extFloat80M'.  Alternatively, if a platform has "native" support
| for IEEE-Standard 80-bit extended floating-point, it may be possible,
| if desired, to define 'extFloat80_t' as an alias for the native type
| (presumably either 'long double' or a nonstandard compiler-intrinsic type).
| In that case, the 'signif' and 'signExp' fields of 'struct extFloat80M'
| must align exactly with the locations in memory of the sign, exponent, and
| significand of the native type.
*----------------------------------------------------------------------------*/
typedef struct extFloat80M extFloat80_t;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: softfloat.h
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#ifndef THREAD_LOCAL
#define THREAD_LOCAL __thread
#endif

/*----------------------------------------------------------------------------
| Software floating-point underflow tininess-detection mode.
*----------------------------------------------------------------------------*/
extern THREAD_LOCAL uint_fast8_t softfloat_detectTininess;
enum {
    softfloat_tininess_beforeRounding = 0,
    softfloat_tininess_afterRounding  = 1
};

/*----------------------------------------------------------------------------
| Software floating-point rounding mode.  (Mode "odd" is supported only if
| SoftFloat is compiled with macro 'SOFTFLOAT_ROUND_ODD' defined.)
*----------------------------------------------------------------------------*/
extern THREAD_LOCAL uint_fast8_t softfloat_roundingMode;
enum {
    softfloat_round_near_even   = RV_RM_RTE,
    softfloat_round_minMag      = RV_RM_RTZ,
    softfloat_round_min         = RV_RM_RDN,
    softfloat_round_max         = RV_RM_RUP,
    softfloat_round_near_maxMag = RV_RM_RMM
};

/*----------------------------------------------------------------------------
| Software floating-point exception flags.
*----------------------------------------------------------------------------*/
extern THREAD_LOCAL uint_fast8_t softfloat_exceptionFlags;
enum {
    softfloat_flag_invalid   = (1<<0),  // corresponds to VMI I flag
    softfloat_flag_infinite  = (1<<2),  // corresponds to VMI Z flag
    softfloat_flag_overflow  = (1<<3),  // corresponds to VMI O flag
    softfloat_flag_underflow = (1<<4),  // corresponds to VMI U flag
    softfloat_flag_inexact   = (1<<5),  // corresponds to VMI P flag
};

/*----------------------------------------------------------------------------
| Routine to raise any or all of the software floating-point exception flags.
*----------------------------------------------------------------------------*/
void softfloat_raiseFlags( uint_fast8_t );




////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: specialize.h
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


/*----------------------------------------------------------------------------
| Default value for `softfloat_detectTininess'.
*----------------------------------------------------------------------------*/
#define init_detectTininess softfloat_tininess_afterRounding

/*----------------------------------------------------------------------------
| The values to return on conversions to 32-bit integer formats that raise an
| invalid exception.
*----------------------------------------------------------------------------*/
#define ui32_fromPosOverflow 0xFFFFFFFF
#define ui32_fromNegOverflow 0
#define ui32_fromNaN         0xFFFFFFFF
#define i32_fromPosOverflow  0x7FFFFFFF
#define i32_fromNegOverflow  (-0x7FFFFFFF - 1)
#define i32_fromNaN          0x7FFFFFFF

/*----------------------------------------------------------------------------
| The values to return on conversions to 64-bit integer formats that raise an
| invalid exception.
*----------------------------------------------------------------------------*/
#define ui64_fromPosOverflow UINT64_C( 0xFFFFFFFFFFFFFFFF )
#define ui64_fromNegOverflow 0
#define ui64_fromNaN         UINT64_C( 0xFFFFFFFFFFFFFFFF )
#define i64_fromPosOverflow  UINT64_C( 0x7FFFFFFFFFFFFFFF )
#define i64_fromNegOverflow  (-UINT64_C( 0x7FFFFFFFFFFFFFFF ) - 1)
#define i64_fromNaN          UINT64_C( 0x7FFFFFFFFFFFFFFF )

/*----------------------------------------------------------------------------
| "Common NaN" structure, used to transfer NaN representations from one format
| to another.
*----------------------------------------------------------------------------*/
struct commonNaN { char _unused; };

/*----------------------------------------------------------------------------
| The bit pattern for a default generated 16-bit floating-point NaN.
*----------------------------------------------------------------------------*/
#define defaultNaNF16UI 0x7E00

/*----------------------------------------------------------------------------
| Returns true when 16-bit unsigned integer `uiA' has the bit pattern of a
| 16-bit floating-point signaling NaN.
| Note:  This macro evaluates its argument more than once.
*----------------------------------------------------------------------------*/
#define softfloat_isSigNaNF16UI( uiA ) ((((uiA) & 0x7E00) == 0x7C00) && ((uiA) & 0x01FF))

/*----------------------------------------------------------------------------
| Assuming `uiA' has the bit pattern of a 16-bit floating-point NaN, converts
| this NaN to the common NaN form, and stores the resulting common NaN at the
| location pointed to by `zPtr'.  If the NaN is a signaling NaN, the invalid
| exception is raised.
*----------------------------------------------------------------------------*/
#define softfloat_f16UIToCommonNaN( uiA, zPtr ) if ( ! ((uiA) & 0x0200) ) softfloat_raiseFlags( softfloat_flag_invalid )

/*----------------------------------------------------------------------------
| Converts the common NaN pointed to by `aPtr' into a 16-bit floating-point
| NaN, and returns the bit pattern of this value as an unsigned integer.
*----------------------------------------------------------------------------*/
#define softfloat_commonNaNToF16UI( aPtr ) ((uint_fast16_t) defaultNaNF16UI)

/*----------------------------------------------------------------------------
| Interpreting `uiA' and `uiB' as the bit patterns of two 16-bit floating-
| point values, at least one of which is a NaN, returns the bit pattern of
| the combined NaN result.  If either `uiA' or `uiB' has the pattern of a
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/
uint_fast16_t
 softfloat_propagateNaNF16UI( uint_fast16_t uiA, uint_fast16_t uiB );

/*----------------------------------------------------------------------------
| The bit pattern for a default generated 32-bit floating-point NaN.
*----------------------------------------------------------------------------*/
#define defaultNaNF32UI 0x7FC00000

/*----------------------------------------------------------------------------
| Returns true when 32-bit unsigned integer `uiA' has the bit pattern of a
| 32-bit floating-point signaling NaN.
| Note:  This macro evaluates its argument more than once.
*----------------------------------------------------------------------------*/
#define softfloat_isSigNaNF32UI( uiA ) ((((uiA) & 0x7FC00000) == 0x7F800000) && ((uiA) & 0x003FFFFF))

/*----------------------------------------------------------------------------
| Assuming `uiA' has the bit pattern of a 32-bit floating-point NaN, converts
| this NaN to the common NaN form, and stores the resulting common NaN at the
| location pointed to by `zPtr'.  If the NaN is a signaling NaN, the invalid
| exception is raised.
*----------------------------------------------------------------------------*/
#define softfloat_f32UIToCommonNaN( uiA, zPtr ) if ( ! ((uiA) & 0x00400000) ) softfloat_raiseFlags( softfloat_flag_invalid )

/*----------------------------------------------------------------------------
| Converts the common NaN pointed to by `aPtr' into a 32-bit floating-point
| NaN, and returns the bit pattern of this value as an unsigned integer.
*----------------------------------------------------------------------------*/
#define softfloat_commonNaNToF32UI( aPtr ) ((uint_fast32_t) defaultNaNF32UI)

/*----------------------------------------------------------------------------
| Interpreting `uiA' and `uiB' as the bit patterns of two 32-bit floating-
| point values, at least one of which is a NaN, returns the bit pattern of
| the combined NaN result.  If either `uiA' or `uiB' has the pattern of a
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/
uint_fast32_t
 softfloat_propagateNaNF32UI( uint_fast32_t uiA, uint_fast32_t uiB );

/*----------------------------------------------------------------------------
| The bit pattern for a default generated 64-bit floating-point NaN.
*----------------------------------------------------------------------------*/
#define defaultNaNF64UI UINT64_C( 0x7FF8000000000000 )

/*----------------------------------------------------------------------------
| Returns true when 64-bit unsigned integer `uiA' has the bit pattern of a
| 64-bit floating-point signaling NaN.
| Note:  This macro evaluates its argument more than once.
*----------------------------------------------------------------------------*/
#define softfloat_isSigNaNF64UI( uiA ) ((((uiA) & UINT64_C( 0x7FF8000000000000 )) == UINT64_C( 0x7FF0000000000000 )) && ((uiA) & UINT64_C( 0x0007FFFFFFFFFFFF )))

/*----------------------------------------------------------------------------
| Assuming `uiA' has the bit pattern of a 64-bit floating-point NaN, converts
| this NaN to the common NaN form, and stores the resulting common NaN at the
| location pointed to by `zPtr'.  If the NaN is a signaling NaN, the invalid
| exception is raised.
*----------------------------------------------------------------------------*/
#define softfloat_f64UIToCommonNaN( uiA, zPtr ) if ( ! ((uiA) & UINT64_C( 0x0008000000000000 )) ) softfloat_raiseFlags( softfloat_flag_invalid )

/*----------------------------------------------------------------------------
| Converts the common NaN pointed to by `aPtr' into a 64-bit floating-point
| NaN, and returns the bit pattern of this value as an unsigned integer.
*----------------------------------------------------------------------------*/
#define softfloat_commonNaNToF64UI( aPtr ) ((uint_fast64_t) defaultNaNF64UI)

/*----------------------------------------------------------------------------
| Interpreting `uiA' and `uiB' as the bit patterns of two 64-bit floating-
| point values, at least one of which is a NaN, returns the bit pattern of
| the combined NaN result.  If either `uiA' or `uiB' has the pattern of a
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/
uint_fast64_t
 softfloat_propagateNaNF64UI( uint_fast64_t uiA, uint_fast64_t uiB );

/*----------------------------------------------------------------------------
| The bit pattern for a default generated 80-bit extended floating-point NaN.
*----------------------------------------------------------------------------*/
#define defaultNaNExtF80UI64 0x7FFF
#define defaultNaNExtF80UI0  UINT64_C( 0xC000000000000000 )

/*----------------------------------------------------------------------------
| Returns true when the 80-bit unsigned integer formed from concatenating
| 16-bit `uiA64' and 64-bit `uiA0' has the bit pattern of an 80-bit extended
| floating-point signaling NaN.
| Note:  This macro evaluates its arguments more than once.
*----------------------------------------------------------------------------*/
#define softfloat_isSigNaNExtF80UI( uiA64, uiA0 ) ((((uiA64) & 0x7FFF) == 0x7FFF) && ! ((uiA0) & UINT64_C( 0x4000000000000000 )) && ((uiA0) & UINT64_C( 0x3FFFFFFFFFFFFFFF )))

#ifdef SOFTFLOAT_FAST_INT64

/*----------------------------------------------------------------------------
| The following functions are needed only when `SOFTFLOAT_FAST_INT64' is
| defined.
*----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------
| Assuming the unsigned integer formed from concatenating `uiA64' and `uiA0'
| has the bit pattern of an 80-bit extended floating-point NaN, converts
| this NaN to the common NaN form, and stores the resulting common NaN at the
| location pointed to by `zPtr'.  If the NaN is a signaling NaN, the invalid
| exception is raised.
*----------------------------------------------------------------------------*/
#define softfloat_extF80UIToCommonNaN( uiA64, uiA0, zPtr ) if ( ! ((uiA0) & UINT64_C( 0x4000000000000000 )) ) softfloat_raiseFlags( softfloat_flag_invalid )

/*----------------------------------------------------------------------------
| Converts the common NaN pointed to by `aPtr' into an 80-bit extended
| floating-point NaN, and returns the bit pattern of this value as an unsigned
| integer.
*----------------------------------------------------------------------------*/
#if defined INLINE && ! defined softfloat_commonNaNToExtF80UI
INLINE
struct uint128 softfloat_commonNaNToExtF80UI( const struct commonNaN *aPtr )
{
    struct uint128 uiZ;
    uiZ.v64 = defaultNaNExtF80UI64;
    uiZ.v0  = defaultNaNExtF80UI0;
    return uiZ;
}
#else
struct uint128 softfloat_commonNaNToExtF80UI( const struct commonNaN *aPtr );
#endif

/*----------------------------------------------------------------------------
| Interpreting the unsigned integer formed from concatenating `uiA64' and
| `uiA0' as an 80-bit extended floating-point value, and likewise interpreting
| the unsigned integer formed from concatenating `uiB64' and `uiB0' as another
| 80-bit extended floating-point value, and assuming at least on of these
| floating-point values is a NaN, returns the bit pattern of the combined NaN
| result.  If either original floating-point value is a signaling NaN, the
| invalid exception is raised.
*----------------------------------------------------------------------------*/
struct uint128
 softfloat_propagateNaNExtF80UI(
     uint_fast16_t uiA64,
     uint_fast64_t uiA0,
     uint_fast16_t uiB64,
     uint_fast64_t uiB0
 );

/*----------------------------------------------------------------------------
| The bit pattern for a default generated 128-bit floating-point NaN.
*----------------------------------------------------------------------------*/
#define defaultNaNF128UI64 UINT64_C( 0x7FFF800000000000 )
#define defaultNaNF128UI0  UINT64_C( 0 )

/*----------------------------------------------------------------------------
| Returns true when the 128-bit unsigned integer formed from concatenating
| 64-bit `uiA64' and 64-bit `uiA0' has the bit pattern of a 128-bit floating-
| point signaling NaN.
| Note:  This macro evaluates its arguments more than once.
*----------------------------------------------------------------------------*/
#define softfloat_isSigNaNF128UI( uiA64, uiA0 ) ((((uiA64) & UINT64_C( 0x7FFF800000000000 )) == UINT64_C( 0x7FFF000000000000 )) && ((uiA0) || ((uiA64) & UINT64_C( 0x00007FFFFFFFFFFF ))))

/*----------------------------------------------------------------------------
| Assuming the unsigned integer formed from concatenating `uiA64' and `uiA0'
| has the bit pattern of a 128-bit floating-point NaN, converts this NaN to
| the common NaN form, and stores the resulting common NaN at the location
| pointed to by `zPtr'.  If the NaN is a signaling NaN, the invalid exception
| is raised.
*----------------------------------------------------------------------------*/
#define softfloat_f128UIToCommonNaN( uiA64, uiA0, zPtr ) if ( ! ((uiA64) & UINT64_C( 0x0000800000000000 )) ) softfloat_raiseFlags( softfloat_flag_invalid )

/*----------------------------------------------------------------------------
| Converts the common NaN pointed to by `aPtr' into a 128-bit floating-point
| NaN, and returns the bit pattern of this value as an unsigned integer.
*----------------------------------------------------------------------------*/
#if defined INLINE && ! defined softfloat_commonNaNToF128UI
INLINE
struct uint128 softfloat_commonNaNToF128UI( const struct commonNaN *aPtr )
{
    struct uint128 uiZ;
    uiZ.v64 = defaultNaNF128UI64;
    uiZ.v0  = defaultNaNF128UI0;
    return uiZ;
}
#else
struct uint128 softfloat_commonNaNToF128UI( const struct commonNaN * );
#endif

/*----------------------------------------------------------------------------
| Interpreting the unsigned integer formed from concatenating `uiA64' and
| `uiA0' as a 128-bit floating-point value, and likewise interpreting the
| unsigned integer formed from concatenating `uiB64' and `uiB0' as another
| 128-bit floating-point value, and assuming at least on of these floating-
| point values is a NaN, returns the bit pattern of the combined NaN result.
| If either original floating-point value is a signaling NaN, the invalid
| exception is raised.
*----------------------------------------------------------------------------*/
struct uint128
 softfloat_propagateNaNF128UI(
     uint_fast64_t uiA64,
     uint_fast64_t uiA0,
     uint_fast64_t uiB64,
     uint_fast64_t uiB0
 );

#else

/*----------------------------------------------------------------------------
| The following functions are needed only when `SOFTFLOAT_FAST_INT64' is not
| defined.
*----------------------------------------------------------------------------*/

/*----------------------------------------------------------------------------
| Assuming the 80-bit extended floating-point value pointed to by `aSPtr' is
| a NaN, converts this NaN to the common NaN form, and stores the resulting
| common NaN at the location pointed to by `zPtr'.  If the NaN is a signaling
| NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/
#define softfloat_extF80MToCommonNaN( aSPtr, zPtr ) if ( ! ((aSPtr)->signif & UINT64_C( 0x4000000000000000 )) ) softfloat_raiseFlags( softfloat_flag_invalid )

/*----------------------------------------------------------------------------
| Converts the common NaN pointed to by `aPtr' into an 80-bit extended
| floating-point NaN, and stores this NaN at the location pointed to by
| `zSPtr'.
*----------------------------------------------------------------------------*/
#if defined INLINE && ! defined softfloat_commonNaNToExtF80M
INLINE
void
 softfloat_commonNaNToExtF80M(
     const struct commonNaN *aPtr, struct extFloat80M *zSPtr )
{
    zSPtr->signExp = defaultNaNExtF80UI64;
    zSPtr->signif  = defaultNaNExtF80UI0;
}
#else
void
 softfloat_commonNaNToExtF80M(
     const struct commonNaN *aPtr, struct extFloat80M *zSPtr );
#endif

/*----------------------------------------------------------------------------
| Assuming at least one of the two 80-bit extended floating-point values
| pointed to by `aSPtr' and `bSPtr' is a NaN, stores the combined NaN result
| at the location pointed to by `zSPtr'.  If either original floating-point
| value is a signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/
void
 softfloat_propagateNaNExtF80M(
     const struct extFloat80M *aSPtr,
     const struct extFloat80M *bSPtr,
     struct extFloat80M *zSPtr
 );

/*----------------------------------------------------------------------------
| The bit pattern for a default generated 128-bit floating-point NaN.
*----------------------------------------------------------------------------*/
#define defaultNaNF128UI96 0x7FFF8000
#define defaultNaNF128UI64 0
#define defaultNaNF128UI32 0
#define defaultNaNF128UI0  0

/*----------------------------------------------------------------------------
| Assuming the 128-bit floating-point value pointed to by `aWPtr' is a NaN,
| converts this NaN to the common NaN form, and stores the resulting common
| NaN at the location pointed to by `zPtr'.  If the NaN is a signaling NaN,
| the invalid exception is raised.  Argument `aWPtr' points to an array of
| four 32-bit elements that concatenate in the platform's normal endian order
| to form a 128-bit floating-point value.
*----------------------------------------------------------------------------*/
#define softfloat_f128MToCommonNaN( aWPtr, zPtr ) if ( ! ((aWPtr)[indexWordHi( 4 )] & UINT64_C( 0x0000800000000000 )) ) softfloat_raiseFlags( softfloat_flag_invalid )

/*----------------------------------------------------------------------------
| Converts the common NaN pointed to by `aPtr' into a 128-bit floating-point
| NaN, and stores this NaN at the location pointed to by `zWPtr'.  Argument
| `zWPtr' points to an array of four 32-bit elements that concatenate in the
| platform's normal endian order to form a 128-bit floating-point value.
*----------------------------------------------------------------------------*/
#if defined INLINE && ! defined softfloat_commonNaNToF128M
INLINE
void
 softfloat_commonNaNToF128M( const struct commonNaN *aPtr, uint32_t *zWPtr )
{
    zWPtr[indexWord( 4, 3 )] = defaultNaNF128UI96;
    zWPtr[indexWord( 4, 2 )] = defaultNaNF128UI64;
    zWPtr[indexWord( 4, 1 )] = defaultNaNF128UI32;
    zWPtr[indexWord( 4, 0 )] = defaultNaNF128UI0;
}
#else
void
 softfloat_commonNaNToF128M( const struct commonNaN *aPtr, uint32_t *zWPtr );
#endif

/*----------------------------------------------------------------------------
| Assuming at least one of the two 128-bit floating-point values pointed to by
| `aWPtr' and `bWPtr' is a NaN, stores the combined NaN result at the location
| pointed to by `zWPtr'.  If either original floating-point value is a
| signaling NaN, the invalid exception is raised.  Each of `aWPtr', `bWPtr',
| and `zWPtr' points to an array of four 32-bit elements that concatenate in
| the platform's normal endian order to form a 128-bit floating-point value.
*----------------------------------------------------------------------------*/
void
 softfloat_propagateNaNF128M(
     const uint32_t *aWPtr, const uint32_t *bWPtr, uint32_t *zWPtr );

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: primitives.h
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#ifndef primitives_h
#define primitives_h 1

#ifndef softfloat_shortShiftRightJam64
/*----------------------------------------------------------------------------
| Shifts 'a' right by the number of bits given in 'dist', which must be in
| the range 1 to 63.  If any nonzero bits are shifted off, they are "jammed"
| into the least-significant bit of the shifted value by setting the least-
| significant bit to 1.  This shifted-and-jammed value is returned.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
INLINE
uint64_t softfloat_shortShiftRightJam64( uint64_t a, uint_fast8_t dist )
    { return a>>dist | ((a & (((uint_fast64_t) 1<<dist) - 1)) != 0); }
#else
uint64_t softfloat_shortShiftRightJam64( uint64_t a, uint_fast8_t dist );
#endif
#endif

#ifndef softfloat_shiftRightJam32
/*----------------------------------------------------------------------------
| Shifts 'a' right by the number of bits given in 'dist', which must not
| be zero.  If any nonzero bits are shifted off, they are "jammed" into the
| least-significant bit of the shifted value by setting the least-significant
| bit to 1.  This shifted-and-jammed value is returned.
|   The value of 'dist' can be arbitrarily large.  In particular, if 'dist' is
| greater than 32, the result will be either 0 or 1, depending on whether 'a'
| is zero or nonzero.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
INLINE uint32_t softfloat_shiftRightJam32( uint32_t a, uint_fast16_t dist )
{
    return
        (dist < 31) ? a>>dist | ((uint32_t) (a<<(-dist & 31)) != 0) : (a != 0);
}
#else
uint32_t softfloat_shiftRightJam32( uint32_t a, uint_fast16_t dist );
#endif
#endif

#ifndef softfloat_shiftRightJam64
/*----------------------------------------------------------------------------
| Shifts 'a' right by the number of bits given in 'dist', which must not
| be zero.  If any nonzero bits are shifted off, they are "jammed" into the
| least-significant bit of the shifted value by setting the least-significant
| bit to 1.  This shifted-and-jammed value is returned.
|   The value of 'dist' can be arbitrarily large.  In particular, if 'dist' is
| greater than 64, the result will be either 0 or 1, depending on whether 'a'
| is zero or nonzero.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (3 <= INLINE_LEVEL)
INLINE uint64_t softfloat_shiftRightJam64( uint64_t a, uint_fast32_t dist )
{
    return
        (dist < 63) ? a>>dist | ((uint64_t) (a<<(-dist & 63)) != 0) : (a != 0);
}
#else
uint64_t softfloat_shiftRightJam64( uint64_t a, uint_fast32_t dist );
#endif
#endif

/*----------------------------------------------------------------------------
| A constant table that translates an 8-bit unsigned integer (the array index)
| into the number of leading 0 bits before the most-significant 1 of that
| integer.  For integer zero (index 0), the corresponding table element is 8.
*----------------------------------------------------------------------------*/
extern const uint_least8_t softfloat_countLeadingZeros8[256];

#ifndef softfloat_countLeadingZeros16
/*----------------------------------------------------------------------------
| Returns the number of leading 0 bits before the most-significant 1 bit of
| 'a'.  If 'a' is zero, 16 is returned.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
INLINE uint_fast8_t softfloat_countLeadingZeros16( uint16_t a )
{
    uint_fast8_t count = 8;
    if ( 0x100 <= a ) {
        count = 0;
        a >>= 8;
    }
    count += softfloat_countLeadingZeros8[a];
    return count;
}
#else
uint_fast8_t softfloat_countLeadingZeros16( uint16_t a );
#endif
#endif

#ifndef softfloat_countLeadingZeros32
/*----------------------------------------------------------------------------
| Returns the number of leading 0 bits before the most-significant 1 bit of
| 'a'.  If 'a' is zero, 32 is returned.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (3 <= INLINE_LEVEL)
INLINE uint_fast8_t softfloat_countLeadingZeros32( uint32_t a )
{
    uint_fast8_t count = 0;
    if ( a < 0x10000 ) {
        count = 16;
        a <<= 16;
    }
    if ( a < 0x1000000 ) {
        count += 8;
        a <<= 8;
    }
    count += softfloat_countLeadingZeros8[a>>24];
    return count;
}
#else
uint_fast8_t softfloat_countLeadingZeros32( uint32_t a );
#endif
#endif

#ifndef softfloat_countLeadingZeros64
/*----------------------------------------------------------------------------
| Returns the number of leading 0 bits before the most-significant 1 bit of
| 'a'.  If 'a' is zero, 64 is returned.
*----------------------------------------------------------------------------*/
uint_fast8_t softfloat_countLeadingZeros64( uint64_t a );
#endif

extern const uint16_t softfloat_approxRecip_1k0s[16];
extern const uint16_t softfloat_approxRecip_1k1s[16];

#ifndef softfloat_approxRecip32_1
/*----------------------------------------------------------------------------
| Returns an approximation to the reciprocal of the number represented by 'a',
| where 'a' is interpreted as an unsigned fixed-point number with one integer
| bit and 31 fraction bits.  The 'a' input must be "normalized", meaning that
| its most-significant bit (bit 31) must be 1.  Thus, if A is the value of
| the fixed-point interpretation of 'a', then 1 <= A < 2.  The returned value
| is interpreted as a pure unsigned fraction, having no integer bits and 32
| fraction bits.  The approximation returned is never greater than the true
| reciprocal 1/A, and it differs from the true reciprocal by at most 2.006 ulp
| (units in the last place).
*----------------------------------------------------------------------------*/
#ifdef SOFTFLOAT_FAST_DIV64TO32
#define softfloat_approxRecip32_1( a ) ((uint32_t) (UINT64_C( 0x7FFFFFFFFFFFFFFF ) / (uint32_t) (a)))
#else
uint32_t softfloat_approxRecip32_1( uint32_t a );
#endif
#endif

extern const uint16_t softfloat_approxRecipSqrt_1k0s[16];
extern const uint16_t softfloat_approxRecipSqrt_1k1s[16];

#ifndef softfloat_approxRecipSqrt32_1
/*----------------------------------------------------------------------------
| Returns an approximation to the reciprocal of the square root of the number
| represented by 'a', where 'a' is interpreted as an unsigned fixed-point
| number either with one integer bit and 31 fraction bits or with two integer
| bits and 30 fraction bits.  The format of 'a' is determined by 'oddExpA',
| which must be either 0 or 1.  If 'oddExpA' is 1, 'a' is interpreted as
| having one integer bit, and if 'oddExpA' is 0, 'a' is interpreted as having
| two integer bits.  The 'a' input must be "normalized", meaning that its
| most-significant bit (bit 31) must be 1.  Thus, if A is the value of the
| fixed-point interpretation of 'a', it follows that 1 <= A < 2 when 'oddExpA'
| is 1, and 2 <= A < 4 when 'oddExpA' is 0.
|   The returned value is interpreted as a pure unsigned fraction, having
| no integer bits and 32 fraction bits.  The approximation returned is never
| greater than the true reciprocal 1/sqrt(A), and it differs from the true
| reciprocal by at most 2.06 ulp (units in the last place).  The approximation
| returned is also always within the range 0.5 to 1; thus, the most-
| significant bit of the result is always set.
*----------------------------------------------------------------------------*/
uint32_t softfloat_approxRecipSqrt32_1( unsigned int oddExpA, uint32_t a );
#endif

#ifdef SOFTFLOAT_FAST_INT64

/*----------------------------------------------------------------------------
| The following functions are needed only when 'SOFTFLOAT_FAST_INT64' is
| defined.
*----------------------------------------------------------------------------*/

#ifndef softfloat_eq128
/*----------------------------------------------------------------------------
| Returns true if the 128-bit unsigned integer formed by concatenating 'a64'
| and 'a0' is equal to the 128-bit unsigned integer formed by concatenating
| 'b64' and 'b0'.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (1 <= INLINE_LEVEL)
INLINE
bool softfloat_eq128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 )
    { return (a64 == b64) && (a0 == b0); }
#else
bool softfloat_eq128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 );
#endif
#endif

#ifndef softfloat_le128
/*----------------------------------------------------------------------------
| Returns true if the 128-bit unsigned integer formed by concatenating 'a64'
| and 'a0' is less than or equal to the 128-bit unsigned integer formed by
| concatenating 'b64' and 'b0'.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
INLINE
bool softfloat_le128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 )
    { return (a64 < b64) || ((a64 == b64) && (a0 <= b0)); }
#else
bool softfloat_le128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 );
#endif
#endif

#ifndef softfloat_lt128
/*----------------------------------------------------------------------------
| Returns true if the 128-bit unsigned integer formed by concatenating 'a64'
| and 'a0' is less than the 128-bit unsigned integer formed by concatenating
| 'b64' and 'b0'.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
INLINE
bool softfloat_lt128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 )
    { return (a64 < b64) || ((a64 == b64) && (a0 < b0)); }
#else
bool softfloat_lt128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 );
#endif
#endif

#ifndef softfloat_shortShiftLeft128
/*----------------------------------------------------------------------------
| Shifts the 128 bits formed by concatenating 'a64' and 'a0' left by the
| number of bits given in 'dist', which must be in the range 1 to 63.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
INLINE
struct uint128
 softfloat_shortShiftLeft128( uint64_t a64, uint64_t a0, uint_fast8_t dist )
{
    struct uint128 z;
    z.v64 = a64<<dist | a0>>(-dist & 63);
    z.v0 = a0<<dist;
    return z;
}
#else
struct uint128
 softfloat_shortShiftLeft128( uint64_t a64, uint64_t a0, uint_fast8_t dist );
#endif
#endif

#ifndef softfloat_shortShiftRight128
/*----------------------------------------------------------------------------
| Shifts the 128 bits formed by concatenating 'a64' and 'a0' right by the
| number of bits given in 'dist', which must be in the range 1 to 63.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
INLINE
struct uint128
 softfloat_shortShiftRight128( uint64_t a64, uint64_t a0, uint_fast8_t dist )
{
    struct uint128 z;
    z.v64 = a64>>dist;
    z.v0 = a64<<(-dist & 63) | a0>>dist;
    return z;
}
#else
struct uint128
 softfloat_shortShiftRight128( uint64_t a64, uint64_t a0, uint_fast8_t dist );
#endif
#endif

#ifndef softfloat_shortShiftRightJam64Extra
/*----------------------------------------------------------------------------
| This function is the same as 'softfloat_shiftRightJam64Extra' (below),
| except that 'dist' must be in the range 1 to 63.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
INLINE
struct uint64_extra
 softfloat_shortShiftRightJam64Extra(
     uint64_t a, uint64_t extra, uint_fast8_t dist )
{
    struct uint64_extra z;
    z.v = a>>dist;
    z.extra = a<<(-dist & 63) | (extra != 0);
    return z;
}
#else
struct uint64_extra
 softfloat_shortShiftRightJam64Extra(
     uint64_t a, uint64_t extra, uint_fast8_t dist );
#endif
#endif

#ifndef softfloat_shortShiftRightJam128
/*----------------------------------------------------------------------------
| Shifts the 128 bits formed by concatenating 'a64' and 'a0' right by the
| number of bits given in 'dist', which must be in the range 1 to 63.  If any
| nonzero bits are shifted off, they are "jammed" into the least-significant
| bit of the shifted value by setting the least-significant bit to 1.  This
| shifted-and-jammed value is returned.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (3 <= INLINE_LEVEL)
INLINE
struct uint128
 softfloat_shortShiftRightJam128(
     uint64_t a64, uint64_t a0, uint_fast8_t dist )
{
    uint_fast8_t negDist = -dist;
    struct uint128 z;
    z.v64 = a64>>dist;
    z.v0 =
        a64<<(negDist & 63) | a0>>dist
            | ((uint64_t) (a0<<(negDist & 63)) != 0);
    return z;
}
#else
struct uint128
 softfloat_shortShiftRightJam128(
     uint64_t a64, uint64_t a0, uint_fast8_t dist );
#endif
#endif

#ifndef softfloat_shortShiftRightJam128Extra
/*----------------------------------------------------------------------------
| This function is the same as 'softfloat_shiftRightJam128Extra' (below),
| except that 'dist' must be in the range 1 to 63.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (3 <= INLINE_LEVEL)
INLINE
struct uint128_extra
 softfloat_shortShiftRightJam128Extra(
     uint64_t a64, uint64_t a0, uint64_t extra, uint_fast8_t dist )
{
    uint_fast8_t negDist = -dist;
    struct uint128_extra z;
    z.v.v64 = a64>>dist;
    z.v.v0 = a64<<(negDist & 63) | a0>>dist;
    z.extra = a0<<(negDist & 63) | (extra != 0);
    return z;
}
#else
struct uint128_extra
 softfloat_shortShiftRightJam128Extra(
     uint64_t a64, uint64_t a0, uint64_t extra, uint_fast8_t dist );
#endif
#endif

#ifndef softfloat_shiftRightJam64Extra
/*----------------------------------------------------------------------------
| Shifts the 128 bits formed by concatenating 'a' and 'extra' right by 64
| _plus_ the number of bits given in 'dist', which must not be zero.  This
| shifted value is at most 64 nonzero bits and is returned in the 'v' field
| of the 'struct uint64_extra' result.  The 64-bit 'extra' field of the result
| contains a value formed as follows from the bits that were shifted off:  The
| _last_ bit shifted off is the most-significant bit of the 'extra' field, and
| the other 63 bits of the 'extra' field are all zero if and only if _all_but_
| _the_last_ bits shifted off were all zero.
|   (This function makes more sense if 'a' and 'extra' are considered to form
| an unsigned fixed-point number with binary point between 'a' and 'extra'.
| This fixed-point value is shifted right by the number of bits given in
| 'dist', and the integer part of this shifted value is returned in the 'v'
| field of the result.  The fractional part of the shifted value is modified
| as described above and returned in the 'extra' field of the result.)
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (4 <= INLINE_LEVEL)
INLINE
struct uint64_extra
 softfloat_shiftRightJam64Extra(
     uint64_t a, uint64_t extra, uint_fast32_t dist )
{
    struct uint64_extra z;
    if ( dist < 64 ) {
        z.v = a>>dist;
        z.extra = a<<(-dist & 63);
    } else {
        z.v = 0;
        z.extra = (dist == 64) ? a : (a != 0);
    }
    z.extra |= (extra != 0);
    return z;
}
#else
struct uint64_extra
 softfloat_shiftRightJam64Extra(
     uint64_t a, uint64_t extra, uint_fast32_t dist );
#endif
#endif

#ifndef softfloat_shiftRightJam128
/*----------------------------------------------------------------------------
| Shifts the 128 bits formed by concatenating 'a64' and 'a0' right by the
| number of bits given in 'dist', which must not be zero.  If any nonzero bits
| are shifted off, they are "jammed" into the least-significant bit of the
| shifted value by setting the least-significant bit to 1.  This shifted-and-
| jammed value is returned.
|   The value of 'dist' can be arbitrarily large.  In particular, if 'dist' is
| greater than 128, the result will be either 0 or 1, depending on whether the
| original 128 bits are all zeros.
*----------------------------------------------------------------------------*/
struct uint128
 softfloat_shiftRightJam128( uint64_t a64, uint64_t a0, uint_fast32_t dist );
#endif

#ifndef softfloat_shiftRightJam128Extra
/*----------------------------------------------------------------------------
| Shifts the 192 bits formed by concatenating 'a64', 'a0', and 'extra' right
| by 64 _plus_ the number of bits given in 'dist', which must not be zero.
| This shifted value is at most 128 nonzero bits and is returned in the 'v'
| field of the 'struct uint128_extra' result.  The 64-bit 'extra' field of the
| result contains a value formed as follows from the bits that were shifted
| off:  The _last_ bit shifted off is the most-significant bit of the 'extra'
| field, and the other 63 bits of the 'extra' field are all zero if and only
| if _all_but_the_last_ bits shifted off were all zero.
|   (This function makes more sense if 'a64', 'a0', and 'extra' are considered
| to form an unsigned fixed-point number with binary point between 'a0' and
| 'extra'.  This fixed-point value is shifted right by the number of bits
| given in 'dist', and the integer part of this shifted value is returned
| in the 'v' field of the result.  The fractional part of the shifted value
| is modified as described above and returned in the 'extra' field of the
| result.)
*----------------------------------------------------------------------------*/
struct uint128_extra
 softfloat_shiftRightJam128Extra(
     uint64_t a64, uint64_t a0, uint64_t extra, uint_fast32_t dist );
#endif

#ifndef softfloat_shiftRightJam256M
/*----------------------------------------------------------------------------
| Shifts the 256-bit unsigned integer pointed to by 'aPtr' right by the number
| of bits given in 'dist', which must not be zero.  If any nonzero bits are
| shifted off, they are "jammed" into the least-significant bit of the shifted
| value by setting the least-significant bit to 1.  This shifted-and-jammed
| value is stored at the location pointed to by 'zPtr'.  Each of 'aPtr' and
| 'zPtr' points to an array of four 64-bit elements that concatenate in the
| platform's normal endian order to form a 256-bit integer.
|   The value of 'dist' can be arbitrarily large.  In particular, if 'dist'
| is greater than 256, the stored result will be either 0 or 1, depending on
| whether the original 256 bits are all zeros.
*----------------------------------------------------------------------------*/
void
 softfloat_shiftRightJam256M(
     const uint64_t *aPtr, uint_fast32_t dist, uint64_t *zPtr );
#endif

#ifndef softfloat_add128
/*----------------------------------------------------------------------------
| Returns the sum of the 128-bit integer formed by concatenating 'a64' and
| 'a0' and the 128-bit integer formed by concatenating 'b64' and 'b0'.  The
| addition is modulo 2^128, so any carry out is lost.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
INLINE
struct uint128
 softfloat_add128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 )
{
    struct uint128 z;
    z.v0 = a0 + b0;
    z.v64 = a64 + b64 + (z.v0 < a0);
    return z;
}
#else
struct uint128
 softfloat_add128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 );
#endif
#endif

#ifndef softfloat_add256M
/*----------------------------------------------------------------------------
| Adds the two 256-bit integers pointed to by 'aPtr' and 'bPtr'.  The addition
| is modulo 2^256, so any carry out is lost.  The sum is stored at the
| location pointed to by 'zPtr'.  Each of 'aPtr', 'bPtr', and 'zPtr' points to
| an array of four 64-bit elements that concatenate in the platform's normal
| endian order to form a 256-bit integer.
*----------------------------------------------------------------------------*/
void
 softfloat_add256M(
     const uint64_t *aPtr, const uint64_t *bPtr, uint64_t *zPtr );
#endif

#ifndef softfloat_sub128
/*----------------------------------------------------------------------------
| Returns the difference of the 128-bit integer formed by concatenating 'a64'
| and 'a0' and the 128-bit integer formed by concatenating 'b64' and 'b0'.
| The subtraction is modulo 2^128, so any borrow out (carry out) is lost.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
INLINE
struct uint128
 softfloat_sub128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 )
{
    struct uint128 z;
    z.v0 = a0 - b0;
    z.v64 = a64 - b64;
    z.v64 -= (a0 < b0);
    return z;
}
#else
struct uint128
 softfloat_sub128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 );
#endif
#endif

#ifndef softfloat_sub256M
/*----------------------------------------------------------------------------
| Subtracts the 256-bit integer pointed to by 'bPtr' from the 256-bit integer
| pointed to by 'aPtr'.  The addition is modulo 2^256, so any borrow out
| (carry out) is lost.  The difference is stored at the location pointed to
| by 'zPtr'.  Each of 'aPtr', 'bPtr', and 'zPtr' points to an array of four
| 64-bit elements that concatenate in the platform's normal endian order to
| form a 256-bit integer.
*----------------------------------------------------------------------------*/
void
 softfloat_sub256M(
     const uint64_t *aPtr, const uint64_t *bPtr, uint64_t *zPtr );
#endif

#ifndef softfloat_mul64ByShifted32To128
/*----------------------------------------------------------------------------
| Returns the 128-bit product of 'a', 'b', and 2^32.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (3 <= INLINE_LEVEL)
INLINE struct uint128 softfloat_mul64ByShifted32To128( uint64_t a, uint32_t b )
{
    uint_fast64_t mid;
    struct uint128 z;
    mid = (uint_fast64_t) (uint32_t) a * b;
    z.v0 = mid<<32;
    z.v64 = (uint_fast64_t) (uint32_t) (a>>32) * b + (mid>>32);
    return z;
}
#else
struct uint128 softfloat_mul64ByShifted32To128( uint64_t a, uint32_t b );
#endif
#endif

#ifndef softfloat_mul64To128
/*----------------------------------------------------------------------------
| Returns the 128-bit product of 'a' and 'b'.
*----------------------------------------------------------------------------*/
struct uint128 softfloat_mul64To128( uint64_t a, uint64_t b );
#endif

#ifndef softfloat_mul128By32
/*----------------------------------------------------------------------------
| Returns the product of the 128-bit integer formed by concatenating 'a64' and
| 'a0', multiplied by 'b'.  The multiplication is modulo 2^128; any overflow
| bits are discarded.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (4 <= INLINE_LEVEL)
INLINE
struct uint128 softfloat_mul128By32( uint64_t a64, uint64_t a0, uint32_t b )
{
    struct uint128 z;
    uint_fast64_t mid;
    uint_fast32_t carry;
    z.v0 = a0 * b;
    mid = (uint_fast64_t) (uint32_t) (a0>>32) * b;
    carry = (uint32_t) ((uint_fast32_t) (z.v0>>32) - (uint_fast32_t) mid);
    z.v64 = a64 * b + (uint_fast32_t) ((mid + carry)>>32);
    return z;
}
#else
struct uint128 softfloat_mul128By32( uint64_t a64, uint64_t a0, uint32_t b );
#endif
#endif

#ifndef softfloat_mul128To256M
/*----------------------------------------------------------------------------
| Multiplies the 128-bit unsigned integer formed by concatenating 'a64' and
| 'a0' by the 128-bit unsigned integer formed by concatenating 'b64' and
| 'b0'.  The 256-bit product is stored at the location pointed to by 'zPtr'.
| Argument 'zPtr' points to an array of four 64-bit elements that concatenate
| in the platform's normal endian order to form a 256-bit integer.
*----------------------------------------------------------------------------*/
void
 softfloat_mul128To256M(
     uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0, uint64_t *zPtr );
#endif

#else

/*----------------------------------------------------------------------------
| The following functions are needed only when 'SOFTFLOAT_FAST_INT64' is not
| defined.
*----------------------------------------------------------------------------*/

#ifndef softfloat_compare96M
/*----------------------------------------------------------------------------
| Compares the two 96-bit unsigned integers pointed to by 'aPtr' and 'bPtr'.
| Returns -1 if the first integer (A) is less than the second (B); returns 0
| if the two integers are equal; and returns +1 if the first integer (A)
| is greater than the second (B).  (The result is thus the signum of A - B.)
| Each of 'aPtr' and 'bPtr' points to an array of three 32-bit elements that
| concatenate in the platform's normal endian order to form a 96-bit integer.
*----------------------------------------------------------------------------*/
int_fast8_t softfloat_compare96M( const uint32_t *aPtr, const uint32_t *bPtr );
#endif

#ifndef softfloat_compare128M
/*----------------------------------------------------------------------------
| Compares the two 128-bit unsigned integers pointed to by 'aPtr' and 'bPtr'.
| Returns -1 if the first integer (A) is less than the second (B); returns 0
| if the two integers are equal; and returns +1 if the first integer (A)
| is greater than the second (B).  (The result is thus the signum of A - B.)
| Each of 'aPtr' and 'bPtr' points to an array of four 32-bit elements that
| concatenate in the platform's normal endian order to form a 128-bit integer.
*----------------------------------------------------------------------------*/
int_fast8_t
 softfloat_compare128M( const uint32_t *aPtr, const uint32_t *bPtr );
#endif

#ifndef softfloat_shortShiftLeft64To96M
/*----------------------------------------------------------------------------
| Extends 'a' to 96 bits and shifts the value left by the number of bits given
| in 'dist', which must be in the range 1 to 31.  The result is stored at the
| location pointed to by 'zPtr'.  Argument 'zPtr' points to an array of three
| 32-bit elements that concatenate in the platform's normal endian order to
| form a 96-bit integer.
*----------------------------------------------------------------------------*/
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
INLINE
void
 softfloat_shortShiftLeft64To96M(
     uint64_t a, uint_fast8_t dist, uint32_t *zPtr )
{
    zPtr[indexWord( 3, 0 )] = (uint32_t) a<<dist;
    a >>= 32 - dist;
    zPtr[indexWord( 3, 2 )] = a>>32;
    zPtr[indexWord( 3, 1 )] = a;
}
#else
void
 softfloat_shortShiftLeft64To96M(
     uint64_t a, uint_fast8_t dist, uint32_t *zPtr );
#endif
#endif

#ifndef softfloat_shortShiftLeftM
/*----------------------------------------------------------------------------
| Shifts the N-bit unsigned integer pointed to by 'aPtr' left by the number
| of bits given in 'dist', where N = 'size_words' * 32.  The value of 'dist'
| must be in the range 1 to 31.  Any nonzero bits shifted off are lost.  The
| shifted N-bit result is stored at the location pointed to by 'zPtr'.  Each
| of 'aPtr' and 'zPtr' points to a 'size_words'-long array of 32-bit elements
| that concatenate in the platform's normal endian order to form an N-bit
| integer.
*----------------------------------------------------------------------------*/
void
 softfloat_shortShiftLeftM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     uint_fast8_t dist,
     uint32_t *zPtr
 );
#endif

#ifndef softfloat_shortShiftLeft96M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shortShiftLeftM' with
| 'size_words' = 3 (N = 96).
*----------------------------------------------------------------------------*/
#define softfloat_shortShiftLeft96M( aPtr, dist, zPtr ) softfloat_shortShiftLeftM( 3, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shortShiftLeft128M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shortShiftLeftM' with
| 'size_words' = 4 (N = 128).
*----------------------------------------------------------------------------*/
#define softfloat_shortShiftLeft128M( aPtr, dist, zPtr ) softfloat_shortShiftLeftM( 4, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shortShiftLeft160M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shortShiftLeftM' with
| 'size_words' = 5 (N = 160).
*----------------------------------------------------------------------------*/
#define softfloat_shortShiftLeft160M( aPtr, dist, zPtr ) softfloat_shortShiftLeftM( 5, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shiftLeftM
/*----------------------------------------------------------------------------
| Shifts the N-bit unsigned integer pointed to by 'aPtr' left by the number
| of bits given in 'dist', where N = 'size_words' * 32.  The value of 'dist'
| must not be zero.  Any nonzero bits shifted off are lost.  The shifted
| N-bit result is stored at the location pointed to by 'zPtr'.  Each of 'aPtr'
| and 'zPtr' points to a 'size_words'-long array of 32-bit elements that
| concatenate in the platform's normal endian order to form an N-bit integer.
|   The value of 'dist' can be arbitrarily large.  In particular, if 'dist' is
| greater than N, the stored result will be 0.
*----------------------------------------------------------------------------*/
void
 softfloat_shiftLeftM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     uint32_t dist,
     uint32_t *zPtr
 );
#endif

#ifndef softfloat_shiftLeft96M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shiftLeftM' with
| 'size_words' = 3 (N = 96).
*----------------------------------------------------------------------------*/
#define softfloat_shiftLeft96M( aPtr, dist, zPtr ) softfloat_shiftLeftM( 3, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shiftLeft128M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shiftLeftM' with
| 'size_words' = 4 (N = 128).
*----------------------------------------------------------------------------*/
#define softfloat_shiftLeft128M( aPtr, dist, zPtr ) softfloat_shiftLeftM( 4, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shiftLeft160M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shiftLeftM' with
| 'size_words' = 5 (N = 160).
*----------------------------------------------------------------------------*/
#define softfloat_shiftLeft160M( aPtr, dist, zPtr ) softfloat_shiftLeftM( 5, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shortShiftRightM
/*----------------------------------------------------------------------------
| Shifts the N-bit unsigned integer pointed to by 'aPtr' right by the number
| of bits given in 'dist', where N = 'size_words' * 32.  The value of 'dist'
| must be in the range 1 to 31.  Any nonzero bits shifted off are lost.  The
| shifted N-bit result is stored at the location pointed to by 'zPtr'.  Each
| of 'aPtr' and 'zPtr' points to a 'size_words'-long array of 32-bit elements
| that concatenate in the platform's normal endian order to form an N-bit
| integer.
*----------------------------------------------------------------------------*/
void
 softfloat_shortShiftRightM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     uint_fast8_t dist,
     uint32_t *zPtr
 );
#endif

#ifndef softfloat_shortShiftRight128M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shortShiftRightM' with
| 'size_words' = 4 (N = 128).
*----------------------------------------------------------------------------*/
#define softfloat_shortShiftRight128M( aPtr, dist, zPtr ) softfloat_shortShiftRightM( 4, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shortShiftRight160M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shortShiftRightM' with
| 'size_words' = 5 (N = 160).
*----------------------------------------------------------------------------*/
#define softfloat_shortShiftRight160M( aPtr, dist, zPtr ) softfloat_shortShiftRightM( 5, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shortShiftRightJamM
/*----------------------------------------------------------------------------
| Shifts the N-bit unsigned integer pointed to by 'aPtr' right by the number
| of bits given in 'dist', where N = 'size_words' * 32.  The value of 'dist'
| must be in the range 1 to 31.  If any nonzero bits are shifted off, they are
| "jammed" into the least-significant bit of the shifted value by setting the
| least-significant bit to 1.  This shifted-and-jammed N-bit result is stored
| at the location pointed to by 'zPtr'.  Each of 'aPtr' and 'zPtr' points
| to a 'size_words'-long array of 32-bit elements that concatenate in the
| platform's normal endian order to form an N-bit integer.
*----------------------------------------------------------------------------*/
void
 softfloat_shortShiftRightJamM(
     uint_fast8_t, const uint32_t *, uint_fast8_t, uint32_t * );
#endif

#ifndef softfloat_shortShiftRightJam160M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shortShiftRightJamM' with
| 'size_words' = 5 (N = 160).
*----------------------------------------------------------------------------*/
#define softfloat_shortShiftRightJam160M( aPtr, dist, zPtr ) softfloat_shortShiftRightJamM( 5, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shiftRightM
/*----------------------------------------------------------------------------
| Shifts the N-bit unsigned integer pointed to by 'aPtr' right by the number
| of bits given in 'dist', where N = 'size_words' * 32.  The value of 'dist'
| must not be zero.  Any nonzero bits shifted off are lost.  The shifted
| N-bit result is stored at the location pointed to by 'zPtr'.  Each of 'aPtr'
| and 'zPtr' points to a 'size_words'-long array of 32-bit elements that
| concatenate in the platform's normal endian order to form an N-bit integer.
|   The value of 'dist' can be arbitrarily large.  In particular, if 'dist' is
| greater than N, the stored result will be 0.
*----------------------------------------------------------------------------*/
void
 softfloat_shiftRightM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     uint32_t dist,
     uint32_t *zPtr
 );
#endif

#ifndef softfloat_shiftRight96M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shiftRightM' with
| 'size_words' = 3 (N = 96).
*----------------------------------------------------------------------------*/
#define softfloat_shiftRight96M( aPtr, dist, zPtr ) softfloat_shiftRightM( 3, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shiftRightJamM
/*----------------------------------------------------------------------------
| Shifts the N-bit unsigned integer pointed to by 'aPtr' right by the number
| of bits given in 'dist', where N = 'size_words' * 32.  The value of 'dist'
| must not be zero.  If any nonzero bits are shifted off, they are "jammed"
| into the least-significant bit of the shifted value by setting the least-
| significant bit to 1.  This shifted-and-jammed N-bit result is stored
| at the location pointed to by 'zPtr'.  Each of 'aPtr' and 'zPtr' points
| to a 'size_words'-long array of 32-bit elements that concatenate in the
| platform's normal endian order to form an N-bit integer.
|   The value of 'dist' can be arbitrarily large.  In particular, if 'dist'
| is greater than N, the stored result will be either 0 or 1, depending on
| whether the original N bits are all zeros.
*----------------------------------------------------------------------------*/
void
 softfloat_shiftRightJamM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     uint32_t dist,
     uint32_t *zPtr
 );
#endif

#ifndef softfloat_shiftRightJam96M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shiftRightJamM' with
| 'size_words' = 3 (N = 96).
*----------------------------------------------------------------------------*/
#define softfloat_shiftRightJam96M( aPtr, dist, zPtr ) softfloat_shiftRightJamM( 3, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shiftRightJam128M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shiftRightJamM' with
| 'size_words' = 4 (N = 128).
*----------------------------------------------------------------------------*/
#define softfloat_shiftRightJam128M( aPtr, dist, zPtr ) softfloat_shiftRightJamM( 4, aPtr, dist, zPtr )
#endif

#ifndef softfloat_shiftRightJam160M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_shiftRightJamM' with
| 'size_words' = 5 (N = 160).
*----------------------------------------------------------------------------*/
#define softfloat_shiftRightJam160M( aPtr, dist, zPtr ) softfloat_shiftRightJamM( 5, aPtr, dist, zPtr )
#endif

#ifndef softfloat_addM
/*----------------------------------------------------------------------------
| Adds the two N-bit integers pointed to by 'aPtr' and 'bPtr', where N =
| 'size_words' * 32.  The addition is modulo 2^N, so any carry out is lost.
| The N-bit sum is stored at the location pointed to by 'zPtr'.  Each of
| 'aPtr', 'bPtr', and 'zPtr' points to a 'size_words'-long array of 32-bit
| elements that concatenate in the platform's normal endian order to form an
| N-bit integer.
*----------------------------------------------------------------------------*/
void
 softfloat_addM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     const uint32_t *bPtr,
     uint32_t *zPtr
 );
#endif

#ifndef softfloat_add96M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_addM' with 'size_words'
| = 3 (N = 96).
*----------------------------------------------------------------------------*/
#define softfloat_add96M( aPtr, bPtr, zPtr ) softfloat_addM( 3, aPtr, bPtr, zPtr )
#endif

#ifndef softfloat_add128M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_addM' with 'size_words'
| = 4 (N = 128).
*----------------------------------------------------------------------------*/
#define softfloat_add128M( aPtr, bPtr, zPtr ) softfloat_addM( 4, aPtr, bPtr, zPtr )
#endif

#ifndef softfloat_add160M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_addM' with 'size_words'
| = 5 (N = 160).
*----------------------------------------------------------------------------*/
#define softfloat_add160M( aPtr, bPtr, zPtr ) softfloat_addM( 5, aPtr, bPtr, zPtr )
#endif

#ifndef softfloat_addCarryM
/*----------------------------------------------------------------------------
| Adds the two N-bit unsigned integers pointed to by 'aPtr' and 'bPtr', where
| N = 'size_words' * 32, plus 'carry', which must be either 0 or 1.  The N-bit
| sum (modulo 2^N) is stored at the location pointed to by 'zPtr', and any
| carry out is returned as the result.  Each of 'aPtr', 'bPtr', and 'zPtr'
| points to a 'size_words'-long array of 32-bit elements that concatenate in
| the platform's normal endian order to form an N-bit integer.
*----------------------------------------------------------------------------*/
uint_fast8_t
 softfloat_addCarryM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     const uint32_t *bPtr,
     uint_fast8_t carry,
     uint32_t *zPtr
 );
#endif

#ifndef softfloat_addComplCarryM
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_addCarryM', except that
| the value of the unsigned integer pointed to by 'bPtr' is bit-wise completed
| before the addition.
*----------------------------------------------------------------------------*/
uint_fast8_t
 softfloat_addComplCarryM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     const uint32_t *bPtr,
     uint_fast8_t carry,
     uint32_t *zPtr
 );
#endif

#ifndef softfloat_addComplCarry96M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_addComplCarryM' with
| 'size_words' = 3 (N = 96).
*----------------------------------------------------------------------------*/
#define softfloat_addComplCarry96M( aPtr, bPtr, carry, zPtr ) softfloat_addComplCarryM( 3, aPtr, bPtr, carry, zPtr )
#endif

#ifndef softfloat_negXM
/*----------------------------------------------------------------------------
| Replaces the N-bit unsigned integer pointed to by 'zPtr' by the
| 2s-complement of itself, where N = 'size_words' * 32.  Argument 'zPtr'
| points to a 'size_words'-long array of 32-bit elements that concatenate in
| the platform's normal endian order to form an N-bit integer.
*----------------------------------------------------------------------------*/
void softfloat_negXM( uint_fast8_t size_words, uint32_t *zPtr );
#endif

#ifndef softfloat_negX96M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_negXM' with 'size_words'
| = 3 (N = 96).
*----------------------------------------------------------------------------*/
#define softfloat_negX96M( zPtr ) softfloat_negXM( 3, zPtr )
#endif

#ifndef softfloat_negX128M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_negXM' with 'size_words'
| = 4 (N = 128).
*----------------------------------------------------------------------------*/
#define softfloat_negX128M( zPtr ) softfloat_negXM( 4, zPtr )
#endif

#ifndef softfloat_negX160M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_negXM' with 'size_words'
| = 5 (N = 160).
*----------------------------------------------------------------------------*/
#define softfloat_negX160M( zPtr ) softfloat_negXM( 5, zPtr )
#endif

#ifndef softfloat_negX256M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_negXM' with 'size_words'
| = 8 (N = 256).
*----------------------------------------------------------------------------*/
#define softfloat_negX256M( zPtr ) softfloat_negXM( 8, zPtr )
#endif

#ifndef softfloat_sub1XM
/*----------------------------------------------------------------------------
| Subtracts 1 from the N-bit integer pointed to by 'zPtr', where N =
| 'size_words' * 32.  The subtraction is modulo 2^N, so any borrow out (carry
| out) is lost.  Argument 'zPtr' points to a 'size_words'-long array of 32-bit
| elements that concatenate in the platform's normal endian order to form an
| N-bit integer.
*----------------------------------------------------------------------------*/
void softfloat_sub1XM( uint_fast8_t size_words, uint32_t *zPtr );
#endif

#ifndef softfloat_sub1X96M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_sub1XM' with 'size_words'
| = 3 (N = 96).
*----------------------------------------------------------------------------*/
#define softfloat_sub1X96M( zPtr ) softfloat_sub1XM( 3, zPtr )
#endif

#ifndef softfloat_sub1X160M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_sub1XM' with 'size_words'
| = 5 (N = 160).
*----------------------------------------------------------------------------*/
#define softfloat_sub1X160M( zPtr ) softfloat_sub1XM( 5, zPtr )
#endif

#ifndef softfloat_subM
/*----------------------------------------------------------------------------
| Subtracts the two N-bit integers pointed to by 'aPtr' and 'bPtr', where N =
| 'size_words' * 32.  The subtraction is modulo 2^N, so any borrow out (carry
| out) is lost.  The N-bit difference is stored at the location pointed to by
| 'zPtr'.  Each of 'aPtr', 'bPtr', and 'zPtr' points to a 'size_words'-long
| array of 32-bit elements that concatenate in the platform's normal endian
| order to form an N-bit integer.
*----------------------------------------------------------------------------*/
void
 softfloat_subM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     const uint32_t *bPtr,
     uint32_t *zPtr
 );
#endif

#ifndef softfloat_sub96M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_subM' with 'size_words'
| = 3 (N = 96).
*----------------------------------------------------------------------------*/
#define softfloat_sub96M( aPtr, bPtr, zPtr ) softfloat_subM( 3, aPtr, bPtr, zPtr )
#endif

#ifndef softfloat_sub128M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_subM' with 'size_words'
| = 4 (N = 128).
*----------------------------------------------------------------------------*/
#define softfloat_sub128M( aPtr, bPtr, zPtr ) softfloat_subM( 4, aPtr, bPtr, zPtr )
#endif

#ifndef softfloat_sub160M
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_subM' with 'size_words'
| = 5 (N = 160).
*----------------------------------------------------------------------------*/
#define softfloat_sub160M( aPtr, bPtr, zPtr ) softfloat_subM( 5, aPtr, bPtr, zPtr )
#endif

#ifndef softfloat_mul64To128M
/*----------------------------------------------------------------------------
| Multiplies 'a' and 'b' and stores the 128-bit product at the location
| pointed to by 'zPtr'.  Argument 'zPtr' points to an array of four 32-bit
| elements that concatenate in the platform's normal endian order to form a
| 128-bit integer.
*----------------------------------------------------------------------------*/
void softfloat_mul64To128M( uint64_t a, uint64_t b, uint32_t *zPtr );
#endif

#ifndef softfloat_mul128MTo256M
/*----------------------------------------------------------------------------
| Multiplies the two 128-bit unsigned integers pointed to by 'aPtr' and
| 'bPtr', and stores the 256-bit product at the location pointed to by 'zPtr'.
| Each of 'aPtr' and 'bPtr' points to an array of four 32-bit elements that
| concatenate in the platform's normal endian order to form a 128-bit integer.
| Argument 'zPtr' points to an array of eight 32-bit elements that concatenate
| to form a 256-bit integer.
*----------------------------------------------------------------------------*/
void
 softfloat_mul128MTo256M(
     const uint32_t *aPtr, const uint32_t *bPtr, uint32_t *zPtr );
#endif

#ifndef softfloat_remStepMBy32
/*----------------------------------------------------------------------------
| Performs a "remainder reduction step" as follows:  Arguments 'remPtr' and
| 'bPtr' both point to N-bit unsigned integers, where N = 'size_words' * 32.
| Defining R and B as the values of those integers, the expression (R<<'dist')
| - B * q is computed modulo 2^N, and the N-bit result is stored at the
| location pointed to by 'zPtr'.  Each of 'remPtr', 'bPtr', and 'zPtr' points
| to a 'size_words'-long array of 32-bit elements that concatenate in the
| platform's normal endian order to form an N-bit integer.
*----------------------------------------------------------------------------*/
void
 softfloat_remStepMBy32(
     uint_fast8_t size_words,
     const uint32_t *remPtr,
     uint_fast8_t dist,
     const uint32_t *bPtr,
     uint32_t q,
     uint32_t *zPtr
 );
#endif

#ifndef softfloat_remStep96MBy32
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_remStepMBy32' with
| 'size_words' = 3 (N = 96).
*----------------------------------------------------------------------------*/
#define softfloat_remStep96MBy32( remPtr, dist, bPtr, q, zPtr ) softfloat_remStepMBy32( 3, remPtr, dist, bPtr, q, zPtr )
#endif

#ifndef softfloat_remStep128MBy32
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_remStepMBy32' with
| 'size_words' = 4 (N = 128).
*----------------------------------------------------------------------------*/
#define softfloat_remStep128MBy32( remPtr, dist, bPtr, q, zPtr ) softfloat_remStepMBy32( 4, remPtr, dist, bPtr, q, zPtr )
#endif

#ifndef softfloat_remStep160MBy32
/*----------------------------------------------------------------------------
| This function or macro is the same as 'softfloat_remStepMBy32' with
| 'size_words' = 5 (N = 160).
*----------------------------------------------------------------------------*/
#define softfloat_remStep160MBy32( remPtr, dist, bPtr, q, zPtr ) softfloat_remStepMBy32( 5, remPtr, dist, bPtr, q, zPtr )
#endif

#endif

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: internals.h
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


union ui16_f16 { uint16_t ui; float16_t f; };
union ui32_f32 { uint32_t ui; float32_t f; };
union ui64_f64 { uint64_t ui; float64_t f; };

#ifdef SOFTFLOAT_FAST_INT64
union extF80M_extF80 { struct extFloat80M fM; extFloat80_t f; };
union ui128_f128 { struct uint128 ui; float128_t f; };
#endif

enum {
    softfloat_mulAdd_subC    = 1,
    softfloat_mulAdd_subProd = 2
};

/*----------------------------------------------------------------------------
*----------------------------------------------------------------------------*/
uint_fast32_t softfloat_roundToUI32( bool, uint_fast64_t, uint_fast8_t, bool );

#ifdef SOFTFLOAT_FAST_INT64
uint_fast64_t
 softfloat_roundToUI64(
     bool, uint_fast64_t, uint_fast64_t, uint_fast8_t, bool );
#else
uint_fast64_t softfloat_roundMToUI64( bool, uint32_t *, uint_fast8_t, bool );
#endif

int_fast32_t softfloat_roundToI32( bool, uint_fast64_t, uint_fast8_t, bool );

#ifdef SOFTFLOAT_FAST_INT64
int_fast64_t
 softfloat_roundToI64(
     bool, uint_fast64_t, uint_fast64_t, uint_fast8_t, bool );
#else
int_fast64_t softfloat_roundMToI64( bool, uint32_t *, uint_fast8_t, bool );
#endif

/*----------------------------------------------------------------------------
*----------------------------------------------------------------------------*/
#define signF16UI( a ) ((bool) ((uint16_t) (a)>>15))
#define expF16UI( a ) ((int_fast8_t) ((a)>>10) & 0x1F)
#define fracF16UI( a ) ((a) & 0x03FF)
#define packToF16UI( sign, exp, sig ) (((uint16_t) (sign)<<15) + ((uint16_t) (exp)<<10) + (sig))

#define isNaNF16UI( a ) (((~(a) & 0x7C00) == 0) && ((a) & 0x03FF))

struct exp8_sig16 { int_fast8_t exp; uint_fast16_t sig; };
struct exp8_sig16 softfloat_normSubnormalF16Sig( uint_fast16_t );

float16_t softfloat_roundPackToF16( bool, int_fast16_t, uint_fast16_t );
float16_t softfloat_normRoundPackToF16( bool, int_fast16_t, uint_fast16_t );

float16_t softfloat_addMagsF16( uint_fast16_t, uint_fast16_t );
float16_t softfloat_subMagsF16( uint_fast16_t, uint_fast16_t );
float16_t
 softfloat_mulAddF16(
     uint_fast16_t, uint_fast16_t, uint_fast16_t, uint_fast8_t );

/*----------------------------------------------------------------------------
*----------------------------------------------------------------------------*/
#define signF32UI( a ) ((bool) ((uint32_t) (a)>>31))
#define expF32UI( a ) ((int_fast16_t) ((a)>>23) & 0xFF)
#define fracF32UI( a ) ((a) & 0x007FFFFF)
#define packToF32UI( sign, exp, sig ) (((uint32_t) (sign)<<31) + ((uint32_t) (exp)<<23) + (sig))

#define isNaNF32UI( a ) (((~(a) & 0x7F800000) == 0) && ((a) & 0x007FFFFF))

struct exp16_sig32 { int_fast16_t exp; uint_fast32_t sig; };
struct exp16_sig32 softfloat_normSubnormalF32Sig( uint_fast32_t );

float32_t softfloat_roundPackToF32( bool, int_fast16_t, uint_fast32_t );
float32_t softfloat_normRoundPackToF32( bool, int_fast16_t, uint_fast32_t );

float32_t softfloat_addMagsF32( uint_fast32_t, uint_fast32_t );
float32_t softfloat_subMagsF32( uint_fast32_t, uint_fast32_t );
float32_t
 softfloat_mulAddF32(
     uint_fast32_t, uint_fast32_t, uint_fast32_t, uint_fast8_t );

/*----------------------------------------------------------------------------
*----------------------------------------------------------------------------*/
#define signF64UI( a ) ((bool) ((uint64_t) (a)>>63))
#define expF64UI( a ) ((int_fast16_t) ((a)>>52) & 0x7FF)
#define fracF64UI( a ) ((a) & UINT64_C( 0x000FFFFFFFFFFFFF ))
#define packToF64UI( sign, exp, sig ) ((uint64_t) (((uint_fast64_t) (sign)<<63) + ((uint_fast64_t) (exp)<<52) + (sig)))

#define isNaNF64UI( a ) (((~(a) & UINT64_C( 0x7FF0000000000000 )) == 0) && ((a) & UINT64_C( 0x000FFFFFFFFFFFFF )))

struct exp16_sig64 { int_fast16_t exp; uint_fast64_t sig; };
struct exp16_sig64 softfloat_normSubnormalF64Sig( uint_fast64_t );

float64_t softfloat_roundPackToF64( bool, int_fast16_t, uint_fast64_t );
float64_t softfloat_normRoundPackToF64( bool, int_fast16_t, uint_fast64_t );

float64_t softfloat_addMagsF64( uint_fast64_t, uint_fast64_t, bool );
float64_t softfloat_subMagsF64( uint_fast64_t, uint_fast64_t, bool );
float64_t
 softfloat_mulAddF64(
     uint_fast64_t, uint_fast64_t, uint_fast64_t, uint_fast8_t );

/*----------------------------------------------------------------------------
*----------------------------------------------------------------------------*/
#define signExtF80UI64( a64 ) ((bool) ((uint16_t) (a64)>>15))
#define expExtF80UI64( a64 ) ((a64) & 0x7FFF)
#define packToExtF80UI64( sign, exp ) ((uint_fast16_t) (sign)<<15 | (exp))

#define isNaNExtF80UI( a64, a0 ) ((((a64) & 0x7FFF) == 0x7FFF) && ((a0) & UINT64_C( 0x7FFFFFFFFFFFFFFF )))

#ifdef SOFTFLOAT_FAST_INT64

/*----------------------------------------------------------------------------
*----------------------------------------------------------------------------*/

struct exp32_sig64 { int_fast32_t exp; uint64_t sig; };
struct exp32_sig64 softfloat_normSubnormalExtF80Sig( uint_fast64_t );

extFloat80_t
 softfloat_roundPackToExtF80(
     bool, int_fast32_t, uint_fast64_t, uint_fast64_t, uint_fast8_t );
extFloat80_t
 softfloat_normRoundPackToExtF80(
     bool, int_fast32_t, uint_fast64_t, uint_fast64_t, uint_fast8_t );

extFloat80_t
 softfloat_addMagsExtF80(
     uint_fast16_t, uint_fast64_t, uint_fast16_t, uint_fast64_t, bool );
extFloat80_t
 softfloat_subMagsExtF80(
     uint_fast16_t, uint_fast64_t, uint_fast16_t, uint_fast64_t, bool );

/*----------------------------------------------------------------------------
*----------------------------------------------------------------------------*/
#define signF128UI64( a64 ) ((bool) ((uint64_t) (a64)>>63))
#define expF128UI64( a64 ) ((int_fast32_t) ((a64)>>48) & 0x7FFF)
#define fracF128UI64( a64 ) ((a64) & UINT64_C( 0x0000FFFFFFFFFFFF ))
#define packToF128UI64( sign, exp, sig64 ) (((uint_fast64_t) (sign)<<63) + ((uint_fast64_t) (exp)<<48) + (sig64))

#define isNaNF128UI( a64, a0 ) (((~(a64) & UINT64_C( 0x7FFF000000000000 )) == 0) && (a0 || ((a64) & UINT64_C( 0x0000FFFFFFFFFFFF ))))

struct exp32_sig128 { int_fast32_t exp; struct uint128 sig; };
struct exp32_sig128
 softfloat_normSubnormalF128Sig( uint_fast64_t, uint_fast64_t );

float128_t
 softfloat_roundPackToF128(
     bool, int_fast32_t, uint_fast64_t, uint_fast64_t, uint_fast64_t );
float128_t
 softfloat_normRoundPackToF128(
     bool, int_fast32_t, uint_fast64_t, uint_fast64_t );

float128_t
 softfloat_addMagsF128(
     uint_fast64_t, uint_fast64_t, uint_fast64_t, uint_fast64_t, bool );
float128_t
 softfloat_subMagsF128(
     uint_fast64_t, uint_fast64_t, uint_fast64_t, uint_fast64_t, bool );
float128_t
 softfloat_mulAddF128(
     uint_fast64_t,
     uint_fast64_t,
     uint_fast64_t,
     uint_fast64_t,
     uint_fast64_t,
     uint_fast64_t,
     uint_fast8_t
 );

#else

/*----------------------------------------------------------------------------
*----------------------------------------------------------------------------*/

bool
 softfloat_tryPropagateNaNExtF80M(
     const struct extFloat80M *,
     const struct extFloat80M *,
     struct extFloat80M *
 );
void softfloat_invalidExtF80M( struct extFloat80M * );

int softfloat_normExtF80SigM( uint64_t * );

void
 softfloat_roundPackMToExtF80M(
     bool, int32_t, uint32_t *, uint_fast8_t, struct extFloat80M * );
void
 softfloat_normRoundPackMToExtF80M(
     bool, int32_t, uint32_t *, uint_fast8_t, struct extFloat80M * );

void
 softfloat_addExtF80M(
     const struct extFloat80M *,
     const struct extFloat80M *,
     struct extFloat80M *,
     bool
 );

int
 softfloat_compareNonnormExtF80M(
     const struct extFloat80M *, const struct extFloat80M * );

/*----------------------------------------------------------------------------
*----------------------------------------------------------------------------*/
#define signF128UI96( a96 ) ((bool) ((uint32_t) (a96)>>31))
#define expF128UI96( a96 ) ((int32_t) ((a96)>>16) & 0x7FFF)
#define fracF128UI96( a96 ) ((a96) & 0x0000FFFF)
#define packToF128UI96( sign, exp, sig96 ) (((uint32_t) (sign)<<31) + ((uint32_t) (exp)<<16) + (sig96))

bool softfloat_isNaNF128M( const uint32_t * );

bool
 softfloat_tryPropagateNaNF128M(
     const uint32_t *, const uint32_t *, uint32_t * );
void softfloat_invalidF128M( uint32_t * );

int softfloat_shiftNormSigF128M( const uint32_t *, uint_fast8_t, uint32_t * );

void softfloat_roundPackMToF128M( bool, int32_t, uint32_t *, uint32_t * );
void softfloat_normRoundPackMToF128M( bool, int32_t, uint32_t *, uint32_t * );

void
 softfloat_addF128M( const uint32_t *, const uint32_t *, uint32_t *, bool );
void
 softfloat_mulAddF128M(
     const uint32_t *,
     const uint32_t *,
     const uint32_t *,
     uint32_t *,
     uint_fast8_t
 );

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: softfloat_state.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


THREAD_LOCAL uint_fast8_t softfloat_roundingMode = softfloat_round_near_even;
THREAD_LOCAL uint_fast8_t softfloat_detectTininess = init_detectTininess;
THREAD_LOCAL uint_fast8_t softfloat_exceptionFlags = 0;

THREAD_LOCAL uint_fast8_t extF80_roundingPrecision = 80;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: softfloat_raiseFlags.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


/*----------------------------------------------------------------------------
| Raises the exceptions specified by 'flags'.  Floating-point traps can be
| defined here if desired.  It is currently not possible for such a trap
| to substitute a result value.  If traps are not implemented, this routine
| should be simply 'softfloat_exceptionFlags |= flags;'.
*----------------------------------------------------------------------------*/
void softfloat_raiseFlags( uint_fast8_t flags )
{

    softfloat_exceptionFlags |= flags;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_countLeadingZeros8.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


const uint_least8_t softfloat_countLeadingZeros8[256] = {
    8, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4,
    3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
    2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
    2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_countLeadingZeros32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

#if ! defined INLINE_LEVEL && ! defined softfloat_countLeadingZeros32

uint_fast8_t softfloat_countLeadingZeros32( uint32_t a )
{
    uint_fast8_t count;

    count = 0;
    if ( a < 0x10000 ) {
        count = 16;
        a <<= 16;
    }
    if ( a < 0x1000000 ) {
        count += 8;
        a <<= 8;
    }
    count += softfloat_countLeadingZeros8[a>>24];
    return count;

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_countLeadingZeros64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


uint_fast8_t softfloat_countLeadingZeros64( uint64_t a )
{
    uint_fast8_t count;
    uint32_t a32;

    count = 0;
    a32 = a>>32;
    if ( ! a32 ) {
        count = 32;
        a32 = a;
    }
    /*------------------------------------------------------------------------
    | From here, result is current count + count leading zeros of `a32'.
    *------------------------------------------------------------------------*/
    if ( a32 < 0x10000 ) {
        count += 16;
        a32 <<= 16;
    }
    if ( a32 < 0x1000000 ) {
        count += 8;
        a32 <<= 8;
    }
    count += softfloat_countLeadingZeros8[a32>>24];
    return count;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shiftRightJam32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#if ! defined INLINE_LEVEL

uint32_t softfloat_shiftRightJam32( uint32_t a, uint_fast16_t dist )
{

    return
        (dist < 31) ? a>>dist | ((uint32_t) (a<<(-dist & 31)) != 0) : (a != 0);

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shiftRightJam64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#if ! defined INLINE_LEVEL

uint64_t softfloat_shiftRightJam64( uint64_t a, uint_fast32_t dist )
{

    return
        (dist < 63) ? a>>dist | ((uint64_t) (a<<(-dist & 63)) != 0) : (a != 0);

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_propagateNaNF32UI.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


/*----------------------------------------------------------------------------
| Interpreting 'uiA' and 'uiB' as the bit patterns of two 32-bit floating-
| point values, at least one of which is a NaN, returns the bit pattern of
| the combined NaN result.  If either 'uiA' or 'uiB' has the pattern of a
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/
uint_fast32_t
 softfloat_propagateNaNF32UI( uint_fast32_t uiA, uint_fast32_t uiB )
{
    if ( softfloat_isSigNaNF32UI( uiA ) || softfloat_isSigNaNF32UI( uiB ) ) {
        softfloat_raiseFlags( softfloat_flag_invalid );
    }
    return defaultNaNF32UI;
}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_propagateNaNF64UI.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


/*----------------------------------------------------------------------------
| Interpreting 'uiA' and 'uiB' as the bit patterns of two 64-bit floating-
| point values, at least one of which is a NaN, returns the bit pattern of
| the combined NaN result.  If either 'uiA' or 'uiB' has the pattern of a
| signaling NaN, the invalid exception is raised.
*----------------------------------------------------------------------------*/
uint_fast64_t
 softfloat_propagateNaNF64UI( uint_fast64_t uiA, uint_fast64_t uiB )
{
    if ( softfloat_isSigNaNF64UI( uiA ) || softfloat_isSigNaNF64UI( uiB ) ) {
        softfloat_raiseFlags( softfloat_flag_invalid );
    }
    return defaultNaNF64UI;
}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_roundPackToF32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t
 softfloat_roundPackToF32( bool sign, int_fast16_t exp, uint_fast32_t sig )
{
    uint_fast8_t roundingMode;
    bool roundNearEven;
    uint_fast8_t roundIncrement, roundBits;
    bool isTiny;
    uint_fast32_t uiZ;
    union ui32_f32 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    roundingMode = softfloat_roundingMode;
    roundNearEven = (roundingMode == softfloat_round_near_even);
    roundIncrement = 0x40;
    if ( ! roundNearEven && (roundingMode != softfloat_round_near_maxMag) ) {
        roundIncrement =
            (roundingMode
                 == (sign ? softfloat_round_min : softfloat_round_max))
                ? 0x7F
                : 0;
    }
    roundBits = sig & 0x7F;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( 0xFD <= (unsigned int) exp ) {
        if ( exp < 0 ) {
            /*----------------------------------------------------------------
            *----------------------------------------------------------------*/
            isTiny =
                (softfloat_detectTininess == softfloat_tininess_beforeRounding)
                    || (exp < -1) || (sig + roundIncrement < 0x80000000);
            sig = softfloat_shiftRightJam32( sig, -exp );
            exp = 0;
            roundBits = sig & 0x7F;
            if ( isTiny && roundBits ) {
                softfloat_raiseFlags( softfloat_flag_underflow );
            }
        } else if ( (0xFD < exp) || (0x80000000 <= sig + roundIncrement) ) {
            /*----------------------------------------------------------------
            *----------------------------------------------------------------*/
            softfloat_raiseFlags(
                softfloat_flag_overflow | softfloat_flag_inexact );
            uiZ = packToF32UI( sign, 0xFF, 0 ) - ! roundIncrement;
            goto uiZ;
        }
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    sig = (sig + roundIncrement)>>7;
    if ( roundBits ) {
        softfloat_exceptionFlags |= softfloat_flag_inexact;
#ifdef SOFTFLOAT_ROUND_ODD
        if ( roundingMode == softfloat_round_odd ) {
            sig |= 1;
            goto packReturn;
        }
#endif
    }
    sig &= ~(uint_fast32_t) (! (roundBits ^ 0x40) & roundNearEven);
    if ( ! sig ) exp = 0;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
#ifdef SOFTFLOAT_ROUND_ODD
 packReturn:
#endif
    uiZ = packToF32UI( sign, exp, sig );
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_roundPackToF64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t
 softfloat_roundPackToF64( bool sign, int_fast16_t exp, uint_fast64_t sig )
{
    uint_fast8_t roundingMode;
    bool roundNearEven;
    uint_fast16_t roundIncrement, roundBits;
    bool isTiny;
    uint_fast64_t uiZ;
    union ui64_f64 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    roundingMode = softfloat_roundingMode;
    roundNearEven = (roundingMode == softfloat_round_near_even);
    roundIncrement = 0x200;
    if ( ! roundNearEven && (roundingMode != softfloat_round_near_maxMag) ) {
        roundIncrement =
            (roundingMode
                 == (sign ? softfloat_round_min : softfloat_round_max))
                ? 0x3FF
                : 0;
    }
    roundBits = sig & 0x3FF;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( 0x7FD <= (uint16_t) exp ) {
        if ( exp < 0 ) {
            /*----------------------------------------------------------------
            *----------------------------------------------------------------*/
            isTiny =
                (softfloat_detectTininess == softfloat_tininess_beforeRounding)
                    || (exp < -1)
                    || (sig + roundIncrement < UINT64_C( 0x8000000000000000 ));
            sig = softfloat_shiftRightJam64( sig, -exp );
            exp = 0;
            roundBits = sig & 0x3FF;
            if ( isTiny && roundBits ) {
                softfloat_raiseFlags( softfloat_flag_underflow );
            }
        } else if (
            (0x7FD < exp)
                || (UINT64_C( 0x8000000000000000 ) <= sig + roundIncrement)
        ) {
            /*----------------------------------------------------------------
            *----------------------------------------------------------------*/
            softfloat_raiseFlags(
                softfloat_flag_overflow | softfloat_flag_inexact );
            uiZ = packToF64UI( sign, 0x7FF, 0 ) - ! roundIncrement;
            goto uiZ;
        }
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    sig = (sig + roundIncrement)>>10;
    if ( roundBits ) {
        softfloat_exceptionFlags |= softfloat_flag_inexact;
#ifdef SOFTFLOAT_ROUND_ODD
        if ( roundingMode == softfloat_round_odd ) {
            sig |= 1;
            goto packReturn;
        }
#endif
    }
    sig &= ~(uint_fast64_t) (! (roundBits ^ 0x200) & roundNearEven);
    if ( ! sig ) exp = 0;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
#ifdef SOFTFLOAT_ROUND_ODD
 packReturn:
#endif
    uiZ = packToF64UI( sign, exp, sig );
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_normRoundPackToF32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t
 softfloat_normRoundPackToF32( bool sign, int_fast16_t exp, uint_fast32_t sig )
{
    int_fast8_t shiftDist;
    union ui32_f32 uZ;

    shiftDist = softfloat_countLeadingZeros32( sig ) - 1;
    exp -= shiftDist;
    if ( (7 <= shiftDist) && ((unsigned int) exp < 0xFD) ) {
        uZ.ui = packToF32UI( sign, sig ? exp : 0, sig<<(shiftDist - 7) );
        return uZ.f;
    } else {
        return softfloat_roundPackToF32( sign, exp, sig<<shiftDist );
    }

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_normRoundPackToF64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t
 softfloat_normRoundPackToF64( bool sign, int_fast16_t exp, uint_fast64_t sig )
{
    int_fast8_t shiftDist;
    union ui64_f64 uZ;

    shiftDist = softfloat_countLeadingZeros64( sig ) - 1;
    exp -= shiftDist;
    if ( (10 <= shiftDist) && ((unsigned int) exp < 0x7FD) ) {
        uZ.ui = packToF64UI( sign, sig ? exp : 0, sig<<(shiftDist - 10) );
        return uZ.f;
    } else {
        return softfloat_roundPackToF64( sign, exp, sig<<shiftDist );
    }

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_addMagsF32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t softfloat_addMagsF32( uint_fast32_t uiA, uint_fast32_t uiB )
{
    int_fast16_t expA;
    uint_fast32_t sigA;
    int_fast16_t expB;
    uint_fast32_t sigB;
    int_fast16_t expDiff;
    uint_fast32_t uiZ;
    bool signZ;
    int_fast16_t expZ;
    uint_fast32_t sigZ;
    union ui32_f32 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expA = expF32UI( uiA );
    sigA = fracF32UI( uiA );
    expB = expF32UI( uiB );
    sigB = fracF32UI( uiB );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expDiff = expA - expB;
    if ( ! expDiff ) {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        if ( ! expA ) {
            uiZ = uiA + sigB;
            goto uiZ;
        }
        if ( expA == 0xFF ) {
            if ( sigA | sigB ) goto propagateNaN;
            uiZ = uiA;
            goto uiZ;
        }
        signZ = signF32UI( uiA );
        expZ = expA;
        sigZ = 0x01000000 + sigA + sigB;
        if ( ! (sigZ & 1) && (expZ < 0xFE) ) {
            uiZ = packToF32UI( signZ, expZ, sigZ>>1 );
            goto uiZ;
        }
        sigZ <<= 6;
    } else {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        signZ = signF32UI( uiA );
        sigA <<= 6;
        sigB <<= 6;
        if ( expDiff < 0 ) {
            if ( expB == 0xFF ) {
                if ( sigB ) goto propagateNaN;
                uiZ = packToF32UI( signZ, 0xFF, 0 );
                goto uiZ;
            }
            expZ = expB;
            sigA += expA ? 0x20000000 : sigA;
            sigA = softfloat_shiftRightJam32( sigA, -expDiff );
        } else {
            if ( expA == 0xFF ) {
                if ( sigA ) goto propagateNaN;
                uiZ = uiA;
                goto uiZ;
            }
            expZ = expA;
            sigB += expB ? 0x20000000 : sigB;
            sigB = softfloat_shiftRightJam32( sigB, expDiff );
        }
        sigZ = 0x20000000 + sigA + sigB;
        if ( sigZ < 0x40000000 ) {
            --expZ;
            sigZ <<= 1;
        }
    }
    return softfloat_roundPackToF32( signZ, expZ, sigZ );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 propagateNaN:
    uiZ = softfloat_propagateNaNF32UI( uiA, uiB );
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_addMagsF64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t
 softfloat_addMagsF64( uint_fast64_t uiA, uint_fast64_t uiB, bool signZ )
{
    int_fast16_t expA;
    uint_fast64_t sigA;
    int_fast16_t expB;
    uint_fast64_t sigB;
    int_fast16_t expDiff;
    uint_fast64_t uiZ;
    int_fast16_t expZ;
    uint_fast64_t sigZ;
    union ui64_f64 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expA = expF64UI( uiA );
    sigA = fracF64UI( uiA );
    expB = expF64UI( uiB );
    sigB = fracF64UI( uiB );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expDiff = expA - expB;
    if ( ! expDiff ) {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        if ( ! expA ) {
            uiZ = uiA + sigB;
            goto uiZ;
        }
        if ( expA == 0x7FF ) {
            if ( sigA | sigB ) goto propagateNaN;
            uiZ = uiA;
            goto uiZ;
        }
        expZ = expA;
        sigZ = UINT64_C( 0x0020000000000000 ) + sigA + sigB;
        sigZ <<= 9;
    } else {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        sigA <<= 9;
        sigB <<= 9;
        if ( expDiff < 0 ) {
            if ( expB == 0x7FF ) {
                if ( sigB ) goto propagateNaN;
                uiZ = packToF64UI( signZ, 0x7FF, 0 );
                goto uiZ;
            }
            expZ = expB;
            if ( expA ) {
                sigA += UINT64_C( 0x2000000000000000 );
            } else {
                sigA <<= 1;
            }
            sigA = softfloat_shiftRightJam64( sigA, -expDiff );
        } else {
            if ( expA == 0x7FF ) {
                if ( sigA ) goto propagateNaN;
                uiZ = uiA;
                goto uiZ;
            }
            expZ = expA;
            if ( expB ) {
                sigB += UINT64_C( 0x2000000000000000 );
            } else {
                sigB <<= 1;
            }
            sigB = softfloat_shiftRightJam64( sigB, expDiff );
        }
        sigZ = UINT64_C( 0x2000000000000000 ) + sigA + sigB;
        if ( sigZ < UINT64_C( 0x4000000000000000 ) ) {
            --expZ;
            sigZ <<= 1;
        }
    }
    return softfloat_roundPackToF64( signZ, expZ, sigZ );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 propagateNaN:
    uiZ = softfloat_propagateNaNF64UI( uiA, uiB );
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_subMagsF32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t softfloat_subMagsF32( uint_fast32_t uiA, uint_fast32_t uiB )
{
    int_fast16_t expA;
    uint_fast32_t sigA;
    int_fast16_t expB;
    uint_fast32_t sigB;
    int_fast16_t expDiff;
    uint_fast32_t uiZ;
    int_fast32_t sigDiff;
    bool signZ;
    int_fast8_t shiftDist;
    int_fast16_t expZ;
    uint_fast32_t sigX, sigY;
    union ui32_f32 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expA = expF32UI( uiA );
    sigA = fracF32UI( uiA );
    expB = expF32UI( uiB );
    sigB = fracF32UI( uiB );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expDiff = expA - expB;
    if ( ! expDiff ) {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        if ( expA == 0xFF ) {
            if ( sigA | sigB ) goto propagateNaN;
            softfloat_raiseFlags( softfloat_flag_invalid );
            uiZ = defaultNaNF32UI;
            goto uiZ;
        }
        sigDiff = sigA - sigB;
        if ( ! sigDiff ) {
            uiZ =
                packToF32UI(
                    (softfloat_roundingMode == softfloat_round_min), 0, 0 );
            goto uiZ;
        }
        if ( expA ) --expA;
        signZ = signF32UI( uiA );
        if ( sigDiff < 0 ) {
            signZ = ! signZ;
            sigDiff = -sigDiff;
        }
        shiftDist = softfloat_countLeadingZeros32( sigDiff ) - 8;
        expZ = expA - shiftDist;
        if ( expZ < 0 ) {
            shiftDist = expA;
            expZ = 0;
        }
        uiZ = packToF32UI( signZ, expZ, sigDiff<<shiftDist );
        goto uiZ;
    } else {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        signZ = signF32UI( uiA );
        sigA <<= 7;
        sigB <<= 7;
        if ( expDiff < 0 ) {
            /*----------------------------------------------------------------
            *----------------------------------------------------------------*/
            signZ = ! signZ;
            if ( expB == 0xFF ) {
                if ( sigB ) goto propagateNaN;
                uiZ = packToF32UI( signZ, 0xFF, 0 );
                goto uiZ;
            }
            expZ = expB - 1;
            sigX = sigB | 0x40000000;
            sigY = sigA + (expA ? 0x40000000 : sigA);
            expDiff = -expDiff;
        } else {
            /*----------------------------------------------------------------
            *----------------------------------------------------------------*/
            if ( expA == 0xFF ) {
                if ( sigA ) goto propagateNaN;
                uiZ = uiA;
                goto uiZ;
            }
            expZ = expA - 1;
            sigX = sigA | 0x40000000;
            sigY = sigB + (expB ? 0x40000000 : sigB);
        }
        return
            softfloat_normRoundPackToF32(
                signZ, expZ, sigX - softfloat_shiftRightJam32( sigY, expDiff )
            );
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 propagateNaN:
    uiZ = softfloat_propagateNaNF32UI( uiA, uiB );
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_subMagsF64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t
 softfloat_subMagsF64( uint_fast64_t uiA, uint_fast64_t uiB, bool signZ )
{
    int_fast16_t expA;
    uint_fast64_t sigA;
    int_fast16_t expB;
    uint_fast64_t sigB;
    int_fast16_t expDiff;
    uint_fast64_t uiZ;
    int_fast64_t sigDiff;
    int_fast8_t shiftDist;
    int_fast16_t expZ;
    uint_fast64_t sigZ;
    union ui64_f64 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expA = expF64UI( uiA );
    sigA = fracF64UI( uiA );
    expB = expF64UI( uiB );
    sigB = fracF64UI( uiB );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expDiff = expA - expB;
    if ( ! expDiff ) {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        if ( expA == 0x7FF ) {
            if ( sigA | sigB ) goto propagateNaN;
            softfloat_raiseFlags( softfloat_flag_invalid );
            uiZ = defaultNaNF64UI;
            goto uiZ;
        }
        sigDiff = sigA - sigB;
        if ( ! sigDiff ) {
            uiZ =
                packToF64UI(
                    (softfloat_roundingMode == softfloat_round_min), 0, 0 );
            goto uiZ;
        }
        if ( expA ) --expA;
        if ( sigDiff < 0 ) {
            signZ = ! signZ;
            sigDiff = -sigDiff;
        }
        shiftDist = softfloat_countLeadingZeros64( sigDiff ) - 11;
        expZ = expA - shiftDist;
        if ( expZ < 0 ) {
            shiftDist = expA;
            expZ = 0;
        }
        uiZ = packToF64UI( signZ, expZ, sigDiff<<shiftDist );
        goto uiZ;
    } else {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        sigA <<= 10;
        sigB <<= 10;
        if ( expDiff < 0 ) {
            /*----------------------------------------------------------------
            *----------------------------------------------------------------*/
            signZ = ! signZ;
            if ( expB == 0x7FF ) {
                if ( sigB ) goto propagateNaN;
                uiZ = packToF64UI( signZ, 0x7FF, 0 );
                goto uiZ;
            }
            sigA += expA ? UINT64_C( 0x4000000000000000 ) : sigA;
            sigA = softfloat_shiftRightJam64( sigA, -expDiff );
            sigB |= UINT64_C( 0x4000000000000000 );
            expZ = expB;
            sigZ = sigB - sigA;
        } else {
            /*----------------------------------------------------------------
            *----------------------------------------------------------------*/
            if ( expA == 0x7FF ) {
                if ( sigA ) goto propagateNaN;
                uiZ = uiA;
                goto uiZ;
            }
            sigB += expB ? UINT64_C( 0x4000000000000000 ) : sigB;
            sigB = softfloat_shiftRightJam64( sigB, expDiff );
            sigA |= UINT64_C( 0x4000000000000000 );
            expZ = expA;
            sigZ = sigA - sigB;
        }
        return softfloat_normRoundPackToF64( signZ, expZ - 1, sigZ );
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 propagateNaN:
    uiZ = softfloat_propagateNaNF64UI( uiA, uiB );
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_normSubnormalF32Sig.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


struct exp16_sig32 softfloat_normSubnormalF32Sig( uint_fast32_t sig )
{
    int_fast8_t shiftDist;
    struct exp16_sig32 z;

    shiftDist = softfloat_countLeadingZeros32( sig ) - 8;
    z.exp = 1 - shiftDist;
    z.sig = sig<<shiftDist;
    return z;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_normSubnormalF64Sig.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


struct exp16_sig64 softfloat_normSubnormalF64Sig( uint_fast64_t sig )
{
    int_fast8_t shiftDist;
    struct exp16_sig64 z;

    shiftDist = softfloat_countLeadingZeros64( sig ) - 11;
    z.exp = 1 - shiftDist;
    z.sig = sig<<shiftDist;
    return z;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: ss_approxRecip_1Ks
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


const uint16_t softfloat_approxRecip_1k0s[16] = {
    0xFFC4, 0xF0BE, 0xE363, 0xD76F, 0xCCAD, 0xC2F0, 0xBA16, 0xB201,
    0xAA97, 0xA3C6, 0x9D7A, 0x97A6, 0x923C, 0x8D32, 0x887E, 0x8417
};
const uint16_t softfloat_approxRecip_1k1s[16] = {
    0xF0F1, 0xD62C, 0xBFA1, 0xAC77, 0x9C0A, 0x8DDB, 0x8185, 0x76BA,
    0x6D3B, 0x64D4, 0x5D5C, 0x56B1, 0x50B6, 0x4B55, 0x4679, 0x4211
};


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_approxRecip32_1
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

#ifndef SOFTFLOAT_FAST_DIV64TO32

extern const uint16_t softfloat_approxRecip_1k0s[16];
extern const uint16_t softfloat_approxRecip_1k1s[16];

uint32_t softfloat_approxRecip32_1( uint32_t a )
{
    int index;
    uint16_t eps, r0;
    uint32_t sigma0;
    uint_fast32_t r;
    uint32_t sqrSigma0;

    index = a>>27 & 0xF;
    eps = (uint16_t) (a>>11);
    r0 = softfloat_approxRecip_1k0s[index]
             - ((softfloat_approxRecip_1k1s[index] * (uint_fast32_t) eps)>>20);
    sigma0 = ~(uint_fast32_t) ((r0 * (uint_fast64_t) a)>>7);
    r = ((uint_fast32_t) r0<<16) + ((r0 * (uint_fast64_t) sigma0)>>24);
    sqrSigma0 = ((uint_fast64_t) sigma0 * sigma0)>>32;
    r += ((uint32_t) r * (uint_fast64_t) sqrSigma0)>>48;
    return r;

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shortShiftRightJam64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

#if ! defined INLINE_LEVEL

uint64_t softfloat_shortShiftRightJam64( uint64_t a, uint_fast8_t dist )
{

    return a>>dist | ((a & (((uint_fast64_t) 1<<dist) - 1)) != 0);

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_mul64To128M.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


void softfloat_mul64To128M( uint64_t a, uint64_t b, uint32_t *zPtr )
{
    uint32_t a32, a0, b32, b0;
    uint64_t z0, mid1, z64, mid;

    a32 = a>>32;
    a0 = a;
    b32 = b>>32;
    b0 = b;
    z0 = (uint64_t) a0 * b0;
    mid1 = (uint64_t) a32 * b0;
    mid = mid1 + (uint64_t) a0 * b32;
    z64 = (uint64_t) a32 * b32;
    z64 += (uint64_t) (mid < mid1)<<32 | mid>>32;
    mid <<= 32;
    z0 += mid;
    zPtr[indexWord( 4, 1 )] = z0>>32;
    zPtr[indexWord( 4, 0 )] = z0;
    z64 += (z0 < mid);
    zPtr[indexWord( 4, 3 )] = z64>>32;
    zPtr[indexWord( 4, 2 )] = z64;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_approxRecipSqrt_1Ks.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


const uint16_t softfloat_approxRecipSqrt_1k0s[16] = {
    0xB4C9, 0xFFAB, 0xAA7D, 0xF11C, 0xA1C5, 0xE4C7, 0x9A43, 0xDA29,
    0x93B5, 0xD0E5, 0x8DED, 0xC8B7, 0x88C6, 0xC16D, 0x8424, 0xBAE1
};
const uint16_t softfloat_approxRecipSqrt_1k1s[16] = {
    0xA5A5, 0xEA42, 0x8C21, 0xC62D, 0x788F, 0xAA7F, 0x6928, 0x94B6,
    0x5CC7, 0x8335, 0x52A6, 0x74E2, 0x4A3E, 0x68FE, 0x432B, 0x5EFD
};


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_approxRecipSqrt32_1.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


uint32_t softfloat_approxRecipSqrt32_1( unsigned int oddExpA, uint32_t a )
{
    int index;
    uint16_t eps, r0;
    uint_fast32_t ESqrR0;
    uint32_t sigma0;
    uint_fast32_t r;
    uint32_t sqrSigma0;

    index = (a>>27 & 0xE) + oddExpA;
    eps = (uint16_t) (a>>12);
    r0 = softfloat_approxRecipSqrt_1k0s[index]
             - ((softfloat_approxRecipSqrt_1k1s[index] * (uint_fast32_t) eps)
                    >>20);
    ESqrR0 = (uint_fast32_t) r0 * r0;
    if ( ! oddExpA ) ESqrR0 <<= 1;
    sigma0 = ~(uint_fast32_t) (((uint32_t) ESqrR0 * (uint_fast64_t) a)>>23);
    r = ((uint_fast32_t) r0<<16) + ((r0 * (uint_fast64_t) sigma0)>>25);
    sqrSigma0 = ((uint_fast64_t) sigma0 * sigma0)>>32;
    r += ((uint32_t) ((r>>1) + (r>>3) - ((uint_fast32_t) r0<<14))
              * (uint_fast64_t) sqrSigma0)
             >>48;
    if ( ! (r & 0x80000000) ) r = 0x80000000;
    return r;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_add128.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#if defined SOFTFLOAT_FAST_INT64 && ! defined INLINE_LEVEL

struct uint128
 softfloat_add128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 )
{
    struct uint128 z;

    z.v0 = a0 + b0;
    z.v64 = a64 + b64 + (z.v0 < a0);
    return z;

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_sub128.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#if defined SOFTFLOAT_FAST_INT64 && ! defined INLINE_LEVEL

struct uint128
 softfloat_sub128( uint64_t a64, uint64_t a0, uint64_t b64, uint64_t b0 )
{
    struct uint128 z;

    z.v0 = a0 - b0;
    z.v64 = a64 - b64 - (a0 < b0);
    return z;

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_mul64To128.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#ifdef SOFTFLOAT_FAST_INT64

struct uint128 softfloat_mul64To128( uint64_t a, uint64_t b )
{
    uint32_t a32, a0, b32, b0;
    struct uint128 z;
    uint64_t mid1, mid;

    a32 = a>>32;
    a0 = a;
    b32 = b>>32;
    b0 = b;
    z.v0 = (uint_fast64_t) a0 * b0;
    mid1 = (uint_fast64_t) a32 * b0;
    mid = mid1 + (uint_fast64_t) a0 * b32;
    z.v64 = (uint_fast64_t) a32 * b32;
    z.v64 += (uint_fast64_t) (mid < mid1)<<32 | mid>>32;
    mid <<= 32;
    z.v0 += mid;
    z.v64 += (z.v0 < mid);
    return z;

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shortShiftLeft128.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#if defined SOFTFLOAT_FAST_INT64 && ! defined INLINE_LEVEL

struct uint128
 softfloat_shortShiftLeft128( uint64_t a64, uint64_t a0, uint_fast8_t dist )
{
    struct uint128 z;

    z.v64 = a64<<dist | a0>>(-dist & 63);
    z.v0 = a0<<dist;
    return z;

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shiftRightJam128.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#ifdef SOFTFLOAT_FAST_INT64

struct uint128
 softfloat_shiftRightJam128( uint64_t a64, uint64_t a0, uint_fast32_t dist )
{
    uint_fast8_t u8NegDist;
    struct uint128 z;

    if ( dist < 64 ) {
        u8NegDist = -dist;
        z.v64 = a64>>dist;
        z.v0 =
            a64<<(u8NegDist & 63) | a0>>dist
                | ((uint64_t) (a0<<(u8NegDist & 63)) != 0);
    } else {
        z.v64 = 0;
        z.v0 =
            (dist < 127)
                ? a64>>(dist & 63)
                      | (((a64 & (((uint_fast64_t) 1<<(dist & 63)) - 1)) | a0)
                             != 0)
                : ((a64 | a0) != 0);
    }
    return z;

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shortShiftRightJam128.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#if defined SOFTFLOAT_FAST_INT64 && ! defined INLINE_LEVEL

struct uint128
 softfloat_shortShiftRightJam128(
     uint64_t a64, uint64_t a0, uint_fast8_t dist )
{
    uint_fast8_t uNegDist;
    struct uint128 z;

    uNegDist = -dist;
    z.v64 = a64>>dist;
    z.v0 =
        a64<<(uNegDist & 63) | a0>>dist
            | ((uint64_t) (a0<<(uNegDist & 63)) != 0);
    return z;

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_addM.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


void
 softfloat_addM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     const uint32_t *bPtr,
     uint32_t *zPtr
 )
{
    unsigned int index, lastIndex;
    uint_fast8_t carry;
    uint32_t wordA, wordZ;

    index = indexWordLo( size_words );
    lastIndex = indexWordHi( size_words );
    carry = 0;
    for (;;) {
        wordA = aPtr[index];
        wordZ = wordA + bPtr[index] + carry;
        zPtr[index] = wordZ;
        if ( index == lastIndex ) break;
        if ( wordZ != wordA ) carry = (wordZ < wordA);
        index += wordIncr;
    }

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_subM.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


void
 softfloat_subM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     const uint32_t *bPtr,
     uint32_t *zPtr
 )
{
    unsigned int index, lastIndex;
    uint_fast8_t borrow;
    uint32_t wordA, wordB;

    index = indexWordLo( size_words );
    lastIndex = indexWordHi( size_words );
    borrow = 0;
    for (;;) {
        wordA = aPtr[index];
        wordB = bPtr[index];
        zPtr[index] = wordA - wordB - borrow;
        if ( index == lastIndex ) break;
        borrow = borrow ? (wordA <= wordB) : (wordA < wordB);
        index += wordIncr;
    }

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_negXM.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


void softfloat_negXM( uint_fast8_t size_words, uint32_t *zPtr )
{
    unsigned int index, lastIndex;
    uint_fast8_t carry;
    uint32_t word;

    index = indexWordLo( size_words );
    lastIndex = indexWordHi( size_words );
    carry = 1;
    for (;;) {
        word = ~zPtr[index] + carry;
        zPtr[index] = word;
        if ( index == lastIndex ) break;
        index += wordIncr;
        if ( word ) carry = 0;
    }

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shortShiftLeftM.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


void
 softfloat_shortShiftLeftM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     uint_fast8_t dist,
     uint32_t *zPtr
 )
{
    uint_fast8_t uNegDist;
    unsigned int index, lastIndex;
    uint32_t partWordZ, wordA;

    uNegDist = -dist;
    index = indexWordHi( size_words );
    lastIndex = indexWordLo( size_words );
    partWordZ = aPtr[index]<<dist;
    while ( index != lastIndex ) {
        wordA = aPtr[index - wordIncr];
        zPtr[index] = partWordZ | wordA>>(uNegDist & 31);
        index -= wordIncr;
        partWordZ = wordA<<dist;
    }
    zPtr[index] = partWordZ;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shortShiftRightM.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


void
 softfloat_shortShiftRightM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     uint_fast8_t dist,
     uint32_t *zPtr
 )
{
    uint_fast8_t uNegDist;
    unsigned int index, lastIndex;
    uint32_t partWordZ, wordA;

    uNegDist = -dist;
    index = indexWordLo( size_words );
    lastIndex = indexWordHi( size_words );
    partWordZ = aPtr[index]>>dist;
    while ( index != lastIndex ) {
        wordA = aPtr[index + wordIncr];
        zPtr[index] = wordA<<(uNegDist & 31) | partWordZ;
        index += wordIncr;
        partWordZ = wordA>>dist;
    }
    zPtr[index] = partWordZ;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shortShiftRightJamM.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


void
 softfloat_shortShiftRightJamM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     uint_fast8_t dist,
     uint32_t *zPtr
 )
{
    uint_fast8_t uNegDist;
    unsigned int index, lastIndex;
    uint32_t partWordZ, wordA;

    uNegDist = -dist;
    index = indexWordLo( size_words );
    lastIndex = indexWordHi( size_words );
    wordA = aPtr[index];
    partWordZ = wordA>>dist;
    if ( partWordZ<<dist != wordA ) partWordZ |= 1;
    while ( index != lastIndex ) {
        wordA = aPtr[index + wordIncr];
        zPtr[index] = wordA<<(uNegDist & 31) | partWordZ;
        index += wordIncr;
        partWordZ = wordA>>dist;
    }
    zPtr[index] = partWordZ;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shiftLeftM.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


void
 softfloat_shiftLeftM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     uint32_t dist,
     uint32_t *zPtr
 )
{
    uint32_t wordDist;
    uint_fast8_t innerDist;
    uint32_t *destPtr;
    uint_fast8_t i;

    wordDist = dist>>5;
    if ( wordDist < size_words ) {
        aPtr += indexMultiwordLoBut( size_words, wordDist );
        innerDist = dist & 31;
        if ( innerDist ) {
            softfloat_shortShiftLeftM(
                size_words - wordDist,
                aPtr,
                innerDist,
                zPtr + indexMultiwordHiBut( size_words, wordDist )
            );
            if ( ! wordDist ) return;
        } else {
            aPtr += indexWordHi( size_words - wordDist );
            destPtr = zPtr + indexWordHi( size_words );
            for ( i = size_words - wordDist; i; --i ) {
                *destPtr = *aPtr;
                aPtr -= wordIncr;
                destPtr -= wordIncr;
            }
        }
        zPtr += indexMultiwordLo( size_words, wordDist );
    } else {
        wordDist = size_words;
    }
    do {
        *zPtr++ = 0;
        --wordDist;
    } while ( wordDist );

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shiftRightJamM.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


void
 softfloat_shiftRightJamM(
     uint_fast8_t size_words,
     const uint32_t *aPtr,
     uint32_t dist,
     uint32_t *zPtr
 )
{
    uint32_t wordJam, wordDist, *ptr = 0;
    uint_fast8_t i, innerDist;

    wordJam = 0;
    wordDist = dist>>5;
    if ( wordDist ) {
        if ( size_words < wordDist ) wordDist = size_words;
        ptr = (uint32_t *) (aPtr + indexMultiwordLo( size_words, wordDist ));
        i = wordDist;
        do {
            wordJam = *ptr++;
            if ( wordJam ) break;
            --i;
        } while ( i );
        ptr = zPtr;
    }
    if ( wordDist < size_words ) {
        aPtr += indexMultiwordHiBut( size_words, wordDist );
        innerDist = dist & 31;
        if ( innerDist ) {
            softfloat_shortShiftRightJamM(
                size_words - wordDist,
                aPtr,
                innerDist,
                zPtr + indexMultiwordLoBut( size_words, wordDist )
            );
            if ( ! wordDist ) goto wordJam;
        } else {
            aPtr += indexWordLo( size_words - wordDist );
            ptr = zPtr + indexWordLo( size_words );
            for ( i = size_words - wordDist; i; --i ) {
                *ptr = *aPtr;
                aPtr += wordIncr;
                ptr += wordIncr;
            }
        }
        ptr = zPtr + indexMultiwordHi( size_words, wordDist );
    }
    do {
        *ptr++ = 0;
        --wordDist;
    } while ( wordDist );
 wordJam:
    if ( wordJam ) zPtr[indexWordLo( size_words )] |= 1;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_mulAddF32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t
 softfloat_mulAddF32(
     uint_fast32_t uiA, uint_fast32_t uiB, uint_fast32_t uiC, uint_fast8_t op )
{
    bool signA;
    int_fast16_t expA;
    uint_fast32_t sigA;
    bool signB;
    int_fast16_t expB;
    uint_fast32_t sigB;
    bool signC;
    int_fast16_t expC;
    uint_fast32_t sigC;
    bool signProd;
    uint_fast32_t magBits, uiZ;
    struct exp16_sig32 normExpSig;
    int_fast16_t expProd;
    uint_fast64_t sigProd;
    bool signZ;
    int_fast16_t expZ;
    uint_fast32_t sigZ;
    int_fast16_t expDiff;
    uint_fast64_t sig64Z, sig64C;
    int_fast8_t shiftDist;
    union ui32_f32 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    signA = signF32UI( uiA );
    expA  = expF32UI( uiA );
    sigA  = fracF32UI( uiA );
    signB = signF32UI( uiB );
    expB  = expF32UI( uiB );
    sigB  = fracF32UI( uiB );
    signC = signF32UI( uiC ) ^ (op == softfloat_mulAdd_subC);
    expC  = expF32UI( uiC );
    sigC  = fracF32UI( uiC );
    signProd = signA ^ signB ^ (op == softfloat_mulAdd_subProd);
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( expA == 0xFF ) {
        if ( sigA || ((expB == 0xFF) && sigB) ) goto propagateNaN_ABC;
        magBits = expB | sigB;
        goto infProdArg;
    }
    if ( expB == 0xFF ) {
        if ( sigB ) goto propagateNaN_ABC;
        magBits = expA | sigA;
        goto infProdArg;
    }
    if ( expC == 0xFF ) {
        if ( sigC ) {
            uiZ = 0;
            goto propagateNaN_ZC;
        }
        uiZ = uiC;
        goto uiZ;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( ! expA ) {
        if ( ! sigA ) goto zeroProd;
        normExpSig = softfloat_normSubnormalF32Sig( sigA );
        expA = normExpSig.exp;
        sigA = normExpSig.sig;
    }
    if ( ! expB ) {
        if ( ! sigB ) goto zeroProd;
        normExpSig = softfloat_normSubnormalF32Sig( sigB );
        expB = normExpSig.exp;
        sigB = normExpSig.sig;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expProd = expA + expB - 0x7E;
    sigA = (sigA | 0x00800000)<<7;
    sigB = (sigB | 0x00800000)<<7;
    sigProd = (uint_fast64_t) sigA * sigB;
    if ( sigProd < UINT64_C( 0x2000000000000000 ) ) {
        --expProd;
        sigProd <<= 1;
    }
    signZ = signProd;
    if ( ! expC ) {
        if ( ! sigC ) {
            expZ = expProd - 1;
            sigZ = softfloat_shortShiftRightJam64( sigProd, 31 );
            goto roundPack;
        }
        normExpSig = softfloat_normSubnormalF32Sig( sigC );
        expC = normExpSig.exp;
        sigC = normExpSig.sig;
    }
    sigC = (sigC | 0x00800000)<<6;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expDiff = expProd - expC;
    if ( signProd == signC ) {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        if ( expDiff <= 0 ) {
            expZ = expC;
            sigZ = sigC + softfloat_shiftRightJam64( sigProd, 32 - expDiff );
        } else {
            expZ = expProd;
            sig64Z =
                sigProd
                    + softfloat_shiftRightJam64(
                          (uint_fast64_t) sigC<<32, expDiff );
            sigZ = softfloat_shortShiftRightJam64( sig64Z, 32 );
        }
        if ( sigZ < 0x40000000 ) {
            --expZ;
            sigZ <<= 1;
        }
    } else {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        sig64C = (uint_fast64_t) sigC<<32;
        if ( expDiff < 0 ) {
            signZ = signC;
            expZ = expC;
            sig64Z = sig64C - softfloat_shiftRightJam64( sigProd, -expDiff );
        } else if ( ! expDiff ) {
            expZ = expProd;
            sig64Z = sigProd - sig64C;
            if ( ! sig64Z ) goto completeCancellation;
            if ( sig64Z & UINT64_C( 0x8000000000000000 ) ) {
                signZ = ! signZ;
                sig64Z = -sig64Z;
            }
        } else {
            expZ = expProd;
            sig64Z = sigProd - softfloat_shiftRightJam64( sig64C, expDiff );
        }
        shiftDist = softfloat_countLeadingZeros64( sig64Z ) - 1;
        expZ -= shiftDist;
        shiftDist -= 32;
        if ( shiftDist < 0 ) {
            sigZ = softfloat_shortShiftRightJam64( sig64Z, -shiftDist );
        } else {
            sigZ = (uint_fast32_t) sig64Z<<shiftDist;
        }
    }
 roundPack:
    return softfloat_roundPackToF32( signZ, expZ, sigZ );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 propagateNaN_ABC:
    uiZ = softfloat_propagateNaNF32UI( uiA, uiB );
    goto propagateNaN_ZC;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 infProdArg:
    if ( magBits ) {
        uiZ = packToF32UI( signProd, 0xFF, 0 );
        if ( expC != 0xFF ) goto uiZ;
        if ( sigC ) goto propagateNaN_ZC;
        if ( signProd == signC ) goto uiZ;
    }
    softfloat_raiseFlags( softfloat_flag_invalid );
    uiZ = defaultNaNF32UI;
 propagateNaN_ZC:
    uiZ = softfloat_propagateNaNF32UI( uiZ, uiC );
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 zeroProd:
    uiZ = uiC;
    if ( ! (expC | sigC) && (signProd != signC) ) {
 completeCancellation:
        uiZ =
            packToF32UI(
                (softfloat_roundingMode == softfloat_round_min), 0, 0 );
    }
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_mulAddF64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#ifdef SOFTFLOAT_FAST_INT64

float64_t
 softfloat_mulAddF64(
     uint_fast64_t uiA, uint_fast64_t uiB, uint_fast64_t uiC, uint_fast8_t op )
{
    bool signA;
    int_fast16_t expA;
    uint_fast64_t sigA;
    bool signB;
    int_fast16_t expB;
    uint_fast64_t sigB;
    bool signC;
    int_fast16_t expC;
    uint_fast64_t sigC;
    bool signZ;
    uint_fast64_t magBits, uiZ;
    struct exp16_sig64 normExpSig;
    int_fast16_t expZ;
    struct uint128 sig128Z;
    uint_fast64_t sigZ;
    int_fast16_t expDiff;
    struct uint128 sig128C;
    int_fast8_t shiftDist;
    union ui64_f64 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    signA = signF64UI( uiA );
    expA  = expF64UI( uiA );
    sigA  = fracF64UI( uiA );
    signB = signF64UI( uiB );
    expB  = expF64UI( uiB );
    sigB  = fracF64UI( uiB );
    signC = signF64UI( uiC ) ^ (op == softfloat_mulAdd_subC);
    expC  = expF64UI( uiC );
    sigC  = fracF64UI( uiC );
    signZ = signA ^ signB ^ (op == softfloat_mulAdd_subProd);
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( expA == 0x7FF ) {
        if ( sigA || ((expB == 0x7FF) && sigB) ) goto propagateNaN_ABC;
        magBits = expB | sigB;
        goto infProdArg;
    }
    if ( expB == 0x7FF ) {
        if ( sigB ) goto propagateNaN_ABC;
        magBits = expA | sigA;
        goto infProdArg;
    }
    if ( expC == 0x7FF ) {
        if ( sigC ) {
            uiZ = 0;
            goto propagateNaN_ZC;
        }
        uiZ = uiC;
        goto uiZ;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( ! expA ) {
        if ( ! sigA ) goto zeroProd;
        normExpSig = softfloat_normSubnormalF64Sig( sigA );
        expA = normExpSig.exp;
        sigA = normExpSig.sig;
    }
    if ( ! expB ) {
        if ( ! sigB ) goto zeroProd;
        normExpSig = softfloat_normSubnormalF64Sig( sigB );
        expB = normExpSig.exp;
        sigB = normExpSig.sig;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expZ = expA + expB - 0x3FE;
    sigA = (sigA | UINT64_C( 0x0010000000000000 ))<<10;
    sigB = (sigB | UINT64_C( 0x0010000000000000 ))<<10;
    sig128Z = softfloat_mul64To128( sigA, sigB );
    if ( sig128Z.v64 < UINT64_C( 0x2000000000000000 ) ) {
        --expZ;
        sig128Z =
            softfloat_add128(
                sig128Z.v64, sig128Z.v0, sig128Z.v64, sig128Z.v0 );
    }
    if ( ! expC ) {
        if ( ! sigC ) {
            --expZ;
            sigZ = sig128Z.v64<<1 | (sig128Z.v0 != 0);
            goto roundPack;
        }
        normExpSig = softfloat_normSubnormalF64Sig( sigC );
        expC = normExpSig.exp;
        sigC = normExpSig.sig;
    }
    sigC = (sigC | UINT64_C( 0x0010000000000000 ))<<9;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expDiff = expZ - expC;
    if ( expDiff < 0 ) {
        expZ = expC;
        if ( (signZ == signC) || (expDiff < -1) ) {
            sig128Z.v64 = softfloat_shiftRightJam64( sig128Z.v64, -expDiff );
        } else {
            sig128Z =
                softfloat_shortShiftRightJam128( sig128Z.v64, sig128Z.v0, 1 );
        }
    } else if ( expDiff ) {
        sig128C = softfloat_shiftRightJam128( sigC, 0, expDiff );
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( signZ == signC ) {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        if ( expDiff <= 0 ) {
            sigZ = (sigC + sig128Z.v64) | (sig128Z.v0 != 0);
        } else {
            sig128Z =
                softfloat_add128(
                    sig128Z.v64, sig128Z.v0, sig128C.v64, sig128C.v0 );
            sigZ = sig128Z.v64 | (sig128Z.v0 != 0);
        }
        if ( sigZ < UINT64_C( 0x4000000000000000 ) ) {
            --expZ;
            sigZ <<= 1;
        }
    } else {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        if ( expDiff < 0 ) {
            signZ = signC;
            sig128Z = softfloat_sub128( sigC, 0, sig128Z.v64, sig128Z.v0 );
        } else if ( ! expDiff ) {
            sig128Z.v64 = sig128Z.v64 - sigC;
            if ( ! (sig128Z.v64 | sig128Z.v0) ) goto completeCancellation;
            if ( sig128Z.v64 & UINT64_C( 0x8000000000000000 ) ) {
                signZ = ! signZ;
                sig128Z = softfloat_sub128( 0, 0, sig128Z.v64, sig128Z.v0 );
            }
        } else {
            sig128Z =
                softfloat_sub128(
                    sig128Z.v64, sig128Z.v0, sig128C.v64, sig128C.v0 );
        }
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        if ( ! sig128Z.v64 ) {
            expZ -= 64;
            sig128Z.v64 = sig128Z.v0;
            sig128Z.v0 = 0;
        }
        shiftDist = softfloat_countLeadingZeros64( sig128Z.v64 ) - 1;
        expZ -= shiftDist;
        if ( shiftDist < 0 ) {
            sigZ = softfloat_shortShiftRightJam64( sig128Z.v64, -shiftDist );
        } else {
            sig128Z =
                softfloat_shortShiftLeft128(
                    sig128Z.v64, sig128Z.v0, shiftDist );
            sigZ = sig128Z.v64;
        }
        sigZ |= (sig128Z.v0 != 0);
    }
 roundPack:
    return softfloat_roundPackToF64( signZ, expZ, sigZ );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 propagateNaN_ABC:
    uiZ = softfloat_propagateNaNF64UI( uiA, uiB );
    goto propagateNaN_ZC;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 infProdArg:
    if ( magBits ) {
        uiZ = packToF64UI( signZ, 0x7FF, 0 );
        if ( expC != 0x7FF ) goto uiZ;
        if ( sigC ) goto propagateNaN_ZC;
        if ( signZ == signC ) goto uiZ;
    }
    softfloat_raiseFlags( softfloat_flag_invalid );
    uiZ = defaultNaNF64UI;
 propagateNaN_ZC:
    uiZ = softfloat_propagateNaNF64UI( uiZ, uiC );
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 zeroProd:
    uiZ = uiC;
    if ( ! (expC | sigC) && (signZ != signC) ) {
 completeCancellation:
        uiZ =
            packToF64UI(
                (softfloat_roundingMode == softfloat_round_min), 0, 0 );
    }
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}

#else

float64_t
 softfloat_mulAddF64(
     uint_fast64_t uiA, uint_fast64_t uiB, uint_fast64_t uiC, uint_fast8_t op )
{
    bool signA;
    int_fast16_t expA;
    uint64_t sigA;
    bool signB;
    int_fast16_t expB;
    uint64_t sigB;
    bool signC;
    int_fast16_t expC;
    uint64_t sigC;
    bool signZ;
    uint64_t magBits, uiZ;
    struct exp16_sig64 normExpSig;
    int_fast16_t expZ;
    uint32_t sig128Z[4];
    uint64_t sigZ;
    int_fast16_t shiftDist, expDiff;
    uint32_t sig128C[4];
    union ui64_f64 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    signA = signF64UI( uiA );
    expA  = expF64UI( uiA );
    sigA  = fracF64UI( uiA );
    signB = signF64UI( uiB );
    expB  = expF64UI( uiB );
    sigB  = fracF64UI( uiB );
    signC = signF64UI( uiC ) ^ (op == softfloat_mulAdd_subC);
    expC  = expF64UI( uiC );
    sigC  = fracF64UI( uiC );
    signZ = signA ^ signB ^ (op == softfloat_mulAdd_subProd);
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( expA == 0x7FF ) {
        if ( sigA || ((expB == 0x7FF) && sigB) ) goto propagateNaN_ABC;
        magBits = expB | sigB;
        goto infProdArg;
    }
    if ( expB == 0x7FF ) {
        if ( sigB ) goto propagateNaN_ABC;
        magBits = expA | sigA;
        goto infProdArg;
    }
    if ( expC == 0x7FF ) {
        if ( sigC ) {
            uiZ = 0;
            goto propagateNaN_ZC;
        }
        uiZ = uiC;
        goto uiZ;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( ! expA ) {
        if ( ! sigA ) goto zeroProd;
        normExpSig = softfloat_normSubnormalF64Sig( sigA );
        expA = normExpSig.exp;
        sigA = normExpSig.sig;
    }
    if ( ! expB ) {
        if ( ! sigB ) goto zeroProd;
        normExpSig = softfloat_normSubnormalF64Sig( sigB );
        expB = normExpSig.exp;
        sigB = normExpSig.sig;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expZ = expA + expB - 0x3FE;
    sigA = (sigA | UINT64_C( 0x0010000000000000 ))<<10;
    sigB = (sigB | UINT64_C( 0x0010000000000000 ))<<11;
    softfloat_mul64To128M( sigA, sigB, sig128Z );
    sigZ =
        (uint64_t) sig128Z[indexWord( 4, 3 )]<<32 | sig128Z[indexWord( 4, 2 )];
    shiftDist = 0;
    if ( ! (sigZ & UINT64_C( 0x4000000000000000 )) ) {
        --expZ;
        shiftDist = -1;
    }
    if ( ! expC ) {
        if ( ! sigC ) {
            if ( shiftDist ) sigZ <<= 1;
            goto sigZ;
        }
        normExpSig = softfloat_normSubnormalF64Sig( sigC );
        expC = normExpSig.exp;
        sigC = normExpSig.sig;
    }
    sigC = (sigC | UINT64_C( 0x0010000000000000 ))<<10;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expDiff = expZ - expC;
    if ( expDiff < 0 ) {
        expZ = expC;
        if ( (signZ == signC) || (expDiff < -1) ) {
            shiftDist -= expDiff;
            if ( shiftDist) {
                sigZ = softfloat_shiftRightJam64( sigZ, shiftDist );
            }
        } else {
            if ( ! shiftDist ) {
                softfloat_shortShiftRight128M( sig128Z, 1, sig128Z );
            }
        }
    } else {
        if ( shiftDist ) softfloat_add128M( sig128Z, sig128Z, sig128Z );
        if ( ! expDiff ) {
            sigZ =
                (uint64_t) sig128Z[indexWord( 4, 3 )]<<32
                    | sig128Z[indexWord( 4, 2 )];
        } else {
            sig128C[indexWord( 4, 3 )] = sigC>>32;
            sig128C[indexWord( 4, 2 )] = sigC;
            sig128C[indexWord( 4, 1 )] = 0;
            sig128C[indexWord( 4, 0 )] = 0;
            softfloat_shiftRightJam128M( sig128C, expDiff, sig128C );
        }
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( signZ == signC ) {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        if ( expDiff <= 0 ) {
            sigZ += sigC;
        } else {
            softfloat_add128M( sig128Z, sig128C, sig128Z );
            sigZ =
                (uint64_t) sig128Z[indexWord( 4, 3 )]<<32
                    | sig128Z[indexWord( 4, 2 )];
        }
        if ( sigZ & UINT64_C( 0x8000000000000000 ) ) {
            ++expZ;
            sigZ = softfloat_shortShiftRightJam64( sigZ, 1 );
        }
    } else {
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        if ( expDiff < 0 ) {
            signZ = signC;
            if ( expDiff < -1 ) {
                sigZ = sigC - sigZ;
                if (
                    sig128Z[indexWord( 4, 1 )] || sig128Z[indexWord( 4, 0 )]
                ) {
                    sigZ = (sigZ - 1) | 1;
                }
                if ( ! (sigZ & UINT64_C( 0x4000000000000000 )) ) {
                    --expZ;
                    sigZ <<= 1;
                }
                goto roundPack;
            } else {
                sig128C[indexWord( 4, 3 )] = sigC>>32;
                sig128C[indexWord( 4, 2 )] = sigC;
                sig128C[indexWord( 4, 1 )] = 0;
                sig128C[indexWord( 4, 0 )] = 0;
                softfloat_sub128M( sig128C, sig128Z, sig128Z );
            }
        } else if ( ! expDiff ) {
            sigZ -= sigC;
            if (
                ! sigZ && ! sig128Z[indexWord( 4, 1 )]
                    && ! sig128Z[indexWord( 4, 0 )]
            ) {
                goto completeCancellation;
            }
            sig128Z[indexWord( 4, 3 )] = sigZ>>32;
            sig128Z[indexWord( 4, 2 )] = sigZ;
            if ( sigZ & UINT64_C( 0x8000000000000000 ) ) {
                signZ = ! signZ;
                softfloat_negX128M( sig128Z );
            }
        } else {
            softfloat_sub128M( sig128Z, sig128C, sig128Z );
            if ( 1 < expDiff ) {
                sigZ =
                    (uint64_t) sig128Z[indexWord( 4, 3 )]<<32
                        | sig128Z[indexWord( 4, 2 )];
                if ( ! (sigZ & UINT64_C( 0x4000000000000000 )) ) {
                    --expZ;
                    sigZ <<= 1;
                }
                goto sigZ;
            }
        }
        /*--------------------------------------------------------------------
        *--------------------------------------------------------------------*/
        shiftDist = 0;
        sigZ =
            (uint64_t) sig128Z[indexWord( 4, 3 )]<<32
                | sig128Z[indexWord( 4, 2 )];
        if ( ! sigZ ) {
            shiftDist = 64;
            sigZ =
                (uint64_t) sig128Z[indexWord( 4, 1 )]<<32
                    | sig128Z[indexWord( 4, 0 )];
        }
        shiftDist += softfloat_countLeadingZeros64( sigZ ) - 1;
        if ( shiftDist ) {
            expZ -= shiftDist;
            softfloat_shiftLeft128M( sig128Z, shiftDist, sig128Z );
            sigZ =
                (uint64_t) sig128Z[indexWord( 4, 3 )]<<32
                    | sig128Z[indexWord( 4, 2 )];
        }
    }
 sigZ:
    if ( sig128Z[indexWord( 4, 1 )] || sig128Z[indexWord( 4, 0 )] ) sigZ |= 1;
 roundPack:
    return softfloat_roundPackToF64( signZ, expZ - 1, sigZ );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 propagateNaN_ABC:
    uiZ = softfloat_propagateNaNF64UI( uiA, uiB );
    goto propagateNaN_ZC;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 infProdArg:
    if ( magBits ) {
        uiZ = packToF64UI( signZ, 0x7FF, 0 );
        if ( expC != 0x7FF ) goto uiZ;
        if ( sigC ) goto propagateNaN_ZC;
        if ( signZ == signC ) goto uiZ;
    }
    softfloat_raiseFlags( softfloat_flag_invalid );
    uiZ = defaultNaNF64UI;
 propagateNaN_ZC:
    uiZ = softfloat_propagateNaNF64UI( uiZ, uiC );
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 zeroProd:
    uiZ = uiC;
    if ( ! (expC | sigC) && (signZ != signC) ) {
 completeCancellation:
        uiZ =
            packToF64UI(
                (softfloat_roundingMode == softfloat_round_min), 0, 0 );
    }
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_roundMToI64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


int_fast64_t
 softfloat_roundMToI64(
     bool sign, uint32_t *extSigPtr, uint_fast8_t roundingMode, bool exact )
{
    uint64_t sig;
    uint32_t sigExtra;
    union { uint64_t ui; int64_t i; } uZ;
    int64_t z;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    sig =
        (uint64_t) extSigPtr[indexWord( 3, 2 )]<<32
            | extSigPtr[indexWord( 3, 1 )];
    sigExtra = extSigPtr[indexWordLo( 3 )];
    if (
        (roundingMode == softfloat_round_near_maxMag)
            || (roundingMode == softfloat_round_near_even)
    ) {
        if ( 0x80000000 <= sigExtra ) goto increment;
    } else {
        if (
            sigExtra
                && (sign
                        ? (roundingMode == softfloat_round_min)
#ifdef SOFTFLOAT_ROUND_ODD
                              || (roundingMode == softfloat_round_odd)
#endif
                        : (roundingMode == softfloat_round_max))
        ) {
 increment:
            ++sig;
            if ( !sig ) goto invalid;
            if (
                (sigExtra == 0x80000000)
                    && (roundingMode == softfloat_round_near_even)
            ) {
                sig &= ~(uint_fast64_t) 1;
            }
        }
    }
    uZ.ui = sign ? -sig : sig;
    z = uZ.i;
    if ( z && ((z < 0) ^ sign) ) goto invalid;
    if ( sigExtra ) {
#ifdef SOFTFLOAT_ROUND_ODD
        if ( roundingMode == softfloat_round_odd ) z |= 1;
#endif
        if ( exact ) softfloat_exceptionFlags |= softfloat_flag_inexact;
    }
    return z;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    return sign ? i64_fromNegOverflow : i64_fromPosOverflow;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_roundMToUI64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


uint_fast64_t
 softfloat_roundMToUI64(
     bool sign, uint32_t *extSigPtr, uint_fast8_t roundingMode, bool exact )
{
    uint64_t sig;
    uint32_t sigExtra;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    sig =
        (uint64_t) extSigPtr[indexWord( 3, 2 )]<<32
            | extSigPtr[indexWord( 3, 1 )];
    sigExtra = extSigPtr[indexWordLo( 3 )];
    if (
        (roundingMode == softfloat_round_near_maxMag)
            || (roundingMode == softfloat_round_near_even)
    ) {
        if ( 0x80000000 <= sigExtra ) goto increment;
    } else {
        if ( sign ) {
            if ( !(sig | sigExtra) ) return 0;
            if ( roundingMode == softfloat_round_min ) goto invalid;
#ifdef SOFTFLOAT_ROUND_ODD
            if ( roundingMode == softfloat_round_odd ) goto invalid;
#endif
        } else {
            if ( (roundingMode == softfloat_round_max) && sigExtra ) {
 increment:
                ++sig;
                if ( !sig ) goto invalid;
                if (
                    (sigExtra == 0x80000000)
                        && (roundingMode == softfloat_round_near_even)
                ) {
                    sig &= ~(uint_fast64_t) 1;
                }
            }
        }
    }
    if ( sign && sig ) goto invalid;
    if ( sigExtra ) {
#ifdef SOFTFLOAT_ROUND_ODD
        if ( roundingMode == softfloat_round_odd ) sig |= 1;
#endif
        if ( exact ) softfloat_exceptionFlags |= softfloat_flag_inexact;
    }
    return sig;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    return sign ? ui64_fromNegOverflow : ui64_fromPosOverflow;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_roundToI32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


int_fast32_t
 softfloat_roundToI32(
     bool sign, uint_fast64_t sig, uint_fast8_t roundingMode, bool exact )
{
    uint_fast16_t roundIncrement, roundBits;
    uint_fast32_t sig32;
    union { uint32_t ui; int32_t i; } uZ;
    int_fast32_t z;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    roundIncrement = 0x800;
    if (
        (roundingMode != softfloat_round_near_maxMag)
            && (roundingMode != softfloat_round_near_even)
    ) {
        roundIncrement = 0;
        if (
            sign
                ? (roundingMode == softfloat_round_min)
#ifdef SOFTFLOAT_ROUND_ODD
                      || (roundingMode == softfloat_round_odd)
#endif
                : (roundingMode == softfloat_round_max)
        ) {
            roundIncrement = 0xFFF;
        }
    }
    roundBits = sig & 0xFFF;
    sig += roundIncrement;
    if ( sig & UINT64_C( 0xFFFFF00000000000 ) ) goto invalid;
    sig32 = sig>>12;
    if (
        (roundBits == 0x800) && (roundingMode == softfloat_round_near_even)
    ) {
        sig32 &= ~(uint_fast32_t) 1;
    }
    uZ.ui = sign ? -sig32 : sig32;
    z = uZ.i;
    if ( z && ((z < 0) ^ sign) ) goto invalid;
    if ( roundBits ) {
#ifdef SOFTFLOAT_ROUND_ODD
        if ( roundingMode == softfloat_round_odd ) z |= 1;
#endif
        if ( exact ) softfloat_exceptionFlags |= softfloat_flag_inexact;
    }
    return z;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    return sign ? i32_fromNegOverflow : i32_fromPosOverflow;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_roundToI64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


int_fast64_t
 softfloat_roundToI64(
     bool sign,
     uint_fast64_t sig,
     uint_fast64_t sigExtra,
     uint_fast8_t roundingMode,
     bool exact
 )
{
    union { uint64_t ui; int64_t i; } uZ;
    int_fast64_t z;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if (
        (roundingMode == softfloat_round_near_maxMag)
            || (roundingMode == softfloat_round_near_even)
    ) {
        if ( UINT64_C( 0x8000000000000000 ) <= sigExtra ) goto increment;
    } else {
        if (
            sigExtra
                && (sign
                        ? (roundingMode == softfloat_round_min)
#ifdef SOFTFLOAT_ROUND_ODD
                              || (roundingMode == softfloat_round_odd)
#endif
                        : (roundingMode == softfloat_round_max))
        ) {
 increment:
            ++sig;
            if ( !sig ) goto invalid;
            if (
                (sigExtra == UINT64_C( 0x8000000000000000 ))
                    && (roundingMode == softfloat_round_near_even)
            ) {
                sig &= ~(uint_fast64_t) 1;
            }
        }
    }
    uZ.ui = sign ? -sig : sig;
    z = uZ.i;
    if ( z && ((z < 0) ^ sign) ) goto invalid;
    if ( sigExtra ) {
#ifdef SOFTFLOAT_ROUND_ODD
        if ( roundingMode == softfloat_round_odd ) z |= 1;
#endif
        if ( exact ) softfloat_exceptionFlags |= softfloat_flag_inexact;
    }
    return z;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    return sign ? i64_fromNegOverflow : i64_fromPosOverflow;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_roundToUI32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


uint_fast32_t
 softfloat_roundToUI32(
     bool sign, uint_fast64_t sig, uint_fast8_t roundingMode, bool exact )
{
    uint_fast16_t roundIncrement, roundBits;
    uint_fast32_t z;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    roundIncrement = 0x800;
    if (
        (roundingMode != softfloat_round_near_maxMag)
            && (roundingMode != softfloat_round_near_even)
    ) {
        roundIncrement = 0;
        if ( sign ) {
            if ( !sig ) return 0;
            if ( roundingMode == softfloat_round_min ) goto invalid;
#ifdef SOFTFLOAT_ROUND_ODD
            if ( roundingMode == softfloat_round_odd ) goto invalid;
#endif
        } else {
            if ( roundingMode == softfloat_round_max ) roundIncrement = 0xFFF;
        }
    }
    roundBits = sig & 0xFFF;
    sig += roundIncrement;
    if ( sig & UINT64_C( 0xFFFFF00000000000 ) ) goto invalid;
    z = sig>>12;
    if (
        (roundBits == 0x800) && (roundingMode == softfloat_round_near_even)
    ) {
        z &= ~(uint_fast32_t) 1;
    }
    if ( sign && z ) goto invalid;
    if ( roundBits ) {
#ifdef SOFTFLOAT_ROUND_ODD
        if ( roundingMode == softfloat_round_odd ) z |= 1;
#endif
        if ( exact ) softfloat_exceptionFlags |= softfloat_flag_inexact;
    }
    return z;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    return sign ? ui32_fromNegOverflow : ui32_fromPosOverflow;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_roundToUI64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


uint_fast64_t
 softfloat_roundToUI64(
     bool sign,
     uint_fast64_t sig,
     uint_fast64_t sigExtra,
     uint_fast8_t roundingMode,
     bool exact
 )
{

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if (
        (roundingMode == softfloat_round_near_maxMag)
            || (roundingMode == softfloat_round_near_even)
    ) {
        if ( UINT64_C( 0x8000000000000000 ) <= sigExtra ) goto increment;
    } else {
        if ( sign ) {
            if ( !(sig | sigExtra) ) return 0;
            if ( roundingMode == softfloat_round_min ) goto invalid;
#ifdef SOFTFLOAT_ROUND_ODD
            if ( roundingMode == softfloat_round_odd ) goto invalid;
#endif
        } else {
            if ( (roundingMode == softfloat_round_max) && sigExtra ) {
 increment:
                ++sig;
                if ( !sig ) goto invalid;
                if (
                    (sigExtra == UINT64_C( 0x8000000000000000 ))
                        && (roundingMode == softfloat_round_near_even)
                ) {
                    sig &= ~(uint_fast64_t) 1;
                }
            }
        }
    }
    if ( sign && sig ) goto invalid;
    if ( sigExtra ) {
#ifdef SOFTFLOAT_ROUND_ODD
        if ( roundingMode == softfloat_round_odd ) sig |= 1;
#endif
        if ( exact ) softfloat_exceptionFlags |= softfloat_flag_inexact;
    }
    return sig;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    return sign ? ui64_fromNegOverflow : ui64_fromPosOverflow;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: s_shiftRightJam64Extra.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


#if defined SOFTFLOAT_FAST_INT64 && ! defined INLINE_LEVEL

struct uint64_extra
 softfloat_shiftRightJam64Extra(
     uint64_t a, uint64_t extra, uint_fast32_t dist )
{
    struct uint64_extra z;

    if ( dist < 64 ) {
        z.v = a>>dist;
        z.extra = a<<(-dist & 63);
    } else {
        z.v = 0;
        z.extra = (dist == 64) ? a : (a != 0);
    }
    z.extra |= (extra != 0);
    return z;

}

#endif


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f32_add.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t f32_add( float32_t a, float32_t b )
{
    union ui32_f32 uA;
    uint_fast32_t uiA;
    union ui32_f32 uB;
    uint_fast32_t uiB;
#if ! defined INLINE_LEVEL || (INLINE_LEVEL < 1)
    float32_t (*magsFuncPtr)( uint_fast32_t, uint_fast32_t );
#endif

    uA.f = a;
    uiA = uA.ui;
    uB.f = b;
    uiB = uB.ui;
#if defined INLINE_LEVEL && (1 <= INLINE_LEVEL)
    if ( signF32UI( uiA ^ uiB ) ) {
        return softfloat_subMagsF32( uiA, uiB );
    } else {
        return softfloat_addMagsF32( uiA, uiB );
    }
#else
    magsFuncPtr =
        signF32UI( uiA ^ uiB ) ? softfloat_subMagsF32 : softfloat_addMagsF32;
    return (*magsFuncPtr)( uiA, uiB );
#endif

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f64_add.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t f64_add( float64_t a, float64_t b )
{
    union ui64_f64 uA;
    uint_fast64_t uiA;
    bool signA;
    union ui64_f64 uB;
    uint_fast64_t uiB;
    bool signB;
#if ! defined INLINE_LEVEL || (INLINE_LEVEL < 2)
    float64_t (*magsFuncPtr)( uint_fast64_t, uint_fast64_t, bool );
#endif

    uA.f = a;
    uiA = uA.ui;
    signA = signF64UI( uiA );
    uB.f = b;
    uiB = uB.ui;
    signB = signF64UI( uiB );
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
    if ( signA == signB ) {
        return softfloat_addMagsF64( uiA, uiB, signA );
    } else {
        return softfloat_subMagsF64( uiA, uiB, signA );
    }
#else
    magsFuncPtr =
        (signA == signB) ? softfloat_addMagsF64 : softfloat_subMagsF64;
    return (*magsFuncPtr)( uiA, uiB, signA );
#endif

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f32_sub.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t f32_sub( float32_t a, float32_t b )
{
    union ui32_f32 uA;
    uint_fast32_t uiA;
    union ui32_f32 uB;
    uint_fast32_t uiB;
#if ! defined INLINE_LEVEL || (INLINE_LEVEL < 1)
    float32_t (*magsFuncPtr)( uint_fast32_t, uint_fast32_t );
#endif

    uA.f = a;
    uiA = uA.ui;
    uB.f = b;
    uiB = uB.ui;
#if defined INLINE_LEVEL && (1 <= INLINE_LEVEL)
    if ( signF32UI( uiA ^ uiB ) ) {
        return softfloat_addMagsF32( uiA, uiB );
    } else {
        return softfloat_subMagsF32( uiA, uiB );
    }
#else
    magsFuncPtr =
        signF32UI( uiA ^ uiB ) ? softfloat_addMagsF32 : softfloat_subMagsF32;
    return (*magsFuncPtr)( uiA, uiB );
#endif

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f64_sub.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t f64_sub( float64_t a, float64_t b )
{
    union ui64_f64 uA;
    uint_fast64_t uiA;
    bool signA;
    union ui64_f64 uB;
    uint_fast64_t uiB;
    bool signB;
#if ! defined INLINE_LEVEL || (INLINE_LEVEL < 2)
    float64_t (*magsFuncPtr)( uint_fast64_t, uint_fast64_t, bool );
#endif

    uA.f = a;
    uiA = uA.ui;
    signA = signF64UI( uiA );
    uB.f = b;
    uiB = uB.ui;
    signB = signF64UI( uiB );
#if defined INLINE_LEVEL && (2 <= INLINE_LEVEL)
    if ( signA == signB ) {
        return softfloat_subMagsF64( uiA, uiB, signA );
    } else {
        return softfloat_addMagsF64( uiA, uiB, signA );
    }
#else
    magsFuncPtr =
        (signA == signB) ? softfloat_subMagsF64 : softfloat_addMagsF64;
    return (*magsFuncPtr)( uiA, uiB, signA );
#endif

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f32_mul.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t f32_mul( float32_t a, float32_t b )
{
    union ui32_f32 uA;
    uint_fast32_t uiA;
    bool signA;
    int_fast16_t expA;
    uint_fast32_t sigA;
    union ui32_f32 uB;
    uint_fast32_t uiB;
    bool signB;
    int_fast16_t expB;
    uint_fast32_t sigB;
    bool signZ;
    uint_fast32_t magBits;
    struct exp16_sig32 normExpSig;
    int_fast16_t expZ;
    uint_fast32_t sigZ, uiZ;
    union ui32_f32 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    signA = signF32UI( uiA );
    expA  = expF32UI( uiA );
    sigA  = fracF32UI( uiA );
    uB.f = b;
    uiB = uB.ui;
    signB = signF32UI( uiB );
    expB  = expF32UI( uiB );
    sigB  = fracF32UI( uiB );
    signZ = signA ^ signB;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( expA == 0xFF ) {
        if ( sigA || ((expB == 0xFF) && sigB) ) goto propagateNaN;
        magBits = expB | sigB;
        goto infArg;
    }
    if ( expB == 0xFF ) {
        if ( sigB ) goto propagateNaN;
        magBits = expA | sigA;
        goto infArg;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( ! expA ) {
        if ( ! sigA ) goto zero;
        normExpSig = softfloat_normSubnormalF32Sig( sigA );
        expA = normExpSig.exp;
        sigA = normExpSig.sig;
    }
    if ( ! expB ) {
        if ( ! sigB ) goto zero;
        normExpSig = softfloat_normSubnormalF32Sig( sigB );
        expB = normExpSig.exp;
        sigB = normExpSig.sig;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expZ = expA + expB - 0x7F;
    sigA = (sigA | 0x00800000)<<7;
    sigB = (sigB | 0x00800000)<<8;
    sigZ = softfloat_shortShiftRightJam64( (uint_fast64_t) sigA * sigB, 32 );
    if ( sigZ < 0x40000000 ) {
        --expZ;
        sigZ <<= 1;
    }
    return softfloat_roundPackToF32( signZ, expZ, sigZ );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 propagateNaN:
    uiZ = softfloat_propagateNaNF32UI( uiA, uiB );
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 infArg:
    if ( ! magBits ) {
        softfloat_raiseFlags( softfloat_flag_invalid );
        uiZ = defaultNaNF32UI;
    } else {
        uiZ = packToF32UI( signZ, 0xFF, 0 );
    }
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 zero:
    uiZ = packToF32UI( signZ, 0, 0 );
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f64_mul.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t f64_mul( float64_t a, float64_t b )
{
    union ui64_f64 uA;
    uint_fast64_t uiA;
    bool signA;
    int_fast16_t expA;
    uint_fast64_t sigA;
    union ui64_f64 uB;
    uint_fast64_t uiB;
    bool signB;
    int_fast16_t expB;
    uint_fast64_t sigB;
    bool signZ;
    uint_fast64_t magBits;
    struct exp16_sig64 normExpSig;
    int_fast16_t expZ;
#ifdef SOFTFLOAT_FAST_INT64
    struct uint128 sig128Z;
#else
    uint32_t sig128Z[4];
#endif
    uint_fast64_t sigZ, uiZ;
    union ui64_f64 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    signA = signF64UI( uiA );
    expA  = expF64UI( uiA );
    sigA  = fracF64UI( uiA );
    uB.f = b;
    uiB = uB.ui;
    signB = signF64UI( uiB );
    expB  = expF64UI( uiB );
    sigB  = fracF64UI( uiB );
    signZ = signA ^ signB;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( expA == 0x7FF ) {
        if ( sigA || ((expB == 0x7FF) && sigB) ) goto propagateNaN;
        magBits = expB | sigB;
        goto infArg;
    }
    if ( expB == 0x7FF ) {
        if ( sigB ) goto propagateNaN;
        magBits = expA | sigA;
        goto infArg;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( ! expA ) {
        if ( ! sigA ) goto zero;
        normExpSig = softfloat_normSubnormalF64Sig( sigA );
        expA = normExpSig.exp;
        sigA = normExpSig.sig;
    }
    if ( ! expB ) {
        if ( ! sigB ) goto zero;
        normExpSig = softfloat_normSubnormalF64Sig( sigB );
        expB = normExpSig.exp;
        sigB = normExpSig.sig;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expZ = expA + expB - 0x3FF;
    sigA = (sigA | UINT64_C( 0x0010000000000000 ))<<10;
    sigB = (sigB | UINT64_C( 0x0010000000000000 ))<<11;
#ifdef SOFTFLOAT_FAST_INT64
    sig128Z = softfloat_mul64To128( sigA, sigB );
    sigZ = sig128Z.v64 | (sig128Z.v0 != 0);
#else
    softfloat_mul64To128M( sigA, sigB, sig128Z );
    sigZ =
        (uint64_t) sig128Z[indexWord( 4, 3 )]<<32 | sig128Z[indexWord( 4, 2 )];
    if ( sig128Z[indexWord( 4, 1 )] || sig128Z[indexWord( 4, 0 )] ) sigZ |= 1;
#endif
    if ( sigZ < UINT64_C( 0x4000000000000000 ) ) {
        --expZ;
        sigZ <<= 1;
    }
    return softfloat_roundPackToF64( signZ, expZ, sigZ );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 propagateNaN:
    uiZ = softfloat_propagateNaNF64UI( uiA, uiB );
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 infArg:
    if ( ! magBits ) {
        softfloat_raiseFlags( softfloat_flag_invalid );
        uiZ = defaultNaNF64UI;
    } else {
        uiZ = packToF64UI( signZ, 0x7FF, 0 );
    }
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 zero:
    uiZ = packToF64UI( signZ, 0, 0 );
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f32_div.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t f32_div( float32_t a, float32_t b )
{
    union ui32_f32 uA;
    uint_fast32_t uiA;
    bool signA;
    int_fast16_t expA;
    uint_fast32_t sigA;
    union ui32_f32 uB;
    uint_fast32_t uiB;
    bool signB;
    int_fast16_t expB;
    uint_fast32_t sigB;
    bool signZ;
    struct exp16_sig32 normExpSig;
    int_fast16_t expZ;
#ifdef SOFTFLOAT_FAST_DIV64TO32
    uint_fast64_t sig64A;
    uint_fast32_t sigZ;
#else
    uint_fast32_t sigZ;
    uint_fast64_t rem;
#endif
    uint_fast32_t uiZ;
    union ui32_f32 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    signA = signF32UI( uiA );
    expA  = expF32UI( uiA );
    sigA  = fracF32UI( uiA );
    uB.f = b;
    uiB = uB.ui;
    signB = signF32UI( uiB );
    expB  = expF32UI( uiB );
    sigB  = fracF32UI( uiB );
    signZ = signA ^ signB;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( expA == 0xFF ) {
        if ( sigA ) goto propagateNaN;
        if ( expB == 0xFF ) {
            if ( sigB ) goto propagateNaN;
            goto invalid;
        }
        goto infinity;
    }
    if ( expB == 0xFF ) {
        if ( sigB ) goto propagateNaN;
        goto zero;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( ! expB ) {
        if ( ! sigB ) {
            if ( ! (expA | sigA) ) goto invalid;
            softfloat_raiseFlags( softfloat_flag_infinite );
            goto infinity;
        }
        normExpSig = softfloat_normSubnormalF32Sig( sigB );
        expB = normExpSig.exp;
        sigB = normExpSig.sig;
    }
    if ( ! expA ) {
        if ( ! sigA ) goto zero;
        normExpSig = softfloat_normSubnormalF32Sig( sigA );
        expA = normExpSig.exp;
        sigA = normExpSig.sig;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expZ = expA - expB + 0x7E;
    sigA |= 0x00800000;
    sigB |= 0x00800000;
#ifdef SOFTFLOAT_FAST_DIV64TO32
    if ( sigA < sigB ) {
        --expZ;
        sig64A = (uint_fast64_t) sigA<<31;
    } else {
        sig64A = (uint_fast64_t) sigA<<30;
    }
    sigZ = sig64A / sigB;
    if ( ! (sigZ & 0x3F) ) sigZ |= ((uint_fast64_t) sigB * sigZ != sig64A);
#else
    if ( sigA < sigB ) {
        --expZ;
        sigA <<= 8;
    } else {
        sigA <<= 7;
    }
    sigB <<= 8;
    sigZ = ((uint_fast64_t) sigA * softfloat_approxRecip32_1( sigB ))>>32;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    sigZ += 2;
    if ( (sigZ & 0x3F) < 2 ) {
        sigZ &= ~3;
#ifdef SOFTFLOAT_FAST_INT64
        rem = ((uint_fast64_t) sigA<<31) - (uint_fast64_t) sigZ * sigB;
#else
        rem = ((uint_fast64_t) sigA<<32) - (uint_fast64_t) (sigZ<<1) * sigB;
#endif
        if ( rem & UINT64_C( 0x8000000000000000 ) ) {
            sigZ -= 4;
        } else {
            if ( rem ) sigZ |= 1;
        }
    }
#endif
    return softfloat_roundPackToF32( signZ, expZ, sigZ );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 propagateNaN:
    uiZ = softfloat_propagateNaNF32UI( uiA, uiB );
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    uiZ = defaultNaNF32UI;
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 infinity:
    uiZ = packToF32UI( signZ, 0xFF, 0 );
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 zero:
    uiZ = packToF32UI( signZ, 0, 0 );
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f64_div.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t f64_div( float64_t a, float64_t b )
{
    union ui64_f64 uA;
    uint_fast64_t uiA;
    bool signA;
    int_fast16_t expA;
    uint_fast64_t sigA;
    union ui64_f64 uB;
    uint_fast64_t uiB;
    bool signB;
    int_fast16_t expB;
    uint_fast64_t sigB;
    bool signZ;
    struct exp16_sig64 normExpSig;
    int_fast16_t expZ;
    uint32_t recip32, sig32Z, doubleTerm;
    uint_fast64_t rem;
    uint32_t q;
    uint_fast64_t sigZ;
    uint_fast64_t uiZ;
    union ui64_f64 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    signA = signF64UI( uiA );
    expA  = expF64UI( uiA );
    sigA  = fracF64UI( uiA );
    uB.f = b;
    uiB = uB.ui;
    signB = signF64UI( uiB );
    expB  = expF64UI( uiB );
    sigB  = fracF64UI( uiB );
    signZ = signA ^ signB;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( expA == 0x7FF ) {
        if ( sigA ) goto propagateNaN;
        if ( expB == 0x7FF ) {
            if ( sigB ) goto propagateNaN;
            goto invalid;
        }
        goto infinity;
    }
    if ( expB == 0x7FF ) {
        if ( sigB ) goto propagateNaN;
        goto zero;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( ! expB ) {
        if ( ! sigB ) {
            if ( ! (expA | sigA) ) goto invalid;
            softfloat_raiseFlags( softfloat_flag_infinite );
            goto infinity;
        }
        normExpSig = softfloat_normSubnormalF64Sig( sigB );
        expB = normExpSig.exp;
        sigB = normExpSig.sig;
    }
    if ( ! expA ) {
        if ( ! sigA ) goto zero;
        normExpSig = softfloat_normSubnormalF64Sig( sigA );
        expA = normExpSig.exp;
        sigA = normExpSig.sig;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expZ = expA - expB + 0x3FE;
    sigA |= UINT64_C( 0x0010000000000000 );
    sigB |= UINT64_C( 0x0010000000000000 );
    if ( sigA < sigB ) {
        --expZ;
        sigA <<= 11;
    } else {
        sigA <<= 10;
    }
    sigB <<= 11;
    recip32 = softfloat_approxRecip32_1( sigB>>32 ) - 2;
    sig32Z = ((uint32_t) (sigA>>32) * (uint_fast64_t) recip32)>>32;
    doubleTerm = sig32Z<<1;
    rem =
        ((sigA - (uint_fast64_t) doubleTerm * (uint32_t) (sigB>>32))<<28)
            - (uint_fast64_t) doubleTerm * ((uint32_t) sigB>>4);
    q = (((uint32_t) (rem>>32) * (uint_fast64_t) recip32)>>32) + 4;
    sigZ = ((uint_fast64_t) sig32Z<<32) + ((uint_fast64_t) q<<4);
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( (sigZ & 0x1FF) < 4<<4 ) {
        q &= ~7;
        sigZ &= ~(uint_fast64_t) 0x7F;
        doubleTerm = q<<1;
        rem =
            ((rem - (uint_fast64_t) doubleTerm * (uint32_t) (sigB>>32))<<28)
                - (uint_fast64_t) doubleTerm * ((uint32_t) sigB>>4);
        if ( rem & UINT64_C( 0x8000000000000000 ) ) {
            sigZ -= 1<<7;
        } else {
            if ( rem ) sigZ |= 1;
        }
    }
    return softfloat_roundPackToF64( signZ, expZ, sigZ );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 propagateNaN:
    uiZ = softfloat_propagateNaNF64UI( uiA, uiB );
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    uiZ = defaultNaNF64UI;
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 infinity:
    uiZ = packToF64UI( signZ, 0x7FF, 0 );
    goto uiZ;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 zero:
    uiZ = packToF64UI( signZ, 0, 0 );
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f32_sqrt.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t f32_sqrt( float32_t a )
{
    union ui32_f32 uA;
    uint_fast32_t uiA;
    bool signA;
    int_fast16_t expA;
    uint_fast32_t sigA, uiZ;
    struct exp16_sig32 normExpSig;
    int_fast16_t expZ;
    uint_fast32_t sigZ, shiftedSigZ;
    uint32_t negRem;
    union ui32_f32 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    signA = signF32UI( uiA );
    expA  = expF32UI( uiA );
    sigA  = fracF32UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( expA == 0xFF ) {
        if ( sigA ) {
            uiZ = softfloat_propagateNaNF32UI( uiA, 0 );
            goto uiZ;
        }
        if ( ! signA ) return a;
        goto invalid;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( signA ) {
        if ( ! (expA | sigA) ) return a;
        goto invalid;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( ! expA ) {
        if ( ! sigA ) return a;
        normExpSig = softfloat_normSubnormalF32Sig( sigA );
        expA = normExpSig.exp;
        sigA = normExpSig.sig;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    expZ = ((expA - 0x7F)>>1) + 0x7E;
    expA &= 1;
    sigA = (sigA | 0x00800000)<<8;
    sigZ =
        ((uint_fast64_t) sigA * softfloat_approxRecipSqrt32_1( expA, sigA ))
            >>32;
    if ( expA ) sigZ >>= 1;
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    sigZ += 2;
    if ( (sigZ & 0x3F) < 2 ) {
        shiftedSigZ = sigZ>>2;
        negRem = shiftedSigZ * shiftedSigZ;
        sigZ &= ~3;
        if ( negRem & 0x80000000 ) {
            sigZ |= 1;
        } else {
            if ( negRem ) --sigZ;
        }
    }
    return softfloat_roundPackToF32( 0, expZ, sigZ );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    uiZ = defaultNaNF32UI;
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f64_sqrt.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t f64_sqrt( float64_t a )
{
    union ui64_f64 uA;
    uint_fast64_t uiA;
    bool signA;
    int_fast16_t expA;
    uint_fast64_t sigA, uiZ;
    struct exp16_sig64 normExpSig;
    int_fast16_t expZ;
    uint32_t sig32A, recipSqrt32, sig32Z;
    uint_fast64_t rem;
    uint32_t q;
    uint_fast64_t sigZ, shiftedSigZ;
    union ui64_f64 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    signA = signF64UI( uiA );
    expA  = expF64UI( uiA );
    sigA  = fracF64UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( expA == 0x7FF ) {
        if ( sigA ) {
            uiZ = softfloat_propagateNaNF64UI( uiA, 0 );
            goto uiZ;
        }
        if ( ! signA ) return a;
        goto invalid;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( signA ) {
        if ( ! (expA | sigA) ) return a;
        goto invalid;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( ! expA ) {
        if ( ! sigA ) return a;
        normExpSig = softfloat_normSubnormalF64Sig( sigA );
        expA = normExpSig.exp;
        sigA = normExpSig.sig;
    }
    /*------------------------------------------------------------------------
    | (`sig32Z' is guaranteed to be a lower bound on the square root of
    | `sig32A', which makes `sig32Z' also a lower bound on the square root of
    | `sigA'.)
    *------------------------------------------------------------------------*/
    expZ = ((expA - 0x3FF)>>1) + 0x3FE;
    expA &= 1;
    sigA |= UINT64_C( 0x0010000000000000 );
    sig32A = sigA>>21;
    recipSqrt32 = softfloat_approxRecipSqrt32_1( expA, sig32A );
    sig32Z = ((uint_fast64_t) sig32A * recipSqrt32)>>32;
    if ( expA ) {
        sigA <<= 8;
        sig32Z >>= 1;
    } else {
        sigA <<= 9;
    }
    rem = sigA - (uint_fast64_t) sig32Z * sig32Z;
    q = ((uint32_t) (rem>>2) * (uint_fast64_t) recipSqrt32)>>32;
    sigZ = ((uint_fast64_t) sig32Z<<32 | 1<<5) + ((uint_fast64_t) q<<3);
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( (sigZ & 0x1FF) < 0x22 ) {
        sigZ &= ~(uint_fast64_t) 0x3F;
        shiftedSigZ = sigZ>>6;
        rem = (sigA<<52) - shiftedSigZ * shiftedSigZ;
        if ( rem & UINT64_C( 0x8000000000000000 ) ) {
            --sigZ;
        } else {
            if ( rem ) sigZ |= 1;
        }
    }
    return softfloat_roundPackToF64( 0, expZ, sigZ );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    uiZ = defaultNaNF64UI;
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f32_mulAdd.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t f32_mulAdd( float32_t a, float32_t b, float32_t c )
{
    union ui32_f32 uA;
    uint_fast32_t uiA;
    union ui32_f32 uB;
    uint_fast32_t uiB;
    union ui32_f32 uC;
    uint_fast32_t uiC;

    uA.f = a;
    uiA = uA.ui;
    uB.f = b;
    uiB = uB.ui;
    uC.f = c;
    uiC = uC.ui;
    return softfloat_mulAddF32( uiA, uiB, uiC, 0 );

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f64_mulAdd.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t f64_mulAdd( float64_t a, float64_t b, float64_t c )
{
    union ui64_f64 uA;
    uint_fast64_t uiA;
    union ui64_f64 uB;
    uint_fast64_t uiB;
    union ui64_f64 uC;
    uint_fast64_t uiC;

    uA.f = a;
    uiA = uA.ui;
    uB.f = b;
    uiB = uB.ui;
    uC.f = c;
    uiC = uC.ui;
    return softfloat_mulAddF64( uiA, uiB, uiC, 0 );

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f64_to_f32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t f64_to_f32( float64_t a )
{
    union ui64_f64 uA;
    uint_fast64_t uiA;
    bool sign;
    int_fast16_t exp;
    uint_fast64_t frac;
    __attribute__((unused)) struct commonNaN commonNaN;
    uint_fast32_t uiZ, frac32;
    union ui32_f32 uZ;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    sign = signF64UI( uiA );
    exp  = expF64UI( uiA );
    frac = fracF64UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( exp == 0x7FF ) {
        if ( frac ) {
            softfloat_f64UIToCommonNaN( uiA, &commonNaN );
            uiZ = softfloat_commonNaNToF32UI( &commonNaN );
        } else {
            uiZ = packToF32UI( sign, 0xFF, 0 );
        }
        goto uiZ;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    frac32 = softfloat_shortShiftRightJam64( frac, 22 );
    if ( ! (exp | frac32) ) {
        uiZ = packToF32UI( sign, 0, 0 );
        goto uiZ;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    return softfloat_roundPackToF32( sign, exp - 0x381, frac32 | 0x40000000 );
 uiZ:
    uZ.ui = uiZ;
    return uZ.f;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: i32_to_f32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t i32_to_f32( int32_t a )
{
    bool sign;
    union ui32_f32 uZ;
    uint_fast32_t absA;

    sign = (a < 0);
    if ( ! (a & 0x7FFFFFFF) ) {
        uZ.ui = sign ? packToF32UI( 1, 0x9E, 0 ) : 0;
        return uZ.f;
    }
    absA = sign ? -(uint_fast32_t) a : (uint_fast32_t) a;
    return softfloat_normRoundPackToF32( sign, 0x9C, absA );

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: i64_to_f32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t i64_to_f32( int64_t a )
{
    bool sign;
    uint_fast64_t absA;
    int_fast8_t shiftDist;
    union ui32_f32 u;
    uint_fast32_t sig;

    sign = (a < 0);
    absA = sign ? -(uint_fast64_t) a : (uint_fast64_t) a;
    shiftDist = softfloat_countLeadingZeros64( absA ) - 40;
    if ( 0 <= shiftDist ) {
        u.ui =
            a ? packToF32UI(
                    sign, 0x95 - shiftDist, (uint_fast32_t) absA<<shiftDist )
                : 0;
        return u.f;
    } else {
        shiftDist += 7;
        sig =
            (shiftDist < 0)
                ? softfloat_shortShiftRightJam64( absA, -shiftDist )
                : (uint_fast32_t) absA<<shiftDist;
        return softfloat_roundPackToF32( sign, 0x9C - shiftDist, sig );
    }

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: ui32_to_f32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t ui32_to_f32( uint32_t a )
{
    union ui32_f32 uZ;

    if ( ! a ) {
        uZ.ui = 0;
        return uZ.f;
    }
    if ( a & 0x80000000 ) {
        return softfloat_roundPackToF32( 0, 0x9D, a>>1 | (a & 1) );
    } else {
        return softfloat_normRoundPackToF32( 0, 0x9C, a );
    }

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: ui64_to_f32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float32_t ui64_to_f32( uint64_t a )
{
    int_fast8_t shiftDist;
    union ui32_f32 u;
    uint_fast32_t sig;

    shiftDist = softfloat_countLeadingZeros64( a ) - 40;
    if ( 0 <= shiftDist ) {
        u.ui =
            a ? packToF32UI(
                    0, 0x95 - shiftDist, (uint_fast32_t) a<<shiftDist )
                : 0;
        return u.f;
    } else {
        shiftDist += 7;
        sig =
            (shiftDist < 0) ? softfloat_shortShiftRightJam64( a, -shiftDist )
                : (uint_fast32_t) a<<shiftDist;
        return softfloat_roundPackToF32( 0, 0x9C - shiftDist, sig );
    }

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: i64_to_f64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t i64_to_f64( int64_t a )
{
    bool sign;
    union ui64_f64 uZ;
    uint_fast64_t absA;

    sign = (a < 0);
    if ( ! (a & UINT64_C( 0x7FFFFFFFFFFFFFFF )) ) {
        uZ.ui = sign ? packToF64UI( 1, 0x43E, 0 ) : 0;
        return uZ.f;
    }
    absA = sign ? -(uint_fast64_t) a : (uint_fast64_t) a;
    return softfloat_normRoundPackToF64( sign, 0x43C, absA );

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: ui64_to_f64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


float64_t ui64_to_f64( uint64_t a )
{
    union ui64_f64 uZ;

    if ( ! a ) {
        uZ.ui = 0;
        return uZ.f;
    }
    if ( a & UINT64_C( 0x8000000000000000 ) ) {
        return
            softfloat_roundPackToF64(
                0, 0x43D, softfloat_shortShiftRightJam64( a, 1 ) );
    } else {
        return softfloat_normRoundPackToF64( 0, 0x43C, a );
    }

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f32_to_i32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


int_fast32_t f32_to_i32( float32_t a, uint_fast8_t roundingMode, bool exact )
{
    union ui32_f32 uA;
    uint_fast32_t uiA;
    bool sign;
    int_fast16_t exp;
    uint_fast32_t sig;
    uint_fast64_t sig64;
    int_fast16_t shiftDist;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    sign = signF32UI( uiA );
    exp  = expF32UI( uiA );
    sig  = fracF32UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
#if (i32_fromNaN != i32_fromPosOverflow) || (i32_fromNaN != i32_fromNegOverflow)
    if ( (exp == 0xFF) && sig ) {
#if (i32_fromNaN == i32_fromPosOverflow)
        sign = 0;
#elif (i32_fromNaN == i32_fromNegOverflow)
        sign = 1;
#else
        softfloat_raiseFlags( softfloat_flag_invalid );
        return i32_fromNaN;
#endif
    }
#endif
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( exp ) sig |= 0x00800000;
    sig64 = (uint_fast64_t) sig<<32;
    shiftDist = 0xAA - exp;
    if ( 0 < shiftDist ) sig64 = softfloat_shiftRightJam64( sig64, shiftDist );
    return softfloat_roundToI32( sign, sig64, roundingMode, exact );

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f32_to_i64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


int_fast64_t f32_to_i64( float32_t a, uint_fast8_t roundingMode, bool exact )
{
    union ui32_f32 uA;
    uint_fast32_t uiA;
    bool sign;
    int_fast16_t exp;
    uint_fast32_t sig;
    int_fast16_t shiftDist;
#ifdef SOFTFLOAT_FAST_INT64
    uint_fast64_t sig64, extra;
    struct uint64_extra sig64Extra;
#else
    uint32_t extSig[3];
#endif

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    sign = signF32UI( uiA );
    exp  = expF32UI( uiA );
    sig  = fracF32UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    shiftDist = 0xBE - exp;
    if ( shiftDist < 0 ) {
        softfloat_raiseFlags( softfloat_flag_invalid );
        return
            (exp == 0xFF) && sig ? i64_fromNaN
                : sign ? i64_fromNegOverflow : i64_fromPosOverflow;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( exp ) sig |= 0x00800000;
#ifdef SOFTFLOAT_FAST_INT64
    sig64 = (uint_fast64_t) sig<<40;
    extra = 0;
    if ( shiftDist ) {
        sig64Extra = softfloat_shiftRightJam64Extra( sig64, 0, shiftDist );
        sig64 = sig64Extra.v;
        extra = sig64Extra.extra;
    }
    return softfloat_roundToI64( sign, sig64, extra, roundingMode, exact );
#else
    extSig[indexWord( 3, 2 )] = sig<<8;
    extSig[indexWord( 3, 1 )] = 0;
    extSig[indexWord( 3, 0 )] = 0;
    if ( shiftDist ) softfloat_shiftRightJam96M( extSig, shiftDist, extSig );
    return softfloat_roundMToI64( sign, extSig, roundingMode, exact );
#endif

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f32_to_ui32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


uint_fast32_t f32_to_ui32( float32_t a, uint_fast8_t roundingMode, bool exact )
{
    union ui32_f32 uA;
    uint_fast32_t uiA;
    bool sign;
    int_fast16_t exp;
    uint_fast32_t sig;
    uint_fast64_t sig64;
    int_fast16_t shiftDist;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    sign = signF32UI( uiA );
    exp  = expF32UI( uiA );
    sig  = fracF32UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
#if (ui32_fromNaN != ui32_fromPosOverflow) || (ui32_fromNaN != ui32_fromNegOverflow)
    if ( (exp == 0xFF) && sig ) {
#if (ui32_fromNaN == ui32_fromPosOverflow)
        sign = 0;
#elif (ui32_fromNaN == ui32_fromNegOverflow)
        sign = 1;
#else
        softfloat_raiseFlags( softfloat_flag_invalid );
        return ui32_fromNaN;
#endif
    }
#endif
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( exp ) sig |= 0x00800000;
    sig64 = (uint_fast64_t) sig<<32;
    shiftDist = 0xAA - exp;
    if ( 0 < shiftDist ) sig64 = softfloat_shiftRightJam64( sig64, shiftDist );
    return softfloat_roundToUI32( sign, sig64, roundingMode, exact );

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f32_to_ui64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


uint_fast64_t f32_to_ui64( float32_t a, uint_fast8_t roundingMode, bool exact )
{
    union ui32_f32 uA;
    uint_fast32_t uiA;
    bool sign;
    int_fast16_t exp;
    uint_fast32_t sig;
    int_fast16_t shiftDist;
#ifdef SOFTFLOAT_FAST_INT64
    uint_fast64_t sig64, extra;
    struct uint64_extra sig64Extra;
#else
    uint32_t extSig[3];
#endif

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    sign = signF32UI( uiA );
    exp  = expF32UI( uiA );
    sig  = fracF32UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    shiftDist = 0xBE - exp;
    if ( shiftDist < 0 ) {
        softfloat_raiseFlags( softfloat_flag_invalid );
        return
            (exp == 0xFF) && sig ? ui64_fromNaN
                : sign ? ui64_fromNegOverflow : ui64_fromPosOverflow;
    }
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( exp ) sig |= 0x00800000;
#ifdef SOFTFLOAT_FAST_INT64
    sig64 = (uint_fast64_t) sig<<40;
    extra = 0;
    if ( shiftDist ) {
        sig64Extra = softfloat_shiftRightJam64Extra( sig64, 0, shiftDist );
        sig64 = sig64Extra.v;
        extra = sig64Extra.extra;
    }
    return softfloat_roundToUI64( sign, sig64, extra, roundingMode, exact );
#else
    extSig[indexWord( 3, 2 )] = sig<<8;
    extSig[indexWord( 3, 1 )] = 0;
    extSig[indexWord( 3, 0 )] = 0;
    if ( shiftDist ) softfloat_shiftRightJam96M( extSig, shiftDist, extSig );
    return softfloat_roundMToUI64( sign, extSig, roundingMode, exact );
#endif

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f64_to_i32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


int_fast32_t f64_to_i32( float64_t a, uint_fast8_t roundingMode, bool exact )
{
    union ui64_f64 uA;
    uint_fast64_t uiA;
    bool sign;
    int_fast16_t exp;
    uint_fast64_t sig;
    int_fast16_t shiftDist;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    sign = signF64UI( uiA );
    exp  = expF64UI( uiA );
    sig  = fracF64UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
#if (i32_fromNaN != i32_fromPosOverflow) || (i32_fromNaN != i32_fromNegOverflow)
    if ( (exp == 0x7FF) && sig ) {
#if (i32_fromNaN == i32_fromPosOverflow)
        sign = 0;
#elif (i32_fromNaN == i32_fromNegOverflow)
        sign = 1;
#else
        softfloat_raiseFlags( softfloat_flag_invalid );
        return i32_fromNaN;
#endif
    }
#endif
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( exp ) sig |= UINT64_C( 0x0010000000000000 );
    shiftDist = 0x427 - exp;
    if ( 0 < shiftDist ) sig = softfloat_shiftRightJam64( sig, shiftDist );
    return softfloat_roundToI32( sign, sig, roundingMode, exact );

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f64_to_i64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


int_fast64_t f64_to_i64( float64_t a, uint_fast8_t roundingMode, bool exact )
{
    union ui64_f64 uA;
    uint_fast64_t uiA;
    bool sign;
    int_fast16_t exp;
    uint_fast64_t sig;
    int_fast16_t shiftDist;
#ifdef SOFTFLOAT_FAST_INT64
    struct uint64_extra sigExtra;
#else
    uint32_t extSig[3];
#endif

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    sign = signF64UI( uiA );
    exp  = expF64UI( uiA );
    sig  = fracF64UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( exp ) sig |= UINT64_C( 0x0010000000000000 );
    shiftDist = 0x433 - exp;
#ifdef SOFTFLOAT_FAST_INT64
    if ( shiftDist <= 0 ) {
        if ( shiftDist < -11 ) goto invalid;
        sigExtra.v = sig<<-shiftDist;
        sigExtra.extra = 0;
    } else {
        sigExtra = softfloat_shiftRightJam64Extra( sig, 0, shiftDist );
    }
    return
        softfloat_roundToI64(
            sign, sigExtra.v, sigExtra.extra, roundingMode, exact );
#else
    extSig[indexWord( 3, 0 )] = 0;
    if ( shiftDist <= 0 ) {
        if ( shiftDist < -11 ) goto invalid;
        sig <<= -shiftDist;
        extSig[indexWord( 3, 2 )] = sig>>32;
        extSig[indexWord( 3, 1 )] = sig;
    } else {
        extSig[indexWord( 3, 2 )] = sig>>32;
        extSig[indexWord( 3, 1 )] = sig;
        softfloat_shiftRightJam96M( extSig, shiftDist, extSig );
    }
    return softfloat_roundMToI64( sign, extSig, roundingMode, exact );
#endif
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    return
        (exp == 0x7FF) && fracF64UI( uiA ) ? i64_fromNaN
            : sign ? i64_fromNegOverflow : i64_fromPosOverflow;

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f64_to_ui32.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


uint_fast32_t f64_to_ui32( float64_t a, uint_fast8_t roundingMode, bool exact )
{
    union ui64_f64 uA;
    uint_fast64_t uiA;
    bool sign;
    int_fast16_t exp;
    uint_fast64_t sig;
    int_fast16_t shiftDist;

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    sign = signF64UI( uiA );
    exp  = expF64UI( uiA );
    sig  = fracF64UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
#if (ui32_fromNaN != ui32_fromPosOverflow) || (ui32_fromNaN != ui32_fromNegOverflow)
    if ( (exp == 0x7FF) && sig ) {
#if (ui32_fromNaN == ui32_fromPosOverflow)
        sign = 0;
#elif (ui32_fromNaN == ui32_fromNegOverflow)
        sign = 1;
#else
        softfloat_raiseFlags( softfloat_flag_invalid );
        return ui32_fromNaN;
#endif
    }
#endif
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( exp ) sig |= UINT64_C( 0x0010000000000000 );
    shiftDist = 0x427 - exp;
    if ( 0 < shiftDist ) sig = softfloat_shiftRightJam64( sig, shiftDist );
    return softfloat_roundToUI32( sign, sig, roundingMode, exact );

}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
// INLINED FILE: f64_to_ui64.c
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


uint_fast64_t f64_to_ui64( float64_t a, uint_fast8_t roundingMode, bool exact )
{
    union ui64_f64 uA;
    uint_fast64_t uiA;
    bool sign;
    int_fast16_t exp;
    uint_fast64_t sig;
    int_fast16_t shiftDist;
#ifdef SOFTFLOAT_FAST_INT64
    struct uint64_extra sigExtra;
#else
    uint32_t extSig[3];
#endif

    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    uA.f = a;
    uiA = uA.ui;
    sign = signF64UI( uiA );
    exp  = expF64UI( uiA );
    sig  = fracF64UI( uiA );
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
    if ( exp ) sig |= UINT64_C( 0x0010000000000000 );
    shiftDist = 0x433 - exp;
#ifdef SOFTFLOAT_FAST_INT64
    if ( shiftDist <= 0 ) {
        if ( shiftDist < -11 ) goto invalid;
        sigExtra.v = sig<<-shiftDist;
        sigExtra.extra = 0;
    } else {
        sigExtra = softfloat_shiftRightJam64Extra( sig, 0, shiftDist );
    }
    return
        softfloat_roundToUI64(
            sign, sigExtra.v, sigExtra.extra, roundingMode, exact );
#else
    extSig[indexWord( 3, 0 )] = 0;
    if ( shiftDist <= 0 ) {
        if ( shiftDist < -11 ) goto invalid;
        sig <<= -shiftDist;
        extSig[indexWord( 3, 2 )] = sig>>32;
        extSig[indexWord( 3, 1 )] = sig;
    } else {
        extSig[indexWord( 3, 2 )] = sig>>32;
        extSig[indexWord( 3, 1 )] = sig;
        softfloat_shiftRightJam96M( extSig, shiftDist, extSig );
    }
    return softfloat_roundMToUI64( sign, extSig, roundingMode, exact );
#endif
    /*------------------------------------------------------------------------
    *------------------------------------------------------------------------*/
 invalid:
    softfloat_raiseFlags( softfloat_flag_invalid );
    return
        (exp == 0x7FF) && fracF64UI( uiA ) ? ui64_fromNaN
            : sign ? ui64_fromNegOverflow : ui64_fromPosOverflow;

}


////////////////////////////////////////////////////////////////////////////////
// VMI INTERFACE
////////////////////////////////////////////////////////////////////////////////

#define F32_SIGN 0x80000000
#define F64_SIGN 0x8000000000000000ULL

//
// Set rounding mode and reset flags before floating point operation
//
static void beforeFPInt(riscvP riscv, riscvRMDesc rm) {

    // map from RISC-V rounding mode to riscvRMDesc
    static const riscvRMDesc mapRM[] = {
        [0] = RV_RM_RTE,
        [1] = RV_RM_RTZ,
        [2] = RV_RM_RDN,
        [3] = RV_RM_RUP,
        [4] = RV_RM_RMM,
    };

    // if rounding mode is RV_RM_CURRENT, get the current value
    if(rm==RV_RM_CURRENT) {
        rm = mapRM[RD_CSR_FIELD(riscv, fcsr, frm)];
    }

    // set SoftFloat controls
    softfloat_roundingMode   = rm;
    softfloat_exceptionFlags = 0;
}

//
// Set rounding mode and reset flags before general floating point operation
//
inline static void beforeFP(vmiProcessorP processor) {

    riscvP riscv = (riscvP)processor;

    beforeFPInt(riscv, riscv->fpActiveRM);
}

//
// Set rounding mode and reset flags before convert operation
//
static void beforeFPCVT(vmiProcessorP processor, vmiFPRC rc) {

    riscvP riscv = (riscvP)processor;

    // map from RISC-V rounding mode to riscvRMDesc
    static const riscvRMDesc mapRC[] = {
        [vmi_FPR_NEAREST] = RV_RM_RTE,
        [vmi_FPR_ZERO]    = RV_RM_RTZ,
        [vmi_FPR_NEG_INF] = RV_RM_RDN,
        [vmi_FPR_POS_INF] = RV_RM_RUP,
        [vmi_FPR_AWAY]    = RV_RM_RMM,
        [vmi_FPR_CURRENT] = RV_RM_CURRENT,
    };

    beforeFPInt(riscv, mapRC[rc]);
}

//
// Handle sticky flags on completion of SoftFloat operation
//
inline static void afterFP(vmiFPFlagsP setFlags) {
    setFlags->bits |= softfloat_exceptionFlags;
}

//
// Emulated 32-bit FADD
//
VMI_FP_32_RESULT_FN(riscvFADD32) {

    float32_t a = {args[0].u32};
    float32_t b = {args[1].u32};

    beforeFP(processor);
    float32_t result = f32_add(a, b);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 64-bit FADD
//
VMI_FP_64_RESULT_FN(riscvFADD64) {

    float64_t a = {args[0].u64};
    float64_t b = {args[1].u64};

    beforeFP(processor);
    float64_t result = f64_add(a, b);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 32-bit FSUB
//
VMI_FP_32_RESULT_FN(riscvFSUB32) {

    float32_t a = {args[0].u32};
    float32_t b = {args[1].u32};

    beforeFP(processor);
    float32_t result = f32_sub(a, b);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 64-bit FSUB
//
VMI_FP_64_RESULT_FN(riscvFSUB64) {

    float64_t a = {args[0].u64};
    float64_t b = {args[1].u64};

    beforeFP(processor);
    float64_t result = f64_sub(a, b);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 32-bit FMUL
//
VMI_FP_32_RESULT_FN(riscvFMUL32) {

    float32_t a = {args[0].u32};
    float32_t b = {args[1].u32};

    beforeFP(processor);
    float32_t result = f32_mul(a, b);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 64-bit FMUL
//
VMI_FP_64_RESULT_FN(riscvFMUL64) {

    float64_t a = {args[0].u64};
    float64_t b = {args[1].u64};

    beforeFP(processor);
    float64_t result = f64_mul(a, b);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 32-bit FDIV
//
VMI_FP_32_RESULT_FN(riscvFDIV32) {

    float32_t a = {args[0].u32};
    float32_t b = {args[1].u32};

    beforeFP(processor);
    float32_t result = f32_div(a, b);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 64-bit FDIV
//
VMI_FP_64_RESULT_FN(riscvFDIV64) {

    float64_t a = {args[0].u64};
    float64_t b = {args[1].u64};

    beforeFP(processor);
    float64_t result = f64_div(a, b);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 32-bit FSQRT
//
VMI_FP_32_RESULT_FN(riscvFSQRT32) {

    float32_t a = {args[0].u32};

    beforeFP(processor);
    float32_t result = f32_sqrt(a);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 64-bit FSQRT
//
VMI_FP_64_RESULT_FN(riscvFSQRT64) {

    float64_t a = {args[0].u64};

    beforeFP(processor);
    float64_t result = f64_sqrt(a);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 32-bit FMADD
//
VMI_FP_32_RESULT_FN(riscvFMADD32) {

    float32_t a = {args[0].u32};
    float32_t b = {args[1].u32};
    float32_t c = {args[2].u32};

    beforeFP(processor);
    float32_t result = f32_mulAdd(a, b, c);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 64-bit FMADD
//
VMI_FP_64_RESULT_FN(riscvFMADD64) {

    float64_t a = {args[0].u64};
    float64_t b = {args[1].u64};
    float64_t c = {args[2].u64};

    beforeFP(processor);
    float64_t result = f64_mulAdd(a, b, c);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 32-bit FMSUB
//
VMI_FP_32_RESULT_FN(riscvFMSUB32) {

    float32_t a = {args[0].u32};
    float32_t b = {args[1].u32};
    float32_t c = {args[2].u32^F32_SIGN};

    beforeFP(processor);
    float32_t result = f32_mulAdd(a, b, c);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 64-bit FMSUB
//
VMI_FP_64_RESULT_FN(riscvFMSUB64) {

    float64_t a = {args[0].u64};
    float64_t b = {args[1].u64};
    float64_t c = {args[2].u64^F64_SIGN};

    beforeFP(processor);
    float64_t result = f64_mulAdd(a, b, c);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 32-bit FNMADD
//
VMI_FP_32_RESULT_FN(riscvFNMADD32) {

    float32_t a = {args[0].u32^F32_SIGN};
    float32_t b = {args[1].u32};
    float32_t c = {args[2].u32^F32_SIGN};

    beforeFP(processor);
    float32_t result = f32_mulAdd(a, b, c);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 64-bit FNMADD
//
VMI_FP_64_RESULT_FN(riscvFNMADD64) {

    float64_t a = {args[0].u64^F64_SIGN};
    float64_t b = {args[1].u64};
    float64_t c = {args[2].u64^F64_SIGN};

    beforeFP(processor);
    float64_t result = f64_mulAdd(a, b, c);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 32-bit FNMSUB
//
VMI_FP_32_RESULT_FN(riscvFNMSUB32) {

    float32_t a = {args[0].u32^F32_SIGN};
    float32_t b = {args[1].u32};
    float32_t c = {args[2].u32};

    beforeFP(processor);
    float32_t result = f32_mulAdd(a, b, c);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated 64-bit FNMSUB
//
VMI_FP_64_RESULT_FN(riscvFNMSUB64) {

    float64_t a = {args[0].u64^F64_SIGN};
    float64_t b = {args[1].u64};
    float64_t c = {args[2].u64};

    beforeFP(processor);
    float64_t result = f64_mulAdd(a, b, c);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated conversion from F64 to F32
//
VMI_FP_32_RESULT_FN(riscvFCVTF32F64) {

    float64_t a  = {args[0].u64};
    vmiFPRC   rc = args[1].u32;

    beforeFPCVT(processor, rc);
    float32_t result = f64_to_f32(a);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated conversion from I32 to F32
//
VMI_FP_32_RESULT_FN(riscvFCVTF32I32) {

    int32_t a  = {args[0].i32};
    vmiFPRC rc = args[1].u32;

    beforeFPCVT(processor, rc);
    float32_t result = i32_to_f32(a);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated conversion from I64 to F32
//
VMI_FP_32_RESULT_FN(riscvFCVTF32I64) {

    int64_t a  = {args[0].i64};
    vmiFPRC rc = args[1].u32;

    beforeFPCVT(processor, rc);
    float32_t result = i64_to_f32(a);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated conversion from U32 to F32
//
VMI_FP_32_RESULT_FN(riscvFCVTF32U32) {

    uint32_t a  = {args[0].u32};
    vmiFPRC  rc = args[1].u32;

    beforeFPCVT(processor, rc);
    float32_t result = ui32_to_f32(a);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated conversion from U64 to F32
//
VMI_FP_32_RESULT_FN(riscvFCVTF32U64) {

    uint64_t a  = {args[0].u64};
    vmiFPRC  rc = args[1].u32;

    beforeFPCVT(processor, rc);
    float32_t result = ui64_to_f32(a);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated conversion from I64 to F64
//
VMI_FP_64_RESULT_FN(riscvFCVTF64I64) {

    int64_t a  = {args[0].i64};
    vmiFPRC rc = args[1].u32;

    beforeFPCVT(processor, rc);
    float64_t result = i64_to_f64(a);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated conversion from U64 to F64
//
VMI_FP_64_RESULT_FN(riscvFCVTF64U64) {

    uint64_t a  = {args[0].u64};
    vmiFPRC  rc = args[1].u32;

    beforeFPCVT(processor, rc);
    float64_t result = ui64_to_f64(a);
    afterFP(setFlags);

    return result.v;
}

//
// Emulated conversion from F32 to I32
//
VMI_FP_32_RESULT_FN(riscvFCVTI32F32) {

    float32_t a  = {args[0].u32};
    vmiFPRC   rc = args[1].u32;

    beforeFPCVT(processor, rc);
    int_fast32_t result = f32_to_i32(a, softfloat_roundingMode, 1);
    afterFP(setFlags);

    return result;
}

//
// Emulated conversion from F32 to I64
//
VMI_FP_64_RESULT_FN(riscvFCVTI64F32) {

    float32_t a  = {args[0].u32};
    vmiFPRC   rc = args[1].u32;

    beforeFPCVT(processor, rc);
    int_fast64_t result = f32_to_i64(a, softfloat_roundingMode, 1);
    afterFP(setFlags);

    return result;
}

//
// Emulated conversion from F32 to U32
//
VMI_FP_32_RESULT_FN(riscvFCVTU32F32) {

    float32_t a  = {args[0].u32};
    vmiFPRC   rc = args[1].u32;

    beforeFPCVT(processor, rc);
    uint_fast32_t result = f32_to_ui32(a, softfloat_roundingMode, 1);
    afterFP(setFlags);

    return result;
}

//
// Emulated conversion from F32 to U64
//
VMI_FP_64_RESULT_FN(riscvFCVTU64F32) {

    float32_t a  = {args[0].u32};
    vmiFPRC   rc = args[1].u32;

    beforeFPCVT(processor, rc);
    uint_fast64_t result = f32_to_ui64(a, softfloat_roundingMode, 1);
    afterFP(setFlags);

    return result;
}

//
// Emulated conversion from F64 to I32
//
VMI_FP_32_RESULT_FN(riscvFCVTI32F64) {

    float64_t a  = {args[0].u64};
    vmiFPRC   rc = args[1].u32;

    beforeFPCVT(processor, rc);
    int_fast32_t result = f64_to_i32(a, softfloat_roundingMode, 1);
    afterFP(setFlags);

    return result;
}

//
// Emulated conversion from F64 to I64
//
VMI_FP_64_RESULT_FN(riscvFCVTI64F64) {

    float64_t a  = {args[0].u64};
    vmiFPRC   rc = args[1].u32;

    beforeFPCVT(processor, rc);
    int_fast64_t result = f64_to_i64(a, softfloat_roundingMode, 1);
    afterFP(setFlags);

    return result;
}

//
// Emulated conversion from F64 to U32
//
VMI_FP_32_RESULT_FN(riscvFCVTU32F64) {

    float64_t a  = {args[0].u64};
    vmiFPRC   rc = args[1].u32;

    beforeFPCVT(processor, rc);
    uint_fast32_t result = f64_to_ui32(a, softfloat_roundingMode, 1);
    afterFP(setFlags);

    return result;
}

//
// Emulated conversion from F64 to U64
//
VMI_FP_64_RESULT_FN(riscvFCVTU64F64) {

    float64_t a  = {args[0].u64};
    vmiFPRC   rc = args[1].u32;

    beforeFPCVT(processor, rc);
    uint_fast64_t result = f64_to_ui64(a, softfloat_roundingMode, 1);
    afterFP(setFlags);

    return result;
}

