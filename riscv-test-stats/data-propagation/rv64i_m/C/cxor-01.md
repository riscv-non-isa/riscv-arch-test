
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800013f0')]      |
| SIG_REGION                | [('0x80004204', '0x80004800', '191 dwords')]      |
| COV_LABELS                | cxor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cxor-01.S/cxor-01.S    |
| Total Number of coverpoints| 287     |
| Total Coverpoints Hit     | 287      |
| Total Signature Updates   | 190      |
| STAT1                     | 189      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800013e2]:c.xor a0, a1
      [0x800013e4]:sd a0, 1512(ra)
 -- Signature Address: 0x800047f8 Data: 0xFFBFFFFFFFFFEFFF
 -- Redundant Coverpoints hit by the op
      - opcode : c.xor
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 18014398509481984
      - rs1_val == -4097






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

|s.no|            signature             |                                                               coverpoints                                                                |                             code                              |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80004210]<br>0x0000000000000000|- opcode : c.xor<br> - rs1 : x11<br> - rs2 : x11<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -4097<br> - rs1_val == -4097<br>     |[0x800003a8]:c.xor a1, a1<br> [0x800003aa]:sd a1, 0(ra)<br>    |
|   2|[0x80004218]<br>0x5555555555555556|- rs1 : x13<br> - rs2 : x15<br> - rs1 != rs2<br> - rs2_val == -6148914691236517206<br>                                                    |[0x800003d2]:c.xor a3, a5<br> [0x800003d4]:sd a3, 8(ra)<br>    |
|   3|[0x80004220]<br>0x7FFFFFEFFFFFFFFF|- rs1 : x15<br> - rs2 : x12<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -68719476737<br> - rs1_val == -9223372036854775808<br>       |[0x800003ec]:c.xor a5, a2<br> [0x800003ee]:sd a5, 16(ra)<br>   |
|   4|[0x80004228]<br>0x0001000000000000|- rs1 : x10<br> - rs2 : x8<br> - rs1_val == 0<br> - rs2_val > 0<br> - rs2_val == 281474976710656<br>                                      |[0x800003fe]:c.xor a0, s0<br> [0x80000400]:sd a0, 24(ra)<br>   |
|   5|[0x80004230]<br>0x7FFFFFFEFFFFFFFF|- rs1 : x9<br> - rs2 : x10<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 4294967296<br> - rs1_val == 9223372036854775807<br>          |[0x80000418]:c.xor s1, a0<br> [0x8000041a]:sd s1, 32(ra)<br>   |
|   6|[0x80004238]<br>0xFFFFFFFFFFFFF7FE|- rs1 : x8<br> - rs2 : x9<br> - rs1_val == 1<br> - rs2_val == -2049<br>                                                                   |[0x8000042a]:c.xor s0, s1<br> [0x8000042c]:sd fp, 40(ra)<br>   |
|   7|[0x80004240]<br>0x7F7FFFFFFFFFFFFF|- rs1 : x12<br> - rs2 : x14<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -36028797018963969<br> |[0x80000444]:c.xor a2, a4<br> [0x80000446]:sd a2, 48(ra)<br>   |
|   8|[0x80004248]<br>0x1000000000000000|- rs1 : x14<br> - rs2 : x13<br> - rs2_val == 0<br> - rs1_val == 1152921504606846976<br>                                                   |[0x80000456]:c.xor a4, a3<br> [0x80000458]:sd a4, 56(ra)<br>   |
|   9|[0x80004250]<br>0x7DFFFFFFFFFFFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 144115188075855872<br>                                 |[0x80000470]:c.xor a0, a1<br> [0x80000472]:sd a0, 64(ra)<br>   |
|  10|[0x80004258]<br>0x0100000000000001|- rs2_val == 1<br> - rs1_val == 72057594037927936<br>                                                                                     |[0x80000482]:c.xor a0, a1<br> [0x80000484]:sd a0, 72(ra)<br>   |
|  11|[0x80004260]<br>0xAAAAAAAAAAAAAAA8|- rs1_val == 2<br>                                                                                                                        |[0x800004ac]:c.xor a0, a1<br> [0x800004ae]:sd a0, 80(ra)<br>   |
|  12|[0x80004268]<br>0xFFFFFFFFFFFFFFDB|- rs2_val == -33<br> - rs1_val == 4<br>                                                                                                   |[0x800004ba]:c.xor a0, a1<br> [0x800004bc]:sd a0, 88(ra)<br>   |
|  13|[0x80004270]<br>0xFFFFFFFFFFFFFF77|- rs2_val == -129<br> - rs1_val == 8<br>                                                                                                  |[0x800004c8]:c.xor a0, a1<br> [0x800004ca]:sd a0, 96(ra)<br>   |
|  14|[0x80004278]<br>0x0000100000000010|- rs2_val == 17592186044416<br> - rs1_val == 16<br>                                                                                       |[0x800004da]:c.xor a0, a1<br> [0x800004dc]:sd a0, 104(ra)<br>  |
|  15|[0x80004280]<br>0x0000000000400020|- rs2_val == 4194304<br> - rs1_val == 32<br>                                                                                              |[0x800004e8]:c.xor a0, a1<br> [0x800004ea]:sd a0, 112(ra)<br>  |
|  16|[0x80004288]<br>0x0000010000000040|- rs2_val == 1099511627776<br> - rs1_val == 64<br>                                                                                        |[0x800004fa]:c.xor a0, a1<br> [0x800004fc]:sd a0, 120(ra)<br>  |
|  17|[0x80004290]<br>0x0800000000000080|- rs2_val == 576460752303423488<br> - rs1_val == 128<br>                                                                                  |[0x8000050c]:c.xor a0, a1<br> [0x8000050e]:sd a0, 128(ra)<br>  |
|  18|[0x80004298]<br>0x0000000000000102|- rs2_val == 2<br> - rs1_val == 256<br>                                                                                                   |[0x8000051a]:c.xor a0, a1<br> [0x8000051c]:sd a0, 136(ra)<br>  |
|  19|[0x800042a0]<br>0x0008000000000200|- rs2_val == 2251799813685248<br> - rs1_val == 512<br>                                                                                    |[0x8000052c]:c.xor a0, a1<br> [0x8000052e]:sd a0, 144(ra)<br>  |
|  20|[0x800042a8]<br>0xC000000000000400|- rs1_val == 1024<br>                                                                                                                     |[0x8000053e]:c.xor a0, a1<br> [0x80000540]:sd a0, 152(ra)<br>  |
|  21|[0x800042b0]<br>0x0000000400000800|- rs2_val == 17179869184<br> - rs1_val == 2048<br>                                                                                        |[0x80000554]:c.xor a0, a1<br> [0x80000556]:sd a0, 160(ra)<br>  |
|  22|[0x800042b8]<br>0xFFFFFFFFFBFFEFFF|- rs2_val == -67108865<br> - rs1_val == 4096<br>                                                                                          |[0x80000566]:c.xor a0, a1<br> [0x80000568]:sd a0, 168(ra)<br>  |
|  23|[0x800042c0]<br>0xFFFFFFFFFFFDDFFF|- rs2_val == -131073<br> - rs1_val == 8192<br>                                                                                            |[0x80000578]:c.xor a0, a1<br> [0x8000057a]:sd a0, 176(ra)<br>  |
|  24|[0x800042c8]<br>0xFFFFFEFFFFFFBFFF|- rs2_val == -1099511627777<br> - rs1_val == 16384<br>                                                                                    |[0x8000058e]:c.xor a0, a1<br> [0x80000590]:sd a0, 184(ra)<br>  |
|  25|[0x800042d0]<br>0x0000200000008000|- rs2_val == 35184372088832<br> - rs1_val == 32768<br>                                                                                    |[0x800005a0]:c.xor a0, a1<br> [0x800005a2]:sd a0, 192(ra)<br>  |
|  26|[0x800042d8]<br>0xFFFFFFFBFFFEFFFF|- rs2_val == -17179869185<br> - rs1_val == 65536<br>                                                                                      |[0x800005b6]:c.xor a0, a1<br> [0x800005b8]:sd a0, 200(ra)<br>  |
|  27|[0x800042e0]<br>0xFFFFFEFFFFFDFFFF|- rs1_val == 131072<br>                                                                                                                   |[0x800005cc]:c.xor a0, a1<br> [0x800005ce]:sd a0, 208(ra)<br>  |
|  28|[0x800042e8]<br>0x0000000100040000|- rs1_val == 262144<br>                                                                                                                   |[0x800005de]:c.xor a0, a1<br> [0x800005e0]:sd a0, 216(ra)<br>  |
|  29|[0x800042f0]<br>0x0000000000080000|- rs1_val == 524288<br>                                                                                                                   |[0x800005ec]:c.xor a0, a1<br> [0x800005ee]:sd a0, 224(ra)<br>  |
|  30|[0x800042f8]<br>0xFFF7FFFFFFEFFFFF|- rs2_val == -2251799813685249<br> - rs1_val == 1048576<br>                                                                               |[0x80000602]:c.xor a0, a1<br> [0x80000604]:sd a0, 232(ra)<br>  |
|  31|[0x80004300]<br>0x0000000000200200|- rs2_val == 512<br> - rs1_val == 2097152<br>                                                                                             |[0x80000610]:c.xor a0, a1<br> [0x80000612]:sd a0, 240(ra)<br>  |
|  32|[0x80004308]<br>0xFFFFFFFFFFBFFFF9|- rs1_val == 4194304<br>                                                                                                                  |[0x8000061e]:c.xor a0, a1<br> [0x80000620]:sd a0, 248(ra)<br>  |
|  33|[0x80004310]<br>0x7FFFFFFFFF7FFFFF|- rs1_val == 8388608<br>                                                                                                                  |[0x80000634]:c.xor a0, a1<br> [0x80000636]:sd a0, 256(ra)<br>  |
|  34|[0x80004318]<br>0xFFFFFFFFFEEFFFFF|- rs2_val == -1048577<br> - rs1_val == 16777216<br>                                                                                       |[0x80000646]:c.xor a0, a1<br> [0x80000648]:sd a0, 264(ra)<br>  |
|  35|[0x80004320]<br>0xBFFFFFFFFDFFFFFF|- rs2_val == -4611686018427387905<br> - rs1_val == 33554432<br>                                                                           |[0x8000065c]:c.xor a0, a1<br> [0x8000065e]:sd a0, 272(ra)<br>  |
|  36|[0x80004328]<br>0x0000000004000005|- rs1_val == 67108864<br>                                                                                                                 |[0x8000066a]:c.xor a0, a1<br> [0x8000066c]:sd a0, 280(ra)<br>  |
|  37|[0x80004330]<br>0xFFFFFFFFF7FFFFEF|- rs2_val == -17<br> - rs1_val == 134217728<br>                                                                                           |[0x80000678]:c.xor a0, a1<br> [0x8000067a]:sd a0, 288(ra)<br>  |
|  38|[0x80004338]<br>0x0000040010000000|- rs2_val == 4398046511104<br> - rs1_val == 268435456<br>                                                                                 |[0x8000068a]:c.xor a0, a1<br> [0x8000068c]:sd a0, 296(ra)<br>  |
|  39|[0x80004340]<br>0xFFFFFFFFDFFFBFFF|- rs2_val == -16385<br> - rs1_val == 536870912<br>                                                                                        |[0x8000069c]:c.xor a0, a1<br> [0x8000069e]:sd a0, 304(ra)<br>  |
|  40|[0x80004348]<br>0x0008000040000000|- rs1_val == 1073741824<br>                                                                                                               |[0x800006ae]:c.xor a0, a1<br> [0x800006b0]:sd a0, 312(ra)<br>  |
|  41|[0x80004350]<br>0x0000000080000020|- rs2_val == 32<br> - rs1_val == 2147483648<br>                                                                                           |[0x800006c0]:c.xor a0, a1<br> [0x800006c2]:sd a0, 320(ra)<br>  |
|  42|[0x80004358]<br>0xFFFFFFFEFFFFEFFF|- rs1_val == 4294967296<br>                                                                                                               |[0x800006d6]:c.xor a0, a1<br> [0x800006d8]:sd a0, 328(ra)<br>  |
|  43|[0x80004360]<br>0xFFFFFFEDFFFFFFFF|- rs1_val == 8589934592<br>                                                                                                               |[0x800006f0]:c.xor a0, a1<br> [0x800006f2]:sd a0, 336(ra)<br>  |
|  44|[0x80004368]<br>0x0010000400000000|- rs2_val == 4503599627370496<br> - rs1_val == 17179869184<br>                                                                            |[0x80000706]:c.xor a0, a1<br> [0x80000708]:sd a0, 344(ra)<br>  |
|  45|[0x80004370]<br>0x0000080800000000|- rs2_val == 8796093022208<br> - rs1_val == 34359738368<br>                                                                               |[0x8000071c]:c.xor a0, a1<br> [0x8000071e]:sd a0, 352(ra)<br>  |
|  46|[0x80004378]<br>0x0000001000000009|- rs1_val == 68719476736<br>                                                                                                              |[0x8000072e]:c.xor a0, a1<br> [0x80000730]:sd a0, 360(ra)<br>  |
|  47|[0x80004380]<br>0x0000002000000003|- rs1_val == 137438953472<br>                                                                                                             |[0x80000740]:c.xor a0, a1<br> [0x80000742]:sd a0, 368(ra)<br>  |
|  48|[0x80004388]<br>0x0000004000040000|- rs2_val == 262144<br> - rs1_val == 274877906944<br>                                                                                     |[0x80000752]:c.xor a0, a1<br> [0x80000754]:sd a0, 376(ra)<br>  |
|  49|[0x80004390]<br>0xFFFFFF7FFFFFEFFF|- rs1_val == 549755813888<br>                                                                                                             |[0x80000768]:c.xor a0, a1<br> [0x8000076a]:sd a0, 384(ra)<br>  |
|  50|[0x80004398]<br>0x0000010004000000|- rs2_val == 67108864<br> - rs1_val == 1099511627776<br>                                                                                  |[0x8000077a]:c.xor a0, a1<br> [0x8000077c]:sd a0, 392(ra)<br>  |
|  51|[0x800043a0]<br>0xFFFFFDFFFEFFFFFF|- rs2_val == -16777217<br> - rs1_val == 2199023255552<br>                                                                                 |[0x80000790]:c.xor a0, a1<br> [0x80000792]:sd a0, 400(ra)<br>  |
|  52|[0x800043a8]<br>0x0000040000020000|- rs2_val == 131072<br> - rs1_val == 4398046511104<br>                                                                                    |[0x800007a2]:c.xor a0, a1<br> [0x800007a4]:sd a0, 408(ra)<br>  |
|  53|[0x800043b0]<br>0xFFFFF7FFFEFFFFFF|- rs1_val == 8796093022208<br>                                                                                                            |[0x800007b8]:c.xor a0, a1<br> [0x800007ba]:sd a0, 416(ra)<br>  |
|  54|[0x800043b8]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                           |[0x800007ce]:c.xor a0, a1<br> [0x800007d0]:sd a0, 424(ra)<br>  |
|  55|[0x800043c0]<br>0x0000200000000040|- rs2_val == 64<br> - rs1_val == 35184372088832<br>                                                                                       |[0x800007e0]:c.xor a0, a1<br> [0x800007e2]:sd a0, 432(ra)<br>  |
|  56|[0x800043c8]<br>0x4000400000000000|- rs2_val == 4611686018427387904<br> - rs1_val == 70368744177664<br>                                                                      |[0x800007f6]:c.xor a0, a1<br> [0x800007f8]:sd a0, 440(ra)<br>  |
|  57|[0x800043d0]<br>0xFFFF7FFFFEFFFFFF|- rs1_val == 140737488355328<br>                                                                                                          |[0x8000080c]:c.xor a0, a1<br> [0x8000080e]:sd a0, 448(ra)<br>  |
|  58|[0x800043d8]<br>0xFFFEFFFFFFFFFFFB|- rs2_val == -5<br> - rs1_val == 281474976710656<br>                                                                                      |[0x8000081e]:c.xor a0, a1<br> [0x80000820]:sd a0, 456(ra)<br>  |
|  59|[0x800043e0]<br>0x0002000020000000|- rs2_val == 536870912<br> - rs1_val == 562949953421312<br>                                                                               |[0x80000830]:c.xor a0, a1<br> [0x80000832]:sd a0, 464(ra)<br>  |
|  60|[0x800043e8]<br>0x0004000000800000|- rs2_val == 8388608<br> - rs1_val == 1125899906842624<br>                                                                                |[0x80000842]:c.xor a0, a1<br> [0x80000844]:sd a0, 472(ra)<br>  |
|  61|[0x800043f0]<br>0x0008000000001000|- rs2_val == 4096<br> - rs1_val == 2251799813685248<br>                                                                                   |[0x80000854]:c.xor a0, a1<br> [0x80000856]:sd a0, 480(ra)<br>  |
|  62|[0x800043f8]<br>0xFFEFFFFFFFFFFFDF|- rs1_val == 4503599627370496<br>                                                                                                         |[0x80000866]:c.xor a0, a1<br> [0x80000868]:sd a0, 488(ra)<br>  |
|  63|[0x80004400]<br>0xFFDFFFFFFFFFFBFF|- rs2_val == -1025<br> - rs1_val == 9007199254740992<br>                                                                                  |[0x80000878]:c.xor a0, a1<br> [0x8000087a]:sd a0, 496(ra)<br>  |
|  64|[0x80004408]<br>0xFFBFFFEFFFFFFFFF|- rs1_val == 18014398509481984<br>                                                                                                        |[0x80000892]:c.xor a0, a1<br> [0x80000894]:sd a0, 504(ra)<br>  |
|  65|[0x80004410]<br>0x55D5555555555555|- rs2_val == 6148914691236517205<br> - rs1_val == 36028797018963968<br>                                                                   |[0x800008c0]:c.xor a0, a1<br> [0x800008c2]:sd a0, 512(ra)<br>  |
|  66|[0x80004418]<br>0xFBFFFFF7FFFFFFFF|- rs2_val == -34359738369<br> - rs1_val == 288230376151711744<br>                                                                         |[0x800008da]:c.xor a0, a1<br> [0x800008dc]:sd a0, 520(ra)<br>  |
|  67|[0x80004420]<br>0x0800000000000040|- rs1_val == 576460752303423488<br>                                                                                                       |[0x800008ec]:c.xor a0, a1<br> [0x800008ee]:sd a0, 528(ra)<br>  |
|  68|[0x80004428]<br>0xDFFFFFFFFFFFFFBF|- rs2_val == -65<br> - rs1_val == 2305843009213693952<br>                                                                                 |[0x800008fe]:c.xor a0, a1<br> [0x80000900]:sd a0, 536(ra)<br>  |
|  69|[0x80004430]<br>0x4010000000000000|- rs1_val == 4611686018427387904<br>                                                                                                      |[0x80000914]:c.xor a0, a1<br> [0x80000916]:sd a0, 544(ra)<br>  |
|  70|[0x80004438]<br>0xF7FFFFFFFFFFFFFE|- rs1_val == -2<br>                                                                                                                       |[0x80000926]:c.xor a0, a1<br> [0x80000928]:sd a0, 552(ra)<br>  |
|  71|[0x80004440]<br>0x0000000040000002|- rs2_val == -1073741825<br> - rs1_val == -3<br>                                                                                          |[0x80000938]:c.xor a0, a1<br> [0x8000093a]:sd a0, 560(ra)<br>  |
|  72|[0x80004448]<br>0xFFFFFFFFBFFFFFFB|- rs2_val == 1073741824<br> - rs1_val == -5<br>                                                                                           |[0x80000946]:c.xor a0, a1<br> [0x80000948]:sd a0, 568(ra)<br>  |
|  73|[0x80004450]<br>0xFFF7FFFFFFFFFFF7|- rs1_val == -9<br>                                                                                                                       |[0x80000958]:c.xor a0, a1<br> [0x8000095a]:sd a0, 576(ra)<br>  |
|  74|[0x80004458]<br>0xF7FFFFFFFFFFFFEF|- rs1_val == -17<br>                                                                                                                      |[0x8000096a]:c.xor a0, a1<br> [0x8000096c]:sd a0, 584(ra)<br>  |
|  75|[0x80004460]<br>0xAAAAAAAAAAAAAA8A|- rs1_val == -33<br>                                                                                                                      |[0x80000994]:c.xor a0, a1<br> [0x80000996]:sd a0, 592(ra)<br>  |
|  76|[0x80004468]<br>0x8000000000000040|- rs1_val == -65<br>                                                                                                                      |[0x800009aa]:c.xor a0, a1<br> [0x800009ac]:sd a0, 600(ra)<br>  |
|  77|[0x80004470]<br>0xFFFFFFFFFFEFFF7F|- rs2_val == 1048576<br> - rs1_val == -129<br>                                                                                            |[0x800009b8]:c.xor a0, a1<br> [0x800009ba]:sd a0, 608(ra)<br>  |
|  78|[0x80004478]<br>0x0020000000000100|- rs2_val == -9007199254740993<br> - rs1_val == -257<br>                                                                                  |[0x800009ce]:c.xor a0, a1<br> [0x800009d0]:sd a0, 616(ra)<br>  |
|  79|[0x80004480]<br>0x0000000000000A00|- rs1_val == -513<br>                                                                                                                     |[0x800009e0]:c.xor a0, a1<br> [0x800009e2]:sd a0, 624(ra)<br>  |
|  80|[0x80004488]<br>0x0400000000000400|- rs2_val == -288230376151711745<br> - rs1_val == -1025<br>                                                                               |[0x800009f6]:c.xor a0, a1<br> [0x800009f8]:sd a0, 632(ra)<br>  |
|  81|[0x80004490]<br>0x0000000000000820|- rs1_val == -2049<br>                                                                                                                    |[0x80000a08]:c.xor a0, a1<br> [0x80000a0a]:sd a0, 640(ra)<br>  |
|  82|[0x80004498]<br>0xFFF7FFFFFFFFDFFF|- rs1_val == -8193<br>                                                                                                                    |[0x80000a1e]:c.xor a0, a1<br> [0x80000a20]:sd a0, 648(ra)<br>  |
|  83|[0x800044a0]<br>0x0040000000000100|- rs2_val == -18014398509481985<br>                                                                                                       |[0x80000a34]:c.xor a0, a1<br> [0x80000a36]:sd a0, 656(ra)<br>  |
|  84|[0x800044a8]<br>0xFF7FFFFFFFFFFFF6|- rs2_val == -36028797018963969<br>                                                                                                       |[0x80000a4a]:c.xor a0, a1<br> [0x80000a4c]:sd a0, 664(ra)<br>  |
|  85|[0x800044b0]<br>0x0100080000000000|- rs2_val == -72057594037927937<br> - rs1_val == -8796093022209<br>                                                                       |[0x80000a68]:c.xor a0, a1<br> [0x80000a6a]:sd a0, 672(ra)<br>  |
|  86|[0x800044b8]<br>0xFDFFFFFEFFFFFFFF|- rs2_val == -144115188075855873<br>                                                                                                      |[0x80000a82]:c.xor a0, a1<br> [0x80000a84]:sd a0, 680(ra)<br>  |
|  87|[0x800044c0]<br>0x0800000000000010|- rs2_val == -576460752303423489<br>                                                                                                      |[0x80000a98]:c.xor a0, a1<br> [0x80000a9a]:sd a0, 688(ra)<br>  |
|  88|[0x800044c8]<br>0x9000000000000000|- rs2_val == -1152921504606846977<br>                                                                                                     |[0x80000ab6]:c.xor a0, a1<br> [0x80000ab8]:sd a0, 696(ra)<br>  |
|  89|[0x800044d0]<br>0x2000000000000001|- rs2_val == -2305843009213693953<br>                                                                                                     |[0x80000acc]:c.xor a0, a1<br> [0x80000ace]:sd a0, 704(ra)<br>  |
|  90|[0x800044d8]<br>0xFFFFFFFFFFFFBFF8|- rs1_val == -16385<br>                                                                                                                   |[0x80000ade]:c.xor a0, a1<br> [0x80000ae0]:sd a0, 712(ra)<br>  |
|  91|[0x800044e0]<br>0xEFFFFFFFFFFF7FFF|- rs2_val == 1152921504606846976<br> - rs1_val == -32769<br>                                                                              |[0x80000af4]:c.xor a0, a1<br> [0x80000af6]:sd a0, 720(ra)<br>  |
|  92|[0x800044e8]<br>0x3FFFFFFFFFFEFFFF|- rs1_val == -65537<br>                                                                                                                   |[0x80000b0a]:c.xor a0, a1<br> [0x80000b0c]:sd a0, 728(ra)<br>  |
|  93|[0x800044f0]<br>0xFFFFFEFFFFFDFFFF|- rs1_val == -131073<br>                                                                                                                  |[0x80000b20]:c.xor a0, a1<br> [0x80000b22]:sd a0, 736(ra)<br>  |
|  94|[0x800044f8]<br>0xFFFFFFFFFFFAFFFF|- rs2_val == 65536<br> - rs1_val == -262145<br>                                                                                           |[0x80000b32]:c.xor a0, a1<br> [0x80000b34]:sd a0, 744(ra)<br>  |
|  95|[0x80004500]<br>0xFFFFFEFFFFF7FFFF|- rs1_val == -524289<br>                                                                                                                  |[0x80000b48]:c.xor a0, a1<br> [0x80000b4a]:sd a0, 752(ra)<br>  |
|  96|[0x80004508]<br>0xFFFFFFFFFFEFFFFA|- rs1_val == -1048577<br>                                                                                                                 |[0x80000b5a]:c.xor a0, a1<br> [0x80000b5c]:sd a0, 760(ra)<br>  |
|  97|[0x80004510]<br>0xFFFFFFFFFFDFFDFF|- rs1_val == -2097153<br>                                                                                                                 |[0x80000b6c]:c.xor a0, a1<br> [0x80000b6e]:sd a0, 768(ra)<br>  |
|  98|[0x80004518]<br>0x0000000200400000|- rs2_val == -8589934593<br> - rs1_val == -4194305<br>                                                                                    |[0x80000b86]:c.xor a0, a1<br> [0x80000b88]:sd a0, 776(ra)<br>  |
|  99|[0x80004520]<br>0x0000200000800000|- rs2_val == -35184372088833<br> - rs1_val == -8388609<br>                                                                                |[0x80000ba0]:c.xor a0, a1<br> [0x80000ba2]:sd a0, 784(ra)<br>  |
| 100|[0x80004528]<br>0x0000004001000000|- rs2_val == -274877906945<br> - rs1_val == -16777217<br>                                                                                 |[0x80000bba]:c.xor a0, a1<br> [0x80000bbc]:sd a0, 792(ra)<br>  |
| 101|[0x80004530]<br>0x0000004002000000|- rs1_val == -33554433<br>                                                                                                                |[0x80000bd4]:c.xor a0, a1<br> [0x80000bd6]:sd a0, 800(ra)<br>  |
| 102|[0x80004538]<br>0x0000000004010000|- rs2_val == -65537<br> - rs1_val == -67108865<br>                                                                                        |[0x80000bea]:c.xor a0, a1<br> [0x80000bec]:sd a0, 808(ra)<br>  |
| 103|[0x80004540]<br>0xFFFFFFFFF7FFFFF9|- rs1_val == -134217729<br>                                                                                                               |[0x80000bfc]:c.xor a0, a1<br> [0x80000bfe]:sd a0, 816(ra)<br>  |
| 104|[0x80004548]<br>0x0000000010000080|- rs1_val == -268435457<br>                                                                                                               |[0x80000c0e]:c.xor a0, a1<br> [0x80000c10]:sd a0, 824(ra)<br>  |
| 105|[0x80004550]<br>0xFFFFFFFFDFFFFFF8|- rs1_val == -536870913<br>                                                                                                               |[0x80000c20]:c.xor a0, a1<br> [0x80000c22]:sd a0, 832(ra)<br>  |
| 106|[0x80004558]<br>0x0000020040000000|- rs2_val == -2199023255553<br> - rs1_val == -1073741825<br>                                                                              |[0x80000c3a]:c.xor a0, a1<br> [0x80000c3c]:sd a0, 840(ra)<br>  |
| 107|[0x80004560]<br>0xFFBFFFFF7FFFFFFF|- rs2_val == 18014398509481984<br> - rs1_val == -2147483649<br>                                                                           |[0x80000c54]:c.xor a0, a1<br> [0x80000c56]:sd a0, 848(ra)<br>  |
| 108|[0x80004568]<br>0x0000000300000000|- rs1_val == -4294967297<br>                                                                                                              |[0x80000c72]:c.xor a0, a1<br> [0x80000c74]:sd a0, 856(ra)<br>  |
| 109|[0x80004570]<br>0x0000000200000200|- rs2_val == -513<br> - rs1_val == -8589934593<br>                                                                                        |[0x80000c88]:c.xor a0, a1<br> [0x80000c8a]:sd a0, 864(ra)<br>  |
| 110|[0x80004578]<br>0xFFFFFFFBFFFFFFF8|- rs1_val == -17179869185<br>                                                                                                             |[0x80000c9e]:c.xor a0, a1<br> [0x80000ca0]:sd a0, 872(ra)<br>  |
| 111|[0x80004580]<br>0x0000000800000008|- rs2_val == -9<br> - rs1_val == -34359738369<br>                                                                                         |[0x80000cb4]:c.xor a0, a1<br> [0x80000cb6]:sd a0, 880(ra)<br>  |
| 112|[0x80004588]<br>0xFFF7FFEFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                             |[0x80000cce]:c.xor a0, a1<br> [0x80000cd0]:sd a0, 888(ra)<br>  |
| 113|[0x80004590]<br>0x0000002000080000|- rs2_val == -524289<br> - rs1_val == -137438953473<br>                                                                                   |[0x80000ce8]:c.xor a0, a1<br> [0x80000cea]:sd a0, 896(ra)<br>  |
| 114|[0x80004598]<br>0xFFFFFFBFDFFFFFFF|- rs1_val == -274877906945<br>                                                                                                            |[0x80000cfe]:c.xor a0, a1<br> [0x80000d00]:sd a0, 904(ra)<br>  |
| 115|[0x800045a0]<br>0xFFFFFF7FFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                            |[0x80000d14]:c.xor a0, a1<br> [0x80000d16]:sd a0, 912(ra)<br>  |
| 116|[0x800045a8]<br>0xEFFFFEFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                           |[0x80000d2e]:c.xor a0, a1<br> [0x80000d30]:sd a0, 920(ra)<br>  |
| 117|[0x800045b0]<br>0x0000020000000800|- rs1_val == -2199023255553<br>                                                                                                           |[0x80000d48]:c.xor a0, a1<br> [0x80000d4a]:sd a0, 928(ra)<br>  |
| 118|[0x800045b8]<br>0xFFFFFBFFFFFDFFFF|- rs1_val == -4398046511105<br>                                                                                                           |[0x80000d5e]:c.xor a0, a1<br> [0x80000d60]:sd a0, 936(ra)<br>  |
| 119|[0x800045c0]<br>0x0000108000000000|- rs2_val == -549755813889<br> - rs1_val == -17592186044417<br>                                                                           |[0x80000d7c]:c.xor a0, a1<br> [0x80000d7e]:sd a0, 944(ra)<br>  |
| 120|[0x800045c8]<br>0xFFFFDFFFFFFFFFDF|- rs1_val == -35184372088833<br>                                                                                                          |[0x80000d92]:c.xor a0, a1<br> [0x80000d94]:sd a0, 952(ra)<br>  |
| 121|[0x800045d0]<br>0xFFFFBFFFFFBFFFFF|- rs1_val == -70368744177665<br>                                                                                                          |[0x80000da8]:c.xor a0, a1<br> [0x80000daa]:sd a0, 960(ra)<br>  |
| 122|[0x800045d8]<br>0x0000840000000000|- rs2_val == -4398046511105<br> - rs1_val == -140737488355329<br>                                                                         |[0x80000dc6]:c.xor a0, a1<br> [0x80000dc8]:sd a0, 968(ra)<br>  |
| 123|[0x800045e0]<br>0xFFFEFFBFFFFFFFFF|- rs2_val == 274877906944<br> - rs1_val == -281474976710657<br>                                                                           |[0x80000de0]:c.xor a0, a1<br> [0x80000de2]:sd a0, 976(ra)<br>  |
| 124|[0x800045e8]<br>0xFBFDFFFFFFFFFFFF|- rs2_val == 288230376151711744<br> - rs1_val == -562949953421313<br>                                                                     |[0x80000dfa]:c.xor a0, a1<br> [0x80000dfc]:sd a0, 984(ra)<br>  |
| 125|[0x800045f0]<br>0x3FFBFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                        |[0x80000e14]:c.xor a0, a1<br> [0x80000e16]:sd a0, 992(ra)<br>  |
| 126|[0x800045f8]<br>0x0008001000000000|- rs1_val == -2251799813685249<br>                                                                                                        |[0x80000e32]:c.xor a0, a1<br> [0x80000e34]:sd a0, 1000(ra)<br> |
| 127|[0x80004600]<br>0x0010000000000003|- rs1_val == -4503599627370497<br>                                                                                                        |[0x80000e48]:c.xor a0, a1<br> [0x80000e4a]:sd a0, 1008(ra)<br> |
| 128|[0x80004608]<br>0xFFDFFFFFEFFFFFFF|- rs2_val == 268435456<br> - rs1_val == -9007199254740993<br>                                                                             |[0x80000e5e]:c.xor a0, a1<br> [0x80000e60]:sd a0, 1016(ra)<br> |
| 129|[0x80004610]<br>0xFFAFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                       |[0x80000e78]:c.xor a0, a1<br> [0x80000e7a]:sd a0, 1024(ra)<br> |
| 130|[0x80004618]<br>0x0500000000000000|- rs1_val == -72057594037927937<br>                                                                                                       |[0x80000e96]:c.xor a0, a1<br> [0x80000e98]:sd a0, 1032(ra)<br> |
| 131|[0x80004620]<br>0xFD7FFFFFFFFFFFFF|- rs2_val == 36028797018963968<br> - rs1_val == -144115188075855873<br>                                                                   |[0x80000eb0]:c.xor a0, a1<br> [0x80000eb2]:sd a0, 1040(ra)<br> |
| 132|[0x80004628]<br>0x0400008000000000|- rs1_val == -288230376151711745<br>                                                                                                      |[0x80000ece]:c.xor a0, a1<br> [0x80000ed0]:sd a0, 1048(ra)<br> |
| 133|[0x80004630]<br>0xF7FFFFFFFFFFFFEF|- rs2_val == 16<br> - rs1_val == -576460752303423489<br>                                                                                  |[0x80000ee4]:c.xor a0, a1<br> [0x80000ee6]:sd a0, 1056(ra)<br> |
| 134|[0x80004638]<br>0x1000000100000000|- rs2_val == -4294967297<br> - rs1_val == -1152921504606846977<br>                                                                        |[0x80000f02]:c.xor a0, a1<br> [0x80000f04]:sd a0, 1064(ra)<br> |
| 135|[0x80004640]<br>0x2000000040000000|- rs1_val == -2305843009213693953<br>                                                                                                     |[0x80000f1c]:c.xor a0, a1<br> [0x80000f1e]:sd a0, 1072(ra)<br> |
| 136|[0x80004648]<br>0xBFFFFFFEFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                     |[0x80000f36]:c.xor a0, a1<br> [0x80000f38]:sd a0, 1080(ra)<br> |
| 137|[0x80004650]<br>0xAAAA2AAAAAAAAAAA|- rs2_val == -140737488355329<br> - rs1_val == 6148914691236517205<br>                                                                    |[0x80000f68]:c.xor a0, a1<br> [0x80000f6a]:sd a0, 1088(ra)<br> |
| 138|[0x80004658]<br>0x555555555555555C|- rs1_val == -6148914691236517206<br>                                                                                                     |[0x80000f92]:c.xor a0, a1<br> [0x80000f94]:sd a0, 1096(ra)<br> |
| 139|[0x80004660]<br>0xFFFFFFFFFFFFFFEB|- rs2_val == 4<br>                                                                                                                        |[0x80000fa0]:c.xor a0, a1<br> [0x80000fa2]:sd a0, 1104(ra)<br> |
| 140|[0x80004668]<br>0xFFFFFFFFF7FFFFF7|- rs2_val == 8<br>                                                                                                                        |[0x80000fb2]:c.xor a0, a1<br> [0x80000fb4]:sd a0, 1112(ra)<br> |
| 141|[0x80004670]<br>0x0000000000000081|- rs2_val == 128<br>                                                                                                                      |[0x80000fc0]:c.xor a0, a1<br> [0x80000fc2]:sd a0, 1120(ra)<br> |
| 142|[0x80004678]<br>0xFFFFFFFFF7FFFEFF|- rs2_val == 256<br>                                                                                                                      |[0x80000fd2]:c.xor a0, a1<br> [0x80000fd4]:sd a0, 1128(ra)<br> |
| 143|[0x80004680]<br>0xFFFFFFEFFFFFFBFF|- rs2_val == 1024<br>                                                                                                                     |[0x80000fe8]:c.xor a0, a1<br> [0x80000fea]:sd a0, 1136(ra)<br> |
| 144|[0x80004688]<br>0xFFFDFFFFFFFFF7FF|- rs2_val == 2048<br>                                                                                                                     |[0x80001002]:c.xor a0, a1<br> [0x80001004]:sd a0, 1144(ra)<br> |
| 145|[0x80004690]<br>0x0000000000002100|- rs2_val == 8192<br>                                                                                                                     |[0x80001010]:c.xor a0, a1<br> [0x80001012]:sd a0, 1152(ra)<br> |
| 146|[0x80004698]<br>0xFFFFFFDFFFFFBFFF|- rs2_val == 16384<br>                                                                                                                    |[0x80001026]:c.xor a0, a1<br> [0x80001028]:sd a0, 1160(ra)<br> |
| 147|[0x800046a0]<br>0xFFFFFFFFFFFF7FEF|- rs2_val == 32768<br>                                                                                                                    |[0x80001034]:c.xor a0, a1<br> [0x80001036]:sd a0, 1168(ra)<br> |
| 148|[0x800046a8]<br>0xFFFFFFFFFFF7FBFF|- rs2_val == 524288<br>                                                                                                                   |[0x80001042]:c.xor a0, a1<br> [0x80001044]:sd a0, 1176(ra)<br> |
| 149|[0x800046b0]<br>0x0000000000200200|- rs2_val == 2097152<br>                                                                                                                  |[0x80001050]:c.xor a0, a1<br> [0x80001052]:sd a0, 1184(ra)<br> |
| 150|[0x800046b8]<br>0x0000000001000003|- rs2_val == 16777216<br>                                                                                                                 |[0x8000105e]:c.xor a0, a1<br> [0x80001060]:sd a0, 1192(ra)<br> |
| 151|[0x800046c0]<br>0xFFFFFFFF7DFFFFFF|- rs2_val == 33554432<br>                                                                                                                 |[0x80001074]:c.xor a0, a1<br> [0x80001076]:sd a0, 1200(ra)<br> |
| 152|[0x800046c8]<br>0x0000000008000040|- rs2_val == 134217728<br>                                                                                                                |[0x80001082]:c.xor a0, a1<br> [0x80001084]:sd a0, 1208(ra)<br> |
| 153|[0x800046d0]<br>0xFFFFFFFF7FFF7FFF|- rs2_val == 2147483648<br>                                                                                                               |[0x80001098]:c.xor a0, a1<br> [0x8000109a]:sd a0, 1216(ra)<br> |
| 154|[0x800046d8]<br>0xFFFFDFFDFFFFFFFF|- rs2_val == 8589934592<br>                                                                                                               |[0x800010b2]:c.xor a0, a1<br> [0x800010b4]:sd a0, 1224(ra)<br> |
| 155|[0x800046e0]<br>0x0800000800000000|- rs2_val == 34359738368<br>                                                                                                              |[0x800010c8]:c.xor a0, a1<br> [0x800010ca]:sd a0, 1232(ra)<br> |
| 156|[0x800046e8]<br>0xFFFFFFEFFFFFFFBF|- rs2_val == 68719476736<br>                                                                                                              |[0x800010da]:c.xor a0, a1<br> [0x800010dc]:sd a0, 1240(ra)<br> |
| 157|[0x800046f0]<br>0xFFFDFFDFFFFFFFFF|- rs2_val == 137438953472<br>                                                                                                             |[0x800010f4]:c.xor a0, a1<br> [0x800010f6]:sd a0, 1248(ra)<br> |
| 158|[0x800046f8]<br>0xFFF7FF7FFFFFFFFF|- rs2_val == 549755813888<br>                                                                                                             |[0x8000110e]:c.xor a0, a1<br> [0x80001110]:sd a0, 1256(ra)<br> |
| 159|[0x80004700]<br>0x0100000000040000|- rs2_val == 72057594037927936<br>                                                                                                        |[0x80001120]:c.xor a0, a1<br> [0x80001122]:sd a0, 1264(ra)<br> |
| 160|[0x80004708]<br>0xFDFFFFFFFFFFFFBF|- rs2_val == 144115188075855872<br>                                                                                                       |[0x80001132]:c.xor a0, a1<br> [0x80001134]:sd a0, 1272(ra)<br> |
| 161|[0x80004710]<br>0x2000800000000000|- rs2_val == 2305843009213693952<br>                                                                                                      |[0x80001148]:c.xor a0, a1<br> [0x8000114a]:sd a0, 1280(ra)<br> |
| 162|[0x80004718]<br>0x0400000000000001|- rs2_val == -2<br>                                                                                                                       |[0x8000115e]:c.xor a0, a1<br> [0x80001160]:sd a0, 1288(ra)<br> |
| 163|[0x80004720]<br>0xFFFFFFFFFFFFFFFC|- rs2_val == -3<br>                                                                                                                       |[0x8000116c]:c.xor a0, a1<br> [0x8000116e]:sd a0, 1296(ra)<br> |
| 164|[0x80004728]<br>0x0002000000000100|- rs2_val == -257<br>                                                                                                                     |[0x80001182]:c.xor a0, a1<br> [0x80001184]:sd a0, 1304(ra)<br> |
| 165|[0x80004730]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -8193<br>                                                                                                                    |[0x80001194]:c.xor a0, a1<br> [0x80001196]:sd a0, 1312(ra)<br> |
| 166|[0x80004738]<br>0x0000000000008100|- rs2_val == -32769<br>                                                                                                                   |[0x800011a6]:c.xor a0, a1<br> [0x800011a8]:sd a0, 1320(ra)<br> |
| 167|[0x80004740]<br>0x0002000000040000|- rs2_val == -262145<br>                                                                                                                  |[0x800011c0]:c.xor a0, a1<br> [0x800011c2]:sd a0, 1328(ra)<br> |
| 168|[0x80004748]<br>0xFFFFBFFFFFEFFFFF|- rs2_val == 70368744177664<br>                                                                                                           |[0x800011d6]:c.xor a0, a1<br> [0x800011d8]:sd a0, 1336(ra)<br> |
| 169|[0x80004750]<br>0xFFF7FFFFFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                 |[0x800011ec]:c.xor a0, a1<br> [0x800011ee]:sd a0, 1344(ra)<br> |
| 170|[0x80004758]<br>0x0000000000400020|- rs2_val == -4194305<br>                                                                                                                 |[0x800011fe]:c.xor a0, a1<br> [0x80001200]:sd a0, 1352(ra)<br> |
| 171|[0x80004760]<br>0xFFFFFFFFFF7FF7FF|- rs2_val == -8388609<br>                                                                                                                 |[0x80001214]:c.xor a0, a1<br> [0x80001216]:sd a0, 1360(ra)<br> |
| 172|[0x80004768]<br>0xF7FFFFFFFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                |[0x8000122a]:c.xor a0, a1<br> [0x8000122c]:sd a0, 1368(ra)<br> |
| 173|[0x80004770]<br>0x0000400008000000|- rs2_val == -134217729<br>                                                                                                               |[0x80001244]:c.xor a0, a1<br> [0x80001246]:sd a0, 1376(ra)<br> |
| 174|[0x80004778]<br>0x0000100010000000|- rs2_val == -268435457<br>                                                                                                               |[0x8000125e]:c.xor a0, a1<br> [0x80001260]:sd a0, 1384(ra)<br> |
| 175|[0x80004780]<br>0xFDFFFFFFDFFFFFFF|- rs2_val == -536870913<br>                                                                                                               |[0x80001274]:c.xor a0, a1<br> [0x80001276]:sd a0, 1392(ra)<br> |
| 176|[0x80004788]<br>0x0000000080000001|- rs2_val == -2147483649<br>                                                                                                              |[0x8000128a]:c.xor a0, a1<br> [0x8000128c]:sd a0, 1400(ra)<br> |
| 177|[0x80004790]<br>0x0000002000000200|- rs2_val == -137438953473<br>                                                                                                            |[0x800012a0]:c.xor a0, a1<br> [0x800012a2]:sd a0, 1408(ra)<br> |
| 178|[0x80004798]<br>0x0002000000200000|- rs2_val == 562949953421312<br>                                                                                                          |[0x800012b2]:c.xor a0, a1<br> [0x800012b4]:sd a0, 1416(ra)<br> |
| 179|[0x800047a0]<br>0xFFFFFDFFFFFEFFFF|- rs2_val == 2199023255552<br>                                                                                                            |[0x800012c8]:c.xor a0, a1<br> [0x800012ca]:sd a0, 1424(ra)<br> |
| 180|[0x800047a8]<br>0xFDFBFFFFFFFFFFFF|- rs2_val == 1125899906842624<br>                                                                                                         |[0x800012e2]:c.xor a0, a1<br> [0x800012e4]:sd a0, 1432(ra)<br> |
| 181|[0x800047b0]<br>0xFFFFF7FDFFFFFFFF|- rs2_val == -8796093022209<br>                                                                                                           |[0x800012fc]:c.xor a0, a1<br> [0x800012fe]:sd a0, 1440(ra)<br> |
| 182|[0x800047b8]<br>0xFFFFEFFFFFFFFDFF|- rs2_val == -17592186044417<br>                                                                                                          |[0x80001312]:c.xor a0, a1<br> [0x80001314]:sd a0, 1448(ra)<br> |
| 183|[0x800047c0]<br>0xFFFFBF7FFFFFFFFF|- rs2_val == -70368744177665<br>                                                                                                          |[0x8000132c]:c.xor a0, a1<br> [0x8000132e]:sd a0, 1456(ra)<br> |
| 184|[0x800047c8]<br>0xFFFF7FFFFFFDFFFF|- rs2_val == 140737488355328<br>                                                                                                          |[0x80001342]:c.xor a0, a1<br> [0x80001344]:sd a0, 1464(ra)<br> |
| 185|[0x800047d0]<br>0x0401000000000000|- rs2_val == -281474976710657<br>                                                                                                         |[0x80001360]:c.xor a0, a1<br> [0x80001362]:sd a0, 1472(ra)<br> |
| 186|[0x800047d8]<br>0x0012000000000000|- rs2_val == -562949953421313<br>                                                                                                         |[0x8000137e]:c.xor a0, a1<br> [0x80001380]:sd a0, 1480(ra)<br> |
| 187|[0x800047e0]<br>0x0004000000000010|- rs2_val == -1125899906842625<br>                                                                                                        |[0x80001394]:c.xor a0, a1<br> [0x80001396]:sd a0, 1488(ra)<br> |
| 188|[0x800047e8]<br>0x0010000400000000|- rs2_val == -4503599627370497<br>                                                                                                        |[0x800013b2]:c.xor a0, a1<br> [0x800013b4]:sd a0, 1496(ra)<br> |
| 189|[0x800047f0]<br>0xFFDF7FFFFFFFFFFF|- rs2_val == 9007199254740992<br>                                                                                                         |[0x800013cc]:c.xor a0, a1<br> [0x800013ce]:sd a0, 1504(ra)<br> |
