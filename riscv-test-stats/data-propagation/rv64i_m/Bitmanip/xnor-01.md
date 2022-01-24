
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002580')]      |
| SIG_REGION                | [('0x80004210', '0x80004a80', '270 dwords')]      |
| COV_LABELS                | xnor      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/64/riscof_work/xnor-01.S/ref.S    |
| Total Number of coverpoints| 375     |
| Total Coverpoints Hit     | 369      |
| Total Signature Updates   | 270      |
| STAT1                     | 265      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016d4]:xnor t6, t5, t4
      [0x800016d8]:sd t6, 952(t2)
 -- Signature Address: 0x80004698 Data: 0xFFFFFFFF4AFB0CCB
 -- Redundant Coverpoints hit by the op
      - opcode : xnor
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016fc]:xnor t6, t5, t4
      [0x80001700]:sd t6, 960(t2)
 -- Signature Address: 0x800046a0 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : xnor
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001734]:xnor t6, t5, t4
      [0x80001738]:sd t6, 976(t2)
 -- Signature Address: 0x800046b0 Data: 0xFFFFFFFF4AFB0CCB
 -- Redundant Coverpoints hit by the op
      - opcode : xnor
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80002530]:xnor t6, t5, t4
      [0x80002534]:sd t6, 1928(t2)
 -- Signature Address: 0x80004a68 Data: 0x00000004B504F334
 -- Redundant Coverpoints hit by the op
      - opcode : xnor
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs2_val == 18446744056529682431
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80002578]:xnor t6, t5, t4
      [0x8000257c]:sd t6, 1944(t2)
 -- Signature Address: 0x80004a78 Data: 0x000000003504F334
 -- Redundant Coverpoints hit by the op
      - opcode : xnor
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs2_val == 18446744071562067967
      - rs1_val > 0 and rs2_val > 0






```

## Details of STAT3

```


```

## Details of STAT4:

```

