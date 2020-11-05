
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001360')]      |
| SIG_REGION                | [('0x80004204', '0x800047f0', '189 dwords')]      |
| COV_LABELS                | csubw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csubw-01.S/csubw-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 188      |
| STAT1                     | 187      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000135a]:c.subw a0, a1
      [0x8000135c]:sd a0, 1496(ra)
 -- Signature Address: 0x800047e8 Data: 0xFFFFFFFFFFF7FFEF
 -- Redundant Coverpoints hit by the op
      - opcode : c.subw
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 524288
      - rs1_val == -17






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

|s.no|            signature             |                                                                       coverpoints                                                                       |                              code                              |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80004210]<br>0x0000000000000000|- opcode : c.subw<br> - rs1 : x15<br> - rs2 : x15<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -17<br> - rs1_val == -17<br>                       |[0x800003a0]:c.subw a5, a5<br> [0x800003a2]:sd a5, 0(ra)<br>    |
|   2|[0x80004218]<br>0xFFFFFFFFFFFFFFE2|- rs1 : x12<br> - rs2 : x11<br> - rs1 != rs2<br> - rs2_val == -3<br> - rs1_val == -33<br>                                                                |[0x800003ae]:c.subw a2, a1<br> [0x800003b0]:sd a2, 8(ra)<br>    |
|   3|[0x80004220]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x12<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val > 0<br> - rs2_val == 140737488355328<br> - rs1_val == -9223372036854775808<br> |[0x800003c4]:c.subw a3, a2<br> [0x800003c6]:sd a3, 16(ra)<br>   |
|   4|[0x80004228]<br>0x0000000000000001|- rs1 : x11<br> - rs2 : x14<br> - rs1_val == 0<br> - rs2_val == -281474976710657<br>                                                                     |[0x800003da]:c.subw a1, a4<br> [0x800003dc]:sd a1, 24(ra)<br>   |
|   5|[0x80004230]<br>0xFFFFFFFFEFFFFFFF|- rs1 : x14<br> - rs2 : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 268435456<br> - rs1_val == 9223372036854775807<br>                          |[0x800003f0]:c.subw a4, s0<br> [0x800003f2]:sd a4, 32(ra)<br>   |
|   6|[0x80004238]<br>0x0000000000000001|- rs1 : x8<br> - rs2 : x10<br> - rs1_val == 1<br> - rs2_val == 4611686018427387904<br>                                                                   |[0x80000402]:c.subw s0, a0<br> [0x80000404]:sd fp, 40(ra)<br>   |
|   7|[0x80004240]<br>0x000000007FFFFFFF|- rs1 : x9<br> - rs2 : x13<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -2147483649<br>                        |[0x8000041c]:c.subw s1, a3<br> [0x8000041e]:sd s1, 48(ra)<br>   |
|   8|[0x80004248]<br>0x0000000000000400|- rs1 : x10<br> - rs2 : x9<br> - rs2_val == 0<br> - rs1_val == 1024<br>                                                                                  |[0x8000042a]:c.subw a0, s1<br> [0x8000042c]:sd a0, 56(ra)<br>   |
|   9|[0x80004250]<br>0x0000000000000001|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 2199023255552<br>                                                     |[0x80000444]:c.subw a0, a1<br> [0x80000446]:sd a0, 64(ra)<br>   |
|  10|[0x80004258]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == 1<br> - rs1_val == -35184372088833<br>                                                                                                      |[0x8000045a]:c.subw a0, a1<br> [0x8000045c]:sd a0, 72(ra)<br>   |
|  11|[0x80004260]<br>0x0000000000000003|- rs2_val == -4294967297<br> - rs1_val == 2<br>                                                                                                          |[0x80000470]:c.subw a0, a1<br> [0x80000472]:sd a0, 80(ra)<br>   |
|  12|[0x80004268]<br>0xFFFFFFFFFFE00004|- rs2_val == 2097152<br> - rs1_val == 4<br>                                                                                                              |[0x8000047e]:c.subw a0, a1<br> [0x80000480]:sd a0, 88(ra)<br>   |
|  13|[0x80004270]<br>0x0000000000000000|- rs2_val == 8<br> - rs1_val == 8<br>                                                                                                                    |[0x8000048c]:c.subw a0, a1<br> [0x8000048e]:sd a0, 96(ra)<br>   |
|  14|[0x80004278]<br>0x0000000000002011|- rs2_val == -8193<br> - rs1_val == 16<br>                                                                                                               |[0x8000049e]:c.subw a0, a1<br> [0x800004a0]:sd a0, 104(ra)<br>  |
|  15|[0x80004280]<br>0x0000000000800021|- rs2_val == -8388609<br> - rs1_val == 32<br>                                                                                                            |[0x800004b0]:c.subw a0, a1<br> [0x800004b2]:sd a0, 112(ra)<br>  |
|  16|[0x80004288]<br>0xFFFFFFFFFFFF8040|- rs2_val == 32768<br> - rs1_val == 64<br>                                                                                                               |[0x800004be]:c.subw a0, a1<br> [0x800004c0]:sd a0, 120(ra)<br>  |
|  17|[0x80004290]<br>0x0000000000000081|- rs1_val == 128<br>                                                                                                                                     |[0x800004d4]:c.subw a0, a1<br> [0x800004d6]:sd a0, 128(ra)<br>  |
|  18|[0x80004298]<br>0x0000000000000101|- rs2_val == -562949953421313<br> - rs1_val == 256<br>                                                                                                   |[0x800004ea]:c.subw a0, a1<br> [0x800004ec]:sd a0, 136(ra)<br>  |
|  19|[0x800042a0]<br>0x0000000000100201|- rs2_val == -1048577<br> - rs1_val == 512<br>                                                                                                           |[0x800004fc]:c.subw a0, a1<br> [0x800004fe]:sd a0, 144(ra)<br>  |
|  20|[0x800042a8]<br>0x0000000000000801|- rs2_val == -274877906945<br> - rs1_val == 2048<br>                                                                                                     |[0x80000516]:c.subw a0, a1<br> [0x80000518]:sd a0, 152(ra)<br>  |
|  21|[0x800042b0]<br>0x0000000000000FFF|- rs1_val == 4096<br>                                                                                                                                    |[0x80000524]:c.subw a0, a1<br> [0x80000526]:sd a0, 160(ra)<br>  |
|  22|[0x800042b8]<br>0x0000000000002001|- rs2_val == -35184372088833<br> - rs1_val == 8192<br>                                                                                                   |[0x8000053a]:c.subw a0, a1<br> [0x8000053c]:sd a0, 168(ra)<br>  |
|  23|[0x800042c0]<br>0x0000000000004000|- rs2_val == 9007199254740992<br> - rs1_val == 16384<br>                                                                                                 |[0x8000054c]:c.subw a0, a1<br> [0x8000054e]:sd a0, 176(ra)<br>  |
|  24|[0x800042c8]<br>0x0000000000008000|- rs2_val == 36028797018963968<br> - rs1_val == 32768<br>                                                                                                |[0x8000055e]:c.subw a0, a1<br> [0x80000560]:sd a0, 184(ra)<br>  |
|  25|[0x800042d0]<br>0x000000000000FC00|- rs2_val == 1024<br> - rs1_val == 65536<br>                                                                                                             |[0x8000056c]:c.subw a0, a1<br> [0x8000056e]:sd a0, 192(ra)<br>  |
|  26|[0x800042d8]<br>0x000000000001C000|- rs2_val == 16384<br> - rs1_val == 131072<br>                                                                                                           |[0x8000057a]:c.subw a0, a1<br> [0x8000057c]:sd a0, 200(ra)<br>  |
|  27|[0x800042e0]<br>0x00000000000C0001|- rs2_val == -524289<br> - rs1_val == 262144<br>                                                                                                         |[0x8000058c]:c.subw a0, a1<br> [0x8000058e]:sd a0, 208(ra)<br>  |
|  28|[0x800042e8]<br>0x0000000000080000|- rs2_val == 70368744177664<br> - rs1_val == 524288<br>                                                                                                  |[0x8000059e]:c.subw a0, a1<br> [0x800005a0]:sd a0, 216(ra)<br>  |
|  29|[0x800042f0]<br>0xFFFFFFFFFC100000|- rs2_val == 67108864<br> - rs1_val == 1048576<br>                                                                                                       |[0x800005ac]:c.subw a0, a1<br> [0x800005ae]:sd a0, 224(ra)<br>  |
|  30|[0x800042f8]<br>0x0000000000200001|- rs2_val == -8796093022209<br> - rs1_val == 2097152<br>                                                                                                 |[0x800005c2]:c.subw a0, a1<br> [0x800005c4]:sd a0, 232(ra)<br>  |
|  31|[0x80004300]<br>0x00000000003FFFF0|- rs2_val == 16<br> - rs1_val == 4194304<br>                                                                                                             |[0x800005d0]:c.subw a0, a1<br> [0x800005d2]:sd a0, 240(ra)<br>  |
|  32|[0x80004308]<br>0x0000000000800001|- rs1_val == 8388608<br>                                                                                                                                 |[0x800005e6]:c.subw a0, a1<br> [0x800005e8]:sd a0, 248(ra)<br>  |
|  33|[0x80004310]<br>0xFFFFFFFFFD000000|- rs1_val == 16777216<br>                                                                                                                                |[0x800005f4]:c.subw a0, a1<br> [0x800005f6]:sd a0, 256(ra)<br>  |
|  34|[0x80004318]<br>0x0000000002000000|- rs2_val == 2199023255552<br> - rs1_val == 33554432<br>                                                                                                 |[0x80000606]:c.subw a0, a1<br> [0x80000608]:sd a0, 264(ra)<br>  |
|  35|[0x80004320]<br>0x0000000004100001|- rs1_val == 67108864<br>                                                                                                                                |[0x80000618]:c.subw a0, a1<br> [0x8000061a]:sd a0, 272(ra)<br>  |
|  36|[0x80004328]<br>0x0000000008000000|- rs2_val == 4503599627370496<br> - rs1_val == 134217728<br>                                                                                             |[0x8000062a]:c.subw a0, a1<br> [0x8000062c]:sd a0, 280(ra)<br>  |
|  37|[0x80004330]<br>0x0000000010000001|- rs2_val == -2199023255553<br> - rs1_val == 268435456<br>                                                                                               |[0x80000640]:c.subw a0, a1<br> [0x80000642]:sd a0, 288(ra)<br>  |
|  38|[0x80004338]<br>0x0000000020000000|- rs2_val == 8589934592<br> - rs1_val == 536870912<br>                                                                                                   |[0x80000652]:c.subw a0, a1<br> [0x80000654]:sd a0, 296(ra)<br>  |
|  39|[0x80004340]<br>0x000000003FFFFFE0|- rs2_val == 32<br> - rs1_val == 1073741824<br>                                                                                                          |[0x80000660]:c.subw a0, a1<br> [0x80000662]:sd a0, 304(ra)<br>  |
|  40|[0x80004348]<br>0xFFFFFFFF80000001|- rs1_val == 2147483648<br>                                                                                                                              |[0x8000067a]:c.subw a0, a1<br> [0x8000067c]:sd a0, 312(ra)<br>  |
|  41|[0x80004350]<br>0x0000000000000001|- rs2_val == -144115188075855873<br> - rs1_val == 4294967296<br>                                                                                         |[0x80000694]:c.subw a0, a1<br> [0x80000696]:sd a0, 320(ra)<br>  |
|  42|[0x80004358]<br>0x0000000000000801|- rs2_val == -2049<br> - rs1_val == 8589934592<br>                                                                                                       |[0x800006aa]:c.subw a0, a1<br> [0x800006ac]:sd a0, 328(ra)<br>  |
|  43|[0x80004360]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                             |[0x800006c0]:c.subw a0, a1<br> [0x800006c2]:sd a0, 336(ra)<br>  |
|  44|[0x80004368]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                             |[0x800006d6]:c.subw a0, a1<br> [0x800006d8]:sd a0, 344(ra)<br>  |
|  45|[0x80004370]<br>0x0000000000000041|- rs2_val == -65<br> - rs1_val == 68719476736<br>                                                                                                        |[0x800006e8]:c.subw a0, a1<br> [0x800006ea]:sd a0, 352(ra)<br>  |
|  46|[0x80004378]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                            |[0x800006fe]:c.subw a0, a1<br> [0x80000700]:sd a0, 360(ra)<br>  |
|  47|[0x80004380]<br>0x0000000000000201|- rs2_val == -513<br> - rs1_val == 274877906944<br>                                                                                                      |[0x80000710]:c.subw a0, a1<br> [0x80000712]:sd a0, 368(ra)<br>  |
|  48|[0x80004388]<br>0x0000000000000000|- rs2_val == 4398046511104<br> - rs1_val == 549755813888<br>                                                                                             |[0x80000726]:c.subw a0, a1<br> [0x80000728]:sd a0, 376(ra)<br>  |
|  49|[0x80004390]<br>0xFFFFFFFFFFFFC000|- rs1_val == 1099511627776<br>                                                                                                                           |[0x80000738]:c.subw a0, a1<br> [0x8000073a]:sd a0, 384(ra)<br>  |
|  50|[0x80004398]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == 4398046511104<br>                                                                                                                           |[0x8000074a]:c.subw a0, a1<br> [0x8000074c]:sd a0, 392(ra)<br>  |
|  51|[0x800043a0]<br>0x0000000000000004|- rs1_val == 8796093022208<br>                                                                                                                           |[0x8000075c]:c.subw a0, a1<br> [0x8000075e]:sd a0, 400(ra)<br>  |
|  52|[0x800043a8]<br>0x0000000002000001|- rs2_val == -33554433<br> - rs1_val == 17592186044416<br>                                                                                               |[0x80000772]:c.subw a0, a1<br> [0x80000774]:sd a0, 408(ra)<br>  |
|  53|[0x800043b0]<br>0x0000000000000009|- rs2_val == -9<br> - rs1_val == 35184372088832<br>                                                                                                      |[0x80000784]:c.subw a0, a1<br> [0x80000786]:sd a0, 416(ra)<br>  |
|  54|[0x800043b8]<br>0x0000000000000000|- rs2_val == 8796093022208<br> - rs1_val == 70368744177664<br>                                                                                           |[0x8000079a]:c.subw a0, a1<br> [0x8000079c]:sd a0, 424(ra)<br>  |
|  55|[0x800043c0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                         |[0x800007b0]:c.subw a0, a1<br> [0x800007b2]:sd a0, 432(ra)<br>  |
|  56|[0x800043c8]<br>0xFFFFFFFFFFE00000|- rs1_val == 281474976710656<br>                                                                                                                         |[0x800007c2]:c.subw a0, a1<br> [0x800007c4]:sd a0, 440(ra)<br>  |
|  57|[0x800043d0]<br>0x0000000000000006|- rs1_val == 562949953421312<br>                                                                                                                         |[0x800007d4]:c.subw a0, a1<br> [0x800007d6]:sd a0, 448(ra)<br>  |
|  58|[0x800043d8]<br>0x0000000000000000|- rs2_val == 35184372088832<br> - rs1_val == 1125899906842624<br>                                                                                        |[0x800007ea]:c.subw a0, a1<br> [0x800007ec]:sd a0, 456(ra)<br>  |
|  59|[0x800043e0]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == 2<br> - rs1_val == 2251799813685248<br>                                                                                                     |[0x800007fc]:c.subw a0, a1<br> [0x800007fe]:sd a0, 464(ra)<br>  |
|  60|[0x800043e8]<br>0xFFFFFFFFFFFFF800|- rs2_val == 2048<br> - rs1_val == 4503599627370496<br>                                                                                                  |[0x80000812]:c.subw a0, a1<br> [0x80000814]:sd a0, 472(ra)<br>  |
|  61|[0x800043f0]<br>0x0000000000000401|- rs2_val == -1025<br> - rs1_val == 9007199254740992<br>                                                                                                 |[0x80000824]:c.subw a0, a1<br> [0x80000826]:sd a0, 480(ra)<br>  |
|  62|[0x800043f8]<br>0x0000000000000000|- rs2_val == 4294967296<br> - rs1_val == 18014398509481984<br>                                                                                           |[0x8000083a]:c.subw a0, a1<br> [0x8000083c]:sd a0, 488(ra)<br>  |
|  63|[0x80004400]<br>0xFFFFFFFFFFF80000|- rs2_val == 524288<br> - rs1_val == 36028797018963968<br>                                                                                               |[0x8000084c]:c.subw a0, a1<br> [0x8000084e]:sd a0, 496(ra)<br>  |
|  64|[0x80004408]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == 72057594037927936<br>                                                                                                                       |[0x8000085e]:c.subw a0, a1<br> [0x80000860]:sd a0, 504(ra)<br>  |
|  65|[0x80004410]<br>0xFFFFFFFFFE000000|- rs2_val == 33554432<br> - rs1_val == 144115188075855872<br>                                                                                            |[0x80000870]:c.subw a0, a1<br> [0x80000872]:sd a0, 512(ra)<br>  |
|  66|[0x80004418]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == 288230376151711744<br>                                                                                                                      |[0x80000882]:c.subw a0, a1<br> [0x80000884]:sd a0, 520(ra)<br>  |
|  67|[0x80004420]<br>0xFFFFFFFFFFFFFF80|- rs2_val == 128<br> - rs1_val == 576460752303423488<br>                                                                                                 |[0x80000894]:c.subw a0, a1<br> [0x80000896]:sd a0, 528(ra)<br>  |
|  68|[0x80004428]<br>0x0000000000000004|- rs1_val == 1152921504606846976<br>                                                                                                                     |[0x800008a6]:c.subw a0, a1<br> [0x800008a8]:sd a0, 536(ra)<br>  |
|  69|[0x80004430]<br>0x0000000000000011|- rs1_val == 2305843009213693952<br>                                                                                                                     |[0x800008b8]:c.subw a0, a1<br> [0x800008ba]:sd a0, 544(ra)<br>  |
|  70|[0x80004438]<br>0x0000000000000009|- rs1_val == 4611686018427387904<br>                                                                                                                     |[0x800008ca]:c.subw a0, a1<br> [0x800008cc]:sd a0, 552(ra)<br>  |
|  71|[0x80004440]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br> - rs1_val == -2<br>                                                                                                  |[0x800008e0]:c.subw a0, a1<br> [0x800008e2]:sd a0, 560(ra)<br>  |
|  72|[0x80004448]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == 17179869184<br> - rs1_val == -3<br>                                                                                                         |[0x800008f2]:c.subw a0, a1<br> [0x800008f4]:sd a0, 568(ra)<br>  |
|  73|[0x80004450]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -5<br>                                                                                                                                      |[0x80000904]:c.subw a0, a1<br> [0x80000906]:sd a0, 576(ra)<br>  |
|  74|[0x80004458]<br>0x0000000000000FF8|- rs2_val == -4097<br> - rs1_val == -9<br>                                                                                                               |[0x80000916]:c.subw a0, a1<br> [0x80000918]:sd a0, 584(ra)<br>  |
|  75|[0x80004460]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == 2251799813685248<br> - rs1_val == -65<br>                                                                                                   |[0x80000928]:c.subw a0, a1<br> [0x8000092a]:sd a0, 592(ra)<br>  |
|  76|[0x80004468]<br>0xFFFFFFFFFFFFFF80|- rs1_val == -129<br>                                                                                                                                    |[0x8000093e]:c.subw a0, a1<br> [0x80000940]:sd a0, 600(ra)<br>  |
|  77|[0x80004470]<br>0xFFFFFFFFFDFFFEFF|- rs1_val == -257<br>                                                                                                                                    |[0x8000094c]:c.subw a0, a1<br> [0x8000094e]:sd a0, 608(ra)<br>  |
|  78|[0x80004478]<br>0xFFFFFFFFF7FFFDFF|- rs2_val == 134217728<br> - rs1_val == -513<br>                                                                                                         |[0x8000095a]:c.subw a0, a1<br> [0x8000095c]:sd a0, 616(ra)<br>  |
|  79|[0x80004480]<br>0xFFFFFFFFFFFFFC00|- rs2_val == -8589934593<br> - rs1_val == -1025<br>                                                                                                      |[0x80000970]:c.subw a0, a1<br> [0x80000972]:sd a0, 624(ra)<br>  |
|  80|[0x80004488]<br>0xFFFFFFFFFFFFF804|- rs2_val == -5<br> - rs1_val == -2049<br>                                                                                                               |[0x80000982]:c.subw a0, a1<br> [0x80000984]:sd a0, 632(ra)<br>  |
|  81|[0x80004490]<br>0x0000000000000000|- rs2_val == -36028797018963969<br> - rs1_val == -4294967297<br>                                                                                         |[0x800009a0]:c.subw a0, a1<br> [0x800009a2]:sd a0, 640(ra)<br>  |
|  82|[0x80004498]<br>0xFFFFFFFFFFFFFFFC|- rs2_val == -72057594037927937<br>                                                                                                                      |[0x800009b6]:c.subw a0, a1<br> [0x800009b8]:sd a0, 648(ra)<br>  |
|  83|[0x800044a0]<br>0x0000000000000021|- rs2_val == -288230376151711745<br>                                                                                                                     |[0x800009cc]:c.subw a0, a1<br> [0x800009ce]:sd a0, 656(ra)<br>  |
|  84|[0x800044a8]<br>0x0000000000000001|- rs2_val == -576460752303423489<br>                                                                                                                     |[0x800009e6]:c.subw a0, a1<br> [0x800009e8]:sd a0, 664(ra)<br>  |
|  85|[0x800044b0]<br>0xFFFFFFFFFFC00000|- rs2_val == -1152921504606846977<br> - rs1_val == -4194305<br>                                                                                          |[0x80000a00]:c.subw a0, a1<br> [0x80000a02]:sd a0, 672(ra)<br>  |
|  86|[0x800044b8]<br>0x0000000000000000|- rs2_val == -2305843009213693953<br> - rs1_val == -288230376151711745<br>                                                                               |[0x80000a1e]:c.subw a0, a1<br> [0x80000a20]:sd a0, 680(ra)<br>  |
|  87|[0x800044c0]<br>0x0000000000000000|- rs2_val == -4611686018427387905<br> - rs1_val == -34359738369<br>                                                                                      |[0x80000a3c]:c.subw a0, a1<br> [0x80000a3e]:sd a0, 688(ra)<br>  |
|  88|[0x800044c8]<br>0xFFFFFFFFAAAAAA8A|- rs2_val == 6148914691236517205<br>                                                                                                                     |[0x80000a66]:c.subw a0, a1<br> [0x80000a68]:sd a0, 696(ra)<br>  |
|  89|[0x800044d0]<br>0x0000000055555155|- rs2_val == -6148914691236517206<br>                                                                                                                    |[0x80000a90]:c.subw a0, a1<br> [0x80000a92]:sd a0, 704(ra)<br>  |
|  90|[0x800044d8]<br>0xFFFFFFFFFFFFF040|- rs1_val == -4097<br>                                                                                                                                   |[0x80000aa2]:c.subw a0, a1<br> [0x80000aa4]:sd a0, 712(ra)<br>  |
|  91|[0x800044e0]<br>0xFFFFFFFFFFFFE007|- rs1_val == -8193<br>                                                                                                                                   |[0x80000ab4]:c.subw a0, a1<br> [0x80000ab6]:sd a0, 720(ra)<br>  |
|  92|[0x800044e8]<br>0x0000000007FFC000|- rs2_val == -134217729<br> - rs1_val == -16385<br>                                                                                                      |[0x80000aca]:c.subw a0, a1<br> [0x80000acc]:sd a0, 728(ra)<br>  |
|  93|[0x800044f0]<br>0xFFFFFFFFFFFF7F7F|- rs1_val == -32769<br>                                                                                                                                  |[0x80000adc]:c.subw a0, a1<br> [0x80000ade]:sd a0, 736(ra)<br>  |
|  94|[0x800044f8]<br>0x0000000000070000|- rs1_val == -65537<br>                                                                                                                                  |[0x80000af2]:c.subw a0, a1<br> [0x80000af4]:sd a0, 744(ra)<br>  |
|  95|[0x80004500]<br>0xFFFFFFFFFFFE0000|- rs1_val == -131073<br>                                                                                                                                 |[0x80000b0c]:c.subw a0, a1<br> [0x80000b0e]:sd a0, 752(ra)<br>  |
|  96|[0x80004508]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -262145<br>                                                                                                                                 |[0x80000b22]:c.subw a0, a1<br> [0x80000b24]:sd a0, 760(ra)<br>  |
|  97|[0x80004510]<br>0xFFFFFFFFFFF7FFFF|- rs1_val == -524289<br>                                                                                                                                 |[0x80000b38]:c.subw a0, a1<br> [0x80000b3a]:sd a0, 768(ra)<br>  |
|  98|[0x80004518]<br>0x000000003FF00000|- rs2_val == -1073741825<br> - rs1_val == -1048577<br>                                                                                                   |[0x80000b4e]:c.subw a0, a1<br> [0x80000b50]:sd a0, 776(ra)<br>  |
|  99|[0x80004520]<br>0xFFFFFFFFFFE00000|- rs1_val == -2097153<br>                                                                                                                                |[0x80000b68]:c.subw a0, a1<br> [0x80000b6a]:sd a0, 784(ra)<br>  |
| 100|[0x80004528]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                |[0x80000b7e]:c.subw a0, a1<br> [0x80000b80]:sd a0, 792(ra)<br>  |
| 101|[0x80004530]<br>0xFFFFFFFFFF000000|- rs2_val == -4503599627370497<br> - rs1_val == -16777217<br>                                                                                            |[0x80000b98]:c.subw a0, a1<br> [0x80000b9a]:sd a0, 800(ra)<br>  |
| 102|[0x80004538]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == 72057594037927936<br> - rs1_val == -33554433<br>                                                                                            |[0x80000bae]:c.subw a0, a1<br> [0x80000bb0]:sd a0, 808(ra)<br>  |
| 103|[0x80004540]<br>0xFFFFFFFFFC000000|- rs2_val == -549755813889<br> - rs1_val == -67108865<br>                                                                                                |[0x80000bc8]:c.subw a0, a1<br> [0x80000bca]:sd a0, 816(ra)<br>  |
| 104|[0x80004548]<br>0xFFFFFFFFFA000000|- rs1_val == -134217729<br>                                                                                                                              |[0x80000bde]:c.subw a0, a1<br> [0x80000be0]:sd a0, 824(ra)<br>  |
| 105|[0x80004550]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == 1152921504606846976<br> - rs1_val == -268435457<br>                                                                                         |[0x80000bf4]:c.subw a0, a1<br> [0x80000bf6]:sd a0, 832(ra)<br>  |
| 106|[0x80004558]<br>0xFFFFFFFFE0000040|- rs1_val == -536870913<br>                                                                                                                              |[0x80000c06]:c.subw a0, a1<br> [0x80000c08]:sd a0, 840(ra)<br>  |
| 107|[0x80004560]<br>0xFFFFFFFFBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                             |[0x80000c1c]:c.subw a0, a1<br> [0x80000c1e]:sd a0, 848(ra)<br>  |
| 108|[0x80004568]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -8589934593<br>                                                                                                                             |[0x80000c32]:c.subw a0, a1<br> [0x80000c34]:sd a0, 856(ra)<br>  |
| 109|[0x80004570]<br>0x0000000000000000|- rs1_val == -17179869185<br>                                                                                                                            |[0x80000c50]:c.subw a0, a1<br> [0x80000c52]:sd a0, 864(ra)<br>  |
| 110|[0x80004578]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 17592186044416<br> - rs1_val == -68719476737<br>                                                                                            |[0x80000c6a]:c.subw a0, a1<br> [0x80000c6c]:sd a0, 872(ra)<br>  |
| 111|[0x80004580]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -137438953473<br>                                                                                                                           |[0x80000c80]:c.subw a0, a1<br> [0x80000c82]:sd a0, 880(ra)<br>  |
| 112|[0x80004588]<br>0x0000000000000000|- rs1_val == -274877906945<br>                                                                                                                           |[0x80000c96]:c.subw a0, a1<br> [0x80000c98]:sd a0, 888(ra)<br>  |
| 113|[0x80004590]<br>0x0000000000000000|- rs1_val == -549755813889<br>                                                                                                                           |[0x80000cb4]:c.subw a0, a1<br> [0x80000cb6]:sd a0, 896(ra)<br>  |
| 114|[0x80004598]<br>0x0000000000000000|- rs1_val == -1099511627777<br>                                                                                                                          |[0x80000cd2]:c.subw a0, a1<br> [0x80000cd4]:sd a0, 904(ra)<br>  |
| 115|[0x800045a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 34359738368<br> - rs1_val == -2199023255553<br>                                                                                             |[0x80000cec]:c.subw a0, a1<br> [0x80000cee]:sd a0, 912(ra)<br>  |
| 116|[0x800045a8]<br>0x0000000000002000|- rs1_val == -4398046511105<br>                                                                                                                          |[0x80000d06]:c.subw a0, a1<br> [0x80000d08]:sd a0, 920(ra)<br>  |
| 117|[0x800045b0]<br>0x0000000000100000|- rs1_val == -8796093022209<br>                                                                                                                          |[0x80000d20]:c.subw a0, a1<br> [0x80000d22]:sd a0, 928(ra)<br>  |
| 118|[0x800045b8]<br>0x0000000000004000|- rs2_val == -16385<br> - rs1_val == -17592186044417<br>                                                                                                 |[0x80000d3a]:c.subw a0, a1<br> [0x80000d3c]:sd a0, 936(ra)<br>  |
| 119|[0x800045c0]<br>0x0000000040000000|- rs1_val == -70368744177665<br>                                                                                                                         |[0x80000d54]:c.subw a0, a1<br> [0x80000d56]:sd a0, 944(ra)<br>  |
| 120|[0x800045c8]<br>0xFFFFFFFFFFFFFFF6|- rs1_val == -140737488355329<br>                                                                                                                        |[0x80000d6a]:c.subw a0, a1<br> [0x80000d6c]:sd a0, 952(ra)<br>  |
| 121|[0x800045d0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 288230376151711744<br> - rs1_val == -281474976710657<br>                                                                                    |[0x80000d84]:c.subw a0, a1<br> [0x80000d86]:sd a0, 960(ra)<br>  |
| 122|[0x800045d8]<br>0x0000000000000000|- rs1_val == -562949953421313<br>                                                                                                                        |[0x80000da2]:c.subw a0, a1<br> [0x80000da4]:sd a0, 968(ra)<br>  |
| 123|[0x800045e0]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                       |[0x80000db8]:c.subw a0, a1<br> [0x80000dba]:sd a0, 976(ra)<br>  |
| 124|[0x800045e8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 2305843009213693952<br> - rs1_val == -2251799813685249<br>                                                                                  |[0x80000dd2]:c.subw a0, a1<br> [0x80000dd4]:sd a0, 984(ra)<br>  |
| 125|[0x800045f0]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -4503599627370497<br>                                                                                                                       |[0x80000de8]:c.subw a0, a1<br> [0x80000dea]:sd a0, 992(ra)<br>  |
| 126|[0x800045f8]<br>0x0000000000000000|- rs2_val == -70368744177665<br> - rs1_val == -9007199254740993<br>                                                                                      |[0x80000e06]:c.subw a0, a1<br> [0x80000e08]:sd a0, 1000(ra)<br> |
| 127|[0x80004600]<br>0xFFFFFFFFFBFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                      |[0x80000e1c]:c.subw a0, a1<br> [0x80000e1e]:sd a0, 1008(ra)<br> |
| 128|[0x80004608]<br>0x0000000000000040|- rs1_val == -36028797018963969<br>                                                                                                                      |[0x80000e32]:c.subw a0, a1<br> [0x80000e34]:sd a0, 1016(ra)<br> |
| 129|[0x80004610]<br>0x0000000000000000|- rs1_val == -72057594037927937<br>                                                                                                                      |[0x80000e50]:c.subw a0, a1<br> [0x80000e52]:sd a0, 1024(ra)<br> |
| 130|[0x80004618]<br>0x0000000000000000|- rs2_val == -9007199254740993<br> - rs1_val == -144115188075855873<br>                                                                                  |[0x80000e6e]:c.subw a0, a1<br> [0x80000e70]:sd a0, 1032(ra)<br> |
| 131|[0x80004620]<br>0x0000000000000000|- rs1_val == -576460752303423489<br>                                                                                                                     |[0x80000e8c]:c.subw a0, a1<br> [0x80000e8e]:sd a0, 1040(ra)<br> |
| 132|[0x80004628]<br>0x0000000000020000|- rs2_val == -131073<br> - rs1_val == -1152921504606846977<br>                                                                                           |[0x80000ea6]:c.subw a0, a1<br> [0x80000ea8]:sd a0, 1048(ra)<br> |
| 133|[0x80004630]<br>0x0000000000000000|- rs1_val == -2305843009213693953<br>                                                                                                                    |[0x80000ec4]:c.subw a0, a1<br> [0x80000ec6]:sd a0, 1056(ra)<br> |
| 134|[0x80004638]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                    |[0x80000ede]:c.subw a0, a1<br> [0x80000ee0]:sd a0, 1064(ra)<br> |
| 135|[0x80004640]<br>0x0000000051555555|- rs1_val == 6148914691236517205<br>                                                                                                                     |[0x80000f08]:c.subw a0, a1<br> [0x80000f0a]:sd a0, 1072(ra)<br> |
| 136|[0x80004648]<br>0xFFFFFFFFAAAAAAAB|- rs1_val == -6148914691236517206<br>                                                                                                                    |[0x80000f3a]:c.subw a0, a1<br> [0x80000f3c]:sd a0, 1080(ra)<br> |
| 137|[0x80004650]<br>0xFFFFFFFFFFFFFFFC|- rs2_val == 4<br>                                                                                                                                       |[0x80000f4c]:c.subw a0, a1<br> [0x80000f4e]:sd a0, 1088(ra)<br> |
| 138|[0x80004658]<br>0xFFFFFFFFFFFFFFC2|- rs2_val == 64<br>                                                                                                                                      |[0x80000f5a]:c.subw a0, a1<br> [0x80000f5c]:sd a0, 1096(ra)<br> |
| 139|[0x80004660]<br>0x000000000FFFFF00|- rs2_val == 256<br>                                                                                                                                     |[0x80000f68]:c.subw a0, a1<br> [0x80000f6a]:sd a0, 1104(ra)<br> |
| 140|[0x80004668]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == 512<br>                                                                                                                                     |[0x80000f7e]:c.subw a0, a1<br> [0x80000f80]:sd a0, 1112(ra)<br> |
| 141|[0x80004670]<br>0xFFFFFFFFFFFFF000|- rs2_val == 4096<br>                                                                                                                                    |[0x80000f90]:c.subw a0, a1<br> [0x80000f92]:sd a0, 1120(ra)<br> |
| 142|[0x80004678]<br>0xFFFFFFFFFFFFDFFC|- rs2_val == 8192<br>                                                                                                                                    |[0x80000f9e]:c.subw a0, a1<br> [0x80000fa0]:sd a0, 1128(ra)<br> |
| 143|[0x80004680]<br>0xFFFFFFFFFFFF0000|- rs2_val == 65536<br>                                                                                                                                   |[0x80000fb0]:c.subw a0, a1<br> [0x80000fb2]:sd a0, 1136(ra)<br> |
| 144|[0x80004688]<br>0xFFFFFFFFFFFF0000|- rs2_val == 131072<br>                                                                                                                                  |[0x80000fbe]:c.subw a0, a1<br> [0x80000fc0]:sd a0, 1144(ra)<br> |
| 145|[0x80004690]<br>0xFFFFFFFFFFFC0000|- rs2_val == 262144<br>                                                                                                                                  |[0x80000fd0]:c.subw a0, a1<br> [0x80000fd2]:sd a0, 1152(ra)<br> |
| 146|[0x80004698]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == 1048576<br>                                                                                                                                 |[0x80000fe6]:c.subw a0, a1<br> [0x80000fe8]:sd a0, 1160(ra)<br> |
| 147|[0x800046a0]<br>0xFFFFFFFFFFD00000|- rs2_val == 4194304<br>                                                                                                                                 |[0x80000ff4]:c.subw a0, a1<br> [0x80000ff6]:sd a0, 1168(ra)<br> |
| 148|[0x800046a8]<br>0xFFFFFFFFFF7FFFFB|- rs2_val == 8388608<br>                                                                                                                                 |[0x80001002]:c.subw a0, a1<br> [0x80001004]:sd a0, 1176(ra)<br> |
| 149|[0x800046b0]<br>0xFFFFFFFFDEFFFFFF|- rs2_val == 16777216<br>                                                                                                                                |[0x80001014]:c.subw a0, a1<br> [0x80001016]:sd a0, 1184(ra)<br> |
| 150|[0x800046b8]<br>0xFFFFFFFFE0400000|- rs2_val == 536870912<br>                                                                                                                               |[0x80001022]:c.subw a0, a1<br> [0x80001024]:sd a0, 1192(ra)<br> |
| 151|[0x800046c0]<br>0xFFFFFFFFBFFFFF7F|- rs2_val == 1073741824<br>                                                                                                                              |[0x80001030]:c.subw a0, a1<br> [0x80001032]:sd a0, 1200(ra)<br> |
| 152|[0x800046c8]<br>0xFFFFFFFF80000000|- rs2_val == 2147483648<br>                                                                                                                              |[0x80001046]:c.subw a0, a1<br> [0x80001048]:sd a0, 1208(ra)<br> |
| 153|[0x800046d0]<br>0x000000007FFFFFFF|- rs2_val == 68719476736<br>                                                                                                                             |[0x80001060]:c.subw a0, a1<br> [0x80001062]:sd a0, 1216(ra)<br> |
| 154|[0x800046d8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 137438953472<br>                                                                                                                            |[0x8000107a]:c.subw a0, a1<br> [0x8000107c]:sd a0, 1224(ra)<br> |
| 155|[0x800046e0]<br>0x000000007FFFFFFF|- rs2_val == 274877906944<br>                                                                                                                            |[0x80001094]:c.subw a0, a1<br> [0x80001096]:sd a0, 1232(ra)<br> |
| 156|[0x800046e8]<br>0x0000000000000000|- rs2_val == 549755813888<br>                                                                                                                            |[0x800010aa]:c.subw a0, a1<br> [0x800010ac]:sd a0, 1240(ra)<br> |
| 157|[0x800046f0]<br>0x0000000002000000|- rs2_val == 18014398509481984<br>                                                                                                                       |[0x800010bc]:c.subw a0, a1<br> [0x800010be]:sd a0, 1248(ra)<br> |
| 158|[0x800046f8]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == 144115188075855872<br>                                                                                                                      |[0x800010d2]:c.subw a0, a1<br> [0x800010d4]:sd a0, 1256(ra)<br> |
| 159|[0x80004700]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 576460752303423488<br>                                                                                                                      |[0x800010ec]:c.subw a0, a1<br> [0x800010ee]:sd a0, 1264(ra)<br> |
| 160|[0x80004708]<br>0x0000000000000002|- rs2_val == -2<br>                                                                                                                                      |[0x800010fe]:c.subw a0, a1<br> [0x80001100]:sd a0, 1272(ra)<br> |
| 161|[0x80004710]<br>0x0000000000000018|- rs2_val == -33<br>                                                                                                                                     |[0x8000110c]:c.subw a0, a1<br> [0x8000110e]:sd a0, 1280(ra)<br> |
| 162|[0x80004718]<br>0x0000000000004081|- rs2_val == -129<br>                                                                                                                                    |[0x8000111a]:c.subw a0, a1<br> [0x8000111c]:sd a0, 1288(ra)<br> |
| 163|[0x80004720]<br>0xFFFFFFFFFFFFF900|- rs2_val == -257<br>                                                                                                                                    |[0x8000112c]:c.subw a0, a1<br> [0x8000112e]:sd a0, 1296(ra)<br> |
| 164|[0x80004728]<br>0x0000000000008000|- rs2_val == -32769<br>                                                                                                                                  |[0x80001146]:c.subw a0, a1<br> [0x80001148]:sd a0, 1304(ra)<br> |
| 165|[0x80004730]<br>0x000000000000FE00|- rs2_val == -65537<br>                                                                                                                                  |[0x80001158]:c.subw a0, a1<br> [0x8000115a]:sd a0, 1312(ra)<br> |
| 166|[0x80004738]<br>0x0000000000060001|- rs2_val == -262145<br>                                                                                                                                 |[0x8000116a]:c.subw a0, a1<br> [0x8000116c]:sd a0, 1320(ra)<br> |
| 167|[0x80004740]<br>0x0000000000200001|- rs2_val == -2097153<br>                                                                                                                                |[0x80001180]:c.subw a0, a1<br> [0x80001182]:sd a0, 1328(ra)<br> |
| 168|[0x80004748]<br>0x0000000000400001|- rs2_val == -4194305<br>                                                                                                                                |[0x80001196]:c.subw a0, a1<br> [0x80001198]:sd a0, 1336(ra)<br> |
| 169|[0x80004750]<br>0x0000000000FF8000|- rs2_val == -16777217<br>                                                                                                                               |[0x800011ac]:c.subw a0, a1<br> [0x800011ae]:sd a0, 1344(ra)<br> |
| 170|[0x80004758]<br>0x0000000004000001|- rs2_val == -67108865<br>                                                                                                                               |[0x800011c2]:c.subw a0, a1<br> [0x800011c4]:sd a0, 1352(ra)<br> |
| 171|[0x80004760]<br>0x000000000FF00000|- rs2_val == -268435457<br>                                                                                                                              |[0x800011d8]:c.subw a0, a1<br> [0x800011da]:sd a0, 1360(ra)<br> |
| 172|[0x80004768]<br>0x0000000020000041|- rs2_val == -536870913<br>                                                                                                                              |[0x800011ea]:c.subw a0, a1<br> [0x800011ec]:sd a0, 1368(ra)<br> |
| 173|[0x80004770]<br>0x000000007F800000|- rs2_val == -2147483649<br>                                                                                                                             |[0x80001204]:c.subw a0, a1<br> [0x80001206]:sd a0, 1376(ra)<br> |
| 174|[0x80004778]<br>0x0000000000002001|- rs2_val == -17179869185<br>                                                                                                                            |[0x8000121a]:c.subw a0, a1<br> [0x8000121c]:sd a0, 1384(ra)<br> |
| 175|[0x80004780]<br>0x0000000000000001|- rs2_val == -34359738369<br>                                                                                                                            |[0x80001234]:c.subw a0, a1<br> [0x80001236]:sd a0, 1392(ra)<br> |
| 176|[0x80004788]<br>0x0000000000008001|- rs2_val == -68719476737<br>                                                                                                                            |[0x8000124a]:c.subw a0, a1<br> [0x8000124c]:sd a0, 1400(ra)<br> |
| 177|[0x80004790]<br>0x0000000000000001|- rs2_val == -137438953473<br>                                                                                                                           |[0x80001264]:c.subw a0, a1<br> [0x80001266]:sd a0, 1408(ra)<br> |
| 178|[0x80004798]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == 1099511627776<br>                                                                                                                           |[0x8000127a]:c.subw a0, a1<br> [0x8000127c]:sd a0, 1416(ra)<br> |
| 179|[0x800047a0]<br>0xFFFFFFFFFFFFFFE0|- rs2_val == -1099511627777<br>                                                                                                                          |[0x80001290]:c.subw a0, a1<br> [0x80001292]:sd a0, 1424(ra)<br> |
| 180|[0x800047a8]<br>0x0000000000000020|- rs2_val == 1125899906842624<br>                                                                                                                        |[0x800012a2]:c.subw a0, a1<br> [0x800012a4]:sd a0, 1432(ra)<br> |
| 181|[0x800047b0]<br>0x0000000000000000|- rs2_val == -4398046511105<br>                                                                                                                          |[0x800012c0]:c.subw a0, a1<br> [0x800012c2]:sd a0, 1440(ra)<br> |
| 182|[0x800047b8]<br>0x0000000000000001|- rs2_val == -17592186044417<br>                                                                                                                         |[0x800012da]:c.subw a0, a1<br> [0x800012dc]:sd a0, 1448(ra)<br> |
| 183|[0x800047c0]<br>0x0000000000020001|- rs2_val == -140737488355329<br>                                                                                                                        |[0x800012f0]:c.subw a0, a1<br> [0x800012f2]:sd a0, 1456(ra)<br> |
| 184|[0x800047c8]<br>0x0000000000000000|- rs2_val == 281474976710656<br>                                                                                                                         |[0x80001306]:c.subw a0, a1<br> [0x80001308]:sd a0, 1464(ra)<br> |
| 185|[0x800047d0]<br>0x0000000000040000|- rs2_val == 562949953421312<br>                                                                                                                         |[0x80001318]:c.subw a0, a1<br> [0x8000131a]:sd a0, 1472(ra)<br> |
| 186|[0x800047d8]<br>0x0000000000004001|- rs2_val == -1125899906842625<br>                                                                                                                       |[0x8000132e]:c.subw a0, a1<br> [0x80001330]:sd a0, 1480(ra)<br> |
| 187|[0x800047e0]<br>0x0000000000000000|- rs2_val == -2251799813685249<br>                                                                                                                       |[0x8000134c]:c.subw a0, a1<br> [0x8000134e]:sd a0, 1488(ra)<br> |
