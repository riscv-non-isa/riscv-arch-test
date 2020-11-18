
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e10')]      |
| SIG_REGION                | [('0x80002208', '0x800026c0', '151 dwords')]      |
| COV_LABELS                | srli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 244      |
| Total Signature Updates   | 151      |
| STAT1                     | 150      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dfc]:srli a1, a0, 18
      [0x80000e00]:sd a1, 1024(sp)
 -- Signature Address: 0x800026b0 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 2
      - rs1_val==2






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

|s.no|            signature             |                                                                        coverpoints                                                                        |                                code                                |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002208]<br>0x0001FFF7FFFFFFFF|- opcode : srli<br> - rs1 : x16<br> - rd : x16<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -1125899906842625<br> |[0x800003a4]:srli a6, a6, 15<br> [0x800003a8]:sd a6, 0(a1)<br>      |
|   2|[0x80002210]<br>0x0000000000000000|- rs1 : x15<br> - rd : x23<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 134217728<br> - imm_val == 62<br>         |[0x800003b0]:srli s7, a5, 62<br> [0x800003b4]:sd s7, 8(a1)<br>      |
|   3|[0x80002218]<br>0xFFFFFFFFFFFFFFFB|- rs1 : x31<br> - rd : x22<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -5<br>                                                                      |[0x800003bc]:srli s6, t6, 0<br> [0x800003c0]:sd s6, 16(a1)<br>      |
|   4|[0x80002220]<br>0x0000080000000000|- rs1 : x2<br> - rd : x31<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 8796093022208<br>                                                            |[0x800003cc]:srli t6, sp, 0<br> [0x800003d0]:sd t6, 24(a1)<br>      |
|   5|[0x80002228]<br>0x0000000000000001|- rs1 : x8<br> - rd : x6<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>           |[0x800003f4]:srli t1, fp, 63<br> [0x800003f8]:sd t1, 32(a1)<br>     |
|   6|[0x80002230]<br>0x0000000000000000|- rs1 : x23<br> - rd : x29<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 1125899906842624<br>                                                 |[0x80000404]:srli t4, s7, 63<br> [0x80000408]:sd t4, 40(a1)<br>     |
|   7|[0x80002238]<br>0x0000000000000000|- rs1 : x30<br> - rd : x4<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 8<br> - imm_val == 8<br>                            |[0x80000410]:srli tp, t5, 8<br> [0x80000414]:sd tp, 48(a1)<br>      |
|   8|[0x80002240]<br>0x0008000000000000|- rs1 : x7<br> - rd : x2<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>                     |[0x80000420]:srli sp, t2, 12<br> [0x80000424]:sd sp, 56(a1)<br>     |
|   9|[0x80002248]<br>0x0000000000000000|- rs1 : x13<br> - rd : x5<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br> - imm_val == 47<br>                                  |[0x8000042c]:srli t0, a3, 47<br> [0x80000430]:sd t0, 64(a1)<br>     |
|  10|[0x80002250]<br>0x00FFFFFFFFFFFFFF|- rs1 : x4<br> - rd : x3<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                     |[0x80000440]:srli gp, tp, 7<br> [0x80000444]:sd gp, 72(a1)<br>      |
|  11|[0x80002258]<br>0x0000000000000000|- rs1 : x9<br> - rd : x8<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 1<br>                                  |[0x8000044c]:srli fp, s1, 1<br> [0x80000450]:sd fp, 80(a1)<br>      |
|  12|[0x80002260]<br>0x0000000000000000|- rs1 : x14<br> - rd : x0<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                          |[0x80000458]:srli zero, a4, 18<br> [0x8000045c]:sd zero, 88(a1)<br> |
|  13|[0x80002268]<br>0x0000000000000000|- rs1 : x25<br> - rd : x18<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                         |[0x80000464]:srli s2, s9, 18<br> [0x80000468]:sd s2, 96(a1)<br>     |
|  14|[0x80002270]<br>0x0000000000000000|- rs1 : x1<br> - rd : x14<br> - rs1_val == 16<br>                                                                                                          |[0x80000470]:srli a4, ra, 47<br> [0x80000474]:sd a4, 104(a1)<br>    |
|  15|[0x80002278]<br>0x0000000000000004|- rs1 : x10<br> - rd : x17<br> - rs1_val == 32<br>                                                                                                         |[0x8000047c]:srli a7, a0, 3<br> [0x80000480]:sd a7, 112(a1)<br>     |
|  16|[0x80002280]<br>0x0000000000000000|- rs1 : x12<br> - rd : x19<br> - rs1_val == 64<br> - imm_val == 16<br>                                                                                     |[0x80000488]:srli s3, a2, 16<br> [0x8000048c]:sd s3, 120(a1)<br>    |
|  17|[0x80002288]<br>0x0000000000000000|- rs1 : x21<br> - rd : x28<br> - rs1_val == 128<br>                                                                                                        |[0x80000494]:srli t3, s5, 16<br> [0x80000498]:sd t3, 128(a1)<br>    |
|  18|[0x80002290]<br>0x0000000000000002|- rs1 : x29<br> - rd : x27<br> - rs1_val == 256<br>                                                                                                        |[0x800004a0]:srli s11, t4, 7<br> [0x800004a4]:sd s11, 136(a1)<br>   |
|  19|[0x80002298]<br>0x0000000000000020|- rs1 : x28<br> - rd : x15<br> - rs1_val == 512<br> - imm_val == 4<br>                                                                                     |[0x800004ac]:srli a5, t3, 4<br> [0x800004b0]:sd a5, 144(a1)<br>     |
|  20|[0x800022a0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x13<br>                                                                                                                              |[0x800004b8]:srli a3, zero, 63<br> [0x800004bc]:sd a3, 152(a1)<br>  |
|  21|[0x800022a8]<br>0x0000000000000000|- rs1 : x17<br> - rd : x26<br> - rs1_val == 2048<br> - imm_val == 32<br>                                                                                   |[0x800004c8]:srli s10, a7, 32<br> [0x800004cc]:sd s10, 160(a1)<br>  |
|  22|[0x800022b0]<br>0x0000000000000010|- rs1 : x11<br> - rd : x1<br> - rs1_val == 4096<br>                                                                                                        |[0x800004dc]:srli ra, a1, 8<br> [0x800004e0]:sd ra, 0(sp)<br>       |
|  23|[0x800022b8]<br>0x0000000000000000|- rs1 : x27<br> - rd : x12<br> - rs1_val == 8192<br>                                                                                                       |[0x800004e8]:srli a2, s11, 63<br> [0x800004ec]:sd a2, 8(sp)<br>     |
|  24|[0x800022c0]<br>0x0000000000000000|- rs1 : x19<br> - rd : x30<br> - rs1_val == 16384<br>                                                                                                      |[0x800004f4]:srli t5, s3, 18<br> [0x800004f8]:sd t5, 16(sp)<br>     |
|  25|[0x800022c8]<br>0x0000000000000000|- rs1 : x22<br> - rd : x24<br> - rs1_val == 32768<br>                                                                                                      |[0x80000500]:srli s8, s6, 62<br> [0x80000504]:sd s8, 24(sp)<br>     |
|  26|[0x800022d0]<br>0x0000000000000000|- rs1 : x18<br> - rd : x10<br> - rs1_val == 65536<br> - imm_val == 55<br>                                                                                  |[0x8000050c]:srli a0, s2, 55<br> [0x80000510]:sd a0, 32(sp)<br>     |
|  27|[0x800022d8]<br>0x0000000000000000|- rs1 : x5<br> - rd : x20<br> - rs1_val == 131072<br>                                                                                                      |[0x80000518]:srli s4, t0, 47<br> [0x8000051c]:sd s4, 40(sp)<br>     |
|  28|[0x800022e0]<br>0x0000000000000004|- rs1 : x3<br> - rd : x9<br> - rs1_val == 262144<br>                                                                                                       |[0x80000524]:srli s1, gp, 16<br> [0x80000528]:sd s1, 48(sp)<br>     |
|  29|[0x800022e8]<br>0x0000000000000080|- rs1 : x26<br> - rd : x25<br> - rs1_val == 524288<br>                                                                                                     |[0x80000530]:srli s9, s10, 12<br> [0x80000534]:sd s9, 56(sp)<br>    |
|  30|[0x800022f0]<br>0x0000000000004000|- rs1 : x20<br> - rd : x21<br> - rs1_val == 1048576<br>                                                                                                    |[0x8000053c]:srli s5, s4, 6<br> [0x80000540]:sd s5, 64(sp)<br>      |
|  31|[0x800022f8]<br>0x0000000000000004|- rs1 : x24<br> - rd : x7<br> - rs1_val == 2097152<br>                                                                                                     |[0x80000548]:srli t2, s8, 19<br> [0x8000054c]:sd t2, 72(sp)<br>     |
|  32|[0x80002300]<br>0x0000000000400000|- rs1 : x6<br> - rd : x11<br> - rs1_val == 4194304<br>                                                                                                     |[0x80000554]:srli a1, t1, 0<br> [0x80000558]:sd a1, 80(sp)<br>      |
|  33|[0x80002308]<br>0x0000000000000020|- rs1_val == 8388608<br>                                                                                                                                   |[0x80000560]:srli a1, a0, 18<br> [0x80000564]:sd a1, 88(sp)<br>     |
|  34|[0x80002310]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                                                                                  |[0x8000056c]:srli a1, a0, 32<br> [0x80000570]:sd a1, 96(sp)<br>     |
|  35|[0x80002318]<br>0x0000000000000000|- rs1_val == 33554432<br> - imm_val == 31<br>                                                                                                              |[0x80000578]:srli a1, a0, 31<br> [0x8000057c]:sd a1, 104(sp)<br>    |
|  36|[0x80002320]<br>0x0000000000001000|- rs1_val == 67108864<br>                                                                                                                                  |[0x80000584]:srli a1, a0, 14<br> [0x80000588]:sd a1, 112(sp)<br>    |
|  37|[0x80002328]<br>0x0000000000040000|- rs1_val == 268435456<br>                                                                                                                                 |[0x80000590]:srli a1, a0, 10<br> [0x80000594]:sd a1, 120(sp)<br>    |
|  38|[0x80002330]<br>0x0000000001000000|- rs1_val == 536870912<br>                                                                                                                                 |[0x8000059c]:srli a1, a0, 5<br> [0x800005a0]:sd a1, 128(sp)<br>     |
|  39|[0x80002338]<br>0x0000000000000000|- rs1_val == 1073741824<br> - imm_val == 59<br>                                                                                                            |[0x800005a8]:srli a1, a0, 59<br> [0x800005ac]:sd a1, 136(sp)<br>    |
|  40|[0x80002340]<br>0x0000000004000000|- rs1_val == 2147483648<br>                                                                                                                                |[0x800005b8]:srli a1, a0, 5<br> [0x800005bc]:sd a1, 144(sp)<br>     |
|  41|[0x80002348]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                |[0x800005c8]:srli a1, a0, 63<br> [0x800005cc]:sd a1, 152(sp)<br>    |
|  42|[0x80002350]<br>0x0000000010000000|- rs1_val == 8589934592<br>                                                                                                                                |[0x800005d8]:srli a1, a0, 5<br> [0x800005dc]:sd a1, 160(sp)<br>     |
|  43|[0x80002358]<br>0x0000000100000000|- rs1_val == 17179869184<br> - imm_val == 2<br>                                                                                                            |[0x800005e8]:srli a1, a0, 2<br> [0x800005ec]:sd a1, 168(sp)<br>     |
|  44|[0x80002360]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                               |[0x800005f8]:srli a1, a0, 62<br> [0x800005fc]:sd a1, 176(sp)<br>    |
|  45|[0x80002368]<br>0x0000000000400000|- rs1_val == 68719476736<br>                                                                                                                               |[0x80000608]:srli a1, a0, 14<br> [0x8000060c]:sd a1, 184(sp)<br>    |
|  46|[0x80002370]<br>0x0000000400000000|- rs1_val == 137438953472<br>                                                                                                                              |[0x80000618]:srli a1, a0, 3<br> [0x8000061c]:sd a1, 192(sp)<br>     |
|  47|[0x80002378]<br>0x0000000040000000|- rs1_val == 274877906944<br>                                                                                                                              |[0x80000628]:srli a1, a0, 8<br> [0x8000062c]:sd a1, 200(sp)<br>     |
|  48|[0x80002380]<br>0x0000000000000100|- rs1_val == 549755813888<br>                                                                                                                              |[0x80000638]:srli a1, a0, 31<br> [0x8000063c]:sd a1, 208(sp)<br>    |
|  49|[0x80002388]<br>0x0000004000000000|- rs1_val == 1099511627776<br>                                                                                                                             |[0x80000648]:srli a1, a0, 2<br> [0x8000064c]:sd a1, 216(sp)<br>     |
|  50|[0x80002390]<br>0x0000000010000000|- rs1_val == 2199023255552<br>                                                                                                                             |[0x80000658]:srli a1, a0, 13<br> [0x8000065c]:sd a1, 224(sp)<br>    |
|  51|[0x80002398]<br>0x0000002000000000|- rs1_val == 4398046511104<br>                                                                                                                             |[0x80000668]:srli a1, a0, 5<br> [0x8000066c]:sd a1, 232(sp)<br>     |
|  52|[0x800023a0]<br>0x0000000010000000|- rs1_val == 17592186044416<br>                                                                                                                            |[0x80000678]:srli a1, a0, 16<br> [0x8000067c]:sd a1, 240(sp)<br>    |
|  53|[0x800023a8]<br>0x0000000040000000|- rs1_val == 35184372088832<br>                                                                                                                            |[0x80000688]:srli a1, a0, 15<br> [0x8000068c]:sd a1, 248(sp)<br>    |
|  54|[0x800023b0]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                            |[0x80000698]:srli a1, a0, 59<br> [0x8000069c]:sd a1, 256(sp)<br>    |
|  55|[0x800023b8]<br>0x0000000000010000|- rs1_val == 140737488355328<br>                                                                                                                           |[0x800006a8]:srli a1, a0, 31<br> [0x800006ac]:sd a1, 264(sp)<br>    |
|  56|[0x800023c0]<br>0x0000010000000000|- rs1_val == 281474976710656<br>                                                                                                                           |[0x800006b8]:srli a1, a0, 8<br> [0x800006bc]:sd a1, 272(sp)<br>     |
|  57|[0x800023c8]<br>0x0002000000000000|- rs1_val == 562949953421312<br>                                                                                                                           |[0x800006c8]:srli a1, a0, 0<br> [0x800006cc]:sd a1, 280(sp)<br>     |
|  58|[0x800023d0]<br>0x0000008000000000|- rs1_val == 2251799813685248<br>                                                                                                                          |[0x800006d8]:srli a1, a0, 12<br> [0x800006dc]:sd a1, 288(sp)<br>    |
|  59|[0x800023d8]<br>0x0000008000000000|- rs1_val == 4503599627370496<br>                                                                                                                          |[0x800006e8]:srli a1, a0, 13<br> [0x800006ec]:sd a1, 296(sp)<br>    |
|  60|[0x800023e0]<br>0x0010000000000000|- rs1_val == 9007199254740992<br>                                                                                                                          |[0x800006f8]:srli a1, a0, 1<br> [0x800006fc]:sd a1, 304(sp)<br>     |
|  61|[0x800023e8]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                         |[0x80000708]:srli a1, a0, 59<br> [0x8000070c]:sd a1, 312(sp)<br>    |
|  62|[0x800023f0]<br>0x0001000000000000|- rs1_val == 36028797018963968<br>                                                                                                                         |[0x80000718]:srli a1, a0, 7<br> [0x8000071c]:sd a1, 320(sp)<br>     |
|  63|[0x800023f8]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                         |[0x80000728]:srli a1, a0, 62<br> [0x8000072c]:sd a1, 328(sp)<br>    |
|  64|[0x80002400]<br>0x0000000000000000|- rs1_val == 144115188075855872<br> - imm_val == 61<br>                                                                                                    |[0x80000738]:srli a1, a0, 61<br> [0x8000073c]:sd a1, 336(sp)<br>    |
|  65|[0x80002408]<br>0x0100000000000000|- rs1_val == 288230376151711744<br>                                                                                                                        |[0x80000748]:srli a1, a0, 2<br> [0x8000074c]:sd a1, 344(sp)<br>     |
|  66|[0x80002410]<br>0x0000000000000010|- rs1_val == 576460752303423488<br>                                                                                                                        |[0x80000758]:srli a1, a0, 55<br> [0x8000075c]:sd a1, 352(sp)<br>    |
|  67|[0x80002418]<br>0x0008000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                       |[0x80000768]:srli a1, a0, 9<br> [0x8000076c]:sd a1, 360(sp)<br>     |
|  68|[0x80002420]<br>0x0000200000000000|- rs1_val == 2305843009213693952<br>                                                                                                                       |[0x80000778]:srli a1, a0, 16<br> [0x8000077c]:sd a1, 368(sp)<br>    |
|  69|[0x80002428]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                       |[0x80000788]:srli a1, a0, 63<br> [0x8000078c]:sd a1, 376(sp)<br>    |
|  70|[0x80002430]<br>0x01FFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                        |[0x80000794]:srli a1, a0, 7<br> [0x80000798]:sd a1, 384(sp)<br>     |
|  71|[0x80002438]<br>0x00FFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                        |[0x800007a0]:srli a1, a0, 8<br> [0x800007a4]:sd a1, 392(sp)<br>     |
|  72|[0x80002440]<br>0x001FFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                                        |[0x800007ac]:srli a1, a0, 11<br> [0x800007b0]:sd a1, 400(sp)<br>    |
|  73|[0x80002448]<br>0x00001FFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                       |[0x800007b8]:srli a1, a0, 19<br> [0x800007bc]:sd a1, 408(sp)<br>    |
|  74|[0x80002450]<br>0x0FFFFFFFFFFFFFFD|- rs1_val == -33<br>                                                                                                                                       |[0x800007c4]:srli a1, a0, 4<br> [0x800007c8]:sd a1, 416(sp)<br>     |
|  75|[0x80002458]<br>0x00007FFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                       |[0x800007d0]:srli a1, a0, 17<br> [0x800007d4]:sd a1, 424(sp)<br>    |
|  76|[0x80002460]<br>0x00000001FFFFFFFF|- rs1_val == -129<br>                                                                                                                                      |[0x800007dc]:srli a1, a0, 31<br> [0x800007e0]:sd a1, 432(sp)<br>    |
|  77|[0x80002468]<br>0x0007FFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                                                      |[0x800007e8]:srli a1, a0, 13<br> [0x800007ec]:sd a1, 440(sp)<br>    |
|  78|[0x80002470]<br>0x0000000000000007|- rs1_val == -513<br>                                                                                                                                      |[0x800007f4]:srli a1, a0, 61<br> [0x800007f8]:sd a1, 448(sp)<br>    |
|  79|[0x80002478]<br>0x07FFFFFFFFFFFFDF|- rs1_val == -1025<br>                                                                                                                                     |[0x80000800]:srli a1, a0, 5<br> [0x80000804]:sd a1, 456(sp)<br>     |
|  80|[0x80002480]<br>0x0000000000000003|- rs1_val == -2049<br>                                                                                                                                     |[0x80000810]:srli a1, a0, 62<br> [0x80000814]:sd a1, 464(sp)<br>    |
|  81|[0x80002488]<br>0x3FFFFFFFFFFFFBFF|- rs1_val == -4097<br>                                                                                                                                     |[0x80000820]:srli a1, a0, 2<br> [0x80000824]:sd a1, 472(sp)<br>     |
|  82|[0x80002490]<br>0x0001FFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                     |[0x80000830]:srli a1, a0, 15<br> [0x80000834]:sd a1, 480(sp)<br>    |
|  83|[0x80002498]<br>0x00001FFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                    |[0x80000840]:srli a1, a0, 19<br> [0x80000844]:sd a1, 488(sp)<br>    |
|  84|[0x800024a0]<br>0x0000000000000003|- rs1_val == -32769<br>                                                                                                                                    |[0x80000850]:srli a1, a0, 62<br> [0x80000854]:sd a1, 496(sp)<br>    |
|  85|[0x800024a8]<br>0x0FFFFFFFFFFFEFFF|- rs1_val == -65537<br>                                                                                                                                    |[0x80000860]:srli a1, a0, 4<br> [0x80000864]:sd a1, 504(sp)<br>     |
|  86|[0x800024b0]<br>0x1FFFFFFFFFFFBFFF|- rs1_val == -131073<br>                                                                                                                                   |[0x80000870]:srli a1, a0, 3<br> [0x80000874]:sd a1, 512(sp)<br>     |
|  87|[0x800024b8]<br>0x000FFFFFFFFFFFBF|- rs1_val == -262145<br>                                                                                                                                   |[0x80000880]:srli a1, a0, 12<br> [0x80000884]:sd a1, 520(sp)<br>    |
|  88|[0x800024c0]<br>0x003FFFFFFFFFFDFF|- rs1_val == -524289<br>                                                                                                                                   |[0x80000890]:srli a1, a0, 10<br> [0x80000894]:sd a1, 528(sp)<br>    |
|  89|[0x800024c8]<br>0x00000001FFBFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                         |[0x800008a4]:srli a1, a0, 31<br> [0x800008a8]:sd a1, 536(sp)<br>    |
|  90|[0x800024d0]<br>0x000007FDFFFFFFFF|- rs1_val == -18014398509481985<br> - imm_val == 21<br>                                                                                                    |[0x800008b8]:srli a1, a0, 21<br> [0x800008bc]:sd a1, 544(sp)<br>    |
|  91|[0x800024d8]<br>0x01FEFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                        |[0x800008cc]:srli a1, a0, 7<br> [0x800008d0]:sd a1, 552(sp)<br>     |
|  92|[0x800024e0]<br>0x00001FDFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                        |[0x800008e0]:srli a1, a0, 19<br> [0x800008e4]:sd a1, 560(sp)<br>    |
|  93|[0x800024e8]<br>0x00003F7FFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                       |[0x800008f4]:srli a1, a0, 18<br> [0x800008f8]:sd a1, 568(sp)<br>    |
|  94|[0x800024f0]<br>0x000FBFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                       |[0x80000908]:srli a1, a0, 12<br> [0x8000090c]:sd a1, 576(sp)<br>    |
|  95|[0x800024f8]<br>0xF7FFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                       |[0x8000091c]:srli a1, a0, 0<br> [0x80000920]:sd a1, 584(sp)<br>     |
|  96|[0x80002500]<br>0x0000EFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                      |[0x80000930]:srli a1, a0, 16<br> [0x80000934]:sd a1, 592(sp)<br>    |
|  97|[0x80002508]<br>0x0001BFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                      |[0x80000944]:srli a1, a0, 15<br> [0x80000948]:sd a1, 600(sp)<br>    |
|  98|[0x80002510]<br>0x0000000000000017|- rs1_val == -4611686018427387905<br>                                                                                                                      |[0x80000958]:srli a1, a0, 59<br> [0x8000095c]:sd a1, 608(sp)<br>    |
|  99|[0x80002518]<br>0x0055555555555555|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                    |[0x80000980]:srli a1, a0, 8<br> [0x80000984]:sd a1, 616(sp)<br>     |
| 100|[0x80002520]<br>0x0000000000000000|- rs1_val==3<br>                                                                                                                                           |[0x8000098c]:srli a1, a0, 21<br> [0x80000990]:sd a1, 624(sp)<br>    |
| 101|[0x80002528]<br>0x0000000000000000|- rs1_val==5<br>                                                                                                                                           |[0x80000998]:srli a1, a0, 47<br> [0x8000099c]:sd a1, 632(sp)<br>    |
| 102|[0x80002530]<br>0x0066666666666666|- rs1_val==3689348814741910323<br>                                                                                                                         |[0x800009c0]:srli a1, a0, 7<br> [0x800009c4]:sd a1, 640(sp)<br>     |
| 103|[0x80002538]<br>0x0199999999999999|- rs1_val==7378697629483820646<br>                                                                                                                         |[0x800009e8]:srli a1, a0, 6<br> [0x800009ec]:sd a1, 648(sp)<br>     |
| 104|[0x80002540]<br>0x1FFFFFFFE95F6199|- rs1_val==-3037000499<br>                                                                                                                                 |[0x80000a00]:srli a1, a0, 3<br> [0x80000a04]:sd a1, 656(sp)<br>     |
| 105|[0x80002548]<br>0x0000000000B504F3|- rs1_val==3037000499<br>                                                                                                                                  |[0x80000a18]:srli a1, a0, 8<br> [0x80000a1c]:sd a1, 664(sp)<br>     |
| 106|[0x80002550]<br>0x0155555555555555|- rs1_val==6148914691236517204<br>                                                                                                                         |[0x80000a40]:srli a1, a0, 6<br> [0x80000a44]:sd a1, 672(sp)<br>     |
| 107|[0x80002558]<br>0x0000199999999999|- rs1_val==3689348814741910322<br>                                                                                                                         |[0x80000a68]:srli a1, a0, 17<br> [0x80000a6c]:sd a1, 680(sp)<br>    |
| 108|[0x80002560]<br>0x0000000000000003|- rs1_val==7378697629483820645<br>                                                                                                                         |[0x80000a90]:srli a1, a0, 61<br> [0x80000a94]:sd a1, 688(sp)<br>    |
| 109|[0x80002568]<br>0x0000000000000000|- rs1_val==3037000498<br>                                                                                                                                  |[0x80000aa8]:srli a1, a0, 55<br> [0x80000aac]:sd a1, 696(sp)<br>    |
| 110|[0x80002570]<br>0x02AAAAAAAAAAAAAA|- rs1_val==6148914691236517206<br>                                                                                                                         |[0x80000ad0]:srli a1, a0, 5<br> [0x80000ad4]:sd a1, 704(sp)<br>     |
| 111|[0x80002578]<br>0x0000155555555555|- rs1_val==-6148914691236517205<br>                                                                                                                        |[0x80000af8]:srli a1, a0, 19<br> [0x80000afc]:sd a1, 712(sp)<br>    |
| 112|[0x80002580]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                                           |[0x80000b04]:srli a1, a0, 61<br> [0x80000b08]:sd a1, 720(sp)<br>    |
| 113|[0x80002588]<br>0x0000000033333333|- rs1_val==3689348814741910324<br>                                                                                                                         |[0x80000b2c]:srli a1, a0, 32<br> [0x80000b30]:sd a1, 728(sp)<br>    |
| 114|[0x80002590]<br>0x00000CCCCCCCCCCC|- rs1_val==7378697629483820647<br>                                                                                                                         |[0x80000b54]:srli a1, a0, 19<br> [0x80000b58]:sd a1, 736(sp)<br>    |
| 115|[0x80002598]<br>0x003FFFFFFFD2BEC3|- rs1_val==-3037000498<br>                                                                                                                                 |[0x80000b6c]:srli a1, a0, 10<br> [0x80000b70]:sd a1, 744(sp)<br>    |
| 116|[0x800025a0]<br>0x0000000000B504F3|- rs1_val==3037000500<br>                                                                                                                                  |[0x80000b84]:srli a1, a0, 8<br> [0x80000b88]:sd a1, 752(sp)<br>     |
| 117|[0x800025a8]<br>0x00000000003FFFFF|- imm_val == 42<br>                                                                                                                                        |[0x80000b9c]:srli a1, a0, 42<br> [0x80000ba0]:sd a1, 760(sp)<br>    |
| 118|[0x800025b0]<br>0x0007FFFFFFFFFF7F|- rs1_val == -1048577<br>                                                                                                                                  |[0x80000bac]:srli a1, a0, 13<br> [0x80000bb0]:sd a1, 768(sp)<br>    |
| 119|[0x800025b8]<br>0x7FFFFFFFFFEFFFFF|- rs1_val == -2097153<br>                                                                                                                                  |[0x80000bbc]:srli a1, a0, 1<br> [0x80000bc0]:sd a1, 776(sp)<br>     |
| 120|[0x800025c0]<br>0x0000FFFFFFFFFFBF|- rs1_val == -4194305<br>                                                                                                                                  |[0x80000bcc]:srli a1, a0, 16<br> [0x80000bd0]:sd a1, 784(sp)<br>    |
| 121|[0x800025c8]<br>0x07FFFFFFFFFBFFFF|- rs1_val == -8388609<br>                                                                                                                                  |[0x80000bdc]:srli a1, a0, 5<br> [0x80000be0]:sd a1, 792(sp)<br>     |
| 122|[0x800025d0]<br>0x7FFFFFFFFF7FFFFF|- rs1_val == -16777217<br>                                                                                                                                 |[0x80000bec]:srli a1, a0, 1<br> [0x80000bf0]:sd a1, 800(sp)<br>     |
| 123|[0x800025d8]<br>0x00001FFFFFFFFFBF|- rs1_val == -33554433<br>                                                                                                                                 |[0x80000bfc]:srli a1, a0, 19<br> [0x80000c00]:sd a1, 808(sp)<br>    |
| 124|[0x800025e0]<br>0x00000000000001FF|- rs1_val == -67108865<br>                                                                                                                                 |[0x80000c0c]:srli a1, a0, 55<br> [0x80000c10]:sd a1, 816(sp)<br>    |
| 125|[0x800025e8]<br>0x007FFFFFFFFBFFFF|- rs1_val == -134217729<br>                                                                                                                                |[0x80000c1c]:srli a1, a0, 9<br> [0x80000c20]:sd a1, 824(sp)<br>     |
| 126|[0x800025f0]<br>0x003FFFFFFFFBFFFF|- rs1_val == -268435457<br>                                                                                                                                |[0x80000c2c]:srli a1, a0, 10<br> [0x80000c30]:sd a1, 832(sp)<br>    |
| 127|[0x800025f8]<br>0xFFFFFFFFDFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                |[0x80000c3c]:srli a1, a0, 0<br> [0x80000c40]:sd a1, 840(sp)<br>     |
| 128|[0x80002600]<br>0x00003FFFFFFFEFFF|- rs1_val == -1073741825<br>                                                                                                                               |[0x80000c4c]:srli a1, a0, 18<br> [0x80000c50]:sd a1, 848(sp)<br>    |
| 129|[0x80002608]<br>0x0000000000000003|- rs1_val == -2147483649<br>                                                                                                                               |[0x80000c60]:srli a1, a0, 62<br> [0x80000c64]:sd a1, 856(sp)<br>    |
| 130|[0x80002610]<br>0x7FFFFFFF7FFFFFFF|- rs1_val == -4294967297<br>                                                                                                                               |[0x80000c74]:srli a1, a0, 1<br> [0x80000c78]:sd a1, 864(sp)<br>     |
| 131|[0x80002618]<br>0x00000000FFFFFFFD|- rs1_val == -8589934593<br>                                                                                                                               |[0x80000c88]:srli a1, a0, 32<br> [0x80000c8c]:sd a1, 872(sp)<br>    |
| 132|[0x80002620]<br>0x03FFFFFFEFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                              |[0x80000c9c]:srli a1, a0, 6<br> [0x80000ca0]:sd a1, 880(sp)<br>     |
| 133|[0x80002628]<br>0x00000000000001FF|- rs1_val == -34359738369<br>                                                                                                                              |[0x80000cb0]:srli a1, a0, 55<br> [0x80000cb4]:sd a1, 888(sp)<br>    |
| 134|[0x80002630]<br>0x007FFFFFF7FFFFFF|- rs1_val == -68719476737<br>                                                                                                                              |[0x80000cc4]:srli a1, a0, 9<br> [0x80000cc8]:sd a1, 896(sp)<br>     |
| 135|[0x80002638]<br>0x07FFFFFEFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                             |[0x80000cd8]:srli a1, a0, 5<br> [0x80000cdc]:sd a1, 904(sp)<br>     |
| 136|[0x80002640]<br>0x000007FFFFFDFFFF|- rs1_val == -274877906945<br>                                                                                                                             |[0x80000cec]:srli a1, a0, 21<br> [0x80000cf0]:sd a1, 912(sp)<br>    |
| 137|[0x80002648]<br>0x0000000000000001|- rs1_val == -549755813889<br>                                                                                                                             |[0x80000d00]:srli a1, a0, 63<br> [0x80000d04]:sd a1, 920(sp)<br>    |
| 138|[0x80002650]<br>0x07FFFFF7FFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                            |[0x80000d14]:srli a1, a0, 5<br> [0x80000d18]:sd a1, 928(sp)<br>     |
| 139|[0x80002658]<br>0xFFFFFDFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                            |[0x80000d28]:srli a1, a0, 0<br> [0x80000d2c]:sd a1, 936(sp)<br>     |
| 140|[0x80002660]<br>0x00001FFFFF7FFFFF|- rs1_val == -4398046511105<br>                                                                                                                            |[0x80000d3c]:srli a1, a0, 19<br> [0x80000d40]:sd a1, 944(sp)<br>    |
| 141|[0x80002668]<br>0x000007FFFFBFFFFF|- rs1_val == -8796093022209<br>                                                                                                                            |[0x80000d50]:srli a1, a0, 21<br> [0x80000d54]:sd a1, 952(sp)<br>    |
| 142|[0x80002670]<br>0x07FFFF7FFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                           |[0x80000d64]:srli a1, a0, 5<br> [0x80000d68]:sd a1, 960(sp)<br>     |
| 143|[0x80002678]<br>0x03FFFF7FFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                           |[0x80000d78]:srli a1, a0, 6<br> [0x80000d7c]:sd a1, 968(sp)<br>     |
| 144|[0x80002680]<br>0x00FFFFBFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                           |[0x80000d8c]:srli a1, a0, 8<br> [0x80000d90]:sd a1, 976(sp)<br>     |
| 145|[0x80002688]<br>0x0007FFFBFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                          |[0x80000da0]:srli a1, a0, 13<br> [0x80000da4]:sd a1, 984(sp)<br>    |
| 146|[0x80002690]<br>0x00000000FFFEFFFF|- rs1_val == -281474976710657<br>                                                                                                                          |[0x80000db4]:srli a1, a0, 32<br> [0x80000db8]:sd a1, 992(sp)<br>    |
| 147|[0x80002698]<br>0x1FFFBFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                          |[0x80000dc8]:srli a1, a0, 3<br> [0x80000dcc]:sd a1, 1000(sp)<br>    |
| 148|[0x800026a0]<br>0x01FFEFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                         |[0x80000ddc]:srli a1, a0, 7<br> [0x80000de0]:sd a1, 1008(sp)<br>    |
| 149|[0x800026a8]<br>0x01FFDFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                         |[0x80000df0]:srli a1, a0, 7<br> [0x80000df4]:sd a1, 1016(sp)<br>    |
| 150|[0x800026b8]<br>0x0000000000000000|- rs1_val == 1024<br>                                                                                                                                      |[0x80000e08]:srli a1, a0, 63<br> [0x80000e0c]:sd a1, 1032(sp)<br>   |
