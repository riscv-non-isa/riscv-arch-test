
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
| SIG_REGION                | [('0x80004208', '0x800047e8', '188 dwords')]      |
| COV_LABELS                | csub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csub-01.S/csub-01.S    |
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
      [0x800013e2]:c.sub a0, a1
      [0x800013e4]:sd a0, 1496(ra)
 -- Signature Address: 0x800047e0 Data: 0xFFFF800000000007
 -- Redundant Coverpoints hit by the op
      - opcode : c.sub
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs1_val == -140737488355329






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
|   1|[0x80004208]<br>0xFFFFFFFEFFFFFF7F|- opcode : c.sub<br> - rs1 : x13<br> - rs2 : x11<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 4294967296<br> - rs1_val == -129<br> |[0x800003a4]:c.sub a3, a1<br> [0x800003a6]:sd a3, 0(ra)<br>    |
|   2|[0x80004210]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x10<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -140737488355329<br> - rs1_val == -140737488355329<br>    |[0x800003ba]:c.sub a0, a0<br> [0x800003bc]:sd a0, 8(ra)<br>    |
|   3|[0x80004218]<br>0x8000000000000008|- rs1 : x9<br> - rs2 : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                      |[0x800003cc]:c.sub s1, a3<br> [0x800003ce]:sd s1, 16(ra)<br>   |
|   4|[0x80004220]<br>0x8000000000000001|- rs1 : x8<br> - rs2 : x15<br> - rs2_val == (2**(xlen-1)-1)<br> - rs1_val == 0<br> - rs2_val == 9223372036854775807<br>                   |[0x800003e2]:c.sub s0, a5<br> [0x800003e4]:sd fp, 24(ra)<br>   |
|   5|[0x80004228]<br>0x7FFFFFFFFFFFFFFE|- rs1 : x11<br> - rs2 : x12<br> - rs2_val == 1<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                  |[0x800003f8]:c.sub a1, a2<br> [0x800003fa]:sd a1, 32(ra)<br>   |
|   6|[0x80004230]<br>0xC000000000000001|- rs1 : x14<br> - rs2 : x9<br> - rs1_val == 1<br> - rs2_val == 4611686018427387904<br>                                                    |[0x8000040a]:c.sub a4, s1<br> [0x8000040c]:sd a4, 40(ra)<br>   |
|   7|[0x80004238]<br>0x8000080000000000|- rs1 : x12<br> - rs2 : x14<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == 8796093022208<br>      |[0x80000420]:c.sub a2, a4<br> [0x80000422]:sd a2, 48(ra)<br>   |
|   8|[0x80004240]<br>0xFFFFFFFFBFFFFFFF|- rs1 : x15<br> - rs2 : x8<br> - rs2_val == 0<br> - rs1_val == -1073741825<br>                                                            |[0x80000432]:c.sub a5, s0<br> [0x80000434]:sd a5, 56(ra)<br>   |
|   9|[0x80004248]<br>0x1000000000000003|- rs2_val == -1152921504606846977<br> - rs1_val == 2<br>                                                                                  |[0x80000448]:c.sub a0, a1<br> [0x8000044a]:sd a0, 64(ra)<br>   |
|  10|[0x80004250]<br>0x0000000000800005|- rs2_val == -8388609<br> - rs1_val == 4<br>                                                                                              |[0x8000045a]:c.sub a0, a1<br> [0x8000045c]:sd a0, 72(ra)<br>   |
|  11|[0x80004258]<br>0x0000010000000009|- rs2_val == -1099511627777<br> - rs1_val == 8<br>                                                                                        |[0x80000470]:c.sub a0, a1<br> [0x80000472]:sd a0, 80(ra)<br>   |
|  12|[0x80004260]<br>0xFFFFFFFFFFC00010|- rs2_val == 4194304<br> - rs1_val == 16<br>                                                                                              |[0x8000047e]:c.sub a0, a1<br> [0x80000480]:sd a0, 88(ra)<br>   |
|  13|[0x80004268]<br>0xFFFFFE0000000020|- rs2_val == 2199023255552<br> - rs1_val == 32<br>                                                                                        |[0x80000490]:c.sub a0, a1<br> [0x80000492]:sd a0, 96(ra)<br>   |
|  14|[0x80004270]<br>0xFFFFFFFFFFFF8040|- rs2_val == 32768<br> - rs1_val == 64<br>                                                                                                |[0x8000049e]:c.sub a0, a1<br> [0x800004a0]:sd a0, 104(ra)<br>  |
|  15|[0x80004278]<br>0x0000010000000081|- rs1_val == 128<br>                                                                                                                      |[0x800004b4]:c.sub a0, a1<br> [0x800004b6]:sd a0, 112(ra)<br>  |
|  16|[0x80004280]<br>0x0020000000000101|- rs2_val == -9007199254740993<br> - rs1_val == 256<br>                                                                                   |[0x800004ca]:c.sub a0, a1<br> [0x800004cc]:sd a0, 120(ra)<br>  |
|  17|[0x80004288]<br>0x0000000000000206|- rs1_val == 512<br>                                                                                                                      |[0x800004d8]:c.sub a0, a1<br> [0x800004da]:sd a0, 128(ra)<br>  |
|  18|[0x80004290]<br>0x0040000000000401|- rs2_val == -18014398509481985<br> - rs1_val == 1024<br>                                                                                 |[0x800004ee]:c.sub a0, a1<br> [0x800004f0]:sd a0, 136(ra)<br>  |
|  19|[0x80004298]<br>0xFFFFFE0000000800|- rs1_val == 2048<br>                                                                                                                     |[0x80000504]:c.sub a0, a1<br> [0x80000506]:sd a0, 144(ra)<br>  |
|  20|[0x800042a0]<br>0xFFFFFFFFFFFFF000|- rs2_val == 8192<br> - rs1_val == 4096<br>                                                                                               |[0x80000512]:c.sub a0, a1<br> [0x80000514]:sd a0, 152(ra)<br>  |
|  21|[0x800042a8]<br>0xFF00000000002000|- rs2_val == 72057594037927936<br> - rs1_val == 8192<br>                                                                                  |[0x80000524]:c.sub a0, a1<br> [0x80000526]:sd a0, 160(ra)<br>  |
|  22|[0x800042b0]<br>0xFFF0000000004000|- rs2_val == 4503599627370496<br> - rs1_val == 16384<br>                                                                                  |[0x80000536]:c.sub a0, a1<br> [0x80000538]:sd a0, 168(ra)<br>  |
|  23|[0x800042b8]<br>0x0000000040008001|- rs2_val == -1073741825<br> - rs1_val == 32768<br>                                                                                       |[0x80000548]:c.sub a0, a1<br> [0x8000054a]:sd a0, 176(ra)<br>  |
|  24|[0x800042c0]<br>0x000000000000FFFF|- rs1_val == 65536<br>                                                                                                                    |[0x80000556]:c.sub a0, a1<br> [0x80000558]:sd a0, 184(ra)<br>  |
|  25|[0x800042c8]<br>0x000000000001FFFA|- rs1_val == 131072<br>                                                                                                                   |[0x80000564]:c.sub a0, a1<br> [0x80000566]:sd a0, 192(ra)<br>  |
|  26|[0x800042d0]<br>0xFFFFFFFE00040000|- rs2_val == 8589934592<br> - rs1_val == 262144<br>                                                                                       |[0x80000576]:c.sub a0, a1<br> [0x80000578]:sd a0, 200(ra)<br>  |
|  27|[0x800042d8]<br>0xF800000000080000|- rs2_val == 576460752303423488<br> - rs1_val == 524288<br>                                                                               |[0x80000588]:c.sub a0, a1<br> [0x8000058a]:sd a0, 208(ra)<br>  |
|  28|[0x800042e0]<br>0x0000000000100006|- rs1_val == 1048576<br>                                                                                                                  |[0x80000596]:c.sub a0, a1<br> [0x80000598]:sd a0, 216(ra)<br>  |
|  29|[0x800042e8]<br>0xFFFFFF8000200000|- rs2_val == 549755813888<br> - rs1_val == 2097152<br>                                                                                    |[0x800005a8]:c.sub a0, a1<br> [0x800005aa]:sd a0, 224(ra)<br>  |
|  30|[0x800042f0]<br>0x00000000003FFE00|- rs2_val == 512<br> - rs1_val == 4194304<br>                                                                                             |[0x800005b6]:c.sub a0, a1<br> [0x800005b8]:sd a0, 232(ra)<br>  |
|  31|[0x800042f8]<br>0xFFFFFFFE00800000|- rs1_val == 8388608<br>                                                                                                                  |[0x800005c8]:c.sub a0, a1<br> [0x800005ca]:sd a0, 240(ra)<br>  |
|  32|[0x80004300]<br>0xFFF8000001000000|- rs2_val == 2251799813685248<br> - rs1_val == 16777216<br>                                                                               |[0x800005da]:c.sub a0, a1<br> [0x800005dc]:sd a0, 248(ra)<br>  |
|  33|[0x80004308]<br>0x0000000802000001|- rs2_val == -34359738369<br> - rs1_val == 33554432<br>                                                                                   |[0x800005f0]:c.sub a0, a1<br> [0x800005f2]:sd a0, 256(ra)<br>  |
|  34|[0x80004310]<br>0x0001000004000001|- rs2_val == -281474976710657<br> - rs1_val == 67108864<br>                                                                               |[0x80000606]:c.sub a0, a1<br> [0x80000608]:sd a0, 264(ra)<br>  |
|  35|[0x80004318]<br>0x0000000007FFF000|- rs2_val == 4096<br> - rs1_val == 134217728<br>                                                                                          |[0x80000614]:c.sub a0, a1<br> [0x80000616]:sd a0, 272(ra)<br>  |
|  36|[0x80004320]<br>0x0000000010004001|- rs2_val == -16385<br> - rs1_val == 268435456<br>                                                                                        |[0x80000626]:c.sub a0, a1<br> [0x80000628]:sd a0, 280(ra)<br>  |
|  37|[0x80004328]<br>0x4000000020000001|- rs2_val == -4611686018427387905<br> - rs1_val == 536870912<br>                                                                          |[0x8000063c]:c.sub a0, a1<br> [0x8000063e]:sd a0, 288(ra)<br>  |
|  38|[0x80004330]<br>0x000000003FFFFFF7|- rs1_val == 1073741824<br>                                                                                                               |[0x8000064a]:c.sub a0, a1<br> [0x8000064c]:sd a0, 296(ra)<br>  |
|  39|[0x80004338]<br>0x0000002080000001|- rs2_val == -137438953473<br> - rs1_val == 2147483648<br>                                                                                |[0x80000664]:c.sub a0, a1<br> [0x80000666]:sd a0, 304(ra)<br>  |
|  40|[0x80004340]<br>0x0000000100000006|- rs1_val == 4294967296<br>                                                                                                               |[0x80000676]:c.sub a0, a1<br> [0x80000678]:sd a0, 312(ra)<br>  |
|  41|[0x80004348]<br>0x0000000200000008|- rs1_val == 8589934592<br>                                                                                                               |[0x80000688]:c.sub a0, a1<br> [0x8000068a]:sd a0, 320(ra)<br>  |
|  42|[0x80004350]<br>0x00000003FFFFFFC0|- rs2_val == 64<br> - rs1_val == 17179869184<br>                                                                                          |[0x8000069a]:c.sub a0, a1<br> [0x8000069c]:sd a0, 328(ra)<br>  |
|  43|[0x80004358]<br>0xAAAAAAB2AAAAAAAB|- rs2_val == 6148914691236517205<br> - rs1_val == 34359738368<br>                                                                         |[0x800006c8]:c.sub a0, a1<br> [0x800006ca]:sd a0, 336(ra)<br>  |
|  44|[0x80004360]<br>0x0000000FFFFFFFF0|- rs2_val == 16<br> - rs1_val == 68719476736<br>                                                                                          |[0x800006da]:c.sub a0, a1<br> [0x800006dc]:sd a0, 344(ra)<br>  |
|  45|[0x80004368]<br>0x0000001000000000|- rs2_val == 68719476736<br> - rs1_val == 137438953472<br>                                                                                |[0x800006f0]:c.sub a0, a1<br> [0x800006f2]:sd a0, 352(ra)<br>  |
|  46|[0x80004370]<br>0x0000004020000001|- rs2_val == -536870913<br> - rs1_val == 274877906944<br>                                                                                 |[0x80000706]:c.sub a0, a1<br> [0x80000708]:sd a0, 360(ra)<br>  |
|  47|[0x80004378]<br>0x0000008000000007|- rs1_val == 549755813888<br>                                                                                                             |[0x80000718]:c.sub a0, a1<br> [0x8000071a]:sd a0, 368(ra)<br>  |
|  48|[0x80004380]<br>0xFFFF810000000000|- rs2_val == 140737488355328<br> - rs1_val == 1099511627776<br>                                                                           |[0x8000072e]:c.sub a0, a1<br> [0x80000730]:sd a0, 376(ra)<br>  |
|  49|[0x80004388]<br>0x000001FFFFFF0000|- rs2_val == 65536<br> - rs1_val == 2199023255552<br>                                                                                     |[0x80000740]:c.sub a0, a1<br> [0x80000742]:sd a0, 384(ra)<br>  |
|  50|[0x80004390]<br>0xFFFF040000000000|- rs2_val == 281474976710656<br> - rs1_val == 4398046511104<br>                                                                           |[0x80000756]:c.sub a0, a1<br> [0x80000758]:sd a0, 392(ra)<br>  |
|  51|[0x80004398]<br>0x0000100004000001|- rs2_val == -67108865<br> - rs1_val == 17592186044416<br>                                                                                |[0x8000076c]:c.sub a0, a1<br> [0x8000076e]:sd a0, 400(ra)<br>  |
|  52|[0x800043a0]<br>0xF800200000000000|- rs1_val == 35184372088832<br>                                                                                                           |[0x80000782]:c.sub a0, a1<br> [0x80000784]:sd a0, 408(ra)<br>  |
|  53|[0x800043a8]<br>0x0000404000000001|- rs2_val == -274877906945<br> - rs1_val == 70368744177664<br>                                                                            |[0x8000079c]:c.sub a0, a1<br> [0x8000079e]:sd a0, 416(ra)<br>  |
|  54|[0x800043b0]<br>0x00007FFFFFFFFF00|- rs2_val == 256<br> - rs1_val == 140737488355328<br>                                                                                     |[0x800007ae]:c.sub a0, a1<br> [0x800007b0]:sd a0, 424(ra)<br>  |
|  55|[0x800043b8]<br>0x0000FFFFFFFFFFC0|- rs1_val == 281474976710656<br>                                                                                                          |[0x800007c0]:c.sub a0, a1<br> [0x800007c2]:sd a0, 432(ra)<br>  |
|  56|[0x800043c0]<br>0x0002800000000001|- rs1_val == 562949953421312<br>                                                                                                          |[0x800007da]:c.sub a0, a1<br> [0x800007dc]:sd a0, 440(ra)<br>  |
|  57|[0x800043c8]<br>0x0004000008000001|- rs2_val == -134217729<br> - rs1_val == 1125899906842624<br>                                                                             |[0x800007f0]:c.sub a0, a1<br> [0x800007f2]:sd a0, 448(ra)<br>  |
|  58|[0x800043d0]<br>0x0008004000000001|- rs1_val == 2251799813685248<br>                                                                                                         |[0x8000080a]:c.sub a0, a1<br> [0x8000080c]:sd a0, 456(ra)<br>  |
|  59|[0x800043d8]<br>0x000FFFFFFFF80000|- rs2_val == 524288<br> - rs1_val == 4503599627370496<br>                                                                                 |[0x8000081c]:c.sub a0, a1<br> [0x8000081e]:sd a0, 464(ra)<br>  |
|  60|[0x800043e0]<br>0x0020000000000002|- rs2_val == -2<br> - rs1_val == 9007199254740992<br>                                                                                     |[0x8000082e]:c.sub a0, a1<br> [0x80000830]:sd a0, 472(ra)<br>  |
|  61|[0x800043e8]<br>0x0040000000004001|- rs1_val == 18014398509481984<br>                                                                                                        |[0x80000844]:c.sub a0, a1<br> [0x80000846]:sd a0, 480(ra)<br>  |
|  62|[0x800043f0]<br>0x4080000000000001|- rs1_val == 36028797018963968<br>                                                                                                        |[0x8000085e]:c.sub a0, a1<br> [0x80000860]:sd a0, 488(ra)<br>  |
|  63|[0x800043f8]<br>0x00FF800000000000|- rs1_val == 72057594037927936<br>                                                                                                        |[0x80000874]:c.sub a0, a1<br> [0x80000876]:sd a0, 496(ra)<br>  |
|  64|[0x80004400]<br>0xC200000000000000|- rs1_val == 144115188075855872<br>                                                                                                       |[0x8000088a]:c.sub a0, a1<br> [0x8000088c]:sd a0, 504(ra)<br>  |
|  65|[0x80004408]<br>0xAEAAAAAAAAAAAAAB|- rs1_val == 288230376151711744<br>                                                                                                       |[0x800008b8]:c.sub a0, a1<br> [0x800008ba]:sd a0, 512(ra)<br>  |
|  66|[0x80004410]<br>0x0800000000000007|- rs1_val == 576460752303423488<br>                                                                                                       |[0x800008ca]:c.sub a0, a1<br> [0x800008cc]:sd a0, 520(ra)<br>  |
|  67|[0x80004418]<br>0x1000000000100001|- rs2_val == -1048577<br> - rs1_val == 1152921504606846976<br>                                                                            |[0x800008e0]:c.sub a0, a1<br> [0x800008e2]:sd a0, 528(ra)<br>  |
|  68|[0x80004420]<br>0x1FFFFFFFFFFFE000|- rs1_val == 2305843009213693952<br>                                                                                                      |[0x800008f2]:c.sub a0, a1<br> [0x800008f4]:sd a0, 536(ra)<br>  |
|  69|[0x80004428]<br>0x4000000000400001|- rs2_val == -4194305<br> - rs1_val == 4611686018427387904<br>                                                                            |[0x80000908]:c.sub a0, a1<br> [0x8000090a]:sd a0, 544(ra)<br>  |
|  70|[0x80004430]<br>0x000000000000001F|- rs2_val == -33<br> - rs1_val == -2<br>                                                                                                  |[0x80000916]:c.sub a0, a1<br> [0x80000918]:sd a0, 552(ra)<br>  |
|  71|[0x80004438]<br>0x000000000000001E|- rs1_val == -3<br>                                                                                                                       |[0x80000924]:c.sub a0, a1<br> [0x80000926]:sd a0, 560(ra)<br>  |
|  72|[0x80004440]<br>0x00000000FFFFFFFC|- rs2_val == -4294967297<br> - rs1_val == -5<br>                                                                                          |[0x8000093a]:c.sub a0, a1<br> [0x8000093c]:sd a0, 568(ra)<br>  |
|  73|[0x80004448]<br>0xFFFFFFFFFEFFFFF7|- rs2_val == 16777216<br> - rs1_val == -9<br>                                                                                             |[0x80000948]:c.sub a0, a1<br> [0x8000094a]:sd a0, 576(ra)<br>  |
|  74|[0x80004450]<br>0x00003FFFFFFFFFF0|- rs2_val == -70368744177665<br> - rs1_val == -17<br>                                                                                     |[0x8000095e]:c.sub a0, a1<br> [0x80000960]:sd a0, 584(ra)<br>  |
|  75|[0x80004458]<br>0x0000000000007FE0|- rs2_val == -32769<br> - rs1_val == -33<br>                                                                                              |[0x80000970]:c.sub a0, a1<br> [0x80000972]:sd a0, 592(ra)<br>  |
|  76|[0x80004460]<br>0xFFFFBFFFFFFFFFBF|- rs2_val == 70368744177664<br> - rs1_val == -65<br>                                                                                      |[0x80000982]:c.sub a0, a1<br> [0x80000984]:sd a0, 600(ra)<br>  |
|  77|[0x80004468]<br>0xFFFFFFFFFFFFFEFE|- rs1_val == -257<br>                                                                                                                     |[0x80000990]:c.sub a0, a1<br> [0x80000992]:sd a0, 608(ra)<br>  |
|  78|[0x80004470]<br>0x0000000003FFFE00|- rs1_val == -513<br>                                                                                                                     |[0x800009a2]:c.sub a0, a1<br> [0x800009a4]:sd a0, 616(ra)<br>  |
|  79|[0x80004478]<br>0x000000000001FC00|- rs2_val == -131073<br> - rs1_val == -1025<br>                                                                                           |[0x800009b4]:c.sub a0, a1<br> [0x800009b6]:sd a0, 624(ra)<br>  |
|  80|[0x80004480]<br>0xFFFFFFFFFFFFF7F7|- rs2_val == 8<br> - rs1_val == -2049<br>                                                                                                 |[0x800009c6]:c.sub a0, a1<br> [0x800009c8]:sd a0, 632(ra)<br>  |
|  81|[0x80004488]<br>0xFFFFFFEFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                    |[0x800009dc]:c.sub a0, a1<br> [0x800009de]:sd a0, 640(ra)<br>  |
|  82|[0x80004490]<br>0x007FFFFFFFFFFFF9|- rs2_val == -36028797018963969<br>                                                                                                       |[0x800009f2]:c.sub a0, a1<br> [0x800009f4]:sd a0, 648(ra)<br>  |
|  83|[0x80004498]<br>0x0100080000000001|- rs2_val == -72057594037927937<br>                                                                                                       |[0x80000a0c]:c.sub a0, a1<br> [0x80000a0e]:sd a0, 656(ra)<br>  |
|  84|[0x800044a0]<br>0x01FFFFFFFFFFFFFA|- rs2_val == -144115188075855873<br>                                                                                                      |[0x80000a22]:c.sub a0, a1<br> [0x80000a24]:sd a0, 664(ra)<br>  |
|  85|[0x800044a8]<br>0x03FFFFFFC0000000|- rs2_val == -288230376151711745<br>                                                                                                      |[0x80000a3c]:c.sub a0, a1<br> [0x80000a3e]:sd a0, 672(ra)<br>  |
|  86|[0x800044b0]<br>0x1800000000000001|- rs2_val == -576460752303423489<br>                                                                                                      |[0x80000a56]:c.sub a0, a1<br> [0x80000a58]:sd a0, 680(ra)<br>  |
|  87|[0x800044b8]<br>0x1FFFE00000000000|- rs2_val == -2305843009213693953<br> - rs1_val == -35184372088833<br>                                                                    |[0x80000a74]:c.sub a0, a1<br> [0x80000a76]:sd a0, 688(ra)<br>  |
|  88|[0x800044c0]<br>0x5555755555555556|- rs2_val == -6148914691236517206<br>                                                                                                     |[0x80000aa2]:c.sub a0, a1<br> [0x80000aa4]:sd a0, 696(ra)<br>  |
|  89|[0x800044c8]<br>0xFFFFFFFFFFFFDFBF|- rs1_val == -8193<br>                                                                                                                    |[0x80000ab4]:c.sub a0, a1<br> [0x80000ab6]:sd a0, 704(ra)<br>  |
|  90|[0x800044d0]<br>0xFFFFFFFFFFFFBFFE|- rs1_val == -16385<br>                                                                                                                   |[0x80000ac6]:c.sub a0, a1<br> [0x80000ac8]:sd a0, 712(ra)<br>  |
|  91|[0x800044d8]<br>0xFFFFFFFFFFBF7FFF|- rs1_val == -32769<br>                                                                                                                   |[0x80000ad8]:c.sub a0, a1<br> [0x80000ada]:sd a0, 720(ra)<br>  |
|  92|[0x800044e0]<br>0xFFFBFFFFFFFEFFFF|- rs2_val == 1125899906842624<br> - rs1_val == -65537<br>                                                                                 |[0x80000aee]:c.sub a0, a1<br> [0x80000af0]:sd a0, 728(ra)<br>  |
|  93|[0x800044e8]<br>0x0000FFFFFFFE0000|- rs1_val == -131073<br>                                                                                                                  |[0x80000b08]:c.sub a0, a1<br> [0x80000b0a]:sd a0, 736(ra)<br>  |
|  94|[0x800044f0]<br>0xFFFFFFFFFFFBFFDF|- rs2_val == 32<br> - rs1_val == -262145<br>                                                                                              |[0x80000b1a]:c.sub a0, a1<br> [0x80000b1c]:sd a0, 744(ra)<br>  |
|  95|[0x800044f8]<br>0xFFFFFFFFFFD7FFFF|- rs2_val == 2097152<br> - rs1_val == -524289<br>                                                                                         |[0x80000b2c]:c.sub a0, a1<br> [0x80000b2e]:sd a0, 752(ra)<br>  |
|  96|[0x80004500]<br>0xFFFFFFFFFFEFFFF7|- rs1_val == -1048577<br>                                                                                                                 |[0x80000b3e]:c.sub a0, a1<br> [0x80000b40]:sd a0, 760(ra)<br>  |
|  97|[0x80004508]<br>0xFFFFFFFFFFDFFBFF|- rs2_val == 1024<br> - rs1_val == -2097153<br>                                                                                           |[0x80000b50]:c.sub a0, a1<br> [0x80000b52]:sd a0, 768(ra)<br>  |
|  98|[0x80004510]<br>0xFFFFFFFFFFC00007|- rs1_val == -4194305<br>                                                                                                                 |[0x80000b62]:c.sub a0, a1<br> [0x80000b64]:sd a0, 776(ra)<br>  |
|  99|[0x80004518]<br>0xFFFFEFFFFF7FFFFF|- rs2_val == 17592186044416<br> - rs1_val == -8388609<br>                                                                                 |[0x80000b78]:c.sub a0, a1<br> [0x80000b7a]:sd a0, 784(ra)<br>  |
| 100|[0x80004520]<br>0xFFFFFFFFFF040000|- rs2_val == -262145<br> - rs1_val == -16777217<br>                                                                                       |[0x80000b8e]:c.sub a0, a1<br> [0x80000b90]:sd a0, 792(ra)<br>  |
| 101|[0x80004528]<br>0x0000FFFFFE000000|- rs1_val == -33554433<br>                                                                                                                |[0x80000ba8]:c.sub a0, a1<br> [0x80000baa]:sd a0, 800(ra)<br>  |
| 102|[0x80004530]<br>0x0007FFFFFC000000|- rs2_val == -2251799813685249<br> - rs1_val == -67108865<br>                                                                             |[0x80000bc2]:c.sub a0, a1<br> [0x80000bc4]:sd a0, 808(ra)<br>  |
| 103|[0x80004538]<br>0xFFFFFFBFF7FFFFFF|- rs2_val == 274877906944<br> - rs1_val == -134217729<br>                                                                                 |[0x80000bd8]:c.sub a0, a1<br> [0x80000bda]:sd a0, 816(ra)<br>  |
| 104|[0x80004540]<br>0x00FFFFFFF0000000|- rs1_val == -268435457<br>                                                                                                               |[0x80000bf2]:c.sub a0, a1<br> [0x80000bf4]:sd a0, 824(ra)<br>  |
| 105|[0x80004548]<br>0xFFFFFFEFDFFFFFFF|- rs1_val == -536870913<br>                                                                                                               |[0x80000c08]:c.sub a0, a1<br> [0x80000c0a]:sd a0, 832(ra)<br>  |
| 106|[0x80004550]<br>0xFFFFFFFF80040000|- rs1_val == -2147483649<br>                                                                                                              |[0x80000c22]:c.sub a0, a1<br> [0x80000c24]:sd a0, 840(ra)<br>  |
| 107|[0x80004558]<br>0xFFFFFFFF00000001|- rs1_val == -4294967297<br>                                                                                                              |[0x80000c38]:c.sub a0, a1<br> [0x80000c3a]:sd a0, 848(ra)<br>  |
| 108|[0x80004560]<br>0x03FFFFFE00000000|- rs1_val == -8589934593<br>                                                                                                              |[0x80000c56]:c.sub a0, a1<br> [0x80000c58]:sd a0, 856(ra)<br>  |
| 109|[0x80004568]<br>0xFFFFFFFC00000005|- rs1_val == -17179869185<br>                                                                                                             |[0x80000c6c]:c.sub a0, a1<br> [0x80000c6e]:sd a0, 864(ra)<br>  |
| 110|[0x80004570]<br>0xAAAAAAA2AAAAAAAA|- rs1_val == -34359738369<br>                                                                                                             |[0x80000c9e]:c.sub a0, a1<br> [0x80000ca0]:sd a0, 872(ra)<br>  |
| 111|[0x80004578]<br>0xFFFFFFEFDFFFFFFF|- rs2_val == 536870912<br> - rs1_val == -68719476737<br>                                                                                  |[0x80000cb4]:c.sub a0, a1<br> [0x80000cb6]:sd a0, 880(ra)<br>  |
| 112|[0x80004580]<br>0xFFFFFF9FFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                            |[0x80000cce]:c.sub a0, a1<br> [0x80000cd0]:sd a0, 888(ra)<br>  |
| 113|[0x80004588]<br>0xAAAAAA6AAAAAAAAA|- rs1_val == -274877906945<br>                                                                                                            |[0x80000d00]:c.sub a0, a1<br> [0x80000d02]:sd a0, 896(ra)<br>  |
| 114|[0x80004590]<br>0xFFFFFF8000001000|- rs2_val == -4097<br> - rs1_val == -549755813889<br>                                                                                     |[0x80000d1a]:c.sub a0, a1<br> [0x80000d1c]:sd a0, 904(ra)<br>  |
| 115|[0x80004598]<br>0xEFFFFEFFFFFFFFFF|- rs2_val == 1152921504606846976<br> - rs1_val == -1099511627777<br>                                                                      |[0x80000d34]:c.sub a0, a1<br> [0x80000d36]:sd a0, 912(ra)<br>  |
| 116|[0x800045a0]<br>0x0003FE0000000000|- rs2_val == -1125899906842625<br> - rs1_val == -2199023255553<br>                                                                        |[0x80000d52]:c.sub a0, a1<br> [0x80000d54]:sd a0, 920(ra)<br>  |
| 117|[0x800045a8]<br>0x7FFFFC0000000000|- rs1_val == -4398046511105<br>                                                                                                           |[0x80000d70]:c.sub a0, a1<br> [0x80000d72]:sd a0, 928(ra)<br>  |
| 118|[0x800045b0]<br>0x003FF80000000000|- rs1_val == -8796093022209<br>                                                                                                           |[0x80000d8e]:c.sub a0, a1<br> [0x80000d90]:sd a0, 936(ra)<br>  |
| 119|[0x800045b8]<br>0xFFFBEFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                          |[0x80000da8]:c.sub a0, a1<br> [0x80000daa]:sd a0, 944(ra)<br>  |
| 120|[0x800045c0]<br>0xFFFFC00800000000|- rs1_val == -70368744177665<br>                                                                                                          |[0x80000dc6]:c.sub a0, a1<br> [0x80000dc8]:sd a0, 952(ra)<br>  |
| 121|[0x800045c8]<br>0xFFFEFFFFFBFFFFFF|- rs2_val == 67108864<br> - rs1_val == -281474976710657<br>                                                                               |[0x80000ddc]:c.sub a0, a1<br> [0x80000dde]:sd a0, 960(ra)<br>  |
| 122|[0x800045d0]<br>0xFFFE000040000000|- rs1_val == -562949953421313<br>                                                                                                         |[0x80000df6]:c.sub a0, a1<br> [0x80000df8]:sd a0, 968(ra)<br>  |
| 123|[0x800045d8]<br>0x007C000000000000|- rs1_val == -1125899906842625<br>                                                                                                        |[0x80000e14]:c.sub a0, a1<br> [0x80000e16]:sd a0, 976(ra)<br>  |
| 124|[0x800045e0]<br>0x0038000000000000|- rs1_val == -2251799813685249<br>                                                                                                        |[0x80000e32]:c.sub a0, a1<br> [0x80000e34]:sd a0, 984(ra)<br>  |
| 125|[0x800045e8]<br>0xFFEFFFFFFFFFFFBF|- rs1_val == -4503599627370497<br>                                                                                                        |[0x80000e48]:c.sub a0, a1<br> [0x80000e4a]:sd a0, 992(ra)<br>  |
| 126|[0x800045f0]<br>0xFFDFFFFBFFFFFFFF|- rs2_val == 17179869184<br> - rs1_val == -9007199254740993<br>                                                                           |[0x80000e62]:c.sub a0, a1<br> [0x80000e64]:sd a0, 1000(ra)<br> |
| 127|[0x800045f8]<br>0xFFC0000000000800|- rs2_val == -2049<br> - rs1_val == -18014398509481985<br>                                                                                |[0x80000e7c]:c.sub a0, a1<br> [0x80000e7e]:sd a0, 1008(ra)<br> |
| 128|[0x80004600]<br>0xFF80000000000080|- rs2_val == -129<br> - rs1_val == -36028797018963969<br>                                                                                 |[0x80000e92]:c.sub a0, a1<br> [0x80000e94]:sd a0, 1016(ra)<br> |
| 129|[0x80004608]<br>0xFEFFFFDFFFFFFFFF|- rs2_val == 137438953472<br> - rs1_val == -72057594037927937<br>                                                                         |[0x80000eac]:c.sub a0, a1<br> [0x80000eae]:sd a0, 1024(ra)<br> |
| 130|[0x80004610]<br>0xFDFFFFFFFFFFFFF8|- rs1_val == -144115188075855873<br>                                                                                                      |[0x80000ec2]:c.sub a0, a1<br> [0x80000ec4]:sd a0, 1032(ra)<br> |
| 131|[0x80004618]<br>0xFBFFFFFFFFFFFFBF|- rs1_val == -288230376151711745<br>                                                                                                      |[0x80000ed8]:c.sub a0, a1<br> [0x80000eda]:sd a0, 1040(ra)<br> |
| 132|[0x80004620]<br>0xF7FFFFFFFFFFEFFF|- rs1_val == -576460752303423489<br>                                                                                                      |[0x80000eee]:c.sub a0, a1<br> [0x80000ef0]:sd a0, 1048(ra)<br> |
| 133|[0x80004628]<br>0xEFFFFFFFFDFFFFFF|- rs2_val == 33554432<br> - rs1_val == -1152921504606846977<br>                                                                           |[0x80000f04]:c.sub a0, a1<br> [0x80000f06]:sd a0, 1056(ra)<br> |
| 134|[0x80004630]<br>0xE000000000000005|- rs1_val == -2305843009213693953<br>                                                                                                     |[0x80000f1a]:c.sub a0, a1<br> [0x80000f1c]:sd a0, 1064(ra)<br> |
| 135|[0x80004638]<br>0xC000000000010000|- rs2_val == -65537<br> - rs1_val == -4611686018427387905<br>                                                                             |[0x80000f34]:c.sub a0, a1<br> [0x80000f36]:sd a0, 1072(ra)<br> |
| 136|[0x80004640]<br>0x5555559555555556|- rs1_val == 6148914691236517205<br>                                                                                                      |[0x80000f66]:c.sub a0, a1<br> [0x80000f68]:sd a0, 1080(ra)<br> |
| 137|[0x80004648]<br>0xAAAAAAAABAAAAAAB|- rs2_val == -268435457<br> - rs1_val == -6148914691236517206<br>                                                                         |[0x80000f94]:c.sub a0, a1<br> [0x80000f96]:sd a0, 1088(ra)<br> |
| 138|[0x80004650]<br>0x00000000000000FE|- rs2_val == 2<br>                                                                                                                        |[0x80000fa2]:c.sub a0, a1<br> [0x80000fa4]:sd a0, 1096(ra)<br> |
| 139|[0x80004658]<br>0xFFFFFFFFFFFFFFF9|- rs2_val == 4<br>                                                                                                                        |[0x80000fb0]:c.sub a0, a1<br> [0x80000fb2]:sd a0, 1104(ra)<br> |
| 140|[0x80004660]<br>0xFFFFFFFFFF7FFF7F|- rs2_val == 128<br>                                                                                                                      |[0x80000fc2]:c.sub a0, a1<br> [0x80000fc4]:sd a0, 1112(ra)<br> |
| 141|[0x80004668]<br>0xFFFFFDFFFFFFF7FF|- rs2_val == 2048<br>                                                                                                                     |[0x80000fdc]:c.sub a0, a1<br> [0x80000fde]:sd a0, 1120(ra)<br> |
| 142|[0x80004670]<br>0xFFFFFFFF7FFFBFFF|- rs2_val == 16384<br>                                                                                                                    |[0x80000ff2]:c.sub a0, a1<br> [0x80000ff4]:sd a0, 1128(ra)<br> |
| 143|[0x80004678]<br>0x000007FFFFFE0000|- rs2_val == 131072<br>                                                                                                                   |[0x80001004]:c.sub a0, a1<br> [0x80001006]:sd a0, 1136(ra)<br> |
| 144|[0x80004680]<br>0x000000007FFC0000|- rs2_val == 262144<br>                                                                                                                   |[0x80001016]:c.sub a0, a1<br> [0x80001018]:sd a0, 1144(ra)<br> |
| 145|[0x80004688]<br>0x00007FFFFFF00000|- rs2_val == 1048576<br>                                                                                                                  |[0x80001028]:c.sub a0, a1<br> [0x8000102a]:sd a0, 1152(ra)<br> |
| 146|[0x80004690]<br>0x0000007FFF800000|- rs2_val == 8388608<br>                                                                                                                  |[0x8000103a]:c.sub a0, a1<br> [0x8000103c]:sd a0, 1160(ra)<br> |
| 147|[0x80004698]<br>0xFFFFFFFFF7FEFFFF|- rs2_val == 134217728<br>                                                                                                                |[0x8000104c]:c.sub a0, a1<br> [0x8000104e]:sd a0, 1168(ra)<br> |
| 148|[0x800046a0]<br>0xFFFFFFFFEFFFFFDF|- rs2_val == 268435456<br>                                                                                                                |[0x8000105a]:c.sub a0, a1<br> [0x8000105c]:sd a0, 1176(ra)<br> |
| 149|[0x800046a8]<br>0xFFFFFFFFC0000005|- rs2_val == 1073741824<br>                                                                                                               |[0x80001068]:c.sub a0, a1<br> [0x8000106a]:sd a0, 1184(ra)<br> |
| 150|[0x800046b0]<br>0xFFFFFFFF7FFFDFFF|- rs2_val == 2147483648<br>                                                                                                               |[0x8000107e]:c.sub a0, a1<br> [0x80001080]:sd a0, 1192(ra)<br> |
| 151|[0x800046b8]<br>0xFFFFFFF7FFFFEFFF|- rs2_val == 34359738368<br>                                                                                                              |[0x80001094]:c.sub a0, a1<br> [0x80001096]:sd a0, 1200(ra)<br> |
| 152|[0x800046c0]<br>0xFFFFFF0000000001|- rs2_val == 1099511627776<br>                                                                                                            |[0x800010a6]:c.sub a0, a1<br> [0x800010a8]:sd a0, 1208(ra)<br> |
| 153|[0x800046c8]<br>0xFFFFFC0000002000|- rs2_val == 4398046511104<br>                                                                                                            |[0x800010b8]:c.sub a0, a1<br> [0x800010ba]:sd a0, 1216(ra)<br> |
| 154|[0x800046d0]<br>0xFFFFF80000000000|- rs2_val == 8796093022208<br>                                                                                                            |[0x800010ca]:c.sub a0, a1<br> [0x800010cc]:sd a0, 1224(ra)<br> |
| 155|[0x800046d8]<br>0xFFFEDFFFFFFFFFFF|- rs2_val == 35184372088832<br>                                                                                                           |[0x800010e4]:c.sub a0, a1<br> [0x800010e6]:sd a0, 1232(ra)<br> |
| 156|[0x800046e0]<br>0xFDFDFFFFFFFFFFFF|- rs2_val == 562949953421312<br>                                                                                                          |[0x800010fe]:c.sub a0, a1<br> [0x80001100]:sd a0, 1240(ra)<br> |
| 157|[0x800046e8]<br>0x01C0000000000000|- rs2_val == 18014398509481984<br>                                                                                                        |[0x80001114]:c.sub a0, a1<br> [0x80001116]:sd a0, 1248(ra)<br> |
| 158|[0x800046f0]<br>0xFF7FFFEFFFFFFFFF|- rs2_val == 36028797018963968<br>                                                                                                        |[0x8000112e]:c.sub a0, a1<br> [0x80001130]:sd a0, 1256(ra)<br> |
| 159|[0x800046f8]<br>0xFDFFFF7FFFFFFFFF|- rs2_val == 144115188075855872<br>                                                                                                       |[0x80001148]:c.sub a0, a1<br> [0x8000114a]:sd a0, 1264(ra)<br> |
| 160|[0x80004700]<br>0xFC00000000010000|- rs2_val == 288230376151711744<br>                                                                                                       |[0x8000115a]:c.sub a0, a1<br> [0x8000115c]:sd a0, 1272(ra)<br> |
| 161|[0x80004708]<br>0xE000000000000004|- rs2_val == 2305843009213693952<br>                                                                                                      |[0x8000116c]:c.sub a0, a1<br> [0x8000116e]:sd a0, 1280(ra)<br> |
| 162|[0x80004710]<br>0x0000000000000013|- rs2_val == -3<br>                                                                                                                       |[0x8000117a]:c.sub a0, a1<br> [0x8000117c]:sd a0, 1288(ra)<br> |
| 163|[0x80004718]<br>0x0000000000008005|- rs2_val == -5<br>                                                                                                                       |[0x80001188]:c.sub a0, a1<br> [0x8000118a]:sd a0, 1296(ra)<br> |
| 164|[0x80004720]<br>0xFFFFFFFFFFFF0008|- rs2_val == -9<br>                                                                                                                       |[0x8000119a]:c.sub a0, a1<br> [0x8000119c]:sd a0, 1304(ra)<br> |
| 165|[0x80004728]<br>0xF800000000000010|- rs2_val == -17<br>                                                                                                                      |[0x800011b0]:c.sub a0, a1<br> [0x800011b2]:sd a0, 1312(ra)<br> |
| 166|[0x80004730]<br>0xFFFFC00000000040|- rs2_val == -65<br>                                                                                                                      |[0x800011c6]:c.sub a0, a1<br> [0x800011c8]:sd a0, 1320(ra)<br> |
| 167|[0x80004738]<br>0xFFFFFFFFFF000100|- rs2_val == -257<br>                                                                                                                     |[0x800011d8]:c.sub a0, a1<br> [0x800011da]:sd a0, 1328(ra)<br> |
| 168|[0x80004740]<br>0x0000000010000201|- rs2_val == -513<br>                                                                                                                     |[0x800011e6]:c.sub a0, a1<br> [0x800011e8]:sd a0, 1336(ra)<br> |
| 169|[0x80004748]<br>0x0000080000000401|- rs2_val == -1025<br>                                                                                                                    |[0x800011f8]:c.sub a0, a1<br> [0x800011fa]:sd a0, 1344(ra)<br> |
| 170|[0x80004750]<br>0xFFFFFFFFFF002000|- rs2_val == -8193<br>                                                                                                                    |[0x8000120e]:c.sub a0, a1<br> [0x80001210]:sd a0, 1352(ra)<br> |
| 171|[0x80004758]<br>0x0004000000080001|- rs2_val == -524289<br>                                                                                                                  |[0x80001224]:c.sub a0, a1<br> [0x80001226]:sd a0, 1360(ra)<br> |
| 172|[0x80004760]<br>0x0000100000200001|- rs2_val == -2097153<br>                                                                                                                 |[0x8000123a]:c.sub a0, a1<br> [0x8000123c]:sd a0, 1368(ra)<br> |
| 173|[0x80004768]<br>0x0000000000FFFE00|- rs2_val == -16777217<br>                                                                                                                |[0x8000124c]:c.sub a0, a1<br> [0x8000124e]:sd a0, 1376(ra)<br> |
| 174|[0x80004770]<br>0x5555555557555556|- rs2_val == -33554433<br>                                                                                                                |[0x8000127a]:c.sub a0, a1<br> [0x8000127c]:sd a0, 1384(ra)<br> |
| 175|[0x80004778]<br>0x000000007FFFF000|- rs2_val == -2147483649<br>                                                                                                              |[0x80001294]:c.sub a0, a1<br> [0x80001296]:sd a0, 1392(ra)<br> |
| 176|[0x80004780]<br>0x0000040200000001|- rs2_val == -8589934593<br>                                                                                                              |[0x800012ae]:c.sub a0, a1<br> [0x800012b0]:sd a0, 1400(ra)<br> |
| 177|[0x80004788]<br>0x8000000400000000|- rs2_val == -17179869185<br>                                                                                                             |[0x800012cc]:c.sub a0, a1<br> [0x800012ce]:sd a0, 1408(ra)<br> |
| 178|[0x80004790]<br>0x0000000FFFF00000|- rs2_val == -68719476737<br>                                                                                                             |[0x800012e6]:c.sub a0, a1<br> [0x800012e8]:sd a0, 1416(ra)<br> |
| 179|[0x80004798]<br>0x0000007C00000000|- rs2_val == -549755813889<br>                                                                                                            |[0x80001304]:c.sub a0, a1<br> [0x80001306]:sd a0, 1424(ra)<br> |
| 180|[0x800047a0]<br>0x0400020000000001|- rs2_val == -2199023255553<br>                                                                                                           |[0x8000131e]:c.sub a0, a1<br> [0x80001320]:sd a0, 1432(ra)<br> |
| 181|[0x800047a8]<br>0x0000040800000001|- rs2_val == -4398046511105<br>                                                                                                           |[0x80001338]:c.sub a0, a1<br> [0x8000133a]:sd a0, 1440(ra)<br> |
| 182|[0x800047b0]<br>0x0000080000000003|- rs2_val == -8796093022209<br>                                                                                                           |[0x8000134e]:c.sub a0, a1<br> [0x80001350]:sd a0, 1448(ra)<br> |
| 183|[0x800047b8]<br>0x0000000000000000|- rs2_val == -17592186044417<br>                                                                                                          |[0x8000136c]:c.sub a0, a1<br> [0x8000136e]:sd a0, 1456(ra)<br> |
| 184|[0x800047c0]<br>0xFFE0000008000000|- rs2_val == 9007199254740992<br>                                                                                                         |[0x8000137e]:c.sub a0, a1<br> [0x80001380]:sd a0, 1464(ra)<br> |
| 185|[0x800047c8]<br>0x0001FFFFFFFFFC00|- rs2_val == -562949953421313<br>                                                                                                         |[0x80001394]:c.sub a0, a1<br> [0x80001396]:sd a0, 1472(ra)<br> |
| 186|[0x800047d0]<br>0x0010000100000001|- rs2_val == -4503599627370497<br>                                                                                                        |[0x800013ae]:c.sub a0, a1<br> [0x800013b0]:sd a0, 1480(ra)<br> |
| 187|[0x800047d8]<br>0xFFFFE00000000000|- rs2_val == -35184372088833<br>                                                                                                          |[0x800013cc]:c.sub a0, a1<br> [0x800013ce]:sd a0, 1488(ra)<br> |
