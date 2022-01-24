
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800018a0')]      |
| SIG_REGION                | [('0x80003210', '0x80003a70', '268 dwords')]      |
| COV_LABELS                | clmulr      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/64/riscof_work/clmulr-01.S/ref.S    |
| Total Number of coverpoints| 374     |
| Total Coverpoints Hit     | 368      |
| Total Signature Updates   | 268      |
| STAT1                     | 264      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000850]:clmulr t6, t5, t4
      [0x80000854]:sd t6, 224(t2)
 -- Signature Address: 0x800033c0 Data: 0xAAAAAAAAAAAAAAAA
 -- Redundant Coverpoints hit by the op
      - opcode : clmulr
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 18446744073709550591
      - rs1_val == 18446744073709550591




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001838]:clmulr t6, t5, t4
      [0x8000183c]:sd t6, 1896(t2)
 -- Signature Address: 0x80003a48 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : clmulr
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val==0 and rs2_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001868]:clmulr t6, t5, t4
      [0x8000186c]:sd t6, 1912(t2)
 -- Signature Address: 0x80003a58 Data: 0xAAAAAAAD555552AA
 -- Redundant Coverpoints hit by the op
      - opcode : clmulr
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 18446744056529682431
      - rs1_val == 18446744073709550591




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001898]:clmulr t6, t5, t4
      [0x8000189c]:sd t6, 1928(t2)
 -- Signature Address: 0x80003a68 Data: 0xAAAAAAAA555552AA
 -- Redundant Coverpoints hit by the op
      - opcode : clmulr
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 18446744071562067967
      - rs1_val == 18446744073709550591






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

