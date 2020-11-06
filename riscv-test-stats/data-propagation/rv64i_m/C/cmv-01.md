
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000ae0')]      |
| SIG_REGION                | [('0x80003208', '0x80003628', '132 dwords')]      |
| COV_LABELS                | cmv      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cmv-01.S/cmv-01.S    |
| Total Number of coverpoints| 199     |
| Total Coverpoints Hit     | 199      |
| Total Signature Updates   | 132      |
| STAT1                     | 131      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ada]:c.mv a0, a1
      [0x80000adc]:sd a0, 888(ra)
 -- Signature Address: 0x80003620 Data: 0x0000000000010000
 -- Redundant Coverpoints hit by the op
      - opcode : c.mv
      - rs2 : x11
      - rd : x10
      - rs2 != rd and rs2 != 0
      - rs2_val == 65536






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

|s.no|            signature             |                                                                     coverpoints                                                                      |                              code                              |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003208]<br>0x8000000000000000|- opcode : c.mv<br> - rs2 : x17<br> - rd : x27<br> - rs2 != rd and rs2 != 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> |[0x800003a0]:c.mv s11, a7<br> [0x800003a2]:sd s11, 0(t0)<br>    |
|   2|[0x80003210]<br>0x0000000000000000|- rs2 : x25<br> - rd : x25<br> - rs2 == rd and rs2 != 0<br> - rs2_val == 0<br>                                                                        |[0x800003aa]:c.mv s9, s9<br> [0x800003ac]:sd s9, 8(t0)<br>      |
|   3|[0x80003218]<br>0x7FFFFFFFFFFFFFFF|- rs2 : x11<br> - rd : x29<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br>                                                  |[0x800003bc]:c.mv t4, a1<br> [0x800003be]:sd t4, 16(t0)<br>     |
|   4|[0x80003220]<br>0x0000000000000001|- rs2 : x19<br> - rd : x4<br> - rs2_val == 1<br>                                                                                                      |[0x800003c6]:c.mv tp, s3<br> [0x800003c8]:sd tp, 24(t0)<br>     |
|   5|[0x80003228]<br>0x0000000000000002|- rs2 : x18<br> - rd : x23<br> - rs2_val == 2<br>                                                                                                     |[0x800003d0]:c.mv s7, s2<br> [0x800003d2]:sd s7, 32(t0)<br>     |
|   6|[0x80003230]<br>0x0000000000000004|- rs2 : x12<br> - rd : x10<br> - rs2_val == 4<br>                                                                                                     |[0x800003da]:c.mv a0, a2<br> [0x800003dc]:sd a0, 40(t0)<br>     |
|   7|[0x80003238]<br>0x0000000000000008|- rs2 : x10<br> - rd : x28<br> - rs2_val == 8<br>                                                                                                     |[0x800003e4]:c.mv t3, a0<br> [0x800003e6]:sd t3, 48(t0)<br>     |
|   8|[0x80003240]<br>0x0000000000000010|- rs2 : x14<br> - rd : x16<br> - rs2_val == 16<br>                                                                                                    |[0x800003ee]:c.mv a6, a4<br> [0x800003f0]:sd a6, 56(t0)<br>     |
|   9|[0x80003248]<br>0x0000000000000020|- rs2 : x3<br> - rd : x19<br> - rs2_val == 32<br>                                                                                                     |[0x800003f8]:c.mv s3, gp<br> [0x800003fa]:sd s3, 64(t0)<br>     |
|  10|[0x80003250]<br>0x0000000000000040|- rs2 : x4<br> - rd : x20<br> - rs2_val == 64<br>                                                                                                     |[0x80000402]:c.mv s4, tp<br> [0x80000404]:sd s4, 72(t0)<br>     |
|  11|[0x80003258]<br>0x0000000000000080|- rs2 : x15<br> - rd : x13<br> - rs2_val == 128<br>                                                                                                   |[0x8000040c]:c.mv a3, a5<br> [0x8000040e]:sd a3, 80(t0)<br>     |
|  12|[0x80003260]<br>0x0000000000000100|- rs2 : x6<br> - rd : x22<br> - rs2_val == 256<br>                                                                                                    |[0x80000416]:c.mv s6, t1<br> [0x80000418]:sd s6, 88(t0)<br>     |
|  13|[0x80003268]<br>0x0000000000000200|- rs2 : x26<br> - rd : x1<br> - rs2_val == 512<br>                                                                                                    |[0x80000420]:c.mv ra, s10<br> [0x80000422]:sd ra, 96(t0)<br>    |
|  14|[0x80003270]<br>0x0000000000000400|- rs2 : x8<br> - rd : x30<br> - rs2_val == 1024<br>                                                                                                   |[0x8000042a]:c.mv t5, fp<br> [0x8000042c]:sd t5, 104(t0)<br>    |
|  15|[0x80003278]<br>0x0000000000000800|- rs2 : x23<br> - rd : x26<br> - rs2_val == 2048<br>                                                                                                  |[0x80000438]:c.mv s10, s7<br> [0x8000043a]:sd s10, 112(t0)<br>  |
|  16|[0x80003280]<br>0x0000000000001000|- rs2 : x1<br> - rd : x2<br> - rs2_val == 4096<br>                                                                                                    |[0x80000442]:c.mv sp, ra<br> [0x80000444]:sd sp, 120(t0)<br>    |
|  17|[0x80003288]<br>0x0000000000002000|- rs2 : x21<br> - rd : x17<br> - rs2_val == 8192<br>                                                                                                  |[0x8000044c]:c.mv a7, s5<br> [0x8000044e]:sd a7, 128(t0)<br>    |
|  18|[0x80003290]<br>0x0000000000004000|- rs2 : x2<br> - rd : x18<br> - rs2_val == 16384<br>                                                                                                  |[0x80000456]:c.mv s2, sp<br> [0x80000458]:sd s2, 136(t0)<br>    |
|  19|[0x80003298]<br>0x0000000000008000|- rs2 : x16<br> - rd : x31<br> - rs2_val == 32768<br>                                                                                                 |[0x80000460]:c.mv t6, a6<br> [0x80000462]:sd t6, 144(t0)<br>    |
|  20|[0x800032a0]<br>0x0000000000000000|- rs2 : x9<br> - rd : x0<br> - rs2_val == 65536<br>                                                                                                   |[0x8000046a]:c.mv.hint.s1<br> [0x8000046c]:sd zero, 152(t0)<br> |
|  21|[0x800032a8]<br>0x0000000000020000|- rs2 : x22<br> - rd : x24<br> - rs2_val == 131072<br>                                                                                                |[0x8000047c]:c.mv s8, s6<br> [0x8000047e]:sd s8, 0(ra)<br>      |
|  22|[0x800032b0]<br>0x0000000000040000|- rs2 : x20<br> - rd : x8<br> - rs2_val == 262144<br>                                                                                                 |[0x80000486]:c.mv fp, s4<br> [0x80000488]:sd fp, 8(ra)<br>      |
|  23|[0x800032b8]<br>0x0000000000080000|- rs2 : x27<br> - rd : x3<br> - rs2_val == 524288<br>                                                                                                 |[0x80000490]:c.mv gp, s11<br> [0x80000492]:sd gp, 16(ra)<br>    |
|  24|[0x800032c0]<br>0x0000000000100000|- rs2 : x13<br> - rd : x11<br> - rs2_val == 1048576<br>                                                                                               |[0x8000049a]:c.mv a1, a3<br> [0x8000049c]:sd a1, 24(ra)<br>     |
|  25|[0x800032c8]<br>0x0000000000200000|- rs2 : x24<br> - rd : x12<br> - rs2_val == 2097152<br>                                                                                               |[0x800004a4]:c.mv a2, s8<br> [0x800004a6]:sd a2, 32(ra)<br>     |
|  26|[0x800032d0]<br>0x0000000000400000|- rs2 : x29<br> - rd : x21<br> - rs2_val == 4194304<br>                                                                                               |[0x800004ae]:c.mv s5, t4<br> [0x800004b0]:sd s5, 40(ra)<br>     |
|  27|[0x800032d8]<br>0x0000000000800000|- rs2 : x31<br> - rd : x14<br> - rs2_val == 8388608<br>                                                                                               |[0x800004b8]:c.mv a4, t6<br> [0x800004ba]:sd a4, 48(ra)<br>     |
|  28|[0x800032e0]<br>0x0000000001000000|- rs2 : x28<br> - rd : x5<br> - rs2_val == 16777216<br>                                                                                               |[0x800004c2]:c.mv t0, t3<br> [0x800004c4]:sd t0, 56(ra)<br>     |
|  29|[0x800032e8]<br>0x0000000002000000|- rs2 : x30<br> - rd : x6<br> - rs2_val == 33554432<br>                                                                                               |[0x800004cc]:c.mv t1, t5<br> [0x800004ce]:sd t1, 64(ra)<br>     |
|  30|[0x800032f0]<br>0x0000000004000000|- rs2 : x5<br> - rd : x9<br> - rs2_val == 67108864<br>                                                                                                |[0x800004d6]:c.mv s1, t0<br> [0x800004d8]:sd s1, 72(ra)<br>     |
|  31|[0x800032f8]<br>0x0000000008000000|- rs2 : x7<br> - rd : x15<br> - rs2_val == 134217728<br>                                                                                              |[0x800004e0]:c.mv a5, t2<br> [0x800004e2]:sd a5, 80(ra)<br>     |
|  32|[0x80003300]<br>0x0000000010000000|- rd : x7<br> - rs2_val == 268435456<br>                                                                                                              |[0x800004ea]:c.mv t2, t4<br> [0x800004ec]:sd t2, 88(ra)<br>     |
|  33|[0x80003308]<br>0x0000000020000000|- rs2_val == 536870912<br>                                                                                                                            |[0x800004f4]:c.mv a0, a1<br> [0x800004f6]:sd a0, 96(ra)<br>     |
|  34|[0x80003310]<br>0x0000000040000000|- rs2_val == 1073741824<br>                                                                                                                           |[0x800004fe]:c.mv a0, a1<br> [0x80000500]:sd a0, 104(ra)<br>    |
|  35|[0x80003318]<br>0x0000000080000000|- rs2_val == 2147483648<br>                                                                                                                           |[0x8000050c]:c.mv a0, a1<br> [0x8000050e]:sd a0, 112(ra)<br>    |
|  36|[0x80003320]<br>0x0000000100000000|- rs2_val == 4294967296<br>                                                                                                                           |[0x8000051a]:c.mv a0, a1<br> [0x8000051c]:sd a0, 120(ra)<br>    |
|  37|[0x80003328]<br>0x0000000200000000|- rs2_val == 8589934592<br>                                                                                                                           |[0x80000528]:c.mv a0, a1<br> [0x8000052a]:sd a0, 128(ra)<br>    |
|  38|[0x80003330]<br>0x0000000400000000|- rs2_val == 17179869184<br>                                                                                                                          |[0x80000536]:c.mv a0, a1<br> [0x80000538]:sd a0, 136(ra)<br>    |
|  39|[0x80003338]<br>0x0000000800000000|- rs2_val == 34359738368<br>                                                                                                                          |[0x80000544]:c.mv a0, a1<br> [0x80000546]:sd a0, 144(ra)<br>    |
|  40|[0x80003340]<br>0x0000001000000000|- rs2_val == 68719476736<br>                                                                                                                          |[0x80000552]:c.mv a0, a1<br> [0x80000554]:sd a0, 152(ra)<br>    |
|  41|[0x80003348]<br>0x0000002000000000|- rs2_val == 137438953472<br>                                                                                                                         |[0x80000560]:c.mv a0, a1<br> [0x80000562]:sd a0, 160(ra)<br>    |
|  42|[0x80003350]<br>0x0000004000000000|- rs2_val == 274877906944<br>                                                                                                                         |[0x8000056e]:c.mv a0, a1<br> [0x80000570]:sd a0, 168(ra)<br>    |
|  43|[0x80003358]<br>0x0000008000000000|- rs2_val == 549755813888<br>                                                                                                                         |[0x8000057c]:c.mv a0, a1<br> [0x8000057e]:sd a0, 176(ra)<br>    |
|  44|[0x80003360]<br>0x0000010000000000|- rs2_val == 1099511627776<br>                                                                                                                        |[0x8000058a]:c.mv a0, a1<br> [0x8000058c]:sd a0, 184(ra)<br>    |
|  45|[0x80003368]<br>0x0000020000000000|- rs2_val == 2199023255552<br>                                                                                                                        |[0x80000598]:c.mv a0, a1<br> [0x8000059a]:sd a0, 192(ra)<br>    |
|  46|[0x80003370]<br>0x0000040000000000|- rs2_val == 4398046511104<br>                                                                                                                        |[0x800005a6]:c.mv a0, a1<br> [0x800005a8]:sd a0, 200(ra)<br>    |
|  47|[0x80003378]<br>0x0000080000000000|- rs2_val == 8796093022208<br>                                                                                                                        |[0x800005b4]:c.mv a0, a1<br> [0x800005b6]:sd a0, 208(ra)<br>    |
|  48|[0x80003380]<br>0x0000100000000000|- rs2_val == 17592186044416<br>                                                                                                                       |[0x800005c2]:c.mv a0, a1<br> [0x800005c4]:sd a0, 216(ra)<br>    |
|  49|[0x80003388]<br>0x0000200000000000|- rs2_val == 35184372088832<br>                                                                                                                       |[0x800005d0]:c.mv a0, a1<br> [0x800005d2]:sd a0, 224(ra)<br>    |
|  50|[0x80003390]<br>0x0000400000000000|- rs2_val == 70368744177664<br>                                                                                                                       |[0x800005de]:c.mv a0, a1<br> [0x800005e0]:sd a0, 232(ra)<br>    |
|  51|[0x80003398]<br>0x0000800000000000|- rs2_val == 140737488355328<br>                                                                                                                      |[0x800005ec]:c.mv a0, a1<br> [0x800005ee]:sd a0, 240(ra)<br>    |
|  52|[0x800033a0]<br>0x0001000000000000|- rs2_val == 281474976710656<br>                                                                                                                      |[0x800005fa]:c.mv a0, a1<br> [0x800005fc]:sd a0, 248(ra)<br>    |
|  53|[0x800033a8]<br>0x0002000000000000|- rs2_val == 562949953421312<br>                                                                                                                      |[0x80000608]:c.mv a0, a1<br> [0x8000060a]:sd a0, 256(ra)<br>    |
|  54|[0x800033b0]<br>0x0004000000000000|- rs2_val == 1125899906842624<br>                                                                                                                     |[0x80000616]:c.mv a0, a1<br> [0x80000618]:sd a0, 264(ra)<br>    |
|  55|[0x800033b8]<br>0x0008000000000000|- rs2_val == 2251799813685248<br>                                                                                                                     |[0x80000624]:c.mv a0, a1<br> [0x80000626]:sd a0, 272(ra)<br>    |
|  56|[0x800033c0]<br>0x0010000000000000|- rs2_val == 4503599627370496<br>                                                                                                                     |[0x80000632]:c.mv a0, a1<br> [0x80000634]:sd a0, 280(ra)<br>    |
|  57|[0x800033c8]<br>0x0020000000000000|- rs2_val == 9007199254740992<br>                                                                                                                     |[0x80000640]:c.mv a0, a1<br> [0x80000642]:sd a0, 288(ra)<br>    |
|  58|[0x800033d0]<br>0x0040000000000000|- rs2_val == 18014398509481984<br>                                                                                                                    |[0x8000064e]:c.mv a0, a1<br> [0x80000650]:sd a0, 296(ra)<br>    |
|  59|[0x800033d8]<br>0x0080000000000000|- rs2_val == 36028797018963968<br>                                                                                                                    |[0x8000065c]:c.mv a0, a1<br> [0x8000065e]:sd a0, 304(ra)<br>    |
|  60|[0x800033e0]<br>0x0100000000000000|- rs2_val == 72057594037927936<br>                                                                                                                    |[0x8000066a]:c.mv a0, a1<br> [0x8000066c]:sd a0, 312(ra)<br>    |
|  61|[0x800033e8]<br>0x0200000000000000|- rs2_val == 144115188075855872<br>                                                                                                                   |[0x80000678]:c.mv a0, a1<br> [0x8000067a]:sd a0, 320(ra)<br>    |
|  62|[0x800033f0]<br>0x0400000000000000|- rs2_val == 288230376151711744<br>                                                                                                                   |[0x80000686]:c.mv a0, a1<br> [0x80000688]:sd a0, 328(ra)<br>    |
|  63|[0x800033f8]<br>0x0800000000000000|- rs2_val == 576460752303423488<br>                                                                                                                   |[0x80000694]:c.mv a0, a1<br> [0x80000696]:sd a0, 336(ra)<br>    |
|  64|[0x80003400]<br>0x1000000000000000|- rs2_val == 1152921504606846976<br>                                                                                                                  |[0x800006a2]:c.mv a0, a1<br> [0x800006a4]:sd a0, 344(ra)<br>    |
|  65|[0x80003408]<br>0x2000000000000000|- rs2_val == 2305843009213693952<br>                                                                                                                  |[0x800006b0]:c.mv a0, a1<br> [0x800006b2]:sd a0, 352(ra)<br>    |
|  66|[0x80003410]<br>0x4000000000000000|- rs2_val == 4611686018427387904<br>                                                                                                                  |[0x800006be]:c.mv a0, a1<br> [0x800006c0]:sd a0, 360(ra)<br>    |
|  67|[0x80003418]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -2<br>                                                                                                                                   |[0x800006c8]:c.mv a0, a1<br> [0x800006ca]:sd a0, 368(ra)<br>    |
|  68|[0x80003420]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == -3<br>                                                                                                                                   |[0x800006d2]:c.mv a0, a1<br> [0x800006d4]:sd a0, 376(ra)<br>    |
|  69|[0x80003428]<br>0xDFFFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br>                                                                                                                 |[0x800006e4]:c.mv a0, a1<br> [0x800006e6]:sd a0, 384(ra)<br>    |
|  70|[0x80003430]<br>0xBFFFFFFFFFFFFFFF|- rs2_val == -4611686018427387905<br>                                                                                                                 |[0x800006f6]:c.mv a0, a1<br> [0x800006f8]:sd a0, 392(ra)<br>    |
|  71|[0x80003438]<br>0x5555555555555555|- rs2_val == 6148914691236517205<br>                                                                                                                  |[0x8000071c]:c.mv a0, a1<br> [0x8000071e]:sd a0, 400(ra)<br>    |
|  72|[0x80003440]<br>0xAAAAAAAAAAAAAAAA|- rs2_val == -6148914691236517206<br>                                                                                                                 |[0x80000742]:c.mv a0, a1<br> [0x80000744]:sd a0, 408(ra)<br>    |
|  73|[0x80003448]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == -5<br>                                                                                                                                   |[0x8000074c]:c.mv a0, a1<br> [0x8000074e]:sd a0, 416(ra)<br>    |
|  74|[0x80003450]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == -9<br>                                                                                                                                   |[0x80000756]:c.mv a0, a1<br> [0x80000758]:sd a0, 424(ra)<br>    |
|  75|[0x80003458]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == -17<br>                                                                                                                                  |[0x80000760]:c.mv a0, a1<br> [0x80000762]:sd a0, 432(ra)<br>    |
|  76|[0x80003460]<br>0xFFFFFFFFFFFFFFDF|- rs2_val == -33<br>                                                                                                                                  |[0x8000076a]:c.mv a0, a1<br> [0x8000076c]:sd a0, 440(ra)<br>    |
|  77|[0x80003468]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == -65<br>                                                                                                                                  |[0x80000774]:c.mv a0, a1<br> [0x80000776]:sd a0, 448(ra)<br>    |
|  78|[0x80003470]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == -129<br>                                                                                                                                 |[0x8000077e]:c.mv a0, a1<br> [0x80000780]:sd a0, 456(ra)<br>    |
|  79|[0x80003478]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == -257<br>                                                                                                                                 |[0x80000788]:c.mv a0, a1<br> [0x8000078a]:sd a0, 464(ra)<br>    |
|  80|[0x80003480]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == -513<br>                                                                                                                                 |[0x80000792]:c.mv a0, a1<br> [0x80000794]:sd a0, 472(ra)<br>    |
|  81|[0x80003488]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                |[0x8000079c]:c.mv a0, a1<br> [0x8000079e]:sd a0, 480(ra)<br>    |
|  82|[0x80003490]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                |[0x800007aa]:c.mv a0, a1<br> [0x800007ac]:sd a0, 488(ra)<br>    |
|  83|[0x80003498]<br>0xFFFFFFFFFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                |[0x800007b8]:c.mv a0, a1<br> [0x800007ba]:sd a0, 496(ra)<br>    |
|  84|[0x800034a0]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                |[0x800007c6]:c.mv a0, a1<br> [0x800007c8]:sd a0, 504(ra)<br>    |
|  85|[0x800034a8]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == -16385<br>                                                                                                                               |[0x800007d4]:c.mv a0, a1<br> [0x800007d6]:sd a0, 512(ra)<br>    |
|  86|[0x800034b0]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == -32769<br>                                                                                                                               |[0x800007e2]:c.mv a0, a1<br> [0x800007e4]:sd a0, 520(ra)<br>    |
|  87|[0x800034b8]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == -65537<br>                                                                                                                               |[0x800007f0]:c.mv a0, a1<br> [0x800007f2]:sd a0, 528(ra)<br>    |
|  88|[0x800034c0]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == -131073<br>                                                                                                                              |[0x800007fe]:c.mv a0, a1<br> [0x80000800]:sd a0, 536(ra)<br>    |
|  89|[0x800034c8]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == -262145<br>                                                                                                                              |[0x8000080c]:c.mv a0, a1<br> [0x8000080e]:sd a0, 544(ra)<br>    |
|  90|[0x800034d0]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == -524289<br>                                                                                                                              |[0x8000081a]:c.mv a0, a1<br> [0x8000081c]:sd a0, 552(ra)<br>    |
|  91|[0x800034d8]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                             |[0x80000828]:c.mv a0, a1<br> [0x8000082a]:sd a0, 560(ra)<br>    |
|  92|[0x800034e0]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                             |[0x80000836]:c.mv a0, a1<br> [0x80000838]:sd a0, 568(ra)<br>    |
|  93|[0x800034e8]<br>0xFFFFFFFFFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                             |[0x80000844]:c.mv a0, a1<br> [0x80000846]:sd a0, 576(ra)<br>    |
|  94|[0x800034f0]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                             |[0x80000852]:c.mv a0, a1<br> [0x80000854]:sd a0, 584(ra)<br>    |
|  95|[0x800034f8]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                            |[0x80000860]:c.mv a0, a1<br> [0x80000862]:sd a0, 592(ra)<br>    |
|  96|[0x80003500]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                            |[0x8000086e]:c.mv a0, a1<br> [0x80000870]:sd a0, 600(ra)<br>    |
|  97|[0x80003508]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                            |[0x8000087c]:c.mv a0, a1<br> [0x8000087e]:sd a0, 608(ra)<br>    |
|  98|[0x80003510]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                           |[0x8000088a]:c.mv a0, a1<br> [0x8000088c]:sd a0, 616(ra)<br>    |
|  99|[0x80003518]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                           |[0x80000898]:c.mv a0, a1<br> [0x8000089a]:sd a0, 624(ra)<br>    |
| 100|[0x80003520]<br>0xFFFFFFFFDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                           |[0x800008a6]:c.mv a0, a1<br> [0x800008a8]:sd a0, 632(ra)<br>    |
| 101|[0x80003528]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                          |[0x800008b4]:c.mv a0, a1<br> [0x800008b6]:sd a0, 640(ra)<br>    |
| 102|[0x80003530]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == -2147483649<br>                                                                                                                          |[0x800008c6]:c.mv a0, a1<br> [0x800008c8]:sd a0, 648(ra)<br>    |
| 103|[0x80003538]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == -4294967297<br>                                                                                                                          |[0x800008d8]:c.mv a0, a1<br> [0x800008da]:sd a0, 656(ra)<br>    |
| 104|[0x80003540]<br>0xFFFFFFFDFFFFFFFF|- rs2_val == -8589934593<br>                                                                                                                          |[0x800008ea]:c.mv a0, a1<br> [0x800008ec]:sd a0, 664(ra)<br>    |
| 105|[0x80003548]<br>0xFFFFFFFBFFFFFFFF|- rs2_val == -17179869185<br>                                                                                                                         |[0x800008fc]:c.mv a0, a1<br> [0x800008fe]:sd a0, 672(ra)<br>    |
| 106|[0x80003550]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == -34359738369<br>                                                                                                                         |[0x8000090e]:c.mv a0, a1<br> [0x80000910]:sd a0, 680(ra)<br>    |
| 107|[0x80003558]<br>0xFFFFFFEFFFFFFFFF|- rs2_val == -68719476737<br>                                                                                                                         |[0x80000920]:c.mv a0, a1<br> [0x80000922]:sd a0, 688(ra)<br>    |
| 108|[0x80003560]<br>0xFFFFFFDFFFFFFFFF|- rs2_val == -137438953473<br>                                                                                                                        |[0x80000932]:c.mv a0, a1<br> [0x80000934]:sd a0, 696(ra)<br>    |
| 109|[0x80003568]<br>0xFFFFFFBFFFFFFFFF|- rs2_val == -274877906945<br>                                                                                                                        |[0x80000944]:c.mv a0, a1<br> [0x80000946]:sd a0, 704(ra)<br>    |
| 110|[0x80003570]<br>0xFFFFFF7FFFFFFFFF|- rs2_val == -549755813889<br>                                                                                                                        |[0x80000956]:c.mv a0, a1<br> [0x80000958]:sd a0, 712(ra)<br>    |
| 111|[0x80003578]<br>0xFFFFFEFFFFFFFFFF|- rs2_val == -1099511627777<br>                                                                                                                       |[0x80000968]:c.mv a0, a1<br> [0x8000096a]:sd a0, 720(ra)<br>    |
| 112|[0x80003580]<br>0xFFFFFDFFFFFFFFFF|- rs2_val == -2199023255553<br>                                                                                                                       |[0x8000097a]:c.mv a0, a1<br> [0x8000097c]:sd a0, 728(ra)<br>    |
| 113|[0x80003588]<br>0xFFFFFBFFFFFFFFFF|- rs2_val == -4398046511105<br>                                                                                                                       |[0x8000098c]:c.mv a0, a1<br> [0x8000098e]:sd a0, 736(ra)<br>    |
| 114|[0x80003590]<br>0xFFFFF7FFFFFFFFFF|- rs2_val == -8796093022209<br>                                                                                                                       |[0x8000099e]:c.mv a0, a1<br> [0x800009a0]:sd a0, 744(ra)<br>    |
| 115|[0x80003598]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == -17592186044417<br>                                                                                                                      |[0x800009b0]:c.mv a0, a1<br> [0x800009b2]:sd a0, 752(ra)<br>    |
| 116|[0x800035a0]<br>0xFFFFDFFFFFFFFFFF|- rs2_val == -35184372088833<br>                                                                                                                      |[0x800009c2]:c.mv a0, a1<br> [0x800009c4]:sd a0, 760(ra)<br>    |
| 117|[0x800035a8]<br>0xFFFFBFFFFFFFFFFF|- rs2_val == -70368744177665<br>                                                                                                                      |[0x800009d4]:c.mv a0, a1<br> [0x800009d6]:sd a0, 768(ra)<br>    |
| 118|[0x800035b0]<br>0xFFFF7FFFFFFFFFFF|- rs2_val == -140737488355329<br>                                                                                                                     |[0x800009e6]:c.mv a0, a1<br> [0x800009e8]:sd a0, 776(ra)<br>    |
| 119|[0x800035b8]<br>0xFFFEFFFFFFFFFFFF|- rs2_val == -281474976710657<br>                                                                                                                     |[0x800009f8]:c.mv a0, a1<br> [0x800009fa]:sd a0, 784(ra)<br>    |
| 120|[0x800035c0]<br>0xFFFDFFFFFFFFFFFF|- rs2_val == -562949953421313<br>                                                                                                                     |[0x80000a0a]:c.mv a0, a1<br> [0x80000a0c]:sd a0, 792(ra)<br>    |
| 121|[0x800035c8]<br>0xFFFBFFFFFFFFFFFF|- rs2_val == -1125899906842625<br>                                                                                                                    |[0x80000a1c]:c.mv a0, a1<br> [0x80000a1e]:sd a0, 800(ra)<br>    |
| 122|[0x800035d0]<br>0xFFF7FFFFFFFFFFFF|- rs2_val == -2251799813685249<br>                                                                                                                    |[0x80000a2e]:c.mv a0, a1<br> [0x80000a30]:sd a0, 808(ra)<br>    |
| 123|[0x800035d8]<br>0xFFEFFFFFFFFFFFFF|- rs2_val == -4503599627370497<br>                                                                                                                    |[0x80000a40]:c.mv a0, a1<br> [0x80000a42]:sd a0, 816(ra)<br>    |
| 124|[0x800035e0]<br>0xFFDFFFFFFFFFFFFF|- rs2_val == -9007199254740993<br>                                                                                                                    |[0x80000a52]:c.mv a0, a1<br> [0x80000a54]:sd a0, 824(ra)<br>    |
| 125|[0x800035e8]<br>0xFFBFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br>                                                                                                                   |[0x80000a64]:c.mv a0, a1<br> [0x80000a66]:sd a0, 832(ra)<br>    |
| 126|[0x800035f0]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == -36028797018963969<br>                                                                                                                   |[0x80000a76]:c.mv a0, a1<br> [0x80000a78]:sd a0, 840(ra)<br>    |
| 127|[0x800035f8]<br>0xFEFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br>                                                                                                                   |[0x80000a88]:c.mv a0, a1<br> [0x80000a8a]:sd a0, 848(ra)<br>    |
| 128|[0x80003600]<br>0xFDFFFFFFFFFFFFFF|- rs2_val == -144115188075855873<br>                                                                                                                  |[0x80000a9a]:c.mv a0, a1<br> [0x80000a9c]:sd a0, 856(ra)<br>    |
| 129|[0x80003608]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == -288230376151711745<br>                                                                                                                  |[0x80000aac]:c.mv a0, a1<br> [0x80000aae]:sd a0, 864(ra)<br>    |
| 130|[0x80003610]<br>0xF7FFFFFFFFFFFFFF|- rs2_val == -576460752303423489<br>                                                                                                                  |[0x80000abe]:c.mv a0, a1<br> [0x80000ac0]:sd a0, 872(ra)<br>    |
| 131|[0x80003618]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                                 |[0x80000ad0]:c.mv a0, a1<br> [0x80000ad2]:sd a0, 880(ra)<br>    |
