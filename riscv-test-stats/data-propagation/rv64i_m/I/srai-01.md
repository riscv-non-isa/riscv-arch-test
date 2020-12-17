
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
| SIG_REGION                | [('0x80002010', '0x800024d0', '152 dwords')]      |
| COV_LABELS                | srai      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srai-01.S/srai-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 244      |
| Total Signature Updates   | 152      |
| STAT1                     | 151      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dfc]:srai a1, a0, 42
      [0x80000e00]:sd a1, 1016(ra)
 -- Signature Address: 0x800024c0 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srai
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 8
      - imm_val == 42






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

|s.no|            signature             |                                                                                      coverpoints                                                                                       |                                code                                |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFEFFFFFFFFFFFFF|- opcode : srai<br> - rs1 : x13<br> - rd : x13<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -288230376151711745<br>                            |[0x800003a4]:srai a3, a3, 6<br> [0x800003a8]:sd a3, 0(t2)<br>       |
|   2|[0x80002018]<br>0x0000000000000000|- rs1 : x6<br> - rd : x2<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 4<br> - rs1_val==4<br>                                                   |[0x800003b0]:srai sp, t1, 12<br> [0x800003b4]:sd sp, 8(t2)<br>      |
|   3|[0x80002020]<br>0xFFFFFFFFFFFFFFF6|- rs1 : x15<br> - rd : x28<br> - rs1_val < 0 and imm_val == 0<br>                                                                                                                       |[0x800003bc]:srai t3, a5, 0<br> [0x800003c0]:sd t3, 16(t2)<br>      |
|   4|[0x80002028]<br>0x0000000000000009|- rs1 : x18<br> - rd : x30<br> - rs1_val > 0 and imm_val == 0<br>                                                                                                                       |[0x800003c8]:srai t5, s2, 0<br> [0x800003cc]:sd t5, 24(t2)<br>      |
|   5|[0x80002030]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x30<br> - rd : x29<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -33554433<br>                                                                                     |[0x800003d8]:srai t4, t5, 63<br> [0x800003dc]:sd t4, 32(t2)<br>     |
|   6|[0x80002038]<br>0x0000000000000000|- rs1 : x27<br> - rd : x15<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 65536<br>                                                                                         |[0x800003e4]:srai a5, s11, 63<br> [0x800003e8]:sd a5, 40(t2)<br>    |
|   7|[0x80002040]<br>0x0000000000000000|- rs1 : x23<br> - rd : x14<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 1<br> |[0x800003f0]:srai a4, s7, 1<br> [0x800003f4]:sd a4, 48(t2)<br>      |
|   8|[0x80002048]<br>0xFFFFFFFF80000000|- rs1 : x29<br> - rd : x27<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br> - imm_val == 32<br>                            |[0x80000400]:srai s11, t4, 32<br> [0x80000404]:sd s11, 56(t2)<br>   |
|   9|[0x80002050]<br>0x0000000000000000|- rs1 : x31<br> - rd : x22<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br>                                                                                  |[0x8000040c]:srai s6, t6, 7<br> [0x80000410]:sd s6, 64(t2)<br>      |
|  10|[0x80002058]<br>0x0007FFFFFFFFFFFF|- rs1 : x4<br> - rd : x16<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                                                 |[0x80000420]:srai a6, tp, 12<br> [0x80000424]:sd a6, 72(t2)<br>     |
|  11|[0x80002060]<br>0x0000000000000000|- rs1 : x24<br> - rd : x21<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                                      |[0x8000042c]:srai s5, s8, 17<br> [0x80000430]:sd s5, 80(t2)<br>     |
|  12|[0x80002068]<br>0x0000000000000000|- rs1 : x20<br> - rd : x0<br> - rs1_val == 8<br> - imm_val == 42<br>                                                                                                                    |[0x80000438]:srai zero, s4, 42<br> [0x8000043c]:sd zero, 88(t2)<br> |
|  13|[0x80002070]<br>0x0000000000000000|- rs1 : x28<br> - rd : x19<br> - rs1_val == 16<br> - imm_val == 31<br>                                                                                                                  |[0x80000444]:srai s3, t3, 31<br> [0x80000448]:sd s3, 96(t2)<br>     |
|  14|[0x80002078]<br>0x0000000000000004|- rs1 : x8<br> - rd : x18<br> - rs1_val == 32<br>                                                                                                                                       |[0x80000450]:srai s2, fp, 3<br> [0x80000454]:sd s2, 104(t2)<br>     |
|  15|[0x80002080]<br>0x0000000000000000|- rs1 : x3<br> - rd : x26<br> - rs1_val == 64<br>                                                                                                                                       |[0x8000045c]:srai s10, gp, 11<br> [0x80000460]:sd s10, 112(t2)<br>  |
|  16|[0x80002088]<br>0x0000000000000000|- rs1 : x1<br> - rd : x23<br> - rs1_val == 128<br>                                                                                                                                      |[0x80000468]:srai s7, ra, 18<br> [0x8000046c]:sd s7, 120(t2)<br>    |
|  17|[0x80002090]<br>0x0000000000000000|- rs1 : x0<br> - rd : x20<br>                                                                                                                                                           |[0x80000474]:srai s4, zero, 18<br> [0x80000478]:sd s4, 128(t2)<br>  |
|  18|[0x80002098]<br>0x0000000000000000|- rs1 : x10<br> - rd : x8<br> - rs1_val == 512<br> - imm_val == 21<br>                                                                                                                  |[0x80000480]:srai fp, a0, 21<br> [0x80000484]:sd fp, 136(t2)<br>    |
|  19|[0x800020a0]<br>0x0000000000000400|- rs1 : x5<br> - rd : x6<br> - rs1_val == 1024<br>                                                                                                                                      |[0x8000048c]:srai t1, t0, 0<br> [0x80000490]:sd t1, 144(t2)<br>     |
|  20|[0x800020a8]<br>0x0000000000000200|- rs1 : x12<br> - rd : x10<br> - rs1_val == 2048<br> - imm_val == 2<br>                                                                                                                 |[0x8000049c]:srai a0, a2, 2<br> [0x800004a0]:sd a0, 152(t2)<br>     |
|  21|[0x800020b0]<br>0x0000000000000100|- rs1 : x21<br> - rd : x1<br> - rs1_val == 4096<br> - imm_val == 4<br>                                                                                                                  |[0x800004a8]:srai ra, s5, 4<br> [0x800004ac]:sd ra, 160(t2)<br>     |
|  22|[0x800020b8]<br>0x0000000000000000|- rs1 : x11<br> - rd : x5<br> - rs1_val == 8192<br>                                                                                                                                     |[0x800004b4]:srai t0, a1, 17<br> [0x800004b8]:sd t0, 168(t2)<br>    |
|  23|[0x800020c0]<br>0x0000000000000000|- rs1 : x2<br> - rd : x17<br> - rs1_val == 16384<br>                                                                                                                                    |[0x800004c0]:srai a7, sp, 15<br> [0x800004c4]:sd a7, 176(t2)<br>    |
|  24|[0x800020c8]<br>0x0000000000000010|- rs1 : x25<br> - rd : x4<br> - rs1_val == 32768<br>                                                                                                                                    |[0x800004d4]:srai tp, s9, 11<br> [0x800004d8]:sd tp, 0(ra)<br>      |
|  25|[0x800020d0]<br>0x0000000000000400|- rs1 : x19<br> - rd : x9<br> - rs1_val == 131072<br>                                                                                                                                   |[0x800004e0]:srai s1, s3, 7<br> [0x800004e4]:sd s1, 8(ra)<br>       |
|  26|[0x800020d8]<br>0x0000000000001000|- rs1 : x7<br> - rd : x12<br> - rs1_val == 262144<br>                                                                                                                                   |[0x800004ec]:srai a2, t2, 6<br> [0x800004f0]:sd a2, 16(ra)<br>      |
|  27|[0x800020e0]<br>0x0000000000000001|- rs1 : x16<br> - rd : x11<br> - rs1_val == 524288<br>                                                                                                                                  |[0x800004f8]:srai a1, a6, 19<br> [0x800004fc]:sd a1, 24(ra)<br>     |
|  28|[0x800020e8]<br>0x0000000000000004|- rs1 : x14<br> - rd : x3<br> - rs1_val == 1048576<br>                                                                                                                                  |[0x80000504]:srai gp, a4, 18<br> [0x80000508]:sd gp, 32(ra)<br>     |
|  29|[0x800020f0]<br>0x0000000000000800|- rs1 : x9<br> - rd : x31<br> - rs1_val == 2097152<br>                                                                                                                                  |[0x80000510]:srai t6, s1, 10<br> [0x80000514]:sd t6, 40(ra)<br>     |
|  30|[0x800020f8]<br>0x0000000000001000|- rs1 : x26<br> - rd : x7<br> - rs1_val == 4194304<br>                                                                                                                                  |[0x8000051c]:srai t2, s10, 10<br> [0x80000520]:sd t2, 48(ra)<br>    |
|  31|[0x80002100]<br>0x0000000000000400|- rs1 : x22<br> - rd : x25<br> - rs1_val == 8388608<br>                                                                                                                                 |[0x80000528]:srai s9, s6, 13<br> [0x8000052c]:sd s9, 56(ra)<br>     |
|  32|[0x80002108]<br>0x0000000000080000|- rs1 : x17<br> - rd : x24<br> - rs1_val == 16777216<br>                                                                                                                                |[0x80000534]:srai s8, a7, 5<br> [0x80000538]:sd s8, 64(ra)<br>      |
|  33|[0x80002110]<br>0x0000000000010000|- rs1_val == 33554432<br>                                                                                                                                                               |[0x80000540]:srai a1, a0, 9<br> [0x80000544]:sd a1, 72(ra)<br>      |
|  34|[0x80002118]<br>0x0000000000000400|- rs1_val == 67108864<br> - imm_val == 16<br>                                                                                                                                           |[0x8000054c]:srai a1, a0, 16<br> [0x80000550]:sd a1, 80(ra)<br>     |
|  35|[0x80002120]<br>0x0000000000004000|- rs1_val == 134217728<br>                                                                                                                                                              |[0x80000558]:srai a1, a0, 13<br> [0x8000055c]:sd a1, 88(ra)<br>     |
|  36|[0x80002128]<br>0x0000000000000000|- rs1_val == 268435456<br> - imm_val == 59<br>                                                                                                                                          |[0x80000564]:srai a1, a0, 59<br> [0x80000568]:sd a1, 96(ra)<br>     |
|  37|[0x80002130]<br>0x0000000000100000|- rs1_val == 536870912<br>                                                                                                                                                              |[0x80000570]:srai a1, a0, 9<br> [0x80000574]:sd a1, 104(ra)<br>     |
|  38|[0x80002138]<br>0x0000000000010000|- rs1_val == 1073741824<br>                                                                                                                                                             |[0x8000057c]:srai a1, a0, 14<br> [0x80000580]:sd a1, 112(ra)<br>    |
|  39|[0x80002140]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                                                             |[0x8000058c]:srai a1, a0, 32<br> [0x80000590]:sd a1, 120(ra)<br>    |
|  40|[0x80002148]<br>0x0000000000000002|- rs1_val == 4294967296<br>                                                                                                                                                             |[0x8000059c]:srai a1, a0, 31<br> [0x800005a0]:sd a1, 128(ra)<br>    |
|  41|[0x80002150]<br>0x0000000000800000|- rs1_val == 8589934592<br>                                                                                                                                                             |[0x800005ac]:srai a1, a0, 10<br> [0x800005b0]:sd a1, 136(ra)<br>    |
|  42|[0x80002158]<br>0x0000000002000000|- rs1_val == 17179869184<br>                                                                                                                                                            |[0x800005bc]:srai a1, a0, 9<br> [0x800005c0]:sd a1, 144(ra)<br>     |
|  43|[0x80002160]<br>0x0000000000100000|- rs1_val == 34359738368<br>                                                                                                                                                            |[0x800005cc]:srai a1, a0, 15<br> [0x800005d0]:sd a1, 152(ra)<br>    |
|  44|[0x80002168]<br>0x0000000000000000|- rs1_val == 68719476736<br> - imm_val == 62<br>                                                                                                                                        |[0x800005dc]:srai a1, a0, 62<br> [0x800005e0]:sd a1, 160(ra)<br>    |
|  45|[0x80002170]<br>0x0000000800000000|- rs1_val == 137438953472<br>                                                                                                                                                           |[0x800005ec]:srai a1, a0, 2<br> [0x800005f0]:sd a1, 168(ra)<br>     |
|  46|[0x80002178]<br>0x0000000000000080|- rs1_val == 274877906944<br>                                                                                                                                                           |[0x800005fc]:srai a1, a0, 31<br> [0x80000600]:sd a1, 176(ra)<br>    |
|  47|[0x80002180]<br>0x0000001000000000|- rs1_val == 549755813888<br>                                                                                                                                                           |[0x8000060c]:srai a1, a0, 3<br> [0x80000610]:sd a1, 184(ra)<br>     |
|  48|[0x80002188]<br>0x0000001000000000|- rs1_val == 1099511627776<br>                                                                                                                                                          |[0x8000061c]:srai a1, a0, 4<br> [0x80000620]:sd a1, 192(ra)<br>     |
|  49|[0x80002190]<br>0x0000000008000000|- rs1_val == 2199023255552<br>                                                                                                                                                          |[0x8000062c]:srai a1, a0, 14<br> [0x80000630]:sd a1, 200(ra)<br>    |
|  50|[0x80002198]<br>0x0000004000000000|- rs1_val == 4398046511104<br>                                                                                                                                                          |[0x8000063c]:srai a1, a0, 4<br> [0x80000640]:sd a1, 208(ra)<br>     |
|  51|[0x800021a0]<br>0x0000004000000000|- rs1_val == 8796093022208<br>                                                                                                                                                          |[0x8000064c]:srai a1, a0, 5<br> [0x80000650]:sd a1, 216(ra)<br>     |
|  52|[0x800021a8]<br>0x0000000020000000|- rs1_val == 17592186044416<br>                                                                                                                                                         |[0x8000065c]:srai a1, a0, 15<br> [0x80000660]:sd a1, 224(ra)<br>    |
|  53|[0x800021b0]<br>0x0000020000000000|- rs1_val == 35184372088832<br>                                                                                                                                                         |[0x8000066c]:srai a1, a0, 4<br> [0x80000670]:sd a1, 232(ra)<br>     |
|  54|[0x800021b8]<br>0x0000001000000000|- rs1_val == 70368744177664<br>                                                                                                                                                         |[0x8000067c]:srai a1, a0, 10<br> [0x80000680]:sd a1, 240(ra)<br>    |
|  55|[0x800021c0]<br>0x0000000000000020|- rs1_val == 140737488355328<br>                                                                                                                                                        |[0x8000068c]:srai a1, a0, 42<br> [0x80000690]:sd a1, 248(ra)<br>    |
|  56|[0x800021c8]<br>0x0000004000000000|- rs1_val == 281474976710656<br>                                                                                                                                                        |[0x8000069c]:srai a1, a0, 10<br> [0x800006a0]:sd a1, 256(ra)<br>    |
|  57|[0x800021d0]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                                        |[0x800006ac]:srai a1, a0, 63<br> [0x800006b0]:sd a1, 264(ra)<br>    |
|  58|[0x800021d8]<br>0x0000800000000000|- rs1_val == 1125899906842624<br>                                                                                                                                                       |[0x800006bc]:srai a1, a0, 3<br> [0x800006c0]:sd a1, 272(ra)<br>     |
|  59|[0x800021e0]<br>0x0000800000000000|- rs1_val == 2251799813685248<br>                                                                                                                                                       |[0x800006cc]:srai a1, a0, 4<br> [0x800006d0]:sd a1, 280(ra)<br>     |
|  60|[0x800021e8]<br>0x0000002000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                       |[0x800006dc]:srai a1, a0, 15<br> [0x800006e0]:sd a1, 288(ra)<br>    |
|  61|[0x800021f0]<br>0x0000000000000000|- rs1_val == 9007199254740992<br> - imm_val == 61<br>                                                                                                                                   |[0x800006ec]:srai a1, a0, 61<br> [0x800006f0]:sd a1, 296(ra)<br>    |
|  62|[0x800021f8]<br>0x0000010000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                      |[0x800006fc]:srai a1, a0, 14<br> [0x80000700]:sd a1, 304(ra)<br>    |
|  63|[0x80002200]<br>0x0000200000000000|- rs1_val == 36028797018963968<br>                                                                                                                                                      |[0x8000070c]:srai a1, a0, 10<br> [0x80000710]:sd a1, 312(ra)<br>    |
|  64|[0x80002208]<br>0x0000400000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                      |[0x8000071c]:srai a1, a0, 10<br> [0x80000720]:sd a1, 320(ra)<br>    |
|  65|[0x80002210]<br>0x0000000000008000|- rs1_val == 144115188075855872<br>                                                                                                                                                     |[0x8000072c]:srai a1, a0, 42<br> [0x80000730]:sd a1, 328(ra)<br>    |
|  66|[0x80002218]<br>0x0040000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                     |[0x8000073c]:srai a1, a0, 4<br> [0x80000740]:sd a1, 336(ra)<br>     |
|  67|[0x80002220]<br>0x0001000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                     |[0x8000074c]:srai a1, a0, 11<br> [0x80000750]:sd a1, 344(ra)<br>    |
|  68|[0x80002228]<br>0x0000000000000002|- rs1_val == 1152921504606846976<br>                                                                                                                                                    |[0x8000075c]:srai a1, a0, 59<br> [0x80000760]:sd a1, 352(ra)<br>    |
|  69|[0x80002230]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                    |[0x8000076c]:srai a1, a0, 63<br> [0x80000770]:sd a1, 360(ra)<br>    |
|  70|[0x80002238]<br>0x0020000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                                    |[0x8000077c]:srai a1, a0, 9<br> [0x80000780]:sd a1, 368(ra)<br>     |
|  71|[0x80002240]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                     |[0x80000788]:srai a1, a0, 21<br> [0x8000078c]:sd a1, 376(ra)<br>    |
|  72|[0x80002248]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                     |[0x80000794]:srai a1, a0, 2<br> [0x80000798]:sd a1, 384(ra)<br>     |
|  73|[0x80002250]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                     |[0x800007a0]:srai a1, a0, 61<br> [0x800007a4]:sd a1, 392(ra)<br>    |
|  74|[0x80002258]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                     |[0x800007ac]:srai a1, a0, 13<br> [0x800007b0]:sd a1, 400(ra)<br>    |
|  75|[0x80002260]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                    |[0x800007b8]:srai a1, a0, 63<br> [0x800007bc]:sd a1, 408(ra)<br>    |
|  76|[0x80002268]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                    |[0x800007c4]:srai a1, a0, 7<br> [0x800007c8]:sd a1, 416(ra)<br>     |
|  77|[0x80002270]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                    |[0x800007d0]:srai a1, a0, 14<br> [0x800007d4]:sd a1, 424(ra)<br>    |
|  78|[0x80002278]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -129<br>                                                                                                                                                                   |[0x800007dc]:srai a1, a0, 6<br> [0x800007e0]:sd a1, 432(ra)<br>     |
|  79|[0x80002280]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                                   |[0x800007e8]:srai a1, a0, 12<br> [0x800007ec]:sd a1, 440(ra)<br>    |
|  80|[0x80002288]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -513<br>                                                                                                                                                                   |[0x800007f4]:srai a1, a0, 3<br> [0x800007f8]:sd a1, 448(ra)<br>     |
|  81|[0x80002290]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                  |[0x80000800]:srai a1, a0, 15<br> [0x80000804]:sd a1, 456(ra)<br>    |
|  82|[0x80002298]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -2049<br>                                                                                                                                                                  |[0x80000810]:srai a1, a0, 9<br> [0x80000814]:sd a1, 464(ra)<br>     |
|  83|[0x800022a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                                                  |[0x80000820]:srai a1, a0, 63<br> [0x80000824]:sd a1, 472(ra)<br>    |
|  84|[0x800022a8]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -8193<br>                                                                                                                                                                  |[0x80000830]:srai a1, a0, 9<br> [0x80000834]:sd a1, 480(ra)<br>     |
|  85|[0x800022b0]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -16385<br>                                                                                                                                                                 |[0x80000840]:srai a1, a0, 3<br> [0x80000844]:sd a1, 488(ra)<br>     |
|  86|[0x800022b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -32769<br>                                                                                                                                                                 |[0x80000850]:srai a1, a0, 16<br> [0x80000854]:sd a1, 496(ra)<br>    |
|  87|[0x800022c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                                 |[0x80000860]:srai a1, a0, 21<br> [0x80000864]:sd a1, 504(ra)<br>    |
|  88|[0x800022c8]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -131073<br>                                                                                                                                                                |[0x80000870]:srai a1, a0, 5<br> [0x80000874]:sd a1, 512(ra)<br>     |
|  89|[0x800022d0]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -262145<br>                                                                                                                                                                |[0x80000880]:srai a1, a0, 1<br> [0x80000884]:sd a1, 520(ra)<br>     |
|  90|[0x800022d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -524289<br>                                                                                                                                                                |[0x80000890]:srai a1, a0, 63<br> [0x80000894]:sd a1, 528(ra)<br>    |
|  91|[0x800022e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1048577<br> - imm_val == 55<br>                                                                                                                                           |[0x800008a0]:srai a1, a0, 55<br> [0x800008a4]:sd a1, 536(ra)<br>    |
|  92|[0x800022e8]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -2097153<br>                                                                                                                                                               |[0x800008b0]:srai a1, a0, 7<br> [0x800008b4]:sd a1, 544(ra)<br>     |
|  93|[0x800022f0]<br>0xFFFFFFFEFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                                      |[0x800008c4]:srai a1, a0, 21<br> [0x800008c8]:sd a1, 552(ra)<br>    |
|  94|[0x800022f8]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                                     |[0x800008d8]:srai a1, a0, 19<br> [0x800008dc]:sd a1, 560(ra)<br>    |
|  95|[0x80002300]<br>0xFFFFFFFBFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                                     |[0x800008ec]:srai a1, a0, 21<br> [0x800008f0]:sd a1, 568(ra)<br>    |
|  96|[0x80002308]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                                     |[0x80000900]:srai a1, a0, 31<br> [0x80000904]:sd a1, 576(ra)<br>    |
|  97|[0x80002310]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                                    |[0x80000914]:srai a1, a0, 59<br> [0x80000918]:sd a1, 584(ra)<br>    |
|  98|[0x80002318]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                                    |[0x80000928]:srai a1, a0, 31<br> [0x8000092c]:sd a1, 592(ra)<br>    |
|  99|[0x80002320]<br>0xF7FFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                                   |[0x8000093c]:srai a1, a0, 1<br> [0x80000940]:sd a1, 600(ra)<br>     |
| 100|[0x80002328]<br>0xFFFFFFFFDFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                                   |[0x80000950]:srai a1, a0, 32<br> [0x80000954]:sd a1, 608(ra)<br>    |
| 101|[0x80002330]<br>0xFFFFF7FFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                                   |[0x80000964]:srai a1, a0, 19<br> [0x80000968]:sd a1, 616(ra)<br>    |
| 102|[0x80002338]<br>0x0000155555555555|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                                                 |[0x8000098c]:srai a1, a0, 18<br> [0x80000990]:sd a1, 624(ra)<br>    |
| 103|[0x80002340]<br>0xFFFFFFFF55555555|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                                                               |[0x800009b4]:srai a1, a0, 31<br> [0x800009b8]:sd a1, 632(ra)<br>    |
| 104|[0x80002348]<br>0x0000000000000000|- rs1_val==3<br>                                                                                                                                                                        |[0x800009c0]:srai a1, a0, 42<br> [0x800009c4]:sd a1, 640(ra)<br>    |
| 105|[0x80002350]<br>0x0000000000000000|- rs1_val==5<br>                                                                                                                                                                        |[0x800009cc]:srai a1, a0, 62<br> [0x800009d0]:sd a1, 648(ra)<br>    |
| 106|[0x80002358]<br>0x0333333333333333|- rs1_val==3689348814741910323<br>                                                                                                                                                      |[0x800009f4]:srai a1, a0, 4<br> [0x800009f8]:sd a1, 656(ra)<br>     |
| 107|[0x80002360]<br>0x1999999999999999|- rs1_val==7378697629483820646<br>                                                                                                                                                      |[0x80000a1c]:srai a1, a0, 2<br> [0x80000a20]:sd a1, 664(ra)<br>     |
| 108|[0x80002368]<br>0xFFFFFFFFFFE95F61|- rs1_val==-3037000499<br>                                                                                                                                                              |[0x80000a34]:srai a1, a0, 11<br> [0x80000a38]:sd a1, 672(ra)<br>    |
| 109|[0x80002370]<br>0x0000000000002D41|- rs1_val==3037000499<br>                                                                                                                                                               |[0x80000a4c]:srai a1, a0, 18<br> [0x80000a50]:sd a1, 680(ra)<br>    |
| 110|[0x80002378]<br>0x0005555555555555|- rs1_val==6148914691236517204<br>                                                                                                                                                      |[0x80000a74]:srai a1, a0, 12<br> [0x80000a78]:sd a1, 688(ra)<br>    |
| 111|[0x80002380]<br>0x0000066666666666|- rs1_val==3689348814741910322<br>                                                                                                                                                      |[0x80000a9c]:srai a1, a0, 19<br> [0x80000aa0]:sd a1, 696(ra)<br>    |
| 112|[0x80002388]<br>0x3333333333333332|- rs1_val==7378697629483820645<br>                                                                                                                                                      |[0x80000ac4]:srai a1, a0, 1<br> [0x80000ac8]:sd a1, 704(ra)<br>     |
| 113|[0x80002390]<br>0x00000000002D413C|- rs1_val==3037000498<br>                                                                                                                                                               |[0x80000adc]:srai a1, a0, 10<br> [0x80000ae0]:sd a1, 712(ra)<br>    |
| 114|[0x80002398]<br>0x0005555555555555|- rs1_val==6148914691236517206<br>                                                                                                                                                      |[0x80000b04]:srai a1, a0, 12<br> [0x80000b08]:sd a1, 720(ra)<br>    |
| 115|[0x800023a0]<br>0xF555555555555555|- rs1_val==-6148914691236517205<br>                                                                                                                                                     |[0x80000b2c]:srai a1, a0, 3<br> [0x80000b30]:sd a1, 728(ra)<br>     |
| 116|[0x800023a8]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                                                                        |[0x80000b38]:srai a1, a0, 21<br> [0x80000b3c]:sd a1, 736(ra)<br>    |
| 117|[0x800023b0]<br>0x0000666666666666|- rs1_val==3689348814741910324<br>                                                                                                                                                      |[0x80000b60]:srai a1, a0, 15<br> [0x80000b64]:sd a1, 744(ra)<br>    |
| 118|[0x800023b8]<br>0x0019999999999999|- rs1_val==7378697629483820647<br>                                                                                                                                                      |[0x80000b88]:srai a1, a0, 10<br> [0x80000b8c]:sd a1, 752(ra)<br>    |
| 119|[0x800023c0]<br>0xFFFFFFFFFFE95F61|- rs1_val==-3037000498<br>                                                                                                                                                              |[0x80000ba0]:srai a1, a0, 11<br> [0x80000ba4]:sd a1, 760(ra)<br>    |
| 120|[0x800023c8]<br>0x0000000000B504F3|- rs1_val==3037000500<br> - imm_val == 8<br>                                                                                                                                            |[0x80000bb8]:srai a1, a0, 8<br> [0x80000bbc]:sd a1, 768(ra)<br>     |
| 121|[0x800023d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -35184372088833<br> - imm_val == 47<br>                                                                                                                                    |[0x80000bcc]:srai a1, a0, 47<br> [0x80000bd0]:sd a1, 776(ra)<br>    |
| 122|[0x800023d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4194305<br>                                                                                                                                                               |[0x80000bdc]:srai a1, a0, 42<br> [0x80000be0]:sd a1, 784(ra)<br>    |
| 123|[0x800023e0]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -8388609<br>                                                                                                                                                               |[0x80000bec]:srai a1, a0, 13<br> [0x80000bf0]:sd a1, 792(ra)<br>    |
| 124|[0x800023e8]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -16777217<br>                                                                                                                                                              |[0x80000bfc]:srai a1, a0, 1<br> [0x80000c00]:sd a1, 800(ra)<br>     |
| 125|[0x800023f0]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -67108865<br>                                                                                                                                                              |[0x80000c0c]:srai a1, a0, 12<br> [0x80000c10]:sd a1, 808(ra)<br>    |
| 126|[0x800023f8]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -134217729<br>                                                                                                                                                             |[0x80000c1c]:srai a1, a0, 7<br> [0x80000c20]:sd a1, 816(ra)<br>     |
| 127|[0x80002400]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                             |[0x80000c2c]:srai a1, a0, 4<br> [0x80000c30]:sd a1, 824(ra)<br>     |
| 128|[0x80002408]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                                             |[0x80000c3c]:srai a1, a0, 59<br> [0x80000c40]:sd a1, 832(ra)<br>    |
| 129|[0x80002410]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                            |[0x80000c4c]:srai a1, a0, 32<br> [0x80000c50]:sd a1, 840(ra)<br>    |
| 130|[0x80002418]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -2147483649<br>                                                                                                                                                            |[0x80000c60]:srai a1, a0, 9<br> [0x80000c64]:sd a1, 848(ra)<br>     |
| 131|[0x80002420]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                                                            |[0x80000c74]:srai a1, a0, 4<br> [0x80000c78]:sd a1, 856(ra)<br>     |
| 132|[0x80002428]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -8589934593<br>                                                                                                                                                            |[0x80000c88]:srai a1, a0, 12<br> [0x80000c8c]:sd a1, 864(ra)<br>    |
| 133|[0x80002430]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                                           |[0x80000c9c]:srai a1, a0, 47<br> [0x80000ca0]:sd a1, 872(ra)<br>    |
| 134|[0x80002438]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -34359738369<br>                                                                                                                                                           |[0x80000cb0]:srai a1, a0, 17<br> [0x80000cb4]:sd a1, 880(ra)<br>    |
| 135|[0x80002440]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -68719476737<br>                                                                                                                                                           |[0x80000cc4]:srai a1, a0, 15<br> [0x80000cc8]:sd a1, 888(ra)<br>    |
| 136|[0x80002448]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -137438953473<br>                                                                                                                                                          |[0x80000cd8]:srai a1, a0, 19<br> [0x80000cdc]:sd a1, 896(ra)<br>    |
| 137|[0x80002450]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                                                          |[0x80000cec]:srai a1, a0, 3<br> [0x80000cf0]:sd a1, 904(ra)<br>     |
| 138|[0x80002458]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                                          |[0x80000d00]:srai a1, a0, 14<br> [0x80000d04]:sd a1, 912(ra)<br>    |
| 139|[0x80002460]<br>0xFFFFFF7FFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                                         |[0x80000d14]:srai a1, a0, 1<br> [0x80000d18]:sd a1, 920(ra)<br>     |
| 140|[0x80002468]<br>0xFFFFFFEFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                                         |[0x80000d28]:srai a1, a0, 5<br> [0x80000d2c]:sd a1, 928(ra)<br>     |
| 141|[0x80002470]<br>0xFFFFFFFBFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                                         |[0x80000d3c]:srai a1, a0, 8<br> [0x80000d40]:sd a1, 936(ra)<br>     |
| 142|[0x80002478]<br>0xFFFFFFDFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                                         |[0x80000d50]:srai a1, a0, 6<br> [0x80000d54]:sd a1, 944(ra)<br>     |
| 143|[0x80002480]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                                        |[0x80000d64]:srai a1, a0, 9<br> [0x80000d68]:sd a1, 952(ra)<br>     |
| 144|[0x80002488]<br>0xFFFFFFBFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                                        |[0x80000d78]:srai a1, a0, 8<br> [0x80000d7c]:sd a1, 960(ra)<br>     |
| 145|[0x80002490]<br>0xFFFFDFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                                       |[0x80000d8c]:srai a1, a0, 2<br> [0x80000d90]:sd a1, 968(ra)<br>     |
| 146|[0x80002498]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -281474976710657<br>                                                                                                                                                       |[0x80000da0]:srai a1, a0, 31<br> [0x80000da4]:sd a1, 976(ra)<br>    |
| 147|[0x800024a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                                       |[0x80000db4]:srai a1, a0, 59<br> [0x80000db8]:sd a1, 984(ra)<br>    |
| 148|[0x800024a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                                      |[0x80000dc8]:srai a1, a0, 55<br> [0x80000dcc]:sd a1, 992(ra)<br>    |
| 149|[0x800024b0]<br>0xFFFEFFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                                      |[0x80000ddc]:srai a1, a0, 3<br> [0x80000de0]:sd a1, 1000(ra)<br>    |
| 150|[0x800024b8]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                                      |[0x80000df0]:srai a1, a0, 19<br> [0x80000df4]:sd a1, 1008(ra)<br>   |
| 151|[0x800024c8]<br>0x0000000000000000|- rs1_val == 256<br>                                                                                                                                                                    |[0x80000e08]:srai a1, a0, 18<br> [0x80000e0c]:sd a1, 1024(ra)<br>   |
