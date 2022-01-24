
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001e50')]      |
| SIG_REGION                | [('0x80003210', '0x80003b10', '288 dwords')]      |
| COV_LABELS                | clmul      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/64/riscof_work/clmul-01.S/ref.S    |
| Total Number of coverpoints| 394     |
| Total Coverpoints Hit     | 388      |
| Total Signature Updates   | 288      |
| STAT1                     | 284      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000850]:clmul t6, t5, t4
      [0x80000854]:sd t6, 224(t2)
 -- Signature Address: 0x800033c0 Data: 0x5555555555455555
 -- Redundant Coverpoints hit by the op
      - opcode : clmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 18446744073709550591
      - rs1_val == 18446744073709550591




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001de0]:clmul t6, t5, t4
      [0x80001de4]:sd t6, 0(t2)
 -- Signature Address: 0x80003ae8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : clmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val==0 and rs2_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001e10]:clmul t6, t5, t4
      [0x80001e14]:sd t6, 16(t2)
 -- Signature Address: 0x80003af8 Data: 0x55554556AAAAA955
 -- Redundant Coverpoints hit by the op
      - opcode : clmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 18446744056529682431
      - rs1_val == 18446744073709550591




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001e40]:clmul t6, t5, t4
      [0x80001e44]:sd t6, 32(t2)
 -- Signature Address: 0x80003b08 Data: 0x555557552AAAA955
 -- Redundant Coverpoints hit by the op
      - opcode : clmul
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

