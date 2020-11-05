
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800012f0')]      |
| SIG_REGION                | [('0x80004204', '0x800047b8', '182 dwords')]      |
| COV_LABELS                | caddw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddw-01.S/caddw-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 181      |
| STAT1                     | 180      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001172]:c.addw a0, a1
      [0x80001174]:sd a0, 1320(ra)
 -- Signature Address: 0x80004738 Data: 0xFFFFFFFFFBFFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : c.addw
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -67108865
      - rs1_val == -281474976710657






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

|s.no|            signature             |                                                                  coverpoints                                                                  |                              code                              |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80004210]<br>0xFFFFFFFFF7FFFFFE|- opcode : c.addw<br> - rs1 : x14<br> - rs2 : x14<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -67108865<br> - rs1_val == -67108865<br> |[0x800003a8]:c.addw a4, a4<br> [0x800003aa]:sd a4, 0(ra)<br>    |
|   2|[0x80004218]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x9<br> - rs2 : x15<br> - rs1 != rs2<br> - rs2_val == -17179869185<br> - rs1_val == 9007199254740992<br>                                |[0x800003c2]:c.addw s1, a5<br> [0x800003c4]:sd s1, 8(ra)<br>    |
|   3|[0x80004220]<br>0x0000000000001000|- rs1 : x13<br> - rs2 : x8<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val > 0<br> - rs2_val == 4096<br> - rs1_val == -9223372036854775808<br>   |[0x800003d4]:c.addw a3, s0<br> [0x800003d6]:sd a3, 16(ra)<br>   |
|   4|[0x80004228]<br>0xFFFFFFFFBFFFFFFF|- rs1 : x15<br> - rs2 : x12<br> - rs1_val == 0<br> - rs2_val == -1073741825<br>                                                                |[0x800003e6]:c.addw a5, a2<br> [0x800003e8]:sd a5, 24(ra)<br>   |
|   5|[0x80004230]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x12<br> - rs2 : x9<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -2199023255553<br> - rs1_val == 9223372036854775807<br>           |[0x80000404]:c.addw a2, s1<br> [0x80000406]:sd a2, 32(ra)<br>   |
|   6|[0x80004238]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x11<br> - rs2_val == (2**(xlen-1)-1)<br> - rs1_val == 1<br> - rs2_val == 9223372036854775807<br>                        |[0x8000041a]:c.addw s0, a1<br> [0x8000041c]:sd fp, 40(ra)<br>   |
|   7|[0x80004240]<br>0xFFFFFFFFFFFFFFF6|- rs1 : x10<br> - rs2 : x13<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br>                                          |[0x8000042c]:c.addw a0, a3<br> [0x8000042e]:sd a0, 48(ra)<br>   |
|   8|[0x80004248]<br>0xFFFFFFFFFFFDFFFF|- rs1 : x11<br> - rs2 : x10<br> - rs2_val == 0<br> - rs1_val == -131073<br>                                                                    |[0x8000043e]:c.addw a1, a0<br> [0x80000440]:sd a1, 56(ra)<br>   |
|   9|[0x80004250]<br>0x0000000000001001|- rs2_val == 1<br> - rs1_val == 4096<br>                                                                                                       |[0x8000044c]:c.addw a0, a1<br> [0x8000044e]:sd a0, 64(ra)<br>   |
|  10|[0x80004258]<br>0x0000000000008002|- rs2_val == 32768<br> - rs1_val == 2<br>                                                                                                      |[0x8000045a]:c.addw a0, a1<br> [0x8000045c]:sd a0, 72(ra)<br>   |
|  11|[0x80004260]<br>0x0000000004000004|- rs2_val == 67108864<br> - rs1_val == 4<br>                                                                                                   |[0x80000468]:c.addw a0, a1<br> [0x8000046a]:sd a0, 80(ra)<br>   |
|  12|[0x80004268]<br>0x0000000000000008|- rs2_val == 1152921504606846976<br> - rs1_val == 8<br>                                                                                        |[0x8000047a]:c.addw a0, a1<br> [0x8000047c]:sd a0, 88(ra)<br>   |
|  13|[0x80004270]<br>0x0000000001000010|- rs2_val == 16777216<br> - rs1_val == 16<br>                                                                                                  |[0x80000488]:c.addw a0, a1<br> [0x8000048a]:sd a0, 96(ra)<br>   |
|  14|[0x80004278]<br>0x0000000000000017|- rs2_val == -9<br> - rs1_val == 32<br>                                                                                                        |[0x80000496]:c.addw a0, a1<br> [0x80000498]:sd a0, 104(ra)<br>  |
|  15|[0x80004280]<br>0x0000000008000040|- rs2_val == 134217728<br> - rs1_val == 64<br>                                                                                                 |[0x800004a4]:c.addw a0, a1<br> [0x800004a6]:sd a0, 112(ra)<br>  |
|  16|[0x80004288]<br>0x000000000000007A|- rs1_val == 128<br>                                                                                                                           |[0x800004b2]:c.addw a0, a1<br> [0x800004b4]:sd a0, 120(ra)<br>  |
|  17|[0x80004290]<br>0xFFFFFFFFFFFFC0FF|- rs2_val == -16385<br> - rs1_val == 256<br>                                                                                                   |[0x800004c4]:c.addw a0, a1<br> [0x800004c6]:sd a0, 128(ra)<br>  |
|  18|[0x80004298]<br>0x0000000000000200|- rs2_val == 137438953472<br> - rs1_val == 512<br>                                                                                             |[0x800004d6]:c.addw a0, a1<br> [0x800004d8]:sd a0, 136(ra)<br>  |
|  19|[0x800042a0]<br>0x0000000000000400|- rs2_val == 4503599627370496<br> - rs1_val == 1024<br>                                                                                        |[0x800004e8]:c.addw a0, a1<br> [0x800004ea]:sd a0, 144(ra)<br>  |
|  20|[0x800042a8]<br>0xFFFFFFFFF80007FF|- rs2_val == -134217729<br> - rs1_val == 2048<br>                                                                                              |[0x800004fe]:c.addw a0, a1<br> [0x80000500]:sd a0, 152(ra)<br>  |
|  21|[0x800042b0]<br>0x0000000000001EFF|- rs2_val == -257<br> - rs1_val == 8192<br>                                                                                                    |[0x8000050c]:c.addw a0, a1<br> [0x8000050e]:sd a0, 160(ra)<br>  |
|  22|[0x800042b8]<br>0x0000000000003FFF|- rs2_val == -2305843009213693953<br> - rs1_val == 16384<br>                                                                                   |[0x80000522]:c.addw a0, a1<br> [0x80000524]:sd a0, 168(ra)<br>  |
|  23|[0x800042c0]<br>0x0000000000008000|- rs1_val == 32768<br>                                                                                                                         |[0x80000534]:c.addw a0, a1<br> [0x80000536]:sd a0, 176(ra)<br>  |
|  24|[0x800042c8]<br>0x0000000000030000|- rs2_val == 131072<br> - rs1_val == 65536<br>                                                                                                 |[0x80000542]:c.addw a0, a1<br> [0x80000544]:sd a0, 184(ra)<br>  |
|  25|[0x800042d0]<br>0x0000000000020005|- rs1_val == 131072<br>                                                                                                                        |[0x80000550]:c.addw a0, a1<br> [0x80000552]:sd a0, 192(ra)<br>  |
|  26|[0x800042d8]<br>0x000000000003FF7F|- rs2_val == -129<br> - rs1_val == 262144<br>                                                                                                  |[0x8000055e]:c.addw a0, a1<br> [0x80000560]:sd a0, 200(ra)<br>  |
|  27|[0x800042e0]<br>0x0000000002080000|- rs2_val == 33554432<br> - rs1_val == 524288<br>                                                                                              |[0x8000056c]:c.addw a0, a1<br> [0x8000056e]:sd a0, 208(ra)<br>  |
|  28|[0x800042e8]<br>0x0000000000100000|- rs2_val == 70368744177664<br> - rs1_val == 1048576<br>                                                                                       |[0x8000057e]:c.addw a0, a1<br> [0x80000580]:sd a0, 216(ra)<br>  |
|  29|[0x800042f0]<br>0x00000000001FFF7F|- rs1_val == 2097152<br>                                                                                                                       |[0x8000058c]:c.addw a0, a1<br> [0x8000058e]:sd a0, 224(ra)<br>  |
|  30|[0x800042f8]<br>0x0000000000400000|- rs2_val == 72057594037927936<br> - rs1_val == 4194304<br>                                                                                    |[0x8000059e]:c.addw a0, a1<br> [0x800005a0]:sd a0, 232(ra)<br>  |
|  31|[0x80004300]<br>0x0000000000800000|- rs2_val == 35184372088832<br> - rs1_val == 8388608<br>                                                                                       |[0x800005b0]:c.addw a0, a1<br> [0x800005b2]:sd a0, 240(ra)<br>  |
|  32|[0x80004308]<br>0x0000000000FFFDFF|- rs2_val == -513<br> - rs1_val == 16777216<br>                                                                                                |[0x800005be]:c.addw a0, a1<br> [0x800005c0]:sd a0, 248(ra)<br>  |
|  33|[0x80004310]<br>0x0000000002000020|- rs2_val == 32<br> - rs1_val == 33554432<br>                                                                                                  |[0x800005cc]:c.addw a0, a1<br> [0x800005ce]:sd a0, 256(ra)<br>  |
|  34|[0x80004318]<br>0x0000000003FFFFFF|- rs2_val == -35184372088833<br> - rs1_val == 67108864<br>                                                                                     |[0x800005e2]:c.addw a0, a1<br> [0x800005e4]:sd a0, 264(ra)<br>  |
|  35|[0x80004320]<br>0x0000000008000000|- rs1_val == 134217728<br>                                                                                                                     |[0x800005f4]:c.addw a0, a1<br> [0x800005f6]:sd a0, 272(ra)<br>  |
|  36|[0x80004328]<br>0x0000000010100000|- rs2_val == 1048576<br> - rs1_val == 268435456<br>                                                                                            |[0x80000602]:c.addw a0, a1<br> [0x80000604]:sd a0, 280(ra)<br>  |
|  37|[0x80004330]<br>0x0000000020000080|- rs2_val == 128<br> - rs1_val == 536870912<br>                                                                                                |[0x80000610]:c.addw a0, a1<br> [0x80000612]:sd a0, 288(ra)<br>  |
|  38|[0x80004338]<br>0x000000003DFFFFFF|- rs2_val == -33554433<br> - rs1_val == 1073741824<br>                                                                                         |[0x80000622]:c.addw a0, a1<br> [0x80000624]:sd a0, 296(ra)<br>  |
|  39|[0x80004340]<br>0xFFFFFFFF80000000|- rs2_val == 2199023255552<br> - rs1_val == 2147483648<br>                                                                                     |[0x80000638]:c.addw a0, a1<br> [0x8000063a]:sd a0, 304(ra)<br>  |
|  40|[0x80004348]<br>0x0000000000000000|- rs2_val == 549755813888<br> - rs1_val == 4294967296<br>                                                                                      |[0x8000064e]:c.addw a0, a1<br> [0x80000650]:sd a0, 312(ra)<br>  |
|  41|[0x80004350]<br>0x0000000001000000|- rs1_val == 8589934592<br>                                                                                                                    |[0x80000660]:c.addw a0, a1<br> [0x80000662]:sd a0, 320(ra)<br>  |
|  42|[0x80004358]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4503599627370497<br> - rs1_val == 17179869184<br>                                                                                |[0x8000067a]:c.addw a0, a1<br> [0x8000067c]:sd a0, 328(ra)<br>  |
|  43|[0x80004360]<br>0x0000000000000009|- rs1_val == 34359738368<br>                                                                                                                   |[0x8000068c]:c.addw a0, a1<br> [0x8000068e]:sd a0, 336(ra)<br>  |
|  44|[0x80004368]<br>0x0000000000000004|- rs2_val == 4<br> - rs1_val == 68719476736<br>                                                                                                |[0x8000069e]:c.addw a0, a1<br> [0x800006a0]:sd a0, 344(ra)<br>  |
|  45|[0x80004370]<br>0x0000000000000001|- rs1_val == 137438953472<br>                                                                                                                  |[0x800006b0]:c.addw a0, a1<br> [0x800006b2]:sd a0, 352(ra)<br>  |
|  46|[0x80004378]<br>0x0000000000000000|- rs2_val == 140737488355328<br> - rs1_val == 274877906944<br>                                                                                 |[0x800006c6]:c.addw a0, a1<br> [0x800006c8]:sd a0, 360(ra)<br>  |
|  47|[0x80004380]<br>0x0000000000200000|- rs2_val == 2097152<br> - rs1_val == 549755813888<br>                                                                                         |[0x800006d8]:c.addw a0, a1<br> [0x800006da]:sd a0, 368(ra)<br>  |
|  48|[0x80004388]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == 1099511627776<br>                                                                                                                 |[0x800006ea]:c.addw a0, a1<br> [0x800006ec]:sd a0, 376(ra)<br>  |
|  49|[0x80004390]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                 |[0x80000700]:c.addw a0, a1<br> [0x80000702]:sd a0, 384(ra)<br>  |
|  50|[0x80004398]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -70368744177665<br> - rs1_val == 4398046511104<br>                                                                                |[0x8000071a]:c.addw a0, a1<br> [0x8000071c]:sd a0, 392(ra)<br>  |
|  51|[0x800043a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -562949953421313<br> - rs1_val == 8796093022208<br>                                                                               |[0x80000734]:c.addw a0, a1<br> [0x80000736]:sd a0, 400(ra)<br>  |
|  52|[0x800043a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 17592186044416<br>                                                                                                                |[0x80000746]:c.addw a0, a1<br> [0x80000748]:sd a0, 408(ra)<br>  |
|  53|[0x800043b0]<br>0x0000000000000007|- rs1_val == 35184372088832<br>                                                                                                                |[0x80000758]:c.addw a0, a1<br> [0x8000075a]:sd a0, 416(ra)<br>  |
|  54|[0x800043b8]<br>0xFFFFFFFFAAAAAAAA|- rs2_val == -6148914691236517206<br> - rs1_val == 70368744177664<br>                                                                          |[0x80000786]:c.addw a0, a1<br> [0x80000788]:sd a0, 424(ra)<br>  |
|  55|[0x800043c0]<br>0x0000000000000000|- rs2_val == 17179869184<br> - rs1_val == 140737488355328<br>                                                                                  |[0x8000079c]:c.addw a0, a1<br> [0x8000079e]:sd a0, 432(ra)<br>  |
|  56|[0x800043c8]<br>0x0000000000000000|- rs2_val == 576460752303423488<br> - rs1_val == 281474976710656<br>                                                                           |[0x800007b2]:c.addw a0, a1<br> [0x800007b4]:sd a0, 440(ra)<br>  |
|  57|[0x800043d0]<br>0x0000000000000000|- rs2_val == 8796093022208<br> - rs1_val == 562949953421312<br>                                                                                |[0x800007c8]:c.addw a0, a1<br> [0x800007ca]:sd a0, 448(ra)<br>  |
|  58|[0x800043d8]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == -268435457<br> - rs1_val == 1125899906842624<br>                                                                                  |[0x800007de]:c.addw a0, a1<br> [0x800007e0]:sd a0, 456(ra)<br>  |
|  59|[0x800043e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -140737488355329<br> - rs1_val == 2251799813685248<br>                                                                            |[0x800007f8]:c.addw a0, a1<br> [0x800007fa]:sd a0, 464(ra)<br>  |
|  60|[0x800043e8]<br>0x0000000000010000|- rs2_val == 65536<br> - rs1_val == 4503599627370496<br>                                                                                       |[0x8000080a]:c.addw a0, a1<br> [0x8000080c]:sd a0, 472(ra)<br>  |
|  61|[0x800043f0]<br>0x0000000000000000|- rs2_val == 562949953421312<br> - rs1_val == 18014398509481984<br>                                                                            |[0x80000820]:c.addw a0, a1<br> [0x80000822]:sd a0, 480(ra)<br>  |
|  62|[0x800043f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 36028797018963968<br>                                                                                                             |[0x8000083a]:c.addw a0, a1<br> [0x8000083c]:sd a0, 488(ra)<br>  |
|  63|[0x80004400]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == 72057594037927936<br>                                                                                                             |[0x8000084c]:c.addw a0, a1<br> [0x8000084e]:sd a0, 496(ra)<br>  |
|  64|[0x80004408]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -576460752303423489<br> - rs1_val == 144115188075855872<br>                                                                       |[0x80000866]:c.addw a0, a1<br> [0x80000868]:sd a0, 504(ra)<br>  |
|  65|[0x80004410]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == -262145<br> - rs1_val == 288230376151711744<br>                                                                                   |[0x8000087c]:c.addw a0, a1<br> [0x8000087e]:sd a0, 512(ra)<br>  |
|  66|[0x80004418]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                            |[0x80000892]:c.addw a0, a1<br> [0x80000894]:sd a0, 520(ra)<br>  |
|  67|[0x80004420]<br>0x0000000001000000|- rs1_val == 1152921504606846976<br>                                                                                                           |[0x800008a4]:c.addw a0, a1<br> [0x800008a6]:sd a0, 528(ra)<br>  |
|  68|[0x80004428]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == 2305843009213693952<br>                                                                                                           |[0x800008b6]:c.addw a0, a1<br> [0x800008b8]:sd a0, 536(ra)<br>  |
|  69|[0x80004430]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                           |[0x800008cc]:c.addw a0, a1<br> [0x800008ce]:sd a0, 544(ra)<br>  |
|  70|[0x80004438]<br>0x0000000000001FFE|- rs2_val == 8192<br> - rs1_val == -2<br>                                                                                                      |[0x800008da]:c.addw a0, a1<br> [0x800008dc]:sd a0, 552(ra)<br>  |
|  71|[0x80004440]<br>0xFFFFFFFFFFFFFFFC|- rs2_val == -1152921504606846977<br> - rs1_val == -3<br>                                                                                      |[0x800008f0]:c.addw a0, a1<br> [0x800008f2]:sd a0, 560(ra)<br>  |
|  72|[0x80004448]<br>0x0000000000001FFB|- rs1_val == -5<br>                                                                                                                            |[0x800008fe]:c.addw a0, a1<br> [0x80000900]:sd a0, 568(ra)<br>  |
|  73|[0x80004450]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -9<br>                                                                                                                            |[0x80000910]:c.addw a0, a1<br> [0x80000912]:sd a0, 576(ra)<br>  |
|  74|[0x80004458]<br>0xFFFFFFFFFFFFFFEE|- rs1_val == -17<br>                                                                                                                           |[0x80000926]:c.addw a0, a1<br> [0x80000928]:sd a0, 584(ra)<br>  |
|  75|[0x80004460]<br>0xFFFFFFFFFFFBFFDE|- rs1_val == -33<br>                                                                                                                           |[0x80000938]:c.addw a0, a1<br> [0x8000093a]:sd a0, 592(ra)<br>  |
|  76|[0x80004468]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == 9007199254740992<br> - rs1_val == -65<br>                                                                                         |[0x8000094a]:c.addw a0, a1<br> [0x8000094c]:sd a0, 600(ra)<br>  |
|  77|[0x80004470]<br>0xFFFFFFFFFFFFEF7E|- rs2_val == -4097<br> - rs1_val == -129<br>                                                                                                   |[0x8000095c]:c.addw a0, a1<br> [0x8000095e]:sd a0, 608(ra)<br>  |
|  78|[0x80004478]<br>0xFFFFFFFFFFFFFCFE|- rs1_val == -257<br>                                                                                                                          |[0x8000096a]:c.addw a0, a1<br> [0x8000096c]:sd a0, 616(ra)<br>  |
|  79|[0x80004480]<br>0xFFFFFFFFFFFFFDFE|- rs1_val == -513<br>                                                                                                                          |[0x80000980]:c.addw a0, a1<br> [0x80000982]:sd a0, 624(ra)<br>  |
|  80|[0x80004488]<br>0xFFFFFFFFFFFFFBFE|- rs2_val == -18014398509481985<br> - rs1_val == -1025<br>                                                                                     |[0x80000996]:c.addw a0, a1<br> [0x80000998]:sd a0, 632(ra)<br>  |
|  81|[0x80004490]<br>0xFFFFFFFFFFFFF7FE|- rs1_val == -2049<br>                                                                                                                         |[0x800009b0]:c.addw a0, a1<br> [0x800009b2]:sd a0, 640(ra)<br>  |
|  82|[0x80004498]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -36028797018963969<br>                                                                                                            |[0x800009ca]:c.addw a0, a1<br> [0x800009cc]:sd a0, 648(ra)<br>  |
|  83|[0x800044a0]<br>0xFFFFFFFFFFF7FFFE|- rs2_val == -72057594037927937<br> - rs1_val == -524289<br>                                                                                   |[0x800009e4]:c.addw a0, a1<br> [0x800009e6]:sd a0, 656(ra)<br>  |
|  84|[0x800044a8]<br>0x0000000000001FFF|- rs2_val == -144115188075855873<br>                                                                                                           |[0x800009fa]:c.addw a0, a1<br> [0x800009fc]:sd a0, 664(ra)<br>  |
|  85|[0x800044b0]<br>0xFFFFFFFFFFBFFFFE|- rs2_val == -288230376151711745<br> - rs1_val == -4194305<br>                                                                                 |[0x80000a14]:c.addw a0, a1<br> [0x80000a16]:sd a0, 672(ra)<br>  |
|  86|[0x800044b8]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -4611686018427387905<br> - rs1_val == -8589934593<br>                                                                             |[0x80000a32]:c.addw a0, a1<br> [0x80000a34]:sd a0, 680(ra)<br>  |
|  87|[0x800044c0]<br>0x0000000055555555|- rs2_val == 6148914691236517205<br>                                                                                                           |[0x80000a60]:c.addw a0, a1<br> [0x80000a62]:sd a0, 688(ra)<br>  |
|  88|[0x800044c8]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                         |[0x80000a76]:c.addw a0, a1<br> [0x80000a78]:sd a0, 696(ra)<br>  |
|  89|[0x800044d0]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == 4611686018427387904<br> - rs1_val == -8193<br>                                                                                    |[0x80000a8c]:c.addw a0, a1<br> [0x80000a8e]:sd a0, 704(ra)<br>  |
|  90|[0x800044d8]<br>0x00000000003FBFFF|- rs2_val == 4194304<br> - rs1_val == -16385<br>                                                                                               |[0x80000a9e]:c.addw a0, a1<br> [0x80000aa0]:sd a0, 712(ra)<br>  |
|  91|[0x800044e0]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -32769<br>                                                                                                                        |[0x80000ab4]:c.addw a0, a1<br> [0x80000ab6]:sd a0, 720(ra)<br>  |
|  92|[0x800044e8]<br>0xFFFFFFFFFFFF3FFF|- rs2_val == 16384<br> - rs1_val == -65537<br>                                                                                                 |[0x80000ac6]:c.addw a0, a1<br> [0x80000ac8]:sd a0, 728(ra)<br>  |
|  93|[0x800044f0]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == 4294967296<br> - rs1_val == -262145<br>                                                                                           |[0x80000adc]:c.addw a0, a1<br> [0x80000ade]:sd a0, 736(ra)<br>  |
|  94|[0x800044f8]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == 2305843009213693952<br> - rs1_val == -1048577<br>                                                                                 |[0x80000af2]:c.addw a0, a1<br> [0x80000af4]:sd a0, 744(ra)<br>  |
|  95|[0x80004500]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == 281474976710656<br> - rs1_val == -2097153<br>                                                                                     |[0x80000b08]:c.addw a0, a1<br> [0x80000b0a]:sd a0, 752(ra)<br>  |
|  96|[0x80004508]<br>0xFFFFFFFFFF7FFFFE|- rs1_val == -8388609<br>                                                                                                                      |[0x80000b22]:c.addw a0, a1<br> [0x80000b24]:sd a0, 760(ra)<br>  |
|  97|[0x80004510]<br>0xFFFFFFFFFF007FFF|- rs1_val == -16777217<br>                                                                                                                     |[0x80000b34]:c.addw a0, a1<br> [0x80000b36]:sd a0, 768(ra)<br>  |
|  98|[0x80004518]<br>0xFFFFFFFFFDFFFFFE|- rs2_val == -2251799813685249<br> - rs1_val == -33554433<br>                                                                                  |[0x80000b4e]:c.addw a0, a1<br> [0x80000b50]:sd a0, 776(ra)<br>  |
|  99|[0x80004520]<br>0xFFFFFFFFF7FFFFFE|- rs2_val == -4294967297<br> - rs1_val == -134217729<br>                                                                                       |[0x80000b68]:c.addw a0, a1<br> [0x80000b6a]:sd a0, 784(ra)<br>  |
| 100|[0x80004528]<br>0xFFFFFFFFEFFFFFFC|- rs2_val == -3<br> - rs1_val == -268435457<br>                                                                                                |[0x80000b7a]:c.addw a0, a1<br> [0x80000b7c]:sd a0, 792(ra)<br>  |
| 101|[0x80004530]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 536870912<br> - rs1_val == -536870913<br>                                                                                         |[0x80000b8c]:c.addw a0, a1<br> [0x80000b8e]:sd a0, 800(ra)<br>  |
| 102|[0x80004538]<br>0xFFFFFFFFBFFFFFFE|- rs2_val == -8796093022209<br> - rs1_val == -1073741825<br>                                                                                   |[0x80000ba6]:c.addw a0, a1<br> [0x80000ba8]:sd a0, 808(ra)<br>  |
| 103|[0x80004540]<br>0xFFFFFFFF80000008|- rs1_val == -2147483649<br>                                                                                                                   |[0x80000bbc]:c.addw a0, a1<br> [0x80000bbe]:sd a0, 816(ra)<br>  |
| 104|[0x80004548]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                   |[0x80000bd6]:c.addw a0, a1<br> [0x80000bd8]:sd a0, 824(ra)<br>  |
| 105|[0x80004550]<br>0xFFFFFFFFFFFBFFFE|- rs1_val == -17179869185<br>                                                                                                                  |[0x80000bf0]:c.addw a0, a1<br> [0x80000bf2]:sd a0, 832(ra)<br>  |
| 106|[0x80004558]<br>0xFFFFFFFFFFFFFFEE|- rs2_val == -17<br> - rs1_val == -34359738369<br>                                                                                             |[0x80000c06]:c.addw a0, a1<br> [0x80000c08]:sd a0, 840(ra)<br>  |
| 107|[0x80004560]<br>0xFFFFFFFFFFEFFFFE|- rs2_val == -1048577<br> - rs1_val == -68719476737<br>                                                                                        |[0x80000c20]:c.addw a0, a1<br> [0x80000c22]:sd a0, 848(ra)<br>  |
| 108|[0x80004568]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 1125899906842624<br> - rs1_val == -137438953473<br>                                                                               |[0x80000c3a]:c.addw a0, a1<br> [0x80000c3c]:sd a0, 856(ra)<br>  |
| 109|[0x80004570]<br>0x00000000000001FF|- rs2_val == 512<br> - rs1_val == -274877906945<br>                                                                                            |[0x80000c50]:c.addw a0, a1<br> [0x80000c52]:sd a0, 864(ra)<br>  |
| 110|[0x80004578]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -137438953473<br> - rs1_val == -549755813889<br>                                                                                  |[0x80000c6e]:c.addw a0, a1<br> [0x80000c70]:sd a0, 872(ra)<br>  |
| 111|[0x80004580]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -1099511627777<br>                                                                                                                |[0x80000c84]:c.addw a0, a1<br> [0x80000c86]:sd a0, 880(ra)<br>  |
| 112|[0x80004588]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 144115188075855872<br> - rs1_val == -2199023255553<br>                                                                            |[0x80000c9e]:c.addw a0, a1<br> [0x80000ca0]:sd a0, 888(ra)<br>  |
| 113|[0x80004590]<br>0x000000000000000F|- rs2_val == 16<br> - rs1_val == -4398046511105<br>                                                                                            |[0x80000cb4]:c.addw a0, a1<br> [0x80000cb6]:sd a0, 896(ra)<br>  |
| 114|[0x80004598]<br>0x000000003FFFFFFF|- rs2_val == 1073741824<br> - rs1_val == -8796093022209<br>                                                                                    |[0x80000cca]:c.addw a0, a1<br> [0x80000ccc]:sd a0, 904(ra)<br>  |
| 115|[0x800045a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                               |[0x80000ce4]:c.addw a0, a1<br> [0x80000ce6]:sd a0, 912(ra)<br>  |
| 116|[0x800045a8]<br>0x000000003FFFFFFF|- rs1_val == -35184372088833<br>                                                                                                               |[0x80000cfa]:c.addw a0, a1<br> [0x80000cfc]:sd a0, 920(ra)<br>  |
| 117|[0x800045b0]<br>0xFFFFFFFFFFFEFFFE|- rs2_val == -65537<br> - rs1_val == -70368744177665<br>                                                                                       |[0x80000d14]:c.addw a0, a1<br> [0x80000d16]:sd a0, 928(ra)<br>  |
| 118|[0x800045b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                              |[0x80000d2a]:c.addw a0, a1<br> [0x80000d2c]:sd a0, 936(ra)<br>  |
| 119|[0x800045c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                              |[0x80000d44]:c.addw a0, a1<br> [0x80000d46]:sd a0, 944(ra)<br>  |
| 120|[0x800045c8]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -562949953421313<br>                                                                                                              |[0x80000d62]:c.addw a0, a1<br> [0x80000d64]:sd a0, 952(ra)<br>  |
| 121|[0x800045d0]<br>0xFFFFFFFFFFFFFBFE|- rs2_val == -1025<br> - rs1_val == -1125899906842625<br>                                                                                      |[0x80000d78]:c.addw a0, a1<br> [0x80000d7a]:sd a0, 960(ra)<br>  |
| 122|[0x800045d8]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -36028797018963969<br>                                                                                                            |[0x80000d96]:c.addw a0, a1<br> [0x80000d98]:sd a0, 968(ra)<br>  |
| 123|[0x800045e0]<br>0x00000000007FFFFF|- rs2_val == 8388608<br> - rs1_val == -72057594037927937<br>                                                                                   |[0x80000dac]:c.addw a0, a1<br> [0x80000dae]:sd a0, 976(ra)<br>  |
| 124|[0x800045e8]<br>0x00000000000FFFFF|- rs1_val == -144115188075855873<br>                                                                                                           |[0x80000dc2]:c.addw a0, a1<br> [0x80000dc4]:sd a0, 984(ra)<br>  |
| 125|[0x800045f0]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -288230376151711745<br>                                                                                                           |[0x80000de0]:c.addw a0, a1<br> [0x80000de2]:sd a0, 992(ra)<br>  |
| 126|[0x800045f8]<br>0x000000000001FFFF|- rs2_val == -9007199254740993<br>                                                                                                             |[0x80000df6]:c.addw a0, a1<br> [0x80000df8]:sd a0, 1000(ra)<br> |
| 127|[0x80004600]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -576460752303423489<br>                                                                                                           |[0x80000e14]:c.addw a0, a1<br> [0x80000e16]:sd a0, 1008(ra)<br> |
| 128|[0x80004608]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                          |[0x80000e2e]:c.addw a0, a1<br> [0x80000e30]:sd a0, 1016(ra)<br> |
| 129|[0x80004610]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -274877906945<br> - rs1_val == -2305843009213693953<br>                                                                           |[0x80000e4c]:c.addw a0, a1<br> [0x80000e4e]:sd a0, 1024(ra)<br> |
| 130|[0x80004618]<br>0xFFFFFFFFFFFBFFFE|- rs1_val == -4611686018427387905<br>                                                                                                          |[0x80000e66]:c.addw a0, a1<br> [0x80000e68]:sd a0, 1032(ra)<br> |
| 131|[0x80004620]<br>0x000000005555555E|- rs1_val == 6148914691236517205<br>                                                                                                           |[0x80000e90]:c.addw a0, a1<br> [0x80000e92]:sd a0, 1040(ra)<br> |
| 132|[0x80004628]<br>0xFFFFFFFFAAA6AAA9|- rs1_val == -6148914691236517206<br>                                                                                                          |[0x80000ebe]:c.addw a0, a1<br> [0x80000ec0]:sd a0, 1048(ra)<br> |
| 133|[0x80004630]<br>0x0000000000000002|- rs2_val == 2<br>                                                                                                                             |[0x80000ed0]:c.addw a0, a1<br> [0x80000ed2]:sd a0, 1056(ra)<br> |
| 134|[0x80004638]<br>0x0000000000000007|- rs2_val == 8<br>                                                                                                                             |[0x80000ee6]:c.addw a0, a1<br> [0x80000ee8]:sd a0, 1064(ra)<br> |
| 135|[0x80004640]<br>0x000000000000002F|- rs2_val == 64<br>                                                                                                                            |[0x80000ef4]:c.addw a0, a1<br> [0x80000ef6]:sd a0, 1072(ra)<br> |
| 136|[0x80004648]<br>0x00000000000000FF|- rs2_val == 256<br>                                                                                                                           |[0x80000f0a]:c.addw a0, a1<br> [0x80000f0c]:sd a0, 1080(ra)<br> |
| 137|[0x80004650]<br>0x0000000000000400|- rs2_val == 1024<br>                                                                                                                          |[0x80000f1c]:c.addw a0, a1<br> [0x80000f1e]:sd a0, 1088(ra)<br> |
| 138|[0x80004658]<br>0x0000000000000800|- rs2_val == 2048<br>                                                                                                                          |[0x80000f32]:c.addw a0, a1<br> [0x80000f34]:sd a0, 1096(ra)<br> |
| 139|[0x80004660]<br>0x000000000003FFFE|- rs2_val == 262144<br>                                                                                                                        |[0x80000f40]:c.addw a0, a1<br> [0x80000f42]:sd a0, 1104(ra)<br> |
| 140|[0x80004668]<br>0x000000000007FFFB|- rs2_val == 524288<br>                                                                                                                        |[0x80000f4e]:c.addw a0, a1<br> [0x80000f50]:sd a0, 1112(ra)<br> |
| 141|[0x80004670]<br>0x000000000FFFDFFF|- rs2_val == 268435456<br>                                                                                                                     |[0x80000f60]:c.addw a0, a1<br> [0x80000f62]:sd a0, 1120(ra)<br> |
| 142|[0x80004678]<br>0x000000007FFFFFFF|- rs2_val == 2147483648<br>                                                                                                                    |[0x80000f7a]:c.addw a0, a1<br> [0x80000f7c]:sd a0, 1128(ra)<br> |
| 143|[0x80004680]<br>0x0000000000008000|- rs2_val == 8589934592<br>                                                                                                                    |[0x80000f8c]:c.addw a0, a1<br> [0x80000f8e]:sd a0, 1136(ra)<br> |
| 144|[0x80004688]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 68719476736<br>                                                                                                                   |[0x80000fa6]:c.addw a0, a1<br> [0x80000fa8]:sd a0, 1144(ra)<br> |
| 145|[0x80004690]<br>0x0000000010000000|- rs2_val == 274877906944<br>                                                                                                                  |[0x80000fb8]:c.addw a0, a1<br> [0x80000fba]:sd a0, 1152(ra)<br> |
| 146|[0x80004698]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == 1099511627776<br>                                                                                                                 |[0x80000fca]:c.addw a0, a1<br> [0x80000fcc]:sd a0, 1160(ra)<br> |
| 147|[0x800046a0]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == 4398046511104<br>                                                                                                                 |[0x80000fe0]:c.addw a0, a1<br> [0x80000fe2]:sd a0, 1168(ra)<br> |
| 148|[0x800046a8]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == 17592186044416<br>                                                                                                                |[0x80000ff2]:c.addw a0, a1<br> [0x80000ff4]:sd a0, 1176(ra)<br> |
| 149|[0x800046b0]<br>0x0000000000000000|- rs2_val == 2251799813685248<br>                                                                                                              |[0x80001008]:c.addw a0, a1<br> [0x8000100a]:sd a0, 1184(ra)<br> |
| 150|[0x800046b8]<br>0x0000000000000000|- rs2_val == 18014398509481984<br>                                                                                                             |[0x8000101e]:c.addw a0, a1<br> [0x80001020]:sd a0, 1192(ra)<br> |
| 151|[0x800046c0]<br>0x0000000000000000|- rs2_val == 36028797018963968<br>                                                                                                             |[0x80001034]:c.addw a0, a1<br> [0x80001036]:sd a0, 1200(ra)<br> |
| 152|[0x800046c8]<br>0x0000000000000006|- rs2_val == 288230376151711744<br>                                                                                                            |[0x80001046]:c.addw a0, a1<br> [0x80001048]:sd a0, 1208(ra)<br> |
| 153|[0x800046d0]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -2<br>                                                                                                                            |[0x80001058]:c.addw a0, a1<br> [0x8000105a]:sd a0, 1216(ra)<br> |
| 154|[0x800046d8]<br>0x0000000001FFFFFB|- rs2_val == -5<br>                                                                                                                            |[0x80001066]:c.addw a0, a1<br> [0x80001068]:sd a0, 1224(ra)<br> |
| 155|[0x800046e0]<br>0xFFFFFFFFFFFFFFDE|- rs2_val == -33<br>                                                                                                                           |[0x8000107c]:c.addw a0, a1<br> [0x8000107e]:sd a0, 1232(ra)<br> |
| 156|[0x800046e8]<br>0xFFFFFFFFFFFFFFBE|- rs2_val == -65<br>                                                                                                                           |[0x80001092]:c.addw a0, a1<br> [0x80001094]:sd a0, 1240(ra)<br> |
| 157|[0x800046f0]<br>0xFFFFFFFFFFFFF7FE|- rs2_val == -2049<br>                                                                                                                         |[0x800010ac]:c.addw a0, a1<br> [0x800010ae]:sd a0, 1248(ra)<br> |
| 158|[0x800046f8]<br>0xFFFFFFFFFFFFDEFE|- rs2_val == -8193<br>                                                                                                                         |[0x800010be]:c.addw a0, a1<br> [0x800010c0]:sd a0, 1256(ra)<br> |
| 159|[0x80004700]<br>0xFFFFFFFFFFFF8003|- rs2_val == -32769<br>                                                                                                                        |[0x800010d0]:c.addw a0, a1<br> [0x800010d2]:sd a0, 1264(ra)<br> |
| 160|[0x80004708]<br>0xFFFFFFFFFFFDFFFE|- rs2_val == -131073<br> - rs1_val == -4503599627370497<br>                                                                                    |[0x800010ea]:c.addw a0, a1<br> [0x800010ec]:sd a0, 1272(ra)<br> |
| 161|[0x80004710]<br>0xFFFFFFFFFFF7FFFE|- rs2_val == -524289<br>                                                                                                                       |[0x80001104]:c.addw a0, a1<br> [0x80001106]:sd a0, 1280(ra)<br> |
| 162|[0x80004718]<br>0xFFFFFFFFFFDFFFBE|- rs2_val == -2097153<br>                                                                                                                      |[0x80001116]:c.addw a0, a1<br> [0x80001118]:sd a0, 1288(ra)<br> |
| 163|[0x80004720]<br>0xFFFFFFFFFF9FFFFE|- rs2_val == -4194305<br>                                                                                                                      |[0x8000112c]:c.addw a0, a1<br> [0x8000112e]:sd a0, 1296(ra)<br> |
| 164|[0x80004728]<br>0xFFFFFFFFEF7FFFFE|- rs2_val == -8388609<br>                                                                                                                      |[0x80001142]:c.addw a0, a1<br> [0x80001144]:sd a0, 1304(ra)<br> |
| 165|[0x80004730]<br>0xFFFFFFFFFEF7FFFE|- rs2_val == -16777217<br>                                                                                                                     |[0x80001158]:c.addw a0, a1<br> [0x8000115a]:sd a0, 1312(ra)<br> |
| 166|[0x80004740]<br>0xFFFFFFFFDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                    |[0x80001188]:c.addw a0, a1<br> [0x8000118a]:sd a0, 1328(ra)<br> |
| 167|[0x80004748]<br>0x000000007FFFFFFF|- rs2_val == -2147483649<br>                                                                                                                   |[0x800011a2]:c.addw a0, a1<br> [0x800011a4]:sd a0, 1336(ra)<br> |
| 168|[0x80004750]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -8589934593<br>                                                                                                                   |[0x800011c0]:c.addw a0, a1<br> [0x800011c2]:sd a0, 1344(ra)<br> |
| 169|[0x80004758]<br>0xFFFFFFFFBFFFFFFE|- rs2_val == -34359738369<br>                                                                                                                  |[0x800011da]:c.addw a0, a1<br> [0x800011dc]:sd a0, 1352(ra)<br> |
| 170|[0x80004760]<br>0xFFFFFFFFFFFFFFF6|- rs2_val == -68719476737<br>                                                                                                                  |[0x800011f0]:c.addw a0, a1<br> [0x800011f2]:sd a0, 1360(ra)<br> |
| 171|[0x80004768]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -549755813889<br>                                                                                                                 |[0x8000120e]:c.addw a0, a1<br> [0x80001210]:sd a0, 1368(ra)<br> |
| 172|[0x80004770]<br>0x00000000000000FF|- rs1_val == -2251799813685249<br>                                                                                                             |[0x80001224]:c.addw a0, a1<br> [0x80001226]:sd a0, 1376(ra)<br> |
| 173|[0x80004778]<br>0xFFFFFFFFFFEFFFFE|- rs2_val == -1099511627777<br>                                                                                                                |[0x8000123e]:c.addw a0, a1<br> [0x80001240]:sd a0, 1384(ra)<br> |
| 174|[0x80004780]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4398046511105<br>                                                                                                                |[0x80001258]:c.addw a0, a1<br> [0x8000125a]:sd a0, 1392(ra)<br> |
| 175|[0x80004788]<br>0x00000000000003FF|- rs2_val == -17592186044417<br>                                                                                                               |[0x8000126e]:c.addw a0, a1<br> [0x80001270]:sd a0, 1400(ra)<br> |
| 176|[0x80004790]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -281474976710657<br>                                                                                                              |[0x80001284]:c.addw a0, a1<br> [0x80001286]:sd a0, 1408(ra)<br> |
| 177|[0x80004798]<br>0x00000000000FFFFF|- rs2_val == -1125899906842625<br>                                                                                                             |[0x8000129a]:c.addw a0, a1<br> [0x8000129c]:sd a0, 1416(ra)<br> |
| 178|[0x800047a0]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -9007199254740993<br>                                                                                                             |[0x800012b8]:c.addw a0, a1<br> [0x800012ba]:sd a0, 1424(ra)<br> |
| 179|[0x800047a8]<br>0x0000000000000FFF|- rs1_val == -18014398509481985<br>                                                                                                            |[0x800012ce]:c.addw a0, a1<br> [0x800012d0]:sd a0, 1432(ra)<br> |
| 180|[0x800047b0]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == 34359738368<br>                                                                                                                   |[0x800012e4]:c.addw a0, a1<br> [0x800012e6]:sd a0, 1440(ra)<br> |
