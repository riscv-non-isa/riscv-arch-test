
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001390')]      |
| SIG_REGION                | [('0x80004208', '0x800047d8', '186 dwords')]      |
| COV_LABELS                | csubw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csubw-01.S/csubw-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 186      |
| STAT1                     | 184      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000126e]:c.subw a0, a1
      [0x80001270]:sd a0, 1384(ra)
 -- Signature Address: 0x80004770 Data: 0xFFFFFFFFFFFBFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : c.subw
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 562949953421312
      - rs1_val == -262145




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001386]:c.subw a0, a1
      [0x80001388]:sd a0, 1480(ra)
 -- Signature Address: 0x800047d0 Data: 0x0000000001000001
 -- Redundant Coverpoints hit by the op
      - opcode : c.subw
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -16777217
      - rs1_val == 562949953421312






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

|s.no|            signature             |                                                             coverpoints                                                              |                              code                              |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80004208]<br>0xFFFFFFFFFFFFAFFF|- opcode : c.subw<br> - rs1 : x13<br> - rs2 : x8<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 4096<br> - rs1_val == -16385<br> |[0x800003a4]:c.subw a3, s0<br> [0x800003a6]:sd a3, 0(ra)<br>    |
|   2|[0x80004210]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x15<br> - rs1 == rs2<br> - rs2_val == 562949953421312<br> - rs1_val == 562949953421312<br>                    |[0x800003ba]:c.subw a5, a5<br> [0x800003bc]:sd a5, 8(ra)<br>    |
|   3|[0x80004218]<br>0xFFFFFFFFFC000000|- rs1 : x9<br> - rs2 : x12<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 67108864<br> - rs1_val == -9223372036854775808<br>        |[0x800003cc]:c.subw s1, a2<br> [0x800003ce]:sd s1, 16(ra)<br>   |
|   4|[0x80004220]<br>0xFFFFFFFFFFFFFE00|- rs1 : x8<br> - rs2 : x14<br> - rs1_val == 0<br> - rs2_val == 512<br>                                                                |[0x800003da]:c.subw s0, a4<br> [0x800003dc]:sd fp, 24(ra)<br>   |
|   5|[0x80004228]<br>0xFFFFFFFFFFFFFBFF|- rs1 : x14<br> - rs2 : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 1024<br> - rs1_val == 9223372036854775807<br>           |[0x800003f0]:c.subw a4, a3<br> [0x800003f2]:sd a4, 32(ra)<br>   |
|   6|[0x80004230]<br>0x0000000040000002|- rs1 : x12<br> - rs2 : x10<br> - rs1_val == 1<br> - rs2_val < 0<br> - rs2_val == -1073741825<br>                                     |[0x80000402]:c.subw a2, a0<br> [0x80000404]:sd a2, 40(ra)<br>   |
|   7|[0x80004238]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x10<br> - rs2 : x11<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -549755813889<br>  |[0x8000041c]:c.subw a0, a1<br> [0x8000041e]:sd a0, 48(ra)<br>   |
|   8|[0x80004240]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x9<br> - rs2_val == 0<br> - rs1_val == 35184372088832<br>                                                     |[0x8000042e]:c.subw a1, s1<br> [0x80000430]:sd a1, 56(ra)<br>   |
|   9|[0x80004248]<br>0xFFFFFFFFFFFFFC00|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == -1025<br>                                          |[0x80000444]:c.subw a0, a1<br> [0x80000446]:sd a0, 64(ra)<br>   |
|  10|[0x80004250]<br>0xFFFFFFFFFDFFFFFE|- rs2_val == 1<br> - rs1_val == -33554433<br>                                                                                         |[0x80000456]:c.subw a0, a1<br> [0x80000458]:sd a0, 72(ra)<br>   |
|  11|[0x80004258]<br>0x0000000000000002|- rs2_val == 18014398509481984<br> - rs1_val == 2<br>                                                                                 |[0x80000468]:c.subw a0, a1<br> [0x8000046a]:sd a0, 80(ra)<br>   |
|  12|[0x80004260]<br>0x0000000000000004|- rs1_val == 4<br>                                                                                                                    |[0x8000047a]:c.subw a0, a1<br> [0x8000047c]:sd a0, 88(ra)<br>   |
|  13|[0x80004268]<br>0x0000000020000009|- rs2_val == -536870913<br> - rs1_val == 8<br>                                                                                        |[0x8000048c]:c.subw a0, a1<br> [0x8000048e]:sd a0, 96(ra)<br>   |
|  14|[0x80004270]<br>0x0000000000000010|- rs2_val == 2251799813685248<br> - rs1_val == 16<br>                                                                                 |[0x8000049e]:c.subw a0, a1<br> [0x800004a0]:sd a0, 104(ra)<br>  |
|  15|[0x80004278]<br>0x0000000001000021|- rs2_val == -16777217<br> - rs1_val == 32<br>                                                                                        |[0x800004b0]:c.subw a0, a1<br> [0x800004b2]:sd a0, 112(ra)<br>  |
|  16|[0x80004280]<br>0x0000000000000041|- rs2_val == -140737488355329<br> - rs1_val == 64<br>                                                                                 |[0x800004c6]:c.subw a0, a1<br> [0x800004c8]:sd a0, 120(ra)<br>  |
|  17|[0x80004288]<br>0x00000000000000C1|- rs2_val == -65<br> - rs1_val == 128<br>                                                                                             |[0x800004d4]:c.subw a0, a1<br> [0x800004d6]:sd a0, 128(ra)<br>  |
|  18|[0x80004290]<br>0x0000000000000100|- rs1_val == 256<br>                                                                                                                  |[0x800004e6]:c.subw a0, a1<br> [0x800004e8]:sd a0, 136(ra)<br>  |
|  19|[0x80004298]<br>0x0000000000000201|- rs2_val == -2251799813685249<br> - rs1_val == 512<br>                                                                               |[0x800004fc]:c.subw a0, a1<br> [0x800004fe]:sd a0, 144(ra)<br>  |
|  20|[0x800042a0]<br>0x0000000000000401|- rs2_val == -72057594037927937<br> - rs1_val == 1024<br>                                                                             |[0x80000512]:c.subw a0, a1<br> [0x80000514]:sd a0, 152(ra)<br>  |
|  21|[0x800042a8]<br>0xFFFFFFFFFF800800|- rs2_val == 8388608<br> - rs1_val == 2048<br>                                                                                        |[0x80000524]:c.subw a0, a1<br> [0x80000526]:sd a0, 160(ra)<br>  |
|  22|[0x800042b0]<br>0xFFFFFFFFFF801000|- rs1_val == 4096<br>                                                                                                                 |[0x80000532]:c.subw a0, a1<br> [0x80000534]:sd a0, 168(ra)<br>  |
|  23|[0x800042b8]<br>0x0000000000002001|- rs2_val == -8589934593<br> - rs1_val == 8192<br>                                                                                    |[0x80000548]:c.subw a0, a1<br> [0x8000054a]:sd a0, 176(ra)<br>  |
|  24|[0x800042c0]<br>0xFFFFFFFF80004000|- rs2_val == 2147483648<br> - rs1_val == 16384<br>                                                                                    |[0x8000055a]:c.subw a0, a1<br> [0x8000055c]:sd a0, 184(ra)<br>  |
|  25|[0x800042c8]<br>0xFFFFFFFFE0008000|- rs2_val == 536870912<br> - rs1_val == 32768<br>                                                                                     |[0x80000568]:c.subw a0, a1<br> [0x8000056a]:sd a0, 192(ra)<br>  |
|  26|[0x800042d0]<br>0x0000000000010006|- rs1_val == 65536<br>                                                                                                                |[0x80000576]:c.subw a0, a1<br> [0x80000578]:sd a0, 200(ra)<br>  |
|  27|[0x800042d8]<br>0x0000000000020000|- rs2_val == 17592186044416<br> - rs1_val == 131072<br>                                                                               |[0x80000588]:c.subw a0, a1<br> [0x8000058a]:sd a0, 208(ra)<br>  |
|  28|[0x800042e0]<br>0xFFFFFFFFFC040000|- rs1_val == 262144<br>                                                                                                               |[0x80000596]:c.subw a0, a1<br> [0x80000598]:sd a0, 216(ra)<br>  |
|  29|[0x800042e8]<br>0x0000000000060000|- rs2_val == 131072<br> - rs1_val == 524288<br>                                                                                       |[0x800005a4]:c.subw a0, a1<br> [0x800005a6]:sd a0, 224(ra)<br>  |
|  30|[0x800042f0]<br>0x0000000000100041|- rs1_val == 1048576<br>                                                                                                              |[0x800005b2]:c.subw a0, a1<br> [0x800005b4]:sd a0, 232(ra)<br>  |
|  31|[0x800042f8]<br>0xFFFFFFFFC0200000|- rs2_val == 1073741824<br> - rs1_val == 2097152<br>                                                                                  |[0x800005c0]:c.subw a0, a1<br> [0x800005c2]:sd a0, 240(ra)<br>  |
|  32|[0x80004300]<br>0x0000000000500001|- rs2_val == -1048577<br> - rs1_val == 4194304<br>                                                                                    |[0x800005d2]:c.subw a0, a1<br> [0x800005d4]:sd a0, 248(ra)<br>  |
|  33|[0x80004308]<br>0x0000000000800000|- rs2_val == 2305843009213693952<br> - rs1_val == 8388608<br>                                                                         |[0x800005e4]:c.subw a0, a1<br> [0x800005e6]:sd a0, 256(ra)<br>  |
|  34|[0x80004310]<br>0x0000000001000001|- rs2_val == -9007199254740993<br> - rs1_val == 16777216<br>                                                                          |[0x800005fa]:c.subw a0, a1<br> [0x800005fc]:sd a0, 264(ra)<br>  |
|  35|[0x80004318]<br>0x0000000002000000|- rs1_val == 33554432<br>                                                                                                             |[0x80000608]:c.subw a0, a1<br> [0x8000060a]:sd a0, 272(ra)<br>  |
|  36|[0x80004320]<br>0x0000000014000001|- rs2_val == -268435457<br> - rs1_val == 67108864<br>                                                                                 |[0x8000061a]:c.subw a0, a1<br> [0x8000061c]:sd a0, 280(ra)<br>  |
|  37|[0x80004328]<br>0x0000000007FFFFFE|- rs2_val == 2<br> - rs1_val == 134217728<br>                                                                                         |[0x80000628]:c.subw a0, a1<br> [0x8000062a]:sd a0, 288(ra)<br>  |
|  38|[0x80004330]<br>0x0000000010000001|- rs2_val == -4503599627370497<br> - rs1_val == 268435456<br>                                                                         |[0x8000063e]:c.subw a0, a1<br> [0x80000640]:sd a0, 296(ra)<br>  |
|  39|[0x80004338]<br>0x0000000020000001|- rs2_val == -281474976710657<br> - rs1_val == 536870912<br>                                                                          |[0x80000654]:c.subw a0, a1<br> [0x80000656]:sd a0, 304(ra)<br>  |
|  40|[0x80004340]<br>0x000000003FE00000|- rs2_val == 2097152<br> - rs1_val == 1073741824<br>                                                                                  |[0x80000662]:c.subw a0, a1<br> [0x80000664]:sd a0, 312(ra)<br>  |
|  41|[0x80004348]<br>0xFFFFFFFF80010001|- rs2_val == -65537<br> - rs1_val == 2147483648<br>                                                                                   |[0x80000678]:c.subw a0, a1<br> [0x8000067a]:sd a0, 320(ra)<br>  |
|  42|[0x80004350]<br>0x0000000000000000|- rs2_val == 1125899906842624<br> - rs1_val == 4294967296<br>                                                                         |[0x8000068e]:c.subw a0, a1<br> [0x80000690]:sd a0, 328(ra)<br>  |
|  43|[0x80004358]<br>0x0000000000000000|- rs2_val == 576460752303423488<br> - rs1_val == 8589934592<br>                                                                       |[0x800006a4]:c.subw a0, a1<br> [0x800006a6]:sd a0, 336(ra)<br>  |
|  44|[0x80004360]<br>0x0000000008000001|- rs2_val == -134217729<br> - rs1_val == 17179869184<br>                                                                              |[0x800006ba]:c.subw a0, a1<br> [0x800006bc]:sd a0, 344(ra)<br>  |
|  45|[0x80004368]<br>0xFFFFFFFFFFF80000|- rs2_val == 524288<br> - rs1_val == 34359738368<br>                                                                                  |[0x800006cc]:c.subw a0, a1<br> [0x800006ce]:sd a0, 352(ra)<br>  |
|  46|[0x80004370]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                          |[0x800006de]:c.subw a0, a1<br> [0x800006e0]:sd a0, 360(ra)<br>  |
|  47|[0x80004378]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 137438953472<br>                                                                                                         |[0x800006f0]:c.subw a0, a1<br> [0x800006f2]:sd a0, 368(ra)<br>  |
|  48|[0x80004380]<br>0xFFFFFFFFE0000000|- rs1_val == 274877906944<br>                                                                                                         |[0x80000702]:c.subw a0, a1<br> [0x80000704]:sd a0, 376(ra)<br>  |
|  49|[0x80004388]<br>0x0000000000000002|- rs2_val == -2<br> - rs1_val == 549755813888<br>                                                                                     |[0x80000714]:c.subw a0, a1<br> [0x80000716]:sd a0, 384(ra)<br>  |
|  50|[0x80004390]<br>0x0000000000000001|- rs2_val == -4398046511105<br> - rs1_val == 1099511627776<br>                                                                        |[0x8000072e]:c.subw a0, a1<br> [0x80000730]:sd a0, 392(ra)<br>  |
|  51|[0x80004398]<br>0xFFFFFFFFFFFFE000|- rs2_val == 8192<br> - rs1_val == 2199023255552<br>                                                                                  |[0x80000740]:c.subw a0, a1<br> [0x80000742]:sd a0, 400(ra)<br>  |
|  52|[0x800043a0]<br>0x0000000000000001|- rs2_val == -18014398509481985<br> - rs1_val == 4398046511104<br>                                                                    |[0x8000075a]:c.subw a0, a1<br> [0x8000075c]:sd a0, 408(ra)<br>  |
|  53|[0x800043a8]<br>0xFFFFFFFF80000000|- rs1_val == 8796093022208<br>                                                                                                        |[0x80000770]:c.subw a0, a1<br> [0x80000772]:sd a0, 416(ra)<br>  |
|  54|[0x800043b0]<br>0x0000000000000001|- rs2_val == -1099511627777<br> - rs1_val == 17592186044416<br>                                                                       |[0x8000078a]:c.subw a0, a1<br> [0x8000078c]:sd a0, 424(ra)<br>  |
|  55|[0x800043b8]<br>0x0000000000000000|- rs2_val == 549755813888<br> - rs1_val == 70368744177664<br>                                                                         |[0x800007a0]:c.subw a0, a1<br> [0x800007a2]:sd a0, 432(ra)<br>  |
|  56|[0x800043c0]<br>0x0000000000000001|- rs2_val == -35184372088833<br> - rs1_val == 140737488355328<br>                                                                     |[0x800007ba]:c.subw a0, a1<br> [0x800007bc]:sd a0, 440(ra)<br>  |
|  57|[0x800043c8]<br>0x0000000000000001|- rs2_val == -274877906945<br> - rs1_val == 281474976710656<br>                                                                       |[0x800007d4]:c.subw a0, a1<br> [0x800007d6]:sd a0, 448(ra)<br>  |
|  58|[0x800043d0]<br>0x0000000000000000|- rs2_val == 144115188075855872<br> - rs1_val == 1125899906842624<br>                                                                 |[0x800007ea]:c.subw a0, a1<br> [0x800007ec]:sd a0, 456(ra)<br>  |
|  59|[0x800043d8]<br>0xFFFFFFFFFFFFE000|- rs1_val == 2251799813685248<br>                                                                                                     |[0x800007fc]:c.subw a0, a1<br> [0x800007fe]:sd a0, 464(ra)<br>  |
|  60|[0x800043e0]<br>0x0000000000020001|- rs2_val == -131073<br> - rs1_val == 4503599627370496<br>                                                                            |[0x80000812]:c.subw a0, a1<br> [0x80000814]:sd a0, 472(ra)<br>  |
|  61|[0x800043e8]<br>0x0000000000000000|- rs2_val == 8796093022208<br> - rs1_val == 9007199254740992<br>                                                                      |[0x80000828]:c.subw a0, a1<br> [0x8000082a]:sd a0, 480(ra)<br>  |
|  62|[0x800043f0]<br>0xFFFFFFFFFFFFFF00|- rs2_val == 256<br> - rs1_val == 18014398509481984<br>                                                                               |[0x8000083a]:c.subw a0, a1<br> [0x8000083c]:sd a0, 488(ra)<br>  |
|  63|[0x800043f8]<br>0x0000000000000001|- rs2_val == -288230376151711745<br> - rs1_val == 36028797018963968<br>                                                               |[0x80000854]:c.subw a0, a1<br> [0x80000856]:sd a0, 496(ra)<br>  |
|  64|[0x80004400]<br>0xFFFFFFFF80000000|- rs1_val == 72057594037927936<br>                                                                                                    |[0x8000086a]:c.subw a0, a1<br> [0x8000086c]:sd a0, 504(ra)<br>  |
|  65|[0x80004408]<br>0x0000000000400001|- rs2_val == -4194305<br> - rs1_val == 144115188075855872<br>                                                                         |[0x80000880]:c.subw a0, a1<br> [0x80000882]:sd a0, 512(ra)<br>  |
|  66|[0x80004410]<br>0xFFFFFFFFFFFFFFF8|- rs2_val == 8<br> - rs1_val == 288230376151711744<br>                                                                                |[0x80000892]:c.subw a0, a1<br> [0x80000894]:sd a0, 520(ra)<br>  |
|  67|[0x80004418]<br>0x0000000000000001|- rs1_val == 576460752303423488<br>                                                                                                   |[0x800008ac]:c.subw a0, a1<br> [0x800008ae]:sd a0, 528(ra)<br>  |
|  68|[0x80004420]<br>0x0000000000000004|- rs1_val == 1152921504606846976<br>                                                                                                  |[0x800008be]:c.subw a0, a1<br> [0x800008c0]:sd a0, 536(ra)<br>  |
|  69|[0x80004428]<br>0x0000000000000009|- rs2_val == -9<br> - rs1_val == 2305843009213693952<br>                                                                              |[0x800008d0]:c.subw a0, a1<br> [0x800008d2]:sd a0, 544(ra)<br>  |
|  70|[0x80004430]<br>0x0000000000000006|- rs1_val == 4611686018427387904<br>                                                                                                  |[0x800008e2]:c.subw a0, a1<br> [0x800008e4]:sd a0, 552(ra)<br>  |
|  71|[0x80004438]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == -2<br>                                                                                                                   |[0x800008f0]:c.subw a0, a1<br> [0x800008f2]:sd a0, 560(ra)<br>  |
|  72|[0x80004440]<br>0x0000000000001FFE|- rs2_val == -8193<br> - rs1_val == -3<br>                                                                                            |[0x80000902]:c.subw a0, a1<br> [0x80000904]:sd a0, 568(ra)<br>  |
|  73|[0x80004448]<br>0x000000000000003C|- rs1_val == -5<br>                                                                                                                   |[0x80000910]:c.subw a0, a1<br> [0x80000912]:sd a0, 576(ra)<br>  |
|  74|[0x80004450]<br>0xFFFFFFFFFEFFFFF7|- rs2_val == 16777216<br> - rs1_val == -9<br>                                                                                         |[0x8000091e]:c.subw a0, a1<br> [0x80000920]:sd a0, 584(ra)<br>  |
|  75|[0x80004458]<br>0xFFFFFFFFFFFFFFF0|- rs2_val == -36028797018963969<br> - rs1_val == -17<br>                                                                              |[0x80000934]:c.subw a0, a1<br> [0x80000936]:sd a0, 592(ra)<br>  |
|  76|[0x80004460]<br>0x0000000000FFFFE0|- rs1_val == -33<br>                                                                                                                  |[0x80000946]:c.subw a0, a1<br> [0x80000948]:sd a0, 600(ra)<br>  |
|  77|[0x80004468]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == 4294967296<br> - rs1_val == -65<br>                                                                                      |[0x80000958]:c.subw a0, a1<br> [0x8000095a]:sd a0, 608(ra)<br>  |
|  78|[0x80004470]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == 140737488355328<br> - rs1_val == -129<br>                                                                                |[0x8000096a]:c.subw a0, a1<br> [0x8000096c]:sd a0, 616(ra)<br>  |
|  79|[0x80004478]<br>0x0000000000000000|- rs2_val == -144115188075855873<br> - rs1_val == -274877906945<br>                                                                   |[0x80000988]:c.subw a0, a1<br> [0x8000098a]:sd a0, 624(ra)<br>  |
|  80|[0x80004480]<br>0x0000000000000001|- rs2_val == -576460752303423489<br>                                                                                                  |[0x800009a2]:c.subw a0, a1<br> [0x800009a4]:sd a0, 632(ra)<br>  |
|  81|[0x80004488]<br>0x0000000004000001|- rs2_val == -1152921504606846977<br>                                                                                                 |[0x800009b8]:c.subw a0, a1<br> [0x800009ba]:sd a0, 640(ra)<br>  |
|  82|[0x80004490]<br>0x0000000000000001|- rs2_val == -2305843009213693953<br>                                                                                                 |[0x800009d2]:c.subw a0, a1<br> [0x800009d4]:sd a0, 648(ra)<br>  |
|  83|[0x80004498]<br>0x0000000000000000|- rs2_val == -4611686018427387905<br> - rs1_val == -1125899906842625<br>                                                              |[0x800009f0]:c.subw a0, a1<br> [0x800009f2]:sd a0, 656(ra)<br>  |
|  84|[0x800044a0]<br>0xFFFFFFFFAAAAAAA1|- rs2_val == 6148914691236517205<br>                                                                                                  |[0x80000a1a]:c.subw a0, a1<br> [0x80000a1c]:sd a0, 664(ra)<br>  |
|  85|[0x800044a8]<br>0x0000000055555155|- rs2_val == -6148914691236517206<br>                                                                                                 |[0x80000a44]:c.subw a0, a1<br> [0x80000a46]:sd a0, 672(ra)<br>  |
|  86|[0x800044b0]<br>0xFFFFFFFFFFEFFEFF|- rs2_val == 1048576<br> - rs1_val == -257<br>                                                                                        |[0x80000a52]:c.subw a0, a1<br> [0x80000a54]:sd a0, 680(ra)<br>  |
|  87|[0x800044b8]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == -513<br>                                                                                                                 |[0x80000a64]:c.subw a0, a1<br> [0x80000a66]:sd a0, 688(ra)<br>  |
|  88|[0x800044c0]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -2049<br>                                                                                                                |[0x80000a76]:c.subw a0, a1<br> [0x80000a78]:sd a0, 696(ra)<br>  |
|  89|[0x800044c8]<br>0xFFFFFFFFFFFFF000|- rs2_val == -34359738369<br> - rs1_val == -4097<br>                                                                                  |[0x80000a90]:c.subw a0, a1<br> [0x80000a92]:sd a0, 704(ra)<br>  |
|  90|[0x800044d0]<br>0xFFFFFFFFFFFFE100|- rs2_val == -257<br> - rs1_val == -8193<br>                                                                                          |[0x80000aa2]:c.subw a0, a1<br> [0x80000aa4]:sd a0, 712(ra)<br>  |
|  91|[0x800044d8]<br>0xFFFFFFFFFFFF7BFF|- rs1_val == -32769<br>                                                                                                               |[0x80000ab4]:c.subw a0, a1<br> [0x80000ab6]:sd a0, 720(ra)<br>  |
|  92|[0x800044e0]<br>0xFFFFFFFFFFFF8000|- rs2_val == -32769<br> - rs1_val == -65537<br>                                                                                       |[0x80000aca]:c.subw a0, a1<br> [0x80000acc]:sd a0, 728(ra)<br>  |
|  93|[0x800044e8]<br>0xFFFFFFFFFFFE2000|- rs1_val == -131073<br>                                                                                                              |[0x80000ae0]:c.subw a0, a1<br> [0x80000ae2]:sd a0, 736(ra)<br>  |
|  94|[0x800044f0]<br>0x0000000000000000|- rs2_val == -262145<br> - rs1_val == -262145<br>                                                                                     |[0x80000af6]:c.subw a0, a1<br> [0x80000af8]:sd a0, 744(ra)<br>  |
|  95|[0x800044f8]<br>0xFFFFFFFFEFF7FFFF|- rs2_val == 268435456<br> - rs1_val == -524289<br>                                                                                   |[0x80000b08]:c.subw a0, a1<br> [0x80000b0a]:sd a0, 752(ra)<br>  |
|  96|[0x80004500]<br>0xFFFFFFFFFFEFFF7F|- rs2_val == 128<br> - rs1_val == -1048577<br>                                                                                        |[0x80000b1a]:c.subw a0, a1<br> [0x80000b1c]:sd a0, 760(ra)<br>  |
|  97|[0x80004508]<br>0xFFFFFFFFFFE00006|- rs1_val == -2097153<br>                                                                                                             |[0x80000b2c]:c.subw a0, a1<br> [0x80000b2e]:sd a0, 768(ra)<br>  |
|  98|[0x80004510]<br>0xFFFFFFFFFFC00000|- rs1_val == -4194305<br>                                                                                                             |[0x80000b46]:c.subw a0, a1<br> [0x80000b48]:sd a0, 776(ra)<br>  |
|  99|[0x80004518]<br>0xFFFFFFFFFF800007|- rs1_val == -8388609<br>                                                                                                             |[0x80000b58]:c.subw a0, a1<br> [0x80000b5a]:sd a0, 784(ra)<br>  |
| 100|[0x80004520]<br>0x000000000F000000|- rs1_val == -16777217<br>                                                                                                            |[0x80000b6e]:c.subw a0, a1<br> [0x80000b70]:sd a0, 792(ra)<br>  |
| 101|[0x80004528]<br>0xFFFFFFFFFC000000|- rs1_val == -67108865<br>                                                                                                            |[0x80000b80]:c.subw a0, a1<br> [0x80000b82]:sd a0, 800(ra)<br>  |
| 102|[0x80004530]<br>0xFFFFFFFFF7FFFFFC|- rs1_val == -134217729<br>                                                                                                           |[0x80000b92]:c.subw a0, a1<br> [0x80000b94]:sd a0, 808(ra)<br>  |
| 103|[0x80004538]<br>0xFFFFFFFFF0008000|- rs1_val == -268435457<br>                                                                                                           |[0x80000ba8]:c.subw a0, a1<br> [0x80000baa]:sd a0, 816(ra)<br>  |
| 104|[0x80004540]<br>0xFFFFFFFFDFFFFFFF|- rs1_val == -536870913<br>                                                                                                           |[0x80000bbe]:c.subw a0, a1<br> [0x80000bc0]:sd a0, 824(ra)<br>  |
| 105|[0x80004548]<br>0xFFFFFFFFBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                          |[0x80000bd4]:c.subw a0, a1<br> [0x80000bd6]:sd a0, 832(ra)<br>  |
| 106|[0x80004550]<br>0x000000005FFFFFFF|- rs1_val == -2147483649<br>                                                                                                          |[0x80000bea]:c.subw a0, a1<br> [0x80000bec]:sd a0, 840(ra)<br>  |
| 107|[0x80004558]<br>0xFFFFFFFFFFFFFFF9|- rs1_val == -4294967297<br>                                                                                                          |[0x80000c00]:c.subw a0, a1<br> [0x80000c02]:sd a0, 848(ra)<br>  |
| 108|[0x80004560]<br>0x0000000000000000|- rs1_val == -8589934593<br>                                                                                                          |[0x80000c1e]:c.subw a0, a1<br> [0x80000c20]:sd a0, 856(ra)<br>  |
| 109|[0x80004568]<br>0x0000000000000000|- rs1_val == -17179869185<br>                                                                                                         |[0x80000c3c]:c.subw a0, a1<br> [0x80000c3e]:sd a0, 864(ra)<br>  |
| 110|[0x80004570]<br>0x0000000000008000|- rs1_val == -34359738369<br>                                                                                                         |[0x80000c56]:c.subw a0, a1<br> [0x80000c58]:sd a0, 872(ra)<br>  |
| 111|[0x80004578]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -68719476737<br>                                                                                                         |[0x80000c6c]:c.subw a0, a1<br> [0x80000c6e]:sd a0, 880(ra)<br>  |
| 112|[0x80004580]<br>0x0000000000100000|- rs1_val == -137438953473<br>                                                                                                        |[0x80000c86]:c.subw a0, a1<br> [0x80000c88]:sd a0, 888(ra)<br>  |
| 113|[0x80004588]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                       |[0x80000c9c]:c.subw a0, a1<br> [0x80000c9e]:sd a0, 896(ra)<br>  |
| 114|[0x80004590]<br>0x0000000000000800|- rs2_val == -2049<br> - rs1_val == -2199023255553<br>                                                                                |[0x80000cb6]:c.subw a0, a1<br> [0x80000cb8]:sd a0, 904(ra)<br>  |
| 115|[0x80004598]<br>0x0000000000000000|- rs2_val == -8796093022209<br> - rs1_val == -4398046511105<br>                                                                       |[0x80000cd4]:c.subw a0, a1<br> [0x80000cd6]:sd a0, 912(ra)<br>  |
| 116|[0x800045a0]<br>0x0000000000040000|- rs1_val == -8796093022209<br>                                                                                                       |[0x80000cee]:c.subw a0, a1<br> [0x80000cf0]:sd a0, 920(ra)<br>  |
| 117|[0x800045a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                      |[0x80000d08]:c.subw a0, a1<br> [0x80000d0a]:sd a0, 928(ra)<br>  |
| 118|[0x800045b0]<br>0x0000000004000000|- rs2_val == -67108865<br> - rs1_val == -35184372088833<br>                                                                           |[0x80000d22]:c.subw a0, a1<br> [0x80000d24]:sd a0, 936(ra)<br>  |
| 119|[0x800045b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                      |[0x80000d3c]:c.subw a0, a1<br> [0x80000d3e]:sd a0, 944(ra)<br>  |
| 120|[0x800045c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                     |[0x80000d56]:c.subw a0, a1<br> [0x80000d58]:sd a0, 952(ra)<br>  |
| 121|[0x800045c8]<br>0xFFFFFFFFAAAAAAAA|- rs1_val == -281474976710657<br>                                                                                                     |[0x80000d88]:c.subw a0, a1<br> [0x80000d8a]:sd a0, 960(ra)<br>  |
| 122|[0x800045d0]<br>0x0000000000000000|- rs1_val == -562949953421313<br>                                                                                                     |[0x80000da6]:c.subw a0, a1<br> [0x80000da8]:sd a0, 968(ra)<br>  |
| 123|[0x800045d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                    |[0x80000dc0]:c.subw a0, a1<br> [0x80000dc2]:sd a0, 976(ra)<br>  |
| 124|[0x800045e0]<br>0x0000000000000000|- rs2_val == -549755813889<br> - rs1_val == -4503599627370497<br>                                                                     |[0x80000dde]:c.subw a0, a1<br> [0x80000de0]:sd a0, 984(ra)<br>  |
| 125|[0x800045e8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 17179869184<br> - rs1_val == -9007199254740993<br>                                                                       |[0x80000df8]:c.subw a0, a1<br> [0x80000dfa]:sd a0, 992(ra)<br>  |
| 126|[0x800045f0]<br>0x0000000000000000|- rs1_val == -18014398509481985<br>                                                                                                   |[0x80000e16]:c.subw a0, a1<br> [0x80000e18]:sd a0, 1000(ra)<br> |
| 127|[0x800045f8]<br>0x0000000000000000|- rs1_val == -36028797018963969<br>                                                                                                   |[0x80000e34]:c.subw a0, a1<br> [0x80000e36]:sd a0, 1008(ra)<br> |
| 128|[0x80004600]<br>0x0000000000000200|- rs2_val == -513<br> - rs1_val == -72057594037927937<br>                                                                             |[0x80000e4a]:c.subw a0, a1<br> [0x80000e4c]:sd a0, 1016(ra)<br> |
| 129|[0x80004608]<br>0x0000000000000080|- rs2_val == -129<br> - rs1_val == -144115188075855873<br>                                                                            |[0x80000e60]:c.subw a0, a1<br> [0x80000e62]:sd a0, 1024(ra)<br> |
| 130|[0x80004610]<br>0x0000000000000004|- rs2_val == -5<br> - rs1_val == -288230376151711745<br>                                                                              |[0x80000e76]:c.subw a0, a1<br> [0x80000e78]:sd a0, 1032(ra)<br> |
| 131|[0x80004618]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                  |[0x80000e8c]:c.subw a0, a1<br> [0x80000e8e]:sd a0, 1040(ra)<br> |
| 132|[0x80004620]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 8589934592<br> - rs1_val == -1152921504606846977<br>                                                                     |[0x80000ea6]:c.subw a0, a1<br> [0x80000ea8]:sd a0, 1048(ra)<br> |
| 133|[0x80004628]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                 |[0x80000ec0]:c.subw a0, a1<br> [0x80000ec2]:sd a0, 1056(ra)<br> |
| 134|[0x80004630]<br>0x0000000000000003|- rs1_val == -4611686018427387905<br>                                                                                                 |[0x80000ed6]:c.subw a0, a1<br> [0x80000ed8]:sd a0, 1064(ra)<br> |
| 135|[0x80004638]<br>0x0000000055551555|- rs2_val == 16384<br> - rs1_val == 6148914691236517205<br>                                                                           |[0x80000f00]:c.subw a0, a1<br> [0x80000f02]:sd a0, 1072(ra)<br> |
| 136|[0x80004640]<br>0xFFFFFFFFAAAAA9AA|- rs1_val == -6148914691236517206<br>                                                                                                 |[0x80000f2a]:c.subw a0, a1<br> [0x80000f2c]:sd a0, 1080(ra)<br> |
| 137|[0x80004648]<br>0x000000007FFFFFFC|- rs2_val == 4<br>                                                                                                                    |[0x80000f3c]:c.subw a0, a1<br> [0x80000f3e]:sd a0, 1088(ra)<br> |
| 138|[0x80004650]<br>0x000000007FFFFFEF|- rs2_val == 16<br>                                                                                                                   |[0x80000f52]:c.subw a0, a1<br> [0x80000f54]:sd a0, 1096(ra)<br> |
| 139|[0x80004658]<br>0xFFFFFFFFFFFFFFDA|- rs2_val == 32<br>                                                                                                                   |[0x80000f60]:c.subw a0, a1<br> [0x80000f62]:sd a0, 1104(ra)<br> |
| 140|[0x80004660]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == 64<br>                                                                                                                   |[0x80000f76]:c.subw a0, a1<br> [0x80000f78]:sd a0, 1112(ra)<br> |
| 141|[0x80004668]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == 2048<br>                                                                                                                 |[0x80000f90]:c.subw a0, a1<br> [0x80000f92]:sd a0, 1120(ra)<br> |
| 142|[0x80004670]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == 32768<br>                                                                                                                |[0x80000fa6]:c.subw a0, a1<br> [0x80000fa8]:sd a0, 1128(ra)<br> |
| 143|[0x80004678]<br>0xFFFFFFFFFFFF0000|- rs2_val == 65536<br>                                                                                                                |[0x80000fb8]:c.subw a0, a1<br> [0x80000fba]:sd a0, 1136(ra)<br> |
| 144|[0x80004680]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == 262144<br>                                                                                                               |[0x80000fce]:c.subw a0, a1<br> [0x80000fd0]:sd a0, 1144(ra)<br> |
| 145|[0x80004688]<br>0xFFFFFFFFFFBFFFFB|- rs2_val == 4194304<br>                                                                                                              |[0x80000fdc]:c.subw a0, a1<br> [0x80000fde]:sd a0, 1152(ra)<br> |
| 146|[0x80004690]<br>0xFFFFFFFFFDFFDFFF|- rs2_val == 33554432<br>                                                                                                             |[0x80000fee]:c.subw a0, a1<br> [0x80000ff0]:sd a0, 1160(ra)<br> |
| 147|[0x80004698]<br>0xFFFFFFFFF8000000|- rs2_val == 134217728<br>                                                                                                            |[0x80001000]:c.subw a0, a1<br> [0x80001002]:sd a0, 1168(ra)<br> |
| 148|[0x800046a0]<br>0x0000000000000020|- rs2_val == 34359738368<br>                                                                                                          |[0x80001012]:c.subw a0, a1<br> [0x80001014]:sd a0, 1176(ra)<br> |
| 149|[0x800046a8]<br>0x0000000000000000|- rs2_val == 68719476736<br>                                                                                                          |[0x80001028]:c.subw a0, a1<br> [0x8000102a]:sd a0, 1184(ra)<br> |
| 150|[0x800046b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 137438953472<br>                                                                                                         |[0x80001042]:c.subw a0, a1<br> [0x80001044]:sd a0, 1192(ra)<br> |
| 151|[0x800046b8]<br>0x0000000000100000|- rs2_val == 274877906944<br>                                                                                                         |[0x80001054]:c.subw a0, a1<br> [0x80001056]:sd a0, 1200(ra)<br> |
| 152|[0x800046c0]<br>0x0000000010000000|- rs2_val == 1099511627776<br>                                                                                                        |[0x80001066]:c.subw a0, a1<br> [0x80001068]:sd a0, 1208(ra)<br> |
| 153|[0x800046c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 2199023255552<br>                                                                                                        |[0x80001080]:c.subw a0, a1<br> [0x80001082]:sd a0, 1216(ra)<br> |
| 154|[0x800046d0]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == 4398046511104<br>                                                                                                        |[0x80001092]:c.subw a0, a1<br> [0x80001094]:sd a0, 1224(ra)<br> |
| 155|[0x800046d8]<br>0x0000000000000000|- rs2_val == 36028797018963968<br>                                                                                                    |[0x800010a8]:c.subw a0, a1<br> [0x800010aa]:sd a0, 1232(ra)<br> |
| 156|[0x800046e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 72057594037927936<br>                                                                                                    |[0x800010c2]:c.subw a0, a1<br> [0x800010c4]:sd a0, 1240(ra)<br> |
| 157|[0x800046e8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 288230376151711744<br>                                                                                                   |[0x800010dc]:c.subw a0, a1<br> [0x800010de]:sd a0, 1248(ra)<br> |
| 158|[0x800046f0]<br>0x0000000010000000|- rs2_val == 1152921504606846976<br>                                                                                                  |[0x800010ee]:c.subw a0, a1<br> [0x800010f0]:sd a0, 1256(ra)<br> |
| 159|[0x800046f8]<br>0x0000000000000000|- rs2_val == 4611686018427387904<br>                                                                                                  |[0x80001104]:c.subw a0, a1<br> [0x80001106]:sd a0, 1264(ra)<br> |
| 160|[0x80004700]<br>0x0000000000000003|- rs2_val == -3<br>                                                                                                                   |[0x80001116]:c.subw a0, a1<br> [0x80001118]:sd a0, 1272(ra)<br> |
| 161|[0x80004708]<br>0x0000000000000010|- rs2_val == -17<br>                                                                                                                  |[0x8000112c]:c.subw a0, a1<br> [0x8000112e]:sd a0, 1280(ra)<br> |
| 162|[0x80004710]<br>0xFFFFFFFFFF800020|- rs2_val == -33<br>                                                                                                                  |[0x8000113e]:c.subw a0, a1<br> [0x80001140]:sd a0, 1288(ra)<br> |
| 163|[0x80004718]<br>0x0000000000000401|- rs2_val == -1025<br>                                                                                                                |[0x80001150]:c.subw a0, a1<br> [0x80001152]:sd a0, 1296(ra)<br> |
| 164|[0x80004720]<br>0x0000000055556556|- rs2_val == -4097<br>                                                                                                                |[0x8000117e]:c.subw a0, a1<br> [0x80001180]:sd a0, 1304(ra)<br> |
| 165|[0x80004728]<br>0x0000000000004000|- rs2_val == -16385<br>                                                                                                               |[0x80001198]:c.subw a0, a1<br> [0x8000119a]:sd a0, 1312(ra)<br> |
| 166|[0x80004730]<br>0x0000000000080001|- rs2_val == -524289<br>                                                                                                              |[0x800011ae]:c.subw a0, a1<br> [0x800011b0]:sd a0, 1320(ra)<br> |
| 167|[0x80004738]<br>0x0000000000200000|- rs2_val == -2097153<br>                                                                                                             |[0x800011c8]:c.subw a0, a1<br> [0x800011ca]:sd a0, 1328(ra)<br> |
| 168|[0x80004740]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 70368744177664<br>                                                                                                       |[0x800011e2]:c.subw a0, a1<br> [0x800011e4]:sd a0, 1336(ra)<br> |
| 169|[0x80004748]<br>0x0000000000800001|- rs2_val == -8388609<br>                                                                                                             |[0x800011f8]:c.subw a0, a1<br> [0x800011fa]:sd a0, 1344(ra)<br> |
| 170|[0x80004750]<br>0x0000000001C00000|- rs2_val == -33554433<br>                                                                                                            |[0x8000120e]:c.subw a0, a1<br> [0x80001210]:sd a0, 1352(ra)<br> |
| 171|[0x80004758]<br>0xFFFFFFFF80000041|- rs2_val == -2147483649<br>                                                                                                          |[0x80001224]:c.subw a0, a1<br> [0x80001226]:sd a0, 1360(ra)<br> |
| 172|[0x80004760]<br>0x0000000008000001|- rs2_val == -4294967297<br>                                                                                                          |[0x8000123a]:c.subw a0, a1<br> [0x8000123c]:sd a0, 1368(ra)<br> |
| 173|[0x80004768]<br>0xFFFFFFFF80000000|- rs2_val == -17179869185<br>                                                                                                         |[0x80001258]:c.subw a0, a1<br> [0x8000125a]:sd a0, 1376(ra)<br> |
| 174|[0x80004778]<br>0x0000000000000041|- rs2_val == -68719476737<br>                                                                                                         |[0x80001284]:c.subw a0, a1<br> [0x80001286]:sd a0, 1392(ra)<br> |
| 175|[0x80004780]<br>0xFFFFFFFFFFFF8000|- rs2_val == -137438953473<br>                                                                                                        |[0x8000129e]:c.subw a0, a1<br> [0x800012a0]:sd a0, 1400(ra)<br> |
| 176|[0x80004788]<br>0x0000000000004001|- rs2_val == -2199023255553<br>                                                                                                       |[0x800012b4]:c.subw a0, a1<br> [0x800012b6]:sd a0, 1408(ra)<br> |
| 177|[0x80004790]<br>0xFFFFFFFFFFFFFFF9|- rs2_val == -17592186044417<br>                                                                                                      |[0x800012ca]:c.subw a0, a1<br> [0x800012cc]:sd a0, 1416(ra)<br> |
| 178|[0x80004798]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == 35184372088832<br>                                                                                                       |[0x800012dc]:c.subw a0, a1<br> [0x800012de]:sd a0, 1424(ra)<br> |
| 179|[0x800047a0]<br>0x0000000000000001|- rs2_val == -70368744177665<br>                                                                                                      |[0x800012f6]:c.subw a0, a1<br> [0x800012f8]:sd a0, 1432(ra)<br> |
| 180|[0x800047a8]<br>0x0000000000000080|- rs2_val == 281474976710656<br>                                                                                                      |[0x80001308]:c.subw a0, a1<br> [0x8000130a]:sd a0, 1440(ra)<br> |
| 181|[0x800047b0]<br>0xFFFFFFFFFFF80000|- rs2_val == -562949953421313<br>                                                                                                     |[0x80001322]:c.subw a0, a1<br> [0x80001324]:sd a0, 1448(ra)<br> |
| 182|[0x800047b8]<br>0x0000000000000000|- rs2_val == -1125899906842625<br>                                                                                                    |[0x80001340]:c.subw a0, a1<br> [0x80001342]:sd a0, 1456(ra)<br> |
| 183|[0x800047c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 4503599627370496<br>                                                                                                     |[0x8000135a]:c.subw a0, a1<br> [0x8000135c]:sd a0, 1464(ra)<br> |
| 184|[0x800047c8]<br>0x0000000000000000|- rs2_val == 9007199254740992<br>                                                                                                     |[0x80001370]:c.subw a0, a1<br> [0x80001372]:sd a0, 1472(ra)<br> |
