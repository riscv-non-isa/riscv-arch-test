
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000760')]      |
| SIG_REGION                | [('0x80002210', '0x80002430', '68 dwords')]      |
| COV_LABELS                | zext.h      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/64/riscof_work/zext.h-01.S/ref.S    |
| Total Number of coverpoints| 138     |
| Total Coverpoints Hit     | 133      |
| Total Signature Updates   | 68      |
| STAT1                     | 67      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000758]:zext.h t6, t5
      [0x8000075c]:sd t6, 312(t0)
 -- Signature Address: 0x80002428 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : zext.h
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - rs1_val == 4294967296






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

|s.no|            signature             |                                      coverpoints                                       |                               code                               |
|---:|----------------------------------|----------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : zext.h<br> - rs1 : x30<br> - rd : x31<br> - rs1 != rd<br> - rs1_val == 0<br> |[0x8000039c]:zext.h t6, t5<br> [0x800003a0]:sd t6, 0(ra)<br>      |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x29<br> - rd : x29<br> - rs1 == rd<br> - rs1_val == 9223372036854775808<br>     |[0x800003ac]:zext.h t4, t4<br> [0x800003b0]:sd t4, 8(ra)<br>      |
|   3|[0x80002220]<br>0x0000000000000000|- rs1 : x31<br> - rd : x30<br> - rs1_val == 4611686018427387904<br>                     |[0x800003bc]:zext.h t5, t6<br> [0x800003c0]:sd t5, 16(ra)<br>     |
|   4|[0x80002228]<br>0x0000000000000000|- rs1 : x27<br> - rd : x28<br> - rs1_val == 2305843009213693952<br>                     |[0x800003cc]:zext.h t3, s11<br> [0x800003d0]:sd t3, 24(ra)<br>    |
|   5|[0x80002230]<br>0x0000000000000000|- rs1 : x28<br> - rd : x27<br> - rs1_val == 1152921504606846976<br>                     |[0x800003dc]:zext.h s11, t3<br> [0x800003e0]:sd s11, 32(ra)<br>   |
|   6|[0x80002238]<br>0x0000000000000000|- rs1 : x25<br> - rd : x26<br> - rs1_val == 576460752303423488<br>                      |[0x800003ec]:zext.h s10, s9<br> [0x800003f0]:sd s10, 40(ra)<br>   |
|   7|[0x80002240]<br>0x0000000000000000|- rs1 : x26<br> - rd : x25<br> - rs1_val == 288230376151711744<br>                      |[0x800003fc]:zext.h s9, s10<br> [0x80000400]:sd s9, 48(ra)<br>    |
|   8|[0x80002248]<br>0x0000000000000000|- rs1 : x23<br> - rd : x24<br> - rs1_val == 144115188075855872<br>                      |[0x8000040c]:zext.h s8, s7<br> [0x80000410]:sd s8, 56(ra)<br>     |
|   9|[0x80002250]<br>0x0000000000000000|- rs1 : x24<br> - rd : x23<br> - rs1_val == 72057594037927936<br>                       |[0x8000041c]:zext.h s7, s8<br> [0x80000420]:sd s7, 64(ra)<br>     |
|  10|[0x80002258]<br>0x0000000000000000|- rs1 : x21<br> - rd : x22<br> - rs1_val == 36028797018963968<br>                       |[0x8000042c]:zext.h s6, s5<br> [0x80000430]:sd s6, 72(ra)<br>     |
|  11|[0x80002260]<br>0x0000000000000000|- rs1 : x22<br> - rd : x21<br> - rs1_val == 18014398509481984<br>                       |[0x8000043c]:zext.h s5, s6<br> [0x80000440]:sd s5, 80(ra)<br>     |
|  12|[0x80002268]<br>0x0000000000000000|- rs1 : x19<br> - rd : x20<br> - rs1_val == 9007199254740992<br>                        |[0x8000044c]:zext.h s4, s3<br> [0x80000450]:sd s4, 88(ra)<br>     |
|  13|[0x80002270]<br>0x0000000000000000|- rs1 : x20<br> - rd : x19<br> - rs1_val == 4503599627370496<br>                        |[0x8000045c]:zext.h s3, s4<br> [0x80000460]:sd s3, 96(ra)<br>     |
|  14|[0x80002278]<br>0x0000000000000000|- rs1 : x17<br> - rd : x18<br> - rs1_val == 2251799813685248<br>                        |[0x8000046c]:zext.h s2, a7<br> [0x80000470]:sd s2, 104(ra)<br>    |
|  15|[0x80002280]<br>0x0000000000000000|- rs1 : x18<br> - rd : x17<br> - rs1_val == 1125899906842624<br>                        |[0x8000047c]:zext.h a7, s2<br> [0x80000480]:sd a7, 112(ra)<br>    |
|  16|[0x80002288]<br>0x0000000000000000|- rs1 : x15<br> - rd : x16<br> - rs1_val == 562949953421312<br>                         |[0x8000048c]:zext.h a6, a5<br> [0x80000490]:sd a6, 120(ra)<br>    |
|  17|[0x80002290]<br>0x0000000000000000|- rs1 : x16<br> - rd : x15<br> - rs1_val == 281474976710656<br>                         |[0x8000049c]:zext.h a5, a6<br> [0x800004a0]:sd a5, 128(ra)<br>    |
|  18|[0x80002298]<br>0x0000000000000000|- rs1 : x13<br> - rd : x14<br> - rs1_val == 140737488355328<br>                         |[0x800004ac]:zext.h a4, a3<br> [0x800004b0]:sd a4, 136(ra)<br>    |
|  19|[0x800022a0]<br>0x0000000000000000|- rs1 : x14<br> - rd : x13<br> - rs1_val == 70368744177664<br>                          |[0x800004bc]:zext.h a3, a4<br> [0x800004c0]:sd a3, 144(ra)<br>    |
|  20|[0x800022a8]<br>0x0000000000000000|- rs1 : x11<br> - rd : x12<br> - rs1_val == 35184372088832<br>                          |[0x800004cc]:zext.h a2, a1<br> [0x800004d0]:sd a2, 152(ra)<br>    |
|  21|[0x800022b0]<br>0x0000000000000000|- rs1 : x12<br> - rd : x11<br> - rs1_val == 17592186044416<br>                          |[0x800004dc]:zext.h a1, a2<br> [0x800004e0]:sd a1, 160(ra)<br>    |
|  22|[0x800022b8]<br>0x0000000000000000|- rs1 : x9<br> - rd : x10<br> - rs1_val == 8796093022208<br>                            |[0x800004ec]:zext.h a0, s1<br> [0x800004f0]:sd a0, 168(ra)<br>    |
|  23|[0x800022c0]<br>0x0000000000000000|- rs1 : x10<br> - rd : x9<br> - rs1_val == 4398046511104<br>                            |[0x800004fc]:zext.h s1, a0<br> [0x80000500]:sd s1, 176(ra)<br>    |
|  24|[0x800022c8]<br>0x0000000000000000|- rs1 : x7<br> - rd : x8<br> - rs1_val == 2199023255552<br>                             |[0x8000050c]:zext.h fp, t2<br> [0x80000510]:sd fp, 184(ra)<br>    |
|  25|[0x800022d0]<br>0x0000000000000000|- rs1 : x8<br> - rd : x7<br> - rs1_val == 1099511627776<br>                             |[0x8000051c]:zext.h t2, fp<br> [0x80000520]:sd t2, 192(ra)<br>    |
|  26|[0x800022d8]<br>0x0000000000000000|- rs1 : x5<br> - rd : x6<br> - rs1_val == 549755813888<br>                              |[0x8000052c]:zext.h t1, t0<br> [0x80000530]:sd t1, 200(ra)<br>    |
|  27|[0x800022e0]<br>0x0000000000000000|- rs1 : x6<br> - rd : x5<br> - rs1_val == 274877906944<br>                              |[0x8000053c]:zext.h t0, t1<br> [0x80000540]:sd t0, 208(ra)<br>    |
|  28|[0x800022e8]<br>0x0000000000000000|- rs1 : x3<br> - rd : x4<br> - rs1_val == 137438953472<br>                              |[0x8000054c]:zext.h tp, gp<br> [0x80000550]:sd tp, 216(ra)<br>    |
|  29|[0x800022f0]<br>0x0000000000000000|- rs1 : x4<br> - rd : x3<br> - rs1_val == 68719476736<br>                               |[0x80000564]:zext.h gp, tp<br> [0x80000568]:sd gp, 0(t0)<br>      |
|  30|[0x800022f8]<br>0x0000000000000000|- rs1 : x1<br> - rd : x2<br> - rs1_val == 34359738368<br>                               |[0x80000574]:zext.h sp, ra<br> [0x80000578]:sd sp, 8(t0)<br>      |
|  31|[0x80002300]<br>0x0000000000000000|- rs1 : x2<br> - rd : x1<br> - rs1_val == 17179869184<br>                               |[0x80000584]:zext.h ra, sp<br> [0x80000588]:sd ra, 16(t0)<br>     |
|  32|[0x80002308]<br>0x0000000000000000|- rs1 : x0<br>                                                                          |[0x80000590]:zext.h t6, zero<br> [0x80000594]:sd t6, 24(t0)<br>   |
|  33|[0x80002310]<br>0x0000000000000000|- rd : x0<br> - rs1_val == 4294967296<br>                                               |[0x800005a0]:zext.h zero, t6<br> [0x800005a4]:sd zero, 32(t0)<br> |
|  34|[0x80002318]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                             |[0x800005b0]:zext.h t6, t5<br> [0x800005b4]:sd t6, 40(t0)<br>     |
|  35|[0x80002320]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                             |[0x800005bc]:zext.h t6, t5<br> [0x800005c0]:sd t6, 48(t0)<br>     |
|  36|[0x80002328]<br>0x0000000000000001|- rs1_val == 1<br>                                                                      |[0x800005c8]:zext.h t6, t5<br> [0x800005cc]:sd t6, 56(t0)<br>     |
|  37|[0x80002330]<br>0x000000000000FF80|- rs1_val == 65408<br>                                                                  |[0x800005d8]:zext.h t6, t5<br> [0x800005dc]:sd t6, 64(t0)<br>     |
|  38|[0x80002338]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                              |[0x800005e4]:zext.h t6, t5<br> [0x800005e8]:sd t6, 72(t0)<br>     |
|  39|[0x80002340]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                              |[0x800005f0]:zext.h t6, t5<br> [0x800005f4]:sd t6, 80(t0)<br>     |
|  40|[0x80002348]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                              |[0x800005fc]:zext.h t6, t5<br> [0x80000600]:sd t6, 88(t0)<br>     |
|  41|[0x80002350]<br>0x0000000000000000|- rs1_val == 67108864<br>                                                               |[0x80000608]:zext.h t6, t5<br> [0x8000060c]:sd t6, 96(t0)<br>     |
|  42|[0x80002358]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                               |[0x80000614]:zext.h t6, t5<br> [0x80000618]:sd t6, 104(t0)<br>    |
|  43|[0x80002360]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                               |[0x80000620]:zext.h t6, t5<br> [0x80000624]:sd t6, 112(t0)<br>    |
|  44|[0x80002368]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                |[0x8000062c]:zext.h t6, t5<br> [0x80000630]:sd t6, 120(t0)<br>    |
|  45|[0x80002370]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                |[0x80000638]:zext.h t6, t5<br> [0x8000063c]:sd t6, 128(t0)<br>    |
|  46|[0x80002378]<br>0x0000000000000000|- rs1_val == 2097152<br>                                                                |[0x80000644]:zext.h t6, t5<br> [0x80000648]:sd t6, 136(t0)<br>    |
|  47|[0x80002380]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                |[0x80000650]:zext.h t6, t5<br> [0x80000654]:sd t6, 144(t0)<br>    |
|  48|[0x80002388]<br>0x0000000000000000|- rs1_val == 524288<br>                                                                 |[0x8000065c]:zext.h t6, t5<br> [0x80000660]:sd t6, 152(t0)<br>    |
|  49|[0x80002390]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                 |[0x80000668]:zext.h t6, t5<br> [0x8000066c]:sd t6, 160(t0)<br>    |
|  50|[0x80002398]<br>0x0000000000000000|- rs1_val == 131072<br>                                                                 |[0x80000674]:zext.h t6, t5<br> [0x80000678]:sd t6, 168(t0)<br>    |
|  51|[0x800023a0]<br>0x0000000000000000|- rs1_val == 65536<br>                                                                  |[0x80000680]:zext.h t6, t5<br> [0x80000684]:sd t6, 176(t0)<br>    |
|  52|[0x800023a8]<br>0x0000000000008000|- rs1_val == 32768<br>                                                                  |[0x8000068c]:zext.h t6, t5<br> [0x80000690]:sd t6, 184(t0)<br>    |
|  53|[0x800023b0]<br>0x0000000000004000|- rs1_val == 16384<br>                                                                  |[0x80000698]:zext.h t6, t5<br> [0x8000069c]:sd t6, 192(t0)<br>    |
|  54|[0x800023b8]<br>0x0000000000002000|- rs1_val == 8192<br>                                                                   |[0x800006a4]:zext.h t6, t5<br> [0x800006a8]:sd t6, 200(t0)<br>    |
|  55|[0x800023c0]<br>0x0000000000001000|- rs1_val == 4096<br>                                                                   |[0x800006b0]:zext.h t6, t5<br> [0x800006b4]:sd t6, 208(t0)<br>    |
|  56|[0x800023c8]<br>0x0000000000000800|- rs1_val == 2048<br>                                                                   |[0x800006c0]:zext.h t6, t5<br> [0x800006c4]:sd t6, 216(t0)<br>    |
|  57|[0x800023d0]<br>0x0000000000000400|- rs1_val == 1024<br>                                                                   |[0x800006cc]:zext.h t6, t5<br> [0x800006d0]:sd t6, 224(t0)<br>    |
|  58|[0x800023d8]<br>0x0000000000000200|- rs1_val == 512<br>                                                                    |[0x800006d8]:zext.h t6, t5<br> [0x800006dc]:sd t6, 232(t0)<br>    |
|  59|[0x800023e0]<br>0x0000000000000100|- rs1_val == 256<br>                                                                    |[0x800006e4]:zext.h t6, t5<br> [0x800006e8]:sd t6, 240(t0)<br>    |
|  60|[0x800023e8]<br>0x0000000000000080|- rs1_val == 128<br>                                                                    |[0x800006f0]:zext.h t6, t5<br> [0x800006f4]:sd t6, 248(t0)<br>    |
|  61|[0x800023f0]<br>0x0000000000000040|- rs1_val == 64<br>                                                                     |[0x800006fc]:zext.h t6, t5<br> [0x80000700]:sd t6, 256(t0)<br>    |
|  62|[0x800023f8]<br>0x0000000000000020|- rs1_val == 32<br>                                                                     |[0x80000708]:zext.h t6, t5<br> [0x8000070c]:sd t6, 264(t0)<br>    |
|  63|[0x80002400]<br>0x0000000000000010|- rs1_val == 16<br>                                                                     |[0x80000714]:zext.h t6, t5<br> [0x80000718]:sd t6, 272(t0)<br>    |
|  64|[0x80002408]<br>0x0000000000000008|- rs1_val == 8<br>                                                                      |[0x80000720]:zext.h t6, t5<br> [0x80000724]:sd t6, 280(t0)<br>    |
|  65|[0x80002410]<br>0x0000000000000004|- rs1_val == 4<br>                                                                      |[0x8000072c]:zext.h t6, t5<br> [0x80000730]:sd t6, 288(t0)<br>    |
|  66|[0x80002418]<br>0x0000000000000002|- rs1_val == 2<br>                                                                      |[0x80000738]:zext.h t6, t5<br> [0x8000073c]:sd t6, 296(t0)<br>    |
|  67|[0x80002420]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                             |[0x80000748]:zext.h t6, t5<br> [0x8000074c]:sd t6, 304(t0)<br>    |
