
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002140')]      |
| SIG_REGION                | [('0x80004210', '0x80004a80', '270 dwords')]      |
| COV_LABELS                | maxu      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/64/riscof_work/maxu-01.S/ref.S    |
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
      [0x8000146c]:maxu t6, t5, t4
      [0x80001470]:sd t6, 944(t2)
 -- Signature Address: 0x80004690 Data: 0x0000000100000001
 -- Redundant Coverpoints hit by the op
      - opcode : maxu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000148c]:maxu t6, t5, t4
      [0x80001490]:sd t6, 952(t2)
 -- Signature Address: 0x80004698 Data: 0x0000000100000001
 -- Redundant Coverpoints hit by the op
      - opcode : maxu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014bc]:maxu t6, t5, t4
      [0x800014c0]:sd t6, 968(t2)
 -- Signature Address: 0x800046a8 Data: 0x0000000100000001
 -- Redundant Coverpoints hit by the op
      - opcode : maxu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800020f8]:maxu t6, t5, t4
      [0x800020fc]:sd t6, 1928(t2)
 -- Signature Address: 0x80004a68 Data: 0xFFFFFFFBFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : maxu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs2_val == 18446744056529682431
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80002138]:maxu t6, t5, t4
      [0x8000213c]:sd t6, 1944(t2)
 -- Signature Address: 0x80004a78 Data: 0xFFFFFFFF7FFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : maxu
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
|   1|[0x80004210]<br>0x0000000100000001|- opcode : maxu<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val > 0 and rs2_val > 0<br>       |[0x800003b0]:maxu t6, t5, t5<br> [0x800003b4]:sd t6, 0(ra)<br>      |
|   2|[0x80004218]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x31<br> - rs2 : x29<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == 9223372036854775807<br> |[0x800003d0]:maxu t5, t6, t4<br> [0x800003d4]:sd t5, 8(ra)<br>      |
|   3|[0x80004220]<br>0xBFFFFFFFFFFFFFFF|- rs1 : x29<br> - rs2 : x31<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs2_val == 13835058055282163711<br>                                                                                |[0x800003f0]:maxu t4, t4, t6<br> [0x800003f4]:sd t4, 16(ra)<br>     |
|   4|[0x80004228]<br>0xDFFFFFFFFFFFFFFF|- rs1 : x27<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_val == 16140901064495857663<br>                                                                                |[0x80000410]:maxu t3, s11, t3<br> [0x80000414]:sd t3, 24(ra)<br>    |
|   5|[0x80004230]<br>0x0000000100000001|- rs1 : x26<br> - rs2 : x26<br> - rd : x26<br> - rs1 == rs2 == rd<br>                                                                                                                      |[0x80000430]:maxu s10, s10, s10<br> [0x80000434]:sd s10, 32(ra)<br> |
|   6|[0x80004238]<br>0xF7FFFFFFFFFFFFFF|- rs1 : x28<br> - rs2 : x25<br> - rd : x27<br> - rs2_val == 17870283321406128127<br>                                                                                                       |[0x80000450]:maxu s11, t3, s9<br> [0x80000454]:sd s11, 40(ra)<br>   |
|   7|[0x80004240]<br>0xFBFFFFFFFFFFFFFF|- rs1 : x24<br> - rs2 : x27<br> - rd : x25<br> - rs2_val == 18158513697557839871<br>                                                                                                       |[0x80000470]:maxu s9, s8, s11<br> [0x80000474]:sd s9, 48(ra)<br>    |
|   8|[0x80004248]<br>0xFDFFFFFFFFFFFFFF|- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br> - rs2_val == 18302628885633695743<br>                                                                                                       |[0x80000490]:maxu s8, s9, s7<br> [0x80000494]:sd s8, 56(ra)<br>     |
|   9|[0x80004250]<br>0xFEFFFFFFFFFFFFFF|- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br> - rs2_val == 18374686479671623679<br>                                                                                                       |[0x800004b0]:maxu s7, s6, s8<br> [0x800004b4]:sd s7, 64(ra)<br>     |
|  10|[0x80004258]<br>0xFF7FFFFFFFFFFFFF|- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == 18410715276690587647<br>                                                                                                       |[0x800004d0]:maxu s6, s7, s5<br> [0x800004d4]:sd s6, 72(ra)<br>     |
|  11|[0x80004260]<br>0xFFBFFFFFFFFFFFFF|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 18428729675200069631<br>                                                                                                       |[0x800004f0]:maxu s5, s4, s6<br> [0x800004f4]:sd s5, 80(ra)<br>     |
|  12|[0x80004268]<br>0xFFDFFFFFFFFFFFFF|- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br> - rs2_val == 18437736874454810623<br>                                                                                                       |[0x80000510]:maxu s4, s5, s3<br> [0x80000514]:sd s4, 88(ra)<br>     |
|  13|[0x80004270]<br>0xFFEFFFFFFFFFFFFF|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 18442240474082181119<br>                                                                                                       |[0x80000530]:maxu s3, s2, s4<br> [0x80000534]:sd s3, 96(ra)<br>     |
|  14|[0x80004278]<br>0xFFF7FFFFFFFFFFFF|- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br> - rs2_val == 18444492273895866367<br>                                                                                                       |[0x80000550]:maxu s2, s3, a7<br> [0x80000554]:sd s2, 104(ra)<br>    |
|  15|[0x80004280]<br>0xFFFBFFFFFFFFFFFF|- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br> - rs2_val == 18445618173802708991<br>                                                                                                       |[0x80000570]:maxu a7, a6, s2<br> [0x80000574]:sd a7, 112(ra)<br>    |
|  16|[0x80004288]<br>0xFFFDFFFFFFFFFFFF|- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br> - rs2_val == 18446181123756130303<br>                                                                                                       |[0x80000590]:maxu a6, a7, a5<br> [0x80000594]:sd a6, 120(ra)<br>    |
|  17|[0x80004290]<br>0xFFFEFFFFFFFFFFFF|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 18446462598732840959<br>                                                                                                       |[0x800005b0]:maxu a5, a4, a6<br> [0x800005b4]:sd a5, 128(ra)<br>    |
|  18|[0x80004298]<br>0xFFFF7FFFFFFFFFFF|- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br> - rs2_val == 18446603336221196287<br>                                                                                                       |[0x800005d0]:maxu a4, a5, a3<br> [0x800005d4]:sd a4, 136(ra)<br>    |
|  19|[0x800042a0]<br>0xFFFFBFFFFFFFFFFF|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 18446673704965373951<br>                                                                                                       |[0x800005f0]:maxu a3, a2, a4<br> [0x800005f4]:sd a3, 144(ra)<br>    |
|  20|[0x800042a8]<br>0xFFFFDFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br> - rs2_val == 18446708889337462783<br>                                                                                                       |[0x80000610]:maxu a2, a3, a1<br> [0x80000614]:sd a2, 152(ra)<br>    |
|  21|[0x800042b0]<br>0xFFFFEFFFFFFFFFFF|- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 18446726481523507199<br>                                                                                                       |[0x80000630]:maxu a1, a0, a2<br> [0x80000634]:sd a1, 160(ra)<br>    |
|  22|[0x800042b8]<br>0xFFFFF7FFFFFFFFFF|- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br> - rs2_val == 18446735277616529407<br>                                                                                                        |[0x80000650]:maxu a0, a1, s1<br> [0x80000654]:sd a0, 168(ra)<br>    |
|  23|[0x800042c0]<br>0xFFFFFBFFFFFFFFFF|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 18446739675663040511<br>                                                                                                         |[0x80000670]:maxu s1, fp, a0<br> [0x80000674]:sd s1, 176(ra)<br>    |
|  24|[0x800042c8]<br>0xFFFFFDFFFFFFFFFF|- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == 18446741874686296063<br>                                                                                                          |[0x80000690]:maxu fp, s1, t2<br> [0x80000694]:sd fp, 184(ra)<br>    |
|  25|[0x800042d0]<br>0xFFFFFEFFFFFFFFFF|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 18446742974197923839<br>                                                                                                          |[0x800006b0]:maxu t2, t1, fp<br> [0x800006b4]:sd t2, 192(ra)<br>    |
|  26|[0x800042d8]<br>0xFFFFFF7FFFFFFFFF|- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br> - rs2_val == 18446743523953737727<br>                                                                                                          |[0x800006d0]:maxu t1, t2, t0<br> [0x800006d4]:sd t1, 200(ra)<br>    |
|  27|[0x800042e0]<br>0xFFFFFFBFFFFFFFFF|- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 18446743798831644671<br>                                                                                                          |[0x800006f8]:maxu t0, tp, t1<br> [0x800006fc]:sd t0, 0(t2)<br>      |
|  28|[0x800042e8]<br>0xFFFFFFDFFFFFFFFF|- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br> - rs2_val == 18446743936270598143<br>                                                                                                          |[0x80000718]:maxu tp, t0, gp<br> [0x8000071c]:sd tp, 8(t2)<br>      |
|  29|[0x800042f0]<br>0xFFFFFFEFFFFFFFFF|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 18446744004990074879<br>                                                                                                          |[0x80000738]:maxu gp, sp, tp<br> [0x8000073c]:sd gp, 16(t2)<br>     |
|  30|[0x800042f8]<br>0xFFFFFFF7FFFFFFFF|- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br> - rs2_val == 18446744039349813247<br>                                                                                                          |[0x80000758]:maxu sp, gp, ra<br> [0x8000075c]:sd sp, 24(t2)<br>     |
|  31|[0x80004300]<br>0xFFFFFFFBFFFFFFFF|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 18446744056529682431<br> - rs1_val == 0<br>                                                                                       |[0x80000770]:maxu ra, zero, sp<br> [0x80000774]:sd ra, 32(t2)<br>   |
|  32|[0x80004308]<br>0xFFFFFFFDFFFFFFFF|- rs1 : x1<br> - rs2_val == 18446744065119617023<br>                                                                                                                                       |[0x80000790]:maxu t6, ra, t5<br> [0x80000794]:sd t6, 40(t2)<br>     |
|  33|[0x80004310]<br>0x0000000100000001|- rs2 : x0<br> - rs2_val == 0<br>                                                                                                                                                          |[0x800007a8]:maxu t6, t5, zero<br> [0x800007ac]:sd t6, 48(t2)<br>   |
|  34|[0x80004318]<br>0x0000000000000000|- rd : x0<br> - rs2_val == 18446744071562067967<br>                                                                                                                                        |[0x800007c8]:maxu zero, t6, t5<br> [0x800007cc]:sd zero, 56(t2)<br> |
|  35|[0x80004320]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == 18446744072635809791<br>                                                                                                                                                      |[0x800007e4]:maxu t6, t5, t4<br> [0x800007e8]:sd t6, 64(t2)<br>     |
|  36|[0x80004328]<br>0xFFFFFFFFDFFFFFFF|- rs2_val == 18446744073172680703<br>                                                                                                                                                      |[0x80000800]:maxu t6, t5, t4<br> [0x80000804]:sd t6, 72(t2)<br>     |
|  37|[0x80004330]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == 18446744073441116159<br>                                                                                                                                                      |[0x8000081c]:maxu t6, t5, t4<br> [0x80000820]:sd t6, 80(t2)<br>     |
|  38|[0x80004338]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == 18446744073575333887<br>                                                                                                                                                      |[0x80000838]:maxu t6, t5, t4<br> [0x8000083c]:sd t6, 88(t2)<br>     |
|  39|[0x80004340]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == 18446744073642442751<br>                                                                                                                                                      |[0x80000854]:maxu t6, t5, t4<br> [0x80000858]:sd t6, 96(t2)<br>     |
|  40|[0x80004348]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == 18446744073675997183<br>                                                                                                                                                      |[0x80000870]:maxu t6, t5, t4<br> [0x80000874]:sd t6, 104(t2)<br>    |
|  41|[0x80004350]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == 18446744073692774399<br>                                                                                                                                                      |[0x8000088c]:maxu t6, t5, t4<br> [0x80000890]:sd t6, 112(t2)<br>    |
|  42|[0x80004358]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == 18446744073701163007<br>                                                                                                                                                      |[0x800008a8]:maxu t6, t5, t4<br> [0x800008ac]:sd t6, 120(t2)<br>    |
|  43|[0x80004360]<br>0xFFFFFFFFFFBFFFFF|- rs2_val == 18446744073705357311<br>                                                                                                                                                      |[0x800008c4]:maxu t6, t5, t4<br> [0x800008c8]:sd t6, 128(t2)<br>    |
|  44|[0x80004368]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == 18446744073707454463<br>                                                                                                                                                      |[0x800008e0]:maxu t6, t5, t4<br> [0x800008e4]:sd t6, 136(t2)<br>    |
|  45|[0x80004370]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == 18446744073708503039<br>                                                                                                                                                      |[0x800008fc]:maxu t6, t5, t4<br> [0x80000900]:sd t6, 144(t2)<br>    |
|  46|[0x80004378]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == 18446744073709027327<br>                                                                                                                                                      |[0x80000918]:maxu t6, t5, t4<br> [0x8000091c]:sd t6, 152(t2)<br>    |
|  47|[0x80004380]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == 18446744073709289471<br>                                                                                                                                                      |[0x80000934]:maxu t6, t5, t4<br> [0x80000938]:sd t6, 160(t2)<br>    |
|  48|[0x80004388]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == 18446744073709420543<br>                                                                                                                                                      |[0x80000950]:maxu t6, t5, t4<br> [0x80000954]:sd t6, 168(t2)<br>    |
|  49|[0x80004390]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == 18446744073709486079<br>                                                                                                                                                      |[0x8000096c]:maxu t6, t5, t4<br> [0x80000970]:sd t6, 176(t2)<br>    |
|  50|[0x80004398]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == 18446744073709518847<br>                                                                                                                                                      |[0x80000988]:maxu t6, t5, t4<br> [0x8000098c]:sd t6, 184(t2)<br>    |
|  51|[0x800043a0]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == 18446744073709535231<br>                                                                                                                                                      |[0x800009a4]:maxu t6, t5, t4<br> [0x800009a8]:sd t6, 192(t2)<br>    |
|  52|[0x800043a8]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == 18446744073709543423<br>                                                                                                                                                      |[0x800009c0]:maxu t6, t5, t4<br> [0x800009c4]:sd t6, 200(t2)<br>    |
|  53|[0x800043b0]<br>0xFFFFFFFFFFFFEFFF|- rs2_val == 18446744073709547519<br>                                                                                                                                                      |[0x800009dc]:maxu t6, t5, t4<br> [0x800009e0]:sd t6, 208(t2)<br>    |
|  54|[0x800043b8]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == 18446744073709549567<br>                                                                                                                                                      |[0x800009f8]:maxu t6, t5, t4<br> [0x800009fc]:sd t6, 216(t2)<br>    |
|  55|[0x800043c0]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == 18446744073709550591<br>                                                                                                                                                      |[0x80000a10]:maxu t6, t5, t4<br> [0x80000a14]:sd t6, 224(t2)<br>    |
|  56|[0x800043c8]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == 18446744073709551103<br>                                                                                                                                                      |[0x80000a28]:maxu t6, t5, t4<br> [0x80000a2c]:sd t6, 232(t2)<br>    |
|  57|[0x800043d0]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == 18446744073709551359<br>                                                                                                                                                      |[0x80000a40]:maxu t6, t5, t4<br> [0x80000a44]:sd t6, 240(t2)<br>    |
|  58|[0x800043d8]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == 18446744073709551487<br>                                                                                                                                                      |[0x80000a58]:maxu t6, t5, t4<br> [0x80000a5c]:sd t6, 248(t2)<br>    |
|  59|[0x800043e0]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == 18446744073709551551<br>                                                                                                                                                      |[0x80000a70]:maxu t6, t5, t4<br> [0x80000a74]:sd t6, 256(t2)<br>    |
|  60|[0x800043e8]<br>0xFFFFFFFFFFFFFFDF|- rs2_val == 18446744073709551583<br>                                                                                                                                                      |[0x80000a88]:maxu t6, t5, t4<br> [0x80000a8c]:sd t6, 264(t2)<br>    |
|  61|[0x800043f0]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == 18446744073709551599<br>                                                                                                                                                      |[0x80000aa0]:maxu t6, t5, t4<br> [0x80000aa4]:sd t6, 272(t2)<br>    |
|  62|[0x800043f8]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == 18446744073709551607<br>                                                                                                                                                      |[0x80000ab8]:maxu t6, t5, t4<br> [0x80000abc]:sd t6, 280(t2)<br>    |
|  63|[0x80004400]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == 18446744073709551611<br>                                                                                                                                                      |[0x80000ad0]:maxu t6, t5, t4<br> [0x80000ad4]:sd t6, 288(t2)<br>    |
|  64|[0x80004408]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == 18446744073709551613<br>                                                                                                                                                      |[0x80000ae8]:maxu t6, t5, t4<br> [0x80000aec]:sd t6, 296(t2)<br>    |
|  65|[0x80004410]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == 18446744073709551614<br>                                                                                                                                                      |[0x80000b00]:maxu t6, t5, t4<br> [0x80000b04]:sd t6, 304(t2)<br>    |
|  66|[0x80004418]<br>0x7FFFFFFFFFFFFFFF|- rs1_val == 9223372036854775807<br>                                                                                                                                                       |[0x80000b20]:maxu t6, t5, t4<br> [0x80000b24]:sd t6, 312(t2)<br>    |
|  67|[0x80004420]<br>0xBFFFFFFFFFFFFFFF|- rs1_val == 13835058055282163711<br>                                                                                                                                                      |[0x80000b40]:maxu t6, t5, t4<br> [0x80000b44]:sd t6, 320(t2)<br>    |
|  68|[0x80004428]<br>0xDFFFFFFFFFFFFFFF|- rs1_val == 16140901064495857663<br>                                                                                                                                                      |[0x80000b60]:maxu t6, t5, t4<br> [0x80000b64]:sd t6, 328(t2)<br>    |
|  69|[0x80004430]<br>0xEFFFFFFFFFFFFFFF|- rs1_val == 17293822569102704639<br>                                                                                                                                                      |[0x80000b80]:maxu t6, t5, t4<br> [0x80000b84]:sd t6, 336(t2)<br>    |
|  70|[0x80004438]<br>0xF7FFFFFFFFFFFFFF|- rs1_val == 17870283321406128127<br>                                                                                                                                                      |[0x80000ba0]:maxu t6, t5, t4<br> [0x80000ba4]:sd t6, 344(t2)<br>    |
|  71|[0x80004440]<br>0xFBFFFFFFFFFFFFFF|- rs1_val == 18158513697557839871<br>                                                                                                                                                      |[0x80000bc0]:maxu t6, t5, t4<br> [0x80000bc4]:sd t6, 352(t2)<br>    |
|  72|[0x80004448]<br>0xFDFFFFFFFFFFFFFF|- rs1_val == 18302628885633695743<br>                                                                                                                                                      |[0x80000be0]:maxu t6, t5, t4<br> [0x80000be4]:sd t6, 360(t2)<br>    |
|  73|[0x80004450]<br>0xFEFFFFFFFFFFFFFF|- rs1_val == 18374686479671623679<br>                                                                                                                                                      |[0x80000c00]:maxu t6, t5, t4<br> [0x80000c04]:sd t6, 368(t2)<br>    |
|  74|[0x80004458]<br>0xFF7FFFFFFFFFFFFF|- rs1_val == 18410715276690587647<br>                                                                                                                                                      |[0x80000c20]:maxu t6, t5, t4<br> [0x80000c24]:sd t6, 376(t2)<br>    |
|  75|[0x80004460]<br>0xFFBFFFFFFFFFFFFF|- rs1_val == 18428729675200069631<br>                                                                                                                                                      |[0x80000c40]:maxu t6, t5, t4<br> [0x80000c44]:sd t6, 384(t2)<br>    |
|  76|[0x80004468]<br>0xFFDFFFFFFFFFFFFF|- rs1_val == 18437736874454810623<br>                                                                                                                                                      |[0x80000c60]:maxu t6, t5, t4<br> [0x80000c64]:sd t6, 392(t2)<br>    |
|  77|[0x80004470]<br>0xFFEFFFFFFFFFFFFF|- rs1_val == 18442240474082181119<br>                                                                                                                                                      |[0x80000c80]:maxu t6, t5, t4<br> [0x80000c84]:sd t6, 400(t2)<br>    |
|  78|[0x80004478]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == 18444492273895866367<br>                                                                                                                                                      |[0x80000ca0]:maxu t6, t5, t4<br> [0x80000ca4]:sd t6, 408(t2)<br>    |
|  79|[0x80004480]<br>0xFFFBFFFFFFFFFFFF|- rs1_val == 18445618173802708991<br>                                                                                                                                                      |[0x80000cc0]:maxu t6, t5, t4<br> [0x80000cc4]:sd t6, 416(t2)<br>    |
|  80|[0x80004488]<br>0xFFFDFFFFFFFFFFFF|- rs1_val == 18446181123756130303<br>                                                                                                                                                      |[0x80000ce0]:maxu t6, t5, t4<br> [0x80000ce4]:sd t6, 424(t2)<br>    |
|  81|[0x80004490]<br>0xFFFEFFFFFFFFFFFF|- rs1_val == 18446462598732840959<br>                                                                                                                                                      |[0x80000d00]:maxu t6, t5, t4<br> [0x80000d04]:sd t6, 432(t2)<br>    |
|  82|[0x80004498]<br>0xFFFF7FFFFFFFFFFF|- rs1_val == 18446603336221196287<br>                                                                                                                                                      |[0x80000d20]:maxu t6, t5, t4<br> [0x80000d24]:sd t6, 440(t2)<br>    |
|  83|[0x800044a0]<br>0xFFFFBFFFFFFFFFFF|- rs1_val == 18446673704965373951<br>                                                                                                                                                      |[0x80000d40]:maxu t6, t5, t4<br> [0x80000d44]:sd t6, 448(t2)<br>    |
|  84|[0x800044a8]<br>0xFFFFDFFFFFFFFFFF|- rs1_val == 18446708889337462783<br>                                                                                                                                                      |[0x80000d60]:maxu t6, t5, t4<br> [0x80000d64]:sd t6, 456(t2)<br>    |
|  85|[0x800044b0]<br>0xFFFFEFFFFFFFFFFF|- rs1_val == 18446726481523507199<br>                                                                                                                                                      |[0x80000d80]:maxu t6, t5, t4<br> [0x80000d84]:sd t6, 464(t2)<br>    |
|  86|[0x800044b8]<br>0xFFFFF7FFFFFFFFFF|- rs1_val == 18446735277616529407<br>                                                                                                                                                      |[0x80000da0]:maxu t6, t5, t4<br> [0x80000da4]:sd t6, 472(t2)<br>    |
|  87|[0x800044c0]<br>0xFFFFFBFFFFFFFFFF|- rs1_val == 18446739675663040511<br>                                                                                                                                                      |[0x80000dc0]:maxu t6, t5, t4<br> [0x80000dc4]:sd t6, 480(t2)<br>    |
|  88|[0x800044c8]<br>0xFFFFFDFFFFFFFFFF|- rs1_val == 18446741874686296063<br>                                                                                                                                                      |[0x80000de0]:maxu t6, t5, t4<br> [0x80000de4]:sd t6, 488(t2)<br>    |
|  89|[0x800044d0]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == 18446742974197923839<br>                                                                                                                                                      |[0x80000e00]:maxu t6, t5, t4<br> [0x80000e04]:sd t6, 496(t2)<br>    |
|  90|[0x800044d8]<br>0xFFFFFF7FFFFFFFFF|- rs1_val == 18446743523953737727<br>                                                                                                                                                      |[0x80000e20]:maxu t6, t5, t4<br> [0x80000e24]:sd t6, 504(t2)<br>    |
|  91|[0x800044e0]<br>0xFFFFFFBFFFFFFFFF|- rs1_val == 18446743798831644671<br>                                                                                                                                                      |[0x80000e40]:maxu t6, t5, t4<br> [0x80000e44]:sd t6, 512(t2)<br>    |
|  92|[0x800044e8]<br>0xFFFFFFDFFFFFFFFF|- rs1_val == 18446743936270598143<br>                                                                                                                                                      |[0x80000e60]:maxu t6, t5, t4<br> [0x80000e64]:sd t6, 520(t2)<br>    |
|  93|[0x800044f0]<br>0xFFFFFFEFFFFFFFFF|- rs1_val == 18446744004990074879<br>                                                                                                                                                      |[0x80000e80]:maxu t6, t5, t4<br> [0x80000e84]:sd t6, 528(t2)<br>    |
|  94|[0x800044f8]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == 18446744039349813247<br>                                                                                                                                                      |[0x80000ea0]:maxu t6, t5, t4<br> [0x80000ea4]:sd t6, 536(t2)<br>    |
|  95|[0x80004500]<br>0xFFFFFFFBFFFFFFFF|- rs1_val == 18446744056529682431<br>                                                                                                                                                      |[0x80000ec0]:maxu t6, t5, t4<br> [0x80000ec4]:sd t6, 544(t2)<br>    |
|  96|[0x80004508]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == 18446744065119617023<br>                                                                                                                                                      |[0x80000ee0]:maxu t6, t5, t4<br> [0x80000ee4]:sd t6, 552(t2)<br>    |
|  97|[0x80004510]<br>0xFFFFFFFEFFFFFFFF|- rs1_val == 18446744069414584319<br>                                                                                                                                                      |[0x80000f00]:maxu t6, t5, t4<br> [0x80000f04]:sd t6, 560(t2)<br>    |
|  98|[0x80004518]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == 18446744071562067967<br>                                                                                                                                                      |[0x80000f20]:maxu t6, t5, t4<br> [0x80000f24]:sd t6, 568(t2)<br>    |
|  99|[0x80004520]<br>0xFFFFFFFFBFFFFFFF|- rs1_val == 18446744072635809791<br>                                                                                                                                                      |[0x80000f3c]:maxu t6, t5, t4<br> [0x80000f40]:sd t6, 576(t2)<br>    |
| 100|[0x80004528]<br>0xFFFFFFFFDFFFFFFF|- rs1_val == 18446744073172680703<br>                                                                                                                                                      |[0x80000f58]:maxu t6, t5, t4<br> [0x80000f5c]:sd t6, 584(t2)<br>    |
| 101|[0x80004530]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == 18446744073441116159<br>                                                                                                                                                      |[0x80000f74]:maxu t6, t5, t4<br> [0x80000f78]:sd t6, 592(t2)<br>    |
| 102|[0x80004538]<br>0xFFFFFFFFF7FFFFFF|- rs1_val == 18446744073575333887<br>                                                                                                                                                      |[0x80000f90]:maxu t6, t5, t4<br> [0x80000f94]:sd t6, 600(t2)<br>    |
| 103|[0x80004540]<br>0xFFFFFFFFFBFFFFFF|- rs1_val == 18446744073642442751<br>                                                                                                                                                      |[0x80000fac]:maxu t6, t5, t4<br> [0x80000fb0]:sd t6, 608(t2)<br>    |
| 104|[0x80004548]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == 18446744073675997183<br>                                                                                                                                                      |[0x80000fc8]:maxu t6, t5, t4<br> [0x80000fcc]:sd t6, 616(t2)<br>    |
| 105|[0x80004550]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == 18446744073692774399<br>                                                                                                                                                      |[0x80000fe4]:maxu t6, t5, t4<br> [0x80000fe8]:sd t6, 624(t2)<br>    |
| 106|[0x80004558]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == 18446744073701163007<br>                                                                                                                                                      |[0x80001000]:maxu t6, t5, t4<br> [0x80001004]:sd t6, 632(t2)<br>    |
| 107|[0x80004560]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == 18446744073705357311<br>                                                                                                                                                      |[0x8000101c]:maxu t6, t5, t4<br> [0x80001020]:sd t6, 640(t2)<br>    |
| 108|[0x80004568]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == 18446744073707454463<br>                                                                                                                                                      |[0x80001038]:maxu t6, t5, t4<br> [0x8000103c]:sd t6, 648(t2)<br>    |
| 109|[0x80004570]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == 18446744073708503039<br>                                                                                                                                                      |[0x80001054]:maxu t6, t5, t4<br> [0x80001058]:sd t6, 656(t2)<br>    |
| 110|[0x80004578]<br>0xFFFFFFFFFFF7FFFF|- rs1_val == 18446744073709027327<br>                                                                                                                                                      |[0x80001070]:maxu t6, t5, t4<br> [0x80001074]:sd t6, 664(t2)<br>    |
| 111|[0x80004580]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == 18446744073709289471<br>                                                                                                                                                      |[0x8000108c]:maxu t6, t5, t4<br> [0x80001090]:sd t6, 672(t2)<br>    |
| 112|[0x80004588]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == 18446744073709420543<br>                                                                                                                                                      |[0x800010a8]:maxu t6, t5, t4<br> [0x800010ac]:sd t6, 680(t2)<br>    |
| 113|[0x80004590]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == 18446744073709486079<br>                                                                                                                                                      |[0x800010c4]:maxu t6, t5, t4<br> [0x800010c8]:sd t6, 688(t2)<br>    |
| 114|[0x80004598]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == 18446744073709518847<br>                                                                                                                                                      |[0x800010e0]:maxu t6, t5, t4<br> [0x800010e4]:sd t6, 696(t2)<br>    |
| 115|[0x800045a0]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == 18446744073709535231<br>                                                                                                                                                      |[0x800010fc]:maxu t6, t5, t4<br> [0x80001100]:sd t6, 704(t2)<br>    |
| 116|[0x800045a8]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == 18446744073709543423<br>                                                                                                                                                      |[0x80001118]:maxu t6, t5, t4<br> [0x8000111c]:sd t6, 712(t2)<br>    |
| 117|[0x800045b0]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == 18446744073709547519<br>                                                                                                                                                      |[0x80001134]:maxu t6, t5, t4<br> [0x80001138]:sd t6, 720(t2)<br>    |
| 118|[0x800045b8]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == 18446744073709549567<br>                                                                                                                                                      |[0x80001150]:maxu t6, t5, t4<br> [0x80001154]:sd t6, 728(t2)<br>    |
| 119|[0x800045c0]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == 18446744073709550591<br>                                                                                                                                                      |[0x80001168]:maxu t6, t5, t4<br> [0x8000116c]:sd t6, 736(t2)<br>    |
| 120|[0x800045c8]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == 18446744073709551103<br>                                                                                                                                                      |[0x80001180]:maxu t6, t5, t4<br> [0x80001184]:sd t6, 744(t2)<br>    |
| 121|[0x800045d0]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == 18446744073709551359<br>                                                                                                                                                      |[0x80001198]:maxu t6, t5, t4<br> [0x8000119c]:sd t6, 752(t2)<br>    |
| 122|[0x800045d8]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == 18446744073709551487<br>                                                                                                                                                      |[0x800011b0]:maxu t6, t5, t4<br> [0x800011b4]:sd t6, 760(t2)<br>    |
| 123|[0x800045e0]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == 18446744073709551551<br>                                                                                                                                                      |[0x800011c8]:maxu t6, t5, t4<br> [0x800011cc]:sd t6, 768(t2)<br>    |
| 124|[0x800045e8]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == 18446744073709551583<br>                                                                                                                                                      |[0x800011e0]:maxu t6, t5, t4<br> [0x800011e4]:sd t6, 776(t2)<br>    |
| 125|[0x800045f0]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == 18446744073709551599<br>                                                                                                                                                      |[0x800011f8]:maxu t6, t5, t4<br> [0x800011fc]:sd t6, 784(t2)<br>    |
| 126|[0x800045f8]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == 18446744073709551607<br>                                                                                                                                                      |[0x80001210]:maxu t6, t5, t4<br> [0x80001214]:sd t6, 792(t2)<br>    |
| 127|[0x80004600]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == 18446744073709551611<br>                                                                                                                                                      |[0x80001228]:maxu t6, t5, t4<br> [0x8000122c]:sd t6, 800(t2)<br>    |
| 128|[0x80004608]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == 18446744073709551613<br>                                                                                                                                                      |[0x80001240]:maxu t6, t5, t4<br> [0x80001244]:sd t6, 808(t2)<br>    |
| 129|[0x80004610]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == 18446744073709551614<br>                                                                                                                                                      |[0x80001258]:maxu t6, t5, t4<br> [0x8000125c]:sd t6, 816(t2)<br>    |
| 130|[0x80004618]<br>0x8000000000000000|- rs2_val == 9223372036854775808<br>                                                                                                                                                       |[0x80001274]:maxu t6, t5, t4<br> [0x80001278]:sd t6, 824(t2)<br>    |
| 131|[0x80004620]<br>0x4000000000000000|- rs2_val == 4611686018427387904<br>                                                                                                                                                       |[0x80001290]:maxu t6, t5, t4<br> [0x80001294]:sd t6, 832(t2)<br>    |
| 132|[0x80004628]<br>0x2000000000000000|- rs2_val == 2305843009213693952<br>                                                                                                                                                       |[0x800012ac]:maxu t6, t5, t4<br> [0x800012b0]:sd t6, 840(t2)<br>    |
| 133|[0x80004630]<br>0x1000000000000000|- rs2_val == 1152921504606846976<br>                                                                                                                                                       |[0x800012c8]:maxu t6, t5, t4<br> [0x800012cc]:sd t6, 848(t2)<br>    |
| 134|[0x80004638]<br>0x0800000000000000|- rs2_val == 576460752303423488<br>                                                                                                                                                        |[0x800012e4]:maxu t6, t5, t4<br> [0x800012e8]:sd t6, 856(t2)<br>    |
| 135|[0x80004640]<br>0x0400000000000000|- rs2_val == 288230376151711744<br>                                                                                                                                                        |[0x80001300]:maxu t6, t5, t4<br> [0x80001304]:sd t6, 864(t2)<br>    |
| 136|[0x80004648]<br>0x0200000000000000|- rs2_val == 144115188075855872<br>                                                                                                                                                        |[0x8000131c]:maxu t6, t5, t4<br> [0x80001320]:sd t6, 872(t2)<br>    |
| 137|[0x80004650]<br>0x0100000000000000|- rs2_val == 72057594037927936<br>                                                                                                                                                         |[0x80001338]:maxu t6, t5, t4<br> [0x8000133c]:sd t6, 880(t2)<br>    |
| 138|[0x80004658]<br>0x0080000000000000|- rs2_val == 36028797018963968<br>                                                                                                                                                         |[0x80001354]:maxu t6, t5, t4<br> [0x80001358]:sd t6, 888(t2)<br>    |
| 139|[0x80004660]<br>0x0000000100000001|- rs1_val == 1<br>                                                                                                                                                                         |[0x8000136c]:maxu t6, t5, t4<br> [0x80001370]:sd t6, 896(t2)<br>    |
| 140|[0x80004668]<br>0xAAAAAAAAAAAAAAAA|- rs2_val == 12297829382473034410<br>                                                                                                                                                      |[0x800013a0]:maxu t6, t5, t4<br> [0x800013a4]:sd t6, 904(t2)<br>    |
| 141|[0x80004670]<br>0x5555555555555555|- rs2_val == 6148914691236517205<br>                                                                                                                                                       |[0x800013d4]:maxu t6, t5, t4<br> [0x800013d8]:sd t6, 912(t2)<br>    |
| 142|[0x80004678]<br>0xAAAAAAAAAAAAAAAA|- rs1_val == 12297829382473034410<br>                                                                                                                                                      |[0x80001408]:maxu t6, t5, t4<br> [0x8000140c]:sd t6, 920(t2)<br>    |
| 143|[0x80004680]<br>0x5555555555555555|- rs1_val == 6148914691236517205<br>                                                                                                                                                       |[0x8000143c]:maxu t6, t5, t4<br> [0x80001440]:sd t6, 928(t2)<br>    |
| 144|[0x80004688]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == (2**(xlen)-1)<br>                                                                                                                                                             |[0x80001454]:maxu t6, t5, t4<br> [0x80001458]:sd t6, 936(t2)<br>    |
| 145|[0x800046a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == (2**(xlen)-1)<br>                                                                                                                                                             |[0x800014a4]:maxu t6, t5, t4<br> [0x800014a8]:sd t6, 960(t2)<br>    |
| 146|[0x800046b0]<br>0x0040000000000000|- rs2_val == 18014398509481984<br>                                                                                                                                                         |[0x800014d8]:maxu t6, t5, t4<br> [0x800014dc]:sd t6, 976(t2)<br>    |
| 147|[0x800046b8]<br>0x0020000000000000|- rs2_val == 9007199254740992<br>                                                                                                                                                          |[0x800014f4]:maxu t6, t5, t4<br> [0x800014f8]:sd t6, 984(t2)<br>    |
| 148|[0x800046c0]<br>0x0010000000000000|- rs2_val == 4503599627370496<br>                                                                                                                                                          |[0x80001510]:maxu t6, t5, t4<br> [0x80001514]:sd t6, 992(t2)<br>    |
| 149|[0x800046c8]<br>0x0008000000000000|- rs2_val == 2251799813685248<br>                                                                                                                                                          |[0x8000152c]:maxu t6, t5, t4<br> [0x80001530]:sd t6, 1000(t2)<br>   |
| 150|[0x800046d0]<br>0x0004000000000000|- rs2_val == 1125899906842624<br>                                                                                                                                                          |[0x80001548]:maxu t6, t5, t4<br> [0x8000154c]:sd t6, 1008(t2)<br>   |
| 151|[0x800046d8]<br>0x0002000000000000|- rs2_val == 562949953421312<br>                                                                                                                                                           |[0x80001564]:maxu t6, t5, t4<br> [0x80001568]:sd t6, 1016(t2)<br>   |
| 152|[0x800046e0]<br>0x0001000000000000|- rs2_val == 281474976710656<br>                                                                                                                                                           |[0x80001580]:maxu t6, t5, t4<br> [0x80001584]:sd t6, 1024(t2)<br>   |
| 153|[0x800046e8]<br>0x0000800000000000|- rs2_val == 140737488355328<br>                                                                                                                                                           |[0x8000159c]:maxu t6, t5, t4<br> [0x800015a0]:sd t6, 1032(t2)<br>   |
| 154|[0x800046f0]<br>0x0000400000000000|- rs2_val == 70368744177664<br>                                                                                                                                                            |[0x800015b8]:maxu t6, t5, t4<br> [0x800015bc]:sd t6, 1040(t2)<br>   |
| 155|[0x800046f8]<br>0x0000200000000000|- rs2_val == 35184372088832<br>                                                                                                                                                            |[0x800015d4]:maxu t6, t5, t4<br> [0x800015d8]:sd t6, 1048(t2)<br>   |
| 156|[0x80004700]<br>0x0000100000000000|- rs2_val == 17592186044416<br>                                                                                                                                                            |[0x800015f0]:maxu t6, t5, t4<br> [0x800015f4]:sd t6, 1056(t2)<br>   |
| 157|[0x80004708]<br>0x0000080000000000|- rs2_val == 8796093022208<br>                                                                                                                                                             |[0x8000160c]:maxu t6, t5, t4<br> [0x80001610]:sd t6, 1064(t2)<br>   |
| 158|[0x80004710]<br>0x0000040000000000|- rs2_val == 4398046511104<br>                                                                                                                                                             |[0x80001628]:maxu t6, t5, t4<br> [0x8000162c]:sd t6, 1072(t2)<br>   |
| 159|[0x80004718]<br>0x0000020000000000|- rs2_val == 2199023255552<br>                                                                                                                                                             |[0x80001644]:maxu t6, t5, t4<br> [0x80001648]:sd t6, 1080(t2)<br>   |
| 160|[0x80004720]<br>0x0000010000000000|- rs2_val == 1099511627776<br>                                                                                                                                                             |[0x80001660]:maxu t6, t5, t4<br> [0x80001664]:sd t6, 1088(t2)<br>   |
| 161|[0x80004728]<br>0x0000008000000000|- rs2_val == 549755813888<br>                                                                                                                                                              |[0x8000167c]:maxu t6, t5, t4<br> [0x80001680]:sd t6, 1096(t2)<br>   |
| 162|[0x80004730]<br>0x0000004000000000|- rs2_val == 274877906944<br>                                                                                                                                                              |[0x80001698]:maxu t6, t5, t4<br> [0x8000169c]:sd t6, 1104(t2)<br>   |
| 163|[0x80004738]<br>0x0000002000000000|- rs2_val == 137438953472<br>                                                                                                                                                              |[0x800016b4]:maxu t6, t5, t4<br> [0x800016b8]:sd t6, 1112(t2)<br>   |
| 164|[0x80004740]<br>0x0000001000000000|- rs2_val == 68719476736<br>                                                                                                                                                               |[0x800016d0]:maxu t6, t5, t4<br> [0x800016d4]:sd t6, 1120(t2)<br>   |
| 165|[0x80004748]<br>0x0000000800000000|- rs2_val == 34359738368<br>                                                                                                                                                               |[0x800016ec]:maxu t6, t5, t4<br> [0x800016f0]:sd t6, 1128(t2)<br>   |
| 166|[0x80004750]<br>0x0000000400000000|- rs2_val == 17179869184<br>                                                                                                                                                               |[0x80001708]:maxu t6, t5, t4<br> [0x8000170c]:sd t6, 1136(t2)<br>   |
| 167|[0x80004758]<br>0x0000000200000000|- rs2_val == 8589934592<br>                                                                                                                                                                |[0x80001724]:maxu t6, t5, t4<br> [0x80001728]:sd t6, 1144(t2)<br>   |
| 168|[0x80004760]<br>0x0000000100000001|- rs2_val == 4294967296<br>                                                                                                                                                                |[0x80001740]:maxu t6, t5, t4<br> [0x80001744]:sd t6, 1152(t2)<br>   |
| 169|[0x80004768]<br>0x0000000100000001|- rs2_val == 2147483648<br>                                                                                                                                                                |[0x8000175c]:maxu t6, t5, t4<br> [0x80001760]:sd t6, 1160(t2)<br>   |
| 170|[0x80004770]<br>0x0000000100000001|- rs2_val == 1073741824<br>                                                                                                                                                                |[0x80001774]:maxu t6, t5, t4<br> [0x80001778]:sd t6, 1168(t2)<br>   |
| 171|[0x80004778]<br>0x0000000100000001|- rs2_val == 536870912<br>                                                                                                                                                                 |[0x8000178c]:maxu t6, t5, t4<br> [0x80001790]:sd t6, 1176(t2)<br>   |
| 172|[0x80004780]<br>0x0000000100000001|- rs2_val == 268435456<br>                                                                                                                                                                 |[0x800017a4]:maxu t6, t5, t4<br> [0x800017a8]:sd t6, 1184(t2)<br>   |
| 173|[0x80004788]<br>0x0000000100000001|- rs2_val == 134217728<br>                                                                                                                                                                 |[0x800017bc]:maxu t6, t5, t4<br> [0x800017c0]:sd t6, 1192(t2)<br>   |
| 174|[0x80004790]<br>0x0000000100000001|- rs2_val == 67108864<br>                                                                                                                                                                  |[0x800017d4]:maxu t6, t5, t4<br> [0x800017d8]:sd t6, 1200(t2)<br>   |
| 175|[0x80004798]<br>0x0000000100000001|- rs2_val == 33554432<br>                                                                                                                                                                  |[0x800017ec]:maxu t6, t5, t4<br> [0x800017f0]:sd t6, 1208(t2)<br>   |
| 176|[0x800047a0]<br>0x0000000100000001|- rs2_val == 16777216<br>                                                                                                                                                                  |[0x80001804]:maxu t6, t5, t4<br> [0x80001808]:sd t6, 1216(t2)<br>   |
| 177|[0x800047a8]<br>0x0000000100000001|- rs2_val == 8388608<br>                                                                                                                                                                   |[0x8000181c]:maxu t6, t5, t4<br> [0x80001820]:sd t6, 1224(t2)<br>   |
| 178|[0x800047b0]<br>0x0000000100000001|- rs2_val == 4194304<br>                                                                                                                                                                   |[0x80001834]:maxu t6, t5, t4<br> [0x80001838]:sd t6, 1232(t2)<br>   |
| 179|[0x800047b8]<br>0x0000000100000001|- rs2_val == 2097152<br>                                                                                                                                                                   |[0x8000184c]:maxu t6, t5, t4<br> [0x80001850]:sd t6, 1240(t2)<br>   |
| 180|[0x800047c0]<br>0x0000000100000001|- rs2_val == 1048576<br>                                                                                                                                                                   |[0x80001864]:maxu t6, t5, t4<br> [0x80001868]:sd t6, 1248(t2)<br>   |
| 181|[0x800047c8]<br>0x0000000100000001|- rs2_val == 524288<br>                                                                                                                                                                    |[0x8000187c]:maxu t6, t5, t4<br> [0x80001880]:sd t6, 1256(t2)<br>   |
| 182|[0x800047d0]<br>0x0000000100000001|- rs2_val == 262144<br>                                                                                                                                                                    |[0x80001894]:maxu t6, t5, t4<br> [0x80001898]:sd t6, 1264(t2)<br>   |
| 183|[0x800047d8]<br>0x0000000100000001|- rs2_val == 131072<br>                                                                                                                                                                    |[0x800018ac]:maxu t6, t5, t4<br> [0x800018b0]:sd t6, 1272(t2)<br>   |
| 184|[0x800047e0]<br>0x0000000100000001|- rs2_val == 65536<br>                                                                                                                                                                     |[0x800018c4]:maxu t6, t5, t4<br> [0x800018c8]:sd t6, 1280(t2)<br>   |
| 185|[0x800047e8]<br>0x0000000100000001|- rs2_val == 32768<br>                                                                                                                                                                     |[0x800018dc]:maxu t6, t5, t4<br> [0x800018e0]:sd t6, 1288(t2)<br>   |
| 186|[0x800047f0]<br>0x0000000100000001|- rs2_val == 16384<br>                                                                                                                                                                     |[0x800018f4]:maxu t6, t5, t4<br> [0x800018f8]:sd t6, 1296(t2)<br>   |
| 187|[0x800047f8]<br>0x0000000100000001|- rs2_val == 8192<br>                                                                                                                                                                      |[0x8000190c]:maxu t6, t5, t4<br> [0x80001910]:sd t6, 1304(t2)<br>   |
| 188|[0x80004800]<br>0x0000000100000001|- rs2_val == 4096<br>                                                                                                                                                                      |[0x80001924]:maxu t6, t5, t4<br> [0x80001928]:sd t6, 1312(t2)<br>   |
| 189|[0x80004808]<br>0x0000000100000001|- rs2_val == 2048<br>                                                                                                                                                                      |[0x80001940]:maxu t6, t5, t4<br> [0x80001944]:sd t6, 1320(t2)<br>   |
| 190|[0x80004810]<br>0x0000000100000001|- rs2_val == 1024<br>                                                                                                                                                                      |[0x80001958]:maxu t6, t5, t4<br> [0x8000195c]:sd t6, 1328(t2)<br>   |
| 191|[0x80004818]<br>0x0000000100000001|- rs2_val == 512<br>                                                                                                                                                                       |[0x80001970]:maxu t6, t5, t4<br> [0x80001974]:sd t6, 1336(t2)<br>   |
| 192|[0x80004820]<br>0x0000000100000001|- rs2_val == 256<br>                                                                                                                                                                       |[0x80001988]:maxu t6, t5, t4<br> [0x8000198c]:sd t6, 1344(t2)<br>   |
| 193|[0x80004828]<br>0x0000000100000001|- rs2_val == 128<br>                                                                                                                                                                       |[0x800019a0]:maxu t6, t5, t4<br> [0x800019a4]:sd t6, 1352(t2)<br>   |
| 194|[0x80004830]<br>0x0000000100000001|- rs2_val == 64<br>                                                                                                                                                                        |[0x800019b8]:maxu t6, t5, t4<br> [0x800019bc]:sd t6, 1360(t2)<br>   |
| 195|[0x80004838]<br>0x0000000100000001|- rs2_val == 32<br>                                                                                                                                                                        |[0x800019d0]:maxu t6, t5, t4<br> [0x800019d4]:sd t6, 1368(t2)<br>   |
| 196|[0x80004840]<br>0x0000000100000001|- rs2_val == 16<br>                                                                                                                                                                        |[0x800019e8]:maxu t6, t5, t4<br> [0x800019ec]:sd t6, 1376(t2)<br>   |
| 197|[0x80004848]<br>0x0000000100000001|- rs2_val == 8<br>                                                                                                                                                                         |[0x80001a00]:maxu t6, t5, t4<br> [0x80001a04]:sd t6, 1384(t2)<br>   |
| 198|[0x80004850]<br>0x0000000100000001|- rs2_val == 4<br>                                                                                                                                                                         |[0x80001a18]:maxu t6, t5, t4<br> [0x80001a1c]:sd t6, 1392(t2)<br>   |
| 199|[0x80004858]<br>0x0000000100000001|- rs2_val == 2<br>                                                                                                                                                                         |[0x80001a30]:maxu t6, t5, t4<br> [0x80001a34]:sd t6, 1400(t2)<br>   |
| 200|[0x80004860]<br>0x8000000000000000|- rs1_val == 9223372036854775808<br>                                                                                                                                                       |[0x80001a4c]:maxu t6, t5, t4<br> [0x80001a50]:sd t6, 1408(t2)<br>   |
| 201|[0x80004868]<br>0x4000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                                       |[0x80001a68]:maxu t6, t5, t4<br> [0x80001a6c]:sd t6, 1416(t2)<br>   |
| 202|[0x80004870]<br>0x2000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                       |[0x80001a84]:maxu t6, t5, t4<br> [0x80001a88]:sd t6, 1424(t2)<br>   |
| 203|[0x80004878]<br>0x1000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                       |[0x80001aa0]:maxu t6, t5, t4<br> [0x80001aa4]:sd t6, 1432(t2)<br>   |
| 204|[0x80004880]<br>0x0800000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                        |[0x80001abc]:maxu t6, t5, t4<br> [0x80001ac0]:sd t6, 1440(t2)<br>   |
| 205|[0x80004888]<br>0x0400000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                        |[0x80001ad8]:maxu t6, t5, t4<br> [0x80001adc]:sd t6, 1448(t2)<br>   |
| 206|[0x80004890]<br>0x0200000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                        |[0x80001af4]:maxu t6, t5, t4<br> [0x80001af8]:sd t6, 1456(t2)<br>   |
| 207|[0x80004898]<br>0x0100000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                         |[0x80001b10]:maxu t6, t5, t4<br> [0x80001b14]:sd t6, 1464(t2)<br>   |
| 208|[0x800048a0]<br>0x0080000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                                         |[0x80001b2c]:maxu t6, t5, t4<br> [0x80001b30]:sd t6, 1472(t2)<br>   |
| 209|[0x800048a8]<br>0x0040000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                         |[0x80001b48]:maxu t6, t5, t4<br> [0x80001b4c]:sd t6, 1480(t2)<br>   |
| 210|[0x800048b0]<br>0x0020000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                                          |[0x80001b64]:maxu t6, t5, t4<br> [0x80001b68]:sd t6, 1488(t2)<br>   |
| 211|[0x800048b8]<br>0x0010000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                          |[0x80001b80]:maxu t6, t5, t4<br> [0x80001b84]:sd t6, 1496(t2)<br>   |
| 212|[0x800048c0]<br>0x0008000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                                          |[0x80001b9c]:maxu t6, t5, t4<br> [0x80001ba0]:sd t6, 1504(t2)<br>   |
| 213|[0x800048c8]<br>0x0004000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                                          |[0x80001bb8]:maxu t6, t5, t4<br> [0x80001bbc]:sd t6, 1512(t2)<br>   |
| 214|[0x800048d0]<br>0x0002000000000000|- rs1_val == 562949953421312<br>                                                                                                                                                           |[0x80001bd4]:maxu t6, t5, t4<br> [0x80001bd8]:sd t6, 1520(t2)<br>   |
| 215|[0x800048d8]<br>0x0001000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                           |[0x80001bf0]:maxu t6, t5, t4<br> [0x80001bf4]:sd t6, 1528(t2)<br>   |
| 216|[0x800048e0]<br>0x0000800000000000|- rs1_val == 140737488355328<br>                                                                                                                                                           |[0x80001c0c]:maxu t6, t5, t4<br> [0x80001c10]:sd t6, 1536(t2)<br>   |
| 217|[0x800048e8]<br>0x0000400000000000|- rs1_val == 70368744177664<br>                                                                                                                                                            |[0x80001c28]:maxu t6, t5, t4<br> [0x80001c2c]:sd t6, 1544(t2)<br>   |
| 218|[0x800048f0]<br>0x0000200000000000|- rs1_val == 35184372088832<br>                                                                                                                                                            |[0x80001c44]:maxu t6, t5, t4<br> [0x80001c48]:sd t6, 1552(t2)<br>   |
| 219|[0x800048f8]<br>0x0000100000000000|- rs1_val == 17592186044416<br>                                                                                                                                                            |[0x80001c60]:maxu t6, t5, t4<br> [0x80001c64]:sd t6, 1560(t2)<br>   |
| 220|[0x80004900]<br>0x0000080000000000|- rs1_val == 8796093022208<br>                                                                                                                                                             |[0x80001c7c]:maxu t6, t5, t4<br> [0x80001c80]:sd t6, 1568(t2)<br>   |
| 221|[0x80004908]<br>0x0000040000000000|- rs1_val == 4398046511104<br>                                                                                                                                                             |[0x80001c98]:maxu t6, t5, t4<br> [0x80001c9c]:sd t6, 1576(t2)<br>   |
| 222|[0x80004910]<br>0x0000020000000000|- rs1_val == 2199023255552<br>                                                                                                                                                             |[0x80001cb4]:maxu t6, t5, t4<br> [0x80001cb8]:sd t6, 1584(t2)<br>   |
| 223|[0x80004918]<br>0x0000010000000000|- rs1_val == 1099511627776<br>                                                                                                                                                             |[0x80001cd0]:maxu t6, t5, t4<br> [0x80001cd4]:sd t6, 1592(t2)<br>   |
| 224|[0x80004920]<br>0x0000008000000000|- rs1_val == 549755813888<br>                                                                                                                                                              |[0x80001cec]:maxu t6, t5, t4<br> [0x80001cf0]:sd t6, 1600(t2)<br>   |
| 225|[0x80004928]<br>0x0000004000000000|- rs1_val == 274877906944<br>                                                                                                                                                              |[0x80001d08]:maxu t6, t5, t4<br> [0x80001d0c]:sd t6, 1608(t2)<br>   |
| 226|[0x80004930]<br>0x0000002000000000|- rs1_val == 137438953472<br>                                                                                                                                                              |[0x80001d24]:maxu t6, t5, t4<br> [0x80001d28]:sd t6, 1616(t2)<br>   |
| 227|[0x80004938]<br>0x0000001000000000|- rs1_val == 68719476736<br>                                                                                                                                                               |[0x80001d40]:maxu t6, t5, t4<br> [0x80001d44]:sd t6, 1624(t2)<br>   |
| 228|[0x80004940]<br>0x0000000800000000|- rs1_val == 34359738368<br>                                                                                                                                                               |[0x80001d5c]:maxu t6, t5, t4<br> [0x80001d60]:sd t6, 1632(t2)<br>   |
| 229|[0x80004948]<br>0x0000000400000000|- rs1_val == 17179869184<br>                                                                                                                                                               |[0x80001d78]:maxu t6, t5, t4<br> [0x80001d7c]:sd t6, 1640(t2)<br>   |
| 230|[0x80004950]<br>0x0000000200000000|- rs1_val == 8589934592<br>                                                                                                                                                                |[0x80001d94]:maxu t6, t5, t4<br> [0x80001d98]:sd t6, 1648(t2)<br>   |
| 231|[0x80004958]<br>0x0000000100000001|- rs1_val == 4294967296<br>                                                                                                                                                                |[0x80001db0]:maxu t6, t5, t4<br> [0x80001db4]:sd t6, 1656(t2)<br>   |
| 232|[0x80004960]<br>0x0000000100000001|- rs1_val == 2147483648<br>                                                                                                                                                                |[0x80001dcc]:maxu t6, t5, t4<br> [0x80001dd0]:sd t6, 1664(t2)<br>   |
| 233|[0x80004968]<br>0x0000000100000001|- rs1_val == 1073741824<br>                                                                                                                                                                |[0x80001de4]:maxu t6, t5, t4<br> [0x80001de8]:sd t6, 1672(t2)<br>   |
| 234|[0x80004970]<br>0x0000000100000001|- rs1_val == 536870912<br>                                                                                                                                                                 |[0x80001dfc]:maxu t6, t5, t4<br> [0x80001e00]:sd t6, 1680(t2)<br>   |
| 235|[0x80004978]<br>0x0000000100000001|- rs1_val == 268435456<br>                                                                                                                                                                 |[0x80001e14]:maxu t6, t5, t4<br> [0x80001e18]:sd t6, 1688(t2)<br>   |
| 236|[0x80004980]<br>0x0000000100000001|- rs1_val == 134217728<br>                                                                                                                                                                 |[0x80001e2c]:maxu t6, t5, t4<br> [0x80001e30]:sd t6, 1696(t2)<br>   |
| 237|[0x80004988]<br>0x0000000100000001|- rs1_val == 67108864<br>                                                                                                                                                                  |[0x80001e44]:maxu t6, t5, t4<br> [0x80001e48]:sd t6, 1704(t2)<br>   |
| 238|[0x80004990]<br>0x0000000100000001|- rs1_val == 33554432<br>                                                                                                                                                                  |[0x80001e5c]:maxu t6, t5, t4<br> [0x80001e60]:sd t6, 1712(t2)<br>   |
| 239|[0x80004998]<br>0x0000000100000001|- rs1_val == 16777216<br>                                                                                                                                                                  |[0x80001e74]:maxu t6, t5, t4<br> [0x80001e78]:sd t6, 1720(t2)<br>   |
| 240|[0x800049a0]<br>0x0000000100000001|- rs1_val == 8388608<br>                                                                                                                                                                   |[0x80001e8c]:maxu t6, t5, t4<br> [0x80001e90]:sd t6, 1728(t2)<br>   |
| 241|[0x800049a8]<br>0x0000000100000001|- rs1_val == 4194304<br>                                                                                                                                                                   |[0x80001ea4]:maxu t6, t5, t4<br> [0x80001ea8]:sd t6, 1736(t2)<br>   |
| 242|[0x800049b0]<br>0x0000000100000001|- rs1_val == 2097152<br>                                                                                                                                                                   |[0x80001ebc]:maxu t6, t5, t4<br> [0x80001ec0]:sd t6, 1744(t2)<br>   |
| 243|[0x800049b8]<br>0x0000000100000001|- rs1_val == 1048576<br>                                                                                                                                                                   |[0x80001ed4]:maxu t6, t5, t4<br> [0x80001ed8]:sd t6, 1752(t2)<br>   |
| 244|[0x800049c0]<br>0x0000000100000001|- rs1_val == 524288<br>                                                                                                                                                                    |[0x80001eec]:maxu t6, t5, t4<br> [0x80001ef0]:sd t6, 1760(t2)<br>   |
| 245|[0x800049c8]<br>0x0000000100000001|- rs1_val == 262144<br>                                                                                                                                                                    |[0x80001f04]:maxu t6, t5, t4<br> [0x80001f08]:sd t6, 1768(t2)<br>   |
| 246|[0x800049d0]<br>0x0000000100000001|- rs1_val == 131072<br>                                                                                                                                                                    |[0x80001f1c]:maxu t6, t5, t4<br> [0x80001f20]:sd t6, 1776(t2)<br>   |
| 247|[0x800049d8]<br>0x0000000100000001|- rs1_val == 65536<br>                                                                                                                                                                     |[0x80001f34]:maxu t6, t5, t4<br> [0x80001f38]:sd t6, 1784(t2)<br>   |
| 248|[0x800049e0]<br>0x0000000100000001|- rs1_val == 32768<br>                                                                                                                                                                     |[0x80001f4c]:maxu t6, t5, t4<br> [0x80001f50]:sd t6, 1792(t2)<br>   |
| 249|[0x800049e8]<br>0x0000000100000001|- rs1_val == 16384<br>                                                                                                                                                                     |[0x80001f64]:maxu t6, t5, t4<br> [0x80001f68]:sd t6, 1800(t2)<br>   |
| 250|[0x800049f0]<br>0x0000000100000001|- rs1_val == 8192<br>                                                                                                                                                                      |[0x80001f7c]:maxu t6, t5, t4<br> [0x80001f80]:sd t6, 1808(t2)<br>   |
| 251|[0x800049f8]<br>0x0000000100000001|- rs1_val == 4096<br>                                                                                                                                                                      |[0x80001f94]:maxu t6, t5, t4<br> [0x80001f98]:sd t6, 1816(t2)<br>   |
| 252|[0x80004a00]<br>0x0000000100000001|- rs1_val == 2048<br>                                                                                                                                                                      |[0x80001fb0]:maxu t6, t5, t4<br> [0x80001fb4]:sd t6, 1824(t2)<br>   |
| 253|[0x80004a08]<br>0x0000000100000001|- rs1_val == 1024<br>                                                                                                                                                                      |[0x80001fc8]:maxu t6, t5, t4<br> [0x80001fcc]:sd t6, 1832(t2)<br>   |
| 254|[0x80004a10]<br>0x0000000100000001|- rs1_val == 512<br>                                                                                                                                                                       |[0x80001fe0]:maxu t6, t5, t4<br> [0x80001fe4]:sd t6, 1840(t2)<br>   |
| 255|[0x80004a18]<br>0x0000000100000001|- rs1_val == 256<br>                                                                                                                                                                       |[0x80001ff8]:maxu t6, t5, t4<br> [0x80001ffc]:sd t6, 1848(t2)<br>   |
| 256|[0x80004a20]<br>0x0000000100000001|- rs1_val == 128<br>                                                                                                                                                                       |[0x80002010]:maxu t6, t5, t4<br> [0x80002014]:sd t6, 1856(t2)<br>   |
| 257|[0x80004a28]<br>0x0000000100000001|- rs1_val == 64<br>                                                                                                                                                                        |[0x80002028]:maxu t6, t5, t4<br> [0x8000202c]:sd t6, 1864(t2)<br>   |
| 258|[0x80004a30]<br>0x0000000100000001|- rs1_val == 32<br>                                                                                                                                                                        |[0x80002040]:maxu t6, t5, t4<br> [0x80002044]:sd t6, 1872(t2)<br>   |
| 259|[0x80004a38]<br>0x0000000100000001|- rs1_val == 16<br>                                                                                                                                                                        |[0x80002058]:maxu t6, t5, t4<br> [0x8000205c]:sd t6, 1880(t2)<br>   |
| 260|[0x80004a40]<br>0x0000000100000001|- rs1_val == 8<br>                                                                                                                                                                         |[0x80002070]:maxu t6, t5, t4<br> [0x80002074]:sd t6, 1888(t2)<br>   |
| 261|[0x80004a48]<br>0x0000000100000001|- rs1_val == 4<br>                                                                                                                                                                         |[0x80002088]:maxu t6, t5, t4<br> [0x8000208c]:sd t6, 1896(t2)<br>   |
| 262|[0x80004a50]<br>0x0000000100000001|- rs1_val == 2<br>                                                                                                                                                                         |[0x800020a0]:maxu t6, t5, t4<br> [0x800020a4]:sd t6, 1904(t2)<br>   |
| 263|[0x80004a58]<br>0x0000000100000001|- rs2_val == 1<br>                                                                                                                                                                         |[0x800020b8]:maxu t6, t5, t4<br> [0x800020bc]:sd t6, 1912(t2)<br>   |
| 264|[0x80004a60]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == 17293822569102704639<br>                                                                                                                                                      |[0x800020d8]:maxu t6, t5, t4<br> [0x800020dc]:sd t6, 1920(t2)<br>   |
| 265|[0x80004a70]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == 18446744069414584319<br>                                                                                                                                                      |[0x80002118]:maxu t6, t5, t4<br> [0x8000211c]:sd t6, 1936(t2)<br>   |
