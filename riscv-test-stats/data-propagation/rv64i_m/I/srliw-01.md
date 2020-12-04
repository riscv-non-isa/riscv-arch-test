
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e00')]      |
| SIG_REGION                | [('0x80002010', '0x800024c0', '150 dwords')]      |
| COV_LABELS                | srliw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srliw-01.S/srliw-01.S    |
| Total Number of coverpoints| 242     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 150      |
| STAT1                     | 149      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000df0]:srli a1, a0, 16
      [0x80000df4]:sd a1, 1024(tp)
 -- Signature Address: 0x800024b8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srliw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < 32
      - rs1_val == 1024
      - imm_val == 16






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

|s.no|            signature             |                                                                                    coverpoints                                                                                    |                                 code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002010]<br>0x00000000000007FF|- opcode : srliw<br> - rs1 : x29<br> - rd : x29<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == -288230376151711745<br> - imm_val == 21<br>    |[0x800003a4]:srli t4, t4, 21<br> [0x800003a8]:sd t4, 0(ra)<br>        |
|   2|[0x80002018]<br>0x0000000000000000|- rs1 : x10<br> - rd : x16<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == 70368744177664<br>                                                  |[0x800003b4]:srli a6, a0, 14<br> [0x800003b8]:sd a6, 8(ra)<br>        |
|   3|[0x80002020]<br>0xFFFFFFFFFBFFFFFF|- rs1 : x4<br> - rd : x11<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -67108865<br>                                                                                        |[0x800003c4]:srli a1, tp, 0<br> [0x800003c8]:sd a1, 16(ra)<br>        |
|   4|[0x80002028]<br>0x0000000000000003|- rs1 : x19<br> - rd : x26<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val==3<br>                                                                                                 |[0x800003d0]:srli s10, s3, 0<br> [0x800003d4]:sd s10, 24(ra)<br>      |
|   5|[0x80002030]<br>0x0000000000000000|- rs1 : x21<br> - rd : x20<br> - rs1_val < 0 and imm_val == 31<br> - rs1_val==-3037000498<br>                                                                                      |[0x800003e8]:srli s4, s5, 31<br> [0x800003ec]:sd s4, 32(ra)<br>       |
|   6|[0x80002038]<br>0x0000000000000000|- rs1 : x13<br> - rd : x17<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == 140737488355328<br>                                                                                |[0x800003f8]:srli a7, a3, 31<br> [0x800003fc]:sd a7, 40(ra)<br>       |
|   7|[0x80002040]<br>0x0000000000000000|- rs1 : x8<br> - rd : x21<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br> - imm_val == 1<br> |[0x80000404]:srli s5, fp, 1<br> [0x80000408]:sd s5, 48(ra)<br>        |
|   8|[0x80002048]<br>0x0000000000000000|- rs1 : x17<br> - rd : x23<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br> - imm_val == 2<br>                          |[0x80000414]:srli s7, a7, 2<br> [0x80000418]:sd s7, 56(ra)<br>        |
|   9|[0x80002050]<br>0x0000000000000000|- rs1 : x20<br> - rd : x19<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br> - rs1_val==0<br>                                                                               |[0x80000420]:srli s3, s4, 3<br> [0x80000424]:sd s3, 64(ra)<br>        |
|  10|[0x80002058]<br>0x00000000007FFFFF|- rs1 : x2<br> - rd : x10<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br>                                              |[0x80000434]:srli a0, sp, 9<br> [0x80000438]:sd a0, 72(ra)<br>        |
|  11|[0x80002060]<br>0x0000000000000000|- rs1 : x31<br> - rd : x24<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                                 |[0x80000440]:srli s8, t6, 17<br> [0x80000444]:sd s8, 80(ra)<br>       |
|  12|[0x80002068]<br>0x0000000000000000|- rs1 : x24<br> - rd : x9<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                                  |[0x8000044c]:srli s1, s8, 17<br> [0x80000450]:sd s1, 88(ra)<br>       |
|  13|[0x80002070]<br>0x0000000000000000|- rs1 : x7<br> - rd : x4<br> - rs1_val == 8<br>                                                                                                                                    |[0x80000458]:srli tp, t2, 19<br> [0x8000045c]:sd tp, 96(ra)<br>       |
|  14|[0x80002078]<br>0x0000000000000000|- rs1 : x15<br> - rd : x6<br> - rs1_val == 16<br> - imm_val == 8<br>                                                                                                               |[0x80000464]:srli t1, a5, 8<br> [0x80000468]:sd t1, 104(ra)<br>       |
|  15|[0x80002080]<br>0x0000000000000010|- rs1 : x18<br> - rd : x25<br> - rs1_val == 32<br>                                                                                                                                 |[0x80000470]:srli s9, s2, 1<br> [0x80000474]:sd s9, 112(ra)<br>       |
|  16|[0x80002088]<br>0x0000000000000000|- rs1 : x5<br> - rd : x27<br> - rs1_val == 64<br>                                                                                                                                  |[0x8000047c]:srli s11, t0, 31<br> [0x80000480]:sd s11, 120(ra)<br>    |
|  17|[0x80002090]<br>0x0000000000000000|- rs1 : x12<br> - rd : x8<br> - rs1_val == 128<br> - imm_val == 23<br>                                                                                                             |[0x80000488]:srli fp, a2, 23<br> [0x8000048c]:sd fp, 128(ra)<br>      |
|  18|[0x80002098]<br>0x0000000000000000|- rs1 : x0<br> - rd : x3<br>                                                                                                                                                       |[0x80000494]:srli gp, zero, 21<br> [0x80000498]:sd gp, 136(ra)<br>    |
|  19|[0x800020a0]<br>0x0000000000000000|- rs1 : x9<br> - rd : x12<br> - rs1_val == 512<br> - imm_val == 15<br>                                                                                                             |[0x800004a0]:srli a2, s1, 15<br> [0x800004a4]:sd a2, 144(ra)<br>      |
|  20|[0x800020a8]<br>0x0000000000000000|- rs1 : x27<br> - rd : x0<br> - rs1_val == 1024<br> - imm_val == 16<br>                                                                                                            |[0x800004ac]:srli zero, s11, 16<br> [0x800004b0]:sd zero, 152(ra)<br> |
|  21|[0x800020b0]<br>0x0000000000000010|- rs1 : x22<br> - rd : x14<br> - rs1_val == 2048<br>                                                                                                                               |[0x800004bc]:srli a4, s6, 7<br> [0x800004c0]:sd a4, 160(ra)<br>       |
|  22|[0x800020b8]<br>0x0000000000000400|- rs1 : x25<br> - rd : x7<br> - rs1_val == 4096<br>                                                                                                                                |[0x800004d0]:srli t2, s9, 2<br> [0x800004d4]:sd t2, 0(tp)<br>         |
|  23|[0x800020c0]<br>0x0000000000000000|- rs1 : x30<br> - rd : x1<br> - rs1_val == 8192<br>                                                                                                                                |[0x800004dc]:srli ra, t5, 19<br> [0x800004e0]:sd ra, 8(tp)<br>        |
|  24|[0x800020c8]<br>0x0000000000000008|- rs1 : x28<br> - rd : x31<br> - rs1_val == 16384<br>                                                                                                                              |[0x800004e8]:srli t6, t3, 11<br> [0x800004ec]:sd t6, 16(tp)<br>       |
|  25|[0x800020d0]<br>0x0000000000000200|- rs1 : x11<br> - rd : x30<br> - rs1_val == 32768<br>                                                                                                                              |[0x800004f4]:srli t5, a1, 6<br> [0x800004f8]:sd t5, 24(tp)<br>        |
|  26|[0x800020d8]<br>0x0000000000000000|- rs1 : x3<br> - rd : x28<br> - rs1_val == 65536<br>                                                                                                                               |[0x80000500]:srli t3, gp, 31<br> [0x80000504]:sd t3, 32(tp)<br>       |
|  27|[0x800020e0]<br>0x0000000000000000|- rs1 : x23<br> - rd : x5<br> - rs1_val == 131072<br> - imm_val == 27<br>                                                                                                          |[0x8000050c]:srli t0, s7, 27<br> [0x80000510]:sd t0, 40(tp)<br>       |
|  28|[0x800020e8]<br>0x0000000000004000|- rs1 : x14<br> - rd : x2<br> - rs1_val == 262144<br> - imm_val == 4<br>                                                                                                           |[0x80000518]:srli sp, a4, 4<br> [0x8000051c]:sd sp, 48(tp)<br>        |
|  29|[0x800020f0]<br>0x0000000000000008|- rs1 : x1<br> - rd : x18<br> - rs1_val == 524288<br>                                                                                                                              |[0x80000524]:srli s2, ra, 16<br> [0x80000528]:sd s2, 56(tp)<br>       |
|  30|[0x800020f8]<br>0x0000000000000004|- rs1 : x6<br> - rd : x13<br> - rs1_val == 1048576<br>                                                                                                                             |[0x80000530]:srli a3, t1, 18<br> [0x80000534]:sd a3, 64(tp)<br>       |
|  31|[0x80002100]<br>0x0000000000000008|- rs1 : x16<br> - rd : x22<br> - rs1_val == 2097152<br>                                                                                                                            |[0x8000053c]:srli s6, a6, 18<br> [0x80000540]:sd s6, 72(tp)<br>       |
|  32|[0x80002108]<br>0x0000000000000008|- rs1 : x26<br> - rd : x15<br> - rs1_val == 4194304<br>                                                                                                                            |[0x80000548]:srli a5, s10, 19<br> [0x8000054c]:sd a5, 80(tp)<br>      |
|  33|[0x80002110]<br>0x0000000000100000|- rs1_val == 8388608<br>                                                                                                                                                           |[0x80000554]:srli a1, a0, 3<br> [0x80000558]:sd a1, 88(tp)<br>        |
|  34|[0x80002118]<br>0x0000000000002000|- rs1_val == 16777216<br>                                                                                                                                                          |[0x80000560]:srli a1, a0, 11<br> [0x80000564]:sd a1, 96(tp)<br>       |
|  35|[0x80002120]<br>0x0000000000000800|- rs1_val == 33554432<br>                                                                                                                                                          |[0x8000056c]:srli a1, a0, 14<br> [0x80000570]:sd a1, 104(tp)<br>      |
|  36|[0x80002128]<br>0x0000000000000200|- rs1_val == 67108864<br>                                                                                                                                                          |[0x80000578]:srli a1, a0, 17<br> [0x8000057c]:sd a1, 112(tp)<br>      |
|  37|[0x80002130]<br>0x0000000000000000|- rs1_val == 134217728<br> - imm_val == 29<br>                                                                                                                                     |[0x80000584]:srli a1, a0, 29<br> [0x80000588]:sd a1, 120(tp)<br>      |
|  38|[0x80002138]<br>0x0000000004000000|- rs1_val == 268435456<br>                                                                                                                                                         |[0x80000590]:srli a1, a0, 2<br> [0x80000594]:sd a1, 128(tp)<br>       |
|  39|[0x80002140]<br>0x0000000000001000|- rs1_val == 536870912<br>                                                                                                                                                         |[0x8000059c]:srli a1, a0, 17<br> [0x800005a0]:sd a1, 136(tp)<br>      |
|  40|[0x80002148]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                                                                                                                        |[0x800005a8]:srli a1, a0, 31<br> [0x800005ac]:sd a1, 144(tp)<br>      |
|  41|[0x80002150]<br>0x0000000000000001|- rs1_val == 2147483648<br>                                                                                                                                                        |[0x800005b8]:srli a1, a0, 31<br> [0x800005bc]:sd a1, 152(tp)<br>      |
|  42|[0x80002158]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                                        |[0x800005c8]:srli a1, a0, 7<br> [0x800005cc]:sd a1, 160(tp)<br>       |
|  43|[0x80002160]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                                        |[0x800005d8]:srli a1, a0, 14<br> [0x800005dc]:sd a1, 168(tp)<br>      |
|  44|[0x80002168]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                                       |[0x800005e8]:srli a1, a0, 16<br> [0x800005ec]:sd a1, 176(tp)<br>      |
|  45|[0x80002170]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                                       |[0x800005f8]:srli a1, a0, 6<br> [0x800005fc]:sd a1, 184(tp)<br>       |
|  46|[0x80002178]<br>0x0000000000000000|- rs1_val == 68719476736<br> - imm_val == 10<br>                                                                                                                                   |[0x80000608]:srli a1, a0, 10<br> [0x8000060c]:sd a1, 192(tp)<br>      |
|  47|[0x80002180]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                                      |[0x80000618]:srli a1, a0, 31<br> [0x8000061c]:sd a1, 200(tp)<br>      |
|  48|[0x80002188]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                                      |[0x80000628]:srli a1, a0, 8<br> [0x8000062c]:sd a1, 208(tp)<br>       |
|  49|[0x80002190]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                                      |[0x80000638]:srli a1, a0, 6<br> [0x8000063c]:sd a1, 216(tp)<br>       |
|  50|[0x80002198]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                                     |[0x80000648]:srli a1, a0, 12<br> [0x8000064c]:sd a1, 224(tp)<br>      |
|  51|[0x800021a0]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                                     |[0x80000658]:srli a1, a0, 27<br> [0x8000065c]:sd a1, 232(tp)<br>      |
|  52|[0x800021a8]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                                     |[0x80000668]:srli a1, a0, 8<br> [0x8000066c]:sd a1, 240(tp)<br>       |
|  53|[0x800021b0]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                                                     |[0x80000678]:srli a1, a0, 7<br> [0x8000067c]:sd a1, 248(tp)<br>       |
|  54|[0x800021b8]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                                    |[0x80000688]:srli a1, a0, 12<br> [0x8000068c]:sd a1, 256(tp)<br>      |
|  55|[0x800021c0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                                    |[0x80000698]:srli a1, a0, 1<br> [0x8000069c]:sd a1, 264(tp)<br>       |
|  56|[0x800021c8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                   |[0x800006a8]:srli a1, a0, 17<br> [0x800006ac]:sd a1, 272(tp)<br>      |
|  57|[0x800021d0]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                                   |[0x800006b8]:srli a1, a0, 11<br> [0x800006bc]:sd a1, 280(tp)<br>      |
|  58|[0x800021d8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                                  |[0x800006c8]:srli a1, a0, 7<br> [0x800006cc]:sd a1, 288(tp)<br>       |
|  59|[0x800021e0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                                  |[0x800006d8]:srli a1, a0, 29<br> [0x800006dc]:sd a1, 296(tp)<br>      |
|  60|[0x800021e8]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                  |[0x800006e8]:srli a1, a0, 29<br> [0x800006ec]:sd a1, 304(tp)<br>      |
|  61|[0x800021f0]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                                  |[0x800006f8]:srli a1, a0, 10<br> [0x800006fc]:sd a1, 312(tp)<br>      |
|  62|[0x800021f8]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                 |[0x80000708]:srli a1, a0, 23<br> [0x8000070c]:sd a1, 320(tp)<br>      |
|  63|[0x80002200]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                                 |[0x80000718]:srli a1, a0, 5<br> [0x8000071c]:sd a1, 328(tp)<br>       |
|  64|[0x80002208]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                 |[0x80000728]:srli a1, a0, 27<br> [0x8000072c]:sd a1, 336(tp)<br>      |
|  65|[0x80002210]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                |[0x80000738]:srli a1, a0, 9<br> [0x8000073c]:sd a1, 344(tp)<br>       |
|  66|[0x80002218]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                |[0x80000748]:srli a1, a0, 10<br> [0x8000074c]:sd a1, 352(tp)<br>      |
|  67|[0x80002220]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                |[0x80000758]:srli a1, a0, 12<br> [0x8000075c]:sd a1, 360(tp)<br>      |
|  68|[0x80002228]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                               |[0x80000768]:srli a1, a0, 4<br> [0x8000076c]:sd a1, 368(tp)<br>       |
|  69|[0x80002230]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                               |[0x80000778]:srli a1, a0, 0<br> [0x8000077c]:sd a1, 376(tp)<br>       |
|  70|[0x80002238]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                               |[0x80000788]:srli a1, a0, 2<br> [0x8000078c]:sd a1, 384(tp)<br>       |
|  71|[0x80002240]<br>0x000000000001FFFF|- rs1_val == -2<br>                                                                                                                                                                |[0x80000794]:srli a1, a0, 15<br> [0x80000798]:sd a1, 392(tp)<br>      |
|  72|[0x80002248]<br>0x00000000000007FF|- rs1_val == -3<br>                                                                                                                                                                |[0x800007a0]:srli a1, a0, 21<br> [0x800007a4]:sd a1, 400(tp)<br>      |
|  73|[0x80002250]<br>0x0000000000FFFFFF|- rs1_val == -5<br>                                                                                                                                                                |[0x800007ac]:srli a1, a0, 8<br> [0x800007b0]:sd a1, 408(tp)<br>       |
|  74|[0x80002258]<br>0x00000000000FFFFF|- rs1_val == -9<br>                                                                                                                                                                |[0x800007b8]:srli a1, a0, 12<br> [0x800007bc]:sd a1, 416(tp)<br>      |
|  75|[0x80002260]<br>0x0000000000001FFF|- rs1_val == -17<br>                                                                                                                                                               |[0x800007c4]:srli a1, a0, 19<br> [0x800007c8]:sd a1, 424(tp)<br>      |
|  76|[0x80002268]<br>0x00000000000007FF|- rs1_val == -33<br>                                                                                                                                                               |[0x800007d0]:srli a1, a0, 21<br> [0x800007d4]:sd a1, 432(tp)<br>      |
|  77|[0x80002270]<br>0x00000000000007FF|- rs1_val == -65<br>                                                                                                                                                               |[0x800007dc]:srli a1, a0, 21<br> [0x800007e0]:sd a1, 440(tp)<br>      |
|  78|[0x80002278]<br>0x0000000000FFFFFF|- rs1_val == -129<br>                                                                                                                                                              |[0x800007e8]:srli a1, a0, 8<br> [0x800007ec]:sd a1, 448(tp)<br>       |
|  79|[0x80002280]<br>0x0000000003FFFFFB|- rs1_val == -257<br>                                                                                                                                                              |[0x800007f4]:srli a1, a0, 6<br> [0x800007f8]:sd a1, 456(tp)<br>       |
|  80|[0x80002288]<br>0x0000000000000001|- rs1_val == -513<br>                                                                                                                                                              |[0x80000800]:srli a1, a0, 31<br> [0x80000804]:sd a1, 464(tp)<br>      |
|  81|[0x80002290]<br>0x00000000007FFFFD|- rs1_val == -1025<br>                                                                                                                                                             |[0x8000080c]:srli a1, a0, 9<br> [0x80000810]:sd a1, 472(tp)<br>       |
|  82|[0x80002298]<br>0x00000000003FFFFD|- rs1_val == -2049<br>                                                                                                                                                             |[0x8000081c]:srli a1, a0, 10<br> [0x80000820]:sd a1, 480(tp)<br>      |
|  83|[0x800022a0]<br>0x0000000000003FFF|- rs1_val == -4097<br>                                                                                                                                                             |[0x8000082c]:srli a1, a0, 18<br> [0x80000830]:sd a1, 488(tp)<br>      |
|  84|[0x800022a8]<br>0x0000000000000001|- rs1_val == -8193<br>                                                                                                                                                             |[0x8000083c]:srli a1, a0, 31<br> [0x80000840]:sd a1, 496(tp)<br>      |
|  85|[0x800022b0]<br>0x0000000000000001|- rs1_val == -16385<br>                                                                                                                                                            |[0x8000084c]:srli a1, a0, 31<br> [0x80000850]:sd a1, 504(tp)<br>      |
|  86|[0x800022b8]<br>0x0000000007FFFBFF|- rs1_val == -32769<br>                                                                                                                                                            |[0x8000085c]:srli a1, a0, 5<br> [0x80000860]:sd a1, 512(tp)<br>       |
|  87|[0x800022c0]<br>0x0000000000000007|- rs1_val == -65537<br>                                                                                                                                                            |[0x8000086c]:srli a1, a0, 29<br> [0x80000870]:sd a1, 520(tp)<br>      |
|  88|[0x800022c8]<br>0x00000000007FFEFF|- rs1_val == -131073<br>                                                                                                                                                           |[0x8000087c]:srli a1, a0, 9<br> [0x80000880]:sd a1, 528(tp)<br>       |
|  89|[0x800022d0]<br>0x000000000003FFFF|- rs1_val == -9007199254740993<br>                                                                                                                                                 |[0x80000890]:srli a1, a0, 14<br> [0x80000894]:sd a1, 536(tp)<br>      |
|  90|[0x800022d8]<br>0x000000000000001F|- rs1_val == -18014398509481985<br>                                                                                                                                                |[0x800008a4]:srli a1, a0, 27<br> [0x800008a8]:sd a1, 544(tp)<br>      |
|  91|[0x800022e0]<br>0x0000000000003FFF|- rs1_val == -36028797018963969<br>                                                                                                                                                |[0x800008b8]:srli a1, a0, 18<br> [0x800008bc]:sd a1, 552(tp)<br>      |
|  92|[0x800022e8]<br>0x00000000000FFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                                |[0x800008cc]:srli a1, a0, 12<br> [0x800008d0]:sd a1, 560(tp)<br>      |
|  93|[0x800022f0]<br>0x00000000000007FF|- rs1_val == -144115188075855873<br>                                                                                                                                               |[0x800008e0]:srli a1, a0, 21<br> [0x800008e4]:sd a1, 568(tp)<br>      |
|  94|[0x800022f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                               |[0x800008f4]:srli a1, a0, 0<br> [0x800008f8]:sd a1, 576(tp)<br>       |
|  95|[0x80002300]<br>0x0000000003FFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                              |[0x80000908]:srli a1, a0, 6<br> [0x8000090c]:sd a1, 584(tp)<br>       |
|  96|[0x80002308]<br>0x000000000FFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                              |[0x8000091c]:srli a1, a0, 4<br> [0x80000920]:sd a1, 592(tp)<br>       |
|  97|[0x80002310]<br>0x000000000000FFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                              |[0x80000930]:srli a1, a0, 16<br> [0x80000934]:sd a1, 600(tp)<br>      |
|  98|[0x80002318]<br>0x0000000000000001|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br> - imm_val == 30<br>                                                                                        |[0x80000958]:srli a1, a0, 30<br> [0x8000095c]:sd a1, 608(tp)<br>      |
|  99|[0x80002320]<br>0x0000000015555555|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                                                          |[0x80000980]:srli a1, a0, 3<br> [0x80000984]:sd a1, 616(tp)<br>       |
| 100|[0x80002328]<br>0x0000000000000000|- rs1_val==5<br>                                                                                                                                                                   |[0x8000098c]:srli a1, a0, 10<br> [0x80000990]:sd a1, 624(tp)<br>      |
| 101|[0x80002330]<br>0x0000000000000000|- rs1_val==3689348814741910323<br>                                                                                                                                                 |[0x800009b4]:srli a1, a0, 30<br> [0x800009b8]:sd a1, 632(tp)<br>      |
| 102|[0x80002338]<br>0x0000000033333333|- rs1_val==7378697629483820646<br>                                                                                                                                                 |[0x800009dc]:srli a1, a0, 1<br> [0x800009e0]:sd a1, 640(tp)<br>       |
| 103|[0x80002340]<br>0x00000000095F6199|- rs1_val==-3037000499<br>                                                                                                                                                         |[0x800009f4]:srli a1, a0, 3<br> [0x800009f8]:sd a1, 648(tp)<br>       |
| 104|[0x80002348]<br>0x0000000000016A09|- rs1_val==3037000499<br>                                                                                                                                                          |[0x80000a0c]:srli a1, a0, 15<br> [0x80000a10]:sd a1, 656(tp)<br>      |
| 105|[0x80002350]<br>0x0000000001555555|- rs1_val==6148914691236517204<br>                                                                                                                                                 |[0x80000a34]:srli a1, a0, 6<br> [0x80000a38]:sd a1, 664(tp)<br>       |
| 106|[0x80002358]<br>0x0000000000033333|- rs1_val==3689348814741910322<br>                                                                                                                                                 |[0x80000a5c]:srli a1, a0, 12<br> [0x80000a60]:sd a1, 672(tp)<br>      |
| 107|[0x80002360]<br>0x0000000003333333|- rs1_val==7378697629483820645<br>                                                                                                                                                 |[0x80000a84]:srli a1, a0, 5<br> [0x80000a88]:sd a1, 680(tp)<br>       |
| 108|[0x80002368]<br>0x000000000000016A|- rs1_val==3037000498<br>                                                                                                                                                          |[0x80000a9c]:srli a1, a0, 23<br> [0x80000aa0]:sd a1, 688(tp)<br>      |
| 109|[0x80002370]<br>0x000000000000AAAA|- rs1_val==6148914691236517206<br>                                                                                                                                                 |[0x80000ac4]:srli a1, a0, 15<br> [0x80000ac8]:sd a1, 696(tp)<br>      |
| 110|[0x80002378]<br>0x000000000AAAAAAA|- rs1_val==-6148914691236517205<br>                                                                                                                                                |[0x80000aec]:srli a1, a0, 4<br> [0x80000af0]:sd a1, 704(tp)<br>       |
| 111|[0x80002380]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                                                                   |[0x80000af8]:srli a1, a0, 3<br> [0x80000afc]:sd a1, 712(tp)<br>       |
| 112|[0x80002388]<br>0x0000000001999999|- rs1_val==3689348814741910324<br>                                                                                                                                                 |[0x80000b20]:srli a1, a0, 5<br> [0x80000b24]:sd a1, 720(tp)<br>       |
| 113|[0x80002390]<br>0x0000000000066666|- rs1_val==7378697629483820647<br>                                                                                                                                                 |[0x80000b48]:srli a1, a0, 12<br> [0x80000b4c]:sd a1, 728(tp)<br>      |
| 114|[0x80002398]<br>0x0000000005A82799|- rs1_val==3037000500<br>                                                                                                                                                          |[0x80000b60]:srli a1, a0, 5<br> [0x80000b64]:sd a1, 736(tp)<br>       |
| 115|[0x800023a0]<br>0x000000000001FFF7|- rs1_val == -262145<br>                                                                                                                                                           |[0x80000b70]:srli a1, a0, 15<br> [0x80000b74]:sd a1, 744(tp)<br>      |
| 116|[0x800023a8]<br>0x0000000000000007|- rs1_val == -524289<br>                                                                                                                                                           |[0x80000b80]:srli a1, a0, 29<br> [0x80000b84]:sd a1, 752(tp)<br>      |
| 117|[0x800023b0]<br>0x000000007FF7FFFF|- rs1_val == -1048577<br>                                                                                                                                                          |[0x80000b90]:srli a1, a0, 1<br> [0x80000b94]:sd a1, 760(tp)<br>       |
| 118|[0x800023b8]<br>0x0000000000000003|- rs1_val == -2097153<br>                                                                                                                                                          |[0x80000ba0]:srli a1, a0, 30<br> [0x80000ba4]:sd a1, 768(tp)<br>      |
| 119|[0x800023c0]<br>0x00000000000FFBFF|- rs1_val == -4194305<br>                                                                                                                                                          |[0x80000bb0]:srli a1, a0, 12<br> [0x80000bb4]:sd a1, 776(tp)<br>      |
| 120|[0x800023c8]<br>0x000000000007FBFF|- rs1_val == -8388609<br>                                                                                                                                                          |[0x80000bc0]:srli a1, a0, 13<br> [0x80000bc4]:sd a1, 784(tp)<br>      |
| 121|[0x800023d0]<br>0x0000000001FDFFFF|- rs1_val == -16777217<br>                                                                                                                                                         |[0x80000bd0]:srli a1, a0, 7<br> [0x80000bd4]:sd a1, 792(tp)<br>       |
| 122|[0x800023d8]<br>0x00000000003F7FFF|- rs1_val == -33554433<br>                                                                                                                                                         |[0x80000be0]:srli a1, a0, 10<br> [0x80000be4]:sd a1, 800(tp)<br>      |
| 123|[0x800023e0]<br>0x00000000000001EF|- rs1_val == -134217729<br>                                                                                                                                                        |[0x80000bf0]:srli a1, a0, 23<br> [0x80000bf4]:sd a1, 808(tp)<br>      |
| 124|[0x800023e8]<br>0x000000001DFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                        |[0x80000c00]:srli a1, a0, 3<br> [0x80000c04]:sd a1, 816(tp)<br>       |
| 125|[0x800023f0]<br>0x00000000037FFFFF|- rs1_val == -536870913<br>                                                                                                                                                        |[0x80000c10]:srli a1, a0, 6<br> [0x80000c14]:sd a1, 824(tp)<br>       |
| 126|[0x800023f8]<br>0x000000000000017F|- rs1_val == -1073741825<br>                                                                                                                                                       |[0x80000c20]:srli a1, a0, 23<br> [0x80000c24]:sd a1, 832(tp)<br>      |
| 127|[0x80002400]<br>0x00000000003FFFFF|- rs1_val == -2147483649<br>                                                                                                                                                       |[0x80000c34]:srli a1, a0, 9<br> [0x80000c38]:sd a1, 840(tp)<br>       |
| 128|[0x80002408]<br>0x000000000003FFFF|- rs1_val == -4294967297<br>                                                                                                                                                       |[0x80000c48]:srli a1, a0, 14<br> [0x80000c4c]:sd a1, 848(tp)<br>      |
| 129|[0x80002410]<br>0x0000000007FFFFFF|- rs1_val == -8589934593<br>                                                                                                                                                       |[0x80000c5c]:srli a1, a0, 5<br> [0x80000c60]:sd a1, 856(tp)<br>       |
| 130|[0x80002418]<br>0x0000000000000003|- rs1_val == -17179869185<br>                                                                                                                                                      |[0x80000c70]:srli a1, a0, 30<br> [0x80000c74]:sd a1, 864(tp)<br>      |
| 131|[0x80002420]<br>0x000000000FFFFFFF|- rs1_val == -34359738369<br>                                                                                                                                                      |[0x80000c84]:srli a1, a0, 4<br> [0x80000c88]:sd a1, 872(tp)<br>       |
| 132|[0x80002428]<br>0x000000000003FFFF|- rs1_val == -68719476737<br>                                                                                                                                                      |[0x80000c98]:srli a1, a0, 14<br> [0x80000c9c]:sd a1, 880(tp)<br>      |
| 133|[0x80002430]<br>0x00000000001FFFFF|- rs1_val == -137438953473<br>                                                                                                                                                     |[0x80000cac]:srli a1, a0, 11<br> [0x80000cb0]:sd a1, 888(tp)<br>      |
| 134|[0x80002438]<br>0x0000000000001FFF|- rs1_val == -274877906945<br>                                                                                                                                                     |[0x80000cc0]:srli a1, a0, 19<br> [0x80000cc4]:sd a1, 896(tp)<br>      |
| 135|[0x80002440]<br>0x000000001FFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                                     |[0x80000cd4]:srli a1, a0, 3<br> [0x80000cd8]:sd a1, 904(tp)<br>       |
| 136|[0x80002448]<br>0x0000000000000007|- rs1_val == -1099511627777<br>                                                                                                                                                    |[0x80000ce8]:srli a1, a0, 29<br> [0x80000cec]:sd a1, 912(tp)<br>      |
| 137|[0x80002450]<br>0x0000000000007FFF|- rs1_val == -2199023255553<br>                                                                                                                                                    |[0x80000cfc]:srli a1, a0, 17<br> [0x80000d00]:sd a1, 920(tp)<br>      |
| 138|[0x80002458]<br>0x0000000000000003|- rs1_val == -4398046511105<br>                                                                                                                                                    |[0x80000d10]:srli a1, a0, 30<br> [0x80000d14]:sd a1, 928(tp)<br>      |
| 139|[0x80002460]<br>0x0000000000007FFF|- rs1_val == -8796093022209<br>                                                                                                                                                    |[0x80000d24]:srli a1, a0, 17<br> [0x80000d28]:sd a1, 936(tp)<br>      |
| 140|[0x80002468]<br>0x0000000000003FFF|- rs1_val == -17592186044417<br>                                                                                                                                                   |[0x80000d38]:srli a1, a0, 18<br> [0x80000d3c]:sd a1, 944(tp)<br>      |
| 141|[0x80002470]<br>0x000000001FFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                                   |[0x80000d4c]:srli a1, a0, 3<br> [0x80000d50]:sd a1, 952(tp)<br>       |
| 142|[0x80002478]<br>0x0000000003FFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                                   |[0x80000d60]:srli a1, a0, 6<br> [0x80000d64]:sd a1, 960(tp)<br>       |
| 143|[0x80002480]<br>0x00000000003FFFFF|- rs1_val == -140737488355329<br>                                                                                                                                                  |[0x80000d74]:srli a1, a0, 10<br> [0x80000d78]:sd a1, 968(tp)<br>      |
| 144|[0x80002488]<br>0x00000000003FFFFF|- rs1_val == -281474976710657<br>                                                                                                                                                  |[0x80000d88]:srli a1, a0, 10<br> [0x80000d8c]:sd a1, 976(tp)<br>      |
| 145|[0x80002490]<br>0x0000000003FFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                                  |[0x80000d9c]:srli a1, a0, 6<br> [0x80000da0]:sd a1, 984(tp)<br>       |
| 146|[0x80002498]<br>0x00000000000001FF|- rs1_val == -1125899906842625<br>                                                                                                                                                 |[0x80000db0]:srli a1, a0, 23<br> [0x80000db4]:sd a1, 992(tp)<br>      |
| 147|[0x800024a0]<br>0x00000000000007FF|- rs1_val == -2251799813685249<br>                                                                                                                                                 |[0x80000dc4]:srli a1, a0, 21<br> [0x80000dc8]:sd a1, 1000(tp)<br>     |
| 148|[0x800024a8]<br>0x00000000000001FF|- rs1_val == -4503599627370497<br>                                                                                                                                                 |[0x80000dd8]:srli a1, a0, 23<br> [0x80000ddc]:sd a1, 1008(tp)<br>     |
| 149|[0x800024b0]<br>0x0000000000000000|- rs1_val == 256<br>                                                                                                                                                               |[0x80000de4]:srli a1, a0, 21<br> [0x80000de8]:sd a1, 1016(tp)<br>     |
