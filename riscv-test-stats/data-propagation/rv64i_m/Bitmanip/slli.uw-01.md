
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000f00')]      |
| SIG_REGION                | [('0x80002210', '0x80002720', '162 dwords')]      |
| COV_LABELS                | slli.uw      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/64/riscof_work/slli.uw-01.S/ref.S    |
| Total Number of coverpoints| 239     |
| Total Coverpoints Hit     | 234      |
| Total Signature Updates   | 162      |
| STAT1                     | 160      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c00]:slli.uw t6, t5, 31
      [0x80000c04]:sd t6, 744(t0)
 -- Signature Address: 0x800025d8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : slli.uw
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - rs1_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ef4]:slli.uw t6, t5, 31
      [0x80000ef8]:sd t6, 1064(t0)
 -- Signature Address: 0x80002718 Data: 0x7FFFFFFF80000000
 -- Redundant Coverpoints hit by the op
      - opcode : slli.uw
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - rs1_val == 18446744069414584319






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

|s.no|            signature             |                                                    coverpoints                                                     |                                 code                                  |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000200000|- opcode : slli.uw<br> - rs1 : x30<br> - rd : x31<br> - rs1 != rd<br> - imm_val == 21<br> - rs1_val==4294967297<br> |[0x800003a4]:slli.uw t6, t5, 21<br> [0x800003a8]:sd t6, 0(ra)<br>      |
|   2|[0x80002218]<br>0x7FFFFFFF80000000|- rs1 : x29<br> - rd : x29<br> - rs1 == rd<br> - rs1_val == 9223372036854775807<br>                                 |[0x800003b8]:slli.uw t4, t4, 31<br> [0x800003bc]:sd t4, 8(ra)<br>      |
|   3|[0x80002220]<br>0x7FFFFFFF80000000|- rs1 : x31<br> - rd : x30<br> - rs1_val == 13835058055282163711<br>                                                |[0x800003cc]:slli.uw t5, t6, 31<br> [0x800003d0]:sd t5, 16(ra)<br>     |
|   4|[0x80002228]<br>0x7FFFFFFF80000000|- rs1 : x27<br> - rd : x28<br> - rs1_val == 16140901064495857663<br>                                                |[0x800003e0]:slli.uw t3, s11, 31<br> [0x800003e4]:sd t3, 24(ra)<br>    |
|   5|[0x80002230]<br>0x7FFFFFFF80000000|- rs1 : x28<br> - rd : x27<br> - rs1_val == 17293822569102704639<br>                                                |[0x800003f4]:slli.uw s11, t3, 31<br> [0x800003f8]:sd s11, 32(ra)<br>   |
|   6|[0x80002238]<br>0x7FFFFFFF80000000|- rs1 : x25<br> - rd : x26<br> - rs1_val == 17870283321406128127<br>                                                |[0x80000408]:slli.uw s10, s9, 31<br> [0x8000040c]:sd s10, 40(ra)<br>   |
|   7|[0x80002240]<br>0x7FFFFFFF80000000|- rs1 : x26<br> - rd : x25<br> - rs1_val == 18158513697557839871<br>                                                |[0x8000041c]:slli.uw s9, s10, 31<br> [0x80000420]:sd s9, 48(ra)<br>    |
|   8|[0x80002248]<br>0x7FFFFFFF80000000|- rs1 : x23<br> - rd : x24<br> - rs1_val == 18302628885633695743<br>                                                |[0x80000430]:slli.uw s8, s7, 31<br> [0x80000434]:sd s8, 56(ra)<br>     |
|   9|[0x80002250]<br>0x7FFFFFFF80000000|- rs1 : x24<br> - rd : x23<br> - rs1_val == 18374686479671623679<br>                                                |[0x80000444]:slli.uw s7, s8, 31<br> [0x80000448]:sd s7, 64(ra)<br>     |
|  10|[0x80002258]<br>0x7FFFFFFF80000000|- rs1 : x21<br> - rd : x22<br> - rs1_val == 18410715276690587647<br>                                                |[0x80000458]:slli.uw s6, s5, 31<br> [0x8000045c]:sd s6, 72(ra)<br>     |
|  11|[0x80002260]<br>0x7FFFFFFF80000000|- rs1 : x22<br> - rd : x21<br> - rs1_val == 18428729675200069631<br>                                                |[0x8000046c]:slli.uw s5, s6, 31<br> [0x80000470]:sd s5, 80(ra)<br>     |
|  12|[0x80002268]<br>0x7FFFFFFF80000000|- rs1 : x19<br> - rd : x20<br> - rs1_val == 18437736874454810623<br>                                                |[0x80000480]:slli.uw s4, s3, 31<br> [0x80000484]:sd s4, 88(ra)<br>     |
|  13|[0x80002270]<br>0x7FFFFFFF80000000|- rs1 : x20<br> - rd : x19<br> - rs1_val == 18442240474082181119<br>                                                |[0x80000494]:slli.uw s3, s4, 31<br> [0x80000498]:sd s3, 96(ra)<br>     |
|  14|[0x80002278]<br>0x7FFFFFFF80000000|- rs1 : x17<br> - rd : x18<br> - rs1_val == 18444492273895866367<br>                                                |[0x800004a8]:slli.uw s2, a7, 31<br> [0x800004ac]:sd s2, 104(ra)<br>    |
|  15|[0x80002280]<br>0x7FFFFFFF80000000|- rs1 : x18<br> - rd : x17<br> - rs1_val == 18445618173802708991<br>                                                |[0x800004bc]:slli.uw a7, s2, 31<br> [0x800004c0]:sd a7, 112(ra)<br>    |
|  16|[0x80002288]<br>0x7FFFFFFF80000000|- rs1 : x15<br> - rd : x16<br> - rs1_val == 18446181123756130303<br>                                                |[0x800004d0]:slli.uw a6, a5, 31<br> [0x800004d4]:sd a6, 120(ra)<br>    |
|  17|[0x80002290]<br>0x7FFFFFFF80000000|- rs1 : x16<br> - rd : x15<br> - rs1_val == 18446462598732840959<br>                                                |[0x800004e4]:slli.uw a5, a6, 31<br> [0x800004e8]:sd a5, 128(ra)<br>    |
|  18|[0x80002298]<br>0x7FFFFFFF80000000|- rs1 : x13<br> - rd : x14<br> - rs1_val == 18446603336221196287<br>                                                |[0x800004f8]:slli.uw a4, a3, 31<br> [0x800004fc]:sd a4, 136(ra)<br>    |
|  19|[0x800022a0]<br>0x7FFFFFFF80000000|- rs1 : x14<br> - rd : x13<br> - rs1_val == 18446673704965373951<br>                                                |[0x8000050c]:slli.uw a3, a4, 31<br> [0x80000510]:sd a3, 144(ra)<br>    |
|  20|[0x800022a8]<br>0x7FFFFFFF80000000|- rs1 : x11<br> - rd : x12<br> - rs1_val == 18446708889337462783<br>                                                |[0x80000520]:slli.uw a2, a1, 31<br> [0x80000524]:sd a2, 152(ra)<br>    |
|  21|[0x800022b0]<br>0x7FFFFFFF80000000|- rs1 : x12<br> - rd : x11<br> - rs1_val == 18446726481523507199<br>                                                |[0x80000534]:slli.uw a1, a2, 31<br> [0x80000538]:sd a1, 160(ra)<br>    |
|  22|[0x800022b8]<br>0x7FFFFFFF80000000|- rs1 : x9<br> - rd : x10<br> - rs1_val == 18446735277616529407<br>                                                 |[0x80000548]:slli.uw a0, s1, 31<br> [0x8000054c]:sd a0, 168(ra)<br>    |
|  23|[0x800022c0]<br>0x7FFFFFFF80000000|- rs1 : x10<br> - rd : x9<br> - rs1_val == 18446739675663040511<br>                                                 |[0x8000055c]:slli.uw s1, a0, 31<br> [0x80000560]:sd s1, 176(ra)<br>    |
|  24|[0x800022c8]<br>0x7FFFFFFF80000000|- rs1 : x7<br> - rd : x8<br> - rs1_val == 18446741874686296063<br>                                                  |[0x80000570]:slli.uw fp, t2, 31<br> [0x80000574]:sd fp, 184(ra)<br>    |
|  25|[0x800022d0]<br>0x7FFFFFFF80000000|- rs1 : x8<br> - rd : x7<br> - rs1_val == 18446742974197923839<br>                                                  |[0x80000584]:slli.uw t2, fp, 31<br> [0x80000588]:sd t2, 192(ra)<br>    |
|  26|[0x800022d8]<br>0x7FFFFFFF80000000|- rs1 : x5<br> - rd : x6<br> - rs1_val == 18446743523953737727<br>                                                  |[0x80000598]:slli.uw t1, t0, 31<br> [0x8000059c]:sd t1, 200(ra)<br>    |
|  27|[0x800022e0]<br>0x7FFFFFFF80000000|- rs1 : x6<br> - rd : x5<br> - rs1_val == 18446743798831644671<br>                                                  |[0x800005ac]:slli.uw t0, t1, 31<br> [0x800005b0]:sd t0, 208(ra)<br>    |
|  28|[0x800022e8]<br>0x7FFFFFFF80000000|- rs1 : x3<br> - rd : x4<br> - rs1_val == 18446743936270598143<br>                                                  |[0x800005c0]:slli.uw tp, gp, 31<br> [0x800005c4]:sd tp, 216(ra)<br>    |
|  29|[0x800022f0]<br>0x7FFFFFFF80000000|- rs1 : x4<br> - rd : x3<br> - rs1_val == 18446744004990074879<br>                                                  |[0x800005dc]:slli.uw gp, tp, 31<br> [0x800005e0]:sd gp, 0(t0)<br>      |
|  30|[0x800022f8]<br>0x7FFFFFFF80000000|- rs1 : x1<br> - rd : x2<br> - rs1_val == 18446744039349813247<br>                                                  |[0x800005f0]:slli.uw sp, ra, 31<br> [0x800005f4]:sd sp, 8(t0)<br>      |
|  31|[0x80002300]<br>0x7FFFFFFF80000000|- rs1 : x2<br> - rd : x1<br> - rs1_val == 18446744056529682431<br>                                                  |[0x80000604]:slli.uw ra, sp, 31<br> [0x80000608]:sd ra, 16(t0)<br>     |
|  32|[0x80002308]<br>0x0000000000000000|- rs1 : x0<br> - rs1_val==0<br>                                                                                     |[0x80000610]:slli.uw t6, zero, 31<br> [0x80000614]:sd t6, 24(t0)<br>   |
|  33|[0x80002310]<br>0x0000000000000000|- rd : x0<br> - rs1_val == 18446744069414584319<br>                                                                 |[0x80000624]:slli.uw zero, t6, 31<br> [0x80000628]:sd zero, 32(t0)<br> |
|  34|[0x80002318]<br>0x3FFFFFFF80000000|- rs1_val == 18446744071562067967<br>                                                                               |[0x80000638]:slli.uw t6, t5, 31<br> [0x8000063c]:sd t6, 40(t0)<br>     |
|  35|[0x80002320]<br>0x5FFFFFFF80000000|- rs1_val == 18446744072635809791<br>                                                                               |[0x80000648]:slli.uw t6, t5, 31<br> [0x8000064c]:sd t6, 48(t0)<br>     |
|  36|[0x80002328]<br>0x6FFFFFFF80000000|- rs1_val == 18446744073172680703<br>                                                                               |[0x80000658]:slli.uw t6, t5, 31<br> [0x8000065c]:sd t6, 56(t0)<br>     |
|  37|[0x80002330]<br>0x77FFFFFF80000000|- rs1_val == 18446744073441116159<br>                                                                               |[0x80000668]:slli.uw t6, t5, 31<br> [0x8000066c]:sd t6, 64(t0)<br>     |
|  38|[0x80002338]<br>0x7BFFFFFF80000000|- rs1_val == 18446744073575333887<br>                                                                               |[0x80000678]:slli.uw t6, t5, 31<br> [0x8000067c]:sd t6, 72(t0)<br>     |
|  39|[0x80002340]<br>0x7DFFFFFF80000000|- rs1_val == 18446744073642442751<br>                                                                               |[0x80000688]:slli.uw t6, t5, 31<br> [0x8000068c]:sd t6, 80(t0)<br>     |
|  40|[0x80002348]<br>0x7EFFFFFF80000000|- rs1_val == 18446744073675997183<br>                                                                               |[0x80000698]:slli.uw t6, t5, 31<br> [0x8000069c]:sd t6, 88(t0)<br>     |
|  41|[0x80002350]<br>0x7F7FFFFF80000000|- rs1_val == 18446744073692774399<br>                                                                               |[0x800006a8]:slli.uw t6, t5, 31<br> [0x800006ac]:sd t6, 96(t0)<br>     |
|  42|[0x80002358]<br>0x7FBFFFFF80000000|- rs1_val == 18446744073701163007<br>                                                                               |[0x800006b8]:slli.uw t6, t5, 31<br> [0x800006bc]:sd t6, 104(t0)<br>    |
|  43|[0x80002360]<br>0x7FDFFFFF80000000|- rs1_val == 18446744073705357311<br>                                                                               |[0x800006c8]:slli.uw t6, t5, 31<br> [0x800006cc]:sd t6, 112(t0)<br>    |
|  44|[0x80002368]<br>0x7FEFFFFF80000000|- rs1_val == 18446744073707454463<br>                                                                               |[0x800006d8]:slli.uw t6, t5, 31<br> [0x800006dc]:sd t6, 120(t0)<br>    |
|  45|[0x80002370]<br>0x7FF7FFFF80000000|- rs1_val == 18446744073708503039<br>                                                                               |[0x800006e8]:slli.uw t6, t5, 31<br> [0x800006ec]:sd t6, 128(t0)<br>    |
|  46|[0x80002378]<br>0x7FFBFFFF80000000|- rs1_val == 18446744073709027327<br>                                                                               |[0x800006f8]:slli.uw t6, t5, 31<br> [0x800006fc]:sd t6, 136(t0)<br>    |
|  47|[0x80002380]<br>0x7FFDFFFF80000000|- rs1_val == 18446744073709289471<br>                                                                               |[0x80000708]:slli.uw t6, t5, 31<br> [0x8000070c]:sd t6, 144(t0)<br>    |
|  48|[0x80002388]<br>0x7FFEFFFF80000000|- rs1_val == 18446744073709420543<br>                                                                               |[0x80000718]:slli.uw t6, t5, 31<br> [0x8000071c]:sd t6, 152(t0)<br>    |
|  49|[0x80002390]<br>0x7FFF7FFF80000000|- rs1_val == 18446744073709486079<br>                                                                               |[0x80000728]:slli.uw t6, t5, 31<br> [0x8000072c]:sd t6, 160(t0)<br>    |
|  50|[0x80002398]<br>0x7FFFBFFF80000000|- rs1_val == 18446744073709518847<br>                                                                               |[0x80000738]:slli.uw t6, t5, 31<br> [0x8000073c]:sd t6, 168(t0)<br>    |
|  51|[0x800023a0]<br>0x7FFFDFFF80000000|- rs1_val == 18446744073709535231<br>                                                                               |[0x80000748]:slli.uw t6, t5, 31<br> [0x8000074c]:sd t6, 176(t0)<br>    |
|  52|[0x800023a8]<br>0x7FFFEFFF80000000|- rs1_val == 18446744073709543423<br>                                                                               |[0x80000758]:slli.uw t6, t5, 31<br> [0x8000075c]:sd t6, 184(t0)<br>    |
|  53|[0x800023b0]<br>0x7FFFF7FF80000000|- rs1_val == 18446744073709547519<br>                                                                               |[0x80000768]:slli.uw t6, t5, 31<br> [0x8000076c]:sd t6, 192(t0)<br>    |
|  54|[0x800023b8]<br>0x7FFFFBFF80000000|- rs1_val == 18446744073709549567<br>                                                                               |[0x80000778]:slli.uw t6, t5, 31<br> [0x8000077c]:sd t6, 200(t0)<br>    |
|  55|[0x800023c0]<br>0x7FFFFDFF80000000|- rs1_val == 18446744073709550591<br>                                                                               |[0x80000784]:slli.uw t6, t5, 31<br> [0x80000788]:sd t6, 208(t0)<br>    |
|  56|[0x800023c8]<br>0x7FFFFEFF80000000|- rs1_val == 18446744073709551103<br>                                                                               |[0x80000790]:slli.uw t6, t5, 31<br> [0x80000794]:sd t6, 216(t0)<br>    |
|  57|[0x800023d0]<br>0x7FFFFF7F80000000|- rs1_val == 18446744073709551359<br>                                                                               |[0x8000079c]:slli.uw t6, t5, 31<br> [0x800007a0]:sd t6, 224(t0)<br>    |
|  58|[0x800023d8]<br>0x7FFFFFBF80000000|- rs1_val == 18446744073709551487<br>                                                                               |[0x800007a8]:slli.uw t6, t5, 31<br> [0x800007ac]:sd t6, 232(t0)<br>    |
|  59|[0x800023e0]<br>0x7FFFFFDF80000000|- rs1_val == 18446744073709551551<br>                                                                               |[0x800007b4]:slli.uw t6, t5, 31<br> [0x800007b8]:sd t6, 240(t0)<br>    |
|  60|[0x800023e8]<br>0x7FFFFFEF80000000|- rs1_val == 18446744073709551583<br>                                                                               |[0x800007c0]:slli.uw t6, t5, 31<br> [0x800007c4]:sd t6, 248(t0)<br>    |
|  61|[0x800023f0]<br>0x7FFFFFF780000000|- rs1_val == 18446744073709551599<br>                                                                               |[0x800007cc]:slli.uw t6, t5, 31<br> [0x800007d0]:sd t6, 256(t0)<br>    |
|  62|[0x800023f8]<br>0x7FFFFFFB80000000|- rs1_val == 18446744073709551607<br>                                                                               |[0x800007d8]:slli.uw t6, t5, 31<br> [0x800007dc]:sd t6, 264(t0)<br>    |
|  63|[0x80002400]<br>0x7FFFFFFD80000000|- rs1_val == 18446744073709551611<br>                                                                               |[0x800007e4]:slli.uw t6, t5, 31<br> [0x800007e8]:sd t6, 272(t0)<br>    |
|  64|[0x80002408]<br>0x7FFFFFFE80000000|- rs1_val == 18446744073709551613<br>                                                                               |[0x800007f0]:slli.uw t6, t5, 31<br> [0x800007f4]:sd t6, 280(t0)<br>    |
|  65|[0x80002410]<br>0x7FFFFFFF00000000|- rs1_val == 18446744073709551614<br>                                                                               |[0x800007fc]:slli.uw t6, t5, 31<br> [0x80000800]:sd t6, 288(t0)<br>    |
|  66|[0x80002418]<br>0x0000000000008000|- imm_val == 15<br>                                                                                                 |[0x80000810]:slli.uw t6, t5, 15<br> [0x80000814]:sd t6, 296(t0)<br>    |
|  67|[0x80002420]<br>0x0000000000800000|- imm_val == 23<br>                                                                                                 |[0x80000824]:slli.uw t6, t5, 23<br> [0x80000828]:sd t6, 304(t0)<br>    |
|  68|[0x80002428]<br>0x0000000008000000|- imm_val == 27<br>                                                                                                 |[0x80000838]:slli.uw t6, t5, 27<br> [0x8000083c]:sd t6, 312(t0)<br>    |
|  69|[0x80002430]<br>0x0000000020000000|- imm_val == 29<br>                                                                                                 |[0x8000084c]:slli.uw t6, t5, 29<br> [0x80000850]:sd t6, 320(t0)<br>    |
|  70|[0x80002438]<br>0x0000000040000000|- imm_val == 30<br>                                                                                                 |[0x80000860]:slli.uw t6, t5, 30<br> [0x80000864]:sd t6, 328(t0)<br>    |
|  71|[0x80002440]<br>0x0000000000000000|- rs1_val == 9223372036854775808<br>                                                                                |[0x80000870]:slli.uw t6, t5, 31<br> [0x80000874]:sd t6, 336(t0)<br>    |
|  72|[0x80002448]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                |[0x80000880]:slli.uw t6, t5, 31<br> [0x80000884]:sd t6, 344(t0)<br>    |
|  73|[0x80002450]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                |[0x80000890]:slli.uw t6, t5, 31<br> [0x80000894]:sd t6, 352(t0)<br>    |
|  74|[0x80002458]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                |[0x800008a0]:slli.uw t6, t5, 31<br> [0x800008a4]:sd t6, 360(t0)<br>    |
|  75|[0x80002460]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                 |[0x800008b0]:slli.uw t6, t5, 31<br> [0x800008b4]:sd t6, 368(t0)<br>    |
|  76|[0x80002468]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                 |[0x800008c0]:slli.uw t6, t5, 31<br> [0x800008c4]:sd t6, 376(t0)<br>    |
|  77|[0x80002470]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                 |[0x800008d0]:slli.uw t6, t5, 31<br> [0x800008d4]:sd t6, 384(t0)<br>    |
|  78|[0x80002478]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                  |[0x800008e0]:slli.uw t6, t5, 31<br> [0x800008e4]:sd t6, 392(t0)<br>    |
|  79|[0x80002480]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                  |[0x800008f0]:slli.uw t6, t5, 31<br> [0x800008f4]:sd t6, 400(t0)<br>    |
|  80|[0x80002488]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                  |[0x80000900]:slli.uw t6, t5, 31<br> [0x80000904]:sd t6, 408(t0)<br>    |
|  81|[0x80002490]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                   |[0x80000910]:slli.uw t6, t5, 31<br> [0x80000914]:sd t6, 416(t0)<br>    |
|  82|[0x80002498]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                   |[0x80000920]:slli.uw t6, t5, 31<br> [0x80000924]:sd t6, 424(t0)<br>    |
|  83|[0x800024a0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                   |[0x80000930]:slli.uw t6, t5, 31<br> [0x80000934]:sd t6, 432(t0)<br>    |
|  84|[0x800024a8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                   |[0x80000940]:slli.uw t6, t5, 31<br> [0x80000944]:sd t6, 440(t0)<br>    |
|  85|[0x800024b0]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                    |[0x80000950]:slli.uw t6, t5, 31<br> [0x80000954]:sd t6, 448(t0)<br>    |
|  86|[0x800024b8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                    |[0x80000960]:slli.uw t6, t5, 31<br> [0x80000964]:sd t6, 456(t0)<br>    |
|  87|[0x800024c0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                    |[0x80000970]:slli.uw t6, t5, 31<br> [0x80000974]:sd t6, 464(t0)<br>    |
|  88|[0x800024c8]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                     |[0x80000980]:slli.uw t6, t5, 31<br> [0x80000984]:sd t6, 472(t0)<br>    |
|  89|[0x800024d0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                     |[0x80000990]:slli.uw t6, t5, 31<br> [0x80000994]:sd t6, 480(t0)<br>    |
|  90|[0x800024d8]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                     |[0x800009a0]:slli.uw t6, t5, 31<br> [0x800009a4]:sd t6, 488(t0)<br>    |
|  91|[0x800024e0]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                      |[0x800009b0]:slli.uw t6, t5, 31<br> [0x800009b4]:sd t6, 496(t0)<br>    |
|  92|[0x800024e8]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                      |[0x800009c0]:slli.uw t6, t5, 31<br> [0x800009c4]:sd t6, 504(t0)<br>    |
|  93|[0x800024f0]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                      |[0x800009d0]:slli.uw t6, t5, 31<br> [0x800009d4]:sd t6, 512(t0)<br>    |
|  94|[0x800024f8]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                      |[0x800009e0]:slli.uw t6, t5, 31<br> [0x800009e4]:sd t6, 520(t0)<br>    |
|  95|[0x80002500]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                       |[0x800009f0]:slli.uw t6, t5, 31<br> [0x800009f4]:sd t6, 528(t0)<br>    |
|  96|[0x80002508]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                       |[0x80000a00]:slli.uw t6, t5, 31<br> [0x80000a04]:sd t6, 536(t0)<br>    |
|  97|[0x80002510]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                       |[0x80000a10]:slli.uw t6, t5, 31<br> [0x80000a14]:sd t6, 544(t0)<br>    |
|  98|[0x80002518]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                        |[0x80000a20]:slli.uw t6, t5, 31<br> [0x80000a24]:sd t6, 552(t0)<br>    |
|  99|[0x80002520]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                        |[0x80000a30]:slli.uw t6, t5, 31<br> [0x80000a34]:sd t6, 560(t0)<br>    |
| 100|[0x80002528]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                        |[0x80000a40]:slli.uw t6, t5, 31<br> [0x80000a44]:sd t6, 568(t0)<br>    |
| 101|[0x80002530]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                         |[0x80000a50]:slli.uw t6, t5, 31<br> [0x80000a54]:sd t6, 576(t0)<br>    |
| 102|[0x80002538]<br>0x0000000000000000|- rs1_val == 4294967296<br> - rs1_val==4294967296<br>                                                               |[0x80000a60]:slli.uw t6, t5, 31<br> [0x80000a64]:sd t6, 584(t0)<br>    |
| 103|[0x80002540]<br>0x4000000000000000|- rs1_val == 2147483648<br>                                                                                         |[0x80000a70]:slli.uw t6, t5, 31<br> [0x80000a74]:sd t6, 592(t0)<br>    |
| 104|[0x80002548]<br>0x0000001000000000|- rs1_val == 32<br>                                                                                                 |[0x80000a7c]:slli.uw t6, t5, 31<br> [0x80000a80]:sd t6, 600(t0)<br>    |
| 105|[0x80002550]<br>0x0000000800000000|- rs1_val == 16<br>                                                                                                 |[0x80000a88]:slli.uw t6, t5, 31<br> [0x80000a8c]:sd t6, 608(t0)<br>    |
| 106|[0x80002558]<br>0x0000000400000000|- rs1_val == 8<br>                                                                                                  |[0x80000a94]:slli.uw t6, t5, 31<br> [0x80000a98]:sd t6, 616(t0)<br>    |
| 107|[0x80002560]<br>0x0000000200000000|- rs1_val == 4<br> - rs1_val==4<br>                                                                                 |[0x80000aa0]:slli.uw t6, t5, 31<br> [0x80000aa4]:sd t6, 624(t0)<br>    |
| 108|[0x80002568]<br>0x0000000100000000|- rs1_val == 2<br> - rs1_val==2<br>                                                                                 |[0x80000aac]:slli.uw t6, t5, 31<br> [0x80000ab0]:sd t6, 632(t0)<br>    |
| 109|[0x80002570]<br>0x0000000080000000|- rs1_val == 1<br> - rs1_val==1<br>                                                                                 |[0x80000ab8]:slli.uw t6, t5, 31<br> [0x80000abc]:sd t6, 640(t0)<br>    |
| 110|[0x80002578]<br>0x0000000000010000|- imm_val == 16<br>                                                                                                 |[0x80000acc]:slli.uw t6, t5, 16<br> [0x80000ad0]:sd t6, 648(t0)<br>    |
| 111|[0x80002580]<br>0x0000000000000100|- imm_val == 8<br>                                                                                                  |[0x80000ae0]:slli.uw t6, t5, 8<br> [0x80000ae4]:sd t6, 656(t0)<br>     |
| 112|[0x80002588]<br>0x0000000000000010|- imm_val == 4<br>                                                                                                  |[0x80000af4]:slli.uw t6, t5, 4<br> [0x80000af8]:sd t6, 664(t0)<br>     |
| 113|[0x80002590]<br>0x0000000000000004|- imm_val == 2<br>                                                                                                  |[0x80000b08]:slli.uw t6, t5, 2<br> [0x80000b0c]:sd t6, 672(t0)<br>     |
| 114|[0x80002598]<br>0x0000000000000002|- imm_val == 1<br>                                                                                                  |[0x80000b1c]:slli.uw t6, t5, 1<br> [0x80000b20]:sd t6, 680(t0)<br>     |
| 115|[0x800025a0]<br>0x5A82799A00000000|- rs1_val==3037000500<br>                                                                                           |[0x80000b34]:slli.uw t6, t5, 31<br> [0x80000b38]:sd t6, 688(t0)<br>    |
| 116|[0x800025a8]<br>0x3333333380000000|- rs1_val==7378697629483820647<br>                                                                                  |[0x80000b5c]:slli.uw t6, t5, 31<br> [0x80000b60]:sd t6, 696(t0)<br>    |
| 117|[0x800025b0]<br>0x1999999A00000000|- rs1_val==3689348814741910324<br>                                                                                  |[0x80000b84]:slli.uw t6, t5, 31<br> [0x80000b88]:sd t6, 704(t0)<br>    |
| 118|[0x800025b8]<br>0x0000000300000000|- rs1_val==6<br>                                                                                                    |[0x80000b90]:slli.uw t6, t5, 31<br> [0x80000b94]:sd t6, 712(t0)<br>    |
| 119|[0x800025c0]<br>0x5555555580000000|- rs1_val==12297829382473034411<br>                                                                                 |[0x80000bb8]:slli.uw t6, t5, 31<br> [0x80000bbc]:sd t6, 720(t0)<br>    |
| 120|[0x800025c8]<br>0x2AAAAAAB00000000|- rs1_val==6148914691236517206<br>                                                                                  |[0x80000be0]:slli.uw t6, t5, 31<br> [0x80000be4]:sd t6, 728(t0)<br>    |
| 121|[0x800025d0]<br>0x7FFFFFFF80000000|- rs1_val==4294967295<br>                                                                                           |[0x80000bf4]:slli.uw t6, t5, 31<br> [0x80000bf8]:sd t6, 736(t0)<br>    |
| 122|[0x800025e0]<br>0x5A82799900000000|- rs1_val==3037000498<br>                                                                                           |[0x80000c18]:slli.uw t6, t5, 31<br> [0x80000c1c]:sd t6, 752(t0)<br>    |
| 123|[0x800025e8]<br>0x3333333280000000|- rs1_val==7378697629483820645<br>                                                                                  |[0x80000c40]:slli.uw t6, t5, 31<br> [0x80000c44]:sd t6, 760(t0)<br>    |
| 124|[0x800025f0]<br>0x1999999900000000|- rs1_val==3689348814741910322<br>                                                                                  |[0x80000c68]:slli.uw t6, t5, 31<br> [0x80000c6c]:sd t6, 768(t0)<br>    |
| 125|[0x800025f8]<br>0x5555555480000000|- rs1_val==12297829382473034409<br>                                                                                 |[0x80000c90]:slli.uw t6, t5, 31<br> [0x80000c94]:sd t6, 776(t0)<br>    |
| 126|[0x80002600]<br>0x2AAAAAAA00000000|- rs1_val==6148914691236517204<br>                                                                                  |[0x80000cb8]:slli.uw t6, t5, 31<br> [0x80000cbc]:sd t6, 784(t0)<br>    |
| 127|[0x80002608]<br>0x5A82799980000000|- rs1_val==3037000499<br>                                                                                           |[0x80000cd0]:slli.uw t6, t5, 31<br> [0x80000cd4]:sd t6, 792(t0)<br>    |
| 128|[0x80002610]<br>0x3333333300000000|- rs1_val==7378697629483820646<br>                                                                                  |[0x80000cf8]:slli.uw t6, t5, 31<br> [0x80000cfc]:sd t6, 800(t0)<br>    |
| 129|[0x80002618]<br>0x1999999980000000|- rs1_val==3689348814741910323<br>                                                                                  |[0x80000d20]:slli.uw t6, t5, 31<br> [0x80000d24]:sd t6, 808(t0)<br>    |
| 130|[0x80002620]<br>0x0000000280000000|- rs1_val==5<br>                                                                                                    |[0x80000d2c]:slli.uw t6, t5, 31<br> [0x80000d30]:sd t6, 816(t0)<br>    |
| 131|[0x80002628]<br>0x5555555500000000|- rs1_val==12297829382473034410<br> - rs1_val == 12297829382473034410<br>                                           |[0x80000d54]:slli.uw t6, t5, 31<br> [0x80000d58]:sd t6, 824(t0)<br>    |
| 132|[0x80002630]<br>0x2AAAAAAA80000000|- rs1_val==6148914691236517205<br> - rs1_val == 6148914691236517205<br>                                             |[0x80000d7c]:slli.uw t6, t5, 31<br> [0x80000d80]:sd t6, 832(t0)<br>    |
| 133|[0x80002638]<br>0x0000000180000000|- rs1_val==3<br>                                                                                                    |[0x80000d88]:slli.uw t6, t5, 31<br> [0x80000d8c]:sd t6, 840(t0)<br>    |
| 134|[0x80002640]<br>0x0000000000000400|- imm_val == 10<br>                                                                                                 |[0x80000d9c]:slli.uw t6, t5, 10<br> [0x80000da0]:sd t6, 848(t0)<br>    |
| 135|[0x80002648]<br>0x2000000000000000|- rs1_val == 1073741824<br>                                                                                         |[0x80000da8]:slli.uw t6, t5, 31<br> [0x80000dac]:sd t6, 856(t0)<br>    |
| 136|[0x80002650]<br>0x1000000000000000|- rs1_val == 536870912<br>                                                                                          |[0x80000db4]:slli.uw t6, t5, 31<br> [0x80000db8]:sd t6, 864(t0)<br>    |
| 137|[0x80002658]<br>0x0800000000000000|- rs1_val == 268435456<br>                                                                                          |[0x80000dc0]:slli.uw t6, t5, 31<br> [0x80000dc4]:sd t6, 872(t0)<br>    |
| 138|[0x80002660]<br>0x0400000000000000|- rs1_val == 134217728<br>                                                                                          |[0x80000dcc]:slli.uw t6, t5, 31<br> [0x80000dd0]:sd t6, 880(t0)<br>    |
| 139|[0x80002668]<br>0x0200000000000000|- rs1_val == 67108864<br>                                                                                           |[0x80000dd8]:slli.uw t6, t5, 31<br> [0x80000ddc]:sd t6, 888(t0)<br>    |
| 140|[0x80002670]<br>0x0100000000000000|- rs1_val == 33554432<br>                                                                                           |[0x80000de4]:slli.uw t6, t5, 31<br> [0x80000de8]:sd t6, 896(t0)<br>    |
| 141|[0x80002678]<br>0x0080000000000000|- rs1_val == 16777216<br>                                                                                           |[0x80000df0]:slli.uw t6, t5, 31<br> [0x80000df4]:sd t6, 904(t0)<br>    |
| 142|[0x80002680]<br>0x0040000000000000|- rs1_val == 8388608<br>                                                                                            |[0x80000dfc]:slli.uw t6, t5, 31<br> [0x80000e00]:sd t6, 912(t0)<br>    |
| 143|[0x80002688]<br>0x0020000000000000|- rs1_val == 4194304<br>                                                                                            |[0x80000e08]:slli.uw t6, t5, 31<br> [0x80000e0c]:sd t6, 920(t0)<br>    |
| 144|[0x80002690]<br>0x0010000000000000|- rs1_val == 2097152<br>                                                                                            |[0x80000e14]:slli.uw t6, t5, 31<br> [0x80000e18]:sd t6, 928(t0)<br>    |
| 145|[0x80002698]<br>0x0008000000000000|- rs1_val == 1048576<br>                                                                                            |[0x80000e20]:slli.uw t6, t5, 31<br> [0x80000e24]:sd t6, 936(t0)<br>    |
| 146|[0x800026a0]<br>0x0004000000000000|- rs1_val == 524288<br>                                                                                             |[0x80000e2c]:slli.uw t6, t5, 31<br> [0x80000e30]:sd t6, 944(t0)<br>    |
| 147|[0x800026a8]<br>0x0002000000000000|- rs1_val == 262144<br>                                                                                             |[0x80000e38]:slli.uw t6, t5, 31<br> [0x80000e3c]:sd t6, 952(t0)<br>    |
| 148|[0x800026b0]<br>0x0001000000000000|- rs1_val == 131072<br>                                                                                             |[0x80000e44]:slli.uw t6, t5, 31<br> [0x80000e48]:sd t6, 960(t0)<br>    |
| 149|[0x800026b8]<br>0x0000800000000000|- rs1_val == 65536<br>                                                                                              |[0x80000e50]:slli.uw t6, t5, 31<br> [0x80000e54]:sd t6, 968(t0)<br>    |
| 150|[0x800026c0]<br>0x0000400000000000|- rs1_val == 32768<br>                                                                                              |[0x80000e5c]:slli.uw t6, t5, 31<br> [0x80000e60]:sd t6, 976(t0)<br>    |
| 151|[0x800026c8]<br>0x0000200000000000|- rs1_val == 16384<br>                                                                                              |[0x80000e68]:slli.uw t6, t5, 31<br> [0x80000e6c]:sd t6, 984(t0)<br>    |
| 152|[0x800026d0]<br>0x0000100000000000|- rs1_val == 8192<br>                                                                                               |[0x80000e74]:slli.uw t6, t5, 31<br> [0x80000e78]:sd t6, 992(t0)<br>    |
| 153|[0x800026d8]<br>0x0000080000000000|- rs1_val == 4096<br>                                                                                               |[0x80000e80]:slli.uw t6, t5, 31<br> [0x80000e84]:sd t6, 1000(t0)<br>   |
| 154|[0x800026e0]<br>0x0000040000000000|- rs1_val == 2048<br>                                                                                               |[0x80000e90]:slli.uw t6, t5, 31<br> [0x80000e94]:sd t6, 1008(t0)<br>   |
| 155|[0x800026e8]<br>0x0000020000000000|- rs1_val == 1024<br>                                                                                               |[0x80000e9c]:slli.uw t6, t5, 31<br> [0x80000ea0]:sd t6, 1016(t0)<br>   |
| 156|[0x800026f0]<br>0x0000010000000000|- rs1_val == 512<br>                                                                                                |[0x80000ea8]:slli.uw t6, t5, 31<br> [0x80000eac]:sd t6, 1024(t0)<br>   |
| 157|[0x800026f8]<br>0x0000008000000000|- rs1_val == 256<br>                                                                                                |[0x80000eb4]:slli.uw t6, t5, 31<br> [0x80000eb8]:sd t6, 1032(t0)<br>   |
| 158|[0x80002700]<br>0x0000004000000000|- rs1_val == 128<br>                                                                                                |[0x80000ec0]:slli.uw t6, t5, 31<br> [0x80000ec4]:sd t6, 1040(t0)<br>   |
| 159|[0x80002708]<br>0x0000002000000000|- rs1_val == 64<br>                                                                                                 |[0x80000ecc]:slli.uw t6, t5, 31<br> [0x80000ed0]:sd t6, 1048(t0)<br>   |
| 160|[0x80002710]<br>0x7FFFFFFF80000000|- rs1_val == 18446744065119617023<br>                                                                               |[0x80000ee0]:slli.uw t6, t5, 31<br> [0x80000ee4]:sd t6, 1056(t0)<br>   |