|s.no|            signature             |                                                                              coverpoints                                                                               |                                 code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : clmulr<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs1_val==0 and rs2_val==0<br>                                             |[0x800003a0]:clmulr t6, t5, t5<br> [0x800003a4]:sd t6, 0(ra)<br>      |
|   2|[0x80003218]<br>0x55555555555556AA|- rs1 : x31<br> - rs2 : x29<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 9223372036854775807<br> - rs1_val == 18446744073709550591<br> |[0x800003b8]:clmulr t5, t6, t4<br> [0x800003bc]:sd t5, 8(ra)<br>      |
|   3|[0x80003220]<br>0xD5555555555550AA|- rs1 : x29<br> - rs2 : x31<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs2_val == 13835058055282163711<br>                                                             |[0x800003d0]:clmulr t4, t4, t6<br> [0x800003d4]:sd t4, 16(ra)<br>     |
|   4|[0x80003228]<br>0x95555555555553AA|- rs1 : x27<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_val == 16140901064495857663<br>                                                             |[0x800003e8]:clmulr t3, s11, t3<br> [0x800003ec]:sd t3, 24(ra)<br>    |
|   5|[0x80003230]<br>0xAAAAAAAAAAAAAAAA|- rs1 : x26<br> - rs2 : x26<br> - rd : x26<br> - rs1 == rs2 == rd<br> - rs2_val == 18446744073709550591<br>                                                             |[0x800003f8]:clmulr s10, s10, s10<br> [0x800003fc]:sd s10, 32(ra)<br> |
|   6|[0x80003238]<br>0xA5555555555552EA|- rs1 : x28<br> - rs2 : x25<br> - rd : x27<br> - rs2_val == 17870283321406128127<br>                                                                                    |[0x80000410]:clmulr s11, t3, s9<br> [0x80000414]:sd s11, 40(ra)<br>   |
|   7|[0x80003240]<br>0xAD5555555555528A|- rs1 : x24<br> - rs2 : x27<br> - rd : x25<br> - rs2_val == 18158513697557839871<br>                                                                                    |[0x80000428]:clmulr s9, s8, s11<br> [0x8000042c]:sd s9, 48(ra)<br>    |
|   8|[0x80003248]<br>0xA9555555555552BA|- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br> - rs2_val == 18302628885633695743<br>                                                                                    |[0x80000440]:clmulr s8, s9, s7<br> [0x80000444]:sd s8, 56(ra)<br>     |
|   9|[0x80003250]<br>0xAB555555555552A2|- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br> - rs2_val == 18374686479671623679<br>                                                                                    |[0x80000458]:clmulr s7, s6, s8<br> [0x8000045c]:sd s7, 64(ra)<br>     |
|  10|[0x80003258]<br>0xAA555555555552AE|- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == 18410715276690587647<br>                                                                                    |[0x80000470]:clmulr s6, s7, s5<br> [0x80000474]:sd s6, 72(ra)<br>     |
|  11|[0x80003260]<br>0xAAD55555555552A8|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 18428729675200069631<br>                                                                                    |[0x80000488]:clmulr s5, s4, s6<br> [0x8000048c]:sd s5, 80(ra)<br>     |
|  12|[0x80003268]<br>0xAA955555555552AB|- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br> - rs2_val == 18437736874454810623<br>                                                                                    |[0x800004a0]:clmulr s4, s5, s3<br> [0x800004a4]:sd s4, 88(ra)<br>     |
|  13|[0x80003270]<br>0xAAB55555555552AA|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 18442240474082181119<br>                                                                                    |[0x800004b8]:clmulr s3, s2, s4<br> [0x800004bc]:sd s3, 96(ra)<br>     |
|  14|[0x80003278]<br>0xAAA55555555552AA|- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br> - rs2_val == 18444492273895866367<br>                                                                                    |[0x800004d0]:clmulr s2, s3, a7<br> [0x800004d4]:sd s2, 104(ra)<br>    |
|  15|[0x80003280]<br>0xAAAD5555555552AA|- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br> - rs2_val == 18445618173802708991<br>                                                                                    |[0x800004e8]:clmulr a7, a6, s2<br> [0x800004ec]:sd a7, 112(ra)<br>    |
|  16|[0x80003288]<br>0xAAA95555555552AA|- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br> - rs2_val == 18446181123756130303<br>                                                                                    |[0x80000500]:clmulr a6, a7, a5<br> [0x80000504]:sd a6, 120(ra)<br>    |
|  17|[0x80003290]<br>0xAAAB5555555552AA|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 18446462598732840959<br>                                                                                    |[0x80000518]:clmulr a5, a4, a6<br> [0x8000051c]:sd a5, 128(ra)<br>    |
|  18|[0x80003298]<br>0xAAAA5555555552AA|- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br> - rs2_val == 18446603336221196287<br>                                                                                    |[0x80000530]:clmulr a4, a5, a3<br> [0x80000534]:sd a4, 136(ra)<br>    |
|  19|[0x800032a0]<br>0xAAAAD555555552AA|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 18446673704965373951<br>                                                                                    |[0x80000548]:clmulr a3, a2, a4<br> [0x8000054c]:sd a3, 144(ra)<br>    |
|  20|[0x800032a8]<br>0xAAAA9555555552AA|- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br> - rs2_val == 18446708889337462783<br>                                                                                    |[0x80000560]:clmulr a2, a3, a1<br> [0x80000564]:sd a2, 152(ra)<br>    |
|  21|[0x800032b0]<br>0xAAAAB555555552AA|- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 18446726481523507199<br>                                                                                    |[0x80000578]:clmulr a1, a0, a2<br> [0x8000057c]:sd a1, 160(ra)<br>    |
|  22|[0x800032b8]<br>0xAAAAA555555552AA|- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br> - rs2_val == 18446735277616529407<br>                                                                                     |[0x80000590]:clmulr a0, a1, s1<br> [0x80000594]:sd a0, 168(ra)<br>    |
|  23|[0x800032c0]<br>0xAAAAAD55555552AA|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 18446739675663040511<br>                                                                                      |[0x800005a8]:clmulr s1, fp, a0<br> [0x800005ac]:sd s1, 176(ra)<br>    |
|  24|[0x800032c8]<br>0xAAAAA955555552AA|- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == 18446741874686296063<br>                                                                                       |[0x800005c0]:clmulr fp, s1, t2<br> [0x800005c4]:sd fp, 184(ra)<br>    |
|  25|[0x800032d0]<br>0xAAAAAB55555552AA|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 18446742974197923839<br>                                                                                       |[0x800005d8]:clmulr t2, t1, fp<br> [0x800005dc]:sd t2, 192(ra)<br>    |
|  26|[0x800032d8]<br>0xAAAAAA55555552AA|- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br> - rs2_val == 18446743523953737727<br>                                                                                       |[0x800005f0]:clmulr t1, t2, t0<br> [0x800005f4]:sd t1, 200(ra)<br>    |
|  27|[0x800032e0]<br>0xAAAAAAD5555552AA|- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 18446743798831644671<br>                                                                                       |[0x80000610]:clmulr t0, tp, t1<br> [0x80000614]:sd t0, 0(t2)<br>      |
|  28|[0x800032e8]<br>0xAAAAAA95555552AA|- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br> - rs2_val == 18446743936270598143<br>                                                                                       |[0x80000628]:clmulr tp, t0, gp<br> [0x8000062c]:sd tp, 8(t2)<br>      |
|  29|[0x800032f0]<br>0xAAAAAAB5555552AA|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 18446744004990074879<br>                                                                                       |[0x80000640]:clmulr gp, sp, tp<br> [0x80000644]:sd gp, 16(t2)<br>     |
|  30|[0x800032f8]<br>0xAAAAAAA5555552AA|- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br> - rs2_val == 18446744039349813247<br>                                                                                       |[0x80000658]:clmulr sp, gp, ra<br> [0x8000065c]:sd sp, 24(t2)<br>     |
|  31|[0x80003300]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 18446744056529682431<br>                                                                                       |[0x80000670]:clmulr ra, zero, sp<br> [0x80000674]:sd ra, 32(t2)<br>   |
|  32|[0x80003308]<br>0xAAAAAAA9555552AA|- rs1 : x1<br> - rs2_val == 18446744065119617023<br>                                                                                                                    |[0x80000688]:clmulr t6, ra, t5<br> [0x8000068c]:sd t6, 40(t2)<br>     |
|  33|[0x80003310]<br>0x0000000000000000|- rs2 : x0<br>                                                                                                                                                          |[0x80000698]:clmulr t6, t5, zero<br> [0x8000069c]:sd t6, 48(t2)<br>   |
|  34|[0x80003318]<br>0x0000000000000000|- rd : x0<br> - rs2_val == 18446744071562067967<br>                                                                                                                     |[0x800006b0]:clmulr zero, t6, t5<br> [0x800006b4]:sd zero, 56(t2)<br> |
|  35|[0x80003320]<br>0xAAAAAAAAD55552AA|- rs2_val == 18446744072635809791<br>                                                                                                                                   |[0x800006c4]:clmulr t6, t5, t4<br> [0x800006c8]:sd t6, 64(t2)<br>     |
|  36|[0x80003328]<br>0xAAAAAAAA955552AA|- rs2_val == 18446744073172680703<br>                                                                                                                                   |[0x800006d8]:clmulr t6, t5, t4<br> [0x800006dc]:sd t6, 72(t2)<br>     |
|  37|[0x80003330]<br>0xAAAAAAAAB55552AA|- rs2_val == 18446744073441116159<br>                                                                                                                                   |[0x800006ec]:clmulr t6, t5, t4<br> [0x800006f0]:sd t6, 80(t2)<br>     |
|  38|[0x80003338]<br>0xAAAAAAAAA55552AA|- rs2_val == 18446744073575333887<br>                                                                                                                                   |[0x80000700]:clmulr t6, t5, t4<br> [0x80000704]:sd t6, 88(t2)<br>     |
|  39|[0x80003340]<br>0xAAAAAAAAAD5552AA|- rs2_val == 18446744073642442751<br>                                                                                                                                   |[0x80000714]:clmulr t6, t5, t4<br> [0x80000718]:sd t6, 96(t2)<br>     |
|  40|[0x80003348]<br>0xAAAAAAAAA95552AA|- rs2_val == 18446744073675997183<br>                                                                                                                                   |[0x80000728]:clmulr t6, t5, t4<br> [0x8000072c]:sd t6, 104(t2)<br>    |
|  41|[0x80003350]<br>0xAAAAAAAAAB5552AA|- rs2_val == 18446744073692774399<br>                                                                                                                                   |[0x8000073c]:clmulr t6, t5, t4<br> [0x80000740]:sd t6, 112(t2)<br>    |
|  42|[0x80003358]<br>0xAAAAAAAAAA5552AA|- rs2_val == 18446744073701163007<br>                                                                                                                                   |[0x80000750]:clmulr t6, t5, t4<br> [0x80000754]:sd t6, 120(t2)<br>    |
|  43|[0x80003360]<br>0xAAAAAAAAAAD552AA|- rs2_val == 18446744073705357311<br>                                                                                                                                   |[0x80000764]:clmulr t6, t5, t4<br> [0x80000768]:sd t6, 128(t2)<br>    |
|  44|[0x80003368]<br>0xAAAAAAAAAA9552AA|- rs2_val == 18446744073707454463<br>                                                                                                                                   |[0x80000778]:clmulr t6, t5, t4<br> [0x8000077c]:sd t6, 136(t2)<br>    |
|  45|[0x80003370]<br>0xAAAAAAAAAAB552AA|- rs2_val == 18446744073708503039<br>                                                                                                                                   |[0x8000078c]:clmulr t6, t5, t4<br> [0x80000790]:sd t6, 144(t2)<br>    |
|  46|[0x80003378]<br>0xAAAAAAAAAAA552AA|- rs2_val == 18446744073709027327<br>                                                                                                                                   |[0x800007a0]:clmulr t6, t5, t4<br> [0x800007a4]:sd t6, 152(t2)<br>    |
|  47|[0x80003380]<br>0xAAAAAAAAAAAD52AA|- rs2_val == 18446744073709289471<br>                                                                                                                                   |[0x800007b4]:clmulr t6, t5, t4<br> [0x800007b8]:sd t6, 160(t2)<br>    |
|  48|[0x80003388]<br>0xAAAAAAAAAAA952AA|- rs2_val == 18446744073709420543<br>                                                                                                                                   |[0x800007c8]:clmulr t6, t5, t4<br> [0x800007cc]:sd t6, 168(t2)<br>    |
|  49|[0x80003390]<br>0xAAAAAAAAAAAB52AA|- rs2_val == 18446744073709486079<br>                                                                                                                                   |[0x800007dc]:clmulr t6, t5, t4<br> [0x800007e0]:sd t6, 176(t2)<br>    |
|  50|[0x80003398]<br>0xAAAAAAAAAAAA52AA|- rs2_val == 18446744073709518847<br>                                                                                                                                   |[0x800007f0]:clmulr t6, t5, t4<br> [0x800007f4]:sd t6, 184(t2)<br>    |
|  51|[0x800033a0]<br>0xAAAAAAAAAAAAD2AA|- rs2_val == 18446744073709535231<br>                                                                                                                                   |[0x80000804]:clmulr t6, t5, t4<br> [0x80000808]:sd t6, 192(t2)<br>    |
|  52|[0x800033a8]<br>0xAAAAAAAAAAAA92AA|- rs2_val == 18446744073709543423<br>                                                                                                                                   |[0x80000818]:clmulr t6, t5, t4<br> [0x8000081c]:sd t6, 200(t2)<br>    |
|  53|[0x800033b0]<br>0xAAAAAAAAAAAAB2AA|- rs2_val == 18446744073709547519<br>                                                                                                                                   |[0x8000082c]:clmulr t6, t5, t4<br> [0x80000830]:sd t6, 208(t2)<br>    |
|  54|[0x800033b8]<br>0xAAAAAAAAAAAAA2AA|- rs2_val == 18446744073709549567<br>                                                                                                                                   |[0x80000840]:clmulr t6, t5, t4<br> [0x80000844]:sd t6, 216(t2)<br>    |
|  55|[0x800033c8]<br>0xAAAAAAAAAAAAAEAA|- rs2_val == 18446744073709551103<br>                                                                                                                                   |[0x80000860]:clmulr t6, t5, t4<br> [0x80000864]:sd t6, 232(t2)<br>    |
|  56|[0x800033d0]<br>0xAAAAAAAAAAAAACAA|- rs2_val == 18446744073709551359<br>                                                                                                                                   |[0x80000870]:clmulr t6, t5, t4<br> [0x80000874]:sd t6, 240(t2)<br>    |
|  57|[0x800033d8]<br>0xAAAAAAAAAAAAADAA|- rs2_val == 18446744073709551487<br>                                                                                                                                   |[0x80000880]:clmulr t6, t5, t4<br> [0x80000884]:sd t6, 248(t2)<br>    |
|  58|[0x800033e0]<br>0xAAAAAAAAAAAAAD2A|- rs2_val == 18446744073709551551<br>                                                                                                                                   |[0x80000890]:clmulr t6, t5, t4<br> [0x80000894]:sd t6, 256(t2)<br>    |
|  59|[0x800033e8]<br>0xAAAAAAAAAAAAAD6A|- rs2_val == 18446744073709551583<br>                                                                                                                                   |[0x800008a0]:clmulr t6, t5, t4<br> [0x800008a4]:sd t6, 264(t2)<br>    |
|  60|[0x800033f0]<br>0xAAAAAAAAAAAAAD4A|- rs2_val == 18446744073709551599<br>                                                                                                                                   |[0x800008b0]:clmulr t6, t5, t4<br> [0x800008b4]:sd t6, 272(t2)<br>    |
|  61|[0x800033f8]<br>0xAAAAAAAAAAAAAD5A|- rs2_val == 18446744073709551607<br>                                                                                                                                   |[0x800008c0]:clmulr t6, t5, t4<br> [0x800008c4]:sd t6, 280(t2)<br>    |
|  62|[0x80003400]<br>0xAAAAAAAAAAAAAD52|- rs2_val == 18446744073709551611<br>                                                                                                                                   |[0x800008d0]:clmulr t6, t5, t4<br> [0x800008d4]:sd t6, 288(t2)<br>    |
|  63|[0x80003408]<br>0xAAAAAAAAAAAAAD56|- rs2_val == 18446744073709551613<br>                                                                                                                                   |[0x800008e0]:clmulr t6, t5, t4<br> [0x800008e4]:sd t6, 296(t2)<br>    |
|  64|[0x80003410]<br>0xAAAAAAAAAAAAAD54|- rs2_val == 18446744073709551614<br>                                                                                                                                   |[0x800008f0]:clmulr t6, t5, t4<br> [0x800008f4]:sd t6, 304(t2)<br>    |
|  65|[0x80003418]<br>0x55555555555556AA|- rs1_val == 9223372036854775807<br>                                                                                                                                    |[0x80000908]:clmulr t6, t5, t4<br> [0x8000090c]:sd t6, 312(t2)<br>    |
|  66|[0x80003420]<br>0xD5555555555550AA|- rs1_val == 13835058055282163711<br>                                                                                                                                   |[0x80000920]:clmulr t6, t5, t4<br> [0x80000924]:sd t6, 320(t2)<br>    |
|  67|[0x80003428]<br>0x95555555555553AA|- rs1_val == 16140901064495857663<br>                                                                                                                                   |[0x80000938]:clmulr t6, t5, t4<br> [0x8000093c]:sd t6, 328(t2)<br>    |
|  68|[0x80003430]<br>0xB55555555555522A|- rs1_val == 17293822569102704639<br>                                                                                                                                   |[0x80000950]:clmulr t6, t5, t4<br> [0x80000954]:sd t6, 336(t2)<br>    |
|  69|[0x80003438]<br>0xA5555555555552EA|- rs1_val == 17870283321406128127<br>                                                                                                                                   |[0x80000968]:clmulr t6, t5, t4<br> [0x8000096c]:sd t6, 344(t2)<br>    |
|  70|[0x80003440]<br>0xAD5555555555528A|- rs1_val == 18158513697557839871<br>                                                                                                                                   |[0x80000980]:clmulr t6, t5, t4<br> [0x80000984]:sd t6, 352(t2)<br>    |
|  71|[0x80003448]<br>0xA9555555555552BA|- rs1_val == 18302628885633695743<br>                                                                                                                                   |[0x80000998]:clmulr t6, t5, t4<br> [0x8000099c]:sd t6, 360(t2)<br>    |
|  72|[0x80003450]<br>0xAB555555555552A2|- rs1_val == 18374686479671623679<br>                                                                                                                                   |[0x800009b0]:clmulr t6, t5, t4<br> [0x800009b4]:sd t6, 368(t2)<br>    |
|  73|[0x80003458]<br>0xAA555555555552AE|- rs1_val == 18410715276690587647<br>                                                                                                                                   |[0x800009c8]:clmulr t6, t5, t4<br> [0x800009cc]:sd t6, 376(t2)<br>    |
|  74|[0x80003460]<br>0xAAD55555555552A8|- rs1_val == 18428729675200069631<br>                                                                                                                                   |[0x800009e0]:clmulr t6, t5, t4<br> [0x800009e4]:sd t6, 384(t2)<br>    |
|  75|[0x80003468]<br>0xAA955555555552AB|- rs1_val == 18437736874454810623<br>                                                                                                                                   |[0x800009f8]:clmulr t6, t5, t4<br> [0x800009fc]:sd t6, 392(t2)<br>    |
|  76|[0x80003470]<br>0xAAB55555555552AA|- rs1_val == 18442240474082181119<br>                                                                                                                                   |[0x80000a10]:clmulr t6, t5, t4<br> [0x80000a14]:sd t6, 400(t2)<br>    |
|  77|[0x80003478]<br>0xAAA55555555552AA|- rs1_val == 18444492273895866367<br>                                                                                                                                   |[0x80000a28]:clmulr t6, t5, t4<br> [0x80000a2c]:sd t6, 408(t2)<br>    |
|  78|[0x80003480]<br>0xAAAD5555555552AA|- rs1_val == 18445618173802708991<br>                                                                                                                                   |[0x80000a40]:clmulr t6, t5, t4<br> [0x80000a44]:sd t6, 416(t2)<br>    |
|  79|[0x80003488]<br>0xAAA95555555552AA|- rs1_val == 18446181123756130303<br>                                                                                                                                   |[0x80000a58]:clmulr t6, t5, t4<br> [0x80000a5c]:sd t6, 424(t2)<br>    |
|  80|[0x80003490]<br>0xAAAB5555555552AA|- rs1_val == 18446462598732840959<br>                                                                                                                                   |[0x80000a70]:clmulr t6, t5, t4<br> [0x80000a74]:sd t6, 432(t2)<br>    |
|  81|[0x80003498]<br>0xAAAA5555555552AA|- rs1_val == 18446603336221196287<br>                                                                                                                                   |[0x80000a88]:clmulr t6, t5, t4<br> [0x80000a8c]:sd t6, 440(t2)<br>    |
|  82|[0x800034a0]<br>0xAAAAD555555552AA|- rs1_val == 18446673704965373951<br>                                                                                                                                   |[0x80000aa0]:clmulr t6, t5, t4<br> [0x80000aa4]:sd t6, 448(t2)<br>    |
|  83|[0x800034a8]<br>0xAAAA9555555552AA|- rs1_val == 18446708889337462783<br>                                                                                                                                   |[0x80000ab8]:clmulr t6, t5, t4<br> [0x80000abc]:sd t6, 456(t2)<br>    |
|  84|[0x800034b0]<br>0xAAAAB555555552AA|- rs1_val == 18446726481523507199<br>                                                                                                                                   |[0x80000ad0]:clmulr t6, t5, t4<br> [0x80000ad4]:sd t6, 464(t2)<br>    |
|  85|[0x800034b8]<br>0xAAAAA555555552AA|- rs1_val == 18446735277616529407<br>                                                                                                                                   |[0x80000ae8]:clmulr t6, t5, t4<br> [0x80000aec]:sd t6, 472(t2)<br>    |
|  86|[0x800034c0]<br>0xAAAAAD55555552AA|- rs1_val == 18446739675663040511<br>                                                                                                                                   |[0x80000b00]:clmulr t6, t5, t4<br> [0x80000b04]:sd t6, 480(t2)<br>    |
|  87|[0x800034c8]<br>0xAAAAA955555552AA|- rs1_val == 18446741874686296063<br>                                                                                                                                   |[0x80000b18]:clmulr t6, t5, t4<br> [0x80000b1c]:sd t6, 488(t2)<br>    |
|  88|[0x800034d0]<br>0xAAAAAB55555552AA|- rs1_val == 18446742974197923839<br>                                                                                                                                   |[0x80000b30]:clmulr t6, t5, t4<br> [0x80000b34]:sd t6, 496(t2)<br>    |
|  89|[0x800034d8]<br>0xAAAAAA55555552AA|- rs1_val == 18446743523953737727<br>                                                                                                                                   |[0x80000b48]:clmulr t6, t5, t4<br> [0x80000b4c]:sd t6, 504(t2)<br>    |
|  90|[0x800034e0]<br>0xAAAAAAD5555552AA|- rs1_val == 18446743798831644671<br>                                                                                                                                   |[0x80000b60]:clmulr t6, t5, t4<br> [0x80000b64]:sd t6, 512(t2)<br>    |
|  91|[0x800034e8]<br>0xAAAAAA95555552AA|- rs1_val == 18446743936270598143<br>                                                                                                                                   |[0x80000b78]:clmulr t6, t5, t4<br> [0x80000b7c]:sd t6, 520(t2)<br>    |
|  92|[0x800034f0]<br>0xAAAAAAB5555552AA|- rs1_val == 18446744004990074879<br>                                                                                                                                   |[0x80000b90]:clmulr t6, t5, t4<br> [0x80000b94]:sd t6, 528(t2)<br>    |
|  93|[0x800034f8]<br>0xAAAAAAA5555552AA|- rs1_val == 18446744039349813247<br>                                                                                                                                   |[0x80000ba8]:clmulr t6, t5, t4<br> [0x80000bac]:sd t6, 536(t2)<br>    |
|  94|[0x80003500]<br>0xAAAAAAAD555552AA|- rs1_val == 18446744056529682431<br>                                                                                                                                   |[0x80000bc0]:clmulr t6, t5, t4<br> [0x80000bc4]:sd t6, 544(t2)<br>    |
|  95|[0x80003508]<br>0xAAAAAAA9555552AA|- rs1_val == 18446744065119617023<br>                                                                                                                                   |[0x80000bd8]:clmulr t6, t5, t4<br> [0x80000bdc]:sd t6, 552(t2)<br>    |
|  96|[0x80003510]<br>0xAAAAAAAB555552AA|- rs1_val == 18446744069414584319<br>                                                                                                                                   |[0x80000bf0]:clmulr t6, t5, t4<br> [0x80000bf4]:sd t6, 560(t2)<br>    |
|  97|[0x80003518]<br>0xAAAAAAAA555552AA|- rs1_val == 18446744071562067967<br>                                                                                                                                   |[0x80000c08]:clmulr t6, t5, t4<br> [0x80000c0c]:sd t6, 568(t2)<br>    |
|  98|[0x80003520]<br>0xAAAAAAAAD55552AA|- rs1_val == 18446744072635809791<br>                                                                                                                                   |[0x80000c1c]:clmulr t6, t5, t4<br> [0x80000c20]:sd t6, 576(t2)<br>    |
|  99|[0x80003528]<br>0xAAAAAAAA955552AA|- rs1_val == 18446744073172680703<br>                                                                                                                                   |[0x80000c30]:clmulr t6, t5, t4<br> [0x80000c34]:sd t6, 584(t2)<br>    |
| 100|[0x80003530]<br>0xAAAAAAAAB55552AA|- rs1_val == 18446744073441116159<br>                                                                                                                                   |[0x80000c44]:clmulr t6, t5, t4<br> [0x80000c48]:sd t6, 592(t2)<br>    |
| 101|[0x80003538]<br>0xAAAAAAAAA55552AA|- rs1_val == 18446744073575333887<br>                                                                                                                                   |[0x80000c58]:clmulr t6, t5, t4<br> [0x80000c5c]:sd t6, 600(t2)<br>    |
| 102|[0x80003540]<br>0xAAAAAAAAAD5552AA|- rs1_val == 18446744073642442751<br>                                                                                                                                   |[0x80000c6c]:clmulr t6, t5, t4<br> [0x80000c70]:sd t6, 608(t2)<br>    |
| 103|[0x80003548]<br>0xAAAAAAAAA95552AA|- rs1_val == 18446744073675997183<br>                                                                                                                                   |[0x80000c80]:clmulr t6, t5, t4<br> [0x80000c84]:sd t6, 616(t2)<br>    |
| 104|[0x80003550]<br>0xAAAAAAAAAB5552AA|- rs1_val == 18446744073692774399<br>                                                                                                                                   |[0x80000c94]:clmulr t6, t5, t4<br> [0x80000c98]:sd t6, 624(t2)<br>    |
| 105|[0x80003558]<br>0xAAAAAAAAAA5552AA|- rs1_val == 18446744073701163007<br>                                                                                                                                   |[0x80000ca8]:clmulr t6, t5, t4<br> [0x80000cac]:sd t6, 632(t2)<br>    |
| 106|[0x80003560]<br>0xAAAAAAAAAAD552AA|- rs1_val == 18446744073705357311<br>                                                                                                                                   |[0x80000cbc]:clmulr t6, t5, t4<br> [0x80000cc0]:sd t6, 640(t2)<br>    |
| 107|[0x80003568]<br>0xAAAAAAAAAA9552AA|- rs1_val == 18446744073707454463<br>                                                                                                                                   |[0x80000cd0]:clmulr t6, t5, t4<br> [0x80000cd4]:sd t6, 648(t2)<br>    |
| 108|[0x80003570]<br>0xAAAAAAAAAAB552AA|- rs1_val == 18446744073708503039<br>                                                                                                                                   |[0x80000ce4]:clmulr t6, t5, t4<br> [0x80000ce8]:sd t6, 656(t2)<br>    |
| 109|[0x80003578]<br>0xAAAAAAAAAAA552AA|- rs1_val == 18446744073709027327<br>                                                                                                                                   |[0x80000cf8]:clmulr t6, t5, t4<br> [0x80000cfc]:sd t6, 664(t2)<br>    |
| 110|[0x80003580]<br>0xAAAAAAAAAAAD52AA|- rs1_val == 18446744073709289471<br>                                                                                                                                   |[0x80000d0c]:clmulr t6, t5, t4<br> [0x80000d10]:sd t6, 672(t2)<br>    |
| 111|[0x80003588]<br>0xAAAAAAAAAAA952AA|- rs1_val == 18446744073709420543<br>                                                                                                                                   |[0x80000d20]:clmulr t6, t5, t4<br> [0x80000d24]:sd t6, 680(t2)<br>    |
| 112|[0x80003590]<br>0xAAAAAAAAAAAB52AA|- rs1_val == 18446744073709486079<br>                                                                                                                                   |[0x80000d34]:clmulr t6, t5, t4<br> [0x80000d38]:sd t6, 688(t2)<br>    |
| 113|[0x80003598]<br>0xAAAAAAAAAAAA52AA|- rs1_val == 18446744073709518847<br>                                                                                                                                   |[0x80000d48]:clmulr t6, t5, t4<br> [0x80000d4c]:sd t6, 696(t2)<br>    |
| 114|[0x800035a0]<br>0xAAAAAAAAAAAAD2AA|- rs1_val == 18446744073709535231<br>                                                                                                                                   |[0x80000d5c]:clmulr t6, t5, t4<br> [0x80000d60]:sd t6, 704(t2)<br>    |
| 115|[0x800035a8]<br>0xAAAAAAAAAAAA92AA|- rs1_val == 18446744073709543423<br>                                                                                                                                   |[0x80000d70]:clmulr t6, t5, t4<br> [0x80000d74]:sd t6, 712(t2)<br>    |
| 116|[0x800035b0]<br>0xAAAAAAAAAAAAB2AA|- rs1_val == 18446744073709547519<br>                                                                                                                                   |[0x80000d84]:clmulr t6, t5, t4<br> [0x80000d88]:sd t6, 720(t2)<br>    |
| 117|[0x800035b8]<br>0xAAAAAAAAAAAAA2AA|- rs1_val == 18446744073709549567<br>                                                                                                                                   |[0x80000d98]:clmulr t6, t5, t4<br> [0x80000d9c]:sd t6, 728(t2)<br>    |
| 118|[0x800035c0]<br>0xAAAAAAAAAAAAAEAA|- rs1_val == 18446744073709551103<br>                                                                                                                                   |[0x80000da8]:clmulr t6, t5, t4<br> [0x80000dac]:sd t6, 736(t2)<br>    |
| 119|[0x800035c8]<br>0xAAAAAAAAAAAAACAA|- rs1_val == 18446744073709551359<br>                                                                                                                                   |[0x80000db8]:clmulr t6, t5, t4<br> [0x80000dbc]:sd t6, 744(t2)<br>    |
| 120|[0x800035d0]<br>0xAAAAAAAAAAAAADAA|- rs1_val == 18446744073709551487<br>                                                                                                                                   |[0x80000dc8]:clmulr t6, t5, t4<br> [0x80000dcc]:sd t6, 752(t2)<br>    |
| 121|[0x800035d8]<br>0xAAAAAAAAAAAAAD2A|- rs1_val == 18446744073709551551<br>                                                                                                                                   |[0x80000dd8]:clmulr t6, t5, t4<br> [0x80000ddc]:sd t6, 760(t2)<br>    |
| 122|[0x800035e0]<br>0xAAAAAAAAAAAAAD6A|- rs1_val == 18446744073709551583<br>                                                                                                                                   |[0x80000de8]:clmulr t6, t5, t4<br> [0x80000dec]:sd t6, 768(t2)<br>    |
| 123|[0x800035e8]<br>0xAAAAAAAAAAAAAD4A|- rs1_val == 18446744073709551599<br>                                                                                                                                   |[0x80000df8]:clmulr t6, t5, t4<br> [0x80000dfc]:sd t6, 776(t2)<br>    |
| 124|[0x800035f0]<br>0xAAAAAAAAAAAAAD5A|- rs1_val == 18446744073709551607<br>                                                                                                                                   |[0x80000e08]:clmulr t6, t5, t4<br> [0x80000e0c]:sd t6, 784(t2)<br>    |
| 125|[0x800035f8]<br>0xAAAAAAAAAAAAAD52|- rs1_val == 18446744073709551611<br>                                                                                                                                   |[0x80000e18]:clmulr t6, t5, t4<br> [0x80000e1c]:sd t6, 792(t2)<br>    |
| 126|[0x80003600]<br>0xAAAAAAAAAAAAAD56|- rs1_val == 18446744073709551613<br>                                                                                                                                   |[0x80000e28]:clmulr t6, t5, t4<br> [0x80000e2c]:sd t6, 800(t2)<br>    |
| 127|[0x80003608]<br>0xAAAAAAAAAAAAAD54|- rs1_val == 18446744073709551614<br>                                                                                                                                   |[0x80000e38]:clmulr t6, t5, t4<br> [0x80000e3c]:sd t6, 808(t2)<br>    |
| 128|[0x80003610]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == 9223372036854775808<br>                                                                                                                                    |[0x80000e4c]:clmulr t6, t5, t4<br> [0x80000e50]:sd t6, 816(t2)<br>    |
| 129|[0x80003618]<br>0x7FFFFFFFFFFFFDFF|- rs2_val == 4611686018427387904<br>                                                                                                                                    |[0x80000e60]:clmulr t6, t5, t4<br> [0x80000e64]:sd t6, 824(t2)<br>    |
| 130|[0x80003620]<br>0x3FFFFFFFFFFFFEFF|- rs2_val == 2305843009213693952<br>                                                                                                                                    |[0x80000e74]:clmulr t6, t5, t4<br> [0x80000e78]:sd t6, 832(t2)<br>    |
| 131|[0x80003628]<br>0x1FFFFFFFFFFFFF7F|- rs2_val == 1152921504606846976<br>                                                                                                                                    |[0x80000e88]:clmulr t6, t5, t4<br> [0x80000e8c]:sd t6, 840(t2)<br>    |
| 132|[0x80003630]<br>0x0FFFFFFFFFFFFFBF|- rs2_val == 576460752303423488<br>                                                                                                                                     |[0x80000e9c]:clmulr t6, t5, t4<br> [0x80000ea0]:sd t6, 848(t2)<br>    |
| 133|[0x80003638]<br>0x07FFFFFFFFFFFFDF|- rs2_val == 288230376151711744<br>                                                                                                                                     |[0x80000eb0]:clmulr t6, t5, t4<br> [0x80000eb4]:sd t6, 856(t2)<br>    |
| 134|[0x80003640]<br>0x03FFFFFFFFFFFFEF|- rs2_val == 144115188075855872<br>                                                                                                                                     |[0x80000ec4]:clmulr t6, t5, t4<br> [0x80000ec8]:sd t6, 864(t2)<br>    |
| 135|[0x80003648]<br>0x01FFFFFFFFFFFFF7|- rs2_val == 72057594037927936<br>                                                                                                                                      |[0x80000ed8]:clmulr t6, t5, t4<br> [0x80000edc]:sd t6, 872(t2)<br>    |
| 136|[0x80003650]<br>0x00FFFFFFFFFFFFFB|- rs2_val == 36028797018963968<br>                                                                                                                                      |[0x80000eec]:clmulr t6, t5, t4<br> [0x80000ef0]:sd t6, 880(t2)<br>    |
| 137|[0x80003658]<br>0x007FFFFFFFFFFFFD|- rs2_val == 18014398509481984<br>                                                                                                                                      |[0x80000f00]:clmulr t6, t5, t4<br> [0x80000f04]:sd t6, 888(t2)<br>    |
| 138|[0x80003660]<br>0x0000000000000001|- rs1_val == 1<br>                                                                                                                                                      |[0x80000f10]:clmulr t6, t5, t4<br> [0x80000f14]:sd t6, 896(t2)<br>    |
| 139|[0x80003668]<br>0xCCCCCCCCCCCCC999|- rs2_val == 12297829382473034410<br>                                                                                                                                   |[0x80000f3c]:clmulr t6, t5, t4<br> [0x80000f40]:sd t6, 904(t2)<br>    |
| 140|[0x80003670]<br>0x66666666666664CC|- rs2_val == 6148914691236517205<br>                                                                                                                                    |[0x80000f68]:clmulr t6, t5, t4<br> [0x80000f6c]:sd t6, 912(t2)<br>    |
| 141|[0x80003678]<br>0xCCCCCCCCCCCCC999|- rs1_val == 12297829382473034410<br>                                                                                                                                   |[0x80000f94]:clmulr t6, t5, t4<br> [0x80000f98]:sd t6, 920(t2)<br>    |
| 142|[0x80003680]<br>0x66666666666664CC|- rs1_val == 6148914691236517205<br>                                                                                                                                    |[0x80000fc0]:clmulr t6, t5, t4<br> [0x80000fc4]:sd t6, 928(t2)<br>    |
| 143|[0x80003688]<br>0x0000000000000000|- rs2_val == 1<br> - rs1_val==0 and rs2_val==1<br>                                                                                                                      |[0x80000fd0]:clmulr t6, t5, t4<br> [0x80000fd4]:sd t6, 936(t2)<br>    |
| 144|[0x80003690]<br>0x0000000000000000|- rs2_val == 4096<br> - rs1_val==0 and rs2_val==4096<br>                                                                                                                |[0x80000fe0]:clmulr t6, t5, t4<br> [0x80000fe4]:sd t6, 944(t2)<br>    |
| 145|[0x80003698]<br>0x0000000000000000|- rs1_val==1 and rs2_val==0<br>                                                                                                                                         |[0x80000ff0]:clmulr t6, t5, t4<br> [0x80000ff4]:sd t6, 952(t2)<br>    |
| 146|[0x800036a0]<br>0x0000000000000000|- rs1_val==1 and rs2_val==1<br>                                                                                                                                         |[0x80001000]:clmulr t6, t5, t4<br> [0x80001004]:sd t6, 960(t2)<br>    |
| 147|[0x800036a8]<br>0x0000000000000000|- rs1_val==1 and rs2_val==4096<br>                                                                                                                                      |[0x80001010]:clmulr t6, t5, t4<br> [0x80001014]:sd t6, 968(t2)<br>    |
| 148|[0x800036b0]<br>0x003FFFFFFFFFFFFE|- rs2_val == 9007199254740992<br>                                                                                                                                       |[0x80001024]:clmulr t6, t5, t4<br> [0x80001028]:sd t6, 976(t2)<br>    |
| 149|[0x800036b8]<br>0x001FFFFFFFFFFFFF|- rs2_val == 4503599627370496<br>                                                                                                                                       |[0x80001038]:clmulr t6, t5, t4<br> [0x8000103c]:sd t6, 984(t2)<br>    |
| 150|[0x800036c0]<br>0x000FFFFFFFFFFFFF|- rs2_val == 2251799813685248<br>                                                                                                                                       |[0x8000104c]:clmulr t6, t5, t4<br> [0x80001050]:sd t6, 992(t2)<br>    |
| 151|[0x800036c8]<br>0x0007FFFFFFFFFFFF|- rs2_val == 1125899906842624<br>                                                                                                                                       |[0x80001060]:clmulr t6, t5, t4<br> [0x80001064]:sd t6, 1000(t2)<br>   |
| 152|[0x800036d0]<br>0x0003FFFFFFFFFFFF|- rs2_val == 562949953421312<br>                                                                                                                                        |[0x80001074]:clmulr t6, t5, t4<br> [0x80001078]:sd t6, 1008(t2)<br>   |
| 153|[0x800036d8]<br>0x0001FFFFFFFFFFFF|- rs2_val == 281474976710656<br>                                                                                                                                        |[0x80001088]:clmulr t6, t5, t4<br> [0x8000108c]:sd t6, 1016(t2)<br>   |
| 154|[0x800036e0]<br>0x0000FFFFFFFFFFFF|- rs2_val == 140737488355328<br>                                                                                                                                        |[0x8000109c]:clmulr t6, t5, t4<br> [0x800010a0]:sd t6, 1024(t2)<br>   |
| 155|[0x800036e8]<br>0x00007FFFFFFFFFFF|- rs2_val == 70368744177664<br>                                                                                                                                         |[0x800010b0]:clmulr t6, t5, t4<br> [0x800010b4]:sd t6, 1032(t2)<br>   |
| 156|[0x800036f0]<br>0x00003FFFFFFFFFFF|- rs2_val == 35184372088832<br>                                                                                                                                         |[0x800010c4]:clmulr t6, t5, t4<br> [0x800010c8]:sd t6, 1040(t2)<br>   |
| 157|[0x800036f8]<br>0x00001FFFFFFFFFFF|- rs2_val == 17592186044416<br>                                                                                                                                         |[0x800010d8]:clmulr t6, t5, t4<br> [0x800010dc]:sd t6, 1048(t2)<br>   |
| 158|[0x80003700]<br>0x00000FFFFFFFFFFF|- rs2_val == 8796093022208<br>                                                                                                                                          |[0x800010ec]:clmulr t6, t5, t4<br> [0x800010f0]:sd t6, 1056(t2)<br>   |
| 159|[0x80003708]<br>0x000007FFFFFFFFFF|- rs2_val == 4398046511104<br>                                                                                                                                          |[0x80001100]:clmulr t6, t5, t4<br> [0x80001104]:sd t6, 1064(t2)<br>   |
| 160|[0x80003710]<br>0x000003FFFFFFFFFF|- rs2_val == 2199023255552<br>                                                                                                                                          |[0x80001114]:clmulr t6, t5, t4<br> [0x80001118]:sd t6, 1072(t2)<br>   |
| 161|[0x80003718]<br>0x000001FFFFFFFFFF|- rs2_val == 1099511627776<br>                                                                                                                                          |[0x80001128]:clmulr t6, t5, t4<br> [0x8000112c]:sd t6, 1080(t2)<br>   |
| 162|[0x80003720]<br>0x000000FFFFFFFFFF|- rs2_val == 549755813888<br>                                                                                                                                           |[0x8000113c]:clmulr t6, t5, t4<br> [0x80001140]:sd t6, 1088(t2)<br>   |
| 163|[0x80003728]<br>0x0000007FFFFFFFFF|- rs2_val == 274877906944<br>                                                                                                                                           |[0x80001150]:clmulr t6, t5, t4<br> [0x80001154]:sd t6, 1096(t2)<br>   |
| 164|[0x80003730]<br>0x0000003FFFFFFFFF|- rs2_val == 137438953472<br>                                                                                                                                           |[0x80001164]:clmulr t6, t5, t4<br> [0x80001168]:sd t6, 1104(t2)<br>   |
| 165|[0x80003738]<br>0x0000001FFFFFFFFF|- rs2_val == 68719476736<br>                                                                                                                                            |[0x80001178]:clmulr t6, t5, t4<br> [0x8000117c]:sd t6, 1112(t2)<br>   |
| 166|[0x80003740]<br>0x0000000FFFFFFFFF|- rs2_val == 34359738368<br>                                                                                                                                            |[0x8000118c]:clmulr t6, t5, t4<br> [0x80001190]:sd t6, 1120(t2)<br>   |
| 167|[0x80003748]<br>0x00000007FFFFFFFF|- rs2_val == 17179869184<br>                                                                                                                                            |[0x800011a0]:clmulr t6, t5, t4<br> [0x800011a4]:sd t6, 1128(t2)<br>   |
| 168|[0x80003750]<br>0x00000003FFFFFFFF|- rs2_val == 8589934592<br>                                                                                                                                             |[0x800011b4]:clmulr t6, t5, t4<br> [0x800011b8]:sd t6, 1136(t2)<br>   |
| 169|[0x80003758]<br>0x00000001FFFFFFFF|- rs2_val == 4294967296<br>                                                                                                                                             |[0x800011c8]:clmulr t6, t5, t4<br> [0x800011cc]:sd t6, 1144(t2)<br>   |
| 170|[0x80003760]<br>0x00000000FFFFFFFF|- rs2_val == 2147483648<br>                                                                                                                                             |[0x800011dc]:clmulr t6, t5, t4<br> [0x800011e0]:sd t6, 1152(t2)<br>   |
| 171|[0x80003768]<br>0x000000007FFFFFFF|- rs2_val == 1073741824<br>                                                                                                                                             |[0x800011ec]:clmulr t6, t5, t4<br> [0x800011f0]:sd t6, 1160(t2)<br>   |
| 172|[0x80003770]<br>0x000000003FFFFFFF|- rs2_val == 536870912<br>                                                                                                                                              |[0x800011fc]:clmulr t6, t5, t4<br> [0x80001200]:sd t6, 1168(t2)<br>   |
| 173|[0x80003778]<br>0x000000001FFFFFFF|- rs2_val == 268435456<br>                                                                                                                                              |[0x8000120c]:clmulr t6, t5, t4<br> [0x80001210]:sd t6, 1176(t2)<br>   |
| 174|[0x80003780]<br>0x000000000FFFFFFF|- rs2_val == 134217728<br>                                                                                                                                              |[0x8000121c]:clmulr t6, t5, t4<br> [0x80001220]:sd t6, 1184(t2)<br>   |
| 175|[0x80003788]<br>0x0000000007FFFFFF|- rs2_val == 67108864<br>                                                                                                                                               |[0x8000122c]:clmulr t6, t5, t4<br> [0x80001230]:sd t6, 1192(t2)<br>   |
| 176|[0x80003790]<br>0x0000000003FFFFFF|- rs2_val == 33554432<br>                                                                                                                                               |[0x8000123c]:clmulr t6, t5, t4<br> [0x80001240]:sd t6, 1200(t2)<br>   |
| 177|[0x80003798]<br>0x0000000001FFFFFF|- rs2_val == 16777216<br>                                                                                                                                               |[0x8000124c]:clmulr t6, t5, t4<br> [0x80001250]:sd t6, 1208(t2)<br>   |
| 178|[0x800037a0]<br>0x0000000000FFFFFF|- rs2_val == 8388608<br>                                                                                                                                                |[0x8000125c]:clmulr t6, t5, t4<br> [0x80001260]:sd t6, 1216(t2)<br>   |
| 179|[0x800037a8]<br>0x00000000007FFFFF|- rs2_val == 4194304<br>                                                                                                                                                |[0x8000126c]:clmulr t6, t5, t4<br> [0x80001270]:sd t6, 1224(t2)<br>   |
| 180|[0x800037b0]<br>0x00000000003FFFFF|- rs2_val == 2097152<br>                                                                                                                                                |[0x8000127c]:clmulr t6, t5, t4<br> [0x80001280]:sd t6, 1232(t2)<br>   |
| 181|[0x800037b8]<br>0x00000000001FFFFF|- rs2_val == 1048576<br>                                                                                                                                                |[0x8000128c]:clmulr t6, t5, t4<br> [0x80001290]:sd t6, 1240(t2)<br>   |
| 182|[0x800037c0]<br>0x00000000000FFFFF|- rs2_val == 524288<br>                                                                                                                                                 |[0x8000129c]:clmulr t6, t5, t4<br> [0x800012a0]:sd t6, 1248(t2)<br>   |
| 183|[0x800037c8]<br>0x000000000007FFFF|- rs2_val == 262144<br>                                                                                                                                                 |[0x800012ac]:clmulr t6, t5, t4<br> [0x800012b0]:sd t6, 1256(t2)<br>   |
| 184|[0x800037d0]<br>0x000000000003FFFF|- rs2_val == 131072<br>                                                                                                                                                 |[0x800012bc]:clmulr t6, t5, t4<br> [0x800012c0]:sd t6, 1264(t2)<br>   |
| 185|[0x800037d8]<br>0x000000000001FFFF|- rs2_val == 65536<br>                                                                                                                                                  |[0x800012cc]:clmulr t6, t5, t4<br> [0x800012d0]:sd t6, 1272(t2)<br>   |
| 186|[0x800037e0]<br>0x000000000000FFFF|- rs2_val == 32768<br>                                                                                                                                                  |[0x800012dc]:clmulr t6, t5, t4<br> [0x800012e0]:sd t6, 1280(t2)<br>   |
| 187|[0x800037e8]<br>0x0000000000007FFF|- rs2_val == 16384<br>                                                                                                                                                  |[0x800012ec]:clmulr t6, t5, t4<br> [0x800012f0]:sd t6, 1288(t2)<br>   |
| 188|[0x800037f0]<br>0x0000000000003FFF|- rs2_val == 8192<br>                                                                                                                                                   |[0x800012fc]:clmulr t6, t5, t4<br> [0x80001300]:sd t6, 1296(t2)<br>   |
| 189|[0x800037f8]<br>0x0000000000000FFF|- rs2_val == 2048<br>                                                                                                                                                   |[0x80001310]:clmulr t6, t5, t4<br> [0x80001314]:sd t6, 1304(t2)<br>   |
| 190|[0x80003800]<br>0x00000000000007FF|- rs2_val == 1024<br>                                                                                                                                                   |[0x80001320]:clmulr t6, t5, t4<br> [0x80001324]:sd t6, 1312(t2)<br>   |
| 191|[0x80003808]<br>0x00000000000003FF|- rs2_val == 512<br>                                                                                                                                                    |[0x80001330]:clmulr t6, t5, t4<br> [0x80001334]:sd t6, 1320(t2)<br>   |
| 192|[0x80003810]<br>0x00000000000001FF|- rs2_val == 256<br>                                                                                                                                                    |[0x80001340]:clmulr t6, t5, t4<br> [0x80001344]:sd t6, 1328(t2)<br>   |
| 193|[0x80003818]<br>0x00000000000000FF|- rs2_val == 128<br>                                                                                                                                                    |[0x80001350]:clmulr t6, t5, t4<br> [0x80001354]:sd t6, 1336(t2)<br>   |
| 194|[0x80003820]<br>0x000000000000007F|- rs2_val == 64<br>                                                                                                                                                     |[0x80001360]:clmulr t6, t5, t4<br> [0x80001364]:sd t6, 1344(t2)<br>   |
| 195|[0x80003828]<br>0x000000000000003F|- rs2_val == 32<br>                                                                                                                                                     |[0x80001370]:clmulr t6, t5, t4<br> [0x80001374]:sd t6, 1352(t2)<br>   |
| 196|[0x80003830]<br>0x000000000000001F|- rs2_val == 16<br>                                                                                                                                                     |[0x80001380]:clmulr t6, t5, t4<br> [0x80001384]:sd t6, 1360(t2)<br>   |
| 197|[0x80003838]<br>0x000000000000000F|- rs2_val == 8<br>                                                                                                                                                      |[0x80001390]:clmulr t6, t5, t4<br> [0x80001394]:sd t6, 1368(t2)<br>   |
| 198|[0x80003840]<br>0x0000000000000007|- rs2_val == 4<br>                                                                                                                                                      |[0x800013a0]:clmulr t6, t5, t4<br> [0x800013a4]:sd t6, 1376(t2)<br>   |
| 199|[0x80003848]<br>0x0000000000000003|- rs2_val == 2<br>                                                                                                                                                      |[0x800013b0]:clmulr t6, t5, t4<br> [0x800013b4]:sd t6, 1384(t2)<br>   |
| 200|[0x80003850]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == 9223372036854775808<br>                                                                                                                                    |[0x800013c4]:clmulr t6, t5, t4<br> [0x800013c8]:sd t6, 1392(t2)<br>   |
| 201|[0x80003858]<br>0x7FFFFFFFFFFFFDFF|- rs1_val == 4611686018427387904<br>                                                                                                                                    |[0x800013d8]:clmulr t6, t5, t4<br> [0x800013dc]:sd t6, 1400(t2)<br>   |
| 202|[0x80003860]<br>0x3FFFFFFFFFFFFEFF|- rs1_val == 2305843009213693952<br>                                                                                                                                    |[0x800013ec]:clmulr t6, t5, t4<br> [0x800013f0]:sd t6, 1408(t2)<br>   |
| 203|[0x80003868]<br>0x1FFFFFFFFFFFFF7F|- rs1_val == 1152921504606846976<br>                                                                                                                                    |[0x80001400]:clmulr t6, t5, t4<br> [0x80001404]:sd t6, 1416(t2)<br>   |
| 204|[0x80003870]<br>0x0FFFFFFFFFFFFFBF|- rs1_val == 576460752303423488<br>                                                                                                                                     |[0x80001414]:clmulr t6, t5, t4<br> [0x80001418]:sd t6, 1424(t2)<br>   |
| 205|[0x80003878]<br>0x07FFFFFFFFFFFFDF|- rs1_val == 288230376151711744<br>                                                                                                                                     |[0x80001428]:clmulr t6, t5, t4<br> [0x8000142c]:sd t6, 1432(t2)<br>   |
| 206|[0x80003880]<br>0x03FFFFFFFFFFFFEF|- rs1_val == 144115188075855872<br>                                                                                                                                     |[0x8000143c]:clmulr t6, t5, t4<br> [0x80001440]:sd t6, 1440(t2)<br>   |
| 207|[0x80003888]<br>0x01FFFFFFFFFFFFF7|- rs1_val == 72057594037927936<br>                                                                                                                                      |[0x80001450]:clmulr t6, t5, t4<br> [0x80001454]:sd t6, 1448(t2)<br>   |
| 208|[0x80003890]<br>0x00FFFFFFFFFFFFFB|- rs1_val == 36028797018963968<br>                                                                                                                                      |[0x80001464]:clmulr t6, t5, t4<br> [0x80001468]:sd t6, 1456(t2)<br>   |
| 209|[0x80003898]<br>0x007FFFFFFFFFFFFD|- rs1_val == 18014398509481984<br>                                                                                                                                      |[0x80001478]:clmulr t6, t5, t4<br> [0x8000147c]:sd t6, 1464(t2)<br>   |
| 210|[0x800038a0]<br>0x003FFFFFFFFFFFFE|- rs1_val == 9007199254740992<br>                                                                                                                                       |[0x8000148c]:clmulr t6, t5, t4<br> [0x80001490]:sd t6, 1472(t2)<br>   |
| 211|[0x800038a8]<br>0x001FFFFFFFFFFFFF|- rs1_val == 4503599627370496<br>                                                                                                                                       |[0x800014a0]:clmulr t6, t5, t4<br> [0x800014a4]:sd t6, 1480(t2)<br>   |
| 212|[0x800038b0]<br>0x000FFFFFFFFFFFFF|- rs1_val == 2251799813685248<br>                                                                                                                                       |[0x800014b4]:clmulr t6, t5, t4<br> [0x800014b8]:sd t6, 1488(t2)<br>   |
| 213|[0x800038b8]<br>0x0007FFFFFFFFFFFF|- rs1_val == 1125899906842624<br>                                                                                                                                       |[0x800014c8]:clmulr t6, t5, t4<br> [0x800014cc]:sd t6, 1496(t2)<br>   |
| 214|[0x800038c0]<br>0x0003FFFFFFFFFFFF|- rs1_val == 562949953421312<br>                                                                                                                                        |[0x800014dc]:clmulr t6, t5, t4<br> [0x800014e0]:sd t6, 1504(t2)<br>   |
| 215|[0x800038c8]<br>0x0001FFFFFFFFFFFF|- rs1_val == 281474976710656<br>                                                                                                                                        |[0x800014f0]:clmulr t6, t5, t4<br> [0x800014f4]:sd t6, 1512(t2)<br>   |
| 216|[0x800038d0]<br>0x0000FFFFFFFFFFFF|- rs1_val == 140737488355328<br>                                                                                                                                        |[0x80001504]:clmulr t6, t5, t4<br> [0x80001508]:sd t6, 1520(t2)<br>   |
| 217|[0x800038d8]<br>0x00007FFFFFFFFFFF|- rs1_val == 70368744177664<br>                                                                                                                                         |[0x80001518]:clmulr t6, t5, t4<br> [0x8000151c]:sd t6, 1528(t2)<br>   |
| 218|[0x800038e0]<br>0x00003FFFFFFFFFFF|- rs1_val == 35184372088832<br>                                                                                                                                         |[0x8000152c]:clmulr t6, t5, t4<br> [0x80001530]:sd t6, 1536(t2)<br>   |
| 219|[0x800038e8]<br>0x00001FFFFFFFFFFF|- rs1_val == 17592186044416<br>                                                                                                                                         |[0x80001540]:clmulr t6, t5, t4<br> [0x80001544]:sd t6, 1544(t2)<br>   |
| 220|[0x800038f0]<br>0x00000FFFFFFFFFFF|- rs1_val == 8796093022208<br>                                                                                                                                          |[0x80001554]:clmulr t6, t5, t4<br> [0x80001558]:sd t6, 1552(t2)<br>   |
| 221|[0x800038f8]<br>0x000007FFFFFFFFFF|- rs1_val == 4398046511104<br>                                                                                                                                          |[0x80001568]:clmulr t6, t5, t4<br> [0x8000156c]:sd t6, 1560(t2)<br>   |
| 222|[0x80003900]<br>0x000003FFFFFFFFFF|- rs1_val == 2199023255552<br>                                                                                                                                          |[0x8000157c]:clmulr t6, t5, t4<br> [0x80001580]:sd t6, 1568(t2)<br>   |
| 223|[0x80003908]<br>0x000001FFFFFFFFFF|- rs1_val == 1099511627776<br>                                                                                                                                          |[0x80001590]:clmulr t6, t5, t4<br> [0x80001594]:sd t6, 1576(t2)<br>   |
| 224|[0x80003910]<br>0x000000FFFFFFFFFF|- rs1_val == 549755813888<br>                                                                                                                                           |[0x800015a4]:clmulr t6, t5, t4<br> [0x800015a8]:sd t6, 1584(t2)<br>   |
| 225|[0x80003918]<br>0x0000007FFFFFFFFF|- rs1_val == 274877906944<br>                                                                                                                                           |[0x800015b8]:clmulr t6, t5, t4<br> [0x800015bc]:sd t6, 1592(t2)<br>   |
| 226|[0x80003920]<br>0x0000003FFFFFFFFF|- rs1_val == 137438953472<br>                                                                                                                                           |[0x800015cc]:clmulr t6, t5, t4<br> [0x800015d0]:sd t6, 1600(t2)<br>   |
| 227|[0x80003928]<br>0x0000001FFFFFFFFF|- rs1_val == 68719476736<br>                                                                                                                                            |[0x800015e0]:clmulr t6, t5, t4<br> [0x800015e4]:sd t6, 1608(t2)<br>   |
| 228|[0x80003930]<br>0x0000000FFFFFFFFF|- rs1_val == 34359738368<br>                                                                                                                                            |[0x800015f4]:clmulr t6, t5, t4<br> [0x800015f8]:sd t6, 1616(t2)<br>   |
| 229|[0x80003938]<br>0x00000007FFFFFFFF|- rs1_val == 17179869184<br>                                                                                                                                            |[0x80001608]:clmulr t6, t5, t4<br> [0x8000160c]:sd t6, 1624(t2)<br>   |
| 230|[0x80003940]<br>0x00000003FFFFFFFF|- rs1_val == 8589934592<br>                                                                                                                                             |[0x8000161c]:clmulr t6, t5, t4<br> [0x80001620]:sd t6, 1632(t2)<br>   |
| 231|[0x80003948]<br>0x00000001FFFFFFFF|- rs1_val == 4294967296<br>                                                                                                                                             |[0x80001630]:clmulr t6, t5, t4<br> [0x80001634]:sd t6, 1640(t2)<br>   |
| 232|[0x80003950]<br>0x00000000FFFFFFFF|- rs1_val == 2147483648<br>                                                                                                                                             |[0x80001644]:clmulr t6, t5, t4<br> [0x80001648]:sd t6, 1648(t2)<br>   |
| 233|[0x80003958]<br>0x000000007FFFFFFF|- rs1_val == 1073741824<br>                                                                                                                                             |[0x80001654]:clmulr t6, t5, t4<br> [0x80001658]:sd t6, 1656(t2)<br>   |
| 234|[0x80003960]<br>0x000000003FFFFFFF|- rs1_val == 536870912<br>                                                                                                                                              |[0x80001664]:clmulr t6, t5, t4<br> [0x80001668]:sd t6, 1664(t2)<br>   |
| 235|[0x80003968]<br>0x000000001FFFFFFF|- rs1_val == 268435456<br>                                                                                                                                              |[0x80001674]:clmulr t6, t5, t4<br> [0x80001678]:sd t6, 1672(t2)<br>   |
| 236|[0x80003970]<br>0x000000000FFFFFFF|- rs1_val == 134217728<br>                                                                                                                                              |[0x80001684]:clmulr t6, t5, t4<br> [0x80001688]:sd t6, 1680(t2)<br>   |
| 237|[0x80003978]<br>0x0000000007FFFFFF|- rs1_val == 67108864<br>                                                                                                                                               |[0x80001694]:clmulr t6, t5, t4<br> [0x80001698]:sd t6, 1688(t2)<br>   |
| 238|[0x80003980]<br>0x0000000003FFFFFF|- rs1_val == 33554432<br>                                                                                                                                               |[0x800016a4]:clmulr t6, t5, t4<br> [0x800016a8]:sd t6, 1696(t2)<br>   |
| 239|[0x80003988]<br>0x0000000001FFFFFF|- rs1_val == 16777216<br>                                                                                                                                               |[0x800016b4]:clmulr t6, t5, t4<br> [0x800016b8]:sd t6, 1704(t2)<br>   |
| 240|[0x80003990]<br>0x0000000000FFFFFF|- rs1_val == 8388608<br>                                                                                                                                                |[0x800016c4]:clmulr t6, t5, t4<br> [0x800016c8]:sd t6, 1712(t2)<br>   |
| 241|[0x80003998]<br>0x00000000007FFFFF|- rs1_val == 4194304<br>                                                                                                                                                |[0x800016d4]:clmulr t6, t5, t4<br> [0x800016d8]:sd t6, 1720(t2)<br>   |
| 242|[0x800039a0]<br>0x00000000003FFFFF|- rs1_val == 2097152<br>                                                                                                                                                |[0x800016e4]:clmulr t6, t5, t4<br> [0x800016e8]:sd t6, 1728(t2)<br>   |
| 243|[0x800039a8]<br>0x00000000001FFFFF|- rs1_val == 1048576<br>                                                                                                                                                |[0x800016f4]:clmulr t6, t5, t4<br> [0x800016f8]:sd t6, 1736(t2)<br>   |
| 244|[0x800039b0]<br>0x00000000000FFFFF|- rs1_val == 524288<br>                                                                                                                                                 |[0x80001704]:clmulr t6, t5, t4<br> [0x80001708]:sd t6, 1744(t2)<br>   |
| 245|[0x800039b8]<br>0x000000000007FFFF|- rs1_val == 262144<br>                                                                                                                                                 |[0x80001714]:clmulr t6, t5, t4<br> [0x80001718]:sd t6, 1752(t2)<br>   |
| 246|[0x800039c0]<br>0x000000000003FFFF|- rs1_val == 131072<br>                                                                                                                                                 |[0x80001724]:clmulr t6, t5, t4<br> [0x80001728]:sd t6, 1760(t2)<br>   |
| 247|[0x800039c8]<br>0x000000000001FFFF|- rs1_val == 65536<br>                                                                                                                                                  |[0x80001734]:clmulr t6, t5, t4<br> [0x80001738]:sd t6, 1768(t2)<br>   |
| 248|[0x800039d0]<br>0x000000000000FFFF|- rs1_val == 32768<br>                                                                                                                                                  |[0x80001744]:clmulr t6, t5, t4<br> [0x80001748]:sd t6, 1776(t2)<br>   |
| 249|[0x800039d8]<br>0x0000000000007FFF|- rs1_val == 16384<br>                                                                                                                                                  |[0x80001754]:clmulr t6, t5, t4<br> [0x80001758]:sd t6, 1784(t2)<br>   |
| 250|[0x800039e0]<br>0x0000000000003FFF|- rs1_val == 8192<br>                                                                                                                                                   |[0x80001764]:clmulr t6, t5, t4<br> [0x80001768]:sd t6, 1792(t2)<br>   |
| 251|[0x800039e8]<br>0x0000000000001FFF|- rs1_val == 4096<br>                                                                                                                                                   |[0x80001774]:clmulr t6, t5, t4<br> [0x80001778]:sd t6, 1800(t2)<br>   |
| 252|[0x800039f0]<br>0x0000000000000FFF|- rs1_val == 2048<br>                                                                                                                                                   |[0x80001788]:clmulr t6, t5, t4<br> [0x8000178c]:sd t6, 1808(t2)<br>   |
| 253|[0x800039f8]<br>0x00000000000007FF|- rs1_val == 1024<br>                                                                                                                                                   |[0x80001798]:clmulr t6, t5, t4<br> [0x8000179c]:sd t6, 1816(t2)<br>   |
| 254|[0x80003a00]<br>0x00000000000003FF|- rs1_val == 512<br>                                                                                                                                                    |[0x800017a8]:clmulr t6, t5, t4<br> [0x800017ac]:sd t6, 1824(t2)<br>   |
| 255|[0x80003a08]<br>0x00000000000001FF|- rs1_val == 256<br>                                                                                                                                                    |[0x800017b8]:clmulr t6, t5, t4<br> [0x800017bc]:sd t6, 1832(t2)<br>   |
| 256|[0x80003a10]<br>0x00000000000000FF|- rs1_val == 128<br>                                                                                                                                                    |[0x800017c8]:clmulr t6, t5, t4<br> [0x800017cc]:sd t6, 1840(t2)<br>   |
| 257|[0x80003a18]<br>0x000000000000007F|- rs1_val == 64<br>                                                                                                                                                     |[0x800017d8]:clmulr t6, t5, t4<br> [0x800017dc]:sd t6, 1848(t2)<br>   |
| 258|[0x80003a20]<br>0x000000000000003F|- rs1_val == 32<br>                                                                                                                                                     |[0x800017e8]:clmulr t6, t5, t4<br> [0x800017ec]:sd t6, 1856(t2)<br>   |
| 259|[0x80003a28]<br>0x000000000000001F|- rs1_val == 16<br>                                                                                                                                                     |[0x800017f8]:clmulr t6, t5, t4<br> [0x800017fc]:sd t6, 1864(t2)<br>   |
| 260|[0x80003a30]<br>0x000000000000000F|- rs1_val == 8<br>                                                                                                                                                      |[0x80001808]:clmulr t6, t5, t4<br> [0x8000180c]:sd t6, 1872(t2)<br>   |
| 261|[0x80003a38]<br>0x0000000000000007|- rs1_val == 4<br>                                                                                                                                                      |[0x80001818]:clmulr t6, t5, t4<br> [0x8000181c]:sd t6, 1880(t2)<br>   |
| 262|[0x80003a40]<br>0x0000000000000003|- rs1_val == 2<br>                                                                                                                                                      |[0x80001828]:clmulr t6, t5, t4<br> [0x8000182c]:sd t6, 1888(t2)<br>   |
| 263|[0x80003a50]<br>0xB55555555555522A|- rs2_val == 17293822569102704639<br>                                                                                                                                   |[0x80001850]:clmulr t6, t5, t4<br> [0x80001854]:sd t6, 1904(t2)<br>   |
| 264|[0x80003a60]<br>0xAAAAAAAB555552AA|- rs2_val == 18446744069414584319<br>                                                                                                                                   |[0x80001880]:clmulr t6, t5, t4<br> [0x80001884]:sd t6, 1920(t2)<br>   |