```

## Details of STAT5:



## Details of STAT1:

- The first column indicates the signature address and the data at that location in hexadecimal in the following format: 
  ```
  [Address]
  Data
  ```

- The second column captures all the coverpoints which have been captured by that particular signature location

- The third column captures all the insrtuctions since the time a coverpoint was
  hit to the point when a store to the signature was performed. Each line has
  the following format:
  ```
  [PC of instruction] : mnemonic
  ```
- The order in the table is based on the order of signatures occuring in the
  test. These need not necessarily be in increasing or decreasing order of the
  address in the signature region.

|s.no|            signature             |                                                                                        coverpoints                                                                                        |                                code                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80004210]<br>0xFFFFFFFFFFFFFFFF|- opcode : xnor<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val > 0 and rs2_val > 0<br>       |[0x800003b8]:xnor t6, t5, t5<br> [0x800003bc]:sd t6, 0(ra)<br>      |
|   2|[0x80004218]<br>0x80000000B504F334|- rs1 : x31<br> - rs2 : x29<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == 9223372036854775807<br> |[0x800003dc]:xnor t5, t6, t4<br> [0x800003e0]:sd t5, 8(ra)<br>      |
|   3|[0x80004220]<br>0x40000000B504F334|- rs1 : x29<br> - rs2 : x31<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs2_val == 13835058055282163711<br>                                                                                |[0x80000400]:xnor t4, t4, t6<br> [0x80000404]:sd t4, 16(ra)<br>     |
|   4|[0x80004228]<br>0x20000000B504F334|- rs1 : x27<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_val == 16140901064495857663<br>                                                                                |[0x80000424]:xnor t3, s11, t3<br> [0x80000428]:sd t3, 24(ra)<br>    |
|   5|[0x80004230]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x26<br> - rs2 : x26<br> - rd : x26<br> - rs1 == rs2 == rd<br>                                                                                                                      |[0x8000044c]:xnor s10, s10, s10<br> [0x80000450]:sd s10, 32(ra)<br> |
|   6|[0x80004238]<br>0x08000000B504F334|- rs1 : x28<br> - rs2 : x25<br> - rd : x27<br> - rs2_val == 17870283321406128127<br>                                                                                                       |[0x80000470]:xnor s11, t3, s9<br> [0x80000474]:sd s11, 40(ra)<br>   |
|   7|[0x80004240]<br>0x04000000B504F334|- rs1 : x24<br> - rs2 : x27<br> - rd : x25<br> - rs2_val == 18158513697557839871<br>                                                                                                       |[0x80000494]:xnor s9, s8, s11<br> [0x80000498]:sd s9, 48(ra)<br>    |
|   8|[0x80004248]<br>0x02000000B504F334|- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br> - rs2_val == 18302628885633695743<br>                                                                                                       |[0x800004b8]:xnor s8, s9, s7<br> [0x800004bc]:sd s8, 56(ra)<br>     |
|   9|[0x80004250]<br>0x01000000B504F334|- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br> - rs2_val == 18374686479671623679<br>                                                                                                       |[0x800004dc]:xnor s7, s6, s8<br> [0x800004e0]:sd s7, 64(ra)<br>     |
|  10|[0x80004258]<br>0x00800000B504F334|- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == 18410715276690587647<br>                                                                                                       |[0x80000500]:xnor s6, s7, s5<br> [0x80000504]:sd s6, 72(ra)<br>     |
|  11|[0x80004260]<br>0x00400000B504F334|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 18428729675200069631<br>                                                                                                       |[0x80000524]:xnor s5, s4, s6<br> [0x80000528]:sd s5, 80(ra)<br>     |
|  12|[0x80004268]<br>0x00200000B504F334|- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br> - rs2_val == 18437736874454810623<br>                                                                                                       |[0x80000548]:xnor s4, s5, s3<br> [0x8000054c]:sd s4, 88(ra)<br>     |
|  13|[0x80004270]<br>0x00100000B504F334|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 18442240474082181119<br>                                                                                                       |[0x8000056c]:xnor s3, s2, s4<br> [0x80000570]:sd s3, 96(ra)<br>     |
|  14|[0x80004278]<br>0x00080000B504F334|- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br> - rs2_val == 18444492273895866367<br>                                                                                                       |[0x80000590]:xnor s2, s3, a7<br> [0x80000594]:sd s2, 104(ra)<br>    |
|  15|[0x80004280]<br>0x00040000B504F334|- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br> - rs2_val == 18445618173802708991<br>                                                                                                       |[0x800005b4]:xnor a7, a6, s2<br> [0x800005b8]:sd a7, 112(ra)<br>    |
|  16|[0x80004288]<br>0x00020000B504F334|- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br> - rs2_val == 18446181123756130303<br>                                                                                                       |[0x800005d8]:xnor a6, a7, a5<br> [0x800005dc]:sd a6, 120(ra)<br>    |
|  17|[0x80004290]<br>0x00010000B504F334|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 18446462598732840959<br>                                                                                                       |[0x800005fc]:xnor a5, a4, a6<br> [0x80000600]:sd a5, 128(ra)<br>    |
|  18|[0x80004298]<br>0x00008000B504F334|- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br> - rs2_val == 18446603336221196287<br>                                                                                                       |[0x80000620]:xnor a4, a5, a3<br> [0x80000624]:sd a4, 136(ra)<br>    |
|  19|[0x800042a0]<br>0x00004000B504F334|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 18446673704965373951<br>                                                                                                       |[0x80000644]:xnor a3, a2, a4<br> [0x80000648]:sd a3, 144(ra)<br>    |
|  20|[0x800042a8]<br>0x00002000B504F334|- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br> - rs2_val == 18446708889337462783<br>                                                                                                       |[0x80000668]:xnor a2, a3, a1<br> [0x8000066c]:sd a2, 152(ra)<br>    |
|  21|[0x800042b0]<br>0x00001000B504F334|- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 18446726481523507199<br>                                                                                                       |[0x8000068c]:xnor a1, a0, a2<br> [0x80000690]:sd a1, 160(ra)<br>    |
|  22|[0x800042b8]<br>0x00000800B504F334|- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br> - rs2_val == 18446735277616529407<br>                                                                                                        |[0x800006b0]:xnor a0, a1, s1<br> [0x800006b4]:sd a0, 168(ra)<br>    |
|  23|[0x800042c0]<br>0x00000400B504F334|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 18446739675663040511<br>                                                                                                         |[0x800006d4]:xnor s1, fp, a0<br> [0x800006d8]:sd s1, 176(ra)<br>    |
|  24|[0x800042c8]<br>0x00000200B504F334|- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == 18446741874686296063<br>                                                                                                          |[0x800006f8]:xnor fp, s1, t2<br> [0x800006fc]:sd fp, 184(ra)<br>    |
|  25|[0x800042d0]<br>0x00000100B504F334|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 18446742974197923839<br>                                                                                                          |[0x8000071c]:xnor t2, t1, fp<br> [0x80000720]:sd t2, 192(ra)<br>    |
|  26|[0x800042d8]<br>0x00000080B504F334|- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br> - rs2_val == 18446743523953737727<br>                                                                                                          |[0x80000740]:xnor t1, t2, t0<br> [0x80000744]:sd t1, 200(ra)<br>    |
|  27|[0x800042e0]<br>0x00000040B504F334|- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 18446743798831644671<br>                                                                                                          |[0x8000076c]:xnor t0, tp, t1<br> [0x80000770]:sd t0, 0(t2)<br>      |
|  28|[0x800042e8]<br>0x00000020B504F334|- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br> - rs2_val == 18446743936270598143<br>                                                                                                          |[0x80000790]:xnor tp, t0, gp<br> [0x80000794]:sd tp, 8(t2)<br>      |
|  29|[0x800042f0]<br>0x00000010B504F334|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 18446744004990074879<br>                                                                                                          |[0x800007b4]:xnor gp, sp, tp<br> [0x800007b8]:sd gp, 16(t2)<br>     |
|  30|[0x800042f8]<br>0x00000008B504F334|- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br> - rs2_val == 18446744039349813247<br>                                                                                                          |[0x800007d8]:xnor sp, gp, ra<br> [0x800007dc]:sd sp, 24(t2)<br>     |
|  31|[0x80004300]<br>0x0000000400000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 18446744056529682431<br> - rs1_val == 0<br>                                                                                       |[0x800007f0]:xnor ra, zero, sp<br> [0x800007f4]:sd ra, 32(t2)<br>   |
|  32|[0x80004308]<br>0x00000002B504F334|- rs1 : x1<br> - rs2_val == 18446744065119617023<br>                                                                                                                                       |[0x80000814]:xnor t6, ra, t5<br> [0x80000818]:sd t6, 40(t2)<br>     |
|  33|[0x80004310]<br>0xFFFFFFFF4AFB0CCB|- rs2 : x0<br> - rs2_val == 0<br>                                                                                                                                                          |[0x80000830]:xnor t6, t5, zero<br> [0x80000834]:sd t6, 48(t2)<br>   |
|  34|[0x80004318]<br>0x0000000000000000|- rd : x0<br> - rs2_val == 18446744071562067967<br>                                                                                                                                        |[0x80000854]:xnor zero, t6, t5<br> [0x80000858]:sd zero, 56(t2)<br> |
|  35|[0x80004320]<br>0x00000000F504F334|- rs2_val == 18446744072635809791<br>                                                                                                                                                      |[0x80000874]:xnor t6, t5, t4<br> [0x80000878]:sd t6, 64(t2)<br>     |
|  36|[0x80004328]<br>0x000000009504F334|- rs2_val == 18446744073172680703<br>                                                                                                                                                      |[0x80000894]:xnor t6, t5, t4<br> [0x80000898]:sd t6, 72(t2)<br>     |
|  37|[0x80004330]<br>0x00000000A504F334|- rs2_val == 18446744073441116159<br>                                                                                                                                                      |[0x800008b4]:xnor t6, t5, t4<br> [0x800008b8]:sd t6, 80(t2)<br>     |
|  38|[0x80004338]<br>0x00000000BD04F334|- rs2_val == 18446744073575333887<br>                                                                                                                                                      |[0x800008d4]:xnor t6, t5, t4<br> [0x800008d8]:sd t6, 88(t2)<br>     |
|  39|[0x80004340]<br>0x00000000B104F334|- rs2_val == 18446744073642442751<br>                                                                                                                                                      |[0x800008f4]:xnor t6, t5, t4<br> [0x800008f8]:sd t6, 96(t2)<br>     |
|  40|[0x80004348]<br>0x00000000B704F334|- rs2_val == 18446744073675997183<br>                                                                                                                                                      |[0x80000914]:xnor t6, t5, t4<br> [0x80000918]:sd t6, 104(t2)<br>    |
|  41|[0x80004350]<br>0x00000000B404F334|- rs2_val == 18446744073692774399<br>                                                                                                                                                      |[0x80000934]:xnor t6, t5, t4<br> [0x80000938]:sd t6, 112(t2)<br>    |
|  42|[0x80004358]<br>0x00000000B584F334|- rs2_val == 18446744073701163007<br>                                                                                                                                                      |[0x80000954]:xnor t6, t5, t4<br> [0x80000958]:sd t6, 120(t2)<br>    |
|  43|[0x80004360]<br>0x00000000B544F334|- rs2_val == 18446744073705357311<br>                                                                                                                                                      |[0x80000974]:xnor t6, t5, t4<br> [0x80000978]:sd t6, 128(t2)<br>    |
|  44|[0x80004368]<br>0x00000000B524F334|- rs2_val == 18446744073707454463<br>                                                                                                                                                      |[0x80000994]:xnor t6, t5, t4<br> [0x80000998]:sd t6, 136(t2)<br>    |
|  45|[0x80004370]<br>0x00000000B514F334|- rs2_val == 18446744073708503039<br>                                                                                                                                                      |[0x800009b4]:xnor t6, t5, t4<br> [0x800009b8]:sd t6, 144(t2)<br>    |
|  46|[0x80004378]<br>0x00000000B50CF334|- rs2_val == 18446744073709027327<br>                                                                                                                                                      |[0x800009d4]:xnor t6, t5, t4<br> [0x800009d8]:sd t6, 152(t2)<br>    |
|  47|[0x80004380]<br>0x00000000B500F334|- rs2_val == 18446744073709289471<br>                                                                                                                                                      |[0x800009f4]:xnor t6, t5, t4<br> [0x800009f8]:sd t6, 160(t2)<br>    |
|  48|[0x80004388]<br>0x00000000B506F334|- rs2_val == 18446744073709420543<br>                                                                                                                                                      |[0x80000a14]:xnor t6, t5, t4<br> [0x80000a18]:sd t6, 168(t2)<br>    |
|  49|[0x80004390]<br>0x00000000B505F334|- rs2_val == 18446744073709486079<br>                                                                                                                                                      |[0x80000a34]:xnor t6, t5, t4<br> [0x80000a38]:sd t6, 176(t2)<br>    |
|  50|[0x80004398]<br>0x00000000B5047334|- rs2_val == 18446744073709518847<br>                                                                                                                                                      |[0x80000a54]:xnor t6, t5, t4<br> [0x80000a58]:sd t6, 184(t2)<br>    |
|  51|[0x800043a0]<br>0x00000000B504B334|- rs2_val == 18446744073709535231<br>                                                                                                                                                      |[0x80000a74]:xnor t6, t5, t4<br> [0x80000a78]:sd t6, 192(t2)<br>    |
|  52|[0x800043a8]<br>0x00000000B504D334|- rs2_val == 18446744073709543423<br>                                                                                                                                                      |[0x80000a94]:xnor t6, t5, t4<br> [0x80000a98]:sd t6, 200(t2)<br>    |
|  53|[0x800043b0]<br>0x00000000B504E334|- rs2_val == 18446744073709547519<br>                                                                                                                                                      |[0x80000ab4]:xnor t6, t5, t4<br> [0x80000ab8]:sd t6, 208(t2)<br>    |
|  54|[0x800043b8]<br>0x00000000B504FB34|- rs2_val == 18446744073709549567<br>                                                                                                                                                      |[0x80000ad4]:xnor t6, t5, t4<br> [0x80000ad8]:sd t6, 216(t2)<br>    |
|  55|[0x800043c0]<br>0x00000000B504F734|- rs2_val == 18446744073709550591<br>                                                                                                                                                      |[0x80000af0]:xnor t6, t5, t4<br> [0x80000af4]:sd t6, 224(t2)<br>    |
|  56|[0x800043c8]<br>0x00000000B504F134|- rs2_val == 18446744073709551103<br>                                                                                                                                                      |[0x80000b0c]:xnor t6, t5, t4<br> [0x80000b10]:sd t6, 232(t2)<br>    |
|  57|[0x800043d0]<br>0x00000000B504F234|- rs2_val == 18446744073709551359<br>                                                                                                                                                      |[0x80000b28]:xnor t6, t5, t4<br> [0x80000b2c]:sd t6, 240(t2)<br>    |
|  58|[0x800043d8]<br>0x00000000B504F3B4|- rs2_val == 18446744073709551487<br>                                                                                                                                                      |[0x80000b44]:xnor t6, t5, t4<br> [0x80000b48]:sd t6, 248(t2)<br>    |
|  59|[0x800043e0]<br>0x00000000B504F374|- rs2_val == 18446744073709551551<br>                                                                                                                                                      |[0x80000b60]:xnor t6, t5, t4<br> [0x80000b64]:sd t6, 256(t2)<br>    |
|  60|[0x800043e8]<br>0x00000000B504F314|- rs2_val == 18446744073709551583<br>                                                                                                                                                      |[0x80000b7c]:xnor t6, t5, t4<br> [0x80000b80]:sd t6, 264(t2)<br>    |
|  61|[0x800043f0]<br>0x00000000B504F324|- rs2_val == 18446744073709551599<br>                                                                                                                                                      |[0x80000b98]:xnor t6, t5, t4<br> [0x80000b9c]:sd t6, 272(t2)<br>    |
|  62|[0x800043f8]<br>0x00000000B504F33C|- rs2_val == 18446744073709551607<br>                                                                                                                                                      |[0x80000bb4]:xnor t6, t5, t4<br> [0x80000bb8]:sd t6, 280(t2)<br>    |
|  63|[0x80004400]<br>0x00000000B504F330|- rs2_val == 18446744073709551611<br>                                                                                                                                                      |[0x80000bd0]:xnor t6, t5, t4<br> [0x80000bd4]:sd t6, 288(t2)<br>    |
|  64|[0x80004408]<br>0x00000000B504F336|- rs2_val == 18446744073709551613<br>                                                                                                                                                      |[0x80000bec]:xnor t6, t5, t4<br> [0x80000bf0]:sd t6, 296(t2)<br>    |
|  65|[0x80004410]<br>0x00000000B504F335|- rs2_val == 18446744073709551614<br>                                                                                                                                                      |[0x80000c08]:xnor t6, t5, t4<br> [0x80000c0c]:sd t6, 304(t2)<br>    |
|  66|[0x80004418]<br>0x80000000B504F334|- rs1_val == 9223372036854775807<br>                                                                                                                                                       |[0x80000c2c]:xnor t6, t5, t4<br> [0x80000c30]:sd t6, 312(t2)<br>    |
|  67|[0x80004420]<br>0x40000000B504F334|- rs1_val == 13835058055282163711<br>                                                                                                                                                      |[0x80000c50]:xnor t6, t5, t4<br> [0x80000c54]:sd t6, 320(t2)<br>    |
|  68|[0x80004428]<br>0x20000000B504F334|- rs1_val == 16140901064495857663<br>                                                                                                                                                      |[0x80000c74]:xnor t6, t5, t4<br> [0x80000c78]:sd t6, 328(t2)<br>    |
|  69|[0x80004430]<br>0x10000000B504F334|- rs1_val == 17293822569102704639<br>                                                                                                                                                      |[0x80000c98]:xnor t6, t5, t4<br> [0x80000c9c]:sd t6, 336(t2)<br>    |
|  70|[0x80004438]<br>0x08000000B504F334|- rs1_val == 17870283321406128127<br>                                                                                                                                                      |[0x80000cbc]:xnor t6, t5, t4<br> [0x80000cc0]:sd t6, 344(t2)<br>    |
|  71|[0x80004440]<br>0x04000000B504F334|- rs1_val == 18158513697557839871<br>                                                                                                                                                      |[0x80000ce0]:xnor t6, t5, t4<br> [0x80000ce4]:sd t6, 352(t2)<br>    |
|  72|[0x80004448]<br>0x02000000B504F334|- rs1_val == 18302628885633695743<br>                                                                                                                                                      |[0x80000d04]:xnor t6, t5, t4<br> [0x80000d08]:sd t6, 360(t2)<br>    |
|  73|[0x80004450]<br>0x01000000B504F334|- rs1_val == 18374686479671623679<br>                                                                                                                                                      |[0x80000d28]:xnor t6, t5, t4<br> [0x80000d2c]:sd t6, 368(t2)<br>    |
|  74|[0x80004458]<br>0x00800000B504F334|- rs1_val == 18410715276690587647<br>                                                                                                                                                      |[0x80000d4c]:xnor t6, t5, t4<br> [0x80000d50]:sd t6, 376(t2)<br>    |
|  75|[0x80004460]<br>0x00400000B504F334|- rs1_val == 18428729675200069631<br>                                                                                                                                                      |[0x80000d70]:xnor t6, t5, t4<br> [0x80000d74]:sd t6, 384(t2)<br>    |
|  76|[0x80004468]<br>0x00200000B504F334|- rs1_val == 18437736874454810623<br>                                                                                                                                                      |[0x80000d94]:xnor t6, t5, t4<br> [0x80000d98]:sd t6, 392(t2)<br>    |
|  77|[0x80004470]<br>0x00100000B504F334|- rs1_val == 18442240474082181119<br>                                                                                                                                                      |[0x80000db8]:xnor t6, t5, t4<br> [0x80000dbc]:sd t6, 400(t2)<br>    |
|  78|[0x80004478]<br>0x00080000B504F334|- rs1_val == 18444492273895866367<br>                                                                                                                                                      |[0x80000ddc]:xnor t6, t5, t4<br> [0x80000de0]:sd t6, 408(t2)<br>    |
|  79|[0x80004480]<br>0x00040000B504F334|- rs1_val == 18445618173802708991<br>                                                                                                                                                      |[0x80000e00]:xnor t6, t5, t4<br> [0x80000e04]:sd t6, 416(t2)<br>    |
|  80|[0x80004488]<br>0x00020000B504F334|- rs1_val == 18446181123756130303<br>                                                                                                                                                      |[0x80000e24]:xnor t6, t5, t4<br> [0x80000e28]:sd t6, 424(t2)<br>    |
|  81|[0x80004490]<br>0x00010000B504F334|- rs1_val == 18446462598732840959<br>                                                                                                                                                      |[0x80000e48]:xnor t6, t5, t4<br> [0x80000e4c]:sd t6, 432(t2)<br>    |
|  82|[0x80004498]<br>0x00008000B504F334|- rs1_val == 18446603336221196287<br>                                                                                                                                                      |[0x80000e6c]:xnor t6, t5, t4<br> [0x80000e70]:sd t6, 440(t2)<br>    |
|  83|[0x800044a0]<br>0x00004000B504F334|- rs1_val == 18446673704965373951<br>                                                                                                                                                      |[0x80000e90]:xnor t6, t5, t4<br> [0x80000e94]:sd t6, 448(t2)<br>    |
|  84|[0x800044a8]<br>0x00002000B504F334|- rs1_val == 18446708889337462783<br>                                                                                                                                                      |[0x80000eb4]:xnor t6, t5, t4<br> [0x80000eb8]:sd t6, 456(t2)<br>    |
|  85|[0x800044b0]<br>0x00001000B504F334|- rs1_val == 18446726481523507199<br>                                                                                                                                                      |[0x80000ed8]:xnor t6, t5, t4<br> [0x80000edc]:sd t6, 464(t2)<br>    |
|  86|[0x800044b8]<br>0x00000800B504F334|- rs1_val == 18446735277616529407<br>                                                                                                                                                      |[0x80000efc]:xnor t6, t5, t4<br> [0x80000f00]:sd t6, 472(t2)<br>    |
|  87|[0x800044c0]<br>0x00000400B504F334|- rs1_val == 18446739675663040511<br>                                                                                                                                                      |[0x80000f20]:xnor t6, t5, t4<br> [0x80000f24]:sd t6, 480(t2)<br>    |
|  88|[0x800044c8]<br>0x00000200B504F334|- rs1_val == 18446741874686296063<br>                                                                                                                                                      |[0x80000f44]:xnor t6, t5, t4<br> [0x80000f48]:sd t6, 488(t2)<br>    |
|  89|[0x800044d0]<br>0x00000100B504F334|- rs1_val == 18446742974197923839<br>                                                                                                                                                      |[0x80000f68]:xnor t6, t5, t4<br> [0x80000f6c]:sd t6, 496(t2)<br>    |
|  90|[0x800044d8]<br>0x00000080B504F334|- rs1_val == 18446743523953737727<br>                                                                                                                                                      |[0x80000f8c]:xnor t6, t5, t4<br> [0x80000f90]:sd t6, 504(t2)<br>    |
|  91|[0x800044e0]<br>0x00000040B504F334|- rs1_val == 18446743798831644671<br>                                                                                                                                                      |[0x80000fb0]:xnor t6, t5, t4<br> [0x80000fb4]:sd t6, 512(t2)<br>    |
|  92|[0x800044e8]<br>0x00000020B504F334|- rs1_val == 18446743936270598143<br>                                                                                                                                                      |[0x80000fd4]:xnor t6, t5, t4<br> [0x80000fd8]:sd t6, 520(t2)<br>    |
|  93|[0x800044f0]<br>0x00000010B504F334|- rs1_val == 18446744004990074879<br>                                                                                                                                                      |[0x80000ff8]:xnor t6, t5, t4<br> [0x80000ffc]:sd t6, 528(t2)<br>    |
|  94|[0x800044f8]<br>0x00000008B504F334|- rs1_val == 18446744039349813247<br>                                                                                                                                                      |[0x8000101c]:xnor t6, t5, t4<br> [0x80001020]:sd t6, 536(t2)<br>    |
|  95|[0x80004500]<br>0x00000004B504F334|- rs1_val == 18446744056529682431<br>                                                                                                                                                      |[0x80001040]:xnor t6, t5, t4<br> [0x80001044]:sd t6, 544(t2)<br>    |
|  96|[0x80004508]<br>0x00000002B504F334|- rs1_val == 18446744065119617023<br>                                                                                                                                                      |[0x80001064]:xnor t6, t5, t4<br> [0x80001068]:sd t6, 552(t2)<br>    |
|  97|[0x80004510]<br>0x00000001B504F334|- rs1_val == 18446744069414584319<br>                                                                                                                                                      |[0x80001088]:xnor t6, t5, t4<br> [0x8000108c]:sd t6, 560(t2)<br>    |
|  98|[0x80004518]<br>0x000000003504F334|- rs1_val == 18446744071562067967<br>                                                                                                                                                      |[0x800010ac]:xnor t6, t5, t4<br> [0x800010b0]:sd t6, 568(t2)<br>    |
|  99|[0x80004520]<br>0x00000000F504F334|- rs1_val == 18446744072635809791<br>                                                                                                                                                      |[0x800010cc]:xnor t6, t5, t4<br> [0x800010d0]:sd t6, 576(t2)<br>    |
| 100|[0x80004528]<br>0x000000009504F334|- rs1_val == 18446744073172680703<br>                                                                                                                                                      |[0x800010ec]:xnor t6, t5, t4<br> [0x800010f0]:sd t6, 584(t2)<br>    |
| 101|[0x80004530]<br>0x00000000A504F334|- rs1_val == 18446744073441116159<br>                                                                                                                                                      |[0x8000110c]:xnor t6, t5, t4<br> [0x80001110]:sd t6, 592(t2)<br>    |
| 102|[0x80004538]<br>0x00000000BD04F334|- rs1_val == 18446744073575333887<br>                                                                                                                                                      |[0x8000112c]:xnor t6, t5, t4<br> [0x80001130]:sd t6, 600(t2)<br>    |
| 103|[0x80004540]<br>0x00000000B104F334|- rs1_val == 18446744073642442751<br>                                                                                                                                                      |[0x8000114c]:xnor t6, t5, t4<br> [0x80001150]:sd t6, 608(t2)<br>    |
| 104|[0x80004548]<br>0x00000000B704F334|- rs1_val == 18446744073675997183<br>                                                                                                                                                      |[0x8000116c]:xnor t6, t5, t4<br> [0x80001170]:sd t6, 616(t2)<br>    |
| 105|[0x80004550]<br>0x00000000B404F334|- rs1_val == 18446744073692774399<br>                                                                                                                                                      |[0x8000118c]:xnor t6, t5, t4<br> [0x80001190]:sd t6, 624(t2)<br>    |
| 106|[0x80004558]<br>0x00000000B584F334|- rs1_val == 18446744073701163007<br>                                                                                                                                                      |[0x800011ac]:xnor t6, t5, t4<br> [0x800011b0]:sd t6, 632(t2)<br>    |
| 107|[0x80004560]<br>0x00000000B544F334|- rs1_val == 18446744073705357311<br>                                                                                                                                                      |[0x800011cc]:xnor t6, t5, t4<br> [0x800011d0]:sd t6, 640(t2)<br>    |
| 108|[0x80004568]<br>0x00000000B524F334|- rs1_val == 18446744073707454463<br>                                                                                                                                                      |[0x800011ec]:xnor t6, t5, t4<br> [0x800011f0]:sd t6, 648(t2)<br>    |
| 109|[0x80004570]<br>0x00000000B514F334|- rs1_val == 18446744073708503039<br>                                                                                                                                                      |[0x8000120c]:xnor t6, t5, t4<br> [0x80001210]:sd t6, 656(t2)<br>    |
| 110|[0x80004578]<br>0x00000000B50CF334|- rs1_val == 18446744073709027327<br>                                                                                                                                                      |[0x8000122c]:xnor t6, t5, t4<br> [0x80001230]:sd t6, 664(t2)<br>    |
| 111|[0x80004580]<br>0x00000000B500F334|- rs1_val == 18446744073709289471<br>                                                                                                                                                      |[0x8000124c]:xnor t6, t5, t4<br> [0x80001250]:sd t6, 672(t2)<br>    |
| 112|[0x80004588]<br>0x00000000B506F334|- rs1_val == 18446744073709420543<br>                                                                                                                                                      |[0x8000126c]:xnor t6, t5, t4<br> [0x80001270]:sd t6, 680(t2)<br>    |
| 113|[0x80004590]<br>0x00000000B505F334|- rs1_val == 18446744073709486079<br>                                                                                                                                                      |[0x8000128c]:xnor t6, t5, t4<br> [0x80001290]:sd t6, 688(t2)<br>    |
| 114|[0x80004598]<br>0x00000000B5047334|- rs1_val == 18446744073709518847<br>                                                                                                                                                      |[0x800012ac]:xnor t6, t5, t4<br> [0x800012b0]:sd t6, 696(t2)<br>    |
| 115|[0x800045a0]<br>0x00000000B504B334|- rs1_val == 18446744073709535231<br>                                                                                                                                                      |[0x800012cc]:xnor t6, t5, t4<br> [0x800012d0]:sd t6, 704(t2)<br>    |
| 116|[0x800045a8]<br>0x00000000B504D334|- rs1_val == 18446744073709543423<br>                                                                                                                                                      |[0x800012ec]:xnor t6, t5, t4<br> [0x800012f0]:sd t6, 712(t2)<br>    |
| 117|[0x800045b0]<br>0x00000000B504E334|- rs1_val == 18446744073709547519<br>                                                                                                                                                      |[0x8000130c]:xnor t6, t5, t4<br> [0x80001310]:sd t6, 720(t2)<br>    |
| 118|[0x800045b8]<br>0x00000000B504FB34|- rs1_val == 18446744073709549567<br>                                                                                                                                                      |[0x8000132c]:xnor t6, t5, t4<br> [0x80001330]:sd t6, 728(t2)<br>    |
| 119|[0x800045c0]<br>0x00000000B504F734|- rs1_val == 18446744073709550591<br>                                                                                                                                                      |[0x80001348]:xnor t6, t5, t4<br> [0x8000134c]:sd t6, 736(t2)<br>    |
| 120|[0x800045c8]<br>0x00000000B504F134|- rs1_val == 18446744073709551103<br>                                                                                                                                                      |[0x80001364]:xnor t6, t5, t4<br> [0x80001368]:sd t6, 744(t2)<br>    |
| 121|[0x800045d0]<br>0x00000000B504F234|- rs1_val == 18446744073709551359<br>                                                                                                                                                      |[0x80001380]:xnor t6, t5, t4<br> [0x80001384]:sd t6, 752(t2)<br>    |
| 122|[0x800045d8]<br>0x00000000B504F3B4|- rs1_val == 18446744073709551487<br>                                                                                                                                                      |[0x8000139c]:xnor t6, t5, t4<br> [0x800013a0]:sd t6, 760(t2)<br>    |
| 123|[0x800045e0]<br>0x00000000B504F374|- rs1_val == 18446744073709551551<br>                                                                                                                                                      |[0x800013b8]:xnor t6, t5, t4<br> [0x800013bc]:sd t6, 768(t2)<br>    |
| 124|[0x800045e8]<br>0x00000000B504F314|- rs1_val == 18446744073709551583<br>                                                                                                                                                      |[0x800013d4]:xnor t6, t5, t4<br> [0x800013d8]:sd t6, 776(t2)<br>    |
| 125|[0x800045f0]<br>0x00000000B504F324|- rs1_val == 18446744073709551599<br>                                                                                                                                                      |[0x800013f0]:xnor t6, t5, t4<br> [0x800013f4]:sd t6, 784(t2)<br>    |
| 126|[0x800045f8]<br>0x00000000B504F33C|- rs1_val == 18446744073709551607<br>                                                                                                                                                      |[0x8000140c]:xnor t6, t5, t4<br> [0x80001410]:sd t6, 792(t2)<br>    |
| 127|[0x80004600]<br>0x00000000B504F330|- rs1_val == 18446744073709551611<br>                                                                                                                                                      |[0x80001428]:xnor t6, t5, t4<br> [0x8000142c]:sd t6, 800(t2)<br>    |
| 128|[0x80004608]<br>0x00000000B504F336|- rs1_val == 18446744073709551613<br>                                                                                                                                                      |[0x80001444]:xnor t6, t5, t4<br> [0x80001448]:sd t6, 808(t2)<br>    |
| 129|[0x80004610]<br>0x00000000B504F335|- rs1_val == 18446744073709551614<br>                                                                                                                                                      |[0x80001460]:xnor t6, t5, t4<br> [0x80001464]:sd t6, 816(t2)<br>    |
| 130|[0x80004618]<br>0x7FFFFFFF4AFB0CCB|- rs2_val == 9223372036854775808<br>                                                                                                                                                       |[0x80001480]:xnor t6, t5, t4<br> [0x80001484]:sd t6, 824(t2)<br>    |
| 131|[0x80004620]<br>0xBFFFFFFF4AFB0CCB|- rs2_val == 4611686018427387904<br>                                                                                                                                                       |[0x800014a0]:xnor t6, t5, t4<br> [0x800014a4]:sd t6, 832(t2)<br>    |
| 132|[0x80004628]<br>0xDFFFFFFF4AFB0CCB|- rs2_val == 2305843009213693952<br>                                                                                                                                                       |[0x800014c0]:xnor t6, t5, t4<br> [0x800014c4]:sd t6, 840(t2)<br>    |
| 133|[0x80004630]<br>0xEFFFFFFF4AFB0CCB|- rs2_val == 1152921504606846976<br>                                                                                                                                                       |[0x800014e0]:xnor t6, t5, t4<br> [0x800014e4]:sd t6, 848(t2)<br>    |
| 134|[0x80004638]<br>0xF7FFFFFF4AFB0CCB|- rs2_val == 576460752303423488<br>                                                                                                                                                        |[0x80001500]:xnor t6, t5, t4<br> [0x80001504]:sd t6, 856(t2)<br>    |
| 135|[0x80004640]<br>0xFBFFFFFF4AFB0CCB|- rs2_val == 288230376151711744<br>                                                                                                                                                        |[0x80001520]:xnor t6, t5, t4<br> [0x80001524]:sd t6, 864(t2)<br>    |
| 136|[0x80004648]<br>0xFDFFFFFF4AFB0CCB|- rs2_val == 144115188075855872<br>                                                                                                                                                        |[0x80001540]:xnor t6, t5, t4<br> [0x80001544]:sd t6, 872(t2)<br>    |
| 137|[0x80004650]<br>0xFEFFFFFF4AFB0CCB|- rs2_val == 72057594037927936<br>                                                                                                                                                         |[0x80001560]:xnor t6, t5, t4<br> [0x80001564]:sd t6, 880(t2)<br>    |
| 138|[0x80004658]<br>0xFF7FFFFF4AFB0CCB|- rs2_val == 36028797018963968<br>                                                                                                                                                         |[0x80001580]:xnor t6, t5, t4<br> [0x80001584]:sd t6, 888(t2)<br>    |
| 139|[0x80004660]<br>0xFFBFFFFF4AFB0CCB|- rs2_val == 18014398509481984<br>                                                                                                                                                         |[0x800015a0]:xnor t6, t5, t4<br> [0x800015a4]:sd t6, 896(t2)<br>    |
| 140|[0x80004668]<br>0xFFFFFFFF4AFB0CCA|- rs1_val == 1<br>                                                                                                                                                                         |[0x800015bc]:xnor t6, t5, t4<br> [0x800015c0]:sd t6, 904(t2)<br>    |
| 141|[0x80004670]<br>0x55555555E051A661|- rs2_val == 12297829382473034410<br>                                                                                                                                                      |[0x800015f4]:xnor t6, t5, t4<br> [0x800015f8]:sd t6, 912(t2)<br>    |
| 142|[0x80004678]<br>0xAAAAAAAA1FAE599E|- rs2_val == 6148914691236517205<br>                                                                                                                                                       |[0x8000162c]:xnor t6, t5, t4<br> [0x80001630]:sd t6, 920(t2)<br>    |
| 143|[0x80004680]<br>0x55555555E051A661|- rs1_val == 12297829382473034410<br>                                                                                                                                                      |[0x80001664]:xnor t6, t5, t4<br> [0x80001668]:sd t6, 928(t2)<br>    |
| 144|[0x80004688]<br>0xAAAAAAAA1FAE599E|- rs1_val == 6148914691236517205<br>                                                                                                                                                       |[0x8000169c]:xnor t6, t5, t4<br> [0x800016a0]:sd t6, 936(t2)<br>    |
| 145|[0x80004690]<br>0x00000000B504F334|- rs1_val == (2**(xlen)-1)<br>                                                                                                                                                             |[0x800016b8]:xnor t6, t5, t4<br> [0x800016bc]:sd t6, 944(t2)<br>    |
| 146|[0x800046a8]<br>0x00000000B504F334|- rs2_val == (2**(xlen)-1)<br>                                                                                                                                                             |[0x80001718]:xnor t6, t5, t4<br> [0x8000171c]:sd t6, 968(t2)<br>    |
| 147|[0x800046b8]<br>0xFFDFFFFF4AFB0CCB|- rs2_val == 9007199254740992<br>                                                                                                                                                          |[0x80001754]:xnor t6, t5, t4<br> [0x80001758]:sd t6, 984(t2)<br>    |
| 148|[0x800046c0]<br>0xFFEFFFFF4AFB0CCB|- rs2_val == 4503599627370496<br>                                                                                                                                                          |[0x80001774]:xnor t6, t5, t4<br> [0x80001778]:sd t6, 992(t2)<br>    |
| 149|[0x800046c8]<br>0xFFF7FFFF4AFB0CCB|- rs2_val == 2251799813685248<br>                                                                                                                                                          |[0x80001794]:xnor t6, t5, t4<br> [0x80001798]:sd t6, 1000(t2)<br>   |
| 150|[0x800046d0]<br>0xFFFBFFFF4AFB0CCB|- rs2_val == 1125899906842624<br>                                                                                                                                                          |[0x800017b4]:xnor t6, t5, t4<br> [0x800017b8]:sd t6, 1008(t2)<br>   |
| 151|[0x800046d8]<br>0xFFFDFFFF4AFB0CCB|- rs2_val == 562949953421312<br>                                                                                                                                                           |[0x800017d4]:xnor t6, t5, t4<br> [0x800017d8]:sd t6, 1016(t2)<br>   |
| 152|[0x800046e0]<br>0xFFFEFFFF4AFB0CCB|- rs2_val == 281474976710656<br>                                                                                                                                                           |[0x800017f4]:xnor t6, t5, t4<br> [0x800017f8]:sd t6, 1024(t2)<br>   |
| 153|[0x800046e8]<br>0xFFFF7FFF4AFB0CCB|- rs2_val == 140737488355328<br>                                                                                                                                                           |[0x80001814]:xnor t6, t5, t4<br> [0x80001818]:sd t6, 1032(t2)<br>   |
| 154|[0x800046f0]<br>0xFFFFBFFF4AFB0CCB|- rs2_val == 70368744177664<br>                                                                                                                                                            |[0x80001834]:xnor t6, t5, t4<br> [0x80001838]:sd t6, 1040(t2)<br>   |
| 155|[0x800046f8]<br>0xFFFFDFFF4AFB0CCB|- rs2_val == 35184372088832<br>                                                                                                                                                            |[0x80001854]:xnor t6, t5, t4<br> [0x80001858]:sd t6, 1048(t2)<br>   |
| 156|[0x80004700]<br>0xFFFFEFFF4AFB0CCB|- rs2_val == 17592186044416<br>                                                                                                                                                            |[0x80001874]:xnor t6, t5, t4<br> [0x80001878]:sd t6, 1056(t2)<br>   |
| 157|[0x80004708]<br>0xFFFFF7FF4AFB0CCB|- rs2_val == 8796093022208<br>                                                                                                                                                             |[0x80001894]:xnor t6, t5, t4<br> [0x80001898]:sd t6, 1064(t2)<br>   |
| 158|[0x80004710]<br>0xFFFFFBFF4AFB0CCB|- rs2_val == 4398046511104<br>                                                                                                                                                             |[0x800018b4]:xnor t6, t5, t4<br> [0x800018b8]:sd t6, 1072(t2)<br>   |
| 159|[0x80004718]<br>0xFFFFFDFF4AFB0CCB|- rs2_val == 2199023255552<br>                                                                                                                                                             |[0x800018d4]:xnor t6, t5, t4<br> [0x800018d8]:sd t6, 1080(t2)<br>   |
| 160|[0x80004720]<br>0xFFFFFEFF4AFB0CCB|- rs2_val == 1099511627776<br>                                                                                                                                                             |[0x800018f4]:xnor t6, t5, t4<br> [0x800018f8]:sd t6, 1088(t2)<br>   |
| 161|[0x80004728]<br>0xFFFFFF7F4AFB0CCB|- rs2_val == 549755813888<br>                                                                                                                                                              |[0x80001914]:xnor t6, t5, t4<br> [0x80001918]:sd t6, 1096(t2)<br>   |
| 162|[0x80004730]<br>0xFFFFFFBF4AFB0CCB|- rs2_val == 274877906944<br>                                                                                                                                                              |[0x80001934]:xnor t6, t5, t4<br> [0x80001938]:sd t6, 1104(t2)<br>   |
| 163|[0x80004738]<br>0xFFFFFFDF4AFB0CCB|- rs2_val == 137438953472<br>                                                                                                                                                              |[0x80001954]:xnor t6, t5, t4<br> [0x80001958]:sd t6, 1112(t2)<br>   |
| 164|[0x80004740]<br>0xFFFFFFEF4AFB0CCB|- rs2_val == 68719476736<br>                                                                                                                                                               |[0x80001974]:xnor t6, t5, t4<br> [0x80001978]:sd t6, 1120(t2)<br>   |
| 165|[0x80004748]<br>0xFFFFFFF74AFB0CCB|- rs2_val == 34359738368<br>                                                                                                                                                               |[0x80001994]:xnor t6, t5, t4<br> [0x80001998]:sd t6, 1128(t2)<br>   |
| 166|[0x80004750]<br>0xFFFFFFFB4AFB0CCB|- rs2_val == 17179869184<br>                                                                                                                                                               |[0x800019b4]:xnor t6, t5, t4<br> [0x800019b8]:sd t6, 1136(t2)<br>   |
| 167|[0x80004758]<br>0xFFFFFFFD4AFB0CCB|- rs2_val == 8589934592<br>                                                                                                                                                                |[0x800019d4]:xnor t6, t5, t4<br> [0x800019d8]:sd t6, 1144(t2)<br>   |
| 168|[0x80004760]<br>0xFFFFFFFE4AFB0CCB|- rs2_val == 4294967296<br>                                                                                                                                                                |[0x800019f4]:xnor t6, t5, t4<br> [0x800019f8]:sd t6, 1152(t2)<br>   |
| 169|[0x80004768]<br>0xFFFFFFFFCAFB0CCB|- rs2_val == 2147483648<br>                                                                                                                                                                |[0x80001a14]:xnor t6, t5, t4<br> [0x80001a18]:sd t6, 1160(t2)<br>   |
| 170|[0x80004770]<br>0xFFFFFFFF0AFB0CCB|- rs2_val == 1073741824<br>                                                                                                                                                                |[0x80001a30]:xnor t6, t5, t4<br> [0x80001a34]:sd t6, 1168(t2)<br>   |
| 171|[0x80004778]<br>0xFFFFFFFF6AFB0CCB|- rs2_val == 536870912<br>                                                                                                                                                                 |[0x80001a4c]:xnor t6, t5, t4<br> [0x80001a50]:sd t6, 1176(t2)<br>   |
| 172|[0x80004780]<br>0xFFFFFFFF5AFB0CCB|- rs2_val == 268435456<br>                                                                                                                                                                 |[0x80001a68]:xnor t6, t5, t4<br> [0x80001a6c]:sd t6, 1184(t2)<br>   |
| 173|[0x80004788]<br>0xFFFFFFFF42FB0CCB|- rs2_val == 134217728<br>                                                                                                                                                                 |[0x80001a84]:xnor t6, t5, t4<br> [0x80001a88]:sd t6, 1192(t2)<br>   |
| 174|[0x80004790]<br>0xFFFFFFFF4EFB0CCB|- rs2_val == 67108864<br>                                                                                                                                                                  |[0x80001aa0]:xnor t6, t5, t4<br> [0x80001aa4]:sd t6, 1200(t2)<br>   |
| 175|[0x80004798]<br>0xFFFFFFFF48FB0CCB|- rs2_val == 33554432<br>                                                                                                                                                                  |[0x80001abc]:xnor t6, t5, t4<br> [0x80001ac0]:sd t6, 1208(t2)<br>   |
| 176|[0x800047a0]<br>0xFFFFFFFF4BFB0CCB|- rs2_val == 16777216<br>                                                                                                                                                                  |[0x80001ad8]:xnor t6, t5, t4<br> [0x80001adc]:sd t6, 1216(t2)<br>   |
| 177|[0x800047a8]<br>0xFFFFFFFF4A7B0CCB|- rs2_val == 8388608<br>                                                                                                                                                                   |[0x80001af4]:xnor t6, t5, t4<br> [0x80001af8]:sd t6, 1224(t2)<br>   |
| 178|[0x800047b0]<br>0xFFFFFFFF4ABB0CCB|- rs2_val == 4194304<br>                                                                                                                                                                   |[0x80001b10]:xnor t6, t5, t4<br> [0x80001b14]:sd t6, 1232(t2)<br>   |
| 179|[0x800047b8]<br>0xFFFFFFFF4ADB0CCB|- rs2_val == 2097152<br>                                                                                                                                                                   |[0x80001b2c]:xnor t6, t5, t4<br> [0x80001b30]:sd t6, 1240(t2)<br>   |
| 180|[0x800047c0]<br>0xFFFFFFFF4AEB0CCB|- rs2_val == 1048576<br>                                                                                                                                                                   |[0x80001b48]:xnor t6, t5, t4<br> [0x80001b4c]:sd t6, 1248(t2)<br>   |
| 181|[0x800047c8]<br>0xFFFFFFFF4AF30CCB|- rs2_val == 524288<br>                                                                                                                                                                    |[0x80001b64]:xnor t6, t5, t4<br> [0x80001b68]:sd t6, 1256(t2)<br>   |
| 182|[0x800047d0]<br>0xFFFFFFFF4AFF0CCB|- rs2_val == 262144<br>                                                                                                                                                                    |[0x80001b80]:xnor t6, t5, t4<br> [0x80001b84]:sd t6, 1264(t2)<br>   |
| 183|[0x800047d8]<br>0xFFFFFFFF4AF90CCB|- rs2_val == 131072<br>                                                                                                                                                                    |[0x80001b9c]:xnor t6, t5, t4<br> [0x80001ba0]:sd t6, 1272(t2)<br>   |
| 184|[0x800047e0]<br>0xFFFFFFFF4AFA0CCB|- rs2_val == 65536<br>                                                                                                                                                                     |[0x80001bb8]:xnor t6, t5, t4<br> [0x80001bbc]:sd t6, 1280(t2)<br>   |
| 185|[0x800047e8]<br>0xFFFFFFFF4AFB8CCB|- rs2_val == 32768<br>                                                                                                                                                                     |[0x80001bd4]:xnor t6, t5, t4<br> [0x80001bd8]:sd t6, 1288(t2)<br>   |
| 186|[0x800047f0]<br>0xFFFFFFFF4AFB4CCB|- rs2_val == 16384<br>                                                                                                                                                                     |[0x80001bf0]:xnor t6, t5, t4<br> [0x80001bf4]:sd t6, 1296(t2)<br>   |
| 187|[0x800047f8]<br>0xFFFFFFFF4AFB2CCB|- rs2_val == 8192<br>                                                                                                                                                                      |[0x80001c0c]:xnor t6, t5, t4<br> [0x80001c10]:sd t6, 1304(t2)<br>   |
| 188|[0x80004800]<br>0xFFFFFFFF4AFB1CCB|- rs2_val == 4096<br>                                                                                                                                                                      |[0x80001c28]:xnor t6, t5, t4<br> [0x80001c2c]:sd t6, 1312(t2)<br>   |
| 189|[0x80004808]<br>0xFFFFFFFF4AFB04CB|- rs2_val == 2048<br>                                                                                                                                                                      |[0x80001c48]:xnor t6, t5, t4<br> [0x80001c4c]:sd t6, 1320(t2)<br>   |
| 190|[0x80004810]<br>0xFFFFFFFF4AFB08CB|- rs2_val == 1024<br>                                                                                                                                                                      |[0x80001c64]:xnor t6, t5, t4<br> [0x80001c68]:sd t6, 1328(t2)<br>   |
| 191|[0x80004818]<br>0xFFFFFFFF4AFB0ECB|- rs2_val == 512<br>                                                                                                                                                                       |[0x80001c80]:xnor t6, t5, t4<br> [0x80001c84]:sd t6, 1336(t2)<br>   |
| 192|[0x80004820]<br>0xFFFFFFFF4AFB0DCB|- rs2_val == 256<br>                                                                                                                                                                       |[0x80001c9c]:xnor t6, t5, t4<br> [0x80001ca0]:sd t6, 1344(t2)<br>   |
| 193|[0x80004828]<br>0xFFFFFFFF4AFB0C4B|- rs2_val == 128<br>                                                                                                                                                                       |[0x80001cb8]:xnor t6, t5, t4<br> [0x80001cbc]:sd t6, 1352(t2)<br>   |
| 194|[0x80004830]<br>0xFFFFFFFF4AFB0C8B|- rs2_val == 64<br>                                                                                                                                                                        |[0x80001cd4]:xnor t6, t5, t4<br> [0x80001cd8]:sd t6, 1360(t2)<br>   |
| 195|[0x80004838]<br>0xFFFFFFFF4AFB0CEB|- rs2_val == 32<br>                                                                                                                                                                        |[0x80001cf0]:xnor t6, t5, t4<br> [0x80001cf4]:sd t6, 1368(t2)<br>   |
| 196|[0x80004840]<br>0xFFFFFFFF4AFB0CDB|- rs2_val == 16<br>                                                                                                                                                                        |[0x80001d0c]:xnor t6, t5, t4<br> [0x80001d10]:sd t6, 1376(t2)<br>   |
| 197|[0x80004848]<br>0xFFFFFFFF4AFB0CC3|- rs2_val == 8<br>                                                                                                                                                                         |[0x80001d28]:xnor t6, t5, t4<br> [0x80001d2c]:sd t6, 1384(t2)<br>   |
| 198|[0x80004850]<br>0xFFFFFFFF4AFB0CCF|- rs2_val == 4<br>                                                                                                                                                                         |[0x80001d44]:xnor t6, t5, t4<br> [0x80001d48]:sd t6, 1392(t2)<br>   |
| 199|[0x80004858]<br>0xFFFFFFFF4AFB0CC9|- rs2_val == 2<br>                                                                                                                                                                         |[0x80001d60]:xnor t6, t5, t4<br> [0x80001d64]:sd t6, 1400(t2)<br>   |
| 200|[0x80004860]<br>0xFFFFFFFF4AFB0CCA|- rs2_val == 1<br>                                                                                                                                                                         |[0x80001d7c]:xnor t6, t5, t4<br> [0x80001d80]:sd t6, 1408(t2)<br>   |
| 201|[0x80004868]<br>0x7FFFFFFF4AFB0CCB|- rs1_val == 9223372036854775808<br>                                                                                                                                                       |[0x80001d9c]:xnor t6, t5, t4<br> [0x80001da0]:sd t6, 1416(t2)<br>   |
| 202|[0x80004870]<br>0xBFFFFFFF4AFB0CCB|- rs1_val == 4611686018427387904<br>                                                                                                                                                       |[0x80001dbc]:xnor t6, t5, t4<br> [0x80001dc0]:sd t6, 1424(t2)<br>   |
| 203|[0x80004878]<br>0xDFFFFFFF4AFB0CCB|- rs1_val == 2305843009213693952<br>                                                                                                                                                       |[0x80001ddc]:xnor t6, t5, t4<br> [0x80001de0]:sd t6, 1432(t2)<br>   |
| 204|[0x80004880]<br>0xEFFFFFFF4AFB0CCB|- rs1_val == 1152921504606846976<br>                                                                                                                                                       |[0x80001dfc]:xnor t6, t5, t4<br> [0x80001e00]:sd t6, 1440(t2)<br>   |
| 205|[0x80004888]<br>0xF7FFFFFF4AFB0CCB|- rs1_val == 576460752303423488<br>                                                                                                                                                        |[0x80001e1c]:xnor t6, t5, t4<br> [0x80001e20]:sd t6, 1448(t2)<br>   |
| 206|[0x80004890]<br>0xFBFFFFFF4AFB0CCB|- rs1_val == 288230376151711744<br>                                                                                                                                                        |[0x80001e3c]:xnor t6, t5, t4<br> [0x80001e40]:sd t6, 1456(t2)<br>   |
| 207|[0x80004898]<br>0xFDFFFFFF4AFB0CCB|- rs1_val == 144115188075855872<br>                                                                                                                                                        |[0x80001e5c]:xnor t6, t5, t4<br> [0x80001e60]:sd t6, 1464(t2)<br>   |
| 208|[0x800048a0]<br>0xFEFFFFFF4AFB0CCB|- rs1_val == 72057594037927936<br>                                                                                                                                                         |[0x80001e7c]:xnor t6, t5, t4<br> [0x80001e80]:sd t6, 1472(t2)<br>   |
| 209|[0x800048a8]<br>0xFF7FFFFF4AFB0CCB|- rs1_val == 36028797018963968<br>                                                                                                                                                         |[0x80001e9c]:xnor t6, t5, t4<br> [0x80001ea0]:sd t6, 1480(t2)<br>   |
| 210|[0x800048b0]<br>0xFFBFFFFF4AFB0CCB|- rs1_val == 18014398509481984<br>                                                                                                                                                         |[0x80001ebc]:xnor t6, t5, t4<br> [0x80001ec0]:sd t6, 1488(t2)<br>   |
| 211|[0x800048b8]<br>0xFFDFFFFF4AFB0CCB|- rs1_val == 9007199254740992<br>                                                                                                                                                          |[0x80001edc]:xnor t6, t5, t4<br> [0x80001ee0]:sd t6, 1496(t2)<br>   |
| 212|[0x800048c0]<br>0xFFEFFFFF4AFB0CCB|- rs1_val == 4503599627370496<br>                                                                                                                                                          |[0x80001efc]:xnor t6, t5, t4<br> [0x80001f00]:sd t6, 1504(t2)<br>   |
| 213|[0x800048c8]<br>0xFFF7FFFF4AFB0CCB|- rs1_val == 2251799813685248<br>                                                                                                                                                          |[0x80001f1c]:xnor t6, t5, t4<br> [0x80001f20]:sd t6, 1512(t2)<br>   |
| 214|[0x800048d0]<br>0xFFFBFFFF4AFB0CCB|- rs1_val == 1125899906842624<br>                                                                                                                                                          |[0x80001f3c]:xnor t6, t5, t4<br> [0x80001f40]:sd t6, 1520(t2)<br>   |
| 215|[0x800048d8]<br>0xFFFDFFFF4AFB0CCB|- rs1_val == 562949953421312<br>                                                                                                                                                           |[0x80001f5c]:xnor t6, t5, t4<br> [0x80001f60]:sd t6, 1528(t2)<br>   |
| 216|[0x800048e0]<br>0xFFFEFFFF4AFB0CCB|- rs1_val == 281474976710656<br>                                                                                                                                                           |[0x80001f7c]:xnor t6, t5, t4<br> [0x80001f80]:sd t6, 1536(t2)<br>   |
| 217|[0x800048e8]<br>0xFFFF7FFF4AFB0CCB|- rs1_val == 140737488355328<br>                                                                                                                                                           |[0x80001f9c]:xnor t6, t5, t4<br> [0x80001fa0]:sd t6, 1544(t2)<br>   |
| 218|[0x800048f0]<br>0xFFFFBFFF4AFB0CCB|- rs1_val == 70368744177664<br>                                                                                                                                                            |[0x80001fbc]:xnor t6, t5, t4<br> [0x80001fc0]:sd t6, 1552(t2)<br>   |
| 219|[0x800048f8]<br>0xFFFFDFFF4AFB0CCB|- rs1_val == 35184372088832<br>                                                                                                                                                            |[0x80001fdc]:xnor t6, t5, t4<br> [0x80001fe0]:sd t6, 1560(t2)<br>   |
| 220|[0x80004900]<br>0xFFFFEFFF4AFB0CCB|- rs1_val == 17592186044416<br>                                                                                                                                                            |[0x80001ffc]:xnor t6, t5, t4<br> [0x80002000]:sd t6, 1568(t2)<br>   |
| 221|[0x80004908]<br>0xFFFFF7FF4AFB0CCB|- rs1_val == 8796093022208<br>                                                                                                                                                             |[0x8000201c]:xnor t6, t5, t4<br> [0x80002020]:sd t6, 1576(t2)<br>   |
| 222|[0x80004910]<br>0xFFFFFBFF4AFB0CCB|- rs1_val == 4398046511104<br>                                                                                                                                                             |[0x8000203c]:xnor t6, t5, t4<br> [0x80002040]:sd t6, 1584(t2)<br>   |
| 223|[0x80004918]<br>0xFFFFFDFF4AFB0CCB|- rs1_val == 2199023255552<br>                                                                                                                                                             |[0x8000205c]:xnor t6, t5, t4<br> [0x80002060]:sd t6, 1592(t2)<br>   |
| 224|[0x80004920]<br>0xFFFFFEFF4AFB0CCB|- rs1_val == 1099511627776<br>                                                                                                                                                             |[0x8000207c]:xnor t6, t5, t4<br> [0x80002080]:sd t6, 1600(t2)<br>   |
| 225|[0x80004928]<br>0xFFFFFF7F4AFB0CCB|- rs1_val == 549755813888<br>                                                                                                                                                              |[0x8000209c]:xnor t6, t5, t4<br> [0x800020a0]:sd t6, 1608(t2)<br>   |
| 226|[0x80004930]<br>0xFFFFFFBF4AFB0CCB|- rs1_val == 274877906944<br>                                                                                                                                                              |[0x800020bc]:xnor t6, t5, t4<br> [0x800020c0]:sd t6, 1616(t2)<br>   |
| 227|[0x80004938]<br>0xFFFFFFDF4AFB0CCB|- rs1_val == 137438953472<br>                                                                                                                                                              |[0x800020dc]:xnor t6, t5, t4<br> [0x800020e0]:sd t6, 1624(t2)<br>   |
| 228|[0x80004940]<br>0xFFFFFFEF4AFB0CCB|- rs1_val == 68719476736<br>                                                                                                                                                               |[0x800020fc]:xnor t6, t5, t4<br> [0x80002100]:sd t6, 1632(t2)<br>   |
| 229|[0x80004948]<br>0xFFFFFFF74AFB0CCB|- rs1_val == 34359738368<br>                                                                                                                                                               |[0x8000211c]:xnor t6, t5, t4<br> [0x80002120]:sd t6, 1640(t2)<br>   |
| 230|[0x80004950]<br>0xFFFFFFFB4AFB0CCB|- rs1_val == 17179869184<br>                                                                                                                                                               |[0x8000213c]:xnor t6, t5, t4<br> [0x80002140]:sd t6, 1648(t2)<br>   |
| 231|[0x80004958]<br>0xFFFFFFFD4AFB0CCB|- rs1_val == 8589934592<br>                                                                                                                                                                |[0x8000215c]:xnor t6, t5, t4<br> [0x80002160]:sd t6, 1656(t2)<br>   |
| 232|[0x80004960]<br>0xFFFFFFFE4AFB0CCB|- rs1_val == 4294967296<br>                                                                                                                                                                |[0x8000217c]:xnor t6, t5, t4<br> [0x80002180]:sd t6, 1664(t2)<br>   |
| 233|[0x80004968]<br>0xFFFFFFFFCAFB0CCB|- rs1_val == 2147483648<br>                                                                                                                                                                |[0x8000219c]:xnor t6, t5, t4<br> [0x800021a0]:sd t6, 1672(t2)<br>   |
| 234|[0x80004970]<br>0xFFFFFFFF0AFB0CCB|- rs1_val == 1073741824<br>                                                                                                                                                                |[0x800021b8]:xnor t6, t5, t4<br> [0x800021bc]:sd t6, 1680(t2)<br>   |
| 235|[0x80004978]<br>0xFFFFFFFF6AFB0CCB|- rs1_val == 536870912<br>                                                                                                                                                                 |[0x800021d4]:xnor t6, t5, t4<br> [0x800021d8]:sd t6, 1688(t2)<br>   |
| 236|[0x80004980]<br>0xFFFFFFFF5AFB0CCB|- rs1_val == 268435456<br>                                                                                                                                                                 |[0x800021f0]:xnor t6, t5, t4<br> [0x800021f4]:sd t6, 1696(t2)<br>   |
| 237|[0x80004988]<br>0xFFFFFFFF42FB0CCB|- rs1_val == 134217728<br>                                                                                                                                                                 |[0x8000220c]:xnor t6, t5, t4<br> [0x80002210]:sd t6, 1704(t2)<br>   |
| 238|[0x80004990]<br>0xFFFFFFFF4EFB0CCB|- rs1_val == 67108864<br>                                                                                                                                                                  |[0x80002228]:xnor t6, t5, t4<br> [0x8000222c]:sd t6, 1712(t2)<br>   |
| 239|[0x80004998]<br>0xFFFFFFFF48FB0CCB|- rs1_val == 33554432<br>                                                                                                                                                                  |[0x80002244]:xnor t6, t5, t4<br> [0x80002248]:sd t6, 1720(t2)<br>   |
| 240|[0x800049a0]<br>0xFFFFFFFF4BFB0CCB|- rs1_val == 16777216<br>                                                                                                                                                                  |[0x80002260]:xnor t6, t5, t4<br> [0x80002264]:sd t6, 1728(t2)<br>   |
| 241|[0x800049a8]<br>0xFFFFFFFF4A7B0CCB|- rs1_val == 8388608<br>                                                                                                                                                                   |[0x8000227c]:xnor t6, t5, t4<br> [0x80002280]:sd t6, 1736(t2)<br>   |
| 242|[0x800049b0]<br>0xFFFFFFFF4ABB0CCB|- rs1_val == 4194304<br>                                                                                                                                                                   |[0x80002298]:xnor t6, t5, t4<br> [0x8000229c]:sd t6, 1744(t2)<br>   |
| 243|[0x800049b8]<br>0xFFFFFFFF4ADB0CCB|- rs1_val == 2097152<br>                                                                                                                                                                   |[0x800022b4]:xnor t6, t5, t4<br> [0x800022b8]:sd t6, 1752(t2)<br>   |
| 244|[0x800049c0]<br>0xFFFFFFFF4AEB0CCB|- rs1_val == 1048576<br>                                                                                                                                                                   |[0x800022d0]:xnor t6, t5, t4<br> [0x800022d4]:sd t6, 1760(t2)<br>   |
| 245|[0x800049c8]<br>0xFFFFFFFF4AF30CCB|- rs1_val == 524288<br>                                                                                                                                                                    |[0x800022ec]:xnor t6, t5, t4<br> [0x800022f0]:sd t6, 1768(t2)<br>   |
| 246|[0x800049d0]<br>0xFFFFFFFF4AFF0CCB|- rs1_val == 262144<br>                                                                                                                                                                    |[0x80002308]:xnor t6, t5, t4<br> [0x8000230c]:sd t6, 1776(t2)<br>   |
| 247|[0x800049d8]<br>0xFFFFFFFF4AF90CCB|- rs1_val == 131072<br>                                                                                                                                                                    |[0x80002324]:xnor t6, t5, t4<br> [0x80002328]:sd t6, 1784(t2)<br>   |
| 248|[0x800049e0]<br>0xFFFFFFFF4AFA0CCB|- rs1_val == 65536<br>                                                                                                                                                                     |[0x80002340]:xnor t6, t5, t4<br> [0x80002344]:sd t6, 1792(t2)<br>   |
| 249|[0x800049e8]<br>0xFFFFFFFF4AFB8CCB|- rs1_val == 32768<br>                                                                                                                                                                     |[0x8000235c]:xnor t6, t5, t4<br> [0x80002360]:sd t6, 1800(t2)<br>   |
| 250|[0x800049f0]<br>0xFFFFFFFF4AFB4CCB|- rs1_val == 16384<br>                                                                                                                                                                     |[0x80002378]:xnor t6, t5, t4<br> [0x8000237c]:sd t6, 1808(t2)<br>   |
| 251|[0x800049f8]<br>0xFFFFFFFF4AFB2CCB|- rs1_val == 8192<br>                                                                                                                                                                      |[0x80002394]:xnor t6, t5, t4<br> [0x80002398]:sd t6, 1816(t2)<br>   |
| 252|[0x80004a00]<br>0xFFFFFFFF4AFB1CCB|- rs1_val == 4096<br>                                                                                                                                                                      |[0x800023b0]:xnor t6, t5, t4<br> [0x800023b4]:sd t6, 1824(t2)<br>   |
| 253|[0x80004a08]<br>0xFFFFFFFF4AFB04CB|- rs1_val == 2048<br>                                                                                                                                                                      |[0x800023d0]:xnor t6, t5, t4<br> [0x800023d4]:sd t6, 1832(t2)<br>   |
| 254|[0x80004a10]<br>0xFFFFFFFF4AFB08CB|- rs1_val == 1024<br>                                                                                                                                                                      |[0x800023ec]:xnor t6, t5, t4<br> [0x800023f0]:sd t6, 1840(t2)<br>   |
| 255|[0x80004a18]<br>0xFFFFFFFF4AFB0ECB|- rs1_val == 512<br>                                                                                                                                                                       |[0x80002408]:xnor t6, t5, t4<br> [0x8000240c]:sd t6, 1848(t2)<br>   |
| 256|[0x80004a20]<br>0xFFFFFFFF4AFB0DCB|- rs1_val == 256<br>                                                                                                                                                                       |[0x80002424]:xnor t6, t5, t4<br> [0x80002428]:sd t6, 1856(t2)<br>   |
| 257|[0x80004a28]<br>0xFFFFFFFF4AFB0C4B|- rs1_val == 128<br>                                                                                                                                                                       |[0x80002440]:xnor t6, t5, t4<br> [0x80002444]:sd t6, 1864(t2)<br>   |
| 258|[0x80004a30]<br>0xFFFFFFFF4AFB0C8B|- rs1_val == 64<br>                                                                                                                                                                        |[0x8000245c]:xnor t6, t5, t4<br> [0x80002460]:sd t6, 1872(t2)<br>   |
| 259|[0x80004a38]<br>0xFFFFFFFF4AFB0CEB|- rs1_val == 32<br>                                                                                                                                                                        |[0x80002478]:xnor t6, t5, t4<br> [0x8000247c]:sd t6, 1880(t2)<br>   |
| 260|[0x80004a40]<br>0xFFFFFFFF4AFB0CDB|- rs1_val == 16<br>                                                                                                                                                                        |[0x80002494]:xnor t6, t5, t4<br> [0x80002498]:sd t6, 1888(t2)<br>   |
| 261|[0x80004a48]<br>0xFFFFFFFF4AFB0CC3|- rs1_val == 8<br>                                                                                                                                                                         |[0x800024b0]:xnor t6, t5, t4<br> [0x800024b4]:sd t6, 1896(t2)<br>   |
| 262|[0x80004a50]<br>0xFFFFFFFF4AFB0CCF|- rs1_val == 4<br>                                                                                                                                                                         |[0x800024cc]:xnor t6, t5, t4<br> [0x800024d0]:sd t6, 1904(t2)<br>   |
| 263|[0x80004a58]<br>0xFFFFFFFF4AFB0CC9|- rs1_val == 2<br>                                                                                                                                                                         |[0x800024e8]:xnor t6, t5, t4<br> [0x800024ec]:sd t6, 1912(t2)<br>   |
| 264|[0x80004a60]<br>0x10000000B504F334|- rs2_val == 17293822569102704639<br>                                                                                                                                                      |[0x8000250c]:xnor t6, t5, t4<br> [0x80002510]:sd t6, 1920(t2)<br>   |
| 265|[0x80004a70]<br>0x00000001B504F334|- rs2_val == 18446744069414584319<br>                                                                                                                                                      |[0x80002554]:xnor t6, t5, t4<br> [0x80002558]:sd t6, 1936(t2)<br>   |
