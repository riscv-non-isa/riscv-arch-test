
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002650')]      |
| SIG_REGION                | [('0x80004210', '0x80004c40', '326 dwords')]      |
| COV_LABELS                | max      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial14/64/riscof_work/max-01.S/ref.S    |
| Total Number of coverpoints| 444     |
| Total Coverpoints Hit     | 438      |
| Total Signature Updates   | 325      |
| STAT1                     | 322      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800014d8]:max t6, t5, t4
      [0x800014dc]:sd t6, 1480(t1)
 -- Signature Address: 0x800048b0 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : max
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val==0 and rs2_val==0
      - rs1_val == 0
      - rs1_val == rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80002630]:max t6, t5, t4
      [0x80002634]:sd t6, 312(t1)
 -- Signature Address: 0x80004c28 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : max
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == -17179869185
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80002648]:max t6, t5, t4
      [0x8000264c]:sd t6, 320(t1)
 -- Signature Address: 0x80004c30 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : max
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == -8589934593
      - rs1_val == 0






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

|s.no|            signature             |                                                                      coverpoints                                                                       |                               code                                |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80004210]<br>0x0000000000000001|- opcode : max<br> - rs1 : x31<br> - rs2 : x30<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs1_val != rs2_val<br> - rs2_val == 1<br> - rs1_val == 0<br> |[0x800003a0]:max t6, t6, t5<br> [0x800003a4]:sd t6, 0(ra)<br>      |
|   2|[0x80004218]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs1_val==0 and rs2_val==0<br> - rs1_val == rs2_val<br> - rs2_val == 0<br>       |[0x800003b0]:max t4, t4, t4<br> [0x800003b4]:sd t4, 8(ra)<br>      |
|   3|[0x80004220]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_val == -4611686018427387905<br>                                             |[0x800003c8]:max t3, t5, t3<br> [0x800003cc]:sd t3, 16(ra)<br>     |
|   4|[0x80004228]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x27<br> - rd : x30<br> - rs1 == rs2 != rd<br>                                                                                   |[0x800003d8]:max t5, s11, s11<br> [0x800003dc]:sd t5, 24(ra)<br>   |
|   5|[0x80004230]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : x31<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == -1152921504606846977<br>                      |[0x800003f0]:max s11, t3, t6<br> [0x800003f4]:sd s11, 32(ra)<br>   |
|   6|[0x80004238]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x24<br> - rd : x26<br> - rs2_val == -576460752303423489<br>                                                                     |[0x80000408]:max s10, s9, s8<br> [0x8000040c]:sd s10, 40(ra)<br>   |
|   7|[0x80004240]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x26<br> - rd : x25<br> - rs2_val == -288230376151711745<br>                                                                     |[0x80000420]:max s9, s8, s10<br> [0x80000424]:sd s9, 48(ra)<br>    |
|   8|[0x80004248]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x25<br> - rd : x24<br> - rs2_val == -144115188075855873<br>                                                                     |[0x80000438]:max s8, s10, s9<br> [0x8000043c]:sd s8, 56(ra)<br>    |
|   9|[0x80004250]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x21<br> - rd : x23<br> - rs2_val == -72057594037927937<br>                                                                      |[0x80000450]:max s7, s6, s5<br> [0x80000454]:sd s7, 64(ra)<br>     |
|  10|[0x80004258]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x23<br> - rd : x22<br> - rs2_val == -36028797018963969<br>                                                                      |[0x80000468]:max s6, s5, s7<br> [0x8000046c]:sd s6, 72(ra)<br>     |
|  11|[0x80004260]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == -18014398509481985<br>                                                                      |[0x80000480]:max s5, s7, s6<br> [0x80000484]:sd s5, 80(ra)<br>     |
|  12|[0x80004268]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x18<br> - rd : x20<br> - rs2_val == -9007199254740993<br>                                                                       |[0x80000498]:max s4, s3, s2<br> [0x8000049c]:sd s4, 88(ra)<br>     |
|  13|[0x80004270]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == -4503599627370497<br>                                                                       |[0x800004b0]:max s3, s2, s4<br> [0x800004b4]:sd s3, 96(ra)<br>     |
|  14|[0x80004278]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x19<br> - rd : x18<br> - rs2_val == -2251799813685249<br>                                                                       |[0x800004c8]:max s2, s4, s3<br> [0x800004cc]:sd s2, 104(ra)<br>    |
|  15|[0x80004280]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x15<br> - rd : x17<br> - rs2_val == -1125899906842625<br>                                                                       |[0x800004e0]:max a7, a6, a5<br> [0x800004e4]:sd a7, 112(ra)<br>    |
|  16|[0x80004288]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x17<br> - rd : x16<br> - rs2_val == -562949953421313<br>                                                                        |[0x800004f8]:max a6, a5, a7<br> [0x800004fc]:sd a6, 120(ra)<br>    |
|  17|[0x80004290]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == -281474976710657<br>                                                                        |[0x80000510]:max a5, a7, a6<br> [0x80000514]:sd a5, 128(ra)<br>    |
|  18|[0x80004298]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x12<br> - rd : x14<br> - rs2_val == -140737488355329<br>                                                                        |[0x80000528]:max a4, a3, a2<br> [0x8000052c]:sd a4, 136(ra)<br>    |
|  19|[0x800042a0]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == -70368744177665<br>                                                                         |[0x80000540]:max a3, a2, a4<br> [0x80000544]:sd a3, 144(ra)<br>    |
|  20|[0x800042a8]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x13<br> - rd : x12<br> - rs2_val == -35184372088833<br>                                                                         |[0x80000558]:max a2, a4, a3<br> [0x8000055c]:sd a2, 152(ra)<br>    |
|  21|[0x800042b0]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x9<br> - rd : x11<br> - rs2_val == -17592186044417<br>                                                                          |[0x80000570]:max a1, a0, s1<br> [0x80000574]:sd a1, 160(ra)<br>    |
|  22|[0x800042b8]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x11<br> - rd : x10<br> - rs2_val == -8796093022209<br>                                                                           |[0x80000588]:max a0, s1, a1<br> [0x8000058c]:sd a0, 168(ra)<br>    |
|  23|[0x800042c0]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == -4398046511105<br>                                                                           |[0x800005a0]:max s1, a1, a0<br> [0x800005a4]:sd s1, 176(ra)<br>    |
|  24|[0x800042c8]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x6<br> - rd : x8<br> - rs2_val == -2199023255553<br>                                                                             |[0x800005b8]:max fp, t2, t1<br> [0x800005bc]:sd fp, 184(ra)<br>    |
|  25|[0x800042d0]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == -1099511627777<br>                                                                             |[0x800005d0]:max t2, t1, fp<br> [0x800005d4]:sd t2, 192(ra)<br>    |
|  26|[0x800042d8]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x7<br> - rd : x6<br> - rs2_val == -549755813889<br>                                                                              |[0x800005e8]:max t1, fp, t2<br> [0x800005ec]:sd t1, 200(ra)<br>    |
|  27|[0x800042e0]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : x3<br> - rd : x5<br> - rs2_val == -274877906945<br>                                                                              |[0x80000600]:max t0, tp, gp<br> [0x80000604]:sd t0, 208(ra)<br>    |
|  28|[0x800042e8]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x5<br> - rd : x4<br> - rs2_val == -137438953473<br>                                                                              |[0x80000620]:max tp, gp, t0<br> [0x80000624]:sd tp, 0(t1)<br>      |
|  29|[0x800042f0]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == -68719476737<br>                                                                               |[0x80000638]:max gp, t0, tp<br> [0x8000063c]:sd gp, 8(t1)<br>      |
|  30|[0x800042f8]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x0<br> - rd : x2<br>                                                                                                             |[0x80000648]:max sp, ra, zero<br> [0x8000064c]:sd sp, 16(t1)<br>   |
|  31|[0x80004300]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == -17179869185<br>                                                                               |[0x80000660]:max ra, zero, sp<br> [0x80000664]:sd ra, 24(t1)<br>   |
|  32|[0x80004308]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x1<br> - rd : x0<br> - rs2_val == -8589934593<br>                                                                                |[0x80000678]:max zero, sp, ra<br> [0x8000067c]:sd zero, 32(t1)<br> |
|  33|[0x80004310]<br>0x0000000000000000|- rs2_val == -4294967297<br>                                                                                                                            |[0x80000690]:max t6, t5, t4<br> [0x80000694]:sd t6, 40(t1)<br>     |
|  34|[0x80004318]<br>0x0000000000000000|- rs2_val == -2147483649<br>                                                                                                                            |[0x800006a8]:max t6, t5, t4<br> [0x800006ac]:sd t6, 48(t1)<br>     |
|  35|[0x80004320]<br>0x0000000000000000|- rs2_val == -1073741825<br>                                                                                                                            |[0x800006bc]:max t6, t5, t4<br> [0x800006c0]:sd t6, 56(t1)<br>     |
|  36|[0x80004328]<br>0x0000000000000000|- rs2_val == -536870913<br>                                                                                                                             |[0x800006d0]:max t6, t5, t4<br> [0x800006d4]:sd t6, 64(t1)<br>     |
|  37|[0x80004330]<br>0x0000000000000000|- rs2_val == -268435457<br>                                                                                                                             |[0x800006e4]:max t6, t5, t4<br> [0x800006e8]:sd t6, 72(t1)<br>     |
|  38|[0x80004338]<br>0x0000000000000000|- rs2_val == -134217729<br>                                                                                                                             |[0x800006f8]:max t6, t5, t4<br> [0x800006fc]:sd t6, 80(t1)<br>     |
|  39|[0x80004340]<br>0x0000000000000000|- rs2_val == -67108865<br>                                                                                                                              |[0x8000070c]:max t6, t5, t4<br> [0x80000710]:sd t6, 88(t1)<br>     |
|  40|[0x80004348]<br>0x0000000000000000|- rs2_val == -33554433<br>                                                                                                                              |[0x80000720]:max t6, t5, t4<br> [0x80000724]:sd t6, 96(t1)<br>     |
|  41|[0x80004350]<br>0x0000000000000000|- rs2_val == -16777217<br>                                                                                                                              |[0x80000734]:max t6, t5, t4<br> [0x80000738]:sd t6, 104(t1)<br>    |
|  42|[0x80004358]<br>0x0000000000000000|- rs2_val == -8388609<br>                                                                                                                               |[0x80000748]:max t6, t5, t4<br> [0x8000074c]:sd t6, 112(t1)<br>    |
|  43|[0x80004360]<br>0x0000000000000000|- rs2_val == -4194305<br>                                                                                                                               |[0x8000075c]:max t6, t5, t4<br> [0x80000760]:sd t6, 120(t1)<br>    |
|  44|[0x80004368]<br>0x0000000000000000|- rs2_val == -2097153<br>                                                                                                                               |[0x80000770]:max t6, t5, t4<br> [0x80000774]:sd t6, 128(t1)<br>    |
|  45|[0x80004370]<br>0x0000000000000000|- rs2_val == -1048577<br>                                                                                                                               |[0x80000784]:max t6, t5, t4<br> [0x80000788]:sd t6, 136(t1)<br>    |
|  46|[0x80004378]<br>0x0000000000000000|- rs2_val == -524289<br>                                                                                                                                |[0x80000798]:max t6, t5, t4<br> [0x8000079c]:sd t6, 144(t1)<br>    |
|  47|[0x80004380]<br>0x0000000000000000|- rs2_val == -262145<br>                                                                                                                                |[0x800007ac]:max t6, t5, t4<br> [0x800007b0]:sd t6, 152(t1)<br>    |
|  48|[0x80004388]<br>0x0000000000000000|- rs2_val == -131073<br>                                                                                                                                |[0x800007c0]:max t6, t5, t4<br> [0x800007c4]:sd t6, 160(t1)<br>    |
|  49|[0x80004390]<br>0x0000000000000000|- rs2_val == -65537<br>                                                                                                                                 |[0x800007d4]:max t6, t5, t4<br> [0x800007d8]:sd t6, 168(t1)<br>    |
|  50|[0x80004398]<br>0x0000000000000000|- rs2_val == -32769<br>                                                                                                                                 |[0x800007e8]:max t6, t5, t4<br> [0x800007ec]:sd t6, 176(t1)<br>    |
|  51|[0x800043a0]<br>0x0000000000000000|- rs2_val == -16385<br>                                                                                                                                 |[0x800007fc]:max t6, t5, t4<br> [0x80000800]:sd t6, 184(t1)<br>    |
|  52|[0x800043a8]<br>0x0000000000000000|- rs2_val == -8193<br>                                                                                                                                  |[0x80000810]:max t6, t5, t4<br> [0x80000814]:sd t6, 192(t1)<br>    |
|  53|[0x800043b0]<br>0x0000000000000000|- rs2_val == -4097<br>                                                                                                                                  |[0x80000824]:max t6, t5, t4<br> [0x80000828]:sd t6, 200(t1)<br>    |
|  54|[0x800043b8]<br>0x0000000000000000|- rs2_val == -2049<br>                                                                                                                                  |[0x80000838]:max t6, t5, t4<br> [0x8000083c]:sd t6, 208(t1)<br>    |
|  55|[0x800043c0]<br>0x0000000000000000|- rs2_val == -1025<br>                                                                                                                                  |[0x80000848]:max t6, t5, t4<br> [0x8000084c]:sd t6, 216(t1)<br>    |
|  56|[0x800043c8]<br>0x0000000000000000|- rs2_val == -513<br>                                                                                                                                   |[0x80000858]:max t6, t5, t4<br> [0x8000085c]:sd t6, 224(t1)<br>    |
|  57|[0x800043d0]<br>0x0000000000000000|- rs2_val == -257<br>                                                                                                                                   |[0x80000868]:max t6, t5, t4<br> [0x8000086c]:sd t6, 232(t1)<br>    |
|  58|[0x800043d8]<br>0x0000000000000000|- rs2_val == -129<br>                                                                                                                                   |[0x80000878]:max t6, t5, t4<br> [0x8000087c]:sd t6, 240(t1)<br>    |
|  59|[0x800043e0]<br>0x0000000000000000|- rs2_val == -65<br>                                                                                                                                    |[0x80000888]:max t6, t5, t4<br> [0x8000088c]:sd t6, 248(t1)<br>    |
|  60|[0x800043e8]<br>0x0000000000000000|- rs2_val == -33<br>                                                                                                                                    |[0x80000898]:max t6, t5, t4<br> [0x8000089c]:sd t6, 256(t1)<br>    |
|  61|[0x800043f0]<br>0x0000000000000000|- rs2_val == -17<br>                                                                                                                                    |[0x800008a8]:max t6, t5, t4<br> [0x800008ac]:sd t6, 264(t1)<br>    |
|  62|[0x800043f8]<br>0x0000000000000000|- rs2_val == -9<br>                                                                                                                                     |[0x800008b8]:max t6, t5, t4<br> [0x800008bc]:sd t6, 272(t1)<br>    |
|  63|[0x80004400]<br>0x0000000000000000|- rs2_val == -5<br>                                                                                                                                     |[0x800008c8]:max t6, t5, t4<br> [0x800008cc]:sd t6, 280(t1)<br>    |
|  64|[0x80004408]<br>0x0000000000000000|- rs2_val == -3<br>                                                                                                                                     |[0x800008d8]:max t6, t5, t4<br> [0x800008dc]:sd t6, 288(t1)<br>    |
|  65|[0x80004410]<br>0x0000000000000000|- rs2_val == -2<br>                                                                                                                                     |[0x800008e8]:max t6, t5, t4<br> [0x800008ec]:sd t6, 296(t1)<br>    |
|  66|[0x80004418]<br>0x7FFFFFFFFFFFFFFF|- rs1_val == 9223372036854775807<br> - rs1_val == (2**(xlen-1)-1)<br>                                                                                   |[0x80000900]:max t6, t5, t4<br> [0x80000904]:sd t6, 304(t1)<br>    |
|  67|[0x80004420]<br>0x0000000000000000|- rs1_val == -4611686018427387905<br>                                                                                                                   |[0x80000918]:max t6, t5, t4<br> [0x8000091c]:sd t6, 312(t1)<br>    |
|  68|[0x80004428]<br>0x0000000000000000|- rs1_val == -2305843009213693953<br>                                                                                                                   |[0x80000930]:max t6, t5, t4<br> [0x80000934]:sd t6, 320(t1)<br>    |
|  69|[0x80004430]<br>0x0000000000000000|- rs1_val == -1152921504606846977<br>                                                                                                                   |[0x80000948]:max t6, t5, t4<br> [0x8000094c]:sd t6, 328(t1)<br>    |
|  70|[0x80004438]<br>0x0000000000000000|- rs1_val == -576460752303423489<br>                                                                                                                    |[0x80000960]:max t6, t5, t4<br> [0x80000964]:sd t6, 336(t1)<br>    |
|  71|[0x80004440]<br>0x0000000000000000|- rs1_val == -288230376151711745<br>                                                                                                                    |[0x80000978]:max t6, t5, t4<br> [0x8000097c]:sd t6, 344(t1)<br>    |
|  72|[0x80004448]<br>0x0000000000000000|- rs1_val == -144115188075855873<br>                                                                                                                    |[0x80000990]:max t6, t5, t4<br> [0x80000994]:sd t6, 352(t1)<br>    |
|  73|[0x80004450]<br>0x0000000000000000|- rs1_val == -72057594037927937<br>                                                                                                                     |[0x800009a8]:max t6, t5, t4<br> [0x800009ac]:sd t6, 360(t1)<br>    |
|  74|[0x80004458]<br>0x0000000000000000|- rs1_val == -36028797018963969<br>                                                                                                                     |[0x800009c0]:max t6, t5, t4<br> [0x800009c4]:sd t6, 368(t1)<br>    |
|  75|[0x80004460]<br>0x0000000000000000|- rs1_val == -18014398509481985<br>                                                                                                                     |[0x800009d8]:max t6, t5, t4<br> [0x800009dc]:sd t6, 376(t1)<br>    |
|  76|[0x80004468]<br>0x0000000000000000|- rs1_val == -9007199254740993<br>                                                                                                                      |[0x800009f0]:max t6, t5, t4<br> [0x800009f4]:sd t6, 384(t1)<br>    |
|  77|[0x80004470]<br>0x0000000000000000|- rs1_val == -4503599627370497<br>                                                                                                                      |[0x80000a08]:max t6, t5, t4<br> [0x80000a0c]:sd t6, 392(t1)<br>    |
|  78|[0x80004478]<br>0x0000000000000000|- rs1_val == -2251799813685249<br>                                                                                                                      |[0x80000a20]:max t6, t5, t4<br> [0x80000a24]:sd t6, 400(t1)<br>    |
|  79|[0x80004480]<br>0x0000000000000000|- rs1_val == -1125899906842625<br>                                                                                                                      |[0x80000a38]:max t6, t5, t4<br> [0x80000a3c]:sd t6, 408(t1)<br>    |
|  80|[0x80004488]<br>0x0000000000000000|- rs1_val == -562949953421313<br>                                                                                                                       |[0x80000a50]:max t6, t5, t4<br> [0x80000a54]:sd t6, 416(t1)<br>    |
|  81|[0x80004490]<br>0x0000000000000000|- rs1_val == -281474976710657<br>                                                                                                                       |[0x80000a68]:max t6, t5, t4<br> [0x80000a6c]:sd t6, 424(t1)<br>    |
|  82|[0x80004498]<br>0x0000000000000000|- rs1_val == -140737488355329<br>                                                                                                                       |[0x80000a80]:max t6, t5, t4<br> [0x80000a84]:sd t6, 432(t1)<br>    |
|  83|[0x800044a0]<br>0x0000000000000000|- rs1_val == -70368744177665<br>                                                                                                                        |[0x80000a98]:max t6, t5, t4<br> [0x80000a9c]:sd t6, 440(t1)<br>    |
|  84|[0x800044a8]<br>0x0000000000000000|- rs1_val == -35184372088833<br>                                                                                                                        |[0x80000ab0]:max t6, t5, t4<br> [0x80000ab4]:sd t6, 448(t1)<br>    |
|  85|[0x800044b0]<br>0x0000000000000000|- rs1_val == -17592186044417<br>                                                                                                                        |[0x80000ac8]:max t6, t5, t4<br> [0x80000acc]:sd t6, 456(t1)<br>    |
|  86|[0x800044b8]<br>0x0000000000000000|- rs1_val == -8796093022209<br>                                                                                                                         |[0x80000ae0]:max t6, t5, t4<br> [0x80000ae4]:sd t6, 464(t1)<br>    |
|  87|[0x800044c0]<br>0x0000000000000000|- rs1_val == -4398046511105<br>                                                                                                                         |[0x80000af8]:max t6, t5, t4<br> [0x80000afc]:sd t6, 472(t1)<br>    |
|  88|[0x800044c8]<br>0x0000000000000000|- rs1_val == -2199023255553<br>                                                                                                                         |[0x80000b10]:max t6, t5, t4<br> [0x80000b14]:sd t6, 480(t1)<br>    |
|  89|[0x800044d0]<br>0x0000000000000000|- rs1_val == -1099511627777<br>                                                                                                                         |[0x80000b28]:max t6, t5, t4<br> [0x80000b2c]:sd t6, 488(t1)<br>    |
|  90|[0x800044d8]<br>0x0000000000000000|- rs1_val == -549755813889<br>                                                                                                                          |[0x80000b40]:max t6, t5, t4<br> [0x80000b44]:sd t6, 496(t1)<br>    |
|  91|[0x800044e0]<br>0x0000000000000000|- rs1_val == -274877906945<br>                                                                                                                          |[0x80000b58]:max t6, t5, t4<br> [0x80000b5c]:sd t6, 504(t1)<br>    |
|  92|[0x800044e8]<br>0x0000000000000000|- rs1_val == -137438953473<br>                                                                                                                          |[0x80000b70]:max t6, t5, t4<br> [0x80000b74]:sd t6, 512(t1)<br>    |
|  93|[0x800044f0]<br>0x0000000000000000|- rs1_val == -68719476737<br>                                                                                                                           |[0x80000b88]:max t6, t5, t4<br> [0x80000b8c]:sd t6, 520(t1)<br>    |
|  94|[0x800044f8]<br>0x0000000000000000|- rs1_val == -34359738369<br>                                                                                                                           |[0x80000ba0]:max t6, t5, t4<br> [0x80000ba4]:sd t6, 528(t1)<br>    |
|  95|[0x80004500]<br>0x0000000000000000|- rs1_val == -17179869185<br>                                                                                                                           |[0x80000bb8]:max t6, t5, t4<br> [0x80000bbc]:sd t6, 536(t1)<br>    |
|  96|[0x80004508]<br>0x0000000000000000|- rs1_val == -8589934593<br>                                                                                                                            |[0x80000bd0]:max t6, t5, t4<br> [0x80000bd4]:sd t6, 544(t1)<br>    |
|  97|[0x80004510]<br>0x0000000000000000|- rs1_val == -4294967297<br>                                                                                                                            |[0x80000be8]:max t6, t5, t4<br> [0x80000bec]:sd t6, 552(t1)<br>    |
|  98|[0x80004518]<br>0x0000000000000000|- rs1_val == -2147483649<br>                                                                                                                            |[0x80000c00]:max t6, t5, t4<br> [0x80000c04]:sd t6, 560(t1)<br>    |
|  99|[0x80004520]<br>0x0000000000000000|- rs1_val == -1073741825<br>                                                                                                                            |[0x80000c14]:max t6, t5, t4<br> [0x80000c18]:sd t6, 568(t1)<br>    |
| 100|[0x80004528]<br>0x0000000000000000|- rs1_val == -536870913<br>                                                                                                                             |[0x80000c28]:max t6, t5, t4<br> [0x80000c2c]:sd t6, 576(t1)<br>    |
| 101|[0x80004530]<br>0x0000000000000000|- rs1_val == -268435457<br>                                                                                                                             |[0x80000c3c]:max t6, t5, t4<br> [0x80000c40]:sd t6, 584(t1)<br>    |
| 102|[0x80004538]<br>0x0000000000000000|- rs1_val == -134217729<br>                                                                                                                             |[0x80000c50]:max t6, t5, t4<br> [0x80000c54]:sd t6, 592(t1)<br>    |
| 103|[0x80004540]<br>0x0000000000000000|- rs1_val == -67108865<br>                                                                                                                              |[0x80000c64]:max t6, t5, t4<br> [0x80000c68]:sd t6, 600(t1)<br>    |
| 104|[0x80004548]<br>0x0000000000000000|- rs1_val == -33554433<br>                                                                                                                              |[0x80000c78]:max t6, t5, t4<br> [0x80000c7c]:sd t6, 608(t1)<br>    |
| 105|[0x80004550]<br>0x0000000000000000|- rs1_val == -16777217<br>                                                                                                                              |[0x80000c8c]:max t6, t5, t4<br> [0x80000c90]:sd t6, 616(t1)<br>    |
| 106|[0x80004558]<br>0x0000000000000000|- rs1_val == -8388609<br>                                                                                                                               |[0x80000ca0]:max t6, t5, t4<br> [0x80000ca4]:sd t6, 624(t1)<br>    |
| 107|[0x80004560]<br>0x0000000000000000|- rs1_val == -4194305<br>                                                                                                                               |[0x80000cb4]:max t6, t5, t4<br> [0x80000cb8]:sd t6, 632(t1)<br>    |
| 108|[0x80004568]<br>0x0000000000000000|- rs1_val == -2097153<br>                                                                                                                               |[0x80000cc8]:max t6, t5, t4<br> [0x80000ccc]:sd t6, 640(t1)<br>    |
| 109|[0x80004570]<br>0x0000000000000000|- rs1_val == -1048577<br>                                                                                                                               |[0x80000cdc]:max t6, t5, t4<br> [0x80000ce0]:sd t6, 648(t1)<br>    |
| 110|[0x80004578]<br>0x0000000000000000|- rs1_val == -524289<br>                                                                                                                                |[0x80000cf0]:max t6, t5, t4<br> [0x80000cf4]:sd t6, 656(t1)<br>    |
| 111|[0x80004580]<br>0x0000000000000000|- rs1_val == -262145<br>                                                                                                                                |[0x80000d04]:max t6, t5, t4<br> [0x80000d08]:sd t6, 664(t1)<br>    |
| 112|[0x80004588]<br>0x0000000000000000|- rs1_val == -131073<br>                                                                                                                                |[0x80000d18]:max t6, t5, t4<br> [0x80000d1c]:sd t6, 672(t1)<br>    |
| 113|[0x80004590]<br>0x0000000000000000|- rs1_val == -65537<br>                                                                                                                                 |[0x80000d2c]:max t6, t5, t4<br> [0x80000d30]:sd t6, 680(t1)<br>    |
| 114|[0x80004598]<br>0x0000000000000000|- rs1_val == -32769<br>                                                                                                                                 |[0x80000d40]:max t6, t5, t4<br> [0x80000d44]:sd t6, 688(t1)<br>    |
| 115|[0x800045a0]<br>0x0000000000000000|- rs1_val == -16385<br>                                                                                                                                 |[0x80000d54]:max t6, t5, t4<br> [0x80000d58]:sd t6, 696(t1)<br>    |
| 116|[0x800045a8]<br>0x0000000000000000|- rs1_val == -8193<br>                                                                                                                                  |[0x80000d68]:max t6, t5, t4<br> [0x80000d6c]:sd t6, 704(t1)<br>    |
| 117|[0x800045b0]<br>0x0000000000000000|- rs1_val == -4097<br>                                                                                                                                  |[0x80000d7c]:max t6, t5, t4<br> [0x80000d80]:sd t6, 712(t1)<br>    |
| 118|[0x800045b8]<br>0x0000000000000000|- rs1_val == -2049<br>                                                                                                                                  |[0x80000d90]:max t6, t5, t4<br> [0x80000d94]:sd t6, 720(t1)<br>    |
| 119|[0x800045c0]<br>0x0000000000000000|- rs1_val == -1025<br>                                                                                                                                  |[0x80000da0]:max t6, t5, t4<br> [0x80000da4]:sd t6, 728(t1)<br>    |
| 120|[0x800045c8]<br>0x0000000000000000|- rs1_val == -513<br>                                                                                                                                   |[0x80000db0]:max t6, t5, t4<br> [0x80000db4]:sd t6, 736(t1)<br>    |
| 121|[0x800045d0]<br>0x0000000000000000|- rs1_val == -257<br>                                                                                                                                   |[0x80000dc0]:max t6, t5, t4<br> [0x80000dc4]:sd t6, 744(t1)<br>    |
| 122|[0x800045d8]<br>0x0000000000000000|- rs1_val == -129<br>                                                                                                                                   |[0x80000dd0]:max t6, t5, t4<br> [0x80000dd4]:sd t6, 752(t1)<br>    |
| 123|[0x800045e0]<br>0x0000000000000000|- rs1_val == -65<br>                                                                                                                                    |[0x80000de0]:max t6, t5, t4<br> [0x80000de4]:sd t6, 760(t1)<br>    |
| 124|[0x800045e8]<br>0x0000000000000000|- rs1_val == -33<br>                                                                                                                                    |[0x80000df0]:max t6, t5, t4<br> [0x80000df4]:sd t6, 768(t1)<br>    |
| 125|[0x800045f0]<br>0x0000000000000000|- rs1_val == -17<br>                                                                                                                                    |[0x80000e00]:max t6, t5, t4<br> [0x80000e04]:sd t6, 776(t1)<br>    |
| 126|[0x800045f8]<br>0x0000000000000000|- rs1_val == -9<br>                                                                                                                                     |[0x80000e10]:max t6, t5, t4<br> [0x80000e14]:sd t6, 784(t1)<br>    |
| 127|[0x80004600]<br>0x0000000000000000|- rs1_val == -5<br>                                                                                                                                     |[0x80000e20]:max t6, t5, t4<br> [0x80000e24]:sd t6, 792(t1)<br>    |
| 128|[0x80004608]<br>0x0000000000000000|- rs1_val == -3<br>                                                                                                                                     |[0x80000e30]:max t6, t5, t4<br> [0x80000e34]:sd t6, 800(t1)<br>    |
| 129|[0x80004610]<br>0x0000000000000000|- rs1_val == -2<br>                                                                                                                                     |[0x80000e40]:max t6, t5, t4<br> [0x80000e44]:sd t6, 808(t1)<br>    |
| 130|[0x80004618]<br>0x0000000000000000|- rs2_val == -9223372036854775808<br> - rs2_val == (-2**(xlen-1))<br>                                                                                   |[0x80000e54]:max t6, t5, t4<br> [0x80000e58]:sd t6, 816(t1)<br>    |
| 131|[0x80004620]<br>0x4000000000000000|- rs2_val == 4611686018427387904<br>                                                                                                                    |[0x80000e68]:max t6, t5, t4<br> [0x80000e6c]:sd t6, 824(t1)<br>    |
| 132|[0x80004628]<br>0x2000000000000000|- rs2_val == 2305843009213693952<br>                                                                                                                    |[0x80000e7c]:max t6, t5, t4<br> [0x80000e80]:sd t6, 832(t1)<br>    |
| 133|[0x80004630]<br>0x1000000000000000|- rs2_val == 1152921504606846976<br>                                                                                                                    |[0x80000e90]:max t6, t5, t4<br> [0x80000e94]:sd t6, 840(t1)<br>    |
| 134|[0x80004638]<br>0x0800000000000000|- rs2_val == 576460752303423488<br>                                                                                                                     |[0x80000ea4]:max t6, t5, t4<br> [0x80000ea8]:sd t6, 848(t1)<br>    |
| 135|[0x80004640]<br>0x0400000000000000|- rs2_val == 288230376151711744<br>                                                                                                                     |[0x80000eb8]:max t6, t5, t4<br> [0x80000ebc]:sd t6, 856(t1)<br>    |
| 136|[0x80004648]<br>0x0200000000000000|- rs2_val == 144115188075855872<br>                                                                                                                     |[0x80000ecc]:max t6, t5, t4<br> [0x80000ed0]:sd t6, 864(t1)<br>    |
| 137|[0x80004650]<br>0x0100000000000000|- rs2_val == 72057594037927936<br>                                                                                                                      |[0x80000ee0]:max t6, t5, t4<br> [0x80000ee4]:sd t6, 872(t1)<br>    |
| 138|[0x80004658]<br>0x0080000000000000|- rs2_val == 36028797018963968<br>                                                                                                                      |[0x80000ef4]:max t6, t5, t4<br> [0x80000ef8]:sd t6, 880(t1)<br>    |
| 139|[0x80004660]<br>0x0040000000000000|- rs2_val == 18014398509481984<br>                                                                                                                      |[0x80000f08]:max t6, t5, t4<br> [0x80000f0c]:sd t6, 888(t1)<br>    |
| 140|[0x80004668]<br>0x0020000000000000|- rs2_val == 9007199254740992<br>                                                                                                                       |[0x80000f1c]:max t6, t5, t4<br> [0x80000f20]:sd t6, 896(t1)<br>    |
| 141|[0x80004670]<br>0x0010000000000000|- rs2_val == 4503599627370496<br>                                                                                                                       |[0x80000f30]:max t6, t5, t4<br> [0x80000f34]:sd t6, 904(t1)<br>    |
| 142|[0x80004678]<br>0x0008000000000000|- rs2_val == 2251799813685248<br>                                                                                                                       |[0x80000f44]:max t6, t5, t4<br> [0x80000f48]:sd t6, 912(t1)<br>    |
| 143|[0x80004680]<br>0x0004000000000000|- rs2_val == 1125899906842624<br>                                                                                                                       |[0x80000f58]:max t6, t5, t4<br> [0x80000f5c]:sd t6, 920(t1)<br>    |
| 144|[0x80004688]<br>0x0002000000000000|- rs2_val == 562949953421312<br>                                                                                                                        |[0x80000f6c]:max t6, t5, t4<br> [0x80000f70]:sd t6, 928(t1)<br>    |
| 145|[0x80004690]<br>0x0001000000000000|- rs2_val == 281474976710656<br>                                                                                                                        |[0x80000f80]:max t6, t5, t4<br> [0x80000f84]:sd t6, 936(t1)<br>    |
| 146|[0x80004698]<br>0x0000800000000000|- rs2_val == 140737488355328<br>                                                                                                                        |[0x80000f94]:max t6, t5, t4<br> [0x80000f98]:sd t6, 944(t1)<br>    |
| 147|[0x800046a0]<br>0x0000400000000000|- rs2_val == 70368744177664<br>                                                                                                                         |[0x80000fa8]:max t6, t5, t4<br> [0x80000fac]:sd t6, 952(t1)<br>    |
| 148|[0x800046a8]<br>0x0000200000000000|- rs2_val == 35184372088832<br>                                                                                                                         |[0x80000fbc]:max t6, t5, t4<br> [0x80000fc0]:sd t6, 960(t1)<br>    |
| 149|[0x800046b0]<br>0x0000100000000000|- rs2_val == 17592186044416<br>                                                                                                                         |[0x80000fd0]:max t6, t5, t4<br> [0x80000fd4]:sd t6, 968(t1)<br>    |
| 150|[0x800046b8]<br>0x0000080000000000|- rs2_val == 8796093022208<br>                                                                                                                          |[0x80000fe4]:max t6, t5, t4<br> [0x80000fe8]:sd t6, 976(t1)<br>    |
| 151|[0x800046c0]<br>0x0000040000000000|- rs2_val == 4398046511104<br>                                                                                                                          |[0x80000ff8]:max t6, t5, t4<br> [0x80000ffc]:sd t6, 984(t1)<br>    |
| 152|[0x800046c8]<br>0x0000020000000000|- rs2_val == 2199023255552<br>                                                                                                                          |[0x8000100c]:max t6, t5, t4<br> [0x80001010]:sd t6, 992(t1)<br>    |
| 153|[0x800046d0]<br>0x0000010000000000|- rs2_val == 1099511627776<br>                                                                                                                          |[0x80001020]:max t6, t5, t4<br> [0x80001024]:sd t6, 1000(t1)<br>   |
| 154|[0x800046d8]<br>0x0000008000000000|- rs2_val == 549755813888<br>                                                                                                                           |[0x80001034]:max t6, t5, t4<br> [0x80001038]:sd t6, 1008(t1)<br>   |
| 155|[0x800046e0]<br>0x0000004000000000|- rs2_val == 274877906944<br>                                                                                                                           |[0x80001048]:max t6, t5, t4<br> [0x8000104c]:sd t6, 1016(t1)<br>   |
| 156|[0x800046e8]<br>0x0000002000000000|- rs2_val == 137438953472<br>                                                                                                                           |[0x8000105c]:max t6, t5, t4<br> [0x80001060]:sd t6, 1024(t1)<br>   |
| 157|[0x800046f0]<br>0x0000001000000000|- rs2_val == 68719476736<br>                                                                                                                            |[0x80001070]:max t6, t5, t4<br> [0x80001074]:sd t6, 1032(t1)<br>   |
| 158|[0x800046f8]<br>0x0000000800000000|- rs2_val == 34359738368<br>                                                                                                                            |[0x80001084]:max t6, t5, t4<br> [0x80001088]:sd t6, 1040(t1)<br>   |
| 159|[0x80004700]<br>0x0000000400000000|- rs2_val == 17179869184<br>                                                                                                                            |[0x80001098]:max t6, t5, t4<br> [0x8000109c]:sd t6, 1048(t1)<br>   |
| 160|[0x80004708]<br>0x0000000200000000|- rs2_val == 8589934592<br>                                                                                                                             |[0x800010ac]:max t6, t5, t4<br> [0x800010b0]:sd t6, 1056(t1)<br>   |
| 161|[0x80004710]<br>0x0000000100000000|- rs2_val == 4294967296<br>                                                                                                                             |[0x800010c0]:max t6, t5, t4<br> [0x800010c4]:sd t6, 1064(t1)<br>   |
| 162|[0x80004718]<br>0x0000000080000000|- rs2_val == 2147483648<br>                                                                                                                             |[0x800010d4]:max t6, t5, t4<br> [0x800010d8]:sd t6, 1072(t1)<br>   |
| 163|[0x80004720]<br>0x0000000040000000|- rs2_val == 1073741824<br>                                                                                                                             |[0x800010e4]:max t6, t5, t4<br> [0x800010e8]:sd t6, 1080(t1)<br>   |
| 164|[0x80004728]<br>0x0000000020000000|- rs2_val == 536870912<br>                                                                                                                              |[0x800010f4]:max t6, t5, t4<br> [0x800010f8]:sd t6, 1088(t1)<br>   |
| 165|[0x80004730]<br>0x0000000010000000|- rs2_val == 268435456<br>                                                                                                                              |[0x80001104]:max t6, t5, t4<br> [0x80001108]:sd t6, 1096(t1)<br>   |
| 166|[0x80004738]<br>0x0000000008000000|- rs2_val == 134217728<br>                                                                                                                              |[0x80001114]:max t6, t5, t4<br> [0x80001118]:sd t6, 1104(t1)<br>   |
| 167|[0x80004740]<br>0x0000000004000000|- rs2_val == 67108864<br>                                                                                                                               |[0x80001124]:max t6, t5, t4<br> [0x80001128]:sd t6, 1112(t1)<br>   |
| 168|[0x80004748]<br>0x0000000002000000|- rs2_val == 33554432<br>                                                                                                                               |[0x80001134]:max t6, t5, t4<br> [0x80001138]:sd t6, 1120(t1)<br>   |
| 169|[0x80004750]<br>0x0000000001000000|- rs2_val == 16777216<br>                                                                                                                               |[0x80001144]:max t6, t5, t4<br> [0x80001148]:sd t6, 1128(t1)<br>   |
| 170|[0x80004758]<br>0x0000000000800000|- rs2_val == 8388608<br>                                                                                                                                |[0x80001154]:max t6, t5, t4<br> [0x80001158]:sd t6, 1136(t1)<br>   |
| 171|[0x80004760]<br>0x0000000000400000|- rs2_val == 4194304<br>                                                                                                                                |[0x80001164]:max t6, t5, t4<br> [0x80001168]:sd t6, 1144(t1)<br>   |
| 172|[0x80004768]<br>0x0000000000200000|- rs2_val == 2097152<br>                                                                                                                                |[0x80001174]:max t6, t5, t4<br> [0x80001178]:sd t6, 1152(t1)<br>   |
| 173|[0x80004770]<br>0x0000000000100000|- rs2_val == 1048576<br>                                                                                                                                |[0x80001184]:max t6, t5, t4<br> [0x80001188]:sd t6, 1160(t1)<br>   |
| 174|[0x80004778]<br>0x0000000000080000|- rs2_val == 524288<br>                                                                                                                                 |[0x80001194]:max t6, t5, t4<br> [0x80001198]:sd t6, 1168(t1)<br>   |
| 175|[0x80004780]<br>0x0000000000040000|- rs2_val == 262144<br>                                                                                                                                 |[0x800011a4]:max t6, t5, t4<br> [0x800011a8]:sd t6, 1176(t1)<br>   |
| 176|[0x80004788]<br>0x0000000000020000|- rs2_val == 131072<br>                                                                                                                                 |[0x800011b4]:max t6, t5, t4<br> [0x800011b8]:sd t6, 1184(t1)<br>   |
| 177|[0x80004790]<br>0x0000000000010000|- rs2_val == 65536<br>                                                                                                                                  |[0x800011c4]:max t6, t5, t4<br> [0x800011c8]:sd t6, 1192(t1)<br>   |
| 178|[0x80004798]<br>0x0000000000008000|- rs2_val == 32768<br>                                                                                                                                  |[0x800011d4]:max t6, t5, t4<br> [0x800011d8]:sd t6, 1200(t1)<br>   |
| 179|[0x800047a0]<br>0x0000000000004000|- rs2_val == 16384<br>                                                                                                                                  |[0x800011e4]:max t6, t5, t4<br> [0x800011e8]:sd t6, 1208(t1)<br>   |
| 180|[0x800047a8]<br>0x0000000000002000|- rs2_val == 8192<br>                                                                                                                                   |[0x800011f4]:max t6, t5, t4<br> [0x800011f8]:sd t6, 1216(t1)<br>   |
| 181|[0x800047b0]<br>0x0000000000001000|- rs2_val == 4096<br>                                                                                                                                   |[0x80001204]:max t6, t5, t4<br> [0x80001208]:sd t6, 1224(t1)<br>   |
| 182|[0x800047b8]<br>0x0000000000000800|- rs2_val == 2048<br>                                                                                                                                   |[0x80001218]:max t6, t5, t4<br> [0x8000121c]:sd t6, 1232(t1)<br>   |
| 183|[0x800047c0]<br>0x0000000000000400|- rs2_val == 1024<br>                                                                                                                                   |[0x80001228]:max t6, t5, t4<br> [0x8000122c]:sd t6, 1240(t1)<br>   |
| 184|[0x800047c8]<br>0x0000000000000200|- rs2_val == 512<br>                                                                                                                                    |[0x80001238]:max t6, t5, t4<br> [0x8000123c]:sd t6, 1248(t1)<br>   |
| 185|[0x800047d0]<br>0x0000000000000100|- rs2_val == 256<br>                                                                                                                                    |[0x80001248]:max t6, t5, t4<br> [0x8000124c]:sd t6, 1256(t1)<br>   |
| 186|[0x800047d8]<br>0x0000000000000080|- rs2_val == 128<br>                                                                                                                                    |[0x80001258]:max t6, t5, t4<br> [0x8000125c]:sd t6, 1264(t1)<br>   |
| 187|[0x800047e0]<br>0x0000000000000040|- rs2_val == 64<br>                                                                                                                                     |[0x80001268]:max t6, t5, t4<br> [0x8000126c]:sd t6, 1272(t1)<br>   |
| 188|[0x800047e8]<br>0x0000000000000020|- rs2_val == 32<br>                                                                                                                                     |[0x80001278]:max t6, t5, t4<br> [0x8000127c]:sd t6, 1280(t1)<br>   |
| 189|[0x800047f0]<br>0x0000000000000010|- rs2_val == 16<br>                                                                                                                                     |[0x80001288]:max t6, t5, t4<br> [0x8000128c]:sd t6, 1288(t1)<br>   |
| 190|[0x800047f8]<br>0x0000000000000008|- rs2_val == 8<br>                                                                                                                                      |[0x80001298]:max t6, t5, t4<br> [0x8000129c]:sd t6, 1296(t1)<br>   |
| 191|[0x80004800]<br>0x0000000000000004|- rs2_val == 4<br>                                                                                                                                      |[0x800012a8]:max t6, t5, t4<br> [0x800012ac]:sd t6, 1304(t1)<br>   |
| 192|[0x80004808]<br>0x0000000000000002|- rs2_val == 2<br>                                                                                                                                      |[0x800012b8]:max t6, t5, t4<br> [0x800012bc]:sd t6, 1312(t1)<br>   |
| 193|[0x80004810]<br>0x0000000000000000|- rs1_val == -9223372036854775808<br> - rs1_val == (-2**(xlen-1))<br>                                                                                   |[0x800012cc]:max t6, t5, t4<br> [0x800012d0]:sd t6, 1320(t1)<br>   |
| 194|[0x80004818]<br>0x4000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                    |[0x800012e0]:max t6, t5, t4<br> [0x800012e4]:sd t6, 1328(t1)<br>   |
| 195|[0x80004820]<br>0x2000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                    |[0x800012f4]:max t6, t5, t4<br> [0x800012f8]:sd t6, 1336(t1)<br>   |
| 196|[0x80004828]<br>0x1000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                    |[0x80001308]:max t6, t5, t4<br> [0x8000130c]:sd t6, 1344(t1)<br>   |
| 197|[0x80004830]<br>0x0800000000000000|- rs1_val == 576460752303423488<br>                                                                                                                     |[0x8000131c]:max t6, t5, t4<br> [0x80001320]:sd t6, 1352(t1)<br>   |
| 198|[0x80004838]<br>0x0400000000000000|- rs1_val == 288230376151711744<br>                                                                                                                     |[0x80001330]:max t6, t5, t4<br> [0x80001334]:sd t6, 1360(t1)<br>   |
| 199|[0x80004840]<br>0x0200000000000000|- rs1_val == 144115188075855872<br>                                                                                                                     |[0x80001344]:max t6, t5, t4<br> [0x80001348]:sd t6, 1368(t1)<br>   |
| 200|[0x80004848]<br>0x0100000000000000|- rs1_val == 72057594037927936<br>                                                                                                                      |[0x80001358]:max t6, t5, t4<br> [0x8000135c]:sd t6, 1376(t1)<br>   |
| 201|[0x80004850]<br>0x0080000000000000|- rs1_val == 36028797018963968<br>                                                                                                                      |[0x8000136c]:max t6, t5, t4<br> [0x80001370]:sd t6, 1384(t1)<br>   |
| 202|[0x80004858]<br>0x0040000000000000|- rs1_val == 18014398509481984<br>                                                                                                                      |[0x80001380]:max t6, t5, t4<br> [0x80001384]:sd t6, 1392(t1)<br>   |
| 203|[0x80004860]<br>0x0000000000000001|- rs1_val == 1<br>                                                                                                                                      |[0x80001390]:max t6, t5, t4<br> [0x80001394]:sd t6, 1400(t1)<br>   |
| 204|[0x80004868]<br>0xFFFFFFFFFFFFFFFF|- rs1_val==-1 and rs2_val==-1<br> - rs1_val < 0 and rs2_val < 0<br>                                                                                     |[0x800013a0]:max t6, t5, t4<br> [0x800013a4]:sd t6, 1408(t1)<br>   |
| 205|[0x80004870]<br>0x0000000000000000|- rs1_val==-1 and rs2_val==0<br>                                                                                                                        |[0x800013b0]:max t6, t5, t4<br> [0x800013b4]:sd t6, 1416(t1)<br>   |
| 206|[0x80004878]<br>0xFFFFFFFFFFFFFFFF|- rs1_val==-1 and rs2_val==-3689348814741910324<br>                                                                                                     |[0x800013dc]:max t6, t5, t4<br> [0x800013e0]:sd t6, 1424(t1)<br>   |
| 207|[0x80004880]<br>0xFFFFFFFFFFFFFFFF|- rs1_val==-1 and rs2_val==-7378697629483820647<br>                                                                                                     |[0x80001408]:max t6, t5, t4<br> [0x8000140c]:sd t6, 1432(t1)<br>   |
| 208|[0x80004888]<br>0x6666666666666666|- rs1_val==-1 and rs2_val==7378697629483820646<br> - rs1_val < 0 and rs2_val > 0<br>                                                                    |[0x80001434]:max t6, t5, t4<br> [0x80001438]:sd t6, 1440(t1)<br>   |
| 209|[0x80004890]<br>0x3333333333333333|- rs1_val==-1 and rs2_val==3689348814741910323<br>                                                                                                      |[0x80001460]:max t6, t5, t4<br> [0x80001464]:sd t6, 1448(t1)<br>   |
| 210|[0x80004898]<br>0xFFFFFFFFFFFFFFFF|- rs1_val==-1 and rs2_val==-6148914691236517206<br> - rs2_val == -6148914691236517206<br>                                                               |[0x8000148c]:max t6, t5, t4<br> [0x80001490]:sd t6, 1456(t1)<br>   |
| 211|[0x800048a0]<br>0x5555555555555555|- rs1_val==-1 and rs2_val==6148914691236517205<br> - rs2_val == 6148914691236517205<br>                                                                 |[0x800014b8]:max t6, t5, t4<br> [0x800014bc]:sd t6, 1464(t1)<br>   |
| 212|[0x800048a8]<br>0x0000000000000000|- rs1_val==0 and rs2_val==-1<br>                                                                                                                        |[0x800014c8]:max t6, t5, t4<br> [0x800014cc]:sd t6, 1472(t1)<br>   |
| 213|[0x800048b8]<br>0x0000000000000000|- rs1_val==0 and rs2_val==-3689348814741910324<br>                                                                                                      |[0x80001504]:max t6, t5, t4<br> [0x80001508]:sd t6, 1488(t1)<br>   |
| 214|[0x800048c0]<br>0x0000000000000000|- rs1_val==0 and rs2_val==-7378697629483820647<br>                                                                                                      |[0x80001530]:max t6, t5, t4<br> [0x80001534]:sd t6, 1496(t1)<br>   |
| 215|[0x800048c8]<br>0x6666666666666666|- rs1_val==0 and rs2_val==7378697629483820646<br>                                                                                                       |[0x8000155c]:max t6, t5, t4<br> [0x80001560]:sd t6, 1504(t1)<br>   |
| 216|[0x800048d0]<br>0x3333333333333333|- rs1_val==0 and rs2_val==3689348814741910323<br>                                                                                                       |[0x80001588]:max t6, t5, t4<br> [0x8000158c]:sd t6, 1512(t1)<br>   |
| 217|[0x800048d8]<br>0x0000000000000000|- rs1_val==0 and rs2_val==-6148914691236517206<br>                                                                                                      |[0x800015b4]:max t6, t5, t4<br> [0x800015b8]:sd t6, 1520(t1)<br>   |
| 218|[0x800048e0]<br>0x5555555555555555|- rs1_val==0 and rs2_val==6148914691236517205<br>                                                                                                       |[0x800015e0]:max t6, t5, t4<br> [0x800015e4]:sd t6, 1528(t1)<br>   |
| 219|[0x800048e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val==-3689348814741910324 and rs2_val==-1<br>                                                                                                     |[0x8000160c]:max t6, t5, t4<br> [0x80001610]:sd t6, 1536(t1)<br>   |
| 220|[0x800048f0]<br>0x0000000000000000|- rs1_val==-3689348814741910324 and rs2_val==0<br>                                                                                                      |[0x80001638]:max t6, t5, t4<br> [0x8000163c]:sd t6, 1544(t1)<br>   |
| 221|[0x800048f8]<br>0xCCCCCCCCCCCCCCCC|- rs1_val==-3689348814741910324 and rs2_val==-3689348814741910324<br>                                                                                   |[0x80001680]:max t6, t5, t4<br> [0x80001684]:sd t6, 1552(t1)<br>   |
| 222|[0x80004900]<br>0xCCCCCCCCCCCCCCCC|- rs1_val==-3689348814741910324 and rs2_val==-7378697629483820647<br>                                                                                   |[0x800016c8]:max t6, t5, t4<br> [0x800016cc]:sd t6, 1560(t1)<br>   |
| 223|[0x80004908]<br>0x6666666666666666|- rs1_val==-3689348814741910324 and rs2_val==7378697629483820646<br>                                                                                    |[0x80001710]:max t6, t5, t4<br> [0x80001714]:sd t6, 1568(t1)<br>   |
| 224|[0x80004910]<br>0x3333333333333333|- rs1_val==-3689348814741910324 and rs2_val==3689348814741910323<br>                                                                                    |[0x80001758]:max t6, t5, t4<br> [0x8000175c]:sd t6, 1576(t1)<br>   |
| 225|[0x80004918]<br>0xCCCCCCCCCCCCCCCC|- rs1_val==-3689348814741910324 and rs2_val==-6148914691236517206<br>                                                                                   |[0x800017a0]:max t6, t5, t4<br> [0x800017a4]:sd t6, 1584(t1)<br>   |
| 226|[0x80004920]<br>0x5555555555555555|- rs1_val==-3689348814741910324 and rs2_val==6148914691236517205<br>                                                                                    |[0x800017e8]:max t6, t5, t4<br> [0x800017ec]:sd t6, 1592(t1)<br>   |
| 227|[0x80004928]<br>0xFFFFFFFFFFFFFFFF|- rs1_val==-7378697629483820647 and rs2_val==-1<br>                                                                                                     |[0x80001814]:max t6, t5, t4<br> [0x80001818]:sd t6, 1600(t1)<br>   |
| 228|[0x80004930]<br>0x0000000000000000|- rs1_val==-7378697629483820647 and rs2_val==0<br>                                                                                                      |[0x80001840]:max t6, t5, t4<br> [0x80001844]:sd t6, 1608(t1)<br>   |
| 229|[0x80004938]<br>0xCCCCCCCCCCCCCCCC|- rs1_val==-7378697629483820647 and rs2_val==-3689348814741910324<br>                                                                                   |[0x80001888]:max t6, t5, t4<br> [0x8000188c]:sd t6, 1616(t1)<br>   |
| 230|[0x80004940]<br>0x9999999999999999|- rs1_val==-7378697629483820647 and rs2_val==-7378697629483820647<br>                                                                                   |[0x800018d0]:max t6, t5, t4<br> [0x800018d4]:sd t6, 1624(t1)<br>   |
| 231|[0x80004948]<br>0x6666666666666666|- rs1_val==-7378697629483820647 and rs2_val==7378697629483820646<br>                                                                                    |[0x80001918]:max t6, t5, t4<br> [0x8000191c]:sd t6, 1632(t1)<br>   |
| 232|[0x80004950]<br>0x3333333333333333|- rs1_val==-7378697629483820647 and rs2_val==3689348814741910323<br>                                                                                    |[0x80001960]:max t6, t5, t4<br> [0x80001964]:sd t6, 1640(t1)<br>   |
| 233|[0x80004958]<br>0xAAAAAAAAAAAAAAAA|- rs1_val==-7378697629483820647 and rs2_val==-6148914691236517206<br>                                                                                   |[0x800019a8]:max t6, t5, t4<br> [0x800019ac]:sd t6, 1648(t1)<br>   |
| 234|[0x80004960]<br>0x5555555555555555|- rs1_val==-7378697629483820647 and rs2_val==6148914691236517205<br>                                                                                    |[0x800019f0]:max t6, t5, t4<br> [0x800019f4]:sd t6, 1656(t1)<br>   |
| 235|[0x80004968]<br>0x6666666666666666|- rs1_val==7378697629483820646 and rs2_val==-1<br> - rs1_val > 0 and rs2_val < 0<br>                                                                    |[0x80001a1c]:max t6, t5, t4<br> [0x80001a20]:sd t6, 1664(t1)<br>   |
| 236|[0x80004970]<br>0x6666666666666666|- rs1_val==7378697629483820646 and rs2_val==0<br>                                                                                                       |[0x80001a48]:max t6, t5, t4<br> [0x80001a4c]:sd t6, 1672(t1)<br>   |
| 237|[0x80004978]<br>0x6666666666666666|- rs1_val==7378697629483820646 and rs2_val==-3689348814741910324<br>                                                                                    |[0x80001a90]:max t6, t5, t4<br> [0x80001a94]:sd t6, 1680(t1)<br>   |
| 238|[0x80004980]<br>0x6666666666666666|- rs1_val==7378697629483820646 and rs2_val==-7378697629483820647<br>                                                                                    |[0x80001ad8]:max t6, t5, t4<br> [0x80001adc]:sd t6, 1688(t1)<br>   |
| 239|[0x80004988]<br>0x6666666666666666|- rs1_val==7378697629483820646 and rs2_val==7378697629483820646<br> - rs1_val > 0 and rs2_val > 0<br>                                                   |[0x80001b20]:max t6, t5, t4<br> [0x80001b24]:sd t6, 1696(t1)<br>   |
| 240|[0x80004990]<br>0x6666666666666666|- rs1_val==7378697629483820646 and rs2_val==3689348814741910323<br>                                                                                     |[0x80001b68]:max t6, t5, t4<br> [0x80001b6c]:sd t6, 1704(t1)<br>   |
| 241|[0x80004998]<br>0x6666666666666666|- rs1_val==7378697629483820646 and rs2_val==-6148914691236517206<br>                                                                                    |[0x80001bb0]:max t6, t5, t4<br> [0x80001bb4]:sd t6, 1712(t1)<br>   |
| 242|[0x800049a0]<br>0x6666666666666666|- rs1_val==7378697629483820646 and rs2_val==6148914691236517205<br>                                                                                     |[0x80001bf8]:max t6, t5, t4<br> [0x80001bfc]:sd t6, 1720(t1)<br>   |
| 243|[0x800049a8]<br>0x3333333333333333|- rs1_val==3689348814741910323 and rs2_val==-1<br>                                                                                                      |[0x80001c24]:max t6, t5, t4<br> [0x80001c28]:sd t6, 1728(t1)<br>   |
| 244|[0x800049b0]<br>0x3333333333333333|- rs1_val==3689348814741910323 and rs2_val==0<br>                                                                                                       |[0x80001c50]:max t6, t5, t4<br> [0x80001c54]:sd t6, 1736(t1)<br>   |
| 245|[0x800049b8]<br>0x3333333333333333|- rs1_val==3689348814741910323 and rs2_val==-3689348814741910324<br>                                                                                    |[0x80001c98]:max t6, t5, t4<br> [0x80001c9c]:sd t6, 1744(t1)<br>   |
| 246|[0x800049c0]<br>0x3333333333333333|- rs1_val==3689348814741910323 and rs2_val==-7378697629483820647<br>                                                                                    |[0x80001ce0]:max t6, t5, t4<br> [0x80001ce4]:sd t6, 1752(t1)<br>   |
| 247|[0x800049c8]<br>0x6666666666666666|- rs1_val==3689348814741910323 and rs2_val==7378697629483820646<br>                                                                                     |[0x80001d28]:max t6, t5, t4<br> [0x80001d2c]:sd t6, 1760(t1)<br>   |
| 248|[0x800049d0]<br>0x3333333333333333|- rs1_val==3689348814741910323 and rs2_val==3689348814741910323<br>                                                                                     |[0x80001d70]:max t6, t5, t4<br> [0x80001d74]:sd t6, 1768(t1)<br>   |
| 249|[0x800049d8]<br>0x3333333333333333|- rs1_val==3689348814741910323 and rs2_val==-6148914691236517206<br>                                                                                    |[0x80001db8]:max t6, t5, t4<br> [0x80001dbc]:sd t6, 1776(t1)<br>   |
| 250|[0x800049e0]<br>0x5555555555555555|- rs1_val==3689348814741910323 and rs2_val==6148914691236517205<br>                                                                                     |[0x80001e00]:max t6, t5, t4<br> [0x80001e04]:sd t6, 1784(t1)<br>   |
| 251|[0x800049e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val==-6148914691236517206 and rs2_val==-1<br> - rs1_val == -6148914691236517206<br>                                                               |[0x80001e2c]:max t6, t5, t4<br> [0x80001e30]:sd t6, 1792(t1)<br>   |
| 252|[0x800049f0]<br>0x0000000000000000|- rs1_val==-6148914691236517206 and rs2_val==0<br>                                                                                                      |[0x80001e58]:max t6, t5, t4<br> [0x80001e5c]:sd t6, 1800(t1)<br>   |
| 253|[0x800049f8]<br>0xCCCCCCCCCCCCCCCC|- rs1_val==-6148914691236517206 and rs2_val==-3689348814741910324<br>                                                                                   |[0x80001ea0]:max t6, t5, t4<br> [0x80001ea4]:sd t6, 1808(t1)<br>   |
| 254|[0x80004a00]<br>0xAAAAAAAAAAAAAAAA|- rs1_val==-6148914691236517206 and rs2_val==-7378697629483820647<br>                                                                                   |[0x80001ee8]:max t6, t5, t4<br> [0x80001eec]:sd t6, 1816(t1)<br>   |
| 255|[0x80004a08]<br>0x6666666666666666|- rs1_val==-6148914691236517206 and rs2_val==7378697629483820646<br>                                                                                    |[0x80001f30]:max t6, t5, t4<br> [0x80001f34]:sd t6, 1824(t1)<br>   |
| 256|[0x80004a10]<br>0x3333333333333333|- rs1_val==-6148914691236517206 and rs2_val==3689348814741910323<br>                                                                                    |[0x80001f78]:max t6, t5, t4<br> [0x80001f7c]:sd t6, 1832(t1)<br>   |
| 257|[0x80004a18]<br>0xAAAAAAAAAAAAAAAA|- rs1_val==-6148914691236517206 and rs2_val==-6148914691236517206<br>                                                                                   |[0x80001fc0]:max t6, t5, t4<br> [0x80001fc4]:sd t6, 1840(t1)<br>   |
| 258|[0x80004a20]<br>0x5555555555555555|- rs1_val==-6148914691236517206 and rs2_val==6148914691236517205<br>                                                                                    |[0x80002008]:max t6, t5, t4<br> [0x8000200c]:sd t6, 1848(t1)<br>   |
| 259|[0x80004a28]<br>0x5555555555555555|- rs1_val==6148914691236517205 and rs2_val==-1<br> - rs1_val == 6148914691236517205<br>                                                                 |[0x80002034]:max t6, t5, t4<br> [0x80002038]:sd t6, 1856(t1)<br>   |
| 260|[0x80004a30]<br>0x5555555555555555|- rs1_val==6148914691236517205 and rs2_val==0<br>                                                                                                       |[0x80002060]:max t6, t5, t4<br> [0x80002064]:sd t6, 1864(t1)<br>   |
| 261|[0x80004a38]<br>0x5555555555555555|- rs1_val==6148914691236517205 and rs2_val==-3689348814741910324<br>                                                                                    |[0x800020a8]:max t6, t5, t4<br> [0x800020ac]:sd t6, 1872(t1)<br>   |
| 262|[0x80004a40]<br>0x5555555555555555|- rs1_val==6148914691236517205 and rs2_val==-7378697629483820647<br>                                                                                    |[0x800020f0]:max t6, t5, t4<br> [0x800020f4]:sd t6, 1880(t1)<br>   |
| 263|[0x80004a48]<br>0x6666666666666666|- rs1_val==6148914691236517205 and rs2_val==7378697629483820646<br>                                                                                     |[0x80002138]:max t6, t5, t4<br> [0x8000213c]:sd t6, 1888(t1)<br>   |
| 264|[0x80004a50]<br>0x5555555555555555|- rs1_val==6148914691236517205 and rs2_val==3689348814741910323<br>                                                                                     |[0x80002180]:max t6, t5, t4<br> [0x80002184]:sd t6, 1896(t1)<br>   |
| 265|[0x80004a58]<br>0x5555555555555555|- rs1_val==6148914691236517205 and rs2_val==-6148914691236517206<br>                                                                                    |[0x800021c8]:max t6, t5, t4<br> [0x800021cc]:sd t6, 1904(t1)<br>   |
| 266|[0x80004a60]<br>0x5555555555555555|- rs1_val==6148914691236517205 and rs2_val==6148914691236517205<br>                                                                                     |[0x80002210]:max t6, t5, t4<br> [0x80002214]:sd t6, 1912(t1)<br>   |
| 267|[0x80004a68]<br>0x0020000000000000|- rs1_val == 9007199254740992<br>                                                                                                                       |[0x80002224]:max t6, t5, t4<br> [0x80002228]:sd t6, 1920(t1)<br>   |
| 268|[0x80004a70]<br>0x0010000000000000|- rs1_val == 4503599627370496<br>                                                                                                                       |[0x80002238]:max t6, t5, t4<br> [0x8000223c]:sd t6, 1928(t1)<br>   |
| 269|[0x80004a78]<br>0x0008000000000000|- rs1_val == 2251799813685248<br>                                                                                                                       |[0x8000224c]:max t6, t5, t4<br> [0x80002250]:sd t6, 1936(t1)<br>   |
| 270|[0x80004a80]<br>0x0004000000000000|- rs1_val == 1125899906842624<br>                                                                                                                       |[0x80002260]:max t6, t5, t4<br> [0x80002264]:sd t6, 1944(t1)<br>   |
| 271|[0x80004a88]<br>0x0002000000000000|- rs1_val == 562949953421312<br>                                                                                                                        |[0x80002274]:max t6, t5, t4<br> [0x80002278]:sd t6, 1952(t1)<br>   |
| 272|[0x80004a90]<br>0x0001000000000000|- rs1_val == 281474976710656<br>                                                                                                                        |[0x80002288]:max t6, t5, t4<br> [0x8000228c]:sd t6, 1960(t1)<br>   |
| 273|[0x80004a98]<br>0x0000800000000000|- rs1_val == 140737488355328<br>                                                                                                                        |[0x8000229c]:max t6, t5, t4<br> [0x800022a0]:sd t6, 1968(t1)<br>   |
| 274|[0x80004aa0]<br>0x0000400000000000|- rs1_val == 70368744177664<br>                                                                                                                         |[0x800022b0]:max t6, t5, t4<br> [0x800022b4]:sd t6, 1976(t1)<br>   |
| 275|[0x80004aa8]<br>0x0000200000000000|- rs1_val == 35184372088832<br>                                                                                                                         |[0x800022c4]:max t6, t5, t4<br> [0x800022c8]:sd t6, 1984(t1)<br>   |
| 276|[0x80004ab0]<br>0x0000100000000000|- rs1_val == 17592186044416<br>                                                                                                                         |[0x800022d8]:max t6, t5, t4<br> [0x800022dc]:sd t6, 1992(t1)<br>   |
| 277|[0x80004ab8]<br>0x0000080000000000|- rs1_val == 8796093022208<br>                                                                                                                          |[0x800022ec]:max t6, t5, t4<br> [0x800022f0]:sd t6, 2000(t1)<br>   |
| 278|[0x80004ac0]<br>0x0000040000000000|- rs1_val == 4398046511104<br>                                                                                                                          |[0x80002300]:max t6, t5, t4<br> [0x80002304]:sd t6, 2008(t1)<br>   |
| 279|[0x80004ac8]<br>0x0000020000000000|- rs1_val == 2199023255552<br>                                                                                                                          |[0x80002314]:max t6, t5, t4<br> [0x80002318]:sd t6, 2016(t1)<br>   |
| 280|[0x80004ad0]<br>0x0000010000000000|- rs1_val == 1099511627776<br>                                                                                                                          |[0x80002328]:max t6, t5, t4<br> [0x8000232c]:sd t6, 2024(t1)<br>   |
| 281|[0x80004ad8]<br>0x0000008000000000|- rs1_val == 549755813888<br>                                                                                                                           |[0x8000233c]:max t6, t5, t4<br> [0x80002340]:sd t6, 2032(t1)<br>   |
| 282|[0x80004ae0]<br>0x0000004000000000|- rs1_val == 274877906944<br>                                                                                                                           |[0x80002350]:max t6, t5, t4<br> [0x80002354]:sd t6, 2040(t1)<br>   |
| 283|[0x80004ae8]<br>0x0000002000000000|- rs1_val == 137438953472<br>                                                                                                                           |[0x8000236c]:max t6, t5, t4<br> [0x80002370]:sd t6, 0(t1)<br>      |
| 284|[0x80004af0]<br>0x0000001000000000|- rs1_val == 68719476736<br>                                                                                                                            |[0x80002388]:max t6, t5, t4<br> [0x8000238c]:sd t6, 0(t1)<br>      |
| 285|[0x80004af8]<br>0x0000000800000000|- rs1_val == 34359738368<br>                                                                                                                            |[0x8000239c]:max t6, t5, t4<br> [0x800023a0]:sd t6, 8(t1)<br>      |
| 286|[0x80004b00]<br>0x0000000400000000|- rs1_val == 17179869184<br>                                                                                                                            |[0x800023b0]:max t6, t5, t4<br> [0x800023b4]:sd t6, 16(t1)<br>     |
| 287|[0x80004b08]<br>0x0000000200000000|- rs1_val == 8589934592<br>                                                                                                                             |[0x800023c4]:max t6, t5, t4<br> [0x800023c8]:sd t6, 24(t1)<br>     |
| 288|[0x80004b10]<br>0x0000000100000000|- rs1_val == 4294967296<br>                                                                                                                             |[0x800023d8]:max t6, t5, t4<br> [0x800023dc]:sd t6, 32(t1)<br>     |
| 289|[0x80004b18]<br>0x0000000080000000|- rs1_val == 2147483648<br>                                                                                                                             |[0x800023ec]:max t6, t5, t4<br> [0x800023f0]:sd t6, 40(t1)<br>     |
| 290|[0x80004b20]<br>0x0000000040000000|- rs1_val == 1073741824<br>                                                                                                                             |[0x800023fc]:max t6, t5, t4<br> [0x80002400]:sd t6, 48(t1)<br>     |
| 291|[0x80004b28]<br>0x0000000020000000|- rs1_val == 536870912<br>                                                                                                                              |[0x8000240c]:max t6, t5, t4<br> [0x80002410]:sd t6, 56(t1)<br>     |
| 292|[0x80004b30]<br>0x0000000010000000|- rs1_val == 268435456<br>                                                                                                                              |[0x8000241c]:max t6, t5, t4<br> [0x80002420]:sd t6, 64(t1)<br>     |
| 293|[0x80004b38]<br>0x0000000008000000|- rs1_val == 134217728<br>                                                                                                                              |[0x8000242c]:max t6, t5, t4<br> [0x80002430]:sd t6, 72(t1)<br>     |
| 294|[0x80004b40]<br>0x0000000004000000|- rs1_val == 67108864<br>                                                                                                                               |[0x8000243c]:max t6, t5, t4<br> [0x80002440]:sd t6, 80(t1)<br>     |
| 295|[0x80004b48]<br>0x0000000002000000|- rs1_val == 33554432<br>                                                                                                                               |[0x8000244c]:max t6, t5, t4<br> [0x80002450]:sd t6, 88(t1)<br>     |
| 296|[0x80004b50]<br>0x0000000001000000|- rs1_val == 16777216<br>                                                                                                                               |[0x8000245c]:max t6, t5, t4<br> [0x80002460]:sd t6, 96(t1)<br>     |
| 297|[0x80004b58]<br>0x0000000000800000|- rs1_val == 8388608<br>                                                                                                                                |[0x8000246c]:max t6, t5, t4<br> [0x80002470]:sd t6, 104(t1)<br>    |
| 298|[0x80004b60]<br>0x0000000000400000|- rs1_val == 4194304<br>                                                                                                                                |[0x8000247c]:max t6, t5, t4<br> [0x80002480]:sd t6, 112(t1)<br>    |
| 299|[0x80004b68]<br>0x0000000000200000|- rs1_val == 2097152<br>                                                                                                                                |[0x8000248c]:max t6, t5, t4<br> [0x80002490]:sd t6, 120(t1)<br>    |
| 300|[0x80004b70]<br>0x0000000000100000|- rs1_val == 1048576<br>                                                                                                                                |[0x8000249c]:max t6, t5, t4<br> [0x800024a0]:sd t6, 128(t1)<br>    |
| 301|[0x80004b78]<br>0x0000000000080000|- rs1_val == 524288<br>                                                                                                                                 |[0x800024ac]:max t6, t5, t4<br> [0x800024b0]:sd t6, 136(t1)<br>    |
| 302|[0x80004b80]<br>0x0000000000040000|- rs1_val == 262144<br>                                                                                                                                 |[0x800024bc]:max t6, t5, t4<br> [0x800024c0]:sd t6, 144(t1)<br>    |
| 303|[0x80004b88]<br>0x0000000000020000|- rs1_val == 131072<br>                                                                                                                                 |[0x800024cc]:max t6, t5, t4<br> [0x800024d0]:sd t6, 152(t1)<br>    |
| 304|[0x80004b90]<br>0x0000000000010000|- rs1_val == 65536<br>                                                                                                                                  |[0x800024dc]:max t6, t5, t4<br> [0x800024e0]:sd t6, 160(t1)<br>    |
| 305|[0x80004b98]<br>0x0000000000008000|- rs1_val == 32768<br>                                                                                                                                  |[0x800024ec]:max t6, t5, t4<br> [0x800024f0]:sd t6, 168(t1)<br>    |
| 306|[0x80004ba0]<br>0x0000000000004000|- rs1_val == 16384<br>                                                                                                                                  |[0x800024fc]:max t6, t5, t4<br> [0x80002500]:sd t6, 176(t1)<br>    |
| 307|[0x80004ba8]<br>0x0000000000002000|- rs1_val == 8192<br>                                                                                                                                   |[0x8000250c]:max t6, t5, t4<br> [0x80002510]:sd t6, 184(t1)<br>    |
| 308|[0x80004bb0]<br>0x0000000000001000|- rs1_val == 4096<br>                                                                                                                                   |[0x8000251c]:max t6, t5, t4<br> [0x80002520]:sd t6, 192(t1)<br>    |
| 309|[0x80004bb8]<br>0x0000000000000800|- rs1_val == 2048<br>                                                                                                                                   |[0x80002530]:max t6, t5, t4<br> [0x80002534]:sd t6, 200(t1)<br>    |
| 310|[0x80004bc0]<br>0x0000000000000400|- rs1_val == 1024<br>                                                                                                                                   |[0x80002540]:max t6, t5, t4<br> [0x80002544]:sd t6, 208(t1)<br>    |
| 311|[0x80004bc8]<br>0x0000000000000200|- rs1_val == 512<br>                                                                                                                                    |[0x80002550]:max t6, t5, t4<br> [0x80002554]:sd t6, 216(t1)<br>    |
| 312|[0x80004bd0]<br>0x0000000000000100|- rs1_val == 256<br>                                                                                                                                    |[0x80002560]:max t6, t5, t4<br> [0x80002564]:sd t6, 224(t1)<br>    |
| 313|[0x80004bd8]<br>0x0000000000000080|- rs1_val == 128<br>                                                                                                                                    |[0x80002570]:max t6, t5, t4<br> [0x80002574]:sd t6, 232(t1)<br>    |
| 314|[0x80004be0]<br>0x0000000000000040|- rs1_val == 64<br>                                                                                                                                     |[0x80002580]:max t6, t5, t4<br> [0x80002584]:sd t6, 240(t1)<br>    |
| 315|[0x80004be8]<br>0x0000000000000020|- rs1_val == 32<br>                                                                                                                                     |[0x80002590]:max t6, t5, t4<br> [0x80002594]:sd t6, 248(t1)<br>    |
| 316|[0x80004bf0]<br>0x0000000000000010|- rs1_val == 16<br>                                                                                                                                     |[0x800025a0]:max t6, t5, t4<br> [0x800025a4]:sd t6, 256(t1)<br>    |
| 317|[0x80004bf8]<br>0x0000000000000008|- rs1_val == 8<br>                                                                                                                                      |[0x800025b0]:max t6, t5, t4<br> [0x800025b4]:sd t6, 264(t1)<br>    |
| 318|[0x80004c00]<br>0x0000000000000004|- rs1_val == 4<br>                                                                                                                                      |[0x800025c0]:max t6, t5, t4<br> [0x800025c4]:sd t6, 272(t1)<br>    |
| 319|[0x80004c08]<br>0x0000000000000002|- rs1_val == 2<br>                                                                                                                                      |[0x800025d0]:max t6, t5, t4<br> [0x800025d4]:sd t6, 280(t1)<br>    |
| 320|[0x80004c10]<br>0x7FFFFFFFFFFFFFFF|- rs2_val == 9223372036854775807<br> - rs2_val == (2**(xlen-1)-1)<br>                                                                                   |[0x800025e8]:max t6, t5, t4<br> [0x800025ec]:sd t6, 288(t1)<br>    |
| 321|[0x80004c18]<br>0x0000000000000000|- rs2_val == -2305843009213693953<br>                                                                                                                   |[0x80002600]:max t6, t5, t4<br> [0x80002604]:sd t6, 296(t1)<br>    |
| 322|[0x80004c20]<br>0x0000000000000000|- rs2_val == -34359738369<br>                                                                                                                           |[0x80002618]:max t6, t5, t4<br> [0x8000261c]:sd t6, 304(t1)<br>    |