|s.no|            signature             |                                                                              coverpoints                                                                               |                                code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : clmul<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs1_val==0 and rs2_val==0<br>                                              |[0x800003a0]:clmul t6, t5, t5<br> [0x800003a4]:sd t6, 0(ra)<br>      |
|   2|[0x80003218]<br>0x2AAAAAAAAAAAA955|- rs1 : x31<br> - rs2 : x29<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 9223372036854775807<br> - rs1_val == 18446744073709550591<br> |[0x800003b8]:clmul t5, t6, t4<br> [0x800003bc]:sd t5, 8(ra)<br>      |
|   3|[0x80003220]<br>0x6AAAAAAAAAAAA955|- rs1 : x29<br> - rs2 : x31<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs2_val == 13835058055282163711<br>                                                             |[0x800003d0]:clmul t4, t4, t6<br> [0x800003d4]:sd t4, 16(ra)<br>     |
|   4|[0x80003228]<br>0x4AAAAAAAAAAAA955|- rs1 : x27<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_val == 16140901064495857663<br>                                                             |[0x800003e8]:clmul t3, s11, t3<br> [0x800003ec]:sd t3, 24(ra)<br>    |
|   5|[0x80003230]<br>0x5555555555455555|- rs1 : x26<br> - rs2 : x26<br> - rd : x26<br> - rs1 == rs2 == rd<br> - rs2_val == 18446744073709550591<br>                                                             |[0x800003f8]:clmul s10, s10, s10<br> [0x800003fc]:sd s10, 32(ra)<br> |
|   6|[0x80003238]<br>0x52AAAAAAAAAAA955|- rs1 : x28<br> - rs2 : x25<br> - rd : x27<br> - rs2_val == 17870283321406128127<br>                                                                                    |[0x80000410]:clmul s11, t3, s9<br> [0x80000414]:sd s11, 40(ra)<br>   |
|   7|[0x80003240]<br>0x56AAAAAAAAAAA955|- rs1 : x24<br> - rs2 : x27<br> - rd : x25<br> - rs2_val == 18158513697557839871<br>                                                                                    |[0x80000428]:clmul s9, s8, s11<br> [0x8000042c]:sd s9, 48(ra)<br>    |
|   8|[0x80003248]<br>0x54AAAAAAAAAAA955|- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br> - rs2_val == 18302628885633695743<br>                                                                                    |[0x80000440]:clmul s8, s9, s7<br> [0x80000444]:sd s8, 56(ra)<br>     |
|   9|[0x80003250]<br>0x55AAAAAAAAAAA955|- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br> - rs2_val == 18374686479671623679<br>                                                                                    |[0x80000458]:clmul s7, s6, s8<br> [0x8000045c]:sd s7, 64(ra)<br>     |
|  10|[0x80003258]<br>0x552AAAAAAAAAA955|- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == 18410715276690587647<br>                                                                                    |[0x80000470]:clmul s6, s7, s5<br> [0x80000474]:sd s6, 72(ra)<br>     |
|  11|[0x80003260]<br>0x556AAAAAAAAAA955|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 18428729675200069631<br>                                                                                    |[0x80000488]:clmul s5, s4, s6<br> [0x8000048c]:sd s5, 80(ra)<br>     |
|  12|[0x80003268]<br>0xD54AAAAAAAAAA955|- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br> - rs2_val == 18437736874454810623<br>                                                                                    |[0x800004a0]:clmul s4, s5, s3<br> [0x800004a4]:sd s4, 88(ra)<br>     |
|  13|[0x80003270]<br>0x155AAAAAAAAAA955|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 18442240474082181119<br>                                                                                    |[0x800004b8]:clmul s3, s2, s4<br> [0x800004bc]:sd s3, 96(ra)<br>     |
|  14|[0x80003278]<br>0x7552AAAAAAAAA955|- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br> - rs2_val == 18444492273895866367<br>                                                                                    |[0x800004d0]:clmul s2, s3, a7<br> [0x800004d4]:sd s2, 104(ra)<br>    |
|  15|[0x80003280]<br>0x4556AAAAAAAAA955|- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br> - rs2_val == 18445618173802708991<br>                                                                                    |[0x800004e8]:clmul a7, a6, s2<br> [0x800004ec]:sd a7, 112(ra)<br>    |
|  16|[0x80003288]<br>0x5D54AAAAAAAAA955|- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br> - rs2_val == 18446181123756130303<br>                                                                                    |[0x80000500]:clmul a6, a7, a5<br> [0x80000504]:sd a6, 120(ra)<br>    |
|  17|[0x80003290]<br>0x5155AAAAAAAAA955|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 18446462598732840959<br>                                                                                    |[0x80000518]:clmul a5, a4, a6<br> [0x8000051c]:sd a5, 128(ra)<br>    |
|  18|[0x80003298]<br>0x57552AAAAAAAA955|- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br> - rs2_val == 18446603336221196287<br>                                                                                    |[0x80000530]:clmul a4, a5, a3<br> [0x80000534]:sd a4, 136(ra)<br>    |
|  19|[0x800032a0]<br>0x54556AAAAAAAA955|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 18446673704965373951<br>                                                                                    |[0x80000548]:clmul a3, a2, a4<br> [0x8000054c]:sd a3, 144(ra)<br>    |
|  20|[0x800032a8]<br>0x55D54AAAAAAAA955|- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br> - rs2_val == 18446708889337462783<br>                                                                                    |[0x80000560]:clmul a2, a3, a1<br> [0x80000564]:sd a2, 152(ra)<br>    |
|  21|[0x800032b0]<br>0x55155AAAAAAAA955|- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 18446726481523507199<br>                                                                                    |[0x80000578]:clmul a1, a0, a2<br> [0x8000057c]:sd a1, 160(ra)<br>    |
|  22|[0x800032b8]<br>0x557552AAAAAAA955|- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br> - rs2_val == 18446735277616529407<br>                                                                                     |[0x80000590]:clmul a0, a1, s1<br> [0x80000594]:sd a0, 168(ra)<br>    |
|  23|[0x800032c0]<br>0x554556AAAAAAA955|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 18446739675663040511<br>                                                                                      |[0x800005a8]:clmul s1, fp, a0<br> [0x800005ac]:sd s1, 176(ra)<br>    |
|  24|[0x800032c8]<br>0x555D54AAAAAAA955|- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == 18446741874686296063<br>                                                                                       |[0x800005c0]:clmul fp, s1, t2<br> [0x800005c4]:sd fp, 184(ra)<br>    |
|  25|[0x800032d0]<br>0x555155AAAAAAA955|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 18446742974197923839<br>                                                                                       |[0x800005d8]:clmul t2, t1, fp<br> [0x800005dc]:sd t2, 192(ra)<br>    |
|  26|[0x800032d8]<br>0x5557552AAAAAA955|- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br> - rs2_val == 18446743523953737727<br>                                                                                       |[0x800005f0]:clmul t1, t2, t0<br> [0x800005f4]:sd t1, 200(ra)<br>    |
|  27|[0x800032e0]<br>0x5554556AAAAAA955|- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 18446743798831644671<br>                                                                                       |[0x80000610]:clmul t0, tp, t1<br> [0x80000614]:sd t0, 0(t2)<br>      |
|  28|[0x800032e8]<br>0x5555D54AAAAAA955|- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br> - rs2_val == 18446743936270598143<br>                                                                                       |[0x80000628]:clmul tp, t0, gp<br> [0x8000062c]:sd tp, 8(t2)<br>      |
|  29|[0x800032f0]<br>0x5555155AAAAAA955|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 18446744004990074879<br>                                                                                       |[0x80000640]:clmul gp, sp, tp<br> [0x80000644]:sd gp, 16(t2)<br>     |
|  30|[0x800032f8]<br>0x55557552AAAAA955|- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br> - rs2_val == 18446744039349813247<br>                                                                                       |[0x80000658]:clmul sp, gp, ra<br> [0x8000065c]:sd sp, 24(t2)<br>     |
|  31|[0x80003300]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 18446744056529682431<br>                                                                                       |[0x80000670]:clmul ra, zero, sp<br> [0x80000674]:sd ra, 32(t2)<br>   |
|  32|[0x80003308]<br>0x55555D54AAAAA955|- rs1 : x1<br> - rs2_val == 18446744065119617023<br>                                                                                                                    |[0x80000688]:clmul t6, ra, t5<br> [0x8000068c]:sd t6, 40(t2)<br>     |
|  33|[0x80003310]<br>0x0000000000000000|- rs2 : x0<br>                                                                                                                                                          |[0x80000698]:clmul t6, t5, zero<br> [0x8000069c]:sd t6, 48(t2)<br>   |
|  34|[0x80003318]<br>0x0000000000000000|- rd : x0<br> - rs2_val == 18446744071562067967<br>                                                                                                                     |[0x800006b0]:clmul zero, t6, t5<br> [0x800006b4]:sd zero, 56(t2)<br> |
|  35|[0x80003320]<br>0x555554556AAAA955|- rs2_val == 18446744072635809791<br>                                                                                                                                   |[0x800006c4]:clmul t6, t5, t4<br> [0x800006c8]:sd t6, 64(t2)<br>     |
|  36|[0x80003328]<br>0x555555D54AAAA955|- rs2_val == 18446744073172680703<br>                                                                                                                                   |[0x800006d8]:clmul t6, t5, t4<br> [0x800006dc]:sd t6, 72(t2)<br>     |
|  37|[0x80003330]<br>0x555555155AAAA955|- rs2_val == 18446744073441116159<br>                                                                                                                                   |[0x800006ec]:clmul t6, t5, t4<br> [0x800006f0]:sd t6, 80(t2)<br>     |
|  38|[0x80003338]<br>0x5555557552AAA955|- rs2_val == 18446744073575333887<br>                                                                                                                                   |[0x80000700]:clmul t6, t5, t4<br> [0x80000704]:sd t6, 88(t2)<br>     |
|  39|[0x80003340]<br>0x5555554556AAA955|- rs2_val == 18446744073642442751<br>                                                                                                                                   |[0x80000714]:clmul t6, t5, t4<br> [0x80000718]:sd t6, 96(t2)<br>     |
|  40|[0x80003348]<br>0x5555555D54AAA955|- rs2_val == 18446744073675997183<br>                                                                                                                                   |[0x80000728]:clmul t6, t5, t4<br> [0x8000072c]:sd t6, 104(t2)<br>    |
|  41|[0x80003350]<br>0x5555555155AAA955|- rs2_val == 18446744073692774399<br>                                                                                                                                   |[0x8000073c]:clmul t6, t5, t4<br> [0x80000740]:sd t6, 112(t2)<br>    |
|  42|[0x80003358]<br>0x55555557552AA955|- rs2_val == 18446744073701163007<br>                                                                                                                                   |[0x80000750]:clmul t6, t5, t4<br> [0x80000754]:sd t6, 120(t2)<br>    |
|  43|[0x80003360]<br>0x55555554556AA955|- rs2_val == 18446744073705357311<br>                                                                                                                                   |[0x80000764]:clmul t6, t5, t4<br> [0x80000768]:sd t6, 128(t2)<br>    |
|  44|[0x80003368]<br>0x55555555D54AA955|- rs2_val == 18446744073707454463<br>                                                                                                                                   |[0x80000778]:clmul t6, t5, t4<br> [0x8000077c]:sd t6, 136(t2)<br>    |
|  45|[0x80003370]<br>0x55555555155AA955|- rs2_val == 18446744073708503039<br>                                                                                                                                   |[0x8000078c]:clmul t6, t5, t4<br> [0x80000790]:sd t6, 144(t2)<br>    |
|  46|[0x80003378]<br>0x555555557552A955|- rs2_val == 18446744073709027327<br>                                                                                                                                   |[0x800007a0]:clmul t6, t5, t4<br> [0x800007a4]:sd t6, 152(t2)<br>    |
|  47|[0x80003380]<br>0x555555554556A955|- rs2_val == 18446744073709289471<br>                                                                                                                                   |[0x800007b4]:clmul t6, t5, t4<br> [0x800007b8]:sd t6, 160(t2)<br>    |
|  48|[0x80003388]<br>0x555555555D54A955|- rs2_val == 18446744073709420543<br>                                                                                                                                   |[0x800007c8]:clmul t6, t5, t4<br> [0x800007cc]:sd t6, 168(t2)<br>    |
|  49|[0x80003390]<br>0x555555555155A955|- rs2_val == 18446744073709486079<br>                                                                                                                                   |[0x800007dc]:clmul t6, t5, t4<br> [0x800007e0]:sd t6, 176(t2)<br>    |
|  50|[0x80003398]<br>0x5555555557552955|- rs2_val == 18446744073709518847<br>                                                                                                                                   |[0x800007f0]:clmul t6, t5, t4<br> [0x800007f4]:sd t6, 184(t2)<br>    |
|  51|[0x800033a0]<br>0x5555555554556955|- rs2_val == 18446744073709535231<br>                                                                                                                                   |[0x80000804]:clmul t6, t5, t4<br> [0x80000808]:sd t6, 192(t2)<br>    |
|  52|[0x800033a8]<br>0x5555555555D54955|- rs2_val == 18446744073709543423<br>                                                                                                                                   |[0x80000818]:clmul t6, t5, t4<br> [0x8000081c]:sd t6, 200(t2)<br>    |
|  53|[0x800033b0]<br>0x5555555555155955|- rs2_val == 18446744073709547519<br>                                                                                                                                   |[0x8000082c]:clmul t6, t5, t4<br> [0x80000830]:sd t6, 208(t2)<br>    |
|  54|[0x800033b8]<br>0x5555555555755155|- rs2_val == 18446744073709549567<br>                                                                                                                                   |[0x80000840]:clmul t6, t5, t4<br> [0x80000844]:sd t6, 216(t2)<br>    |
|  55|[0x800033c8]<br>0x55555555555D5755|- rs2_val == 18446744073709551103<br>                                                                                                                                   |[0x80000860]:clmul t6, t5, t4<br> [0x80000864]:sd t6, 232(t2)<br>    |
|  56|[0x800033d0]<br>0x5555555555515655|- rs2_val == 18446744073709551359<br>                                                                                                                                   |[0x80000870]:clmul t6, t5, t4<br> [0x80000874]:sd t6, 240(t2)<br>    |
|  57|[0x800033d8]<br>0x55555555555756D5|- rs2_val == 18446744073709551487<br>                                                                                                                                   |[0x80000880]:clmul t6, t5, t4<br> [0x80000884]:sd t6, 248(t2)<br>    |
|  58|[0x800033e0]<br>0x5555555555545695|- rs2_val == 18446744073709551551<br>                                                                                                                                   |[0x80000890]:clmul t6, t5, t4<br> [0x80000894]:sd t6, 256(t2)<br>    |
|  59|[0x800033e8]<br>0x555555555555D6B5|- rs2_val == 18446744073709551583<br>                                                                                                                                   |[0x800008a0]:clmul t6, t5, t4<br> [0x800008a4]:sd t6, 264(t2)<br>    |
|  60|[0x800033f0]<br>0x55555555555516A5|- rs2_val == 18446744073709551599<br>                                                                                                                                   |[0x800008b0]:clmul t6, t5, t4<br> [0x800008b4]:sd t6, 272(t2)<br>    |
|  61|[0x800033f8]<br>0x55555555555576AD|- rs2_val == 18446744073709551607<br>                                                                                                                                   |[0x800008c0]:clmul t6, t5, t4<br> [0x800008c4]:sd t6, 280(t2)<br>    |
|  62|[0x80003400]<br>0x55555555555546A9|- rs2_val == 18446744073709551611<br>                                                                                                                                   |[0x800008d0]:clmul t6, t5, t4<br> [0x800008d4]:sd t6, 288(t2)<br>    |
|  63|[0x80003408]<br>0x5555555555555EAB|- rs2_val == 18446744073709551613<br>                                                                                                                                   |[0x800008e0]:clmul t6, t5, t4<br> [0x800008e4]:sd t6, 296(t2)<br>    |
|  64|[0x80003410]<br>0x55555555555552AA|- rs2_val == 18446744073709551614<br>                                                                                                                                   |[0x800008f0]:clmul t6, t5, t4<br> [0x800008f4]:sd t6, 304(t2)<br>    |
|  65|[0x80003418]<br>0x2AAAAAAAAAAAA955|- rs1_val == 9223372036854775807<br>                                                                                                                                    |[0x80000908]:clmul t6, t5, t4<br> [0x8000090c]:sd t6, 312(t2)<br>    |
|  66|[0x80003420]<br>0x6AAAAAAAAAAAA955|- rs1_val == 13835058055282163711<br>                                                                                                                                   |[0x80000920]:clmul t6, t5, t4<br> [0x80000924]:sd t6, 320(t2)<br>    |
|  67|[0x80003428]<br>0x4AAAAAAAAAAAA955|- rs1_val == 16140901064495857663<br>                                                                                                                                   |[0x80000938]:clmul t6, t5, t4<br> [0x8000093c]:sd t6, 328(t2)<br>    |
|  68|[0x80003430]<br>0x5AAAAAAAAAAAA955|- rs1_val == 17293822569102704639<br>                                                                                                                                   |[0x80000950]:clmul t6, t5, t4<br> [0x80000954]:sd t6, 336(t2)<br>    |
|  69|[0x80003438]<br>0x52AAAAAAAAAAA955|- rs1_val == 17870283321406128127<br>                                                                                                                                   |[0x80000968]:clmul t6, t5, t4<br> [0x8000096c]:sd t6, 344(t2)<br>    |
|  70|[0x80003440]<br>0x56AAAAAAAAAAA955|- rs1_val == 18158513697557839871<br>                                                                                                                                   |[0x80000980]:clmul t6, t5, t4<br> [0x80000984]:sd t6, 352(t2)<br>    |
|  71|[0x80003448]<br>0x54AAAAAAAAAAA955|- rs1_val == 18302628885633695743<br>                                                                                                                                   |[0x80000998]:clmul t6, t5, t4<br> [0x8000099c]:sd t6, 360(t2)<br>    |
|  72|[0x80003450]<br>0x55AAAAAAAAAAA955|- rs1_val == 18374686479671623679<br>                                                                                                                                   |[0x800009b0]:clmul t6, t5, t4<br> [0x800009b4]:sd t6, 368(t2)<br>    |
|  73|[0x80003458]<br>0x552AAAAAAAAAA955|- rs1_val == 18410715276690587647<br>                                                                                                                                   |[0x800009c8]:clmul t6, t5, t4<br> [0x800009cc]:sd t6, 376(t2)<br>    |
|  74|[0x80003460]<br>0x556AAAAAAAAAA955|- rs1_val == 18428729675200069631<br>                                                                                                                                   |[0x800009e0]:clmul t6, t5, t4<br> [0x800009e4]:sd t6, 384(t2)<br>    |
|  75|[0x80003468]<br>0xD54AAAAAAAAAA955|- rs1_val == 18437736874454810623<br>                                                                                                                                   |[0x800009f8]:clmul t6, t5, t4<br> [0x800009fc]:sd t6, 392(t2)<br>    |
|  76|[0x80003470]<br>0x155AAAAAAAAAA955|- rs1_val == 18442240474082181119<br>                                                                                                                                   |[0x80000a10]:clmul t6, t5, t4<br> [0x80000a14]:sd t6, 400(t2)<br>    |
|  77|[0x80003478]<br>0x7552AAAAAAAAA955|- rs1_val == 18444492273895866367<br>                                                                                                                                   |[0x80000a28]:clmul t6, t5, t4<br> [0x80000a2c]:sd t6, 408(t2)<br>    |
|  78|[0x80003480]<br>0x4556AAAAAAAAA955|- rs1_val == 18445618173802708991<br>                                                                                                                                   |[0x80000a40]:clmul t6, t5, t4<br> [0x80000a44]:sd t6, 416(t2)<br>    |
|  79|[0x80003488]<br>0x5D54AAAAAAAAA955|- rs1_val == 18446181123756130303<br>                                                                                                                                   |[0x80000a58]:clmul t6, t5, t4<br> [0x80000a5c]:sd t6, 424(t2)<br>    |
|  80|[0x80003490]<br>0x5155AAAAAAAAA955|- rs1_val == 18446462598732840959<br>                                                                                                                                   |[0x80000a70]:clmul t6, t5, t4<br> [0x80000a74]:sd t6, 432(t2)<br>    |
|  81|[0x80003498]<br>0x57552AAAAAAAA955|- rs1_val == 18446603336221196287<br>                                                                                                                                   |[0x80000a88]:clmul t6, t5, t4<br> [0x80000a8c]:sd t6, 440(t2)<br>    |
|  82|[0x800034a0]<br>0x54556AAAAAAAA955|- rs1_val == 18446673704965373951<br>                                                                                                                                   |[0x80000aa0]:clmul t6, t5, t4<br> [0x80000aa4]:sd t6, 448(t2)<br>    |
|  83|[0x800034a8]<br>0x55D54AAAAAAAA955|- rs1_val == 18446708889337462783<br>                                                                                                                                   |[0x80000ab8]:clmul t6, t5, t4<br> [0x80000abc]:sd t6, 456(t2)<br>    |
|  84|[0x800034b0]<br>0x55155AAAAAAAA955|- rs1_val == 18446726481523507199<br>                                                                                                                                   |[0x80000ad0]:clmul t6, t5, t4<br> [0x80000ad4]:sd t6, 464(t2)<br>    |
|  85|[0x800034b8]<br>0x557552AAAAAAA955|- rs1_val == 18446735277616529407<br>                                                                                                                                   |[0x80000ae8]:clmul t6, t5, t4<br> [0x80000aec]:sd t6, 472(t2)<br>    |
|  86|[0x800034c0]<br>0x554556AAAAAAA955|- rs1_val == 18446739675663040511<br>                                                                                                                                   |[0x80000b00]:clmul t6, t5, t4<br> [0x80000b04]:sd t6, 480(t2)<br>    |
|  87|[0x800034c8]<br>0x555D54AAAAAAA955|- rs1_val == 18446741874686296063<br>                                                                                                                                   |[0x80000b18]:clmul t6, t5, t4<br> [0x80000b1c]:sd t6, 488(t2)<br>    |
|  88|[0x800034d0]<br>0x555155AAAAAAA955|- rs1_val == 18446742974197923839<br>                                                                                                                                   |[0x80000b30]:clmul t6, t5, t4<br> [0x80000b34]:sd t6, 496(t2)<br>    |
|  89|[0x800034d8]<br>0x5557552AAAAAA955|- rs1_val == 18446743523953737727<br>                                                                                                                                   |[0x80000b48]:clmul t6, t5, t4<br> [0x80000b4c]:sd t6, 504(t2)<br>    |
|  90|[0x800034e0]<br>0x5554556AAAAAA955|- rs1_val == 18446743798831644671<br>                                                                                                                                   |[0x80000b60]:clmul t6, t5, t4<br> [0x80000b64]:sd t6, 512(t2)<br>    |
|  91|[0x800034e8]<br>0x5555D54AAAAAA955|- rs1_val == 18446743936270598143<br>                                                                                                                                   |[0x80000b78]:clmul t6, t5, t4<br> [0x80000b7c]:sd t6, 520(t2)<br>    |
|  92|[0x800034f0]<br>0x5555155AAAAAA955|- rs1_val == 18446744004990074879<br>                                                                                                                                   |[0x80000b90]:clmul t6, t5, t4<br> [0x80000b94]:sd t6, 528(t2)<br>    |
|  93|[0x800034f8]<br>0x55557552AAAAA955|- rs1_val == 18446744039349813247<br>                                                                                                                                   |[0x80000ba8]:clmul t6, t5, t4<br> [0x80000bac]:sd t6, 536(t2)<br>    |
|  94|[0x80003500]<br>0x55554556AAAAA955|- rs1_val == 18446744056529682431<br>                                                                                                                                   |[0x80000bc0]:clmul t6, t5, t4<br> [0x80000bc4]:sd t6, 544(t2)<br>    |
|  95|[0x80003508]<br>0x55555D54AAAAA955|- rs1_val == 18446744065119617023<br>                                                                                                                                   |[0x80000bd8]:clmul t6, t5, t4<br> [0x80000bdc]:sd t6, 552(t2)<br>    |
|  96|[0x80003510]<br>0x55555155AAAAA955|- rs1_val == 18446744069414584319<br>                                                                                                                                   |[0x80000bf0]:clmul t6, t5, t4<br> [0x80000bf4]:sd t6, 560(t2)<br>    |
|  97|[0x80003518]<br>0x555557552AAAA955|- rs1_val == 18446744071562067967<br>                                                                                                                                   |[0x80000c08]:clmul t6, t5, t4<br> [0x80000c0c]:sd t6, 568(t2)<br>    |
|  98|[0x80003520]<br>0x555554556AAAA955|- rs1_val == 18446744072635809791<br>                                                                                                                                   |[0x80000c1c]:clmul t6, t5, t4<br> [0x80000c20]:sd t6, 576(t2)<br>    |
|  99|[0x80003528]<br>0x555555D54AAAA955|- rs1_val == 18446744073172680703<br>                                                                                                                                   |[0x80000c30]:clmul t6, t5, t4<br> [0x80000c34]:sd t6, 584(t2)<br>    |
| 100|[0x80003530]<br>0x555555155AAAA955|- rs1_val == 18446744073441116159<br>                                                                                                                                   |[0x80000c44]:clmul t6, t5, t4<br> [0x80000c48]:sd t6, 592(t2)<br>    |
| 101|[0x80003538]<br>0x5555557552AAA955|- rs1_val == 18446744073575333887<br>                                                                                                                                   |[0x80000c58]:clmul t6, t5, t4<br> [0x80000c5c]:sd t6, 600(t2)<br>    |
| 102|[0x80003540]<br>0x5555554556AAA955|- rs1_val == 18446744073642442751<br>                                                                                                                                   |[0x80000c6c]:clmul t6, t5, t4<br> [0x80000c70]:sd t6, 608(t2)<br>    |
| 103|[0x80003548]<br>0x5555555D54AAA955|- rs1_val == 18446744073675997183<br>                                                                                                                                   |[0x80000c80]:clmul t6, t5, t4<br> [0x80000c84]:sd t6, 616(t2)<br>    |
| 104|[0x80003550]<br>0x5555555155AAA955|- rs1_val == 18446744073692774399<br>                                                                                                                                   |[0x80000c94]:clmul t6, t5, t4<br> [0x80000c98]:sd t6, 624(t2)<br>    |
| 105|[0x80003558]<br>0x55555557552AA955|- rs1_val == 18446744073701163007<br>                                                                                                                                   |[0x80000ca8]:clmul t6, t5, t4<br> [0x80000cac]:sd t6, 632(t2)<br>    |
| 106|[0x80003560]<br>0x55555554556AA955|- rs1_val == 18446744073705357311<br>                                                                                                                                   |[0x80000cbc]:clmul t6, t5, t4<br> [0x80000cc0]:sd t6, 640(t2)<br>    |
| 107|[0x80003568]<br>0x55555555D54AA955|- rs1_val == 18446744073707454463<br>                                                                                                                                   |[0x80000cd0]:clmul t6, t5, t4<br> [0x80000cd4]:sd t6, 648(t2)<br>    |
| 108|[0x80003570]<br>0x55555555155AA955|- rs1_val == 18446744073708503039<br>                                                                                                                                   |[0x80000ce4]:clmul t6, t5, t4<br> [0x80000ce8]:sd t6, 656(t2)<br>    |
| 109|[0x80003578]<br>0x555555557552A955|- rs1_val == 18446744073709027327<br>                                                                                                                                   |[0x80000cf8]:clmul t6, t5, t4<br> [0x80000cfc]:sd t6, 664(t2)<br>    |
| 110|[0x80003580]<br>0x555555554556A955|- rs1_val == 18446744073709289471<br>                                                                                                                                   |[0x80000d0c]:clmul t6, t5, t4<br> [0x80000d10]:sd t6, 672(t2)<br>    |
| 111|[0x80003588]<br>0x555555555D54A955|- rs1_val == 18446744073709420543<br>                                                                                                                                   |[0x80000d20]:clmul t6, t5, t4<br> [0x80000d24]:sd t6, 680(t2)<br>    |
| 112|[0x80003590]<br>0x555555555155A955|- rs1_val == 18446744073709486079<br>                                                                                                                                   |[0x80000d34]:clmul t6, t5, t4<br> [0x80000d38]:sd t6, 688(t2)<br>    |
| 113|[0x80003598]<br>0x5555555557552955|- rs1_val == 18446744073709518847<br>                                                                                                                                   |[0x80000d48]:clmul t6, t5, t4<br> [0x80000d4c]:sd t6, 696(t2)<br>    |
| 114|[0x800035a0]<br>0x5555555554556955|- rs1_val == 18446744073709535231<br>                                                                                                                                   |[0x80000d5c]:clmul t6, t5, t4<br> [0x80000d60]:sd t6, 704(t2)<br>    |
| 115|[0x800035a8]<br>0x5555555555D54955|- rs1_val == 18446744073709543423<br>                                                                                                                                   |[0x80000d70]:clmul t6, t5, t4<br> [0x80000d74]:sd t6, 712(t2)<br>    |
| 116|[0x800035b0]<br>0x5555555555155955|- rs1_val == 18446744073709547519<br>                                                                                                                                   |[0x80000d84]:clmul t6, t5, t4<br> [0x80000d88]:sd t6, 720(t2)<br>    |
| 117|[0x800035b8]<br>0x5555555555755155|- rs1_val == 18446744073709549567<br>                                                                                                                                   |[0x80000d98]:clmul t6, t5, t4<br> [0x80000d9c]:sd t6, 728(t2)<br>    |
| 118|[0x800035c0]<br>0x55555555555D5755|- rs1_val == 18446744073709551103<br>                                                                                                                                   |[0x80000da8]:clmul t6, t5, t4<br> [0x80000dac]:sd t6, 736(t2)<br>    |
| 119|[0x800035c8]<br>0x5555555555515655|- rs1_val == 18446744073709551359<br>                                                                                                                                   |[0x80000db8]:clmul t6, t5, t4<br> [0x80000dbc]:sd t6, 744(t2)<br>    |
| 120|[0x800035d0]<br>0x55555555555756D5|- rs1_val == 18446744073709551487<br>                                                                                                                                   |[0x80000dc8]:clmul t6, t5, t4<br> [0x80000dcc]:sd t6, 752(t2)<br>    |
| 121|[0x800035d8]<br>0x5555555555545695|- rs1_val == 18446744073709551551<br>                                                                                                                                   |[0x80000dd8]:clmul t6, t5, t4<br> [0x80000ddc]:sd t6, 760(t2)<br>    |
| 122|[0x800035e0]<br>0x555555555555D6B5|- rs1_val == 18446744073709551583<br>                                                                                                                                   |[0x80000de8]:clmul t6, t5, t4<br> [0x80000dec]:sd t6, 768(t2)<br>    |
| 123|[0x800035e8]<br>0x55555555555516A5|- rs1_val == 18446744073709551599<br>                                                                                                                                   |[0x80000df8]:clmul t6, t5, t4<br> [0x80000dfc]:sd t6, 776(t2)<br>    |
| 124|[0x800035f0]<br>0x55555555555576AD|- rs1_val == 18446744073709551607<br>                                                                                                                                   |[0x80000e08]:clmul t6, t5, t4<br> [0x80000e0c]:sd t6, 784(t2)<br>    |
| 125|[0x800035f8]<br>0x55555555555546A9|- rs1_val == 18446744073709551611<br>                                                                                                                                   |[0x80000e18]:clmul t6, t5, t4<br> [0x80000e1c]:sd t6, 792(t2)<br>    |
| 126|[0x80003600]<br>0x5555555555555EAB|- rs1_val == 18446744073709551613<br>                                                                                                                                   |[0x80000e28]:clmul t6, t5, t4<br> [0x80000e2c]:sd t6, 800(t2)<br>    |
| 127|[0x80003608]<br>0x55555555555552AA|- rs1_val == 18446744073709551614<br>                                                                                                                                   |[0x80000e38]:clmul t6, t5, t4<br> [0x80000e3c]:sd t6, 808(t2)<br>    |
| 128|[0x80003610]<br>0x8000000000000000|- rs2_val == 9223372036854775808<br>                                                                                                                                    |[0x80000e4c]:clmul t6, t5, t4<br> [0x80000e50]:sd t6, 816(t2)<br>    |
| 129|[0x80003618]<br>0xC000000000000000|- rs2_val == 4611686018427387904<br>                                                                                                                                    |[0x80000e60]:clmul t6, t5, t4<br> [0x80000e64]:sd t6, 824(t2)<br>    |
| 130|[0x80003620]<br>0xE000000000000000|- rs2_val == 2305843009213693952<br>                                                                                                                                    |[0x80000e74]:clmul t6, t5, t4<br> [0x80000e78]:sd t6, 832(t2)<br>    |
| 131|[0x80003628]<br>0xF000000000000000|- rs2_val == 1152921504606846976<br>                                                                                                                                    |[0x80000e88]:clmul t6, t5, t4<br> [0x80000e8c]:sd t6, 840(t2)<br>    |
| 132|[0x80003630]<br>0xF800000000000000|- rs2_val == 576460752303423488<br>                                                                                                                                     |[0x80000e9c]:clmul t6, t5, t4<br> [0x80000ea0]:sd t6, 848(t2)<br>    |
| 133|[0x80003638]<br>0xFC00000000000000|- rs2_val == 288230376151711744<br>                                                                                                                                     |[0x80000eb0]:clmul t6, t5, t4<br> [0x80000eb4]:sd t6, 856(t2)<br>    |
| 134|[0x80003640]<br>0xFE00000000000000|- rs2_val == 144115188075855872<br>                                                                                                                                     |[0x80000ec4]:clmul t6, t5, t4<br> [0x80000ec8]:sd t6, 864(t2)<br>    |
| 135|[0x80003648]<br>0xFF00000000000000|- rs2_val == 72057594037927936<br>                                                                                                                                      |[0x80000ed8]:clmul t6, t5, t4<br> [0x80000edc]:sd t6, 872(t2)<br>    |
| 136|[0x80003650]<br>0xFF80000000000000|- rs2_val == 36028797018963968<br>                                                                                                                                      |[0x80000eec]:clmul t6, t5, t4<br> [0x80000ef0]:sd t6, 880(t2)<br>    |
| 137|[0x80003658]<br>0xFFC0000000000000|- rs2_val == 18014398509481984<br>                                                                                                                                      |[0x80000f00]:clmul t6, t5, t4<br> [0x80000f04]:sd t6, 888(t2)<br>    |
| 138|[0x80003660]<br>0x7FE0000000000000|- rs2_val == 9007199254740992<br>                                                                                                                                       |[0x80000f14]:clmul t6, t5, t4<br> [0x80000f18]:sd t6, 896(t2)<br>    |
| 139|[0x80003668]<br>0xBFF0000000000000|- rs2_val == 4503599627370496<br>                                                                                                                                       |[0x80000f28]:clmul t6, t5, t4<br> [0x80000f2c]:sd t6, 904(t2)<br>    |
| 140|[0x80003670]<br>0xDFF8000000000000|- rs2_val == 2251799813685248<br>                                                                                                                                       |[0x80000f3c]:clmul t6, t5, t4<br> [0x80000f40]:sd t6, 912(t2)<br>    |
| 141|[0x80003678]<br>0xEFFC000000000000|- rs2_val == 1125899906842624<br>                                                                                                                                       |[0x80000f50]:clmul t6, t5, t4<br> [0x80000f54]:sd t6, 920(t2)<br>    |
| 142|[0x80003680]<br>0xF7FE000000000000|- rs2_val == 562949953421312<br>                                                                                                                                        |[0x80000f64]:clmul t6, t5, t4<br> [0x80000f68]:sd t6, 928(t2)<br>    |
| 143|[0x80003688]<br>0xFBFF000000000000|- rs2_val == 281474976710656<br>                                                                                                                                        |[0x80000f78]:clmul t6, t5, t4<br> [0x80000f7c]:sd t6, 936(t2)<br>    |
| 144|[0x80003690]<br>0xFDFF800000000000|- rs2_val == 140737488355328<br>                                                                                                                                        |[0x80000f8c]:clmul t6, t5, t4<br> [0x80000f90]:sd t6, 944(t2)<br>    |
| 145|[0x80003698]<br>0xFEFFC00000000000|- rs2_val == 70368744177664<br>                                                                                                                                         |[0x80000fa0]:clmul t6, t5, t4<br> [0x80000fa4]:sd t6, 952(t2)<br>    |
| 146|[0x800036a0]<br>0xFF7FE00000000000|- rs2_val == 35184372088832<br>                                                                                                                                         |[0x80000fb4]:clmul t6, t5, t4<br> [0x80000fb8]:sd t6, 960(t2)<br>    |
| 147|[0x800036a8]<br>0xFFBFF00000000000|- rs2_val == 17592186044416<br>                                                                                                                                         |[0x80000fc8]:clmul t6, t5, t4<br> [0x80000fcc]:sd t6, 968(t2)<br>    |
| 148|[0x800036b0]<br>0xFFDFF80000000000|- rs2_val == 8796093022208<br>                                                                                                                                          |[0x80000fdc]:clmul t6, t5, t4<br> [0x80000fe0]:sd t6, 976(t2)<br>    |
| 149|[0x800036b8]<br>0xFFEFFC0000000000|- rs2_val == 4398046511104<br>                                                                                                                                          |[0x80000ff0]:clmul t6, t5, t4<br> [0x80000ff4]:sd t6, 984(t2)<br>    |
| 150|[0x800036c0]<br>0xFFF7FE0000000000|- rs2_val == 2199023255552<br>                                                                                                                                          |[0x80001004]:clmul t6, t5, t4<br> [0x80001008]:sd t6, 992(t2)<br>    |
| 151|[0x800036c8]<br>0xFFFBFF0000000000|- rs2_val == 1099511627776<br>                                                                                                                                          |[0x80001018]:clmul t6, t5, t4<br> [0x8000101c]:sd t6, 1000(t2)<br>   |
| 152|[0x800036d0]<br>0xFFFDFF8000000000|- rs2_val == 549755813888<br>                                                                                                                                           |[0x8000102c]:clmul t6, t5, t4<br> [0x80001030]:sd t6, 1008(t2)<br>   |
| 153|[0x800036d8]<br>0xFFFEFFC000000000|- rs2_val == 274877906944<br>                                                                                                                                           |[0x80001040]:clmul t6, t5, t4<br> [0x80001044]:sd t6, 1016(t2)<br>   |
| 154|[0x800036e0]<br>0xFFFF7FE000000000|- rs2_val == 137438953472<br>                                                                                                                                           |[0x80001054]:clmul t6, t5, t4<br> [0x80001058]:sd t6, 1024(t2)<br>   |
| 155|[0x800036e8]<br>0xFFFFBFF000000000|- rs2_val == 68719476736<br>                                                                                                                                            |[0x80001068]:clmul t6, t5, t4<br> [0x8000106c]:sd t6, 1032(t2)<br>   |
| 156|[0x800036f0]<br>0xFFFFDFF800000000|- rs2_val == 34359738368<br>                                                                                                                                            |[0x8000107c]:clmul t6, t5, t4<br> [0x80001080]:sd t6, 1040(t2)<br>   |
| 157|[0x800036f8]<br>0xFFFFEFFC00000000|- rs2_val == 17179869184<br>                                                                                                                                            |[0x80001090]:clmul t6, t5, t4<br> [0x80001094]:sd t6, 1048(t2)<br>   |
| 158|[0x80003700]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == 1<br>                                                                                                                                                      |[0x800010a0]:clmul t6, t5, t4<br> [0x800010a4]:sd t6, 1056(t2)<br>   |
| 159|[0x80003708]<br>0x98D8FC8FB655991A|- rs1_val == 0x6af29145404fd8ed and rs2_val == 0x990e75eafff569c2 #nosat<br>                                                                                            |[0x800010e0]:clmul t6, t5, t4<br> [0x800010e4]:sd t6, 1064(t2)<br>   |
| 160|[0x80003710]<br>0x0F04EB8525D38E88|- rs1_val == 0x6d23c0488a6019c1 and rs2_val == 0x860bdaad7447a088 #nosat<br>                                                                                            |[0x80001128]:clmul t6, t5, t4<br> [0x8000112c]:sd t6, 1072(t2)<br>   |
| 161|[0x80003718]<br>0xF7875B2226C795A0|- rs1_val == 0x1f7d946f17168ab3 and rs2_val == 0x66eae3d9bbb4f560 #nosat<br>                                                                                            |[0x80001170]:clmul t6, t5, t4<br> [0x80001174]:sd t6, 1080(t2)<br>   |
| 162|[0x80003720]<br>0xC17EF1E6A0882F84|- rs1_val == 0xef1d54db32b81f27 and rs2_val == 0x1826a804284fe16c #nosat<br>                                                                                            |[0x800011b8]:clmul t6, t5, t4<br> [0x800011bc]:sd t6, 1088(t2)<br>   |
| 163|[0x80003728]<br>0xB972289F50A430F8|- rs1_val == 0xb694de26ad9e5431 and rs2_val == 0x293f9f6071fad878 #nosat<br>                                                                                            |[0x80001200]:clmul t6, t5, t4<br> [0x80001204]:sd t6, 1096(t2)<br>   |
| 164|[0x80003730]<br>0x9B4050241445762C|- rs1_val == 0x987daa20b858e304 and rs2_val == 0x1aa1beebefb902cb #nosat<br>                                                                                            |[0x80001248]:clmul t6, t5, t4<br> [0x8000124c]:sd t6, 1104(t2)<br>   |
| 165|[0x80003738]<br>0x0AD41E5574E47ADC|- rs1_val == 0x79bb7c341d3110bc and rs2_val == 0x8678f5e3d272e229 #nosat<br>                                                                                            |[0x80001290]:clmul t6, t5, t4<br> [0x80001294]:sd t6, 1112(t2)<br>   |
| 166|[0x80003740]<br>0xAF859D937F5C4B98|- rs1_val == 0xe2eaf4a09869be8c and rs2_val == 0x5b730cad91766f62 #nosat<br>                                                                                            |[0x800012d8]:clmul t6, t5, t4<br> [0x800012dc]:sd t6, 1120(t2)<br>   |
| 167|[0x80003748]<br>0x1C1709E2E8DC7A15|- rs1_val == 0xc0fe15dd0df9564b and rs2_val == 0xb22bbf7eb4c858fb #nosat<br>                                                                                            |[0x80001320]:clmul t6, t5, t4<br> [0x80001324]:sd t6, 1128(t2)<br>   |
| 168|[0x80003750]<br>0x61F615BDBF1D31E4|- rs1_val == 0x4113ee60952acffe and rs2_val == 0x53a66ed1dc80d916 #nosat<br>                                                                                            |[0x80001368]:clmul t6, t5, t4<br> [0x8000136c]:sd t6, 1136(t2)<br>   |
| 169|[0x80003758]<br>0x28E8E60BA9A8C1D6|- rs1_val == 0x40a5ff526f38a9c7 and rs2_val == 0xb6f9706fb4f741aa #nosat<br>                                                                                            |[0x800013b0]:clmul t6, t5, t4<br> [0x800013b4]:sd t6, 1144(t2)<br>   |
| 170|[0x80003760]<br>0xDA89B951677B846C|- rs1_val == 0x9bedfe390d6ddd9d and rs2_val == 0xd05668ae0fdb82bc #nosat<br>                                                                                            |[0x800013f8]:clmul t6, t5, t4<br> [0x800013fc]:sd t6, 1152(t2)<br>   |
| 171|[0x80003768]<br>0x8EF32D5AC2B3B1CE|- rs1_val == 0xd75739f82ac177c6 and rs2_val == 0xaa6bb2bde9ed477d #nosat<br>                                                                                            |[0x80001440]:clmul t6, t5, t4<br> [0x80001444]:sd t6, 1160(t2)<br>   |
| 172|[0x80003770]<br>0x887C36770E4EEE43|- rs1_val == 0x9a4e9ef10171f4df and rs2_val == 0x299c3bcf90efb625 #nosat<br>                                                                                            |[0x80001488]:clmul t6, t5, t4<br> [0x8000148c]:sd t6, 1168(t2)<br>   |
| 173|[0x80003778]<br>0xC099601FC3E051EE|- rs1_val == 0xd169a3f8cad5e297 and rs2_val == 0x1fc493caa371db42 #nosat<br>                                                                                            |[0x800014d0]:clmul t6, t5, t4<br> [0x800014d4]:sd t6, 1176(t2)<br>   |
| 174|[0x80003780]<br>0x45202A222FEF6007|- rs1_val == 0xd5b9fe5cf69bdcf3 and rs2_val == 0xf4c30307672f666d #nosat<br>                                                                                            |[0x80001518]:clmul t6, t5, t4<br> [0x8000151c]:sd t6, 1184(t2)<br>   |
| 175|[0x80003788]<br>0xEB353C4F0B958468|- rs1_val == 0xe4921bf73047c198 and rs2_val == 0xa0569d765ebc64cb #nosat<br>                                                                                            |[0x80001560]:clmul t6, t5, t4<br> [0x80001564]:sd t6, 1192(t2)<br>   |
| 176|[0x80003790]<br>0x8EEFE47CC3910581|- rs1_val == 0xfcc1b543c49cd65b and rs2_val == 0x2daf9ac7f5faf207 #nosat<br>                                                                                            |[0x800015a8]:clmul t6, t5, t4<br> [0x800015ac]:sd t6, 1200(t2)<br>   |
| 177|[0x80003798]<br>0x304FBF7067CA23E4|- rs1_val == 0x436f40f274b8de87 and rs2_val == 0x3459294ef273b44c #nosat<br>                                                                                            |[0x800015f0]:clmul t6, t5, t4<br> [0x800015f4]:sd t6, 1208(t2)<br>   |
| 178|[0x800037a0]<br>0x94FCCC07C6EAF403|- rs1_val == 0x75a3adb3254a9493 and rs2_val == 0xc5521660f3a3c571 #nosat<br>                                                                                            |[0x80001638]:clmul t6, t5, t4<br> [0x8000163c]:sd t6, 1216(t2)<br>   |
| 179|[0x800037a8]<br>0xCCCCCCCCCCCCCE66|- rs2_val == 12297829382473034410<br>                                                                                                                                   |[0x80001664]:clmul t6, t5, t4<br> [0x80001668]:sd t6, 1224(t2)<br>   |
| 180|[0x800037b0]<br>0x6666666666666733|- rs2_val == 6148914691236517205<br>                                                                                                                                    |[0x80001690]:clmul t6, t5, t4<br> [0x80001694]:sd t6, 1232(t2)<br>   |
| 181|[0x800037b8]<br>0xCCCCCCCCCCCCCE66|- rs1_val == 12297829382473034410<br>                                                                                                                                   |[0x800016bc]:clmul t6, t5, t4<br> [0x800016c0]:sd t6, 1240(t2)<br>   |
| 182|[0x800037c0]<br>0x6666666666666733|- rs1_val == 6148914691236517205<br>                                                                                                                                    |[0x800016e8]:clmul t6, t5, t4<br> [0x800016ec]:sd t6, 1248(t2)<br>   |
| 183|[0x800037c8]<br>0x0000000000000000|- rs2_val == 1<br> - rs1_val==0 and rs2_val==1<br>                                                                                                                      |[0x800016f8]:clmul t6, t5, t4<br> [0x800016fc]:sd t6, 1256(t2)<br>   |
| 184|[0x800037d0]<br>0x0000000000000000|- rs2_val == 4096<br> - rs1_val==0 and rs2_val==4096<br>                                                                                                                |[0x80001708]:clmul t6, t5, t4<br> [0x8000170c]:sd t6, 1264(t2)<br>   |
| 185|[0x800037d8]<br>0x0000000000000000|- rs1_val==1 and rs2_val==0<br>                                                                                                                                         |[0x80001718]:clmul t6, t5, t4<br> [0x8000171c]:sd t6, 1272(t2)<br>   |
| 186|[0x800037e0]<br>0x0000000000000001|- rs1_val==1 and rs2_val==1<br>                                                                                                                                         |[0x80001728]:clmul t6, t5, t4<br> [0x8000172c]:sd t6, 1280(t2)<br>   |
| 187|[0x800037e8]<br>0x0000000000001000|- rs1_val==1 and rs2_val==4096<br>                                                                                                                                      |[0x80001738]:clmul t6, t5, t4<br> [0x8000173c]:sd t6, 1288(t2)<br>   |
| 188|[0x800037f0]<br>0xFFFFF7FE00000000|- rs2_val == 8589934592<br>                                                                                                                                             |[0x8000174c]:clmul t6, t5, t4<br> [0x80001750]:sd t6, 1296(t2)<br>   |
| 189|[0x800037f8]<br>0xFFFFFBFF00000000|- rs2_val == 4294967296<br>                                                                                                                                             |[0x80001760]:clmul t6, t5, t4<br> [0x80001764]:sd t6, 1304(t2)<br>   |
| 190|[0x80003800]<br>0xFFFFFDFF80000000|- rs2_val == 2147483648<br>                                                                                                                                             |[0x80001774]:clmul t6, t5, t4<br> [0x80001778]:sd t6, 1312(t2)<br>   |
| 191|[0x80003808]<br>0xFFFFFEFFC0000000|- rs2_val == 1073741824<br>                                                                                                                                             |[0x80001784]:clmul t6, t5, t4<br> [0x80001788]:sd t6, 1320(t2)<br>   |
| 192|[0x80003810]<br>0xFFFFFF7FE0000000|- rs2_val == 536870912<br>                                                                                                                                              |[0x80001794]:clmul t6, t5, t4<br> [0x80001798]:sd t6, 1328(t2)<br>   |
| 193|[0x80003818]<br>0xFFFFFFBFF0000000|- rs2_val == 268435456<br>                                                                                                                                              |[0x800017a4]:clmul t6, t5, t4<br> [0x800017a8]:sd t6, 1336(t2)<br>   |
| 194|[0x80003820]<br>0xFFFFFFDFF8000000|- rs2_val == 134217728<br>                                                                                                                                              |[0x800017b4]:clmul t6, t5, t4<br> [0x800017b8]:sd t6, 1344(t2)<br>   |
| 195|[0x80003828]<br>0xFFFFFFEFFC000000|- rs2_val == 67108864<br>                                                                                                                                               |[0x800017c4]:clmul t6, t5, t4<br> [0x800017c8]:sd t6, 1352(t2)<br>   |
| 196|[0x80003830]<br>0xFFFFFFF7FE000000|- rs2_val == 33554432<br>                                                                                                                                               |[0x800017d4]:clmul t6, t5, t4<br> [0x800017d8]:sd t6, 1360(t2)<br>   |
| 197|[0x80003838]<br>0xFFFFFFFBFF000000|- rs2_val == 16777216<br>                                                                                                                                               |[0x800017e4]:clmul t6, t5, t4<br> [0x800017e8]:sd t6, 1368(t2)<br>   |
| 198|[0x80003840]<br>0xFFFFFFFDFF800000|- rs2_val == 8388608<br>                                                                                                                                                |[0x800017f4]:clmul t6, t5, t4<br> [0x800017f8]:sd t6, 1376(t2)<br>   |
| 199|[0x80003848]<br>0xFFFFFFFEFFC00000|- rs2_val == 4194304<br>                                                                                                                                                |[0x80001804]:clmul t6, t5, t4<br> [0x80001808]:sd t6, 1384(t2)<br>   |
| 200|[0x80003850]<br>0xFFFFFFFF7FE00000|- rs2_val == 2097152<br>                                                                                                                                                |[0x80001814]:clmul t6, t5, t4<br> [0x80001818]:sd t6, 1392(t2)<br>   |
| 201|[0x80003858]<br>0xFFFFFFFFBFF00000|- rs2_val == 1048576<br>                                                                                                                                                |[0x80001824]:clmul t6, t5, t4<br> [0x80001828]:sd t6, 1400(t2)<br>   |
| 202|[0x80003860]<br>0xFFFFFFFFDFF80000|- rs2_val == 524288<br>                                                                                                                                                 |[0x80001834]:clmul t6, t5, t4<br> [0x80001838]:sd t6, 1408(t2)<br>   |
| 203|[0x80003868]<br>0xFFFFFFFFEFFC0000|- rs2_val == 262144<br>                                                                                                                                                 |[0x80001844]:clmul t6, t5, t4<br> [0x80001848]:sd t6, 1416(t2)<br>   |
| 204|[0x80003870]<br>0xFFFFFFFFF7FE0000|- rs2_val == 131072<br>                                                                                                                                                 |[0x80001854]:clmul t6, t5, t4<br> [0x80001858]:sd t6, 1424(t2)<br>   |
| 205|[0x80003878]<br>0xFFFFFFFFFBFF0000|- rs2_val == 65536<br>                                                                                                                                                  |[0x80001864]:clmul t6, t5, t4<br> [0x80001868]:sd t6, 1432(t2)<br>   |
| 206|[0x80003880]<br>0xFFFFFFFFFDFF8000|- rs2_val == 32768<br>                                                                                                                                                  |[0x80001874]:clmul t6, t5, t4<br> [0x80001878]:sd t6, 1440(t2)<br>   |
| 207|[0x80003888]<br>0xFFFFFFFFFEFFC000|- rs2_val == 16384<br>                                                                                                                                                  |[0x80001884]:clmul t6, t5, t4<br> [0x80001888]:sd t6, 1448(t2)<br>   |
| 208|[0x80003890]<br>0xFFFFFFFFFF7FE000|- rs2_val == 8192<br>                                                                                                                                                   |[0x80001894]:clmul t6, t5, t4<br> [0x80001898]:sd t6, 1456(t2)<br>   |
| 209|[0x80003898]<br>0xFFFFFFFFFFDFF800|- rs2_val == 2048<br>                                                                                                                                                   |[0x800018a8]:clmul t6, t5, t4<br> [0x800018ac]:sd t6, 1464(t2)<br>   |
| 210|[0x800038a0]<br>0xFFFFFFFFFFEFFC00|- rs2_val == 1024<br>                                                                                                                                                   |[0x800018b8]:clmul t6, t5, t4<br> [0x800018bc]:sd t6, 1472(t2)<br>   |
| 211|[0x800038a8]<br>0xFFFFFFFFFFF7FE00|- rs2_val == 512<br>                                                                                                                                                    |[0x800018c8]:clmul t6, t5, t4<br> [0x800018cc]:sd t6, 1480(t2)<br>   |
| 212|[0x800038b0]<br>0xFFFFFFFFFFFBFF00|- rs2_val == 256<br>                                                                                                                                                    |[0x800018d8]:clmul t6, t5, t4<br> [0x800018dc]:sd t6, 1488(t2)<br>   |
| 213|[0x800038b8]<br>0xFFFFFFFFFFFDFF80|- rs2_val == 128<br>                                                                                                                                                    |[0x800018e8]:clmul t6, t5, t4<br> [0x800018ec]:sd t6, 1496(t2)<br>   |
| 214|[0x800038c0]<br>0xFFFFFFFFFFFEFFC0|- rs2_val == 64<br>                                                                                                                                                     |[0x800018f8]:clmul t6, t5, t4<br> [0x800018fc]:sd t6, 1504(t2)<br>   |
| 215|[0x800038c8]<br>0xFFFFFFFFFFFF7FE0|- rs2_val == 32<br>                                                                                                                                                     |[0x80001908]:clmul t6, t5, t4<br> [0x8000190c]:sd t6, 1512(t2)<br>   |
| 216|[0x800038d0]<br>0xFFFFFFFFFFFFBFF0|- rs2_val == 16<br>                                                                                                                                                     |[0x80001918]:clmul t6, t5, t4<br> [0x8000191c]:sd t6, 1520(t2)<br>   |
| 217|[0x800038d8]<br>0xFFFFFFFFFFFFDFF8|- rs2_val == 8<br>                                                                                                                                                      |[0x80001928]:clmul t6, t5, t4<br> [0x8000192c]:sd t6, 1528(t2)<br>   |
| 218|[0x800038e0]<br>0xFFFFFFFFFFFFEFFC|- rs2_val == 4<br>                                                                                                                                                      |[0x80001938]:clmul t6, t5, t4<br> [0x8000193c]:sd t6, 1536(t2)<br>   |
| 219|[0x800038e8]<br>0xFFFFFFFFFFFFF7FE|- rs2_val == 2<br>                                                                                                                                                      |[0x80001948]:clmul t6, t5, t4<br> [0x8000194c]:sd t6, 1544(t2)<br>   |
| 220|[0x800038f0]<br>0x8000000000000000|- rs1_val == 9223372036854775808<br>                                                                                                                                    |[0x8000195c]:clmul t6, t5, t4<br> [0x80001960]:sd t6, 1552(t2)<br>   |
| 221|[0x800038f8]<br>0xC000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                    |[0x80001970]:clmul t6, t5, t4<br> [0x80001974]:sd t6, 1560(t2)<br>   |
| 222|[0x80003900]<br>0xE000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                    |[0x80001984]:clmul t6, t5, t4<br> [0x80001988]:sd t6, 1568(t2)<br>   |
| 223|[0x80003908]<br>0xF000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                    |[0x80001998]:clmul t6, t5, t4<br> [0x8000199c]:sd t6, 1576(t2)<br>   |
| 224|[0x80003910]<br>0xF800000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                     |[0x800019ac]:clmul t6, t5, t4<br> [0x800019b0]:sd t6, 1584(t2)<br>   |
| 225|[0x80003918]<br>0xFC00000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                     |[0x800019c0]:clmul t6, t5, t4<br> [0x800019c4]:sd t6, 1592(t2)<br>   |
| 226|[0x80003920]<br>0xFE00000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                     |[0x800019d4]:clmul t6, t5, t4<br> [0x800019d8]:sd t6, 1600(t2)<br>   |
| 227|[0x80003928]<br>0xFF00000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                      |[0x800019e8]:clmul t6, t5, t4<br> [0x800019ec]:sd t6, 1608(t2)<br>   |
| 228|[0x80003930]<br>0xFF80000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                      |[0x800019fc]:clmul t6, t5, t4<br> [0x80001a00]:sd t6, 1616(t2)<br>   |
| 229|[0x80003938]<br>0xFFC0000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                      |[0x80001a10]:clmul t6, t5, t4<br> [0x80001a14]:sd t6, 1624(t2)<br>   |
| 230|[0x80003940]<br>0x7FE0000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                       |[0x80001a24]:clmul t6, t5, t4<br> [0x80001a28]:sd t6, 1632(t2)<br>   |
| 231|[0x80003948]<br>0xBFF0000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                       |[0x80001a38]:clmul t6, t5, t4<br> [0x80001a3c]:sd t6, 1640(t2)<br>   |
| 232|[0x80003950]<br>0xDFF8000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                       |[0x80001a4c]:clmul t6, t5, t4<br> [0x80001a50]:sd t6, 1648(t2)<br>   |
| 233|[0x80003958]<br>0xEFFC000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                       |[0x80001a60]:clmul t6, t5, t4<br> [0x80001a64]:sd t6, 1656(t2)<br>   |
| 234|[0x80003960]<br>0xF7FE000000000000|- rs1_val == 562949953421312<br>                                                                                                                                        |[0x80001a74]:clmul t6, t5, t4<br> [0x80001a78]:sd t6, 1664(t2)<br>   |
| 235|[0x80003968]<br>0xFBFF000000000000|- rs1_val == 281474976710656<br>                                                                                                                                        |[0x80001a88]:clmul t6, t5, t4<br> [0x80001a8c]:sd t6, 1672(t2)<br>   |
| 236|[0x80003970]<br>0xFDFF800000000000|- rs1_val == 140737488355328<br>                                                                                                                                        |[0x80001a9c]:clmul t6, t5, t4<br> [0x80001aa0]:sd t6, 1680(t2)<br>   |
| 237|[0x80003978]<br>0xFEFFC00000000000|- rs1_val == 70368744177664<br>                                                                                                                                         |[0x80001ab0]:clmul t6, t5, t4<br> [0x80001ab4]:sd t6, 1688(t2)<br>   |
| 238|[0x80003980]<br>0xFF7FE00000000000|- rs1_val == 35184372088832<br>                                                                                                                                         |[0x80001ac4]:clmul t6, t5, t4<br> [0x80001ac8]:sd t6, 1696(t2)<br>   |
| 239|[0x80003988]<br>0xFFBFF00000000000|- rs1_val == 17592186044416<br>                                                                                                                                         |[0x80001ad8]:clmul t6, t5, t4<br> [0x80001adc]:sd t6, 1704(t2)<br>   |
| 240|[0x80003990]<br>0xFFDFF80000000000|- rs1_val == 8796093022208<br>                                                                                                                                          |[0x80001aec]:clmul t6, t5, t4<br> [0x80001af0]:sd t6, 1712(t2)<br>   |
| 241|[0x80003998]<br>0xFFEFFC0000000000|- rs1_val == 4398046511104<br>                                                                                                                                          |[0x80001b00]:clmul t6, t5, t4<br> [0x80001b04]:sd t6, 1720(t2)<br>   |
| 242|[0x800039a0]<br>0xFFF7FE0000000000|- rs1_val == 2199023255552<br>                                                                                                                                          |[0x80001b14]:clmul t6, t5, t4<br> [0x80001b18]:sd t6, 1728(t2)<br>   |
| 243|[0x800039a8]<br>0xFFFBFF0000000000|- rs1_val == 1099511627776<br>                                                                                                                                          |[0x80001b28]:clmul t6, t5, t4<br> [0x80001b2c]:sd t6, 1736(t2)<br>   |
| 244|[0x800039b0]<br>0xFFFDFF8000000000|- rs1_val == 549755813888<br>                                                                                                                                           |[0x80001b3c]:clmul t6, t5, t4<br> [0x80001b40]:sd t6, 1744(t2)<br>   |
| 245|[0x800039b8]<br>0xFFFEFFC000000000|- rs1_val == 274877906944<br>                                                                                                                                           |[0x80001b50]:clmul t6, t5, t4<br> [0x80001b54]:sd t6, 1752(t2)<br>   |
| 246|[0x800039c0]<br>0xFFFF7FE000000000|- rs1_val == 137438953472<br>                                                                                                                                           |[0x80001b64]:clmul t6, t5, t4<br> [0x80001b68]:sd t6, 1760(t2)<br>   |
| 247|[0x800039c8]<br>0xFFFFBFF000000000|- rs1_val == 68719476736<br>                                                                                                                                            |[0x80001b78]:clmul t6, t5, t4<br> [0x80001b7c]:sd t6, 1768(t2)<br>   |
| 248|[0x800039d0]<br>0xFFFFDFF800000000|- rs1_val == 34359738368<br>                                                                                                                                            |[0x80001b8c]:clmul t6, t5, t4<br> [0x80001b90]:sd t6, 1776(t2)<br>   |
| 249|[0x800039d8]<br>0xFFFFEFFC00000000|- rs1_val == 17179869184<br>                                                                                                                                            |[0x80001ba0]:clmul t6, t5, t4<br> [0x80001ba4]:sd t6, 1784(t2)<br>   |
| 250|[0x800039e0]<br>0xFFFFF7FE00000000|- rs1_val == 8589934592<br>                                                                                                                                             |[0x80001bb4]:clmul t6, t5, t4<br> [0x80001bb8]:sd t6, 1792(t2)<br>   |
| 251|[0x800039e8]<br>0xFFFFFBFF00000000|- rs1_val == 4294967296<br>                                                                                                                                             |[0x80001bc8]:clmul t6, t5, t4<br> [0x80001bcc]:sd t6, 1800(t2)<br>   |
| 252|[0x800039f0]<br>0xFFFFFDFF80000000|- rs1_val == 2147483648<br>                                                                                                                                             |[0x80001bdc]:clmul t6, t5, t4<br> [0x80001be0]:sd t6, 1808(t2)<br>   |
| 253|[0x800039f8]<br>0xFFFFFEFFC0000000|- rs1_val == 1073741824<br>                                                                                                                                             |[0x80001bec]:clmul t6, t5, t4<br> [0x80001bf0]:sd t6, 1816(t2)<br>   |
| 254|[0x80003a00]<br>0xFFFFFF7FE0000000|- rs1_val == 536870912<br>                                                                                                                                              |[0x80001bfc]:clmul t6, t5, t4<br> [0x80001c00]:sd t6, 1824(t2)<br>   |
| 255|[0x80003a08]<br>0xFFFFFFBFF0000000|- rs1_val == 268435456<br>                                                                                                                                              |[0x80001c0c]:clmul t6, t5, t4<br> [0x80001c10]:sd t6, 1832(t2)<br>   |
| 256|[0x80003a10]<br>0xFFFFFFDFF8000000|- rs1_val == 134217728<br>                                                                                                                                              |[0x80001c1c]:clmul t6, t5, t4<br> [0x80001c20]:sd t6, 1840(t2)<br>   |
| 257|[0x80003a18]<br>0xFFFFFFEFFC000000|- rs1_val == 67108864<br>                                                                                                                                               |[0x80001c2c]:clmul t6, t5, t4<br> [0x80001c30]:sd t6, 1848(t2)<br>   |
| 258|[0x80003a20]<br>0xFFFFFFF7FE000000|- rs1_val == 33554432<br>                                                                                                                                               |[0x80001c3c]:clmul t6, t5, t4<br> [0x80001c40]:sd t6, 1856(t2)<br>   |
| 259|[0x80003a28]<br>0xFFFFFFFBFF000000|- rs1_val == 16777216<br>                                                                                                                                               |[0x80001c4c]:clmul t6, t5, t4<br> [0x80001c50]:sd t6, 1864(t2)<br>   |
| 260|[0x80003a30]<br>0xFFFFFFFDFF800000|- rs1_val == 8388608<br>                                                                                                                                                |[0x80001c5c]:clmul t6, t5, t4<br> [0x80001c60]:sd t6, 1872(t2)<br>   |
| 261|[0x80003a38]<br>0xFFFFFFFEFFC00000|- rs1_val == 4194304<br>                                                                                                                                                |[0x80001c6c]:clmul t6, t5, t4<br> [0x80001c70]:sd t6, 1880(t2)<br>   |
| 262|[0x80003a40]<br>0xFFFFFFFF7FE00000|- rs1_val == 2097152<br>                                                                                                                                                |[0x80001c7c]:clmul t6, t5, t4<br> [0x80001c80]:sd t6, 1888(t2)<br>   |
| 263|[0x80003a48]<br>0xFFFFFFFFBFF00000|- rs1_val == 1048576<br>                                                                                                                                                |[0x80001c8c]:clmul t6, t5, t4<br> [0x80001c90]:sd t6, 1896(t2)<br>   |
| 264|[0x80003a50]<br>0xFFFFFFFFDFF80000|- rs1_val == 524288<br>                                                                                                                                                 |[0x80001c9c]:clmul t6, t5, t4<br> [0x80001ca0]:sd t6, 1904(t2)<br>   |
| 265|[0x80003a58]<br>0xFFFFFFFFEFFC0000|- rs1_val == 262144<br>                                                                                                                                                 |[0x80001cac]:clmul t6, t5, t4<br> [0x80001cb0]:sd t6, 1912(t2)<br>   |
| 266|[0x80003a60]<br>0xFFFFFFFFF7FE0000|- rs1_val == 131072<br>                                                                                                                                                 |[0x80001cbc]:clmul t6, t5, t4<br> [0x80001cc0]:sd t6, 1920(t2)<br>   |
| 267|[0x80003a68]<br>0xFFFFFFFFFBFF0000|- rs1_val == 65536<br>                                                                                                                                                  |[0x80001ccc]:clmul t6, t5, t4<br> [0x80001cd0]:sd t6, 1928(t2)<br>   |
| 268|[0x80003a70]<br>0xFFFFFFFFFDFF8000|- rs1_val == 32768<br>                                                                                                                                                  |[0x80001cdc]:clmul t6, t5, t4<br> [0x80001ce0]:sd t6, 1936(t2)<br>   |
| 269|[0x80003a78]<br>0xFFFFFFFFFEFFC000|- rs1_val == 16384<br>                                                                                                                                                  |[0x80001cec]:clmul t6, t5, t4<br> [0x80001cf0]:sd t6, 1944(t2)<br>   |
| 270|[0x80003a80]<br>0xFFFFFFFFFF7FE000|- rs1_val == 8192<br>                                                                                                                                                   |[0x80001cfc]:clmul t6, t5, t4<br> [0x80001d00]:sd t6, 1952(t2)<br>   |
| 271|[0x80003a88]<br>0xFFFFFFFFFFBFF000|- rs1_val == 4096<br>                                                                                                                                                   |[0x80001d0c]:clmul t6, t5, t4<br> [0x80001d10]:sd t6, 1960(t2)<br>   |
| 272|[0x80003a90]<br>0xFFFFFFFFFFDFF800|- rs1_val == 2048<br>                                                                                                                                                   |[0x80001d20]:clmul t6, t5, t4<br> [0x80001d24]:sd t6, 1968(t2)<br>   |
| 273|[0x80003a98]<br>0xFFFFFFFFFFEFFC00|- rs1_val == 1024<br>                                                                                                                                                   |[0x80001d30]:clmul t6, t5, t4<br> [0x80001d34]:sd t6, 1976(t2)<br>   |
| 274|[0x80003aa0]<br>0xFFFFFFFFFFF7FE00|- rs1_val == 512<br>                                                                                                                                                    |[0x80001d40]:clmul t6, t5, t4<br> [0x80001d44]:sd t6, 1984(t2)<br>   |
| 275|[0x80003aa8]<br>0xFFFFFFFFFFFBFF00|- rs1_val == 256<br>                                                                                                                                                    |[0x80001d50]:clmul t6, t5, t4<br> [0x80001d54]:sd t6, 1992(t2)<br>   |
| 276|[0x80003ab0]<br>0xFFFFFFFFFFFDFF80|- rs1_val == 128<br>                                                                                                                                                    |[0x80001d60]:clmul t6, t5, t4<br> [0x80001d64]:sd t6, 2000(t2)<br>   |
| 277|[0x80003ab8]<br>0xFFFFFFFFFFFEFFC0|- rs1_val == 64<br>                                                                                                                                                     |[0x80001d70]:clmul t6, t5, t4<br> [0x80001d74]:sd t6, 2008(t2)<br>   |
| 278|[0x80003ac0]<br>0xFFFFFFFFFFFF7FE0|- rs1_val == 32<br>                                                                                                                                                     |[0x80001d80]:clmul t6, t5, t4<br> [0x80001d84]:sd t6, 2016(t2)<br>   |
| 279|[0x80003ac8]<br>0xFFFFFFFFFFFFBFF0|- rs1_val == 16<br>                                                                                                                                                     |[0x80001d90]:clmul t6, t5, t4<br> [0x80001d94]:sd t6, 2024(t2)<br>   |
| 280|[0x80003ad0]<br>0xFFFFFFFFFFFFDFF8|- rs1_val == 8<br>                                                                                                                                                      |[0x80001da0]:clmul t6, t5, t4<br> [0x80001da4]:sd t6, 2032(t2)<br>   |
| 281|[0x80003ad8]<br>0xFFFFFFFFFFFFEFFC|- rs1_val == 4<br>                                                                                                                                                      |[0x80001db0]:clmul t6, t5, t4<br> [0x80001db4]:sd t6, 2040(t2)<br>   |
| 282|[0x80003ae0]<br>0xFFFFFFFFFFFFF7FE|- rs1_val == 2<br>                                                                                                                                                      |[0x80001dc8]:clmul t6, t5, t4<br> [0x80001dcc]:sd t6, 0(t2)<br>      |
| 283|[0x80003af0]<br>0x5AAAAAAAAAAAA955|- rs2_val == 17293822569102704639<br>                                                                                                                                   |[0x80001df8]:clmul t6, t5, t4<br> [0x80001dfc]:sd t6, 8(t2)<br>      |
| 284|[0x80003b00]<br>0x55555155AAAAA955|- rs2_val == 18446744069414584319<br>                                                                                                                                   |[0x80001e28]:clmul t6, t5, t4<br> [0x80001e2c]:sd t6, 24(t2)<br>     |
