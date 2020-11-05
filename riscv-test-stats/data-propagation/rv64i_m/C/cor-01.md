
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001350')]      |
| SIG_REGION                | [('0x80004208', '0x800047c8', '184 dwords')]      |
| COV_LABELS                | cor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cor-01.S/cor-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 184      |
| STAT1                     | 184      |
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

|s.no|            signature             |                                                                    coverpoints                                                                    |                             code                             |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80004208]<br>0xFFFFFFFBFFFFFFFF|- opcode : c.or<br> - rs1 : x13<br> - rs2 : x14<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 549755813888<br> - rs1_val == -17179869185<br> |[0x800003ac]:c.or a3, a4<br> [0x800003ae]:sd a3, 0(ra)<br>    |
|   2|[0x80004210]<br>0xFFFFFFFFFFFFFF7F|- rs1 : x10<br> - rs2 : x10<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -129<br> - rs1_val == -129<br>                                     |[0x800003c2]:c.or a0, a0<br> [0x800003c4]:sd a0, 8(ra)<br>    |
|   3|[0x80004218]<br>0x8000000000000800|- rs1 : x9<br> - rs2 : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 2048<br> - rs1_val == -9223372036854775808<br>                         |[0x800003d8]:c.or s1, a3<br> [0x800003da]:sd s1, 16(ra)<br>   |
|   4|[0x80004220]<br>0xFFFFFFFFFFFFEFFF|- rs1 : x14<br> - rs2 : x12<br> - rs1_val == 0<br> - rs2_val == -4097<br>                                                                          |[0x800003ea]:c.or a4, a2<br> [0x800003ec]:sd a4, 24(ra)<br>   |
|   5|[0x80004228]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x12<br> - rs2 : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -2147483649<br> - rs1_val == 9223372036854775807<br>                  |[0x80000408]:c.or a2, s0<br> [0x8000040a]:sd a2, 32(ra)<br>   |
|   6|[0x80004230]<br>0xFFFFFFFFFFBFFFFF|- rs1 : x8<br> - rs2 : x9<br> - rs1_val == 1<br> - rs2_val == -4194305<br>                                                                         |[0x8000041a]:c.or s0, s1<br> [0x8000041c]:sd fp, 40(ra)<br>   |
|   7|[0x80004238]<br>0x8000000000000010|- rs1 : x11<br> - rs2 : x15<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == 16<br>                          |[0x8000042c]:c.or a1, a5<br> [0x8000042e]:sd a1, 48(ra)<br>   |
|   8|[0x80004240]<br>0x0000000020000000|- rs1 : x15<br> - rs2 : x11<br> - rs2_val == 0<br> - rs1_val == 536870912<br>                                                                      |[0x8000043a]:c.or a5, a1<br> [0x8000043c]:sd a5, 56(ra)<br>   |
|   9|[0x80004248]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == -8193<br>                                                       |[0x80000454]:c.or a0, a1<br> [0x80000456]:sd a0, 64(ra)<br>   |
|  10|[0x80004250]<br>0x0000000000020001|- rs2_val == 1<br> - rs1_val == 131072<br>                                                                                                         |[0x80000462]:c.or a0, a1<br> [0x80000464]:sd a0, 72(ra)<br>   |
|  11|[0x80004258]<br>0x0000000002000002|- rs2_val == 33554432<br> - rs1_val == 2<br>                                                                                                       |[0x80000470]:c.or a0, a1<br> [0x80000472]:sd a0, 80(ra)<br>   |
|  12|[0x80004260]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == -4294967297<br> - rs1_val == 4<br>                                                                                                    |[0x80000486]:c.or a0, a1<br> [0x80000488]:sd a0, 88(ra)<br>   |
|  13|[0x80004268]<br>0x0000001000000008|- rs2_val == 68719476736<br> - rs1_val == 8<br>                                                                                                    |[0x80000498]:c.or a0, a1<br> [0x8000049a]:sd a0, 96(ra)<br>   |
|  14|[0x80004270]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == 32<br>                                                                                                                                |[0x800004aa]:c.or a0, a1<br> [0x800004ac]:sd a0, 104(ra)<br>  |
|  15|[0x80004278]<br>0x0000080000000040|- rs2_val == 8796093022208<br> - rs1_val == 64<br>                                                                                                 |[0x800004bc]:c.or a0, a1<br> [0x800004be]:sd a0, 112(ra)<br>  |
|  16|[0x80004280]<br>0x0000000000080080|- rs2_val == 524288<br> - rs1_val == 128<br>                                                                                                       |[0x800004ca]:c.or a0, a1<br> [0x800004cc]:sd a0, 120(ra)<br>  |
|  17|[0x80004288]<br>0x0000000004000100|- rs2_val == 67108864<br> - rs1_val == 256<br>                                                                                                     |[0x800004d8]:c.or a0, a1<br> [0x800004da]:sd a0, 128(ra)<br>  |
|  18|[0x80004290]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == -17592186044417<br> - rs1_val == 512<br>                                                                                              |[0x800004ee]:c.or a0, a1<br> [0x800004f0]:sd a0, 136(ra)<br>  |
|  19|[0x80004298]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == -36028797018963969<br> - rs1_val == 1024<br>                                                                                          |[0x80000504]:c.or a0, a1<br> [0x80000506]:sd a0, 144(ra)<br>  |
|  20|[0x800042a0]<br>0x0000000010000800|- rs2_val == 268435456<br> - rs1_val == 2048<br>                                                                                                   |[0x80000516]:c.or a0, a1<br> [0x80000518]:sd a0, 152(ra)<br>  |
|  21|[0x800042a8]<br>0x0100000000001000|- rs2_val == 72057594037927936<br> - rs1_val == 4096<br>                                                                                           |[0x80000528]:c.or a0, a1<br> [0x8000052a]:sd a0, 160(ra)<br>  |
|  22|[0x800042b0]<br>0x0000000000002006|- rs1_val == 8192<br>                                                                                                                              |[0x80000536]:c.or a0, a1<br> [0x80000538]:sd a0, 168(ra)<br>  |
|  23|[0x800042b8]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == -17<br> - rs1_val == 16384<br>                                                                                                        |[0x80000544]:c.or a0, a1<br> [0x80000546]:sd a0, 176(ra)<br>  |
|  24|[0x800042c0]<br>0x0008000000008000|- rs2_val == 2251799813685248<br> - rs1_val == 32768<br>                                                                                           |[0x80000556]:c.or a0, a1<br> [0x80000558]:sd a0, 184(ra)<br>  |
|  25|[0x800042c8]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == -3<br> - rs1_val == 65536<br>                                                                                                         |[0x80000564]:c.or a0, a1<br> [0x80000566]:sd a0, 192(ra)<br>  |
|  26|[0x800042d0]<br>0x0000000000040000|- rs2_val == 262144<br> - rs1_val == 262144<br>                                                                                                    |[0x80000572]:c.or a0, a1<br> [0x80000574]:sd a0, 200(ra)<br>  |
|  27|[0x800042d8]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == -1073741825<br> - rs1_val == 524288<br>                                                                                               |[0x80000584]:c.or a0, a1<br> [0x80000586]:sd a0, 208(ra)<br>  |
|  28|[0x800042e0]<br>0xFFFFFEFFFFFFFFFF|- rs2_val == -1099511627777<br> - rs1_val == 1048576<br>                                                                                           |[0x8000059a]:c.or a0, a1<br> [0x8000059c]:sd a0, 216(ra)<br>  |
|  29|[0x800042e8]<br>0xFFFFEFFFFFFFFFFF|- rs1_val == 2097152<br>                                                                                                                           |[0x800005b0]:c.or a0, a1<br> [0x800005b2]:sd a0, 224(ra)<br>  |
|  30|[0x800042f0]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == 4194304<br>                                                                                                                           |[0x800005be]:c.or a0, a1<br> [0x800005c0]:sd a0, 232(ra)<br>  |
|  31|[0x800042f8]<br>0xFFFFFF7FFFFFFFFF|- rs2_val == -549755813889<br> - rs1_val == 8388608<br>                                                                                            |[0x800005d4]:c.or a0, a1<br> [0x800005d6]:sd a0, 240(ra)<br>  |
|  32|[0x80004300]<br>0xFFFFFFFFFFFFFFF6|- rs1_val == 16777216<br>                                                                                                                          |[0x800005e2]:c.or a0, a1<br> [0x800005e4]:sd a0, 248(ra)<br>  |
|  33|[0x80004308]<br>0x0400000002000000|- rs2_val == 288230376151711744<br> - rs1_val == 33554432<br>                                                                                      |[0x800005f4]:c.or a0, a1<br> [0x800005f6]:sd a0, 256(ra)<br>  |
|  34|[0x80004310]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == -2049<br> - rs1_val == 67108864<br>                                                                                                   |[0x80000606]:c.or a0, a1<br> [0x80000608]:sd a0, 264(ra)<br>  |
|  35|[0x80004318]<br>0x0000000008000005|- rs1_val == 134217728<br>                                                                                                                         |[0x80000614]:c.or a0, a1<br> [0x80000616]:sd a0, 272(ra)<br>  |
|  36|[0x80004320]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 268435456<br>                                                                                                                         |[0x80000622]:c.or a0, a1<br> [0x80000624]:sd a0, 280(ra)<br>  |
|  37|[0x80004328]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == 1073741824<br>                                                                                                                        |[0x80000630]:c.or a0, a1<br> [0x80000632]:sd a0, 288(ra)<br>  |
|  38|[0x80004330]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == -5<br> - rs1_val == 2147483648<br>                                                                                                    |[0x80000642]:c.or a0, a1<br> [0x80000644]:sd a0, 296(ra)<br>  |
|  39|[0x80004338]<br>0x0000000100008000|- rs2_val == 32768<br> - rs1_val == 4294967296<br>                                                                                                 |[0x80000654]:c.or a0, a1<br> [0x80000656]:sd a0, 304(ra)<br>  |
|  40|[0x80004340]<br>0x0000000200100000|- rs2_val == 1048576<br> - rs1_val == 8589934592<br>                                                                                               |[0x80000666]:c.or a0, a1<br> [0x80000668]:sd a0, 312(ra)<br>  |
|  41|[0x80004348]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == -1025<br> - rs1_val == 17179869184<br>                                                                                                |[0x80000678]:c.or a0, a1<br> [0x8000067a]:sd a0, 320(ra)<br>  |
|  42|[0x80004350]<br>0x0000000800200000|- rs2_val == 2097152<br> - rs1_val == 34359738368<br>                                                                                              |[0x8000068a]:c.or a0, a1<br> [0x8000068c]:sd a0, 328(ra)<br>  |
|  43|[0x80004358]<br>0x0000001000001000|- rs2_val == 4096<br> - rs1_val == 68719476736<br>                                                                                                 |[0x8000069c]:c.or a0, a1<br> [0x8000069e]:sd a0, 336(ra)<br>  |
|  44|[0x80004360]<br>0x0000002000000007|- rs1_val == 137438953472<br>                                                                                                                      |[0x800006ae]:c.or a0, a1<br> [0x800006b0]:sd a0, 344(ra)<br>  |
|  45|[0x80004368]<br>0x0020004000000000|- rs2_val == 9007199254740992<br> - rs1_val == 274877906944<br>                                                                                    |[0x800006c4]:c.or a0, a1<br> [0x800006c6]:sd a0, 352(ra)<br>  |
|  46|[0x80004370]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == -268435457<br> - rs1_val == 549755813888<br>                                                                                          |[0x800006da]:c.or a0, a1<br> [0x800006dc]:sd a0, 360(ra)<br>  |
|  47|[0x80004378]<br>0x0000010000000007|- rs1_val == 1099511627776<br>                                                                                                                     |[0x800006ec]:c.or a0, a1<br> [0x800006ee]:sd a0, 368(ra)<br>  |
|  48|[0x80004380]<br>0x00000A0000000000|- rs1_val == 2199023255552<br>                                                                                                                     |[0x80000702]:c.or a0, a1<br> [0x80000704]:sd a0, 376(ra)<br>  |
|  49|[0x80004388]<br>0x0008040000000000|- rs1_val == 4398046511104<br>                                                                                                                     |[0x80000718]:c.or a0, a1<br> [0x8000071a]:sd a0, 384(ra)<br>  |
|  50|[0x80004390]<br>0x0000080000000002|- rs2_val == 2<br> - rs1_val == 8796093022208<br>                                                                                                  |[0x8000072a]:c.or a0, a1<br> [0x8000072c]:sd a0, 392(ra)<br>  |
|  51|[0x80004398]<br>0x2000100000000000|- rs2_val == 2305843009213693952<br> - rs1_val == 17592186044416<br>                                                                               |[0x80000740]:c.or a0, a1<br> [0x80000742]:sd a0, 400(ra)<br>  |
|  52|[0x800043a0]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == -134217729<br> - rs1_val == 35184372088832<br>                                                                                        |[0x80000756]:c.or a0, a1<br> [0x80000758]:sd a0, 408(ra)<br>  |
|  53|[0x800043a8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -70368744177665<br> - rs1_val == 70368744177664<br>                                                                                   |[0x80000770]:c.or a0, a1<br> [0x80000772]:sd a0, 416(ra)<br>  |
|  54|[0x800043b0]<br>0xFFFFFFDFFFFFFFFF|- rs2_val == -137438953473<br> - rs1_val == 140737488355328<br>                                                                                    |[0x8000078a]:c.or a0, a1<br> [0x8000078c]:sd a0, 424(ra)<br>  |
|  55|[0x800043b8]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == 281474976710656<br>                                                                                                                   |[0x800007a0]:c.or a0, a1<br> [0x800007a2]:sd a0, 432(ra)<br>  |
|  56|[0x800043c0]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == 562949953421312<br>                                                                                                                   |[0x800007b2]:c.or a0, a1<br> [0x800007b4]:sd a0, 440(ra)<br>  |
|  57|[0x800043c8]<br>0x0004000000000400|- rs2_val == 1024<br> - rs1_val == 1125899906842624<br>                                                                                            |[0x800007c4]:c.or a0, a1<br> [0x800007c6]:sd a0, 448(ra)<br>  |
|  58|[0x800043d0]<br>0x0008000000008000|- rs1_val == 2251799813685248<br>                                                                                                                  |[0x800007d6]:c.or a0, a1<br> [0x800007d8]:sd a0, 456(ra)<br>  |
|  59|[0x800043d8]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == 4503599627370496<br>                                                                                                                  |[0x800007f0]:c.or a0, a1<br> [0x800007f2]:sd a0, 464(ra)<br>  |
|  60|[0x800043e0]<br>0xFFFEFFFFFFFFFFFF|- rs2_val == -281474976710657<br> - rs1_val == 9007199254740992<br>                                                                                |[0x8000080a]:c.or a0, a1<br> [0x8000080c]:sd a0, 472(ra)<br>  |
|  61|[0x800043e8]<br>0x0840000000000000|- rs2_val == 576460752303423488<br> - rs1_val == 18014398509481984<br>                                                                             |[0x80000820]:c.or a0, a1<br> [0x80000822]:sd a0, 480(ra)<br>  |
|  62|[0x800043f0]<br>0x0080000000004000|- rs2_val == 16384<br> - rs1_val == 36028797018963968<br>                                                                                          |[0x80000832]:c.or a0, a1<br> [0x80000834]:sd a0, 488(ra)<br>  |
|  63|[0x800043f8]<br>0x0100000000000008|- rs2_val == 8<br> - rs1_val == 72057594037927936<br>                                                                                              |[0x80000844]:c.or a0, a1<br> [0x80000846]:sd a0, 496(ra)<br>  |
|  64|[0x80004400]<br>0x0200000000000000|- rs2_val == 144115188075855872<br> - rs1_val == 144115188075855872<br>                                                                            |[0x8000085a]:c.or a0, a1<br> [0x8000085c]:sd a0, 504(ra)<br>  |
|  65|[0x80004408]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == -33554433<br> - rs1_val == 288230376151711744<br>                                                                                     |[0x80000870]:c.or a0, a1<br> [0x80000872]:sd a0, 512(ra)<br>  |
|  66|[0x80004410]<br>0x0C00000000000000|- rs1_val == 576460752303423488<br>                                                                                                                |[0x80000886]:c.or a0, a1<br> [0x80000888]:sd a0, 520(ra)<br>  |
|  67|[0x80004418]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == -513<br> - rs1_val == 1152921504606846976<br>                                                                                         |[0x80000898]:c.or a0, a1<br> [0x8000089a]:sd a0, 528(ra)<br>  |
|  68|[0x80004420]<br>0x2000000000000800|- rs1_val == 2305843009213693952<br>                                                                                                               |[0x800008ae]:c.or a0, a1<br> [0x800008b0]:sd a0, 536(ra)<br>  |
|  69|[0x80004428]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == -32769<br> - rs1_val == 4611686018427387904<br>                                                                                       |[0x800008c4]:c.or a0, a1<br> [0x800008c6]:sd a0, 544(ra)<br>  |
|  70|[0x80004430]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -8388609<br> - rs1_val == -2<br>                                                                                                      |[0x800008d6]:c.or a0, a1<br> [0x800008d8]:sd a0, 552(ra)<br>  |
|  71|[0x80004438]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == 16777216<br> - rs1_val == -3<br>                                                                                                      |[0x800008e4]:c.or a0, a1<br> [0x800008e6]:sd a0, 560(ra)<br>  |
|  72|[0x80004440]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -536870913<br> - rs1_val == -5<br>                                                                                                    |[0x800008f6]:c.or a0, a1<br> [0x800008f8]:sd a0, 568(ra)<br>  |
|  73|[0x80004448]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == 17592186044416<br> - rs1_val == -9<br>                                                                                                |[0x80000908]:c.or a0, a1<br> [0x8000090a]:sd a0, 576(ra)<br>  |
|  74|[0x80004450]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4398046511105<br> - rs1_val == -17<br>                                                                                               |[0x8000091e]:c.or a0, a1<br> [0x80000920]:sd a0, 584(ra)<br>  |
|  75|[0x80004458]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4611686018427387905<br> - rs1_val == -33<br>                                                                                         |[0x80000934]:c.or a0, a1<br> [0x80000936]:sd a0, 592(ra)<br>  |
|  76|[0x80004460]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br> - rs1_val == -65<br>                                                                                         |[0x8000094a]:c.or a0, a1<br> [0x8000094c]:sd a0, 600(ra)<br>  |
|  77|[0x80004468]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == 1125899906842624<br> - rs1_val == -257<br>                                                                                            |[0x8000095c]:c.or a0, a1<br> [0x8000095e]:sd a0, 608(ra)<br>  |
|  78|[0x80004470]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br> - rs1_val == -1073741825<br>                                                                                   |[0x80000976]:c.or a0, a1<br> [0x80000978]:sd a0, 616(ra)<br>  |
|  79|[0x80004478]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br> - rs1_val == -562949953421313<br>                                                                              |[0x80000994]:c.or a0, a1<br> [0x80000996]:sd a0, 624(ra)<br>  |
|  80|[0x80004480]<br>0xFDFFFFFFFFFFFFFF|- rs2_val == -144115188075855873<br>                                                                                                               |[0x800009ae]:c.or a0, a1<br> [0x800009b0]:sd a0, 632(ra)<br>  |
|  81|[0x80004488]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == -288230376151711745<br>                                                                                                               |[0x800009c8]:c.or a0, a1<br> [0x800009ca]:sd a0, 640(ra)<br>  |
|  82|[0x80004490]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -576460752303423489<br> - rs1_val == -524289<br>                                                                                      |[0x800009e2]:c.or a0, a1<br> [0x800009e4]:sd a0, 648(ra)<br>  |
|  83|[0x80004498]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                              |[0x800009f8]:c.or a0, a1<br> [0x800009fa]:sd a0, 656(ra)<br>  |
|  84|[0x800044a0]<br>0x55D5555555555555|- rs2_val == 6148914691236517205<br>                                                                                                               |[0x80000a26]:c.or a0, a1<br> [0x80000a28]:sd a0, 664(ra)<br>  |
|  85|[0x800044a8]<br>0xAAAAEAAAAAAAAAAA|- rs2_val == -6148914691236517206<br>                                                                                                              |[0x80000a54]:c.or a0, a1<br> [0x80000a56]:sd a0, 672(ra)<br>  |
|  86|[0x800044b0]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == 134217728<br> - rs1_val == -513<br>                                                                                                   |[0x80000a62]:c.or a0, a1<br> [0x80000a64]:sd a0, 680(ra)<br>  |
|  87|[0x800044b8]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                                                             |[0x80000a70]:c.or a0, a1<br> [0x80000a72]:sd a0, 688(ra)<br>  |
|  88|[0x800044c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -1048577<br> - rs1_val == -2049<br>                                                                                                   |[0x80000a86]:c.or a0, a1<br> [0x80000a88]:sd a0, 696(ra)<br>  |
|  89|[0x800044c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -8589934593<br> - rs1_val == -4097<br>                                                                                                |[0x80000aa0]:c.or a0, a1<br> [0x80000aa2]:sd a0, 704(ra)<br>  |
|  90|[0x800044d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                            |[0x80000aba]:c.or a0, a1<br> [0x80000abc]:sd a0, 712(ra)<br>  |
|  91|[0x800044d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -32769<br>                                                                                                                            |[0x80000acc]:c.or a0, a1<br> [0x80000ace]:sd a0, 720(ra)<br>  |
|  92|[0x800044e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -8796093022209<br> - rs1_val == -65537<br>                                                                                            |[0x80000ae6]:c.or a0, a1<br> [0x80000ae8]:sd a0, 728(ra)<br>  |
|  93|[0x800044e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -131073<br>                                                                                                                           |[0x80000af8]:c.or a0, a1<br> [0x80000afa]:sd a0, 736(ra)<br>  |
|  94|[0x800044f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -274877906945<br> - rs1_val == -262145<br>                                                                                            |[0x80000b12]:c.or a0, a1<br> [0x80000b14]:sd a0, 744(ra)<br>  |
|  95|[0x800044f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1048577<br>                                                                                                                          |[0x80000b2c]:c.or a0, a1<br> [0x80000b2e]:sd a0, 752(ra)<br>  |
|  96|[0x80004500]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == 18014398509481984<br> - rs1_val == -2097153<br>                                                                                       |[0x80000b42]:c.or a0, a1<br> [0x80000b44]:sd a0, 760(ra)<br>  |
|  97|[0x80004508]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                          |[0x80000b58]:c.or a0, a1<br> [0x80000b5a]:sd a0, 768(ra)<br>  |
|  98|[0x80004510]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                          |[0x80000b6a]:c.or a0, a1<br> [0x80000b6c]:sd a0, 776(ra)<br>  |
|  99|[0x80004518]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                         |[0x80000b80]:c.or a0, a1<br> [0x80000b82]:sd a0, 784(ra)<br>  |
| 100|[0x80004520]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33554433<br>                                                                                                                         |[0x80000bae]:c.or a0, a1<br> [0x80000bb0]:sd a0, 792(ra)<br>  |
| 101|[0x80004528]<br>0xFFFFFFFFFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                         |[0x80000bc4]:c.or a0, a1<br> [0x80000bc6]:sd a0, 800(ra)<br>  |
| 102|[0x80004530]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -9<br> - rs1_val == -134217729<br>                                                                                                    |[0x80000bd6]:c.or a0, a1<br> [0x80000bd8]:sd a0, 808(ra)<br>  |
| 103|[0x80004538]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == 137438953472<br> - rs1_val == -268435457<br>                                                                                          |[0x80000bec]:c.or a0, a1<br> [0x80000bee]:sd a0, 816(ra)<br>  |
| 104|[0x80004540]<br>0xFFFFFFFFDFFFFFFF|- rs1_val == -536870913<br>                                                                                                                        |[0x80000bfe]:c.or a0, a1<br> [0x80000c00]:sd a0, 824(ra)<br>  |
| 105|[0x80004548]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -35184372088833<br> - rs1_val == -2147483649<br>                                                                                      |[0x80000c1c]:c.or a0, a1<br> [0x80000c1e]:sd a0, 832(ra)<br>  |
| 106|[0x80004550]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4503599627370497<br> - rs1_val == -4294967297<br>                                                                                    |[0x80000c3a]:c.or a0, a1<br> [0x80000c3c]:sd a0, 840(ra)<br>  |
| 107|[0x80004558]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                       |[0x80000c54]:c.or a0, a1<br> [0x80000c56]:sd a0, 848(ra)<br>  |
| 108|[0x80004560]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == 562949953421312<br> - rs1_val == -34359738369<br>                                                                                     |[0x80000c6e]:c.or a0, a1<br> [0x80000c70]:sd a0, 856(ra)<br>  |
| 109|[0x80004568]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                      |[0x80000c8c]:c.or a0, a1<br> [0x80000c8e]:sd a0, 864(ra)<br>  |
| 110|[0x80004570]<br>0xFFFFFFDFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                     |[0x80000ca2]:c.or a0, a1<br> [0x80000ca4]:sd a0, 872(ra)<br>  |
| 111|[0x80004578]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                     |[0x80000cbc]:c.or a0, a1<br> [0x80000cbe]:sd a0, 880(ra)<br>  |
| 112|[0x80004580]<br>0xFFFFFF7FFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                     |[0x80000cd6]:c.or a0, a1<br> [0x80000cd8]:sd a0, 888(ra)<br>  |
| 113|[0x80004588]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                    |[0x80000cec]:c.or a0, a1<br> [0x80000cee]:sd a0, 896(ra)<br>  |
| 114|[0x80004590]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                    |[0x80000d0a]:c.or a0, a1<br> [0x80000d0c]:sd a0, 904(ra)<br>  |
| 115|[0x80004598]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                    |[0x80000d28]:c.or a0, a1<br> [0x80000d2a]:sd a0, 912(ra)<br>  |
| 116|[0x800045a0]<br>0xFFFFF7FFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                    |[0x80000d42]:c.or a0, a1<br> [0x80000d44]:sd a0, 920(ra)<br>  |
| 117|[0x800045a8]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == 536870912<br> - rs1_val == -17592186044417<br>                                                                                        |[0x80000d58]:c.or a0, a1<br> [0x80000d5a]:sd a0, 928(ra)<br>  |
| 118|[0x800045b0]<br>0xFFFFDFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                   |[0x80000d72]:c.or a0, a1<br> [0x80000d74]:sd a0, 936(ra)<br>  |
| 119|[0x800045b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                   |[0x80000d90]:c.or a0, a1<br> [0x80000d92]:sd a0, 944(ra)<br>  |
| 120|[0x800045c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -33<br> - rs1_val == -140737488355329<br>                                                                                             |[0x80000da6]:c.or a0, a1<br> [0x80000da8]:sd a0, 952(ra)<br>  |
| 121|[0x800045c8]<br>0xFFFEFFFFFFFFFFFF|- rs2_val == 36028797018963968<br> - rs1_val == -281474976710657<br>                                                                               |[0x80000dc0]:c.or a0, a1<br> [0x80000dc2]:sd a0, 960(ra)<br>  |
| 122|[0x800045d0]<br>0xFFFBFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                 |[0x80000dda]:c.or a0, a1<br> [0x80000ddc]:sd a0, 968(ra)<br>  |
| 123|[0x800045d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                |[0x80000df8]:c.or a0, a1<br> [0x80000dfa]:sd a0, 976(ra)<br>  |
| 124|[0x800045e0]<br>0xFEFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                |[0x80000e0e]:c.or a0, a1<br> [0x80000e10]:sd a0, 984(ra)<br>  |
| 125|[0x800045e8]<br>0xFDFFFFFFFFFFFFFF|- rs2_val == 8388608<br> - rs1_val == -144115188075855873<br>                                                                                      |[0x80000e24]:c.or a0, a1<br> [0x80000e26]:sd a0, 992(ra)<br>  |
| 126|[0x800045f0]<br>0xFBFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                               |[0x80000e3a]:c.or a0, a1<br> [0x80000e3c]:sd a0, 1000(ra)<br> |
| 127|[0x800045f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                               |[0x80000e58]:c.or a0, a1<br> [0x80000e5a]:sd a0, 1008(ra)<br> |
| 128|[0x80004600]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == 2147483648<br> - rs1_val == -1152921504606846977<br>                                                                                  |[0x80000e72]:c.or a0, a1<br> [0x80000e74]:sd a0, 1016(ra)<br> |
| 129|[0x80004608]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                              |[0x80000e90]:c.or a0, a1<br> [0x80000e92]:sd a0, 1024(ra)<br> |
| 130|[0x80004610]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                              |[0x80000eae]:c.or a0, a1<br> [0x80000eb0]:sd a0, 1032(ra)<br> |
| 131|[0x80004618]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 6148914691236517205<br>                                                                                                               |[0x80000ee0]:c.or a0, a1<br> [0x80000ee2]:sd a0, 1040(ra)<br> |
| 132|[0x80004620]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -6148914691236517206<br>                                                                                                              |[0x80000f12]:c.or a0, a1<br> [0x80000f14]:sd a0, 1048(ra)<br> |
| 133|[0x80004628]<br>0x0000000000400004|- rs2_val == 4<br>                                                                                                                                 |[0x80000f20]:c.or a0, a1<br> [0x80000f22]:sd a0, 1056(ra)<br> |
| 134|[0x80004630]<br>0x4000000000000010|- rs2_val == 16<br>                                                                                                                                |[0x80000f32]:c.or a0, a1<br> [0x80000f34]:sd a0, 1064(ra)<br> |
| 135|[0x80004638]<br>0x0000000002000020|- rs2_val == 32<br>                                                                                                                                |[0x80000f40]:c.or a0, a1<br> [0x80000f42]:sd a0, 1072(ra)<br> |
| 136|[0x80004640]<br>0x0000000000000240|- rs2_val == 64<br>                                                                                                                                |[0x80000f4e]:c.or a0, a1<br> [0x80000f50]:sd a0, 1080(ra)<br> |
| 137|[0x80004648]<br>0x0000000000000082|- rs2_val == 128<br>                                                                                                                               |[0x80000f5c]:c.or a0, a1<br> [0x80000f5e]:sd a0, 1088(ra)<br> |
| 138|[0x80004650]<br>0x0000080000000100|- rs2_val == 256<br>                                                                                                                               |[0x80000f6e]:c.or a0, a1<br> [0x80000f70]:sd a0, 1096(ra)<br> |
| 139|[0x80004658]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == 512<br>                                                                                                                               |[0x80000f7c]:c.or a0, a1<br> [0x80000f7e]:sd a0, 1104(ra)<br> |
| 140|[0x80004660]<br>0xFFFDFFFFFFFFFFFF|- rs2_val == 8192<br>                                                                                                                              |[0x80000f92]:c.or a0, a1<br> [0x80000f94]:sd a0, 1112(ra)<br> |
| 141|[0x80004668]<br>0x0000000100010000|- rs2_val == 65536<br>                                                                                                                             |[0x80000fa4]:c.or a0, a1<br> [0x80000fa6]:sd a0, 1120(ra)<br> |
| 142|[0x80004670]<br>0x0000000000220000|- rs2_val == 131072<br>                                                                                                                            |[0x80000fb2]:c.or a0, a1<br> [0x80000fb4]:sd a0, 1128(ra)<br> |
| 143|[0x80004678]<br>0x0001000000400000|- rs2_val == 4194304<br>                                                                                                                           |[0x80000fc4]:c.or a0, a1<br> [0x80000fc6]:sd a0, 1136(ra)<br> |
| 144|[0x80004680]<br>0xFFFFFFFBFFFFFFFF|- rs2_val == 1073741824<br>                                                                                                                        |[0x80000fda]:c.or a0, a1<br> [0x80000fdc]:sd a0, 1144(ra)<br> |
| 145|[0x80004688]<br>0xFFFFFFFFFFFFFFDF|- rs2_val == 4294967296<br>                                                                                                                        |[0x80000fec]:c.or a0, a1<br> [0x80000fee]:sd a0, 1152(ra)<br> |
| 146|[0x80004690]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == 8589934592<br>                                                                                                                        |[0x80001006]:c.or a0, a1<br> [0x80001008]:sd a0, 1160(ra)<br> |
| 147|[0x80004698]<br>0x0000000400400000|- rs2_val == 17179869184<br>                                                                                                                       |[0x80001018]:c.or a0, a1<br> [0x8000101a]:sd a0, 1168(ra)<br> |
| 148|[0x800046a0]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == 34359738368<br>                                                                                                                       |[0x8000102e]:c.or a0, a1<br> [0x80001030]:sd a0, 1176(ra)<br> |
| 149|[0x800046a8]<br>0xFFFFFFDFFFFFFFFF|- rs2_val == 274877906944<br>                                                                                                                      |[0x80001048]:c.or a0, a1<br> [0x8000104a]:sd a0, 1184(ra)<br> |
| 150|[0x800046b0]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == 1099511627776<br>                                                                                                                     |[0x8000105a]:c.or a0, a1<br> [0x8000105c]:sd a0, 1192(ra)<br> |
| 151|[0x800046b8]<br>0x0000020000000009|- rs2_val == 2199023255552<br>                                                                                                                     |[0x8000106c]:c.or a0, a1<br> [0x8000106e]:sd a0, 1200(ra)<br> |
| 152|[0x800046c0]<br>0x0000040000000200|- rs2_val == 4398046511104<br>                                                                                                                     |[0x8000107e]:c.or a0, a1<br> [0x80001080]:sd a0, 1208(ra)<br> |
| 153|[0x800046c8]<br>0xFFFFFFFFFFFFFFFC|- rs2_val == 1152921504606846976<br>                                                                                                               |[0x80001090]:c.or a0, a1<br> [0x80001092]:sd a0, 1216(ra)<br> |
| 154|[0x800046d0]<br>0x4000000000000002|- rs2_val == 4611686018427387904<br>                                                                                                               |[0x800010a2]:c.or a0, a1<br> [0x800010a4]:sd a0, 1224(ra)<br> |
| 155|[0x800046d8]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -2<br>                                                                                                                                |[0x800010b0]:c.or a0, a1<br> [0x800010b2]:sd a0, 1232(ra)<br> |
| 156|[0x800046e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -65<br>                                                                                                                               |[0x800010c6]:c.or a0, a1<br> [0x800010c8]:sd a0, 1240(ra)<br> |
| 157|[0x800046e8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -257<br>                                                                                                                              |[0x800010d4]:c.or a0, a1<br> [0x800010d6]:sd a0, 1248(ra)<br> |
| 158|[0x800046f0]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == -8193<br>                                                                                                                             |[0x800010ea]:c.or a0, a1<br> [0x800010ec]:sd a0, 1256(ra)<br> |
| 159|[0x800046f8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -16385<br>                                                                                                                            |[0x80001104]:c.or a0, a1<br> [0x80001106]:sd a0, 1264(ra)<br> |
| 160|[0x80004700]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == -65537<br>                                                                                                                            |[0x80001116]:c.or a0, a1<br> [0x80001118]:sd a0, 1272(ra)<br> |
| 161|[0x80004708]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -131073<br>                                                                                                                           |[0x80001130]:c.or a0, a1<br> [0x80001132]:sd a0, 1280(ra)<br> |
| 162|[0x80004710]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -262145<br>                                                                                                                           |[0x8000114a]:c.or a0, a1<br> [0x8000114c]:sd a0, 1288(ra)<br> |
| 163|[0x80004718]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -524289<br>                                                                                                                           |[0x8000115c]:c.or a0, a1<br> [0x8000115e]:sd a0, 1296(ra)<br> |
| 164|[0x80004720]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2097153<br>                                                                                                                          |[0x80001176]:c.or a0, a1<br> [0x80001178]:sd a0, 1304(ra)<br> |
| 165|[0x80004728]<br>0xFFF7FFFFFFFFFFFF|- rs2_val == -2251799813685249<br>                                                                                                                 |[0x8000118c]:c.or a0, a1<br> [0x8000118e]:sd a0, 1312(ra)<br> |
| 166|[0x80004730]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                         |[0x8000119e]:c.or a0, a1<br> [0x800011a0]:sd a0, 1320(ra)<br> |
| 167|[0x80004738]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                 |[0x800011bc]:c.or a0, a1<br> [0x800011be]:sd a0, 1328(ra)<br> |
| 168|[0x80004740]<br>0x0000800000000005|- rs2_val == 140737488355328<br>                                                                                                                   |[0x800011ce]:c.or a0, a1<br> [0x800011d0]:sd a0, 1336(ra)<br> |
| 169|[0x80004748]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -67108865<br>                                                                                                                         |[0x800011e0]:c.or a0, a1<br> [0x800011e2]:sd a0, 1344(ra)<br> |
| 170|[0x80004750]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -17179869185<br>                                                                                                                      |[0x800011f6]:c.or a0, a1<br> [0x800011f8]:sd a0, 1352(ra)<br> |
| 171|[0x80004758]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -34359738369<br>                                                                                                                      |[0x80001214]:c.or a0, a1<br> [0x80001216]:sd a0, 1360(ra)<br> |
| 172|[0x80004760]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -68719476737<br>                                                                                                                      |[0x8000122e]:c.or a0, a1<br> [0x80001230]:sd a0, 1368(ra)<br> |
| 173|[0x80004768]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -2199023255553<br>                                                                                                                    |[0x8000124c]:c.or a0, a1<br> [0x8000124e]:sd a0, 1376(ra)<br> |
| 174|[0x80004770]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                 |[0x80001266]:c.or a0, a1<br> [0x80001268]:sd a0, 1384(ra)<br> |
| 175|[0x80004778]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == 35184372088832<br>                                                                                                                    |[0x80001280]:c.or a0, a1<br> [0x80001282]:sd a0, 1392(ra)<br> |
| 176|[0x80004780]<br>0x0000408000000000|- rs2_val == 70368744177664<br>                                                                                                                    |[0x80001296]:c.or a0, a1<br> [0x80001298]:sd a0, 1400(ra)<br> |
| 177|[0x80004788]<br>0xFFFF7FFFFFFFFFFF|- rs2_val == -140737488355329<br>                                                                                                                  |[0x800012ac]:c.or a0, a1<br> [0x800012ae]:sd a0, 1408(ra)<br> |
| 178|[0x80004790]<br>0x0005000000000000|- rs2_val == 281474976710656<br>                                                                                                                   |[0x800012c2]:c.or a0, a1<br> [0x800012c4]:sd a0, 1416(ra)<br> |
| 179|[0x80004798]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -562949953421313<br>                                                                                                                  |[0x800012d8]:c.or a0, a1<br> [0x800012da]:sd a0, 1424(ra)<br> |
| 180|[0x800047a0]<br>0xFFFBFFFFFFFFFFFF|- rs2_val == -1125899906842625<br>                                                                                                                 |[0x800012ee]:c.or a0, a1<br> [0x800012f0]:sd a0, 1432(ra)<br> |
| 181|[0x800047a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                 |[0x80001304]:c.or a0, a1<br> [0x80001306]:sd a0, 1440(ra)<br> |
| 182|[0x800047b0]<br>0x0210000000000000|- rs2_val == 4503599627370496<br>                                                                                                                  |[0x8000131a]:c.or a0, a1<br> [0x8000131c]:sd a0, 1448(ra)<br> |
| 183|[0x800047b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                |[0x80001330]:c.or a0, a1<br> [0x80001332]:sd a0, 1456(ra)<br> |
| 184|[0x800047c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -9007199254740993<br>                                                                                                                 |[0x80001346]:c.or a0, a1<br> [0x80001348]:sd a0, 1464(ra)<br> |
