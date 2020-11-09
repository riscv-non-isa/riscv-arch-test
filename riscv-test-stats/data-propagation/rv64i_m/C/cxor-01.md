
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800013b0')]      |
| SIG_REGION                | [('0x80004208', '0x800047d8', '186 dwords')]      |
| COV_LABELS                | cxor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cxor-01.S/cxor-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 186      |
| STAT1                     | 185      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800013a2]:c.xor a0, a1
      [0x800013a4]:sd a0, 1480(ra)
 -- Signature Address: 0x800047d0 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : c.xor
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs2_val == -268435457
      - rs1_val == 268435456






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

|s.no|            signature             |                                                                       coverpoints                                                                        |                             code                              |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80004208]<br>0xFEFFFEFFFFFFFFFF|- opcode : c.xor<br> - rs1 : x12<br> - rs2 : x9<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 1099511627776<br> - rs1_val == -72057594037927937<br> |[0x800003ac]:c.xor a2, s1<br> [0x800003ae]:sd a2, 0(ra)<br>    |
|   2|[0x80004210]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x8<br> - rs1 == rs2<br> - rs2_val == 268435456<br> - rs1_val == 268435456<br>                                                      |[0x800003be]:c.xor s0, s0<br> [0x800003c0]:sd fp, 8(ra)<br>    |
|   3|[0x80004218]<br>0x7FFFFFFFFFFFFFF9|- rs1 : x15<br> - rs2 : x14<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val < 0<br> - rs1_val == -9223372036854775808<br>                                   |[0x800003d0]:c.xor a5, a4<br> [0x800003d2]:sd a5, 16(ra)<br>   |
|   4|[0x80004220]<br>0x0000000400000000|- rs1 : x9<br> - rs2 : x13<br> - rs1_val == 0<br> - rs2_val == 17179869184<br>                                                                            |[0x800003e2]:c.xor s1, a3<br> [0x800003e4]:sd s1, 24(ra)<br>   |
|   5|[0x80004228]<br>0x7FFFEFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x12<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 17592186044416<br> - rs1_val == 9223372036854775807<br>                     |[0x800003fc]:c.xor a3, a2<br> [0x800003fe]:sd a3, 32(ra)<br>   |
|   6|[0x80004230]<br>0xFFFFFFFFDFFFFFFE|- rs1 : x14<br> - rs2 : x11<br> - rs1_val == 1<br> - rs2_val == -536870913<br>                                                                            |[0x8000040e]:c.xor a4, a1<br> [0x80000410]:sd a4, 40(ra)<br>   |
|   7|[0x80004238]<br>0x7FBFFFFFFFFFFFFF|- rs1 : x10<br> - rs2 : x15<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -18014398509481985<br>                 |[0x80000428]:c.xor a0, a5<br> [0x8000042a]:sd a0, 48(ra)<br>   |
|   8|[0x80004240]<br>0x0000000008000000|- rs1 : x11<br> - rs2 : x10<br> - rs2_val == 0<br> - rs1_val == 134217728<br>                                                                             |[0x80000436]:c.xor a1, a0<br> [0x80000438]:sd a1, 56(ra)<br>   |
|   9|[0x80004248]<br>0x7FBFFFFFFFFFFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 18014398509481984<br>                                                  |[0x80000450]:c.xor a0, a1<br> [0x80000452]:sd a0, 64(ra)<br>   |
|  10|[0x80004250]<br>0x0000000000000001|- rs2_val == 1<br>                                                                                                                                        |[0x8000045e]:c.xor a0, a1<br> [0x80000460]:sd a0, 72(ra)<br>   |
|  11|[0x80004258]<br>0x0002000000000002|- rs2_val == 562949953421312<br> - rs1_val == 2<br>                                                                                                       |[0x80000470]:c.xor a0, a1<br> [0x80000472]:sd a0, 80(ra)<br>   |
|  12|[0x80004260]<br>0xFFFFF7FFFFFFFFFB|- rs2_val == -8796093022209<br> - rs1_val == 4<br>                                                                                                        |[0x80000486]:c.xor a0, a1<br> [0x80000488]:sd a0, 88(ra)<br>   |
|  13|[0x80004268]<br>0x0000000000001008|- rs2_val == 4096<br> - rs1_val == 8<br>                                                                                                                  |[0x80000494]:c.xor a0, a1<br> [0x80000496]:sd a0, 96(ra)<br>   |
|  14|[0x80004270]<br>0x0000000000000011|- rs1_val == 16<br>                                                                                                                                       |[0x800004a2]:c.xor a0, a1<br> [0x800004a4]:sd a0, 104(ra)<br>  |
|  15|[0x80004278]<br>0x0000008000000020|- rs2_val == 549755813888<br> - rs1_val == 32<br>                                                                                                         |[0x800004b4]:c.xor a0, a1<br> [0x800004b6]:sd a0, 112(ra)<br>  |
|  16|[0x80004280]<br>0x0000000000008040|- rs2_val == 32768<br> - rs1_val == 64<br>                                                                                                                |[0x800004c2]:c.xor a0, a1<br> [0x800004c4]:sd a0, 120(ra)<br>  |
|  17|[0x80004288]<br>0xBFFFFFFFFFFFFF7F|- rs2_val == -4611686018427387905<br> - rs1_val == 128<br>                                                                                                |[0x800004d8]:c.xor a0, a1<br> [0x800004da]:sd a0, 128(ra)<br>  |
|  18|[0x80004290]<br>0xFFFFFFFFFEFFFEFF|- rs2_val == -16777217<br> - rs1_val == 256<br>                                                                                                           |[0x800004ea]:c.xor a0, a1<br> [0x800004ec]:sd a0, 136(ra)<br>  |
|  19|[0x80004298]<br>0xFFFFFFFFFFFFFD7F|- rs2_val == -129<br> - rs1_val == 512<br>                                                                                                                |[0x800004f8]:c.xor a0, a1<br> [0x800004fa]:sd a0, 144(ra)<br>  |
|  20|[0x800042a0]<br>0xFFFFFEFFFFFFFBFF|- rs2_val == -1099511627777<br> - rs1_val == 1024<br>                                                                                                     |[0x8000050e]:c.xor a0, a1<br> [0x80000510]:sd a0, 152(ra)<br>  |
|  21|[0x800042a8]<br>0x0000000000000900|- rs2_val == 256<br> - rs1_val == 2048<br>                                                                                                                |[0x80000520]:c.xor a0, a1<br> [0x80000522]:sd a0, 160(ra)<br>  |
|  22|[0x800042b0]<br>0xC000000000001000|- rs1_val == 4096<br>                                                                                                                                     |[0x80000532]:c.xor a0, a1<br> [0x80000534]:sd a0, 168(ra)<br>  |
|  23|[0x800042b8]<br>0x0010000000002000|- rs2_val == 4503599627370496<br> - rs1_val == 8192<br>                                                                                                   |[0x80000544]:c.xor a0, a1<br> [0x80000546]:sd a0, 176(ra)<br>  |
|  24|[0x800042c0]<br>0x0000000000004100|- rs1_val == 16384<br>                                                                                                                                    |[0x80000552]:c.xor a0, a1<br> [0x80000554]:sd a0, 184(ra)<br>  |
|  25|[0x800042c8]<br>0xFFFFFBFFFFFF7FFF|- rs2_val == -4398046511105<br> - rs1_val == 32768<br>                                                                                                    |[0x80000568]:c.xor a0, a1<br> [0x8000056a]:sd a0, 192(ra)<br>  |
|  26|[0x800042d0]<br>0xFFFFFFFFFDFEFFFF|- rs2_val == -33554433<br> - rs1_val == 65536<br>                                                                                                         |[0x8000057a]:c.xor a0, a1<br> [0x8000057c]:sd a0, 200(ra)<br>  |
|  27|[0x800042d8]<br>0x0080000000020000|- rs2_val == 36028797018963968<br> - rs1_val == 131072<br>                                                                                                |[0x8000058c]:c.xor a0, a1<br> [0x8000058e]:sd a0, 208(ra)<br>  |
|  28|[0x800042e0]<br>0xFFFFFFFFFFBBFFFF|- rs2_val == -4194305<br> - rs1_val == 262144<br>                                                                                                         |[0x8000059e]:c.xor a0, a1<br> [0x800005a0]:sd a0, 216(ra)<br>  |
|  29|[0x800042e8]<br>0xBFFFFFFFFFF7FFFF|- rs1_val == 524288<br>                                                                                                                                   |[0x800005b4]:c.xor a0, a1<br> [0x800005b6]:sd a0, 224(ra)<br>  |
|  30|[0x800042f0]<br>0x0000000000104000|- rs2_val == 16384<br> - rs1_val == 1048576<br>                                                                                                           |[0x800005c2]:c.xor a0, a1<br> [0x800005c4]:sd a0, 232(ra)<br>  |
|  31|[0x800042f8]<br>0xFFFFFFFFDFDFFFFF|- rs1_val == 2097152<br>                                                                                                                                  |[0x800005d4]:c.xor a0, a1<br> [0x800005d6]:sd a0, 240(ra)<br>  |
|  32|[0x80004300]<br>0x0000010000400000|- rs1_val == 4194304<br>                                                                                                                                  |[0x800005e6]:c.xor a0, a1<br> [0x800005e8]:sd a0, 248(ra)<br>  |
|  33|[0x80004308]<br>0x0000002000800000|- rs2_val == 137438953472<br> - rs1_val == 8388608<br>                                                                                                    |[0x800005f8]:c.xor a0, a1<br> [0x800005fa]:sd a0, 256(ra)<br>  |
|  34|[0x80004310]<br>0xFFFFFFFFFEFDFFFF|- rs2_val == -131073<br> - rs1_val == 16777216<br>                                                                                                        |[0x8000060a]:c.xor a0, a1<br> [0x8000060c]:sd a0, 264(ra)<br>  |
|  35|[0x80004318]<br>0xFFFFFFFFFDF7FFFF|- rs2_val == -524289<br> - rs1_val == 33554432<br>                                                                                                        |[0x8000061c]:c.xor a0, a1<br> [0x8000061e]:sd a0, 272(ra)<br>  |
|  36|[0x80004320]<br>0x0000000004200000|- rs2_val == 2097152<br> - rs1_val == 67108864<br>                                                                                                        |[0x8000062a]:c.xor a0, a1<br> [0x8000062c]:sd a0, 280(ra)<br>  |
|  37|[0x80004328]<br>0x0000000020002000|- rs2_val == 8192<br> - rs1_val == 536870912<br>                                                                                                          |[0x80000638]:c.xor a0, a1<br> [0x8000063a]:sd a0, 288(ra)<br>  |
|  38|[0x80004330]<br>0xFFFFFFFFBDFFFFFF|- rs1_val == 1073741824<br>                                                                                                                               |[0x8000064a]:c.xor a0, a1<br> [0x8000064c]:sd a0, 296(ra)<br>  |
|  39|[0x80004338]<br>0x0008000080000000|- rs2_val == 2251799813685248<br> - rs1_val == 2147483648<br>                                                                                             |[0x80000660]:c.xor a0, a1<br> [0x80000662]:sd a0, 304(ra)<br>  |
|  40|[0x80004340]<br>0xFFFFFFFEFFFFF7FF|- rs2_val == -2049<br> - rs1_val == 4294967296<br>                                                                                                        |[0x80000676]:c.xor a0, a1<br> [0x80000678]:sd a0, 312(ra)<br>  |
|  41|[0x80004348]<br>0x0000020200000000|- rs2_val == 2199023255552<br> - rs1_val == 8589934592<br>                                                                                                |[0x8000068c]:c.xor a0, a1<br> [0x8000068e]:sd a0, 320(ra)<br>  |
|  42|[0x80004350]<br>0xFFFFFFF3FFFFFFFF|- rs2_val == -34359738369<br> - rs1_val == 17179869184<br>                                                                                                |[0x800006a6]:c.xor a0, a1<br> [0x800006a8]:sd a0, 328(ra)<br>  |
|  43|[0x80004358]<br>0xFFFFFFF7FFFFFFFD|- rs2_val == -3<br> - rs1_val == 34359738368<br>                                                                                                          |[0x800006b8]:c.xor a0, a1<br> [0x800006ba]:sd a0, 336(ra)<br>  |
|  44|[0x80004360]<br>0xFFFFFFEFFFFFFFFB|- rs2_val == -5<br> - rs1_val == 68719476736<br>                                                                                                          |[0x800006ca]:c.xor a0, a1<br> [0x800006cc]:sd a0, 344(ra)<br>  |
|  45|[0x80004368]<br>0xFFFFFFDFFBFFFFFF|- rs2_val == -67108865<br> - rs1_val == 137438953472<br>                                                                                                  |[0x800006e0]:c.xor a0, a1<br> [0x800006e2]:sd a0, 352(ra)<br>  |
|  46|[0x80004370]<br>0x0000004004000000|- rs2_val == 67108864<br> - rs1_val == 274877906944<br>                                                                                                   |[0x800006f2]:c.xor a0, a1<br> [0x800006f4]:sd a0, 360(ra)<br>  |
|  47|[0x80004378]<br>0x4000008000000000|- rs2_val == 4611686018427387904<br> - rs1_val == 549755813888<br>                                                                                        |[0x80000708]:c.xor a0, a1<br> [0x8000070a]:sd a0, 368(ra)<br>  |
|  48|[0x80004380]<br>0x0000010010000000|- rs1_val == 1099511627776<br>                                                                                                                            |[0x8000071a]:c.xor a0, a1<br> [0x8000071c]:sd a0, 376(ra)<br>  |
|  49|[0x80004388]<br>0xFFFFFDFFFFFFFFFF|- rs1_val == 2199023255552<br>                                                                                                                            |[0x8000072c]:c.xor a0, a1<br> [0x8000072e]:sd a0, 384(ra)<br>  |
|  50|[0x80004390]<br>0xFFFFFBFFFFFFBFFF|- rs2_val == -16385<br> - rs1_val == 4398046511104<br>                                                                                                    |[0x80000742]:c.xor a0, a1<br> [0x80000744]:sd a0, 392(ra)<br>  |
|  51|[0x80004398]<br>0xFFFFF7FFFFFFFFF8|- rs1_val == 8796093022208<br>                                                                                                                            |[0x80000754]:c.xor a0, a1<br> [0x80000756]:sd a0, 400(ra)<br>  |
|  52|[0x800043a0]<br>0xFFFFEFFFFFFFFFDF|- rs2_val == -33<br> - rs1_val == 17592186044416<br>                                                                                                      |[0x80000766]:c.xor a0, a1<br> [0x80000768]:sd a0, 408(ra)<br>  |
|  53|[0x800043a8]<br>0xFFFFDFFFFFF7FFFF|- rs1_val == 35184372088832<br>                                                                                                                           |[0x8000077c]:c.xor a0, a1<br> [0x8000077e]:sd a0, 416(ra)<br>  |
|  54|[0x800043b0]<br>0x7FFFBFFFFFFFFFFF|- rs1_val == 70368744177664<br>                                                                                                                           |[0x80000796]:c.xor a0, a1<br> [0x80000798]:sd a0, 424(ra)<br>  |
|  55|[0x800043b8]<br>0xFFF77FFFFFFFFFFF|- rs2_val == -2251799813685249<br> - rs1_val == 140737488355328<br>                                                                                       |[0x800007b0]:c.xor a0, a1<br> [0x800007b2]:sd a0, 432(ra)<br>  |
|  56|[0x800043c0]<br>0xFFFEFFFFFFFFFFFA|- rs1_val == 281474976710656<br>                                                                                                                          |[0x800007c2]:c.xor a0, a1<br> [0x800007c4]:sd a0, 440(ra)<br>  |
|  57|[0x800043c8]<br>0xFFFDFFFFFFFFFFFA|- rs1_val == 562949953421312<br>                                                                                                                          |[0x800007d4]:c.xor a0, a1<br> [0x800007d6]:sd a0, 448(ra)<br>  |
|  58|[0x800043d0]<br>0x0004400000000000|- rs2_val == 70368744177664<br> - rs1_val == 1125899906842624<br>                                                                                         |[0x800007ea]:c.xor a0, a1<br> [0x800007ec]:sd a0, 456(ra)<br>  |
|  59|[0x800043d8]<br>0xFFF7FFFFBFFFFFFF|- rs2_val == -1073741825<br> - rs1_val == 2251799813685248<br>                                                                                            |[0x80000800]:c.xor a0, a1<br> [0x80000802]:sd a0, 464(ra)<br>  |
|  60|[0x800043e0]<br>0xDFEFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br> - rs1_val == 4503599627370496<br>                                                                                   |[0x8000081a]:c.xor a0, a1<br> [0x8000081c]:sd a0, 472(ra)<br>  |
|  61|[0x800043e8]<br>0x0020000000000009|- rs1_val == 9007199254740992<br>                                                                                                                         |[0x8000082c]:c.xor a0, a1<br> [0x8000082e]:sd a0, 480(ra)<br>  |
|  62|[0x800043f0]<br>0x0080010000000000|- rs1_val == 36028797018963968<br>                                                                                                                        |[0x80000842]:c.xor a0, a1<br> [0x80000844]:sd a0, 488(ra)<br>  |
|  63|[0x800043f8]<br>0xFEFFFF7FFFFFFFFF|- rs2_val == -549755813889<br> - rs1_val == 72057594037927936<br>                                                                                         |[0x8000085c]:c.xor a0, a1<br> [0x8000085e]:sd a0, 496(ra)<br>  |
|  64|[0x80004400]<br>0xFDFFFFFFFFFFFBFF|- rs2_val == -1025<br> - rs1_val == 144115188075855872<br>                                                                                                |[0x8000086e]:c.xor a0, a1<br> [0x80000870]:sd a0, 504(ra)<br>  |
|  65|[0x80004408]<br>0xFBFFFFFFFFFFFFBF|- rs2_val == -65<br> - rs1_val == 288230376151711744<br>                                                                                                  |[0x80000880]:c.xor a0, a1<br> [0x80000882]:sd a0, 512(ra)<br>  |
|  66|[0x80004410]<br>0x0800000000000020|- rs2_val == 32<br> - rs1_val == 576460752303423488<br>                                                                                                   |[0x80000892]:c.xor a0, a1<br> [0x80000894]:sd a0, 520(ra)<br>  |
|  67|[0x80004418]<br>0x1000000000000100|- rs1_val == 1152921504606846976<br>                                                                                                                      |[0x800008a4]:c.xor a0, a1<br> [0x800008a6]:sd a0, 528(ra)<br>  |
|  68|[0x80004420]<br>0xDFFFFBFFFFFFFFFF|- rs1_val == 2305843009213693952<br>                                                                                                                      |[0x800008be]:c.xor a0, a1<br> [0x800008c0]:sd a0, 536(ra)<br>  |
|  69|[0x80004428]<br>0x4000000400000000|- rs1_val == 4611686018427387904<br>                                                                                                                      |[0x800008d4]:c.xor a0, a1<br> [0x800008d6]:sd a0, 544(ra)<br>  |
|  70|[0x80004430]<br>0x0000040000000001|- rs1_val == -2<br>                                                                                                                                       |[0x800008ea]:c.xor a0, a1<br> [0x800008ec]:sd a0, 552(ra)<br>  |
|  71|[0x80004438]<br>0x3FFFFFFFFFFFFFFD|- rs1_val == -3<br>                                                                                                                                       |[0x800008fc]:c.xor a0, a1<br> [0x800008fe]:sd a0, 560(ra)<br>  |
|  72|[0x80004440]<br>0xFFFFFFFFFBFFFFFB|- rs1_val == -5<br>                                                                                                                                       |[0x8000090a]:c.xor a0, a1<br> [0x8000090c]:sd a0, 568(ra)<br>  |
|  73|[0x80004448]<br>0x0000100000000008|- rs2_val == -17592186044417<br> - rs1_val == -9<br>                                                                                                      |[0x80000920]:c.xor a0, a1<br> [0x80000922]:sd a0, 576(ra)<br>  |
|  74|[0x80004450]<br>0xFFFFFFFFFFFBFFEF|- rs2_val == 262144<br> - rs1_val == -17<br>                                                                                                              |[0x8000092e]:c.xor a0, a1<br> [0x80000930]:sd a0, 584(ra)<br>  |
|  75|[0x80004458]<br>0xFFFFFF7FFFFFFFDF|- rs1_val == -33<br>                                                                                                                                      |[0x80000940]:c.xor a0, a1<br> [0x80000942]:sd a0, 592(ra)<br>  |
|  76|[0x80004460]<br>0x0000000400000040|- rs2_val == -17179869185<br> - rs1_val == -65<br>                                                                                                        |[0x80000956]:c.xor a0, a1<br> [0x80000958]:sd a0, 600(ra)<br>  |
|  77|[0x80004468]<br>0x0000000008000080|- rs2_val == -134217729<br> - rs1_val == -129<br>                                                                                                         |[0x80000968]:c.xor a0, a1<br> [0x8000096a]:sd a0, 608(ra)<br>  |
|  78|[0x80004470]<br>0x0000000000000107|- rs1_val == -257<br>                                                                                                                                     |[0x80000976]:c.xor a0, a1<br> [0x80000978]:sd a0, 616(ra)<br>  |
|  79|[0x80004478]<br>0x0000000010000200|- rs2_val == -268435457<br> - rs1_val == -513<br>                                                                                                         |[0x80000988]:c.xor a0, a1<br> [0x8000098a]:sd a0, 624(ra)<br>  |
|  80|[0x80004480]<br>0x3FFFFFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                                                                    |[0x8000099a]:c.xor a0, a1<br> [0x8000099c]:sd a0, 632(ra)<br>  |
|  81|[0x80004488]<br>0x0002000000000800|- rs2_val == -562949953421313<br> - rs1_val == -2049<br>                                                                                                  |[0x800009b4]:c.xor a0, a1<br> [0x800009b6]:sd a0, 640(ra)<br>  |
|  82|[0x80004490]<br>0x0000000000021000|- rs1_val == -4097<br>                                                                                                                                    |[0x800009ca]:c.xor a0, a1<br> [0x800009cc]:sd a0, 648(ra)<br>  |
|  83|[0x80004498]<br>0x1040000000000000|- rs2_val == -18014398509481985<br> - rs1_val == -1152921504606846977<br>                                                                                 |[0x800009e8]:c.xor a0, a1<br> [0x800009ea]:sd a0, 656(ra)<br>  |
|  84|[0x800044a0]<br>0xDF7FFFFFFFFFFFFF|- rs2_val == -36028797018963969<br>                                                                                                                       |[0x80000a02]:c.xor a0, a1<br> [0x80000a04]:sd a0, 664(ra)<br>  |
|  85|[0x800044a8]<br>0x0180000000000000|- rs2_val == -72057594037927937<br> - rs1_val == -36028797018963969<br>                                                                                   |[0x80000a20]:c.xor a0, a1<br> [0x80000a22]:sd a0, 672(ra)<br>  |
|  86|[0x800044b0]<br>0x0200000000004000|- rs2_val == -144115188075855873<br> - rs1_val == -16385<br>                                                                                              |[0x80000a3a]:c.xor a0, a1<br> [0x80000a3c]:sd a0, 680(ra)<br>  |
|  87|[0x800044b8]<br>0x0400000000000003|- rs2_val == -288230376151711745<br>                                                                                                                      |[0x80000a50]:c.xor a0, a1<br> [0x80000a52]:sd a0, 688(ra)<br>  |
|  88|[0x800044c0]<br>0x0800000400000000|- rs2_val == -576460752303423489<br> - rs1_val == -17179869185<br>                                                                                        |[0x80000a6e]:c.xor a0, a1<br> [0x80000a70]:sd a0, 696(ra)<br>  |
|  89|[0x800044c8]<br>0xEFFFFFBFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                                     |[0x80000a88]:c.xor a0, a1<br> [0x80000a8a]:sd a0, 704(ra)<br>  |
|  90|[0x800044d0]<br>0x5555555555554555|- rs2_val == 6148914691236517205<br>                                                                                                                      |[0x80000ab2]:c.xor a0, a1<br> [0x80000ab4]:sd a0, 712(ra)<br>  |
|  91|[0x800044d8]<br>0xAAEAAAAAAAAAAAAA|- rs2_val == -6148914691236517206<br>                                                                                                                     |[0x80000ae0]:c.xor a0, a1<br> [0x80000ae2]:sd a0, 720(ra)<br>  |
|  92|[0x800044e0]<br>0x0000000002002000|- rs1_val == -8193<br>                                                                                                                                    |[0x80000af6]:c.xor a0, a1<br> [0x80000af8]:sd a0, 728(ra)<br>  |
|  93|[0x800044e8]<br>0xFFFFFFFBFFFF7FFF|- rs1_val == -32769<br>                                                                                                                                   |[0x80000b0c]:c.xor a0, a1<br> [0x80000b0e]:sd a0, 736(ra)<br>  |
|  94|[0x800044f0]<br>0x0008000000010000|- rs1_val == -65537<br>                                                                                                                                   |[0x80000b26]:c.xor a0, a1<br> [0x80000b28]:sd a0, 744(ra)<br>  |
|  95|[0x800044f8]<br>0x0040000000020000|- rs1_val == -131073<br>                                                                                                                                  |[0x80000b40]:c.xor a0, a1<br> [0x80000b42]:sd a0, 752(ra)<br>  |
|  96|[0x80004500]<br>0xFFFFFFFFFFBBFFFF|- rs2_val == 4194304<br> - rs1_val == -262145<br>                                                                                                         |[0x80000b52]:c.xor a0, a1<br> [0x80000b54]:sd a0, 760(ra)<br>  |
|  97|[0x80004508]<br>0xFFFFDFFFFFF7FFFF|- rs2_val == 35184372088832<br> - rs1_val == -524289<br>                                                                                                  |[0x80000b68]:c.xor a0, a1<br> [0x80000b6a]:sd a0, 768(ra)<br>  |
|  98|[0x80004510]<br>0xFEFFFFFFFFEFFFFF|- rs2_val == 72057594037927936<br> - rs1_val == -1048577<br>                                                                                              |[0x80000b7e]:c.xor a0, a1<br> [0x80000b80]:sd a0, 776(ra)<br>  |
|  99|[0x80004518]<br>0x8000000000200000|- rs1_val == -2097153<br>                                                                                                                                 |[0x80000b98]:c.xor a0, a1<br> [0x80000b9a]:sd a0, 784(ra)<br>  |
| 100|[0x80004520]<br>0x0000000001400000|- rs1_val == -4194305<br>                                                                                                                                 |[0x80000bae]:c.xor a0, a1<br> [0x80000bb0]:sd a0, 792(ra)<br>  |
| 101|[0x80004528]<br>0x0000004000800000|- rs2_val == -274877906945<br> - rs1_val == -8388609<br>                                                                                                  |[0x80000bc8]:c.xor a0, a1<br> [0x80000bca]:sd a0, 800(ra)<br>  |
| 102|[0x80004530]<br>0x0000020001000000|- rs2_val == -2199023255553<br> - rs1_val == -16777217<br>                                                                                                |[0x80000be2]:c.xor a0, a1<br> [0x80000be4]:sd a0, 808(ra)<br>  |
| 103|[0x80004538]<br>0x0000000002000000|- rs1_val == -33554433<br>                                                                                                                                |[0x80000bf4]:c.xor a0, a1<br> [0x80000bf6]:sd a0, 816(ra)<br>  |
| 104|[0x80004540]<br>0xFFFDFFFFFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                                |[0x80000c0a]:c.xor a0, a1<br> [0x80000c0c]:sd a0, 824(ra)<br>  |
| 105|[0x80004548]<br>0xFFFFFFFFE7FFFFFF|- rs1_val == -134217729<br>                                                                                                                               |[0x80000c1c]:c.xor a0, a1<br> [0x80000c1e]:sd a0, 832(ra)<br>  |
| 106|[0x80004550]<br>0xFFFFFFBFEFFFFFFF|- rs2_val == 274877906944<br> - rs1_val == -268435457<br>                                                                                                 |[0x80000c32]:c.xor a0, a1<br> [0x80000c34]:sd a0, 840(ra)<br>  |
| 107|[0x80004558]<br>0x0000000020000800|- rs1_val == -536870913<br>                                                                                                                               |[0x80000c48]:c.xor a0, a1<br> [0x80000c4a]:sd a0, 848(ra)<br>  |
| 108|[0x80004560]<br>0xFFFFFFFFBFFFFFFC|- rs1_val == -1073741825<br>                                                                                                                              |[0x80000c5a]:c.xor a0, a1<br> [0x80000c5c]:sd a0, 856(ra)<br>  |
| 109|[0x80004568]<br>0x0000040080000000|- rs1_val == -2147483649<br>                                                                                                                              |[0x80000c78]:c.xor a0, a1<br> [0x80000c7a]:sd a0, 864(ra)<br>  |
| 110|[0x80004570]<br>0x2000000100000000|- rs1_val == -4294967297<br>                                                                                                                              |[0x80000c96]:c.xor a0, a1<br> [0x80000c98]:sd a0, 872(ra)<br>  |
| 111|[0x80004578]<br>0x0002000200000000|- rs1_val == -8589934593<br>                                                                                                                              |[0x80000cb4]:c.xor a0, a1<br> [0x80000cb6]:sd a0, 880(ra)<br>  |
| 112|[0x80004580]<br>0xFFFFFFF3FFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                             |[0x80000cce]:c.xor a0, a1<br> [0x80000cd0]:sd a0, 888(ra)<br>  |
| 113|[0x80004588]<br>0xFFFFFDEFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                             |[0x80000ce8]:c.xor a0, a1<br> [0x80000cea]:sd a0, 896(ra)<br>  |
| 114|[0x80004590]<br>0x0000002001000000|- rs1_val == -137438953473<br>                                                                                                                            |[0x80000d02]:c.xor a0, a1<br> [0x80000d04]:sd a0, 904(ra)<br>  |
| 115|[0x80004598]<br>0xFFFFFDBFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                            |[0x80000d1c]:c.xor a0, a1<br> [0x80000d1e]:sd a0, 912(ra)<br>  |
| 116|[0x800045a0]<br>0x0000008010000000|- rs1_val == -549755813889<br>                                                                                                                            |[0x80000d36]:c.xor a0, a1<br> [0x80000d38]:sd a0, 920(ra)<br>  |
| 117|[0x800045a8]<br>0xFFFFFEFFFDFFFFFF|- rs2_val == 33554432<br> - rs1_val == -1099511627777<br>                                                                                                 |[0x80000d4c]:c.xor a0, a1<br> [0x80000d4e]:sd a0, 928(ra)<br>  |
| 118|[0x800045b0]<br>0xFFFFDDFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                           |[0x80000d66]:c.xor a0, a1<br> [0x80000d68]:sd a0, 936(ra)<br>  |
| 119|[0x800045b8]<br>0xFFFEFBFFFFFFFFFF|- rs2_val == 281474976710656<br> - rs1_val == -4398046511105<br>                                                                                          |[0x80000d80]:c.xor a0, a1<br> [0x80000d82]:sd a0, 944(ra)<br>  |
| 120|[0x800045c0]<br>0xFFDFF7FFFFFFFFFF|- rs2_val == 9007199254740992<br> - rs1_val == -8796093022209<br>                                                                                         |[0x80000d9a]:c.xor a0, a1<br> [0x80000d9c]:sd a0, 952(ra)<br>  |
| 121|[0x800045c8]<br>0x0000100000000100|- rs2_val == -257<br> - rs1_val == -17592186044417<br>                                                                                                    |[0x80000db0]:c.xor a0, a1<br> [0x80000db2]:sd a0, 960(ra)<br>  |
| 122|[0x800045d0]<br>0xFFFFDFFFFFFFFFFE|- rs1_val == -35184372088833<br>                                                                                                                          |[0x80000dc6]:c.xor a0, a1<br> [0x80000dc8]:sd a0, 968(ra)<br>  |
| 123|[0x800045d8]<br>0x0000400000000010|- rs2_val == -17<br> - rs1_val == -70368744177665<br>                                                                                                     |[0x80000ddc]:c.xor a0, a1<br> [0x80000dde]:sd a0, 976(ra)<br>  |
| 124|[0x800045e0]<br>0x0002800000000000|- rs1_val == -140737488355329<br>                                                                                                                         |[0x80000dfa]:c.xor a0, a1<br> [0x80000dfc]:sd a0, 984(ra)<br>  |
| 125|[0x800045e8]<br>0xFFFEFFF7FFFFFFFF|- rs2_val == 34359738368<br> - rs1_val == -281474976710657<br>                                                                                            |[0x80000e14]:c.xor a0, a1<br> [0x80000e16]:sd a0, 992(ra)<br>  |
| 126|[0x800045f0]<br>0xFFFDFFFFFFFFFEFF|- rs1_val == -562949953421313<br>                                                                                                                         |[0x80000e2a]:c.xor a0, a1<br> [0x80000e2c]:sd a0, 1000(ra)<br> |
| 127|[0x800045f8]<br>0x0004000000000009|- rs1_val == -1125899906842625<br>                                                                                                                        |[0x80000e40]:c.xor a0, a1<br> [0x80000e42]:sd a0, 1008(ra)<br> |
| 128|[0x80004600]<br>0x0008000000080000|- rs1_val == -2251799813685249<br>                                                                                                                        |[0x80000e5a]:c.xor a0, a1<br> [0x80000e5c]:sd a0, 1016(ra)<br> |
| 129|[0x80004608]<br>0xFFEFFDFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                        |[0x80000e74]:c.xor a0, a1<br> [0x80000e76]:sd a0, 1024(ra)<br> |
| 130|[0x80004610]<br>0xF9FFFFFFFFFFFFFF|- rs2_val == 288230376151711744<br> - rs1_val == -144115188075855873<br>                                                                                  |[0x80000e8e]:c.xor a0, a1<br> [0x80000e90]:sd a0, 1032(ra)<br> |
| 131|[0x80004618]<br>0x0400000000040000|- rs2_val == -262145<br> - rs1_val == -288230376151711745<br>                                                                                             |[0x80000ea8]:c.xor a0, a1<br> [0x80000eaa]:sd a0, 1040(ra)<br> |
| 132|[0x80004620]<br>0xF77FFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                      |[0x80000ec2]:c.xor a0, a1<br> [0x80000ec4]:sd a0, 1048(ra)<br> |
| 133|[0x80004628]<br>0xDFFFFFFFF7FFFFFF|- rs2_val == 134217728<br> - rs1_val == -2305843009213693953<br>                                                                                          |[0x80000ed8]:c.xor a0, a1<br> [0x80000eda]:sd a0, 1056(ra)<br> |
| 134|[0x80004630]<br>0x4000000000001000|- rs2_val == -4097<br> - rs1_val == -4611686018427387905<br>                                                                                              |[0x80000ef2]:c.xor a0, a1<br> [0x80000ef4]:sd a0, 1064(ra)<br> |
| 135|[0x80004638]<br>0x55555555555D5555|- rs2_val == 524288<br> - rs1_val == 6148914691236517205<br>                                                                                              |[0x80000f1c]:c.xor a0, a1<br> [0x80000f1e]:sd a0, 1072(ra)<br> |
| 136|[0x80004640]<br>0x5575555555555555|- rs2_val == -9007199254740993<br> - rs1_val == -6148914691236517206<br>                                                                                  |[0x80000f4e]:c.xor a0, a1<br> [0x80000f50]:sd a0, 1080(ra)<br> |
| 137|[0x80004648]<br>0xFFFFFFFBFFFFFFFD|- rs2_val == 2<br>                                                                                                                                        |[0x80000f64]:c.xor a0, a1<br> [0x80000f66]:sd a0, 1088(ra)<br> |
| 138|[0x80004650]<br>0x0200000000000004|- rs2_val == 4<br>                                                                                                                                        |[0x80000f76]:c.xor a0, a1<br> [0x80000f78]:sd a0, 1096(ra)<br> |
| 139|[0x80004658]<br>0x0080000000000008|- rs2_val == 8<br>                                                                                                                                        |[0x80000f88]:c.xor a0, a1<br> [0x80000f8a]:sd a0, 1104(ra)<br> |
| 140|[0x80004660]<br>0xFFFFFFF7FFFFFFEF|- rs2_val == 16<br>                                                                                                                                       |[0x80000f9e]:c.xor a0, a1<br> [0x80000fa0]:sd a0, 1112(ra)<br> |
| 141|[0x80004668]<br>0x0000000000000049|- rs2_val == 64<br>                                                                                                                                       |[0x80000fac]:c.xor a0, a1<br> [0x80000fae]:sd a0, 1120(ra)<br> |
| 142|[0x80004670]<br>0x0000000000000480|- rs2_val == 128<br>                                                                                                                                      |[0x80000fba]:c.xor a0, a1<br> [0x80000fbc]:sd a0, 1128(ra)<br> |
| 143|[0x80004678]<br>0xFFDFFFFFFFFFFDFF|- rs2_val == 512<br> - rs1_val == -9007199254740993<br>                                                                                                   |[0x80000fd0]:c.xor a0, a1<br> [0x80000fd2]:sd a0, 1136(ra)<br> |
| 144|[0x80004680]<br>0xFFFFFFFFFFFBFBFF|- rs2_val == 1024<br>                                                                                                                                     |[0x80000fe2]:c.xor a0, a1<br> [0x80000fe4]:sd a0, 1144(ra)<br> |
| 145|[0x80004688]<br>0xFBFFFFFFFFFFF7FF|- rs2_val == 2048<br>                                                                                                                                     |[0x80000ffc]:c.xor a0, a1<br> [0x80000ffe]:sd a0, 1152(ra)<br> |
| 146|[0x80004690]<br>0x0000000000090000|- rs2_val == 65536<br>                                                                                                                                    |[0x8000100a]:c.xor a0, a1<br> [0x8000100c]:sd a0, 1160(ra)<br> |
| 147|[0x80004698]<br>0x0000000000020100|- rs2_val == 131072<br>                                                                                                                                   |[0x80001018]:c.xor a0, a1<br> [0x8000101a]:sd a0, 1168(ra)<br> |
| 148|[0x800046a0]<br>0xFFFFFFF7FFEFFFFF|- rs2_val == 1048576<br>                                                                                                                                  |[0x8000102e]:c.xor a0, a1<br> [0x80001030]:sd a0, 1176(ra)<br> |
| 149|[0x800046a8]<br>0x0000000080800000|- rs2_val == 8388608<br>                                                                                                                                  |[0x80001040]:c.xor a0, a1<br> [0x80001042]:sd a0, 1184(ra)<br> |
| 150|[0x800046b0]<br>0xAAAAAAAAABAAAAAA|- rs2_val == 16777216<br>                                                                                                                                 |[0x8000106a]:c.xor a0, a1<br> [0x8000106c]:sd a0, 1192(ra)<br> |
| 151|[0x800046b8]<br>0x0000020020000000|- rs2_val == 536870912<br>                                                                                                                                |[0x8000107c]:c.xor a0, a1<br> [0x8000107e]:sd a0, 1200(ra)<br> |
| 152|[0x800046c0]<br>0xFFFFFFFFBFFFDFFF|- rs2_val == 1073741824<br>                                                                                                                               |[0x8000108e]:c.xor a0, a1<br> [0x80001090]:sd a0, 1208(ra)<br> |
| 153|[0x800046c8]<br>0x0004000080000000|- rs2_val == 2147483648<br>                                                                                                                               |[0x800010a4]:c.xor a0, a1<br> [0x800010a6]:sd a0, 1216(ra)<br> |
| 154|[0x800046d0]<br>0xFFFFDFFEFFFFFFFF|- rs2_val == 4294967296<br>                                                                                                                               |[0x800010be]:c.xor a0, a1<br> [0x800010c0]:sd a0, 1224(ra)<br> |
| 155|[0x800046d8]<br>0x2040000000000000|- rs2_val == 18014398509481984<br>                                                                                                                        |[0x800010d4]:c.xor a0, a1<br> [0x800010d6]:sd a0, 1232(ra)<br> |
| 156|[0x800046e0]<br>0x0200010000000000|- rs2_val == 144115188075855872<br>                                                                                                                       |[0x800010ea]:c.xor a0, a1<br> [0x800010ec]:sd a0, 1240(ra)<br> |
| 157|[0x800046e8]<br>0xF7FFFFFFFFFFFFDF|- rs2_val == 576460752303423488<br>                                                                                                                       |[0x800010fc]:c.xor a0, a1<br> [0x800010fe]:sd a0, 1248(ra)<br> |
| 158|[0x800046f0]<br>0xEFFFFFFFFFFFDFFF|- rs2_val == 1152921504606846976<br>                                                                                                                      |[0x80001112]:c.xor a0, a1<br> [0x80001114]:sd a0, 1256(ra)<br> |
| 159|[0x800046f8]<br>0xDFFFF7FFFFFFFFFF|- rs2_val == 2305843009213693952<br>                                                                                                                      |[0x8000112c]:c.xor a0, a1<br> [0x8000112e]:sd a0, 1264(ra)<br> |
| 160|[0x80004700]<br>0x0200000000000001|- rs2_val == -2<br>                                                                                                                                       |[0x80001142]:c.xor a0, a1<br> [0x80001144]:sd a0, 1272(ra)<br> |
| 161|[0x80004708]<br>0xFFF7FFFFFFFFFFF7|- rs2_val == -9<br>                                                                                                                                       |[0x80001154]:c.xor a0, a1<br> [0x80001156]:sd a0, 1280(ra)<br> |
| 162|[0x80004710]<br>0xFFFFFFFFFFFFBDFF|- rs2_val == -513<br>                                                                                                                                     |[0x80001162]:c.xor a0, a1<br> [0x80001164]:sd a0, 1288(ra)<br> |
| 163|[0x80004718]<br>0x0000000004002000|- rs2_val == -8193<br>                                                                                                                                    |[0x80001178]:c.xor a0, a1<br> [0x8000117a]:sd a0, 1296(ra)<br> |
| 164|[0x80004720]<br>0x0010000000008000|- rs2_val == -32769<br>                                                                                                                                   |[0x80001192]:c.xor a0, a1<br> [0x80001194]:sd a0, 1304(ra)<br> |
| 165|[0x80004728]<br>0xFFFFFFBFFFFEFFFF|- rs2_val == -65537<br>                                                                                                                                   |[0x800011a8]:c.xor a0, a1<br> [0x800011aa]:sd a0, 1312(ra)<br> |
| 166|[0x80004730]<br>0x0000000000104000|- rs2_val == -1048577<br>                                                                                                                                 |[0x800011be]:c.xor a0, a1<br> [0x800011c0]:sd a0, 1320(ra)<br> |
| 167|[0x80004738]<br>0x0000020000200000|- rs2_val == -2097153<br>                                                                                                                                 |[0x800011d8]:c.xor a0, a1<br> [0x800011da]:sd a0, 1328(ra)<br> |
| 168|[0x80004740]<br>0xFFFFF7FFFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                                 |[0x800011ee]:c.xor a0, a1<br> [0x800011f0]:sd a0, 1336(ra)<br> |
| 169|[0x80004748]<br>0x0000802000000000|- rs2_val == -140737488355329<br>                                                                                                                         |[0x8000120c]:c.xor a0, a1<br> [0x8000120e]:sd a0, 1344(ra)<br> |
| 170|[0x80004750]<br>0xFFFFFFFF7FFF7FFF|- rs2_val == -2147483649<br>                                                                                                                              |[0x80001222]:c.xor a0, a1<br> [0x80001224]:sd a0, 1352(ra)<br> |
| 171|[0x80004758]<br>0x0000000100000006|- rs2_val == -4294967297<br>                                                                                                                              |[0x80001238]:c.xor a0, a1<br> [0x8000123a]:sd a0, 1360(ra)<br> |
| 172|[0x80004760]<br>0x0000000200000006|- rs2_val == 8589934592<br>                                                                                                                               |[0x8000124a]:c.xor a0, a1<br> [0x8000124c]:sd a0, 1368(ra)<br> |
| 173|[0x80004768]<br>0x0000008200000000|- rs2_val == -8589934593<br>                                                                                                                              |[0x80001268]:c.xor a0, a1<br> [0x8000126a]:sd a0, 1376(ra)<br> |
| 174|[0x80004770]<br>0xFFFFFFEFFFFFFFF7|- rs2_val == 68719476736<br>                                                                                                                              |[0x8000127a]:c.xor a0, a1<br> [0x8000127c]:sd a0, 1384(ra)<br> |
| 175|[0x80004778]<br>0x0000011000000000|- rs2_val == -68719476737<br>                                                                                                                             |[0x80001298]:c.xor a0, a1<br> [0x8000129a]:sd a0, 1392(ra)<br> |
| 176|[0x80004780]<br>0x0000002100000000|- rs2_val == -137438953473<br>                                                                                                                            |[0x800012b6]:c.xor a0, a1<br> [0x800012b8]:sd a0, 1400(ra)<br> |
| 177|[0x80004788]<br>0x0000040000000200|- rs2_val == 4398046511104<br>                                                                                                                            |[0x800012c8]:c.xor a0, a1<br> [0x800012ca]:sd a0, 1408(ra)<br> |
| 178|[0x80004790]<br>0xFFFBFFFFFFFFFFFF|- rs2_val == 1125899906842624<br>                                                                                                                         |[0x800012da]:c.xor a0, a1<br> [0x800012dc]:sd a0, 1416(ra)<br> |
| 179|[0x80004798]<br>0x0000080000000004|- rs2_val == 8796093022208<br>                                                                                                                            |[0x800012ec]:c.xor a0, a1<br> [0x800012ee]:sd a0, 1424(ra)<br> |
| 180|[0x800047a0]<br>0x8000200000000000|- rs2_val == -35184372088833<br>                                                                                                                          |[0x8000130a]:c.xor a0, a1<br> [0x8000130c]:sd a0, 1432(ra)<br> |
| 181|[0x800047a8]<br>0x0000400000001000|- rs2_val == -70368744177665<br>                                                                                                                          |[0x80001324]:c.xor a0, a1<br> [0x80001326]:sd a0, 1440(ra)<br> |
| 182|[0x800047b0]<br>0xFFFB7FFFFFFFFFFF|- rs2_val == 140737488355328<br>                                                                                                                          |[0x8000133e]:c.xor a0, a1<br> [0x80001340]:sd a0, 1448(ra)<br> |
| 183|[0x800047b8]<br>0xFFFEFFFFFFFFF7FF|- rs2_val == -281474976710657<br>                                                                                                                         |[0x80001358]:c.xor a0, a1<br> [0x8000135a]:sd a0, 1456(ra)<br> |
| 184|[0x800047c0]<br>0x0084000000000000|- rs2_val == -1125899906842625<br>                                                                                                                        |[0x80001376]:c.xor a0, a1<br> [0x80001378]:sd a0, 1464(ra)<br> |
| 185|[0x800047c8]<br>0xFFEFFFFBFFFFFFFF|- rs2_val == -4503599627370497<br>                                                                                                                        |[0x80001390]:c.xor a0, a1<br> [0x80001392]:sd a0, 1472(ra)<br> |
