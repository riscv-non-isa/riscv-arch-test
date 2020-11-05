
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c00')]      |
| SIG_REGION                | [('0x80003208', '0x80003630', '133 dwords')]      |
| COV_LABELS                | srli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |
| Total Number of coverpoints| 222     |
| Total Coverpoints Hit     | 222      |
| Total Signature Updates   | 133      |
| STAT1                     | 131      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000be0]:srli a1, a0, 63
      [0x80000be4]:sd a1, 880(t1)
 -- Signature Address: 0x80003620 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val > 0 and imm_val == (xlen-1)
      - rs1_val == 1 and imm_val >= 0 and imm_val < xlen
      - rs1_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bec]:srli a1, a0, 9
      [0x80000bf0]:sd a1, 888(t1)
 -- Signature Address: 0x80003628 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0 and imm_val >= 0 and imm_val < xlen






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

|s.no|            signature             |                                                                        coverpoints                                                                         |                                code                                |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003208]<br>0x000FFDFFFFFFFFFF|- opcode : srli<br> - rs1 : x21<br> - rd : x16<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -9007199254740993<br>  |[0x800003a4]:srli a6, s5, 12<br> [0x800003a8]:sd a6, 0(s8)<br>      |
|   2|[0x80003210]<br>0x0000004000000000|- rs1 : x12<br> - rd : x12<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 18014398509481984<br> - imm_val == 16<br>  |[0x800003b4]:srli a2, a2, 16<br> [0x800003b8]:sd a2, 8(s8)<br>      |
|   3|[0x80003218]<br>0xEFFFFFFFFFFFFFFF|- rs1 : x7<br> - rd : x3<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -1152921504606846977<br>                                                       |[0x800003c8]:srli gp, t2, 0<br> [0x800003cc]:sd gp, 16(s8)<br>      |
|   4|[0x80003220]<br>0x0000000010000000|- rs1 : x2<br> - rd : x23<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 268435456<br>                                                                 |[0x800003d4]:srli s7, sp, 0<br> [0x800003d8]:sd s7, 24(s8)<br>      |
|   5|[0x80003228]<br>0x0000000000000001|- rs1 : x13<br> - rd : x31<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -8796093022209<br>                                                    |[0x800003e8]:srli t6, a3, 63<br> [0x800003ec]:sd t6, 32(s8)<br>     |
|   6|[0x80003230]<br>0x0000000000000000|- rs1 : x28<br> - rd : x0<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>           |[0x800003f4]:srli zero, t3, 63<br> [0x800003f8]:sd zero, 40(s8)<br> |
|   7|[0x80003238]<br>0x0000000000000000|- rs1 : x26<br> - rd : x10<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 8<br> - imm_val == 8<br>                            |[0x80000400]:srli a0, s10, 8<br> [0x80000404]:sd a0, 48(s8)<br>     |
|   8|[0x80003240]<br>0x0000000080000000|- rs1 : x6<br> - rd : x27<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br> - imm_val == 32<br> |[0x80000410]:srli s11, t1, 32<br> [0x80000414]:sd s11, 56(s8)<br>   |
|   9|[0x80003248]<br>0x0000000000000000|- rs1 : x0<br> - rd : x17<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                        |[0x8000041c]:srli a7, zero, 9<br> [0x80000420]:sd a7, 64(s8)<br>    |
|  10|[0x80003250]<br>0x0FFFFFFFFFFFFFFF|- rs1 : x10<br> - rd : x13<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                    |[0x80000430]:srli a3, a0, 3<br> [0x80000434]:sd a3, 72(s8)<br>      |
|  11|[0x80003258]<br>0x0000000000000040|- rs1 : x15<br> - rd : x9<br> - rs1_val == 128<br> - imm_val == 1<br>                                                                                       |[0x8000043c]:srli s1, a5, 1<br> [0x80000440]:sd s1, 80(s8)<br>      |
|  12|[0x80003260]<br>0x3FFFFFFFFFDFFFFF|- rs1 : x27<br> - rd : x21<br> - rs1_val == -8388609<br> - imm_val == 2<br>                                                                                 |[0x8000044c]:srli s5, s11, 2<br> [0x80000450]:sd s5, 88(s8)<br>     |
|  13|[0x80003268]<br>0x0FFFFFFFFFEFFFFF|- rs1 : x8<br> - rd : x1<br> - rs1_val == -16777217<br> - imm_val == 4<br>                                                                                  |[0x8000045c]:srli ra, fp, 4<br> [0x80000460]:sd ra, 96(s8)<br>      |
|  14|[0x80003270]<br>0x0000000000000000|- rs1 : x30<br> - rd : x8<br> - rs1_val == 140737488355328<br> - imm_val == 62<br>                                                                          |[0x8000046c]:srli fp, t5, 62<br> [0x80000470]:sd fp, 104(s8)<br>    |
|  15|[0x80003278]<br>0x0000000000000000|- rs1 : x17<br> - rd : x7<br> - rs1_val == 2199023255552<br> - imm_val == 61<br>                                                                            |[0x8000047c]:srli t2, a7, 61<br> [0x80000480]:sd t2, 112(s8)<br>    |
|  16|[0x80003280]<br>0x000000000000001F|- rs1 : x5<br> - rd : x6<br> - rs1_val == -257<br> - imm_val == 59<br>                                                                                      |[0x80000488]:srli t1, t0, 59<br> [0x8000048c]:sd t1, 120(s8)<br>    |
|  17|[0x80003288]<br>0x0000000000000000|- rs1 : x4<br> - rd : x18<br> - rs1_val == 4398046511104<br> - imm_val == 55<br>                                                                            |[0x80000498]:srli s2, tp, 55<br> [0x8000049c]:sd s2, 128(s8)<br>    |
|  18|[0x80003290]<br>0x0000000000000040|- rs1 : x23<br> - rd : x20<br> - rs1_val == 9007199254740992<br> - imm_val == 47<br>                                                                        |[0x800004a8]:srli s4, s7, 47<br> [0x800004ac]:sd s4, 136(s8)<br>    |
|  19|[0x80003298]<br>0x00000001FFFFFF7F|- rs1 : x22<br> - rd : x11<br> - rs1_val == -274877906945<br> - imm_val == 31<br>                                                                           |[0x800004bc]:srli a1, s6, 31<br> [0x800004c0]:sd a1, 144(s8)<br>    |
|  20|[0x800032a0]<br>0x000007FFFFFFFFFF|- rs1 : x11<br> - rd : x22<br> - rs1_val == -5<br> - imm_val == 21<br>                                                                                      |[0x800004c8]:srli s6, a1, 21<br> [0x800004cc]:sd s6, 152(s8)<br>    |
|  21|[0x800032a8]<br>0x00000000003FFFFF|- rs1 : x14<br> - rd : x19<br> - rs1_val == -262145<br> - imm_val == 42<br>                                                                                 |[0x800004d8]:srli s3, a4, 42<br> [0x800004dc]:sd s3, 160(s8)<br>    |
|  22|[0x800032b0]<br>0x0000000000000000|- rs1 : x1<br> - rd : x15<br> - rs1_val == 2<br>                                                                                                            |[0x800004ec]:srli a5, ra, 5<br> [0x800004f0]:sd a5, 0(t1)<br>       |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x18<br> - rd : x14<br> - rs1_val == 4<br>                                                                                                           |[0x800004f8]:srli a4, s2, 17<br> [0x800004fc]:sd a4, 8(t1)<br>      |
|  24|[0x800032c0]<br>0x0000000000000000|- rs1 : x31<br> - rd : x4<br> - rs1_val == 16<br>                                                                                                           |[0x80000504]:srli tp, t6, 63<br> [0x80000508]:sd tp, 16(t1)<br>     |
|  25|[0x800032c8]<br>0x0000000000000000|- rs1 : x16<br> - rd : x29<br> - rs1_val == 32<br>                                                                                                          |[0x80000510]:srli t4, a6, 47<br> [0x80000514]:sd t4, 24(t1)<br>     |
|  26|[0x800032d0]<br>0x0000000000000000|- rs1 : x20<br> - rd : x24<br> - rs1_val == 64<br>                                                                                                          |[0x8000051c]:srli s8, s4, 13<br> [0x80000520]:sd s8, 32(t1)<br>     |
|  27|[0x800032d8]<br>0x0000000000000000|- rs1 : x24<br> - rd : x5<br> - rs1_val == 256<br>                                                                                                          |[0x80000528]:srli t0, s8, 15<br> [0x8000052c]:sd t0, 40(t1)<br>     |
|  28|[0x800032e0]<br>0x0000000000000000|- rs1 : x3<br> - rd : x2<br> - rs1_val == 512<br>                                                                                                           |[0x80000534]:srli sp, gp, 21<br> [0x80000538]:sd sp, 48(t1)<br>     |
|  29|[0x800032e8]<br>0x0000000000000000|- rs1 : x29<br> - rd : x28<br> - rs1_val == 1024<br>                                                                                                        |[0x80000540]:srli t3, t4, 14<br> [0x80000544]:sd t3, 56(t1)<br>     |
|  30|[0x800032f0]<br>0x0000000000000100|- rs1 : x19<br> - rd : x25<br> - rs1_val == 2048<br>                                                                                                        |[0x80000550]:srli s9, s3, 3<br> [0x80000554]:sd s9, 64(t1)<br>      |
|  31|[0x800032f8]<br>0x0000000000000000|- rs1 : x9<br> - rd : x30<br> - rs1_val == 4096<br>                                                                                                         |[0x8000055c]:srli t5, s1, 55<br> [0x80000560]:sd t5, 72(t1)<br>     |
|  32|[0x80003300]<br>0x0000000000000400|- rs1 : x25<br> - rd : x26<br> - rs1_val == 8192<br>                                                                                                        |[0x80000568]:srli s10, s9, 3<br> [0x8000056c]:sd s10, 80(t1)<br>    |
|  33|[0x80003308]<br>0x0000000000002000|- rs1_val == 16384<br>                                                                                                                                      |[0x80000574]:srli a1, a0, 1<br> [0x80000578]:sd a1, 88(t1)<br>      |
|  34|[0x80003310]<br>0x0000000000000004|- rs1_val == 32768<br>                                                                                                                                      |[0x80000580]:srli a1, a0, 13<br> [0x80000584]:sd a1, 96(t1)<br>     |
|  35|[0x80003318]<br>0x0000000000008000|- rs1_val == 65536<br>                                                                                                                                      |[0x8000058c]:srli a1, a0, 1<br> [0x80000590]:sd a1, 104(t1)<br>     |
|  36|[0x80003320]<br>0x0000000000000000|- rs1_val == 131072<br>                                                                                                                                     |[0x80000598]:srli a1, a0, 61<br> [0x8000059c]:sd a1, 112(t1)<br>    |
|  37|[0x80003328]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                                                                     |[0x800005a4]:srli a1, a0, 62<br> [0x800005a8]:sd a1, 120(t1)<br>    |
|  38|[0x80003330]<br>0x0000000000001000|- rs1_val == 524288<br>                                                                                                                                     |[0x800005b0]:srli a1, a0, 7<br> [0x800005b4]:sd a1, 128(t1)<br>     |
|  39|[0x80003338]<br>0x0000000000000080|- rs1_val == 1048576<br>                                                                                                                                    |[0x800005bc]:srli a1, a0, 13<br> [0x800005c0]:sd a1, 136(t1)<br>    |
|  40|[0x80003340]<br>0x0000000000000000|- rs1_val == 2097152<br>                                                                                                                                    |[0x800005c8]:srli a1, a0, 32<br> [0x800005cc]:sd a1, 144(t1)<br>    |
|  41|[0x80003348]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                                                                                    |[0x800005d4]:srli a1, a0, 47<br> [0x800005d8]:sd a1, 152(t1)<br>    |
|  42|[0x80003350]<br>0x0000000000000200|- rs1_val == 8388608<br>                                                                                                                                    |[0x800005e0]:srli a1, a0, 14<br> [0x800005e4]:sd a1, 160(t1)<br>    |
|  43|[0x80003358]<br>0x0000000000800000|- rs1_val == 16777216<br>                                                                                                                                   |[0x800005ec]:srli a1, a0, 1<br> [0x800005f0]:sd a1, 168(t1)<br>     |
|  44|[0x80003360]<br>0x0000000000040000|- rs1_val == 33554432<br>                                                                                                                                   |[0x800005f8]:srli a1, a0, 7<br> [0x800005fc]:sd a1, 176(t1)<br>     |
|  45|[0x80003368]<br>0x0000000000008000|- rs1_val == 67108864<br>                                                                                                                                   |[0x80000604]:srli a1, a0, 11<br> [0x80000608]:sd a1, 184(t1)<br>    |
|  46|[0x80003370]<br>0x0000000002000000|- rs1_val == 134217728<br>                                                                                                                                  |[0x80000610]:srli a1, a0, 2<br> [0x80000614]:sd a1, 192(t1)<br>     |
|  47|[0x80003378]<br>0x0000000000002000|- rs1_val == 536870912<br>                                                                                                                                  |[0x8000061c]:srli a1, a0, 16<br> [0x80000620]:sd a1, 200(t1)<br>    |
|  48|[0x80003380]<br>0x0000000001000000|- rs1_val == 1073741824<br>                                                                                                                                 |[0x80000628]:srli a1, a0, 6<br> [0x8000062c]:sd a1, 208(t1)<br>     |
|  49|[0x80003388]<br>0x0000000080000000|- rs1_val == 2147483648<br>                                                                                                                                 |[0x80000638]:srli a1, a0, 0<br> [0x8000063c]:sd a1, 216(t1)<br>     |
|  50|[0x80003390]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                 |[0x80000648]:srli a1, a0, 61<br> [0x8000064c]:sd a1, 224(t1)<br>    |
|  51|[0x80003398]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                 |[0x80000658]:srli a1, a0, 62<br> [0x8000065c]:sd a1, 232(t1)<br>    |
|  52|[0x800033a0]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                |[0x80000668]:srli a1, a0, 42<br> [0x8000066c]:sd a1, 240(t1)<br>    |
|  53|[0x800033a8]<br>0x0000000200000000|- rs1_val == 34359738368<br>                                                                                                                                |[0x80000678]:srli a1, a0, 2<br> [0x8000067c]:sd a1, 248(t1)<br>     |
|  54|[0x800033b0]<br>0x0000000004000000|- rs1_val == 68719476736<br>                                                                                                                                |[0x80000688]:srli a1, a0, 10<br> [0x8000068c]:sd a1, 256(t1)<br>    |
|  55|[0x800033b8]<br>0x0000000400000000|- rs1_val == 137438953472<br>                                                                                                                               |[0x80000698]:srli a1, a0, 3<br> [0x8000069c]:sd a1, 264(t1)<br>     |
|  56|[0x800033c0]<br>0x0000000000100000|- rs1_val == 274877906944<br>                                                                                                                               |[0x800006a8]:srli a1, a0, 18<br> [0x800006ac]:sd a1, 272(t1)<br>    |
|  57|[0x800033c8]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                               |[0x800006b8]:srli a1, a0, 55<br> [0x800006bc]:sd a1, 280(t1)<br>    |
|  58|[0x800033d0]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                              |[0x800006c8]:srli a1, a0, 47<br> [0x800006cc]:sd a1, 288(t1)<br>    |
|  59|[0x800033d8]<br>0x0000080000000000|- rs1_val == 8796093022208<br>                                                                                                                              |[0x800006d8]:srli a1, a0, 0<br> [0x800006dc]:sd a1, 296(t1)<br>     |
|  60|[0x800033e0]<br>0x0000040000000000|- rs1_val == 17592186044416<br>                                                                                                                             |[0x800006e8]:srli a1, a0, 2<br> [0x800006ec]:sd a1, 304(t1)<br>     |
|  61|[0x800033e8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                             |[0x800006f8]:srli a1, a0, 59<br> [0x800006fc]:sd a1, 312(t1)<br>    |
|  62|[0x800033f0]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                             |[0x80000708]:srli a1, a0, 62<br> [0x8000070c]:sd a1, 320(t1)<br>    |
|  63|[0x800033f8]<br>0x0000800000000000|- rs1_val == 281474976710656<br>                                                                                                                            |[0x80000718]:srli a1, a0, 1<br> [0x8000071c]:sd a1, 328(t1)<br>     |
|  64|[0x80003400]<br>0x0001000000000000|- rs1_val == 562949953421312<br>                                                                                                                            |[0x80000728]:srli a1, a0, 1<br> [0x8000072c]:sd a1, 336(t1)<br>     |
|  65|[0x80003408]<br>0x0004000000000000|- rs1_val == 1125899906842624<br>                                                                                                                           |[0x80000738]:srli a1, a0, 0<br> [0x8000073c]:sd a1, 344(t1)<br>     |
|  66|[0x80003410]<br>0x0002000000000000|- rs1_val == 2251799813685248<br>                                                                                                                           |[0x80000748]:srli a1, a0, 2<br> [0x8000074c]:sd a1, 352(t1)<br>     |
|  67|[0x80003418]<br>0x0000100000000000|- rs1_val == 4503599627370496<br>                                                                                                                           |[0x80000758]:srli a1, a0, 8<br> [0x8000075c]:sd a1, 360(t1)<br>     |
|  68|[0x80003420]<br>0x0040000000000000|- rs1_val == 36028797018963968<br>                                                                                                                          |[0x80000768]:srli a1, a0, 1<br> [0x8000076c]:sd a1, 368(t1)<br>     |
|  69|[0x80003428]<br>0x00000000000001FF|- rs1_val == -549755813889<br>                                                                                                                              |[0x8000077c]:srli a1, a0, 55<br> [0x80000780]:sd a1, 376(t1)<br>    |
|  70|[0x80003430]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                             |[0x80000790]:srli a1, a0, 0<br> [0x80000794]:sd a1, 384(t1)<br>     |
|  71|[0x80003438]<br>0x000007FFFFEFFFFF|- rs1_val == -2199023255553<br>                                                                                                                             |[0x800007a4]:srli a1, a0, 21<br> [0x800007a8]:sd a1, 392(t1)<br>    |
|  72|[0x80003440]<br>0x07FFFFDFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                             |[0x800007b8]:srli a1, a0, 5<br> [0x800007bc]:sd a1, 400(t1)<br>     |
|  73|[0x80003448]<br>0x0000000000000001|- rs1_val == -17592186044417<br>                                                                                                                            |[0x800007cc]:srli a1, a0, 63<br> [0x800007d0]:sd a1, 408(t1)<br>    |
|  74|[0x80003450]<br>0x0000000000000003|- rs1_val == -35184372088833<br>                                                                                                                            |[0x800007e0]:srli a1, a0, 62<br> [0x800007e4]:sd a1, 416(t1)<br>    |
|  75|[0x80003458]<br>0x0003FFFEFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                            |[0x800007f4]:srli a1, a0, 14<br> [0x800007f8]:sd a1, 424(t1)<br>    |
|  76|[0x80003460]<br>0x000000000001FFFE|- rs1_val == -140737488355329<br>                                                                                                                           |[0x80000808]:srli a1, a0, 47<br> [0x8000080c]:sd a1, 432(t1)<br>    |
|  77|[0x80003468]<br>0x000FFFEFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                           |[0x8000081c]:srli a1, a0, 12<br> [0x80000820]:sd a1, 440(t1)<br>    |
|  78|[0x80003470]<br>0x00000000FFFDFFFF|- rs1_val == -562949953421313<br>                                                                                                                           |[0x80000830]:srli a1, a0, 32<br> [0x80000834]:sd a1, 448(t1)<br>    |
|  79|[0x80003478]<br>0x000000000000001F|- rs1_val == -1125899906842625<br>                                                                                                                          |[0x80000844]:srli a1, a0, 59<br> [0x80000848]:sd a1, 456(t1)<br>    |
|  80|[0x80003480]<br>0x00000000FFF7FFFF|- rs1_val == -2251799813685249<br>                                                                                                                          |[0x80000858]:srli a1, a0, 32<br> [0x8000085c]:sd a1, 464(t1)<br>    |
|  81|[0x80003488]<br>0x003FFBFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                          |[0x8000086c]:srli a1, a0, 10<br> [0x80000870]:sd a1, 472(t1)<br>    |
|  82|[0x80003490]<br>0x00001FF7FFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                         |[0x80000880]:srli a1, a0, 19<br> [0x80000884]:sd a1, 480(t1)<br>    |
|  83|[0x80003498]<br>0x000000000000001F|- rs1_val == -36028797018963969<br>                                                                                                                         |[0x80000894]:srli a1, a0, 59<br> [0x80000898]:sd a1, 488(t1)<br>    |
|  84|[0x800034a0]<br>0x000000000001FDFF|- rs1_val == -72057594037927937<br>                                                                                                                         |[0x800008a8]:srli a1, a0, 47<br> [0x800008ac]:sd a1, 496(t1)<br>    |
|  85|[0x800034a8]<br>0x0000FDFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                        |[0x800008bc]:srli a1, a0, 16<br> [0x800008c0]:sd a1, 504(t1)<br>    |
|  86|[0x800034b0]<br>0x00001F7FFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                        |[0x800008d0]:srli a1, a0, 19<br> [0x800008d4]:sd a1, 512(t1)<br>    |
|  87|[0x800034b8]<br>0x00000000000001EF|- rs1_val == -576460752303423489<br>                                                                                                                        |[0x800008e4]:srli a1, a0, 55<br> [0x800008e8]:sd a1, 520(t1)<br>    |
|  88|[0x800034c0]<br>0x000000000000001B|- rs1_val == -2305843009213693953<br>                                                                                                                       |[0x800008f8]:srli a1, a0, 59<br> [0x800008fc]:sd a1, 528(t1)<br>    |
|  89|[0x800034c8]<br>0x00000000BFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                       |[0x8000090c]:srli a1, a0, 32<br> [0x80000910]:sd a1, 536(t1)<br>    |
|  90|[0x800034d0]<br>0x002AAAAAAAAAAAAA|- rs1_val == 6148914691236517205<br>                                                                                                                        |[0x80000934]:srli a1, a0, 9<br> [0x80000938]:sd a1, 544(t1)<br>     |
|  91|[0x800034d8]<br>0x5555555555555555|- rs1_val == -6148914691236517206<br>                                                                                                                       |[0x8000095c]:srli a1, a0, 1<br> [0x80000960]:sd a1, 552(t1)<br>     |
|  92|[0x800034e0]<br>0x0000200000000000|- rs1_val == 72057594037927936<br>                                                                                                                          |[0x8000096c]:srli a1, a0, 11<br> [0x80000970]:sd a1, 560(t1)<br>    |
|  93|[0x800034e8]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                         |[0x8000097c]:srli a1, a0, 63<br> [0x80000980]:sd a1, 568(t1)<br>    |
|  94|[0x800034f0]<br>0x0010000000000000|- rs1_val == 288230376151711744<br>                                                                                                                         |[0x8000098c]:srli a1, a0, 6<br> [0x80000990]:sd a1, 576(t1)<br>     |
|  95|[0x800034f8]<br>0x0002000000000000|- rs1_val == 576460752303423488<br>                                                                                                                         |[0x8000099c]:srli a1, a0, 10<br> [0x800009a0]:sd a1, 584(t1)<br>    |
|  96|[0x80003500]<br>0x0001000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                        |[0x800009ac]:srli a1, a0, 12<br> [0x800009b0]:sd a1, 592(t1)<br>    |
|  97|[0x80003508]<br>0x0080000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                        |[0x800009bc]:srli a1, a0, 6<br> [0x800009c0]:sd a1, 600(t1)<br>     |
|  98|[0x80003510]<br>0x1000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                        |[0x800009cc]:srli a1, a0, 2<br> [0x800009d0]:sd a1, 608(t1)<br>     |
|  99|[0x80003518]<br>0x0001FFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                         |[0x800009d8]:srli a1, a0, 15<br> [0x800009dc]:sd a1, 616(t1)<br>    |
| 100|[0x80003520]<br>0x000007FFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                         |[0x800009e4]:srli a1, a0, 21<br> [0x800009e8]:sd a1, 624(t1)<br>    |
| 101|[0x80003528]<br>0x7FFFFFFFFFFFFFFB|- rs1_val == -9<br>                                                                                                                                         |[0x800009f0]:srli a1, a0, 1<br> [0x800009f4]:sd a1, 632(t1)<br>     |
| 102|[0x80003530]<br>0x0000000000000001|- rs1_val == -17<br>                                                                                                                                        |[0x800009fc]:srli a1, a0, 63<br> [0x80000a00]:sd a1, 640(t1)<br>    |
| 103|[0x80003538]<br>0x00000001FFFFFFFF|- rs1_val == -33<br>                                                                                                                                        |[0x80000a08]:srli a1, a0, 31<br> [0x80000a0c]:sd a1, 648(t1)<br>    |
| 104|[0x80003540]<br>0x000FFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                        |[0x80000a14]:srli a1, a0, 12<br> [0x80000a18]:sd a1, 656(t1)<br>    |
| 105|[0x80003548]<br>0x0000000000000001|- rs1_val == -129<br>                                                                                                                                       |[0x80000a20]:srli a1, a0, 63<br> [0x80000a24]:sd a1, 664(t1)<br>    |
| 106|[0x80003550]<br>0x00000001FFFFFFFF|- rs1_val == -513<br>                                                                                                                                       |[0x80000a2c]:srli a1, a0, 31<br> [0x80000a30]:sd a1, 672(t1)<br>    |
| 107|[0x80003558]<br>0x00003FFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                      |[0x80000a38]:srli a1, a0, 18<br> [0x80000a3c]:sd a1, 680(t1)<br>    |
| 108|[0x80003560]<br>0x0000FFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                      |[0x80000a48]:srli a1, a0, 16<br> [0x80000a4c]:sd a1, 688(t1)<br>    |
| 109|[0x80003568]<br>0x007FFFFFFFFFFFF7|- rs1_val == -4097<br>                                                                                                                                      |[0x80000a58]:srli a1, a0, 9<br> [0x80000a5c]:sd a1, 696(t1)<br>     |
| 110|[0x80003570]<br>0x00007FFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                      |[0x80000a68]:srli a1, a0, 17<br> [0x80000a6c]:sd a1, 704(t1)<br>    |
| 111|[0x80003578]<br>0x00007FFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                     |[0x80000a78]:srli a1, a0, 17<br> [0x80000a7c]:sd a1, 712(t1)<br>    |
| 112|[0x80003580]<br>0x00003FFFFFFFFFFF|- rs1_val == -32769<br>                                                                                                                                     |[0x80000a88]:srli a1, a0, 18<br> [0x80000a8c]:sd a1, 720(t1)<br>    |
| 113|[0x80003588]<br>0x07FFFFFFFFFFF7FF|- rs1_val == -65537<br>                                                                                                                                     |[0x80000a98]:srli a1, a0, 5<br> [0x80000a9c]:sd a1, 728(t1)<br>     |
| 114|[0x80003590]<br>0x07FFFFFFFFFFEFFF|- rs1_val == -131073<br>                                                                                                                                    |[0x80000aa8]:srli a1, a0, 5<br> [0x80000aac]:sd a1, 736(t1)<br>     |
| 115|[0x80003598]<br>0x0007FFFFFFFFFFBF|- rs1_val == -524289<br>                                                                                                                                    |[0x80000ab8]:srli a1, a0, 13<br> [0x80000abc]:sd a1, 744(t1)<br>    |
| 116|[0x800035a0]<br>0x003FFFFFFFFFFBFF|- rs1_val == -1048577<br>                                                                                                                                   |[0x80000ac8]:srli a1, a0, 10<br> [0x80000acc]:sd a1, 752(t1)<br>    |
| 117|[0x800035a8]<br>0x00000000000001FF|- rs1_val == -2097153<br>                                                                                                                                   |[0x80000ad8]:srli a1, a0, 55<br> [0x80000adc]:sd a1, 760(t1)<br>    |
| 118|[0x800035b0]<br>0x0000FFFFFFFFFFBF|- rs1_val == -4194305<br>                                                                                                                                   |[0x80000ae8]:srli a1, a0, 16<br> [0x80000aec]:sd a1, 768(t1)<br>    |
| 119|[0x800035b8]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                                  |[0x80000af8]:srli a1, a0, 0<br> [0x80000afc]:sd a1, 776(t1)<br>     |
| 120|[0x800035c0]<br>0x000000000000001F|- rs1_val == -67108865<br>                                                                                                                                  |[0x80000b08]:srli a1, a0, 59<br> [0x80000b0c]:sd a1, 784(t1)<br>    |
| 121|[0x800035c8]<br>0x0001FFFFFFFFEFFF|- rs1_val == -134217729<br>                                                                                                                                 |[0x80000b18]:srli a1, a0, 15<br> [0x80000b1c]:sd a1, 792(t1)<br>    |
| 122|[0x800035d0]<br>0x00000000000001FF|- rs1_val == -268435457<br>                                                                                                                                 |[0x80000b28]:srli a1, a0, 55<br> [0x80000b2c]:sd a1, 800(t1)<br>    |
| 123|[0x800035d8]<br>0x007FFFFFFFEFFFFF|- rs1_val == -536870913<br>                                                                                                                                 |[0x80000b38]:srli a1, a0, 9<br> [0x80000b3c]:sd a1, 808(t1)<br>     |
| 124|[0x800035e0]<br>0x00001FFFFFFFF7FF|- rs1_val == -1073741825<br>                                                                                                                                |[0x80000b48]:srli a1, a0, 19<br> [0x80000b4c]:sd a1, 816(t1)<br>    |
| 125|[0x800035e8]<br>0x03FFFFFFFDFFFFFF|- rs1_val == -2147483649<br>                                                                                                                                |[0x80000b5c]:srli a1, a0, 6<br> [0x80000b60]:sd a1, 824(t1)<br>     |
| 126|[0x800035f0]<br>0x0001FFFFFFFDFFFF|- rs1_val == -4294967297<br>                                                                                                                                |[0x80000b70]:srli a1, a0, 15<br> [0x80000b74]:sd a1, 832(t1)<br>    |
| 127|[0x800035f8]<br>0x00000000003FFFFF|- rs1_val == -8589934593<br>                                                                                                                                |[0x80000b84]:srli a1, a0, 42<br> [0x80000b88]:sd a1, 840(t1)<br>    |
| 128|[0x80003600]<br>0x00000000FFFFFFFB|- rs1_val == -17179869185<br>                                                                                                                               |[0x80000b98]:srli a1, a0, 32<br> [0x80000b9c]:sd a1, 848(t1)<br>    |
| 129|[0x80003608]<br>0x07FFFFFFBFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                               |[0x80000bac]:srli a1, a0, 5<br> [0x80000bb0]:sd a1, 856(t1)<br>     |
| 130|[0x80003610]<br>0x000FFFFFFEFFFFFF|- rs1_val == -68719476737<br>                                                                                                                               |[0x80000bc0]:srli a1, a0, 12<br> [0x80000bc4]:sd a1, 864(t1)<br>    |
| 131|[0x80003618]<br>0x0007FFFFFEFFFFFF|- rs1_val == -137438953473<br>                                                                                                                              |[0x80000bd4]:srli a1, a0, 13<br> [0x80000bd8]:sd a1, 872(t1)<br>    |
