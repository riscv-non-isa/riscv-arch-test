
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001420')]      |
| SIG_REGION                | [('0x80004204', '0x80004810', '193 dwords')]      |
| COV_LABELS                | cor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cor-01.S/cor-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 192      |
| STAT1                     | 192      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|            signature             |                                                                       coverpoints                                                                       |                             code                             |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80004210]<br>0x0000040000400000|- opcode : c.or<br> - rs1 : x10<br> - rs2 : x11<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 4398046511104<br> - rs1_val == 4194304<br>           |[0x800003a4]:c.or a0, a1<br> [0x800003a6]:sd a0, 0(ra)<br>    |
|   2|[0x80004218]<br>0x0000002000000000|- rs1 : x15<br> - rs2 : x15<br> - rs1 == rs2<br> - rs2_val == 137438953472<br> - rs1_val == 137438953472<br>                                             |[0x800003ba]:c.or a5, a5<br> [0x800003bc]:sd a5, 8(ra)<br>    |
|   3|[0x80004220]<br>0xFFFDFFFFFFFFFFFF|- rs1 : x9<br> - rs2 : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val < 0<br> - rs2_val == -562949953421313<br> - rs1_val == -9223372036854775808<br> |[0x800003d4]:c.or s1, a3<br> [0x800003d6]:sd s1, 16(ra)<br>   |
|   4|[0x80004228]<br>0xFFFFFFFFFFFBFFFF|- rs1 : x14<br> - rs2 : x8<br> - rs1_val == 0<br> - rs2_val == -262145<br>                                                                               |[0x800003e6]:c.or a4, s0<br> [0x800003e8]:sd a4, 24(ra)<br>   |
|   5|[0x80004230]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x12<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -281474976710657<br> - rs1_val == 9223372036854775807<br>                  |[0x80000404]:c.or a3, a2<br> [0x80000406]:sd a3, 32(ra)<br>   |
|   6|[0x80004238]<br>0x0000008000000001|- rs1 : x11<br> - rs2 : x9<br> - rs1_val == 1<br> - rs2_val == 549755813888<br>                                                                          |[0x80000416]:c.or a1, s1<br> [0x80000418]:sd a1, 40(ra)<br>   |
|   7|[0x80004240]<br>0x8000000000000007|- rs1 : x12<br> - rs2 : x10<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br>                                                    |[0x80000428]:c.or a2, a0<br> [0x8000042a]:sd a2, 48(ra)<br>   |
|   8|[0x80004248]<br>0x0000000000000005|- rs1 : x8<br> - rs2 : x14<br> - rs2_val == 0<br>                                                                                                        |[0x80000436]:c.or s0, a4<br> [0x80000438]:sd fp, 56(ra)<br>   |
|   9|[0x80004250]<br>0x7FFFFFFFFFFFFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 32<br>                                                                |[0x8000044c]:c.or a0, a1<br> [0x8000044e]:sd a0, 64(ra)<br>   |
|  10|[0x80004258]<br>0x0000200000000001|- rs2_val == 1<br> - rs1_val == 35184372088832<br>                                                                                                       |[0x8000045e]:c.or a0, a1<br> [0x80000460]:sd a0, 72(ra)<br>   |
|  11|[0x80004260]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == -257<br> - rs1_val == 2<br>                                                                                                                 |[0x8000046c]:c.or a0, a1<br> [0x8000046e]:sd a0, 80(ra)<br>   |
|  12|[0x80004268]<br>0xFFFFFFDFFFFFFFFF|- rs2_val == -137438953473<br> - rs1_val == 4<br>                                                                                                        |[0x80000482]:c.or a0, a1<br> [0x80000484]:sd a0, 88(ra)<br>   |
|  13|[0x80004270]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == -65<br> - rs1_val == 8<br>                                                                                                                  |[0x80000490]:c.or a0, a1<br> [0x80000492]:sd a0, 96(ra)<br>   |
|  14|[0x80004278]<br>0xFEFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br> - rs1_val == 16<br>                                                                                                  |[0x800004a6]:c.or a0, a1<br> [0x800004a8]:sd a0, 104(ra)<br>  |
|  15|[0x80004280]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 64<br>                                                                                                                                      |[0x800004b4]:c.or a0, a1<br> [0x800004b6]:sd a0, 112(ra)<br>  |
|  16|[0x80004288]<br>0xFFFBFFFFFFFFFFFF|- rs2_val == -1125899906842625<br> - rs1_val == 128<br>                                                                                                  |[0x800004ca]:c.or a0, a1<br> [0x800004cc]:sd a0, 120(ra)<br>  |
|  17|[0x80004290]<br>0xFFFFF7FFFFFFFFFF|- rs2_val == -8796093022209<br> - rs1_val == 256<br>                                                                                                     |[0x800004e0]:c.or a0, a1<br> [0x800004e2]:sd a0, 128(ra)<br>  |
|  18|[0x80004298]<br>0x0000000000000202|- rs2_val == 2<br> - rs1_val == 512<br>                                                                                                                  |[0x800004ee]:c.or a0, a1<br> [0x800004f0]:sd a0, 136(ra)<br>  |
|  19|[0x800042a0]<br>0x0000800000000400|- rs2_val == 140737488355328<br> - rs1_val == 1024<br>                                                                                                   |[0x80000500]:c.or a0, a1<br> [0x80000502]:sd a0, 144(ra)<br>  |
|  20|[0x800042a8]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == -2147483649<br> - rs1_val == 2048<br>                                                                                                       |[0x8000051a]:c.or a0, a1<br> [0x8000051c]:sd a0, 152(ra)<br>  |
|  21|[0x800042b0]<br>0x0002000000001000|- rs2_val == 562949953421312<br> - rs1_val == 4096<br>                                                                                                   |[0x8000052c]:c.or a0, a1<br> [0x8000052e]:sd a0, 160(ra)<br>  |
|  22|[0x800042b8]<br>0x0200000000002000|- rs2_val == 144115188075855872<br> - rs1_val == 8192<br>                                                                                                |[0x8000053e]:c.or a0, a1<br> [0x80000540]:sd a0, 168(ra)<br>  |
|  23|[0x800042c0]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == -8388609<br> - rs1_val == 16384<br>                                                                                                         |[0x80000550]:c.or a0, a1<br> [0x80000552]:sd a0, 176(ra)<br>  |
|  24|[0x800042c8]<br>0x0000100000008000|- rs2_val == 17592186044416<br> - rs1_val == 32768<br>                                                                                                   |[0x80000562]:c.or a0, a1<br> [0x80000564]:sd a0, 184(ra)<br>  |
|  25|[0x800042d0]<br>0x0000000000010020|- rs2_val == 32<br> - rs1_val == 65536<br>                                                                                                               |[0x80000570]:c.or a0, a1<br> [0x80000572]:sd a0, 192(ra)<br>  |
|  26|[0x800042d8]<br>0x4000000000020000|- rs2_val == 4611686018427387904<br> - rs1_val == 131072<br>                                                                                             |[0x80000582]:c.or a0, a1<br> [0x80000584]:sd a0, 200(ra)<br>  |
|  27|[0x800042e0]<br>0x0000000000042000|- rs2_val == 8192<br> - rs1_val == 262144<br>                                                                                                            |[0x80000590]:c.or a0, a1<br> [0x80000592]:sd a0, 208(ra)<br>  |
|  28|[0x800042e8]<br>0x0010000000080000|- rs2_val == 4503599627370496<br> - rs1_val == 524288<br>                                                                                                |[0x800005a2]:c.or a0, a1<br> [0x800005a4]:sd a0, 216(ra)<br>  |
|  29|[0x800042f0]<br>0x0100000000100000|- rs2_val == 72057594037927936<br> - rs1_val == 1048576<br>                                                                                              |[0x800005b4]:c.or a0, a1<br> [0x800005b6]:sd a0, 224(ra)<br>  |
|  30|[0x800042f8]<br>0x0000000002200000|- rs2_val == 33554432<br> - rs1_val == 2097152<br>                                                                                                       |[0x800005c2]:c.or a0, a1<br> [0x800005c4]:sd a0, 232(ra)<br>  |
|  31|[0x80004300]<br>0x0000000000808000|- rs2_val == 32768<br> - rs1_val == 8388608<br>                                                                                                          |[0x800005d0]:c.or a0, a1<br> [0x800005d2]:sd a0, 240(ra)<br>  |
|  32|[0x80004308]<br>0x0000000001008000|- rs1_val == 16777216<br>                                                                                                                                |[0x800005de]:c.or a0, a1<br> [0x800005e0]:sd a0, 248(ra)<br>  |
|  33|[0x80004310]<br>0x0400000002000000|- rs2_val == 288230376151711744<br> - rs1_val == 33554432<br>                                                                                            |[0x800005f0]:c.or a0, a1<br> [0x800005f2]:sd a0, 256(ra)<br>  |
|  34|[0x80004318]<br>0x0000000204000000|- rs2_val == 8589934592<br> - rs1_val == 67108864<br>                                                                                                    |[0x80000602]:c.or a0, a1<br> [0x80000604]:sd a0, 264(ra)<br>  |
|  35|[0x80004320]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == -17592186044417<br> - rs1_val == 134217728<br>                                                                                              |[0x80000618]:c.or a0, a1<br> [0x8000061a]:sd a0, 272(ra)<br>  |
|  36|[0x80004328]<br>0x0000000810000000|- rs2_val == 34359738368<br> - rs1_val == 268435456<br>                                                                                                  |[0x8000062a]:c.or a0, a1<br> [0x8000062c]:sd a0, 280(ra)<br>  |
|  37|[0x80004330]<br>0x0004000020000000|- rs2_val == 1125899906842624<br> - rs1_val == 536870912<br>                                                                                             |[0x8000063c]:c.or a0, a1<br> [0x8000063e]:sd a0, 288(ra)<br>  |
|  38|[0x80004338]<br>0x0000000040000010|- rs2_val == 16<br> - rs1_val == 1073741824<br>                                                                                                          |[0x8000064a]:c.or a0, a1<br> [0x8000064c]:sd a0, 296(ra)<br>  |
|  39|[0x80004340]<br>0x55555555D5555555|- rs2_val == 6148914691236517205<br> - rs1_val == 2147483648<br>                                                                                         |[0x80000678]:c.or a0, a1<br> [0x8000067a]:sd a0, 304(ra)<br>  |
|  40|[0x80004348]<br>0xFFFFFDFFFFFFFFFF|- rs2_val == -2199023255553<br> - rs1_val == 4294967296<br>                                                                                              |[0x80000692]:c.or a0, a1<br> [0x80000694]:sd a0, 312(ra)<br>  |
|  41|[0x80004350]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == -1025<br> - rs1_val == 8589934592<br>                                                                                                       |[0x800006a4]:c.or a0, a1<br> [0x800006a6]:sd a0, 320(ra)<br>  |
|  42|[0x80004358]<br>0xFFFFFFFFFFFFFFF9|- rs1_val == 17179869184<br>                                                                                                                             |[0x800006b6]:c.or a0, a1<br> [0x800006b8]:sd a0, 328(ra)<br>  |
|  43|[0x80004360]<br>0x2000000800000000|- rs2_val == 2305843009213693952<br> - rs1_val == 34359738368<br>                                                                                        |[0x800006cc]:c.or a0, a1<br> [0x800006ce]:sd a0, 336(ra)<br>  |
|  44|[0x80004368]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == 68719476736<br>                                                                                                                             |[0x800006e2]:c.or a0, a1<br> [0x800006e4]:sd a0, 344(ra)<br>  |
|  45|[0x80004370]<br>0xFFFFEFFFFFFFFFFF|- rs1_val == 274877906944<br>                                                                                                                            |[0x800006fc]:c.or a0, a1<br> [0x800006fe]:sd a0, 352(ra)<br>  |
|  46|[0x80004378]<br>0x0000008000000040|- rs2_val == 64<br> - rs1_val == 549755813888<br>                                                                                                        |[0x8000070e]:c.or a0, a1<br> [0x80000710]:sd a0, 360(ra)<br>  |
|  47|[0x80004380]<br>0x0000010100000000|- rs2_val == 4294967296<br> - rs1_val == 1099511627776<br>                                                                                               |[0x80000724]:c.or a0, a1<br> [0x80000726]:sd a0, 368(ra)<br>  |
|  48|[0x80004388]<br>0x0000020000000003|- rs1_val == 2199023255552<br>                                                                                                                           |[0x80000736]:c.or a0, a1<br> [0x80000738]:sd a0, 376(ra)<br>  |
|  49|[0x80004390]<br>0x5555555555555555|- rs1_val == 4398046511104<br>                                                                                                                           |[0x80000764]:c.or a0, a1<br> [0x80000766]:sd a0, 384(ra)<br>  |
|  50|[0x80004398]<br>0xFFFFFFFDFFFFFFFF|- rs2_val == -8589934593<br> - rs1_val == 8796093022208<br>                                                                                              |[0x8000077e]:c.or a0, a1<br> [0x80000780]:sd a0, 392(ra)<br>  |
|  51|[0x800043a0]<br>0x0000100000008000|- rs1_val == 17592186044416<br>                                                                                                                          |[0x80000790]:c.or a0, a1<br> [0x80000792]:sd a0, 400(ra)<br>  |
|  52|[0x800043a8]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == 70368744177664<br>                                                                                                                          |[0x800007a2]:c.or a0, a1<br> [0x800007a4]:sd a0, 408(ra)<br>  |
|  53|[0x800043b0]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 140737488355328<br>                                                                                                                         |[0x800007b4]:c.or a0, a1<br> [0x800007b6]:sd a0, 416(ra)<br>  |
|  54|[0x800043b8]<br>0xFFFFFFBFFFFFFFFF|- rs2_val == -274877906945<br> - rs1_val == 281474976710656<br>                                                                                          |[0x800007ce]:c.or a0, a1<br> [0x800007d0]:sd a0, 424(ra)<br>  |
|  55|[0x800043c0]<br>0x0002002000000000|- rs1_val == 562949953421312<br>                                                                                                                         |[0x800007e4]:c.or a0, a1<br> [0x800007e6]:sd a0, 432(ra)<br>  |
|  56|[0x800043c8]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == -34359738369<br> - rs1_val == 1125899906842624<br>                                                                                          |[0x800007fe]:c.or a0, a1<br> [0x80000800]:sd a0, 440(ra)<br>  |
|  57|[0x800043d0]<br>0x0008000000000008|- rs2_val == 8<br> - rs1_val == 2251799813685248<br>                                                                                                     |[0x80000810]:c.or a0, a1<br> [0x80000812]:sd a0, 448(ra)<br>  |
|  58|[0x800043d8]<br>0xFEFFFFFFFFFFFFFF|- rs1_val == 4503599627370496<br>                                                                                                                        |[0x8000082a]:c.or a0, a1<br> [0x8000082c]:sd a0, 456(ra)<br>  |
|  59|[0x800043e0]<br>0xFFFFFFFFFFBFFFFF|- rs2_val == -4194305<br> - rs1_val == 9007199254740992<br>                                                                                              |[0x80000840]:c.or a0, a1<br> [0x80000842]:sd a0, 464(ra)<br>  |
|  60|[0x800043e8]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == -134217729<br> - rs1_val == 18014398509481984<br>                                                                                           |[0x80000856]:c.or a0, a1<br> [0x80000858]:sd a0, 472(ra)<br>  |
|  61|[0x800043f0]<br>0xFFFF7FFFFFFFFFFF|- rs2_val == -140737488355329<br> - rs1_val == 36028797018963968<br>                                                                                     |[0x80000870]:c.or a0, a1<br> [0x80000872]:sd a0, 480(ra)<br>  |
|  62|[0x800043f8]<br>0xFFF7FFFFFFFFFFFF|- rs2_val == -2251799813685249<br> - rs1_val == 72057594037927936<br>                                                                                    |[0x8000088a]:c.or a0, a1<br> [0x8000088c]:sd a0, 488(ra)<br>  |
|  63|[0x80004400]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == -16777217<br> - rs1_val == 144115188075855872<br>                                                                                           |[0x800008a0]:c.or a0, a1<br> [0x800008a2]:sd a0, 496(ra)<br>  |
|  64|[0x80004408]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == 288230376151711744<br>                                                                                                                      |[0x800008ba]:c.or a0, a1<br> [0x800008bc]:sd a0, 504(ra)<br>  |
|  65|[0x80004410]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == 576460752303423488<br>                                                                                                                      |[0x800008d0]:c.or a0, a1<br> [0x800008d2]:sd a0, 512(ra)<br>  |
|  66|[0x80004418]<br>0xFFFFFFFBFFFFFFFF|- rs2_val == -17179869185<br> - rs1_val == 1152921504606846976<br>                                                                                       |[0x800008ea]:c.or a0, a1<br> [0x800008ec]:sd a0, 520(ra)<br>  |
|  67|[0x80004420]<br>0x2004000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                     |[0x80000900]:c.or a0, a1<br> [0x80000902]:sd a0, 528(ra)<br>  |
|  68|[0x80004428]<br>0x4000000200000000|- rs1_val == 4611686018427387904<br>                                                                                                                     |[0x80000916]:c.or a0, a1<br> [0x80000918]:sd a0, 536(ra)<br>  |
|  69|[0x80004430]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == 4096<br> - rs1_val == -2<br>                                                                                                                |[0x80000924]:c.or a0, a1<br> [0x80000926]:sd a0, 544(ra)<br>  |
|  70|[0x80004438]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -3<br>                                                                                                                                      |[0x80000936]:c.or a0, a1<br> [0x80000938]:sd a0, 552(ra)<br>  |
|  71|[0x80004440]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -5<br>                                                                                                                                      |[0x80000944]:c.or a0, a1<br> [0x80000946]:sd a0, 560(ra)<br>  |
|  72|[0x80004448]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -9<br>                                                                                                                                      |[0x80000952]:c.or a0, a1<br> [0x80000954]:sd a0, 568(ra)<br>  |
|  73|[0x80004450]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == 281474976710656<br> - rs1_val == -17<br>                                                                                                    |[0x80000964]:c.or a0, a1<br> [0x80000966]:sd a0, 576(ra)<br>  |
|  74|[0x80004458]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == -33<br>                                                                                                                                     |[0x80000972]:c.or a0, a1<br> [0x80000974]:sd a0, 584(ra)<br>  |
|  75|[0x80004460]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                     |[0x8000099c]:c.or a0, a1<br> [0x8000099e]:sd a0, 592(ra)<br>  |
|  76|[0x80004468]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == 1099511627776<br> - rs1_val == -129<br>                                                                                                     |[0x800009ae]:c.or a0, a1<br> [0x800009b0]:sd a0, 600(ra)<br>  |
|  77|[0x80004470]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -257<br>                                                                                                                                    |[0x800009bc]:c.or a0, a1<br> [0x800009be]:sd a0, 608(ra)<br>  |
|  78|[0x80004478]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == 9007199254740992<br> - rs1_val == -513<br>                                                                                                  |[0x800009ce]:c.or a0, a1<br> [0x800009d0]:sd a0, 616(ra)<br>  |
|  79|[0x80004480]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                                                                   |[0x800009dc]:c.or a0, a1<br> [0x800009de]:sd a0, 624(ra)<br>  |
|  80|[0x80004488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                   |[0x800009f6]:c.or a0, a1<br> [0x800009f8]:sd a0, 632(ra)<br>  |
|  81|[0x80004490]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br> - rs1_val == -4097<br>                                                                                               |[0x80000a10]:c.or a0, a1<br> [0x80000a12]:sd a0, 640(ra)<br>  |
|  82|[0x80004498]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -36028797018963969<br> - rs1_val == -4503599627370497<br>                                                                                   |[0x80000a2e]:c.or a0, a1<br> [0x80000a30]:sd a0, 648(ra)<br>  |
|  83|[0x800044a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -144115188075855873<br> - rs1_val == -67108865<br>                                                                                          |[0x80000a48]:c.or a0, a1<br> [0x80000a4a]:sd a0, 656(ra)<br>  |
|  84|[0x800044a8]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == -288230376151711745<br>                                                                                                                     |[0x80000a5e]:c.or a0, a1<br> [0x80000a60]:sd a0, 664(ra)<br>  |
|  85|[0x800044b0]<br>0xF7FFFFFFFFFFFFFF|- rs2_val == -576460752303423489<br>                                                                                                                     |[0x80000a74]:c.or a0, a1<br> [0x80000a76]:sd a0, 672(ra)<br>  |
|  86|[0x800044b8]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                                    |[0x80000a8e]:c.or a0, a1<br> [0x80000a90]:sd a0, 680(ra)<br>  |
|  87|[0x800044c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br> - rs1_val == -32769<br>                                                                                            |[0x80000aa8]:c.or a0, a1<br> [0x80000aaa]:sd a0, 688(ra)<br>  |
|  88|[0x800044c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4611686018427387905<br> - rs1_val == -4294967297<br>                                                                                       |[0x80000ac6]:c.or a0, a1<br> [0x80000ac8]:sd a0, 696(ra)<br>  |
|  89|[0x800044d0]<br>0xAAABAAAAAAAAAAAA|- rs2_val == -6148914691236517206<br>                                                                                                                    |[0x80000af4]:c.or a0, a1<br> [0x80000af6]:sd a0, 704(ra)<br>  |
|  90|[0x800044d8]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == 524288<br> - rs1_val == -8193<br>                                                                                                           |[0x80000b06]:c.or a0, a1<br> [0x80000b08]:sd a0, 712(ra)<br>  |
|  91|[0x800044e0]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                  |[0x80000b1c]:c.or a0, a1<br> [0x80000b1e]:sd a0, 720(ra)<br>  |
|  92|[0x800044e8]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -65537<br>                                                                                                                                  |[0x80000b2e]:c.or a0, a1<br> [0x80000b30]:sd a0, 728(ra)<br>  |
|  93|[0x800044f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -5<br> - rs1_val == -131073<br>                                                                                                             |[0x80000b40]:c.or a0, a1<br> [0x80000b42]:sd a0, 736(ra)<br>  |
|  94|[0x800044f8]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == 4194304<br> - rs1_val == -262145<br>                                                                                                        |[0x80000b52]:c.or a0, a1<br> [0x80000b54]:sd a0, 744(ra)<br>  |
|  95|[0x80004500]<br>0xFFFFFFFFFFF7FFFF|- rs1_val == -524289<br>                                                                                                                                 |[0x80000b64]:c.or a0, a1<br> [0x80000b66]:sd a0, 752(ra)<br>  |
|  96|[0x80004508]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -1048577<br>                                                                                                                                |[0x80000b7a]:c.or a0, a1<br> [0x80000b7c]:sd a0, 760(ra)<br>  |
|  97|[0x80004510]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -2097153<br>                                                                                                                                |[0x80000b8c]:c.or a0, a1<br> [0x80000b8e]:sd a0, 768(ra)<br>  |
|  98|[0x80004518]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                                |[0x80000ba2]:c.or a0, a1<br> [0x80000ba4]:sd a0, 776(ra)<br>  |
|  99|[0x80004520]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                |[0x80000bb4]:c.or a0, a1<br> [0x80000bb6]:sd a0, 784(ra)<br>  |
| 100|[0x80004528]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                               |[0x80000bc6]:c.or a0, a1<br> [0x80000bc8]:sd a0, 792(ra)<br>  |
| 101|[0x80004530]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                               |[0x80000bdc]:c.or a0, a1<br> [0x80000bde]:sd a0, 800(ra)<br>  |
| 102|[0x80004538]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == 36028797018963968<br> - rs1_val == -134217729<br>                                                                                           |[0x80000bf2]:c.or a0, a1<br> [0x80000bf4]:sd a0, 808(ra)<br>  |
| 103|[0x80004540]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == 2097152<br> - rs1_val == -268435457<br>                                                                                                     |[0x80000c04]:c.or a0, a1<br> [0x80000c06]:sd a0, 816(ra)<br>  |
| 104|[0x80004548]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                              |[0x80000c16]:c.or a0, a1<br> [0x80000c18]:sd a0, 824(ra)<br>  |
| 105|[0x80004550]<br>0xFFFFFFFFBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                             |[0x80000c2c]:c.or a0, a1<br> [0x80000c2e]:sd a0, 832(ra)<br>  |
| 106|[0x80004558]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == -2147483649<br>                                                                                                                             |[0x80000c42]:c.or a0, a1<br> [0x80000c44]:sd a0, 840(ra)<br>  |
| 107|[0x80004560]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                             |[0x80000c5c]:c.or a0, a1<br> [0x80000c5e]:sd a0, 848(ra)<br>  |
| 108|[0x80004568]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -65537<br> - rs1_val == -17179869185<br>                                                                                                    |[0x80000c76]:c.or a0, a1<br> [0x80000c78]:sd a0, 856(ra)<br>  |
| 109|[0x80004570]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                            |[0x80000c94]:c.or a0, a1<br> [0x80000c96]:sd a0, 864(ra)<br>  |
| 110|[0x80004578]<br>0xFFFFFFEFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                            |[0x80000cae]:c.or a0, a1<br> [0x80000cb0]:sd a0, 872(ra)<br>  |
| 111|[0x80004580]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -33554433<br> - rs1_val == -137438953473<br>                                                                                                |[0x80000cc8]:c.or a0, a1<br> [0x80000cca]:sd a0, 880(ra)<br>  |
| 112|[0x80004588]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                           |[0x80000ce6]:c.or a0, a1<br> [0x80000ce8]:sd a0, 888(ra)<br>  |
| 113|[0x80004590]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                           |[0x80000d04]:c.or a0, a1<br> [0x80000d06]:sd a0, 896(ra)<br>  |
| 114|[0x80004598]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                          |[0x80000d22]:c.or a0, a1<br> [0x80000d24]:sd a0, 904(ra)<br>  |
| 115|[0x800045a0]<br>0xFFFFFDFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                          |[0x80000d3c]:c.or a0, a1<br> [0x80000d3e]:sd a0, 912(ra)<br>  |
| 116|[0x800045a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                          |[0x80000d52]:c.or a0, a1<br> [0x80000d54]:sd a0, 920(ra)<br>  |
| 117|[0x800045b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                          |[0x80000d6c]:c.or a0, a1<br> [0x80000d6e]:sd a0, 928(ra)<br>  |
| 118|[0x800045b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                         |[0x80000d86]:c.or a0, a1<br> [0x80000d88]:sd a0, 936(ra)<br>  |
| 119|[0x800045c0]<br>0xFFFFDFFFFFFFFFFF|- rs2_val == 4<br> - rs1_val == -35184372088833<br>                                                                                                      |[0x80000d9c]:c.or a0, a1<br> [0x80000d9e]:sd a0, 944(ra)<br>  |
| 120|[0x800045c8]<br>0xFFFFBFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                         |[0x80000db6]:c.or a0, a1<br> [0x80000db8]:sd a0, 952(ra)<br>  |
| 121|[0x800045d0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -16385<br> - rs1_val == -140737488355329<br>                                                                                                |[0x80000dd0]:c.or a0, a1<br> [0x80000dd2]:sd a0, 960(ra)<br>  |
| 122|[0x800045d8]<br>0xFFFEFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                        |[0x80000de6]:c.or a0, a1<br> [0x80000de8]:sd a0, 968(ra)<br>  |
| 123|[0x800045e0]<br>0xFFFDFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                        |[0x80000dfc]:c.or a0, a1<br> [0x80000dfe]:sd a0, 976(ra)<br>  |
| 124|[0x800045e8]<br>0xFFFBFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                       |[0x80000e12]:c.or a0, a1<br> [0x80000e14]:sd a0, 984(ra)<br>  |
| 125|[0x800045f0]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                       |[0x80000e2c]:c.or a0, a1<br> [0x80000e2e]:sd a0, 992(ra)<br>  |
| 126|[0x800045f8]<br>0xFFDFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                       |[0x80000e42]:c.or a0, a1<br> [0x80000e44]:sd a0, 1000(ra)<br> |
| 127|[0x80004600]<br>0xFFBFFFFFFFFFFFFF|- rs2_val == 16384<br> - rs1_val == -18014398509481985<br>                                                                                               |[0x80000e58]:c.or a0, a1<br> [0x80000e5a]:sd a0, 1008(ra)<br> |
| 128|[0x80004608]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == 17179869184<br> - rs1_val == -36028797018963969<br>                                                                                         |[0x80000e72]:c.or a0, a1<br> [0x80000e74]:sd a0, 1016(ra)<br> |
| 129|[0x80004610]<br>0xFEFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                      |[0x80000e8c]:c.or a0, a1<br> [0x80000e8e]:sd a0, 1024(ra)<br> |
| 130|[0x80004618]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                     |[0x80000eaa]:c.or a0, a1<br> [0x80000eac]:sd a0, 1032(ra)<br> |
| 131|[0x80004620]<br>0xFBFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                     |[0x80000ec4]:c.or a0, a1<br> [0x80000ec6]:sd a0, 1040(ra)<br> |
| 132|[0x80004628]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                     |[0x80000ee2]:c.or a0, a1<br> [0x80000ee4]:sd a0, 1048(ra)<br> |
| 133|[0x80004630]<br>0xEFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                    |[0x80000efc]:c.or a0, a1<br> [0x80000efe]:sd a0, 1056(ra)<br> |
| 134|[0x80004638]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                    |[0x80000f1a]:c.or a0, a1<br> [0x80000f1c]:sd a0, 1064(ra)<br> |
| 135|[0x80004640]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                    |[0x80000f34]:c.or a0, a1<br> [0x80000f36]:sd a0, 1072(ra)<br> |
| 136|[0x80004648]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 6148914691236517205<br>                                                                                                                     |[0x80000f62]:c.or a0, a1<br> [0x80000f64]:sd a0, 1080(ra)<br> |
| 137|[0x80004650]<br>0xAAAAAAAAAAAABAAA|- rs1_val == -6148914691236517206<br>                                                                                                                    |[0x80000f8c]:c.or a0, a1<br> [0x80000f8e]:sd a0, 1088(ra)<br> |
| 138|[0x80004658]<br>0x0000000000000180|- rs2_val == 128<br>                                                                                                                                     |[0x80000f9a]:c.or a0, a1<br> [0x80000f9c]:sd a0, 1096(ra)<br> |
| 139|[0x80004660]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == 256<br>                                                                                                                                     |[0x80000fac]:c.or a0, a1<br> [0x80000fae]:sd a0, 1104(ra)<br> |
| 140|[0x80004668]<br>0xFFF7FFFFFFFFFFFF|- rs2_val == 512<br>                                                                                                                                     |[0x80000fc2]:c.or a0, a1<br> [0x80000fc4]:sd a0, 1112(ra)<br> |
| 141|[0x80004670]<br>0x0010000000000400|- rs2_val == 1024<br>                                                                                                                                    |[0x80000fd4]:c.or a0, a1<br> [0x80000fd6]:sd a0, 1120(ra)<br> |
| 142|[0x80004678]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == 2048<br>                                                                                                                                    |[0x80000fea]:c.or a0, a1<br> [0x80000fec]:sd a0, 1128(ra)<br> |
| 143|[0x80004680]<br>0x0200000000010000|- rs2_val == 65536<br>                                                                                                                                   |[0x80000ffc]:c.or a0, a1<br> [0x80000ffe]:sd a0, 1136(ra)<br> |
| 144|[0x80004688]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == 131072<br>                                                                                                                                  |[0x8000100a]:c.or a0, a1<br> [0x8000100c]:sd a0, 1144(ra)<br> |
| 145|[0x80004690]<br>0xFFFEFFFFFFFFFFFF|- rs2_val == 262144<br>                                                                                                                                  |[0x80001020]:c.or a0, a1<br> [0x80001022]:sd a0, 1152(ra)<br> |
| 146|[0x80004698]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == 1048576<br>                                                                                                                                 |[0x8000102e]:c.or a0, a1<br> [0x80001030]:sd a0, 1160(ra)<br> |
| 147|[0x800046a0]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == 8388608<br>                                                                                                                                 |[0x80001044]:c.or a0, a1<br> [0x80001046]:sd a0, 1168(ra)<br> |
| 148|[0x800046a8]<br>0xFFFFFFFDFFFFFFFF|- rs2_val == 16777216<br>                                                                                                                                |[0x8000105a]:c.or a0, a1<br> [0x8000105c]:sd a0, 1176(ra)<br> |
| 149|[0x800046b0]<br>0x0002000004000000|- rs2_val == 67108864<br>                                                                                                                                |[0x8000106c]:c.or a0, a1<br> [0x8000106e]:sd a0, 1184(ra)<br> |
| 150|[0x800046b8]<br>0x0000000008000002|- rs2_val == 134217728<br>                                                                                                                               |[0x8000107a]:c.or a0, a1<br> [0x8000107c]:sd a0, 1192(ra)<br> |
| 151|[0x800046c0]<br>0x0000000018000000|- rs2_val == 268435456<br>                                                                                                                               |[0x80001088]:c.or a0, a1<br> [0x8000108a]:sd a0, 1200(ra)<br> |
| 152|[0x800046c8]<br>0xFFFFFFFFFFFFFFF9|- rs2_val == 536870912<br>                                                                                                                               |[0x80001096]:c.or a0, a1<br> [0x80001098]:sd a0, 1208(ra)<br> |
| 153|[0x800046d0]<br>0xFFFFFFFBFFFFFFFF|- rs2_val == 1073741824<br>                                                                                                                              |[0x800010ac]:c.or a0, a1<br> [0x800010ae]:sd a0, 1216(ra)<br> |
| 154|[0x800046d8]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == 2147483648<br>                                                                                                                              |[0x800010c6]:c.or a0, a1<br> [0x800010c8]:sd a0, 1224(ra)<br> |
| 155|[0x800046e0]<br>0x0000201000000000|- rs2_val == 68719476736<br>                                                                                                                             |[0x800010dc]:c.or a0, a1<br> [0x800010de]:sd a0, 1232(ra)<br> |
| 156|[0x800046e8]<br>0x0100004000000000|- rs2_val == 274877906944<br>                                                                                                                            |[0x800010f2]:c.or a0, a1<br> [0x800010f4]:sd a0, 1240(ra)<br> |
| 157|[0x800046f0]<br>0xFFFFFFFFFFFFFFDF|- rs2_val == 2199023255552<br>                                                                                                                           |[0x80001104]:c.or a0, a1<br> [0x80001106]:sd a0, 1248(ra)<br> |
| 158|[0x800046f8]<br>0x0000080000000080|- rs2_val == 8796093022208<br>                                                                                                                           |[0x80001116]:c.or a0, a1<br> [0x80001118]:sd a0, 1256(ra)<br> |
| 159|[0x80004700]<br>0x0000200004000000|- rs2_val == 35184372088832<br>                                                                                                                          |[0x80001128]:c.or a0, a1<br> [0x8000112a]:sd a0, 1264(ra)<br> |
| 160|[0x80004708]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == 70368744177664<br>                                                                                                                          |[0x80001142]:c.or a0, a1<br> [0x80001144]:sd a0, 1272(ra)<br> |
| 161|[0x80004710]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == 18014398509481984<br>                                                                                                                       |[0x8000115c]:c.or a0, a1<br> [0x8000115e]:sd a0, 1280(ra)<br> |
| 162|[0x80004718]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == 576460752303423488<br>                                                                                                                      |[0x80001172]:c.or a0, a1<br> [0x80001174]:sd a0, 1288(ra)<br> |
| 163|[0x80004720]<br>0x1000000010000000|- rs2_val == 1152921504606846976<br>                                                                                                                     |[0x80001184]:c.or a0, a1<br> [0x80001186]:sd a0, 1296(ra)<br> |
| 164|[0x80004728]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2<br>                                                                                                                                      |[0x80001196]:c.or a0, a1<br> [0x80001198]:sd a0, 1304(ra)<br> |
| 165|[0x80004730]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -3<br>                                                                                                                                      |[0x800011a8]:c.or a0, a1<br> [0x800011aa]:sd a0, 1312(ra)<br> |
| 166|[0x80004738]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == -9<br>                                                                                                                                      |[0x800011b6]:c.or a0, a1<br> [0x800011b8]:sd a0, 1320(ra)<br> |
| 167|[0x80004740]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == -17<br>                                                                                                                                     |[0x800011c8]:c.or a0, a1<br> [0x800011ca]:sd a0, 1328(ra)<br> |
| 168|[0x80004748]<br>0xFFFFFFFFFFFFFFDF|- rs2_val == -33<br>                                                                                                                                     |[0x800011d6]:c.or a0, a1<br> [0x800011d8]:sd a0, 1336(ra)<br> |
| 169|[0x80004750]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == -129<br>                                                                                                                                    |[0x800011e4]:c.or a0, a1<br> [0x800011e6]:sd a0, 1344(ra)<br> |
| 170|[0x80004758]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -513<br>                                                                                                                                    |[0x800011fa]:c.or a0, a1<br> [0x800011fc]:sd a0, 1352(ra)<br> |
| 171|[0x80004760]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2049<br>                                                                                                                                   |[0x80001210]:c.or a0, a1<br> [0x80001212]:sd a0, 1360(ra)<br> |
| 172|[0x80004768]<br>0xFFFFFFFFFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                   |[0x80001226]:c.or a0, a1<br> [0x80001228]:sd a0, 1368(ra)<br> |
| 173|[0x80004770]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                   |[0x8000123c]:c.or a0, a1<br> [0x8000123e]:sd a0, 1376(ra)<br> |
| 174|[0x80004778]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == -32769<br>                                                                                                                                  |[0x8000124e]:c.or a0, a1<br> [0x80001250]:sd a0, 1384(ra)<br> |
| 175|[0x80004780]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == -524289<br>                                                                                                                                 |[0x80001264]:c.or a0, a1<br> [0x80001266]:sd a0, 1392(ra)<br> |
| 176|[0x80004788]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                                |[0x8000127a]:c.or a0, a1<br> [0x8000127c]:sd a0, 1400(ra)<br> |
| 177|[0x80004790]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -9007199254740993<br>                                                                                                                       |[0x80001290]:c.or a0, a1<br> [0x80001292]:sd a0, 1408(ra)<br> |
| 178|[0x80004798]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                               |[0x800012be]:c.or a0, a1<br> [0x800012c0]:sd a0, 1416(ra)<br> |
| 179|[0x800047a0]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                              |[0x800012d4]:c.or a0, a1<br> [0x800012d6]:sd a0, 1424(ra)<br> |
| 180|[0x800047a8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -536870913<br>                                                                                                                              |[0x800012ee]:c.or a0, a1<br> [0x800012f0]:sd a0, 1432(ra)<br> |
| 181|[0x800047b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                             |[0x80001308]:c.or a0, a1<br> [0x8000130a]:sd a0, 1440(ra)<br> |
| 182|[0x800047b8]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == -4294967297<br>                                                                                                                             |[0x80001322]:c.or a0, a1<br> [0x80001324]:sd a0, 1448(ra)<br> |
| 183|[0x800047c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -68719476737<br>                                                                                                                            |[0x80001340]:c.or a0, a1<br> [0x80001342]:sd a0, 1456(ra)<br> |
| 184|[0x800047c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -549755813889<br>                                                                                                                           |[0x8000135e]:c.or a0, a1<br> [0x80001360]:sd a0, 1464(ra)<br> |
| 185|[0x800047d0]<br>0xFFFFFEFFFFFFFFFF|- rs2_val == -1099511627777<br>                                                                                                                          |[0x80001374]:c.or a0, a1<br> [0x80001376]:sd a0, 1472(ra)<br> |
| 186|[0x800047d8]<br>0xFFFFFBFFFFFFFFFF|- rs2_val == -4398046511105<br>                                                                                                                          |[0x8000138a]:c.or a0, a1<br> [0x8000138c]:sd a0, 1480(ra)<br> |
| 187|[0x800047e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -35184372088833<br>                                                                                                                         |[0x800013a8]:c.or a0, a1<br> [0x800013aa]:sd a0, 1488(ra)<br> |
| 188|[0x800047e8]<br>0xFFFFBFFFFFFFFFFF|- rs2_val == -70368744177665<br>                                                                                                                         |[0x800013c2]:c.or a0, a1<br> [0x800013c4]:sd a0, 1496(ra)<br> |
| 189|[0x800047f0]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == 2251799813685248<br>                                                                                                                        |[0x800013d8]:c.or a0, a1<br> [0x800013da]:sd a0, 1504(ra)<br> |
| 190|[0x800047f8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4503599627370497<br>                                                                                                                       |[0x800013ee]:c.or a0, a1<br> [0x800013f0]:sd a0, 1512(ra)<br> |
| 191|[0x80004800]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2097153<br>                                                                                                                                |[0x80001400]:c.or a0, a1<br> [0x80001402]:sd a0, 1520(ra)<br> |
| 192|[0x80004808]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == -131073<br>                                                                                                                                 |[0x80001416]:c.or a0, a1<br> [0x80001418]:sd a0, 1528(ra)<br> |
