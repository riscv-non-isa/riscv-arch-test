
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
| SIG_REGION                | [('0x80004208', '0x800047d8', '186 dwords')]      |
| COV_LABELS                | cor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cor-01.S/cor-01.S    |
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
      [0x80000f58]:c.or a0, a1
      [0x80000f5a]:sd a0, 1104(ra)
 -- Signature Address: 0x80004658 Data: 0xFFFFFFBFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : c.or
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val > 0
      - rs2_val == 512
      - rs1_val == -274877906945




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000134e]:c.or a0, a1
      [0x80001350]:sd a0, 1480(ra)
 -- Signature Address: 0x800047d0 Data: 0xFFFFFFFFFFFFFFF6
 -- Redundant Coverpoints hit by the op
      - opcode : c.or
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val < 0
      - rs1_val == 512






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

|s.no|            signature             |                                                                   coverpoints                                                                    |                             code                             |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80004208]<br>0xFFFFFFFFFFFFFFFF|- opcode : c.or<br> - rs1 : x8<br> - rs2 : x15<br> - rs1 != rs2<br> - rs2_val > 0<br> - rs2_val == 64<br> - rs1_val == -65<br>                    |[0x800003a0]:c.or s0, a5<br> [0x800003a2]:sd fp, 0(ra)<br>    |
|   2|[0x80004210]<br>0x0000000000000200|- rs1 : x9<br> - rs2 : x9<br> - rs1 == rs2<br> - rs2_val == 512<br> - rs1_val == 512<br>                                                          |[0x800003ae]:c.or s1, s1<br> [0x800003b0]:sd s1, 8(ra)<br>    |
|   3|[0x80004218]<br>0x8040000000000000|- rs1 : x10<br> - rs2 : x11<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 18014398509481984<br> - rs1_val == -9223372036854775808<br>          |[0x800003c4]:c.or a0, a1<br> [0x800003c6]:sd a0, 16(ra)<br>   |
|   4|[0x80004220]<br>0x0002000000000000|- rs1 : x15<br> - rs2 : x13<br> - rs1_val == 0<br> - rs2_val == 562949953421312<br>                                                               |[0x800003d6]:c.or a5, a3<br> [0x800003d8]:sd a5, 24(ra)<br>   |
|   5|[0x80004228]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x11<br> - rs2 : x14<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val < 0<br> - rs2_val == -2097153<br> - rs1_val == 9223372036854775807<br> |[0x800003f0]:c.or a1, a4<br> [0x800003f2]:sd a1, 32(ra)<br>   |
|   6|[0x80004230]<br>0x0008000000000001|- rs1 : x13<br> - rs2 : x8<br> - rs1_val == 1<br> - rs2_val == 2251799813685248<br>                                                               |[0x80000402]:c.or a3, s0<br> [0x80000404]:sd a3, 40(ra)<br>   |
|   7|[0x80004238]<br>0x8020000000000000|- rs1 : x12<br> - rs2 : x10<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == 9007199254740992<br>           |[0x80000418]:c.or a2, a0<br> [0x8000041a]:sd a2, 48(ra)<br>   |
|   8|[0x80004240]<br>0x0000000080000000|- rs1 : x14<br> - rs2 : x12<br> - rs2_val == 0<br> - rs1_val == 2147483648<br>                                                                    |[0x8000042a]:c.or a4, a2<br> [0x8000042c]:sd a4, 56(ra)<br>   |
|   9|[0x80004248]<br>0x7FFFFFFFFFFFFFFF|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 1048576<br>                                                    |[0x80000440]:c.or a0, a1<br> [0x80000442]:sd a0, 64(ra)<br>   |
|  10|[0x80004250]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == 1<br> - rs1_val == -513<br>                                                                                                          |[0x8000044e]:c.or a0, a1<br> [0x80000450]:sd a0, 72(ra)<br>   |
|  11|[0x80004258]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == -5<br> - rs1_val == 2<br>                                                                                                            |[0x8000045c]:c.or a0, a1<br> [0x8000045e]:sd a0, 80(ra)<br>   |
|  12|[0x80004260]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 4<br>                                                                                                                                |[0x8000046a]:c.or a0, a1<br> [0x8000046c]:sd a0, 88(ra)<br>   |
|  13|[0x80004268]<br>0xFFFFFFFDFFFFFFFF|- rs2_val == -8589934593<br> - rs1_val == 8<br>                                                                                                   |[0x80000480]:c.or a0, a1<br> [0x80000482]:sd a0, 96(ra)<br>   |
|  14|[0x80004270]<br>0xFFFFFFFFFFBFFFFF|- rs2_val == -4194305<br> - rs1_val == 16<br>                                                                                                     |[0x80000492]:c.or a0, a1<br> [0x80000494]:sd a0, 104(ra)<br>  |
|  15|[0x80004278]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == -268435457<br> - rs1_val == 32<br>                                                                                                   |[0x800004a4]:c.or a0, a1<br> [0x800004a6]:sd a0, 112(ra)<br>  |
|  16|[0x80004280]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -2<br> - rs1_val == 64<br>                                                                                                           |[0x800004b2]:c.or a0, a1<br> [0x800004b4]:sd a0, 120(ra)<br>  |
|  17|[0x80004288]<br>0xFFFF7FFFFFFFFFFF|- rs2_val == -140737488355329<br> - rs1_val == 128<br>                                                                                            |[0x800004c8]:c.or a0, a1<br> [0x800004ca]:sd a0, 128(ra)<br>  |
|  18|[0x80004290]<br>0x0080000000000100|- rs2_val == 36028797018963968<br> - rs1_val == 256<br>                                                                                           |[0x800004da]:c.or a0, a1<br> [0x800004dc]:sd a0, 136(ra)<br>  |
|  19|[0x80004298]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == -36028797018963969<br> - rs1_val == 1024<br>                                                                                         |[0x800004f0]:c.or a0, a1<br> [0x800004f2]:sd a0, 144(ra)<br>  |
|  20|[0x800042a0]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == -9<br> - rs1_val == 2048<br>                                                                                                         |[0x80000502]:c.or a0, a1<br> [0x80000504]:sd a0, 152(ra)<br>  |
|  21|[0x800042a8]<br>0x0000000000101000|- rs2_val == 1048576<br> - rs1_val == 4096<br>                                                                                                    |[0x80000510]:c.or a0, a1<br> [0x80000512]:sd a0, 160(ra)<br>  |
|  22|[0x800042b0]<br>0x0000000000002000|- rs2_val == 8192<br> - rs1_val == 8192<br>                                                                                                       |[0x8000051e]:c.or a0, a1<br> [0x80000520]:sd a0, 168(ra)<br>  |
|  23|[0x800042b8]<br>0x0000000000005000|- rs2_val == 4096<br> - rs1_val == 16384<br>                                                                                                      |[0x8000052c]:c.or a0, a1<br> [0x8000052e]:sd a0, 176(ra)<br>  |
|  24|[0x800042c0]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == -2147483649<br> - rs1_val == 32768<br>                                                                                               |[0x80000542]:c.or a0, a1<br> [0x80000544]:sd a0, 184(ra)<br>  |
|  25|[0x800042c8]<br>0x0000000000010002|- rs2_val == 2<br> - rs1_val == 65536<br>                                                                                                         |[0x80000550]:c.or a0, a1<br> [0x80000552]:sd a0, 192(ra)<br>  |
|  26|[0x800042d0]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == 131072<br>                                                                                                                           |[0x80000562]:c.or a0, a1<br> [0x80000564]:sd a0, 200(ra)<br>  |
|  27|[0x800042d8]<br>0xFEFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br> - rs1_val == 262144<br>                                                                                       |[0x80000578]:c.or a0, a1<br> [0x8000057a]:sd a0, 208(ra)<br>  |
|  28|[0x800042e0]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == -257<br> - rs1_val == 524288<br>                                                                                                     |[0x80000586]:c.or a0, a1<br> [0x80000588]:sd a0, 216(ra)<br>  |
|  29|[0x800042e8]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br> - rs1_val == 2097152<br>                                                                                    |[0x8000059c]:c.or a0, a1<br> [0x8000059e]:sd a0, 224(ra)<br>  |
|  30|[0x800042f0]<br>0x1000000000400000|- rs2_val == 1152921504606846976<br> - rs1_val == 4194304<br>                                                                                     |[0x800005ae]:c.or a0, a1<br> [0x800005b0]:sd a0, 232(ra)<br>  |
|  31|[0x800042f8]<br>0x0000000800800000|- rs2_val == 34359738368<br> - rs1_val == 8388608<br>                                                                                             |[0x800005c0]:c.or a0, a1<br> [0x800005c2]:sd a0, 240(ra)<br>  |
|  32|[0x80004300]<br>0x0010000001000000|- rs2_val == 4503599627370496<br> - rs1_val == 16777216<br>                                                                                       |[0x800005d2]:c.or a0, a1<br> [0x800005d4]:sd a0, 248(ra)<br>  |
|  33|[0x80004308]<br>0xFFFFBFFFFFFFFFFF|- rs2_val == -70368744177665<br> - rs1_val == 33554432<br>                                                                                        |[0x800005e8]:c.or a0, a1<br> [0x800005ea]:sd a0, 256(ra)<br>  |
|  34|[0x80004310]<br>0x0000000004000005|- rs1_val == 67108864<br>                                                                                                                         |[0x800005f6]:c.or a0, a1<br> [0x800005f8]:sd a0, 264(ra)<br>  |
|  35|[0x80004318]<br>0x0100000008000000|- rs2_val == 72057594037927936<br> - rs1_val == 134217728<br>                                                                                     |[0x80000608]:c.or a0, a1<br> [0x8000060a]:sd a0, 272(ra)<br>  |
|  36|[0x80004320]<br>0xDFFFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br> - rs1_val == 268435456<br>                                                                                  |[0x8000061e]:c.or a0, a1<br> [0x80000620]:sd a0, 280(ra)<br>  |
|  37|[0x80004328]<br>0x0000200020000000|- rs2_val == 35184372088832<br> - rs1_val == 536870912<br>                                                                                        |[0x80000630]:c.or a0, a1<br> [0x80000632]:sd a0, 288(ra)<br>  |
|  38|[0x80004330]<br>0xBFFFFFFFFFFFFFFF|- rs2_val == -4611686018427387905<br> - rs1_val == 1073741824<br>                                                                                 |[0x80000646]:c.or a0, a1<br> [0x80000648]:sd a0, 296(ra)<br>  |
|  39|[0x80004338]<br>0xFFFFFFFFFFFFFFF6|- rs1_val == 4294967296<br>                                                                                                                       |[0x80000658]:c.or a0, a1<br> [0x8000065a]:sd a0, 304(ra)<br>  |
|  40|[0x80004340]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == 8589934592<br>                                                                                                                       |[0x8000066a]:c.or a0, a1<br> [0x8000066c]:sd a0, 312(ra)<br>  |
|  41|[0x80004348]<br>0xFDFFFFFFFFFFFFFF|- rs2_val == -144115188075855873<br> - rs1_val == 17179869184<br>                                                                                 |[0x80000684]:c.or a0, a1<br> [0x80000686]:sd a0, 320(ra)<br>  |
|  42|[0x80004350]<br>0x0000020800000000|- rs2_val == 2199023255552<br> - rs1_val == 34359738368<br>                                                                                       |[0x8000069a]:c.or a0, a1<br> [0x8000069c]:sd a0, 328(ra)<br>  |
|  43|[0x80004358]<br>0x0000001000000008|- rs2_val == 8<br> - rs1_val == 68719476736<br>                                                                                                   |[0x800006ac]:c.or a0, a1<br> [0x800006ae]:sd a0, 336(ra)<br>  |
|  44|[0x80004360]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == -32769<br> - rs1_val == 137438953472<br>                                                                                             |[0x800006c2]:c.or a0, a1<br> [0x800006c4]:sd a0, 344(ra)<br>  |
|  45|[0x80004368]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == 274877906944<br>                                                                                                                     |[0x800006d8]:c.or a0, a1<br> [0x800006da]:sd a0, 352(ra)<br>  |
|  46|[0x80004370]<br>0xFFFFFFFFFFFFFFF9|- rs1_val == 549755813888<br>                                                                                                                     |[0x800006ea]:c.or a0, a1<br> [0x800006ec]:sd a0, 360(ra)<br>  |
|  47|[0x80004378]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == -65<br> - rs1_val == 1099511627776<br>                                                                                               |[0x800006fc]:c.or a0, a1<br> [0x800006fe]:sd a0, 368(ra)<br>  |
|  48|[0x80004380]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == 2199023255552<br>                                                                                                                    |[0x8000070e]:c.or a0, a1<br> [0x80000710]:sd a0, 376(ra)<br>  |
|  49|[0x80004388]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == 4398046511104<br>                                                                                                                    |[0x80000720]:c.or a0, a1<br> [0x80000722]:sd a0, 384(ra)<br>  |
|  50|[0x80004390]<br>0x0000080000000002|- rs1_val == 8796093022208<br>                                                                                                                    |[0x80000732]:c.or a0, a1<br> [0x80000734]:sd a0, 392(ra)<br>  |
|  51|[0x80004398]<br>0x0000180000000000|- rs2_val == 8796093022208<br> - rs1_val == 17592186044416<br>                                                                                    |[0x80000748]:c.or a0, a1<br> [0x8000074a]:sd a0, 400(ra)<br>  |
|  52|[0x800043a0]<br>0x0000600000000000|- rs2_val == 70368744177664<br> - rs1_val == 35184372088832<br>                                                                                   |[0x8000075e]:c.or a0, a1<br> [0x80000760]:sd a0, 408(ra)<br>  |
|  53|[0x800043a8]<br>0xFFDFFFFFFFFFFFFF|- rs2_val == -9007199254740993<br> - rs1_val == 70368744177664<br>                                                                                |[0x80000778]:c.or a0, a1<br> [0x8000077a]:sd a0, 416(ra)<br>  |
|  54|[0x800043b0]<br>0x0000800000000020|- rs2_val == 32<br> - rs1_val == 140737488355328<br>                                                                                              |[0x8000078a]:c.or a0, a1<br> [0x8000078c]:sd a0, 424(ra)<br>  |
|  55|[0x800043b8]<br>0x0001000000000080|- rs2_val == 128<br> - rs1_val == 281474976710656<br>                                                                                             |[0x8000079c]:c.or a0, a1<br> [0x8000079e]:sd a0, 432(ra)<br>  |
|  56|[0x800043c0]<br>0x0002000000000001|- rs1_val == 562949953421312<br>                                                                                                                  |[0x800007ae]:c.or a0, a1<br> [0x800007b0]:sd a0, 440(ra)<br>  |
|  57|[0x800043c8]<br>0x8004000000000000|- rs1_val == 1125899906842624<br>                                                                                                                 |[0x800007c4]:c.or a0, a1<br> [0x800007c6]:sd a0, 448(ra)<br>  |
|  58|[0x800043d0]<br>0x0008000000000009|- rs1_val == 2251799813685248<br>                                                                                                                 |[0x800007d6]:c.or a0, a1<br> [0x800007d8]:sd a0, 456(ra)<br>  |
|  59|[0x800043d8]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == -65537<br> - rs1_val == 4503599627370496<br>                                                                                         |[0x800007ec]:c.or a0, a1<br> [0x800007ee]:sd a0, 464(ra)<br>  |
|  60|[0x800043e0]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == 18014398509481984<br>                                                                                                                |[0x80000802]:c.or a0, a1<br> [0x80000804]:sd a0, 472(ra)<br>  |
|  61|[0x800043e8]<br>0xFFEFFFFFFFFFFFFF|- rs2_val == -4503599627370497<br> - rs1_val == 36028797018963968<br>                                                                             |[0x8000081c]:c.or a0, a1<br> [0x8000081e]:sd a0, 480(ra)<br>  |
|  62|[0x800043f0]<br>0xFFFFFFBFFFFFFFFF|- rs2_val == -274877906945<br> - rs1_val == 72057594037927936<br>                                                                                 |[0x80000836]:c.or a0, a1<br> [0x80000838]:sd a0, 488(ra)<br>  |
|  63|[0x800043f8]<br>0x0280000000000000|- rs1_val == 144115188075855872<br>                                                                                                               |[0x8000084c]:c.or a0, a1<br> [0x8000084e]:sd a0, 496(ra)<br>  |
|  64|[0x80004400]<br>0x0400000000800000|- rs2_val == 8388608<br> - rs1_val == 288230376151711744<br>                                                                                      |[0x8000085e]:c.or a0, a1<br> [0x80000860]:sd a0, 504(ra)<br>  |
|  65|[0x80004408]<br>0x0800000000004000|- rs2_val == 16384<br> - rs1_val == 576460752303423488<br>                                                                                        |[0x80000870]:c.or a0, a1<br> [0x80000872]:sd a0, 512(ra)<br>  |
|  66|[0x80004410]<br>0x1000200000000000|- rs1_val == 1152921504606846976<br>                                                                                                              |[0x80000886]:c.or a0, a1<br> [0x80000888]:sd a0, 520(ra)<br>  |
|  67|[0x80004418]<br>0x2000200000000000|- rs1_val == 2305843009213693952<br>                                                                                                              |[0x8000089c]:c.or a0, a1<br> [0x8000089e]:sd a0, 528(ra)<br>  |
|  68|[0x80004420]<br>0x4008000000000000|- rs1_val == 4611686018427387904<br>                                                                                                              |[0x800008b2]:c.or a0, a1<br> [0x800008b4]:sd a0, 536(ra)<br>  |
|  69|[0x80004428]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                               |[0x800008c0]:c.or a0, a1<br> [0x800008c2]:sd a0, 544(ra)<br>  |
|  70|[0x80004430]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -67108865<br> - rs1_val == -3<br>                                                                                                    |[0x800008d2]:c.or a0, a1<br> [0x800008d4]:sd a0, 552(ra)<br>  |
|  71|[0x80004438]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -8193<br> - rs1_val == -5<br>                                                                                                        |[0x800008e4]:c.or a0, a1<br> [0x800008e6]:sd a0, 560(ra)<br>  |
|  72|[0x80004440]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == 140737488355328<br> - rs1_val == -9<br>                                                                                              |[0x800008f6]:c.or a0, a1<br> [0x800008f8]:sd a0, 568(ra)<br>  |
|  73|[0x80004448]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -16777217<br> - rs1_val == -17<br>                                                                                                   |[0x80000908]:c.or a0, a1<br> [0x8000090a]:sd a0, 576(ra)<br>  |
|  74|[0x80004450]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                              |[0x80000916]:c.or a0, a1<br> [0x80000918]:sd a0, 584(ra)<br>  |
|  75|[0x80004458]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -536870913<br> - rs1_val == -129<br>                                                                                                 |[0x80000928]:c.or a0, a1<br> [0x8000092a]:sd a0, 592(ra)<br>  |
|  76|[0x80004460]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -134217729<br> - rs1_val == -257<br>                                                                                                 |[0x8000093a]:c.or a0, a1<br> [0x8000093c]:sd a0, 600(ra)<br>  |
|  77|[0x80004468]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                            |[0x80000950]:c.or a0, a1<br> [0x80000952]:sd a0, 608(ra)<br>  |
|  78|[0x80004470]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                            |[0x80000966]:c.or a0, a1<br> [0x80000968]:sd a0, 616(ra)<br>  |
|  79|[0x80004478]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                                            |[0x8000097c]:c.or a0, a1<br> [0x8000097e]:sd a0, 624(ra)<br>  |
|  80|[0x80004480]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == -8193<br>                                                                                                                            |[0x80000992]:c.or a0, a1<br> [0x80000994]:sd a0, 632(ra)<br>  |
|  81|[0x80004488]<br>0xFFBFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br>                                                                                                               |[0x800009a8]:c.or a0, a1<br> [0x800009aa]:sd a0, 640(ra)<br>  |
|  82|[0x80004490]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == -288230376151711745<br>                                                                                                              |[0x800009c2]:c.or a0, a1<br> [0x800009c4]:sd a0, 648(ra)<br>  |
|  83|[0x80004498]<br>0xF7FFFFFFFFFFFFFF|- rs2_val == -576460752303423489<br>                                                                                                              |[0x800009dc]:c.or a0, a1<br> [0x800009de]:sd a0, 656(ra)<br>  |
|  84|[0x800044a0]<br>0x555555555555D555|- rs2_val == 6148914691236517205<br>                                                                                                              |[0x80000a06]:c.or a0, a1<br> [0x80000a08]:sd a0, 664(ra)<br>  |
|  85|[0x800044a8]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == -6148914691236517206<br> - rs1_val == -4294967297<br>                                                                                |[0x80000a38]:c.or a0, a1<br> [0x80000a3a]:sd a0, 672(ra)<br>  |
|  86|[0x800044b0]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -16385<br>                                                                                                                           |[0x80000a4a]:c.or a0, a1<br> [0x80000a4c]:sd a0, 680(ra)<br>  |
|  87|[0x800044b8]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == 4294967296<br> - rs1_val == -32769<br>                                                                                               |[0x80000a60]:c.or a0, a1<br> [0x80000a62]:sd a0, 688(ra)<br>  |
|  88|[0x800044c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -524289<br> - rs1_val == -65537<br>                                                                                                  |[0x80000a76]:c.or a0, a1<br> [0x80000a78]:sd a0, 696(ra)<br>  |
|  89|[0x800044c8]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == 33554432<br> - rs1_val == -131073<br>                                                                                                |[0x80000a88]:c.or a0, a1<br> [0x80000a8a]:sd a0, 704(ra)<br>  |
|  90|[0x800044d0]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == 131072<br> - rs1_val == -262145<br>                                                                                                  |[0x80000a9a]:c.or a0, a1<br> [0x80000a9c]:sd a0, 712(ra)<br>  |
|  91|[0x800044d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -524289<br>                                                                                                                          |[0x80000aac]:c.or a0, a1<br> [0x80000aae]:sd a0, 720(ra)<br>  |
|  92|[0x800044e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1048577<br>                                                                                                                         |[0x80000ac2]:c.or a0, a1<br> [0x80000ac4]:sd a0, 728(ra)<br>  |
|  93|[0x800044e8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -262145<br> - rs1_val == -2097153<br>                                                                                                |[0x80000ad8]:c.or a0, a1<br> [0x80000ada]:sd a0, 736(ra)<br>  |
|  94|[0x800044f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -16385<br> - rs1_val == -4194305<br>                                                                                                 |[0x80000aee]:c.or a0, a1<br> [0x80000af0]:sd a0, 744(ra)<br>  |
|  95|[0x800044f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8388609<br>                                                                                                                         |[0x80000b08]:c.or a0, a1<br> [0x80000b0a]:sd a0, 752(ra)<br>  |
|  96|[0x80004500]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == 262144<br> - rs1_val == -16777217<br>                                                                                                |[0x80000b1a]:c.or a0, a1<br> [0x80000b1c]:sd a0, 760(ra)<br>  |
|  97|[0x80004508]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == 2147483648<br> - rs1_val == -33554433<br>                                                                                            |[0x80000b30]:c.or a0, a1<br> [0x80000b32]:sd a0, 768(ra)<br>  |
|  98|[0x80004510]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == 268435456<br> - rs1_val == -67108865<br>                                                                                             |[0x80000b42]:c.or a0, a1<br> [0x80000b44]:sd a0, 776(ra)<br>  |
|  99|[0x80004518]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == 9007199254740992<br> - rs1_val == -134217729<br>                                                                                     |[0x80000b58]:c.or a0, a1<br> [0x80000b5a]:sd a0, 784(ra)<br>  |
| 100|[0x80004520]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -562949953421313<br> - rs1_val == -268435457<br>                                                                                     |[0x80000b72]:c.or a0, a1<br> [0x80000b74]:sd a0, 792(ra)<br>  |
| 101|[0x80004528]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                       |[0x80000b84]:c.or a0, a1<br> [0x80000b86]:sd a0, 800(ra)<br>  |
| 102|[0x80004530]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == 4398046511104<br> - rs1_val == -1073741825<br>                                                                                       |[0x80000b9a]:c.or a0, a1<br> [0x80000b9c]:sd a0, 808(ra)<br>  |
| 103|[0x80004538]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -33554433<br> - rs1_val == -2147483649<br>                                                                                           |[0x80000bb4]:c.or a0, a1<br> [0x80000bb6]:sd a0, 816(ra)<br>  |
| 104|[0x80004540]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                      |[0x80000bce]:c.or a0, a1<br> [0x80000bd0]:sd a0, 824(ra)<br>  |
| 105|[0x80004548]<br>0xFFFFFFFBFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                     |[0x80000be4]:c.or a0, a1<br> [0x80000be6]:sd a0, 832(ra)<br>  |
| 106|[0x80004550]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                     |[0x80000bfe]:c.or a0, a1<br> [0x80000c00]:sd a0, 840(ra)<br>  |
| 107|[0x80004558]<br>0xFFFFFFEFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                     |[0x80000c14]:c.or a0, a1<br> [0x80000c16]:sd a0, 848(ra)<br>  |
| 108|[0x80004560]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                    |[0x80000c2a]:c.or a0, a1<br> [0x80000c2c]:sd a0, 856(ra)<br>  |
| 109|[0x80004568]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                    |[0x80000c48]:c.or a0, a1<br> [0x80000c4a]:sd a0, 864(ra)<br>  |
| 110|[0x80004570]<br>0xFFFFFF7FFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                    |[0x80000c62]:c.or a0, a1<br> [0x80000c64]:sd a0, 872(ra)<br>  |
| 111|[0x80004578]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -3<br> - rs1_val == -1099511627777<br>                                                                                               |[0x80000c78]:c.or a0, a1<br> [0x80000c7a]:sd a0, 880(ra)<br>  |
| 112|[0x80004580]<br>0xFFFFFDFFFFFFFFFF|- rs2_val == 17179869184<br> - rs1_val == -2199023255553<br>                                                                                      |[0x80000c92]:c.or a0, a1<br> [0x80000c94]:sd a0, 888(ra)<br>  |
| 113|[0x80004588]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                   |[0x80000ca8]:c.or a0, a1<br> [0x80000caa]:sd a0, 896(ra)<br>  |
| 114|[0x80004590]<br>0xFFFFF7FFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                   |[0x80000cc2]:c.or a0, a1<br> [0x80000cc4]:sd a0, 904(ra)<br>  |
| 115|[0x80004598]<br>0xFFFFEFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                  |[0x80000cd8]:c.or a0, a1<br> [0x80000cda]:sd a0, 912(ra)<br>  |
| 116|[0x800045a0]<br>0xFFFFDFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                  |[0x80000cf2]:c.or a0, a1<br> [0x80000cf4]:sd a0, 920(ra)<br>  |
| 117|[0x800045a8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -1125899906842625<br> - rs1_val == -70368744177665<br>                                                                               |[0x80000d10]:c.or a0, a1<br> [0x80000d12]:sd a0, 928(ra)<br>  |
| 118|[0x800045b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -8388609<br> - rs1_val == -140737488355329<br>                                                                                       |[0x80000d2a]:c.or a0, a1<br> [0x80000d2c]:sd a0, 936(ra)<br>  |
| 119|[0x800045b8]<br>0xFFFEFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                 |[0x80000d5c]:c.or a0, a1<br> [0x80000d5e]:sd a0, 944(ra)<br>  |
| 120|[0x800045c0]<br>0xFFFDFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                 |[0x80000d72]:c.or a0, a1<br> [0x80000d74]:sd a0, 952(ra)<br>  |
| 121|[0x800045c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                |[0x80000d8c]:c.or a0, a1<br> [0x80000d8e]:sd a0, 960(ra)<br>  |
| 122|[0x800045d0]<br>0xFFF7FFFFFFFFFFFF|- rs2_val == 68719476736<br> - rs1_val == -2251799813685249<br>                                                                                   |[0x80000da6]:c.or a0, a1<br> [0x80000da8]:sd a0, 968(ra)<br>  |
| 123|[0x800045d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                |[0x80000dc0]:c.or a0, a1<br> [0x80000dc2]:sd a0, 976(ra)<br>  |
| 124|[0x800045e0]<br>0xFFDFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                |[0x80000dd6]:c.or a0, a1<br> [0x80000dd8]:sd a0, 984(ra)<br>  |
| 125|[0x800045e8]<br>0xFFBFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                               |[0x80000df0]:c.or a0, a1<br> [0x80000df2]:sd a0, 992(ra)<br>  |
| 126|[0x800045f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -513<br> - rs1_val == -36028797018963969<br>                                                                                         |[0x80000e06]:c.or a0, a1<br> [0x80000e08]:sd a0, 1000(ra)<br> |
| 127|[0x800045f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                               |[0x80000e1c]:c.or a0, a1<br> [0x80000e1e]:sd a0, 1008(ra)<br> |
| 128|[0x80004600]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                              |[0x80000e32]:c.or a0, a1<br> [0x80000e34]:sd a0, 1016(ra)<br> |
| 129|[0x80004608]<br>0xFBFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                              |[0x80000e48]:c.or a0, a1<br> [0x80000e4a]:sd a0, 1024(ra)<br> |
| 130|[0x80004610]<br>0xF7FFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                              |[0x80000e62]:c.or a0, a1<br> [0x80000e64]:sd a0, 1032(ra)<br> |
| 131|[0x80004618]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                             |[0x80000e7c]:c.or a0, a1<br> [0x80000e7e]:sd a0, 1040(ra)<br> |
| 132|[0x80004620]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                             |[0x80000e92]:c.or a0, a1<br> [0x80000e94]:sd a0, 1048(ra)<br> |
| 133|[0x80004628]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4398046511105<br> - rs1_val == -4611686018427387905<br>                                                                             |[0x80000eb0]:c.or a0, a1<br> [0x80000eb2]:sd a0, 1056(ra)<br> |
| 134|[0x80004630]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == -34359738369<br> - rs1_val == 6148914691236517205<br>                                                                                |[0x80000ee2]:c.or a0, a1<br> [0x80000ee4]:sd a0, 1064(ra)<br> |
| 135|[0x80004638]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -6148914691236517206<br>                                                                                                             |[0x80000f0c]:c.or a0, a1<br> [0x80000f0e]:sd a0, 1072(ra)<br> |
| 136|[0x80004640]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == 4<br>                                                                                                                                |[0x80000f22]:c.or a0, a1<br> [0x80000f24]:sd a0, 1080(ra)<br> |
| 137|[0x80004648]<br>0x0000000100000010|- rs2_val == 16<br>                                                                                                                               |[0x80000f34]:c.or a0, a1<br> [0x80000f36]:sd a0, 1088(ra)<br> |
| 138|[0x80004650]<br>0x0000000000004100|- rs2_val == 256<br>                                                                                                                              |[0x80000f42]:c.or a0, a1<br> [0x80000f44]:sd a0, 1096(ra)<br> |
| 139|[0x80004660]<br>0xFFFFFDFFFFFFFFFF|- rs2_val == 1024<br>                                                                                                                             |[0x80000f6e]:c.or a0, a1<br> [0x80000f70]:sd a0, 1112(ra)<br> |
| 140|[0x80004668]<br>0x0000000000000801|- rs2_val == 2048<br>                                                                                                                             |[0x80000f80]:c.or a0, a1<br> [0x80000f82]:sd a0, 1120(ra)<br> |
| 141|[0x80004670]<br>0x0000400000008000|- rs2_val == 32768<br>                                                                                                                            |[0x80000f92]:c.or a0, a1<br> [0x80000f94]:sd a0, 1128(ra)<br> |
| 142|[0x80004678]<br>0xFFFBFFFFFFFFFFFF|- rs2_val == 65536<br>                                                                                                                            |[0x80000fa8]:c.or a0, a1<br> [0x80000faa]:sd a0, 1136(ra)<br> |
| 143|[0x80004680]<br>0x1000000000080000|- rs2_val == 524288<br>                                                                                                                           |[0x80000fba]:c.or a0, a1<br> [0x80000fbc]:sd a0, 1144(ra)<br> |
| 144|[0x80004688]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == 2097152<br>                                                                                                                          |[0x80000fd0]:c.or a0, a1<br> [0x80000fd2]:sd a0, 1152(ra)<br> |
| 145|[0x80004690]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == 4194304<br>                                                                                                                          |[0x80000fe6]:c.or a0, a1<br> [0x80000fe8]:sd a0, 1160(ra)<br> |
| 146|[0x80004698]<br>0xFFFFFFFFFFFFFFF8|- rs2_val == 16777216<br>                                                                                                                         |[0x80000ff4]:c.or a0, a1<br> [0x80000ff6]:sd a0, 1168(ra)<br> |
| 147|[0x800046a0]<br>0x0000000004000000|- rs2_val == 67108864<br>                                                                                                                         |[0x80001002]:c.or a0, a1<br> [0x80001004]:sd a0, 1176(ra)<br> |
| 148|[0x800046a8]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == 134217728<br>                                                                                                                        |[0x80001014]:c.or a0, a1<br> [0x80001016]:sd a0, 1184(ra)<br> |
| 149|[0x800046b0]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == 536870912<br>                                                                                                                        |[0x80001022]:c.or a0, a1<br> [0x80001024]:sd a0, 1192(ra)<br> |
| 150|[0x800046b8]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == 1073741824<br>                                                                                                                       |[0x80001034]:c.or a0, a1<br> [0x80001036]:sd a0, 1200(ra)<br> |
| 151|[0x800046c0]<br>0x0000000200000000|- rs2_val == 8589934592<br>                                                                                                                       |[0x8000104a]:c.or a0, a1<br> [0x8000104c]:sd a0, 1208(ra)<br> |
| 152|[0x800046c8]<br>0x0000002000200000|- rs2_val == 137438953472<br>                                                                                                                     |[0x8000105c]:c.or a0, a1<br> [0x8000105e]:sd a0, 1216(ra)<br> |
| 153|[0x800046d0]<br>0x0000005000000000|- rs2_val == 274877906944<br>                                                                                                                     |[0x80001072]:c.or a0, a1<br> [0x80001074]:sd a0, 1224(ra)<br> |
| 154|[0x800046d8]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == 144115188075855872<br>                                                                                                               |[0x80001084]:c.or a0, a1<br> [0x80001086]:sd a0, 1232(ra)<br> |
| 155|[0x800046e0]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == 288230376151711744<br>                                                                                                               |[0x8000109a]:c.or a0, a1<br> [0x8000109c]:sd a0, 1240(ra)<br> |
| 156|[0x800046e8]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == 576460752303423488<br>                                                                                                               |[0x800010b4]:c.or a0, a1<br> [0x800010b6]:sd a0, 1248(ra)<br> |
| 157|[0x800046f0]<br>0xFFBFFFFFFFFFFFFF|- rs2_val == 2305843009213693952<br>                                                                                                              |[0x800010ce]:c.or a0, a1<br> [0x800010d0]:sd a0, 1256(ra)<br> |
| 158|[0x800046f8]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == 4611686018427387904<br>                                                                                                              |[0x800010e8]:c.or a0, a1<br> [0x800010ea]:sd a0, 1264(ra)<br> |
| 159|[0x80004700]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == -17<br>                                                                                                                              |[0x800010fa]:c.or a0, a1<br> [0x800010fc]:sd a0, 1272(ra)<br> |
| 160|[0x80004708]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -33<br>                                                                                                                              |[0x80001110]:c.or a0, a1<br> [0x80001112]:sd a0, 1280(ra)<br> |
| 161|[0x80004710]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == -129<br>                                                                                                                             |[0x80001122]:c.or a0, a1<br> [0x80001124]:sd a0, 1288(ra)<br> |
| 162|[0x80004718]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -1025<br>                                                                                                                            |[0x80001134]:c.or a0, a1<br> [0x80001136]:sd a0, 1296(ra)<br> |
| 163|[0x80004720]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == -2049<br>                                                                                                                            |[0x80001146]:c.or a0, a1<br> [0x80001148]:sd a0, 1304(ra)<br> |
| 164|[0x80004728]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -4097<br>                                                                                                                            |[0x80001160]:c.or a0, a1<br> [0x80001162]:sd a0, 1312(ra)<br> |
| 165|[0x80004730]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -131073<br>                                                                                                                          |[0x8000117a]:c.or a0, a1<br> [0x8000117c]:sd a0, 1320(ra)<br> |
| 166|[0x80004738]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                         |[0x80001190]:c.or a0, a1<br> [0x80001192]:sd a0, 1328(ra)<br> |
| 167|[0x80004740]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                      |[0x800011aa]:c.or a0, a1<br> [0x800011ac]:sd a0, 1336(ra)<br> |
| 168|[0x80004748]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == -4294967297<br>                                                                                                                      |[0x800011c4]:c.or a0, a1<br> [0x800011c6]:sd a0, 1344(ra)<br> |
| 169|[0x80004750]<br>0x0005000000000000|- rs2_val == 281474976710656<br>                                                                                                                  |[0x800011da]:c.or a0, a1<br> [0x800011dc]:sd a0, 1352(ra)<br> |
| 170|[0x80004758]<br>0xFFFFFFFBFFFFFFFF|- rs2_val == -17179869185<br>                                                                                                                     |[0x800011f0]:c.or a0, a1<br> [0x800011f2]:sd a0, 1360(ra)<br> |
| 171|[0x80004760]<br>0xFFFFFFEFFFFFFFFF|- rs2_val == -68719476737<br>                                                                                                                     |[0x8000120a]:c.or a0, a1<br> [0x8000120c]:sd a0, 1368(ra)<br> |
| 172|[0x80004768]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -137438953473<br>                                                                                                                    |[0x80001228]:c.or a0, a1<br> [0x8000122a]:sd a0, 1376(ra)<br> |
| 173|[0x80004770]<br>0x0000008000000040|- rs2_val == 549755813888<br>                                                                                                                     |[0x8000123a]:c.or a0, a1<br> [0x8000123c]:sd a0, 1384(ra)<br> |
| 174|[0x80004778]<br>0xFFFFFF7FFFFFFFFF|- rs2_val == -549755813889<br>                                                                                                                    |[0x80001254]:c.or a0, a1<br> [0x80001256]:sd a0, 1392(ra)<br> |
| 175|[0x80004780]<br>0x0080010000000000|- rs2_val == 1099511627776<br>                                                                                                                    |[0x8000126a]:c.or a0, a1<br> [0x8000126c]:sd a0, 1400(ra)<br> |
| 176|[0x80004788]<br>0xFFFFFEFFFFFFFFFF|- rs2_val == -1099511627777<br>                                                                                                                   |[0x80001280]:c.or a0, a1<br> [0x80001282]:sd a0, 1408(ra)<br> |
| 177|[0x80004790]<br>0xFFFFFDFFFFFFFFFF|- rs2_val == -2199023255553<br>                                                                                                                   |[0x80001296]:c.or a0, a1<br> [0x80001298]:sd a0, 1416(ra)<br> |
| 178|[0x80004798]<br>0xFFFFF7FFFFFFFFFF|- rs2_val == -8796093022209<br>                                                                                                                   |[0x800012ac]:c.or a0, a1<br> [0x800012ae]:sd a0, 1424(ra)<br> |
| 179|[0x800047a0]<br>0x0040100000000000|- rs2_val == 17592186044416<br>                                                                                                                   |[0x800012c2]:c.or a0, a1<br> [0x800012c4]:sd a0, 1432(ra)<br> |
| 180|[0x800047a8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -17592186044417<br>                                                                                                                  |[0x800012dc]:c.or a0, a1<br> [0x800012de]:sd a0, 1440(ra)<br> |
| 181|[0x800047b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == -281474976710657<br>                                                                                                                 |[0x800012fa]:c.or a0, a1<br> [0x800012fc]:sd a0, 1448(ra)<br> |
| 182|[0x800047b8]<br>0x0004000080000000|- rs2_val == 1125899906842624<br>                                                                                                                 |[0x80001310]:c.or a0, a1<br> [0x80001312]:sd a0, 1456(ra)<br> |
| 183|[0x800047c0]<br>0xFFF7FFFFFFFFFFFF|- rs2_val == -2251799813685249<br>                                                                                                                |[0x80001326]:c.or a0, a1<br> [0x80001328]:sd a0, 1464(ra)<br> |
| 184|[0x800047c8]<br>0xFFFFDFFFFFFFFFFF|- rs2_val == -35184372088833<br>                                                                                                                  |[0x80001340]:c.or a0, a1<br> [0x80001342]:sd a0, 1472(ra)<br> |
