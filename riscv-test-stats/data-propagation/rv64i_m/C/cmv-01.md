
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000ac0')]      |
| SIG_REGION                | [('0x80003204', '0x80003630', '133 dwords')]      |
| COV_LABELS                | cmv      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cmv-01.S/cmv-01.S    |
| Total Number of coverpoints| 199     |
| Total Signature Updates   | 132      |
| Total Coverpoints Covered | 199      |
| STAT1                     | 131      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ab0]:c.mv a0, a1
      [0x80000ab2]:sd a0, 880(t0)
 -- Signature Address: 0x80003628 Data: 0x0000000000000001
 -- Redundant Coverpoints hit by the op
      - opcode : c.mv
      - rs2 : x11
      - rd : x10
      - rs2 != rd and rs2 != 0
      - rs2_val == 1






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

|s.no|            signature             |                                                                     coverpoints                                                                      |                             code                             |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003210]<br>0x8000000000000000|- opcode : c.mv<br> - rs2 : x18<br> - rd : x18<br> - rs2 == rd and rs2 != 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> |[0x800003a0]:c.mv s2, s2<br> [0x800003a2]:c.sdsp s2, 0<br>    |
|   2|[0x80003218]<br>0x0000000000000000|- rs2 : x8<br> - rd : x5<br> - rs2 != rd and rs2 != 0<br> - rs2_val == 0<br>                                                                          |[0x800003a8]:c.mv t0, fp<br> [0x800003aa]:c.sdsp t0, 1<br>    |
|   3|[0x80003220]<br>0x7FFFFFFFFFFFFFFF|- rs2 : x14<br> - rd : x21<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br>                                                  |[0x800003b8]:c.mv s5, a4<br> [0x800003ba]:c.sdsp s5, 2<br>    |
|   4|[0x80003228]<br>0x0000000000000000|- rs2 : x13<br> - rd : x0<br> - rs2_val == 1<br>                                                                                                      |[0x800003c0]:c.mv.hint.a3<br> [0x800003c2]:c.sdsp zero, 3<br> |
|   5|[0x80003230]<br>0x0000000000000002|- rs2 : x10<br> - rd : x31<br> - rs2_val == 2<br>                                                                                                     |[0x800003c8]:c.mv t6, a0<br> [0x800003ca]:c.sdsp t6, 4<br>    |
|   6|[0x80003238]<br>0x0000000000000004|- rs2 : x21<br> - rd : x11<br> - rs2_val == 4<br>                                                                                                     |[0x800003d0]:c.mv a1, s5<br> [0x800003d2]:c.sdsp a1, 5<br>    |
|   7|[0x80003240]<br>0x0000000000000008|- rs2 : x7<br> - rd : x15<br> - rs2_val == 8<br>                                                                                                      |[0x800003d8]:c.mv a5, t2<br> [0x800003da]:c.sdsp a5, 6<br>    |
|   8|[0x80003248]<br>0x0000000000000010|- rs2 : x20<br> - rd : x16<br> - rs2_val == 16<br>                                                                                                    |[0x800003e0]:c.mv a6, s4<br> [0x800003e2]:c.sdsp a6, 7<br>    |
|   9|[0x80003250]<br>0x0000000000000020|- rs2 : x9<br> - rd : x19<br> - rs2_val == 32<br>                                                                                                     |[0x800003e8]:c.mv s3, s1<br> [0x800003ea]:c.sdsp s3, 8<br>    |
|  10|[0x80003258]<br>0x0000000000000040|- rs2 : x29<br> - rd : x10<br> - rs2_val == 64<br>                                                                                                    |[0x800003f0]:c.mv a0, t4<br> [0x800003f2]:c.sdsp a0, 9<br>    |
|  11|[0x80003260]<br>0x0000000000000080|- rs2 : x23<br> - rd : x6<br> - rs2_val == 128<br>                                                                                                    |[0x800003f8]:c.mv t1, s7<br> [0x800003fa]:c.sdsp t1, 10<br>   |
|  12|[0x80003268]<br>0x0000000000000100|- rs2 : x16<br> - rd : x30<br> - rs2_val == 256<br>                                                                                                   |[0x80000400]:c.mv t5, a6<br> [0x80000402]:c.sdsp t5, 11<br>   |
|  13|[0x80003270]<br>0x0000000000000200|- rs2 : x31<br> - rd : x9<br> - rs2_val == 512<br>                                                                                                    |[0x80000408]:c.mv s1, t6<br> [0x8000040a]:c.sdsp s1, 12<br>   |
|  14|[0x80003278]<br>0x0000000000000400|- rs2 : x27<br> - rd : x14<br> - rs2_val == 1024<br>                                                                                                  |[0x80000410]:c.mv a4, s11<br> [0x80000412]:c.sdsp a4, 13<br>  |
|  15|[0x80003280]<br>0x0000000000000800|- rs2 : x28<br> - rd : x4<br> - rs2_val == 2048<br>                                                                                                   |[0x8000041c]:c.mv tp, t3<br> [0x8000041e]:c.sdsp tp, 14<br>   |
|  16|[0x80003288]<br>0x0000000000001000|- rs2 : x19<br> - rd : x27<br> - rs2_val == 4096<br>                                                                                                  |[0x80000424]:c.mv s11, s3<br> [0x80000426]:c.sdsp s11, 15<br> |
|  17|[0x80003290]<br>0x0000000000002000|- rs2 : x15<br> - rd : x29<br> - rs2_val == 8192<br>                                                                                                  |[0x8000042c]:c.mv t4, a5<br> [0x8000042e]:c.sdsp t4, 16<br>   |
|  18|[0x80003298]<br>0x0000000000004000|- rs2 : x5<br> - rd : x12<br> - rs2_val == 16384<br>                                                                                                  |[0x80000434]:c.mv a2, t0<br> [0x80000436]:c.sdsp a2, 17<br>   |
|  19|[0x800032a0]<br>0x0000000000008000|- rs2 : x22<br> - rd : x1<br> - rs2_val == 32768<br>                                                                                                  |[0x8000043c]:c.mv ra, s6<br> [0x8000043e]:c.sdsp ra, 18<br>   |
|  20|[0x800032a8]<br>0x0000000000010000|- rs2 : x17<br> - rd : x26<br> - rs2_val == 65536<br>                                                                                                 |[0x80000444]:c.mv s10, a7<br> [0x80000446]:c.sdsp s10, 19<br> |
|  21|[0x800032b0]<br>0x0000000000020000|- rs2 : x24<br> - rd : x7<br> - rs2_val == 131072<br>                                                                                                 |[0x8000044c]:c.mv t2, s8<br> [0x8000044e]:c.sdsp t2, 20<br>   |
|  22|[0x800032b8]<br>0x0000000000040000|- rs2 : x30<br> - rd : x20<br> - rs2_val == 262144<br>                                                                                                |[0x8000045c]:c.mv s4, t5<br> [0x8000045e]:sd s4, 0(t0)<br>    |
|  23|[0x800032c0]<br>0x0000000000080000|- rs2 : x4<br> - rd : x22<br> - rs2_val == 524288<br>                                                                                                 |[0x80000466]:c.mv s6, tp<br> [0x80000468]:sd s6, 8(t0)<br>    |
|  24|[0x800032c8]<br>0x0000000000100000|- rs2 : x6<br> - rd : x3<br> - rs2_val == 1048576<br>                                                                                                 |[0x80000470]:c.mv gp, t1<br> [0x80000472]:sd gp, 16(t0)<br>   |
|  25|[0x800032d0]<br>0x0000000000200000|- rs2 : x3<br> - rd : x28<br> - rs2_val == 2097152<br>                                                                                                |[0x8000047a]:c.mv t3, gp<br> [0x8000047c]:sd t3, 24(t0)<br>   |
|  26|[0x800032d8]<br>0x0000000000400000|- rs2 : x2<br> - rd : x24<br> - rs2_val == 4194304<br>                                                                                                |[0x80000484]:c.mv s8, sp<br> [0x80000486]:sd s8, 32(t0)<br>   |
|  27|[0x800032e0]<br>0x0000000000800000|- rs2 : x1<br> - rd : x25<br> - rs2_val == 8388608<br>                                                                                                |[0x8000048e]:c.mv s9, ra<br> [0x80000490]:sd s9, 40(t0)<br>   |
|  28|[0x800032e8]<br>0x0000000001000000|- rs2 : x25<br> - rd : x8<br> - rs2_val == 16777216<br>                                                                                               |[0x80000498]:c.mv fp, s9<br> [0x8000049a]:sd fp, 48(t0)<br>   |
|  29|[0x800032f0]<br>0x0000000002000000|- rs2 : x12<br> - rd : x17<br> - rs2_val == 33554432<br>                                                                                              |[0x800004a2]:c.mv a7, a2<br> [0x800004a4]:sd a7, 56(t0)<br>   |
|  30|[0x800032f8]<br>0x0000000004000000|- rs2 : x26<br> - rd : x13<br> - rs2_val == 67108864<br>                                                                                              |[0x800004ac]:c.mv a3, s10<br> [0x800004ae]:sd a3, 64(t0)<br>  |
|  31|[0x80003300]<br>0x0000000008000000|- rs2 : x11<br> - rd : x23<br> - rs2_val == 134217728<br>                                                                                             |[0x800004b6]:c.mv s7, a1<br> [0x800004b8]:sd s7, 72(t0)<br>   |
|  32|[0x80003308]<br>0x0000000010000000|- rd : x2<br> - rs2_val == 268435456<br>                                                                                                              |[0x800004c0]:c.mv sp, a0<br> [0x800004c2]:sd sp, 80(t0)<br>   |
|  33|[0x80003310]<br>0x0000000020000000|- rs2_val == 536870912<br>                                                                                                                            |[0x800004ca]:c.mv a0, a1<br> [0x800004cc]:sd a0, 88(t0)<br>   |
|  34|[0x80003318]<br>0x0000000040000000|- rs2_val == 1073741824<br>                                                                                                                           |[0x800004d4]:c.mv a0, a1<br> [0x800004d6]:sd a0, 96(t0)<br>   |
|  35|[0x80003320]<br>0x0000000080000000|- rs2_val == 2147483648<br>                                                                                                                           |[0x800004e2]:c.mv a0, a1<br> [0x800004e4]:sd a0, 104(t0)<br>  |
|  36|[0x80003328]<br>0x0000000100000000|- rs2_val == 4294967296<br>                                                                                                                           |[0x800004f0]:c.mv a0, a1<br> [0x800004f2]:sd a0, 112(t0)<br>  |
|  37|[0x80003330]<br>0x0000000200000000|- rs2_val == 8589934592<br>                                                                                                                           |[0x800004fe]:c.mv a0, a1<br> [0x80000500]:sd a0, 120(t0)<br>  |
|  38|[0x80003338]<br>0x0000000400000000|- rs2_val == 17179869184<br>                                                                                                                          |[0x8000050c]:c.mv a0, a1<br> [0x8000050e]:sd a0, 128(t0)<br>  |
|  39|[0x80003340]<br>0x0000000800000000|- rs2_val == 34359738368<br>                                                                                                                          |[0x8000051a]:c.mv a0, a1<br> [0x8000051c]:sd a0, 136(t0)<br>  |
|  40|[0x80003348]<br>0x0000001000000000|- rs2_val == 68719476736<br>                                                                                                                          |[0x80000528]:c.mv a0, a1<br> [0x8000052a]:sd a0, 144(t0)<br>  |
|  41|[0x80003350]<br>0x0000002000000000|- rs2_val == 137438953472<br>                                                                                                                         |[0x80000536]:c.mv a0, a1<br> [0x80000538]:sd a0, 152(t0)<br>  |
|  42|[0x80003358]<br>0x0000004000000000|- rs2_val == 274877906944<br>                                                                                                                         |[0x80000544]:c.mv a0, a1<br> [0x80000546]:sd a0, 160(t0)<br>  |
|  43|[0x80003360]<br>0x0000008000000000|- rs2_val == 549755813888<br>                                                                                                                         |[0x80000552]:c.mv a0, a1<br> [0x80000554]:sd a0, 168(t0)<br>  |
|  44|[0x80003368]<br>0x0000010000000000|- rs2_val == 1099511627776<br>                                                                                                                        |[0x80000560]:c.mv a0, a1<br> [0x80000562]:sd a0, 176(t0)<br>  |
|  45|[0x80003370]<br>0x0000020000000000|- rs2_val == 2199023255552<br>                                                                                                                        |[0x8000056e]:c.mv a0, a1<br> [0x80000570]:sd a0, 184(t0)<br>  |
|  46|[0x80003378]<br>0x0000040000000000|- rs2_val == 4398046511104<br>                                                                                                                        |[0x8000057c]:c.mv a0, a1<br> [0x8000057e]:sd a0, 192(t0)<br>  |
|  47|[0x80003380]<br>0x0000080000000000|- rs2_val == 8796093022208<br>                                                                                                                        |[0x8000058a]:c.mv a0, a1<br> [0x8000058c]:sd a0, 200(t0)<br>  |
|  48|[0x80003388]<br>0x0000100000000000|- rs2_val == 17592186044416<br>                                                                                                                       |[0x80000598]:c.mv a0, a1<br> [0x8000059a]:sd a0, 208(t0)<br>  |
|  49|[0x80003390]<br>0x0000200000000000|- rs2_val == 35184372088832<br>                                                                                                                       |[0x800005a6]:c.mv a0, a1<br> [0x800005a8]:sd a0, 216(t0)<br>  |
|  50|[0x80003398]<br>0x0000400000000000|- rs2_val == 70368744177664<br>                                                                                                                       |[0x800005b4]:c.mv a0, a1<br> [0x800005b6]:sd a0, 224(t0)<br>  |
|  51|[0x800033a0]<br>0x0000800000000000|- rs2_val == 140737488355328<br>                                                                                                                      |[0x800005c2]:c.mv a0, a1<br> [0x800005c4]:sd a0, 232(t0)<br>  |
|  52|[0x800033a8]<br>0x0001000000000000|- rs2_val == 281474976710656<br>                                                                                                                      |[0x800005d0]:c.mv a0, a1<br> [0x800005d2]:sd a0, 240(t0)<br>  |
|  53|[0x800033b0]<br>0x0002000000000000|- rs2_val == 562949953421312<br>                                                                                                                      |[0x800005de]:c.mv a0, a1<br> [0x800005e0]:sd a0, 248(t0)<br>  |
|  54|[0x800033b8]<br>0x0004000000000000|- rs2_val == 1125899906842624<br>                                                                                                                     |[0x800005ec]:c.mv a0, a1<br> [0x800005ee]:sd a0, 256(t0)<br>  |
|  55|[0x800033c0]<br>0x0008000000000000|- rs2_val == 2251799813685248<br>                                                                                                                     |[0x800005fa]:c.mv a0, a1<br> [0x800005fc]:sd a0, 264(t0)<br>  |
|  56|[0x800033c8]<br>0x0010000000000000|- rs2_val == 4503599627370496<br>                                                                                                                     |[0x80000608]:c.mv a0, a1<br> [0x8000060a]:sd a0, 272(t0)<br>  |
|  57|[0x800033d0]<br>0x0020000000000000|- rs2_val == 9007199254740992<br>                                                                                                                     |[0x80000616]:c.mv a0, a1<br> [0x80000618]:sd a0, 280(t0)<br>  |
|  58|[0x800033d8]<br>0x0040000000000000|- rs2_val == 18014398509481984<br>                                                                                                                    |[0x80000624]:c.mv a0, a1<br> [0x80000626]:sd a0, 288(t0)<br>  |
|  59|[0x800033e0]<br>0x0080000000000000|- rs2_val == 36028797018963968<br>                                                                                                                    |[0x80000632]:c.mv a0, a1<br> [0x80000634]:sd a0, 296(t0)<br>  |
|  60|[0x800033e8]<br>0x0100000000000000|- rs2_val == 72057594037927936<br>                                                                                                                    |[0x80000640]:c.mv a0, a1<br> [0x80000642]:sd a0, 304(t0)<br>  |
|  61|[0x800033f0]<br>0x0200000000000000|- rs2_val == 144115188075855872<br>                                                                                                                   |[0x8000064e]:c.mv a0, a1<br> [0x80000650]:sd a0, 312(t0)<br>  |
|  62|[0x800033f8]<br>0x0400000000000000|- rs2_val == 288230376151711744<br>                                                                                                                   |[0x8000065c]:c.mv a0, a1<br> [0x8000065e]:sd a0, 320(t0)<br>  |
|  63|[0x80003400]<br>0x0800000000000000|- rs2_val == 576460752303423488<br>                                                                                                                   |[0x8000066a]:c.mv a0, a1<br> [0x8000066c]:sd a0, 328(t0)<br>  |
|  64|[0x80003408]<br>0x1000000000000000|- rs2_val == 1152921504606846976<br>                                                                                                                  |[0x80000678]:c.mv a0, a1<br> [0x8000067a]:sd a0, 336(t0)<br>  |
|  65|[0x80003410]<br>0x2000000000000000|- rs2_val == 2305843009213693952<br>                                                                                                                  |[0x80000686]:c.mv a0, a1<br> [0x80000688]:sd a0, 344(t0)<br>  |
|  66|[0x80003418]<br>0x4000000000000000|- rs2_val == 4611686018427387904<br>                                                                                                                  |[0x80000694]:c.mv a0, a1<br> [0x80000696]:sd a0, 352(t0)<br>  |
|  67|[0x80003420]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -2<br>                                                                                                                                   |[0x8000069e]:c.mv a0, a1<br> [0x800006a0]:sd a0, 360(t0)<br>  |
|  68|[0x80003428]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == -3<br>                                                                                                                                   |[0x800006a8]:c.mv a0, a1<br> [0x800006aa]:sd a0, 368(t0)<br>  |
|  69|[0x80003430]<br>0xDFFFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br>                                                                                                                 |[0x800006ba]:c.mv a0, a1<br> [0x800006bc]:sd a0, 376(t0)<br>  |
|  70|[0x80003438]<br>0xBFFFFFFFFFFFFFFF|- rs2_val == -4611686018427387905<br>                                                                                                                 |[0x800006cc]:c.mv a0, a1<br> [0x800006ce]:sd a0, 384(t0)<br>  |
|  71|[0x80003440]<br>0x5555555555555555|- rs2_val == 6148914691236517205<br>                                                                                                                  |[0x800006f2]:c.mv a0, a1<br> [0x800006f4]:sd a0, 392(t0)<br>  |
|  72|[0x80003448]<br>0xAAAAAAAAAAAAAAAA|- rs2_val == -6148914691236517206<br>                                                                                                                 |[0x80000718]:c.mv a0, a1<br> [0x8000071a]:sd a0, 400(t0)<br>  |
|  73|[0x80003450]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == -5<br>                                                                                                                                   |[0x80000722]:c.mv a0, a1<br> [0x80000724]:sd a0, 408(t0)<br>  |
|  74|[0x80003458]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == -9<br>                                                                                                                                   |[0x8000072c]:c.mv a0, a1<br> [0x8000072e]:sd a0, 416(t0)<br>  |
|  75|[0x80003460]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == -17<br>                                                                                                                                  |[0x80000736]:c.mv a0, a1<br> [0x80000738]:sd a0, 424(t0)<br>  |
|  76|[0x80003468]<br>0xFFFFFFFFFFFFFFDF|- rs2_val == -33<br>                                                                                                                                  |[0x80000740]:c.mv a0, a1<br> [0x80000742]:sd a0, 432(t0)<br>  |
|  77|[0x80003470]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == -65<br>                                                                                                                                  |[0x8000074a]:c.mv a0, a1<br> [0x8000074c]:sd a0, 440(t0)<br>  |
|  78|[0x80003478]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == -129<br>                                                                                                                                 |[0x80000754]:c.mv a0, a1<br> [0x80000756]:sd a0, 448(t0)<br>  |
|  79|[0x80003480]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == -257<br>                                                                                                                                 |[0x8000075e]:c.mv a0, a1<br> [0x80000760]:sd a0, 456(t0)<br>  |
|  80|[0x80003488]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == -513<br>                                                                                                                                 |[0x80000768]:c.mv a0, a1<br> [0x8000076a]:sd a0, 464(t0)<br>  |
|  81|[0x80003490]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                |[0x80000772]:c.mv a0, a1<br> [0x80000774]:sd a0, 472(t0)<br>  |
|  82|[0x80003498]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                |[0x80000780]:c.mv a0, a1<br> [0x80000782]:sd a0, 480(t0)<br>  |
|  83|[0x800034a0]<br>0xFFFFFFFFFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                |[0x8000078e]:c.mv a0, a1<br> [0x80000790]:sd a0, 488(t0)<br>  |
|  84|[0x800034a8]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                |[0x8000079c]:c.mv a0, a1<br> [0x8000079e]:sd a0, 496(t0)<br>  |
|  85|[0x800034b0]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == -16385<br>                                                                                                                               |[0x800007aa]:c.mv a0, a1<br> [0x800007ac]:sd a0, 504(t0)<br>  |
|  86|[0x800034b8]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == -32769<br>                                                                                                                               |[0x800007b8]:c.mv a0, a1<br> [0x800007ba]:sd a0, 512(t0)<br>  |
|  87|[0x800034c0]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == -65537<br>                                                                                                                               |[0x800007c6]:c.mv a0, a1<br> [0x800007c8]:sd a0, 520(t0)<br>  |
|  88|[0x800034c8]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == -131073<br>                                                                                                                              |[0x800007d4]:c.mv a0, a1<br> [0x800007d6]:sd a0, 528(t0)<br>  |
|  89|[0x800034d0]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == -262145<br>                                                                                                                              |[0x800007e2]:c.mv a0, a1<br> [0x800007e4]:sd a0, 536(t0)<br>  |
|  90|[0x800034d8]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == -524289<br>                                                                                                                              |[0x800007f0]:c.mv a0, a1<br> [0x800007f2]:sd a0, 544(t0)<br>  |
|  91|[0x800034e0]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                             |[0x800007fe]:c.mv a0, a1<br> [0x80000800]:sd a0, 552(t0)<br>  |
|  92|[0x800034e8]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                             |[0x8000080c]:c.mv a0, a1<br> [0x8000080e]:sd a0, 560(t0)<br>  |
|  93|[0x800034f0]<br>0xFFFFFFFFFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                             |[0x8000081a]:c.mv a0, a1<br> [0x8000081c]:sd a0, 568(t0)<br>  |
|  94|[0x800034f8]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                             |[0x80000828]:c.mv a0, a1<br> [0x8000082a]:sd a0, 576(t0)<br>  |
|  95|[0x80003500]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                            |[0x80000836]:c.mv a0, a1<br> [0x80000838]:sd a0, 584(t0)<br>  |
|  96|[0x80003508]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                            |[0x80000844]:c.mv a0, a1<br> [0x80000846]:sd a0, 592(t0)<br>  |
|  97|[0x80003510]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                            |[0x80000852]:c.mv a0, a1<br> [0x80000854]:sd a0, 600(t0)<br>  |
|  98|[0x80003518]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                           |[0x80000860]:c.mv a0, a1<br> [0x80000862]:sd a0, 608(t0)<br>  |
|  99|[0x80003520]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                           |[0x8000086e]:c.mv a0, a1<br> [0x80000870]:sd a0, 616(t0)<br>  |
| 100|[0x80003528]<br>0xFFFFFFFFDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                           |[0x8000087c]:c.mv a0, a1<br> [0x8000087e]:sd a0, 624(t0)<br>  |
| 101|[0x80003530]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                          |[0x8000088a]:c.mv a0, a1<br> [0x8000088c]:sd a0, 632(t0)<br>  |
| 102|[0x80003538]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == -2147483649<br>                                                                                                                          |[0x8000089c]:c.mv a0, a1<br> [0x8000089e]:sd a0, 640(t0)<br>  |
| 103|[0x80003540]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == -4294967297<br>                                                                                                                          |[0x800008ae]:c.mv a0, a1<br> [0x800008b0]:sd a0, 648(t0)<br>  |
| 104|[0x80003548]<br>0xFFFFFFFDFFFFFFFF|- rs2_val == -8589934593<br>                                                                                                                          |[0x800008c0]:c.mv a0, a1<br> [0x800008c2]:sd a0, 656(t0)<br>  |
| 105|[0x80003550]<br>0xFFFFFFFBFFFFFFFF|- rs2_val == -17179869185<br>                                                                                                                         |[0x800008d2]:c.mv a0, a1<br> [0x800008d4]:sd a0, 664(t0)<br>  |
| 106|[0x80003558]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == -34359738369<br>                                                                                                                         |[0x800008e4]:c.mv a0, a1<br> [0x800008e6]:sd a0, 672(t0)<br>  |
| 107|[0x80003560]<br>0xFFFFFFEFFFFFFFFF|- rs2_val == -68719476737<br>                                                                                                                         |[0x800008f6]:c.mv a0, a1<br> [0x800008f8]:sd a0, 680(t0)<br>  |
| 108|[0x80003568]<br>0xFFFFFFDFFFFFFFFF|- rs2_val == -137438953473<br>                                                                                                                        |[0x80000908]:c.mv a0, a1<br> [0x8000090a]:sd a0, 688(t0)<br>  |
| 109|[0x80003570]<br>0xFFFFFFBFFFFFFFFF|- rs2_val == -274877906945<br>                                                                                                                        |[0x8000091a]:c.mv a0, a1<br> [0x8000091c]:sd a0, 696(t0)<br>  |
| 110|[0x80003578]<br>0xFFFFFF7FFFFFFFFF|- rs2_val == -549755813889<br>                                                                                                                        |[0x8000092c]:c.mv a0, a1<br> [0x8000092e]:sd a0, 704(t0)<br>  |
| 111|[0x80003580]<br>0xFFFFFEFFFFFFFFFF|- rs2_val == -1099511627777<br>                                                                                                                       |[0x8000093e]:c.mv a0, a1<br> [0x80000940]:sd a0, 712(t0)<br>  |
| 112|[0x80003588]<br>0xFFFFFDFFFFFFFFFF|- rs2_val == -2199023255553<br>                                                                                                                       |[0x80000950]:c.mv a0, a1<br> [0x80000952]:sd a0, 720(t0)<br>  |
| 113|[0x80003590]<br>0xFFFFFBFFFFFFFFFF|- rs2_val == -4398046511105<br>                                                                                                                       |[0x80000962]:c.mv a0, a1<br> [0x80000964]:sd a0, 728(t0)<br>  |
| 114|[0x80003598]<br>0xFFFFF7FFFFFFFFFF|- rs2_val == -8796093022209<br>                                                                                                                       |[0x80000974]:c.mv a0, a1<br> [0x80000976]:sd a0, 736(t0)<br>  |
| 115|[0x800035a0]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == -17592186044417<br>                                                                                                                      |[0x80000986]:c.mv a0, a1<br> [0x80000988]:sd a0, 744(t0)<br>  |
| 116|[0x800035a8]<br>0xFFFFDFFFFFFFFFFF|- rs2_val == -35184372088833<br>                                                                                                                      |[0x80000998]:c.mv a0, a1<br> [0x8000099a]:sd a0, 752(t0)<br>  |
| 117|[0x800035b0]<br>0xFFFFBFFFFFFFFFFF|- rs2_val == -70368744177665<br>                                                                                                                      |[0x800009aa]:c.mv a0, a1<br> [0x800009ac]:sd a0, 760(t0)<br>  |
| 118|[0x800035b8]<br>0xFFFF7FFFFFFFFFFF|- rs2_val == -140737488355329<br>                                                                                                                     |[0x800009bc]:c.mv a0, a1<br> [0x800009be]:sd a0, 768(t0)<br>  |
| 119|[0x800035c0]<br>0xFFFEFFFFFFFFFFFF|- rs2_val == -281474976710657<br>                                                                                                                     |[0x800009ce]:c.mv a0, a1<br> [0x800009d0]:sd a0, 776(t0)<br>  |
| 120|[0x800035c8]<br>0xFFFDFFFFFFFFFFFF|- rs2_val == -562949953421313<br>                                                                                                                     |[0x800009e0]:c.mv a0, a1<br> [0x800009e2]:sd a0, 784(t0)<br>  |
| 121|[0x800035d0]<br>0xFFFBFFFFFFFFFFFF|- rs2_val == -1125899906842625<br>                                                                                                                    |[0x800009f2]:c.mv a0, a1<br> [0x800009f4]:sd a0, 792(t0)<br>  |
| 122|[0x800035d8]<br>0xFFF7FFFFFFFFFFFF|- rs2_val == -2251799813685249<br>                                                                                                                    |[0x80000a04]:c.mv a0, a1<br> [0x80000a06]:sd a0, 800(t0)<br>  |
| 123|[0x800035e0]<br>0xFFEFFFFFFFFFFFFF|- rs2_val == -4503599627370497<br>                                                                                                                    |[0x80000a16]:c.mv a0, a1<br> [0x80000a18]:sd a0, 808(t0)<br>  |
| 124|[0x800035e8]<br>0xFFDFFFFFFFFFFFFF|- rs2_val == -9007199254740993<br>                                                                                                                    |[0x80000a28]:c.mv a0, a1<br> [0x80000a2a]:sd a0, 816(t0)<br>  |
| 125|[0x800035f0]<br>0xFFBFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br>                                                                                                                   |[0x80000a3a]:c.mv a0, a1<br> [0x80000a3c]:sd a0, 824(t0)<br>  |
| 126|[0x800035f8]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == -36028797018963969<br>                                                                                                                   |[0x80000a4c]:c.mv a0, a1<br> [0x80000a4e]:sd a0, 832(t0)<br>  |
| 127|[0x80003600]<br>0xFEFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br>                                                                                                                   |[0x80000a5e]:c.mv a0, a1<br> [0x80000a60]:sd a0, 840(t0)<br>  |
| 128|[0x80003608]<br>0xFDFFFFFFFFFFFFFF|- rs2_val == -144115188075855873<br>                                                                                                                  |[0x80000a70]:c.mv a0, a1<br> [0x80000a72]:sd a0, 848(t0)<br>  |
| 129|[0x80003610]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == -288230376151711745<br>                                                                                                                  |[0x80000a82]:c.mv a0, a1<br> [0x80000a84]:sd a0, 856(t0)<br>  |
| 130|[0x80003618]<br>0xF7FFFFFFFFFFFFFF|- rs2_val == -576460752303423489<br>                                                                                                                  |[0x80000a94]:c.mv a0, a1<br> [0x80000a96]:sd a0, 864(t0)<br>  |
| 131|[0x80003620]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                                 |[0x80000aa6]:c.mv a0, a1<br> [0x80000aa8]:sd a0, 872(t0)<br>  |
