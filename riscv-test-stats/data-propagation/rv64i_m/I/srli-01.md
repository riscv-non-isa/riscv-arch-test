
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e30')]      |
| SIG_REGION                | [('0x80002010', '0x800024e0', '154 dwords')]      |
| COV_LABELS                | srli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 244      |
| Total Signature Updates   | 153      |
| STAT1                     | 152      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e18]:srli a1, a0, 14
      [0x80000e1c]:sd a1, 1032(gp)
 -- Signature Address: 0x800024c8 Data: 0x000000000002D413
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val==3037000499






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

|s.no|            signature             |                                                                coverpoints                                                                |                               code                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002010]<br>0x00FFFFFFFFFFFFFF|- opcode : srli<br> - rs1 : x26<br> - rd : x26<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - imm_val == 8<br> |[0x8000039c]:srli s10, s10, 8<br> [0x800003a0]:sd s10, 0(a6)<br>   |
|   2|[0x80002018]<br>0x0000000000000000|- rs1 : x25<br> - rd : x0<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val==3037000499<br>               |[0x800003b4]:srli zero, s9, 14<br> [0x800003b8]:sd zero, 8(a6)<br> |
|   3|[0x80002020]<br>0xFFFFFFDFFFFFFFFF|- rs1 : x21<br> - rd : x6<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -137438953473<br>                                            |[0x800003c8]:srli t1, s5, 0<br> [0x800003cc]:sd t1, 16(a6)<br>     |
|   4|[0x80002028]<br>0x6666666666666666|- rs1 : x17<br> - rd : x5<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val==7378697629483820646<br>                                        |[0x800003f0]:srli t0, a7, 0<br> [0x800003f4]:sd t0, 24(a6)<br>     |
|   5|[0x80002030]<br>0x0000000000000001|- rs1 : x30<br> - rd : x24<br> - rs1_val < 0 and imm_val == (xlen-1)<br>                                                                   |[0x800003fc]:srli s8, t5, 63<br> [0x80000400]:sd s8, 32(a6)<br>    |
|   6|[0x80002038]<br>0x0000000000000000|- rs1 : x4<br> - rd : x1<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 2251799813685248<br>                                   |[0x8000040c]:srli ra, tp, 63<br> [0x80000410]:sd ra, 40(a6)<br>    |
|   7|[0x80002040]<br>0x0000000000000000|- rs1 : x9<br> - rd : x13<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val==3<br>                                 |[0x80000418]:srli a3, s1, 3<br> [0x8000041c]:sd a3, 48(a6)<br>     |
|   8|[0x80002048]<br>0x0040000000000000|- rs1 : x2<br> - rd : x3<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>     |[0x80000428]:srli gp, sp, 9<br> [0x8000042c]:sd gp, 56(a6)<br>     |
|   9|[0x80002050]<br>0x0000000000000000|- rs1 : x8<br> - rd : x10<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br>                                      |[0x80000434]:srli a0, fp, 3<br> [0x80000438]:sd a0, 64(a6)<br>     |
|  10|[0x80002058]<br>0x000FFFFFFFFFFFFF|- rs1 : x6<br> - rd : x23<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>    |[0x80000448]:srli s7, t1, 11<br> [0x8000044c]:sd s7, 72(a6)<br>    |
|  11|[0x80002060]<br>0x0000000000000000|- rs1 : x12<br> - rd : x28<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 21<br>               |[0x80000454]:srli t3, a2, 21<br> [0x80000458]:sd t3, 80(a6)<br>    |
|  12|[0x80002068]<br>0x0000000000000000|- rs1 : x15<br> - rd : x7<br> - rs1_val == 2<br> - rs1_val==2<br> - imm_val == 59<br>                                                      |[0x80000460]:srli t2, a5, 59<br> [0x80000464]:sd t2, 88(a6)<br>    |
|  13|[0x80002070]<br>0x0000000000000000|- rs1 : x11<br> - rd : x15<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                         |[0x8000046c]:srli a5, a1, 63<br> [0x80000470]:sd a5, 96(a6)<br>    |
|  14|[0x80002078]<br>0x0000000000000000|- rs1 : x19<br> - rd : x9<br> - rs1_val == 8<br>                                                                                           |[0x80000478]:srli s1, s3, 8<br> [0x8000047c]:sd s1, 104(a6)<br>    |
|  15|[0x80002080]<br>0x0000000000000000|- rs1 : x28<br> - rd : x25<br> - rs1_val == 16<br>                                                                                         |[0x80000484]:srli s9, t3, 7<br> [0x80000488]:sd s9, 112(a6)<br>    |
|  16|[0x80002088]<br>0x0000000000000000|- rs1 : x27<br> - rd : x31<br> - rs1_val == 32<br>                                                                                         |[0x80000490]:srli t6, s11, 17<br> [0x80000494]:sd t6, 120(a6)<br>  |
|  17|[0x80002090]<br>0x0000000000000020|- rs1 : x14<br> - rd : x21<br> - rs1_val == 64<br> - imm_val == 1<br>                                                                      |[0x8000049c]:srli s5, a4, 1<br> [0x800004a0]:sd s5, 128(a6)<br>    |
|  18|[0x80002098]<br>0x0000000000000004|- rs1 : x3<br> - rd : x30<br> - rs1_val == 128<br>                                                                                         |[0x800004a8]:srli t5, gp, 5<br> [0x800004ac]:sd t5, 136(a6)<br>    |
|  19|[0x800020a0]<br>0x0000000000000001|- rs1 : x18<br> - rd : x8<br> - rs1_val == 256<br>                                                                                         |[0x800004b4]:srli fp, s2, 8<br> [0x800004b8]:sd fp, 144(a6)<br>    |
|  20|[0x800020a8]<br>0x0000000000000000|- rs1 : x31<br> - rd : x17<br> - rs1_val == 512<br> - imm_val == 47<br>                                                                    |[0x800004c0]:srli a7, t6, 47<br> [0x800004c4]:sd a7, 152(a6)<br>   |
|  21|[0x800020b0]<br>0x0000000000000000|- rs1 : x7<br> - rd : x18<br> - rs1_val == 1024<br>                                                                                        |[0x800004cc]:srli s2, t2, 19<br> [0x800004d0]:sd s2, 160(a6)<br>   |
|  22|[0x800020b8]<br>0x0000000000000000|- rs1 : x29<br> - rd : x4<br> - rs1_val == 2048<br>                                                                                        |[0x800004dc]:srli tp, t4, 19<br> [0x800004e0]:sd tp, 168(a6)<br>   |
|  23|[0x800020c0]<br>0x0000000000000001|- rs1 : x20<br> - rd : x19<br> - rs1_val == 4096<br>                                                                                       |[0x800004f0]:srli s3, s4, 12<br> [0x800004f4]:sd s3, 0(gp)<br>     |
|  24|[0x800020c8]<br>0x0000000000001000|- rs1 : x5<br> - rd : x16<br> - rs1_val == 8192<br>                                                                                        |[0x800004fc]:srli a6, t0, 1<br> [0x80000500]:sd a6, 8(gp)<br>      |
|  25|[0x800020d0]<br>0x0000000000000040|- rs1 : x1<br> - rd : x14<br> - rs1_val == 16384<br>                                                                                       |[0x80000508]:srli a4, ra, 8<br> [0x8000050c]:sd a4, 16(gp)<br>     |
|  26|[0x800020d8]<br>0x0000000000000200|- rs1 : x10<br> - rd : x2<br> - rs1_val == 32768<br>                                                                                       |[0x80000514]:srli sp, a0, 6<br> [0x80000518]:sd sp, 24(gp)<br>     |
|  27|[0x800020e0]<br>0x0000000000000000|- rs1 : x16<br> - rd : x20<br> - rs1_val == 65536<br>                                                                                      |[0x80000520]:srli s4, a6, 47<br> [0x80000524]:sd s4, 32(gp)<br>    |
|  28|[0x800020e8]<br>0x0000000000000004|- rs1 : x13<br> - rd : x27<br> - rs1_val == 131072<br>                                                                                     |[0x8000052c]:srli s11, a3, 15<br> [0x80000530]:sd s11, 40(gp)<br>  |
|  29|[0x800020f0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x29<br>                                                                                                              |[0x80000538]:srli t4, zero, 7<br> [0x8000053c]:sd t4, 48(gp)<br>   |
|  30|[0x800020f8]<br>0x0000000000000000|- rs1 : x24<br> - rd : x11<br> - rs1_val == 524288<br> - imm_val == 42<br>                                                                 |[0x80000544]:srli a1, s8, 42<br> [0x80000548]:sd a1, 56(gp)<br>    |
|  31|[0x80002100]<br>0x0000000000000000|- rs1 : x23<br> - rd : x22<br> - rs1_val == 1048576<br> - imm_val == 32<br>                                                                |[0x80000550]:srli s6, s7, 32<br> [0x80000554]:sd s6, 64(gp)<br>    |
|  32|[0x80002108]<br>0x0000000000100000|- rs1 : x22<br> - rd : x12<br> - rs1_val == 2097152<br>                                                                                    |[0x8000055c]:srli a2, s6, 1<br> [0x80000560]:sd a2, 72(gp)<br>     |
|  33|[0x80002110]<br>0x0000000000010000|- rs1_val == 4194304<br>                                                                                                                   |[0x80000568]:srli a1, a0, 6<br> [0x8000056c]:sd a1, 80(gp)<br>     |
|  34|[0x80002118]<br>0x0000000000000400|- rs1_val == 8388608<br>                                                                                                                   |[0x80000574]:srli a1, a0, 13<br> [0x80000578]:sd a1, 88(gp)<br>    |
|  35|[0x80002120]<br>0x0000000000000000|- rs1_val == 16777216<br> - imm_val == 31<br>                                                                                              |[0x80000580]:srli a1, a0, 31<br> [0x80000584]:sd a1, 96(gp)<br>    |
|  36|[0x80002128]<br>0x0000000000004000|- rs1_val == 33554432<br>                                                                                                                  |[0x8000058c]:srli a1, a0, 11<br> [0x80000590]:sd a1, 104(gp)<br>   |
|  37|[0x80002130]<br>0x0000000000000000|- rs1_val == 67108864<br>                                                                                                                  |[0x80000598]:srli a1, a0, 31<br> [0x8000059c]:sd a1, 112(gp)<br>   |
|  38|[0x80002138]<br>0x0000000000000200|- rs1_val == 134217728<br>                                                                                                                 |[0x800005a4]:srli a1, a0, 18<br> [0x800005a8]:sd a1, 120(gp)<br>   |
|  39|[0x80002140]<br>0x0000000010000000|- rs1_val == 268435456<br>                                                                                                                 |[0x800005b0]:srli a1, a0, 0<br> [0x800005b4]:sd a1, 128(gp)<br>    |
|  40|[0x80002148]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                 |[0x800005bc]:srli a1, a0, 42<br> [0x800005c0]:sd a1, 136(gp)<br>   |
|  41|[0x80002150]<br>0x0000000000000200|- rs1_val == 1073741824<br>                                                                                                                |[0x800005c8]:srli a1, a0, 21<br> [0x800005cc]:sd a1, 144(gp)<br>   |
|  42|[0x80002158]<br>0x0000000000200000|- rs1_val == 2147483648<br>                                                                                                                |[0x800005d8]:srli a1, a0, 10<br> [0x800005dc]:sd a1, 152(gp)<br>   |
|  43|[0x80002160]<br>0x0000000000002000|- rs1_val == 4294967296<br>                                                                                                                |[0x800005e8]:srli a1, a0, 19<br> [0x800005ec]:sd a1, 160(gp)<br>   |
|  44|[0x80002168]<br>0x0000000000008000|- rs1_val == 8589934592<br>                                                                                                                |[0x800005f8]:srli a1, a0, 18<br> [0x800005fc]:sd a1, 168(gp)<br>   |
|  45|[0x80002170]<br>0x0000000400000000|- rs1_val == 17179869184<br>                                                                                                               |[0x80000608]:srli a1, a0, 0<br> [0x8000060c]:sd a1, 176(gp)<br>    |
|  46|[0x80002178]<br>0x0000000100000000|- rs1_val == 34359738368<br>                                                                                                               |[0x80000618]:srli a1, a0, 3<br> [0x8000061c]:sd a1, 184(gp)<br>    |
|  47|[0x80002180]<br>0x0000000000800000|- rs1_val == 68719476736<br>                                                                                                               |[0x80000628]:srli a1, a0, 13<br> [0x8000062c]:sd a1, 192(gp)<br>   |
|  48|[0x80002188]<br>0x0000000000000040|- rs1_val == 137438953472<br>                                                                                                              |[0x80000638]:srli a1, a0, 31<br> [0x8000063c]:sd a1, 200(gp)<br>   |
|  49|[0x80002190]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                              |[0x80000648]:srli a1, a0, 59<br> [0x8000064c]:sd a1, 208(gp)<br>   |
|  50|[0x80002198]<br>0x0000000800000000|- rs1_val == 549755813888<br> - imm_val == 4<br>                                                                                           |[0x80000658]:srli a1, a0, 4<br> [0x8000065c]:sd a1, 216(gp)<br>    |
|  51|[0x800021a0]<br>0x0000000000080000|- rs1_val == 1099511627776<br>                                                                                                             |[0x80000668]:srli a1, a0, 21<br> [0x8000066c]:sd a1, 224(gp)<br>   |
|  52|[0x800021a8]<br>0x0000000000400000|- rs1_val == 2199023255552<br>                                                                                                             |[0x80000678]:srli a1, a0, 19<br> [0x8000067c]:sd a1, 232(gp)<br>   |
|  53|[0x800021b0]<br>0x0000000000000000|- rs1_val == 4398046511104<br> - imm_val == 61<br>                                                                                         |[0x80000688]:srli a1, a0, 61<br> [0x8000068c]:sd a1, 240(gp)<br>   |
|  54|[0x800021b8]<br>0x0000000000000002|- rs1_val == 8796093022208<br>                                                                                                             |[0x80000698]:srli a1, a0, 42<br> [0x8000069c]:sd a1, 248(gp)<br>   |
|  55|[0x800021c0]<br>0x0000100000000000|- rs1_val == 17592186044416<br>                                                                                                            |[0x800006a8]:srli a1, a0, 0<br> [0x800006ac]:sd a1, 256(gp)<br>    |
|  56|[0x800021c8]<br>0x0000100000000000|- rs1_val == 35184372088832<br>                                                                                                            |[0x800006b8]:srli a1, a0, 1<br> [0x800006bc]:sd a1, 264(gp)<br>    |
|  57|[0x800021d0]<br>0x0000000800000000|- rs1_val == 70368744177664<br>                                                                                                            |[0x800006c8]:srli a1, a0, 11<br> [0x800006cc]:sd a1, 272(gp)<br>   |
|  58|[0x800021d8]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                           |[0x800006d8]:srli a1, a0, 61<br> [0x800006dc]:sd a1, 280(gp)<br>   |
|  59|[0x800021e0]<br>0x0000000000000040|- rs1_val == 281474976710656<br>                                                                                                           |[0x800006e8]:srli a1, a0, 42<br> [0x800006ec]:sd a1, 288(gp)<br>   |
|  60|[0x800021e8]<br>0x0000020000000000|- rs1_val == 562949953421312<br>                                                                                                           |[0x800006f8]:srli a1, a0, 8<br> [0x800006fc]:sd a1, 296(gp)<br>    |
|  61|[0x800021f0]<br>0x0000000000040000|- rs1_val == 1125899906842624<br>                                                                                                          |[0x80000708]:srli a1, a0, 32<br> [0x8000070c]:sd a1, 304(gp)<br>   |
|  62|[0x800021f8]<br>0x0000000000000400|- rs1_val == 4503599627370496<br>                                                                                                          |[0x80000718]:srli a1, a0, 42<br> [0x8000071c]:sd a1, 312(gp)<br>   |
|  63|[0x80002200]<br>0x0000000000000000|- rs1_val == 9007199254740992<br> - imm_val == 62<br>                                                                                      |[0x80000728]:srli a1, a0, 62<br> [0x8000072c]:sd a1, 320(gp)<br>   |
|  64|[0x80002208]<br>0x0000020000000000|- rs1_val == 18014398509481984<br>                                                                                                         |[0x80000738]:srli a1, a0, 13<br> [0x8000073c]:sd a1, 328(gp)<br>   |
|  65|[0x80002210]<br>0x0000002000000000|- rs1_val == 36028797018963968<br>                                                                                                         |[0x80000748]:srli a1, a0, 18<br> [0x8000074c]:sd a1, 336(gp)<br>   |
|  66|[0x80002218]<br>0x0000004000000000|- rs1_val == 72057594037927936<br>                                                                                                         |[0x80000758]:srli a1, a0, 18<br> [0x8000075c]:sd a1, 344(gp)<br>   |
|  67|[0x80002220]<br>0x0000100000000000|- rs1_val == 144115188075855872<br>                                                                                                        |[0x80000768]:srli a1, a0, 13<br> [0x8000076c]:sd a1, 352(gp)<br>   |
|  68|[0x80002228]<br>0x0010000000000000|- rs1_val == 288230376151711744<br>                                                                                                        |[0x80000778]:srli a1, a0, 6<br> [0x8000077c]:sd a1, 360(gp)<br>    |
|  69|[0x80002230]<br>0x0000000008000000|- rs1_val == 576460752303423488<br>                                                                                                        |[0x80000788]:srli a1, a0, 32<br> [0x8000078c]:sd a1, 368(gp)<br>   |
|  70|[0x80002238]<br>0x0200000000000000|- rs1_val == 1152921504606846976<br>                                                                                                       |[0x80000798]:srli a1, a0, 3<br> [0x8000079c]:sd a1, 376(gp)<br>    |
|  71|[0x80002240]<br>0x0400000000000000|- rs1_val == 2305843009213693952<br>                                                                                                       |[0x800007a8]:srli a1, a0, 3<br> [0x800007ac]:sd a1, 384(gp)<br>    |
|  72|[0x80002248]<br>0x0000800000000000|- rs1_val == 4611686018427387904<br>                                                                                                       |[0x800007b8]:srli a1, a0, 15<br> [0x800007bc]:sd a1, 392(gp)<br>   |
|  73|[0x80002250]<br>0x0000FFFFFFFFFFFF|- rs1_val == -2<br> - imm_val == 16<br>                                                                                                    |[0x800007c4]:srli a1, a0, 16<br> [0x800007c8]:sd a1, 400(gp)<br>   |
|  74|[0x80002258]<br>0x0000000000000007|- rs1_val == -3<br>                                                                                                                        |[0x800007d0]:srli a1, a0, 61<br> [0x800007d4]:sd a1, 408(gp)<br>   |
|  75|[0x80002260]<br>0x0000000000000001|- rs1_val == -5<br>                                                                                                                        |[0x800007dc]:srli a1, a0, 63<br> [0x800007e0]:sd a1, 416(gp)<br>   |
|  76|[0x80002268]<br>0x1FFFFFFFFFFFFFFE|- rs1_val == -9<br>                                                                                                                        |[0x800007e8]:srli a1, a0, 3<br> [0x800007ec]:sd a1, 424(gp)<br>    |
|  77|[0x80002270]<br>0x000FFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                       |[0x800007f4]:srli a1, a0, 12<br> [0x800007f8]:sd a1, 432(gp)<br>   |
|  78|[0x80002278]<br>0x03FFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                       |[0x80000800]:srli a1, a0, 6<br> [0x80000804]:sd a1, 440(gp)<br>    |
|  79|[0x80002280]<br>0x07FFFFFFFFFFFFFD|- rs1_val == -65<br>                                                                                                                       |[0x8000080c]:srli a1, a0, 5<br> [0x80000810]:sd a1, 448(gp)<br>    |
|  80|[0x80002288]<br>0x0007FFFFFFFFFFFF|- rs1_val == -129<br>                                                                                                                      |[0x80000818]:srli a1, a0, 13<br> [0x8000081c]:sd a1, 456(gp)<br>   |
|  81|[0x80002290]<br>0x0000000000000003|- rs1_val == -257<br>                                                                                                                      |[0x80000824]:srli a1, a0, 62<br> [0x80000828]:sd a1, 464(gp)<br>   |
|  82|[0x80002298]<br>0x0007FFFFFFFFFFFF|- rs1_val == -513<br>                                                                                                                      |[0x80000830]:srli a1, a0, 13<br> [0x80000834]:sd a1, 472(gp)<br>   |
|  83|[0x800022a0]<br>0x007FFFFFFFFFFFFD|- rs1_val == -1025<br>                                                                                                                     |[0x8000083c]:srli a1, a0, 9<br> [0x80000840]:sd a1, 480(gp)<br>    |
|  84|[0x800022a8]<br>0x0003FFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                     |[0x8000084c]:srli a1, a0, 14<br> [0x80000850]:sd a1, 488(gp)<br>   |
|  85|[0x800022b0]<br>0x00000000000001FF|- rs1_val == -4097<br> - imm_val == 55<br>                                                                                                 |[0x8000085c]:srli a1, a0, 55<br> [0x80000860]:sd a1, 496(gp)<br>   |
|  86|[0x800022b8]<br>0x03FFFFFFFFFFFF7F|- rs1_val == -8193<br>                                                                                                                     |[0x8000086c]:srli a1, a0, 6<br> [0x80000870]:sd a1, 504(gp)<br>    |
|  87|[0x800022c0]<br>0x00003FFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                    |[0x8000087c]:srli a1, a0, 18<br> [0x80000880]:sd a1, 512(gp)<br>   |
|  88|[0x800022c8]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -32769<br>                                                                                                                    |[0x8000088c]:srli a1, a0, 0<br> [0x80000890]:sd a1, 520(gp)<br>    |
|  89|[0x800022d0]<br>0x0003FFFFFFFFFFFB|- rs1_val == -65537<br>                                                                                                                    |[0x8000089c]:srli a1, a0, 14<br> [0x800008a0]:sd a1, 528(gp)<br>   |
|  90|[0x800022d8]<br>0x00000001FFFFFFFF|- rs1_val == -131073<br>                                                                                                                   |[0x800008ac]:srli a1, a0, 31<br> [0x800008b0]:sd a1, 536(gp)<br>   |
|  91|[0x800022e0]<br>0x00003FF7FFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                         |[0x800008c0]:srli a1, a0, 18<br> [0x800008c4]:sd a1, 544(gp)<br>   |
|  92|[0x800022e8]<br>0x00000001FF7FFFFF|- rs1_val == -18014398509481985<br>                                                                                                        |[0x800008d4]:srli a1, a0, 31<br> [0x800008d8]:sd a1, 552(gp)<br>   |
|  93|[0x800022f0]<br>0x000000000000001F|- rs1_val == -36028797018963969<br>                                                                                                        |[0x800008e8]:srli a1, a0, 59<br> [0x800008ec]:sd a1, 560(gp)<br>   |
|  94|[0x800022f8]<br>0x1FDFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                        |[0x800008fc]:srli a1, a0, 3<br> [0x80000900]:sd a1, 568(gp)<br>    |
|  95|[0x80002300]<br>0x00003F7FFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                       |[0x80000910]:srli a1, a0, 18<br> [0x80000914]:sd a1, 576(gp)<br>   |
|  96|[0x80002308]<br>0x00FBFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                       |[0x80000924]:srli a1, a0, 8<br> [0x80000928]:sd a1, 584(gp)<br>    |
|  97|[0x80002310]<br>0x00003DFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                       |[0x80000938]:srli a1, a0, 18<br> [0x8000093c]:sd a1, 592(gp)<br>   |
|  98|[0x80002318]<br>0x001DFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                      |[0x8000094c]:srli a1, a0, 11<br> [0x80000950]:sd a1, 600(gp)<br>   |
|  99|[0x80002320]<br>0x000DFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                      |[0x80000960]:srli a1, a0, 12<br> [0x80000964]:sd a1, 608(gp)<br>   |
| 100|[0x80002328]<br>0x00002FFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                      |[0x80000974]:srli a1, a0, 18<br> [0x80000978]:sd a1, 616(gp)<br>   |
| 101|[0x80002330]<br>0x002AAAAAAAAAAAAA|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                    |[0x8000099c]:srli a1, a0, 9<br> [0x800009a0]:sd a1, 624(gp)<br>    |
| 102|[0x80002338]<br>0x5555555555555555|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                  |[0x800009c4]:srli a1, a0, 1<br> [0x800009c8]:sd a1, 632(gp)<br>    |
| 103|[0x80002340]<br>0x0000000000000000|- rs1_val==5<br>                                                                                                                           |[0x800009d0]:srli a1, a0, 19<br> [0x800009d4]:sd a1, 640(gp)<br>   |
| 104|[0x80002348]<br>0x0000000033333333|- rs1_val==3689348814741910323<br>                                                                                                         |[0x800009f8]:srli a1, a0, 32<br> [0x800009fc]:sd a1, 648(gp)<br>   |
| 105|[0x80002350]<br>0x07FFFFFFFA57D866|- rs1_val==-3037000499<br>                                                                                                                 |[0x80000a10]:srli a1, a0, 5<br> [0x80000a14]:sd a1, 656(gp)<br>    |
| 106|[0x80002358]<br>0x2AAAAAAAAAAAAAAA|- rs1_val==6148914691236517204<br>                                                                                                         |[0x80000a38]:srli a1, a0, 1<br> [0x80000a3c]:sd a1, 664(gp)<br>    |
| 107|[0x80002360]<br>0x0066666666666666|- rs1_val==3689348814741910322<br>                                                                                                         |[0x80000a60]:srli a1, a0, 7<br> [0x80000a64]:sd a1, 672(gp)<br>    |
| 108|[0x80002368]<br>0x000000000000CCCC|- rs1_val==7378697629483820645<br>                                                                                                         |[0x80000a88]:srli a1, a0, 47<br> [0x80000a8c]:sd a1, 680(gp)<br>   |
| 109|[0x80002370]<br>0x00000000000005A8|- rs1_val==3037000498<br>                                                                                                                  |[0x80000aa0]:srli a1, a0, 21<br> [0x80000aa4]:sd a1, 688(gp)<br>   |
| 110|[0x80002378]<br>0x000AAAAAAAAAAAAA|- rs1_val==6148914691236517206<br>                                                                                                         |[0x80000ac8]:srli a1, a0, 11<br> [0x80000acc]:sd a1, 696(gp)<br>   |
| 111|[0x80002380]<br>0x002AAAAAAAAAAAAA|- rs1_val==-6148914691236517205<br>                                                                                                        |[0x80000af0]:srli a1, a0, 10<br> [0x80000af4]:sd a1, 704(gp)<br>   |
| 112|[0x80002388]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                           |[0x80000afc]:srli a1, a0, 13<br> [0x80000b00]:sd a1, 712(gp)<br>   |
| 113|[0x80002390]<br>0x0000CCCCCCCCCCCC|- rs1_val==3689348814741910324<br>                                                                                                         |[0x80000b24]:srli a1, a0, 14<br> [0x80000b28]:sd a1, 720(gp)<br>   |
| 114|[0x80002398]<br>0x6666666666666667|- rs1_val==7378697629483820647<br>                                                                                                         |[0x80000b4c]:srli a1, a0, 0<br> [0x80000b50]:sd a1, 728(gp)<br>    |
| 115|[0x800023a0]<br>0x0000000000000003|- rs1_val==-3037000498<br>                                                                                                                 |[0x80000b64]:srli a1, a0, 62<br> [0x80000b68]:sd a1, 736(gp)<br>   |
| 116|[0x800023a8]<br>0x0000000000000000|- rs1_val==3037000500<br>                                                                                                                  |[0x80000b7c]:srli a1, a0, 32<br> [0x80000b80]:sd a1, 744(gp)<br>   |
| 117|[0x800023b0]<br>0x0010000000000000|- imm_val == 2<br>                                                                                                                         |[0x80000b8c]:srli a1, a0, 2<br> [0x80000b90]:sd a1, 752(gp)<br>    |
| 118|[0x800023b8]<br>0x3FFFFFFFFFFEFFFF|- rs1_val == -262145<br>                                                                                                                   |[0x80000b9c]:srli a1, a0, 2<br> [0x80000ba0]:sd a1, 760(gp)<br>    |
| 119|[0x800023c0]<br>0x00000000000001FF|- rs1_val == -524289<br>                                                                                                                   |[0x80000bac]:srli a1, a0, 55<br> [0x80000bb0]:sd a1, 768(gp)<br>   |
| 120|[0x800023c8]<br>0x00000000000001FF|- rs1_val == -1048577<br>                                                                                                                  |[0x80000bbc]:srli a1, a0, 55<br> [0x80000bc0]:sd a1, 776(gp)<br>   |
| 121|[0x800023d0]<br>0x0000000000000003|- rs1_val == -2097153<br>                                                                                                                  |[0x80000bcc]:srli a1, a0, 62<br> [0x80000bd0]:sd a1, 784(gp)<br>   |
| 122|[0x800023d8]<br>0x000000000000001F|- rs1_val == -4194305<br>                                                                                                                  |[0x80000bdc]:srli a1, a0, 59<br> [0x80000be0]:sd a1, 792(gp)<br>   |
| 123|[0x800023e0]<br>0x000007FFFFFFFFFB|- rs1_val == -8388609<br>                                                                                                                  |[0x80000bec]:srli a1, a0, 21<br> [0x80000bf0]:sd a1, 800(gp)<br>   |
| 124|[0x800023e8]<br>0x7FFFFFFFFF7FFFFF|- rs1_val == -16777217<br>                                                                                                                 |[0x80000bfc]:srli a1, a0, 1<br> [0x80000c00]:sd a1, 808(gp)<br>    |
| 125|[0x800023f0]<br>0x00003FFFFFFFFF7F|- rs1_val == -33554433<br>                                                                                                                 |[0x80000c0c]:srli a1, a0, 18<br> [0x80000c10]:sd a1, 816(gp)<br>   |
| 126|[0x800023f8]<br>0x003FFFFFFFFEFFFF|- rs1_val == -67108865<br>                                                                                                                 |[0x80000c1c]:srli a1, a0, 10<br> [0x80000c20]:sd a1, 824(gp)<br>   |
| 127|[0x80002400]<br>0x00000000FFFFFFFF|- rs1_val == -134217729<br>                                                                                                                |[0x80000c2c]:srli a1, a0, 32<br> [0x80000c30]:sd a1, 832(gp)<br>   |
| 128|[0x80002408]<br>0x000FFFFFFFFEFFFF|- rs1_val == -268435457<br>                                                                                                                |[0x80000c3c]:srli a1, a0, 12<br> [0x80000c40]:sd a1, 840(gp)<br>   |
| 129|[0x80002410]<br>0x0003FFFFFFFF7FFF|- rs1_val == -536870913<br>                                                                                                                |[0x80000c4c]:srli a1, a0, 14<br> [0x80000c50]:sd a1, 848(gp)<br>   |
| 130|[0x80002418]<br>0x00000000000001FF|- rs1_val == -1073741825<br>                                                                                                               |[0x80000c5c]:srli a1, a0, 55<br> [0x80000c60]:sd a1, 856(gp)<br>   |
| 131|[0x80002420]<br>0x7FFFFFFFBFFFFFFF|- rs1_val == -2147483649<br>                                                                                                               |[0x80000c70]:srli a1, a0, 1<br> [0x80000c74]:sd a1, 864(gp)<br>    |
| 132|[0x80002428]<br>0x00003FFFFFFFBFFF|- rs1_val == -4294967297<br>                                                                                                               |[0x80000c84]:srli a1, a0, 18<br> [0x80000c88]:sd a1, 872(gp)<br>   |
| 133|[0x80002430]<br>0x00007FFFFFFEFFFF|- rs1_val == -8589934593<br>                                                                                                               |[0x80000c98]:srli a1, a0, 17<br> [0x80000c9c]:sd a1, 880(gp)<br>   |
| 134|[0x80002438]<br>0x0003FFFFFFEFFFFF|- rs1_val == -17179869185<br>                                                                                                              |[0x80000cac]:srli a1, a0, 14<br> [0x80000cb0]:sd a1, 888(gp)<br>   |
| 135|[0x80002440]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == -34359738369<br>                                                                                                              |[0x80000cc0]:srli a1, a0, 0<br> [0x80000cc4]:sd a1, 896(gp)<br>    |
| 136|[0x80002448]<br>0x3FFFFFFBFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                              |[0x80000cd4]:srli a1, a0, 2<br> [0x80000cd8]:sd a1, 904(gp)<br>    |
| 137|[0x80002450]<br>0x00000000FFFFFFBF|- rs1_val == -274877906945<br>                                                                                                             |[0x80000ce8]:srli a1, a0, 32<br> [0x80000cec]:sd a1, 912(gp)<br>   |
| 138|[0x80002458]<br>0x003FFFFFDFFFFFFF|- rs1_val == -549755813889<br>                                                                                                             |[0x80000cfc]:srli a1, a0, 10<br> [0x80000d00]:sd a1, 920(gp)<br>   |
| 139|[0x80002460]<br>0x0007FFFFF7FFFFFF|- rs1_val == -1099511627777<br>                                                                                                            |[0x80000d10]:srli a1, a0, 13<br> [0x80000d14]:sd a1, 928(gp)<br>   |
| 140|[0x80002468]<br>0x00FFFFFDFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                            |[0x80000d24]:srli a1, a0, 8<br> [0x80000d28]:sd a1, 936(gp)<br>    |
| 141|[0x80002470]<br>0x001FFFFF7FFFFFFF|- rs1_val == -4398046511105<br>                                                                                                            |[0x80000d38]:srli a1, a0, 11<br> [0x80000d3c]:sd a1, 944(gp)<br>   |
| 142|[0x80002478]<br>0x03FFFFDFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                            |[0x80000d4c]:srli a1, a0, 6<br> [0x80000d50]:sd a1, 952(gp)<br>    |
| 143|[0x80002480]<br>0x00003FFFFBFFFFFF|- rs1_val == -17592186044417<br>                                                                                                           |[0x80000d60]:srli a1, a0, 18<br> [0x80000d64]:sd a1, 960(gp)<br>   |
| 144|[0x80002488]<br>0x0000000000000007|- rs1_val == -35184372088833<br>                                                                                                           |[0x80000d74]:srli a1, a0, 61<br> [0x80000d78]:sd a1, 968(gp)<br>   |
| 145|[0x80002490]<br>0x00000000003FFFEF|- rs1_val == -70368744177665<br>                                                                                                           |[0x80000d88]:srli a1, a0, 42<br> [0x80000d8c]:sd a1, 976(gp)<br>   |
| 146|[0x80002498]<br>0x000007FFFBFFFFFF|- rs1_val == -140737488355329<br>                                                                                                          |[0x80000d9c]:srli a1, a0, 21<br> [0x80000da0]:sd a1, 984(gp)<br>   |
| 147|[0x800024a0]<br>0x01FFFDFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                          |[0x80000db0]:srli a1, a0, 7<br> [0x80000db4]:sd a1, 992(gp)<br>    |
| 148|[0x800024a8]<br>0x0000000000000007|- rs1_val == -562949953421313<br>                                                                                                          |[0x80000dc4]:srli a1, a0, 61<br> [0x80000dc8]:sd a1, 1000(gp)<br>  |
| 149|[0x800024b0]<br>0x07FFDFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                         |[0x80000dd8]:srli a1, a0, 5<br> [0x80000ddc]:sd a1, 1008(gp)<br>   |
| 150|[0x800024b8]<br>0x0007FFBFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                         |[0x80000dec]:srli a1, a0, 13<br> [0x80000df0]:sd a1, 1016(gp)<br>  |
| 151|[0x800024c0]<br>0x000007FF7FFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                         |[0x80000e00]:srli a1, a0, 21<br> [0x80000e04]:sd a1, 1024(gp)<br>  |
| 152|[0x800024d0]<br>0x0000000000000800|- rs1_val == 262144<br>                                                                                                                    |[0x80000e24]:srli a1, a0, 7<br> [0x80000e28]:sd a1, 1040(gp)<br>   |
