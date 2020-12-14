
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
| COV_LABELS                | srli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 244      |
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
      [0x80000df4]:srli a1, a0, 61
      [0x80000df8]:sd a1, 1032(sp)
 -- Signature Address: 0x800024b8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 256
      - imm_val == 61






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

|s.no|            signature             |                                                                         coverpoints                                                                         |                                code                                 |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002010]<br>0x0FFFFFFFFFFFFFFF|- opcode : srli<br> - rs1 : x3<br> - rd : x3<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -9<br> - imm_val == 4<br> |[0x8000039c]:srli gp, gp, 4<br> [0x800003a0]:sd gp, 0(ra)<br>        |
|   2|[0x80002018]<br>0x0000000000000000|- rs1 : x0<br> - rd : x5<br> - rs1 != rd<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br>                                         |[0x800003ac]:srli t0, zero, 13<br> [0x800003b0]:sd t0, 8(ra)<br>     |
|   3|[0x80002020]<br>0xFFFFFFFFFDFFFFFF|- rs1 : x27<br> - rd : x7<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -33554433<br>                                                                  |[0x800003bc]:srli t2, s11, 0<br> [0x800003c0]:sd t2, 16(ra)<br>      |
|   4|[0x80002028]<br>0x0000000000000008|- rs1 : x22<br> - rd : x25<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 8<br>                                                                         |[0x800003c8]:srli s9, s6, 0<br> [0x800003cc]:sd s9, 24(ra)<br>       |
|   5|[0x80002030]<br>0x0000000000000001|- rs1 : x19<br> - rd : x30<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -72057594037927937<br>                                                 |[0x800003dc]:srli t5, s3, 63<br> [0x800003e0]:sd t5, 32(ra)<br>      |
|   6|[0x80002038]<br>0x0000000000000000|- rs1 : x7<br> - rd : x18<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 536870912<br>      |[0x800003e8]:srli s2, t2, 63<br> [0x800003ec]:sd s2, 40(ra)<br>      |
|   7|[0x80002040]<br>0x0000000000000000|- rs1 : x16<br> - rd : x4<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 2<br> - rs1_val==2<br> - imm_val == 2<br>             |[0x800003f4]:srli tp, a6, 2<br> [0x800003f8]:sd tp, 48(ra)<br>       |
|   8|[0x80002048]<br>0x0000000000200000|- rs1 : x12<br> - rd : x2<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br> - imm_val == 42<br>  |[0x80000404]:srli sp, a2, 42<br> [0x80000408]:sd sp, 56(ra)<br>      |
|   9|[0x80002050]<br>0x0000000000000000|- rs1 : x18<br> - rd : x26<br>                                                                                                                               |[0x80000410]:srli s10, s2, 15<br> [0x80000414]:sd s10, 64(ra)<br>    |
|  10|[0x80002058]<br>0x0003FFFFFFFFFFFF|- rs1 : x31<br> - rd : x29<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                     |[0x80000424]:srli t4, t6, 13<br> [0x80000428]:sd t4, 72(ra)<br>      |
|  11|[0x80002060]<br>0x0000000000000000|- rs1 : x10<br> - rd : x6<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                      |[0x80000430]:srli t1, a0, 3<br> [0x80000434]:sd t1, 80(ra)<br>       |
|  12|[0x80002068]<br>0x0000000000000000|- rs1 : x11<br> - rd : x22<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                           |[0x8000043c]:srli s6, a1, 14<br> [0x80000440]:sd s6, 88(ra)<br>      |
|  13|[0x80002070]<br>0x0000000000000000|- rs1 : x4<br> - rd : x12<br> - rs1_val == 16<br>                                                                                                            |[0x80000448]:srli a2, tp, 63<br> [0x8000044c]:sd a2, 96(ra)<br>      |
|  14|[0x80002078]<br>0x0000000000000000|- rs1 : x2<br> - rd : x24<br> - rs1_val == 32<br> - imm_val == 59<br>                                                                                        |[0x80000454]:srli s8, sp, 59<br> [0x80000458]:sd s8, 104(ra)<br>     |
|  15|[0x80002080]<br>0x0000000000000000|- rs1 : x14<br> - rd : x28<br> - rs1_val == 64<br>                                                                                                           |[0x80000460]:srli t3, a4, 14<br> [0x80000464]:sd t3, 112(ra)<br>     |
|  16|[0x80002088]<br>0x0000000000000000|- rs1 : x21<br> - rd : x16<br> - rs1_val == 128<br>                                                                                                          |[0x8000046c]:srli a6, s5, 9<br> [0x80000470]:sd a6, 120(ra)<br>      |
|  17|[0x80002090]<br>0x0000000000000000|- rs1 : x20<br> - rd : x0<br> - rs1_val == 256<br> - imm_val == 61<br>                                                                                       |[0x80000478]:srli zero, s4, 61<br> [0x8000047c]:sd zero, 128(ra)<br> |
|  18|[0x80002098]<br>0x0000000000000000|- rs1 : x15<br> - rd : x13<br> - rs1_val == 512<br>                                                                                                          |[0x80000484]:srli a3, a5, 19<br> [0x80000488]:sd a3, 136(ra)<br>     |
|  19|[0x800020a0]<br>0x0000000000000004|- rs1 : x8<br> - rd : x27<br> - rs1_val == 1024<br> - imm_val == 8<br>                                                                                       |[0x80000490]:srli s11, fp, 8<br> [0x80000494]:sd s11, 144(ra)<br>    |
|  20|[0x800020a8]<br>0x0000000000000000|- rs1 : x17<br> - rd : x21<br> - rs1_val == 2048<br> - imm_val == 47<br>                                                                                     |[0x800004a0]:srli s5, a7, 47<br> [0x800004a4]:sd s5, 152(ra)<br>     |
|  21|[0x800020b0]<br>0x0000000000000800|- rs1 : x28<br> - rd : x8<br> - rs1_val == 4096<br> - imm_val == 1<br>                                                                                       |[0x800004b4]:srli fp, t3, 1<br> [0x800004b8]:sd fp, 0(sp)<br>        |
|  22|[0x800020b8]<br>0x0000000000000001|- rs1 : x5<br> - rd : x19<br> - rs1_val == 8192<br>                                                                                                          |[0x800004c0]:srli s3, t0, 13<br> [0x800004c4]:sd s3, 8(sp)<br>       |
|  23|[0x800020c0]<br>0x0000000000000100|- rs1 : x26<br> - rd : x11<br> - rs1_val == 16384<br>                                                                                                        |[0x800004cc]:srli a1, s10, 6<br> [0x800004d0]:sd a1, 16(sp)<br>      |
|  24|[0x800020c8]<br>0x0000000000000010|- rs1 : x23<br> - rd : x15<br> - rs1_val == 32768<br>                                                                                                        |[0x800004d8]:srli a5, s7, 11<br> [0x800004dc]:sd a5, 24(sp)<br>      |
|  25|[0x800020d0]<br>0x0000000000000000|- rs1 : x1<br> - rd : x23<br> - rs1_val == 65536<br> - imm_val == 55<br>                                                                                     |[0x800004e4]:srli s7, ra, 55<br> [0x800004e8]:sd s7, 32(sp)<br>      |
|  26|[0x800020d8]<br>0x0000000000000002|- rs1 : x24<br> - rd : x14<br> - rs1_val == 131072<br> - imm_val == 16<br>                                                                                   |[0x800004f0]:srli a4, s8, 16<br> [0x800004f4]:sd a4, 40(sp)<br>      |
|  27|[0x800020e0]<br>0x0000000000000400|- rs1 : x9<br> - rd : x20<br> - rs1_val == 262144<br>                                                                                                        |[0x800004fc]:srli s4, s1, 8<br> [0x80000500]:sd s4, 48(sp)<br>       |
|  28|[0x800020e8]<br>0x0000000000000080|- rs1 : x25<br> - rd : x1<br> - rs1_val == 524288<br>                                                                                                        |[0x80000508]:srli ra, s9, 12<br> [0x8000050c]:sd ra, 56(sp)<br>      |
|  29|[0x800020f0]<br>0x0000000000004000|- rs1 : x6<br> - rd : x31<br> - rs1_val == 1048576<br>                                                                                                       |[0x80000514]:srli t6, t1, 6<br> [0x80000518]:sd t6, 64(sp)<br>       |
|  30|[0x800020f8]<br>0x0000000000000000|- rs1 : x30<br> - rd : x17<br> - rs1_val == 2097152<br>                                                                                                      |[0x80000520]:srli a7, t5, 42<br> [0x80000524]:sd a7, 72(sp)<br>      |
|  31|[0x80002100]<br>0x0000000000000800|- rs1 : x13<br> - rd : x10<br> - rs1_val == 4194304<br>                                                                                                      |[0x8000052c]:srli a0, a3, 11<br> [0x80000530]:sd a0, 80(sp)<br>      |
|  32|[0x80002108]<br>0x0000000000000004|- rs1 : x29<br> - rd : x9<br> - rs1_val == 8388608<br> - imm_val == 21<br>                                                                                   |[0x80000538]:srli s1, t4, 21<br> [0x8000053c]:sd s1, 88(sp)<br>      |
|  33|[0x80002110]<br>0x0000000000800000|- rs1_val == 16777216<br>                                                                                                                                    |[0x80000544]:srli a1, a0, 1<br> [0x80000548]:sd a1, 96(sp)<br>       |
|  34|[0x80002118]<br>0x0000000000002000|- rs1_val == 33554432<br>                                                                                                                                    |[0x80000550]:srli a1, a0, 12<br> [0x80000554]:sd a1, 104(sp)<br>     |
|  35|[0x80002120]<br>0x0000000000400000|- rs1_val == 67108864<br>                                                                                                                                    |[0x8000055c]:srli a1, a0, 4<br> [0x80000560]:sd a1, 112(sp)<br>      |
|  36|[0x80002128]<br>0x0000000000004000|- rs1_val == 134217728<br>                                                                                                                                   |[0x80000568]:srli a1, a0, 13<br> [0x8000056c]:sd a1, 120(sp)<br>     |
|  37|[0x80002130]<br>0x0000000000200000|- rs1_val == 268435456<br>                                                                                                                                   |[0x80000574]:srli a1, a0, 7<br> [0x80000578]:sd a1, 128(sp)<br>      |
|  38|[0x80002138]<br>0x0000000000100000|- rs1_val == 1073741824<br>                                                                                                                                  |[0x80000580]:srli a1, a0, 10<br> [0x80000584]:sd a1, 136(sp)<br>     |
|  39|[0x80002140]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                                  |[0x80000590]:srli a1, a0, 55<br> [0x80000594]:sd a1, 144(sp)<br>     |
|  40|[0x80002148]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                  |[0x800005a0]:srli a1, a0, 59<br> [0x800005a4]:sd a1, 152(sp)<br>     |
|  41|[0x80002150]<br>0x0000000000010000|- rs1_val == 8589934592<br>                                                                                                                                  |[0x800005b0]:srli a1, a0, 17<br> [0x800005b4]:sd a1, 160(sp)<br>     |
|  42|[0x80002158]<br>0x0000000400000000|- rs1_val == 17179869184<br>                                                                                                                                 |[0x800005c0]:srli a1, a0, 0<br> [0x800005c4]:sd a1, 168(sp)<br>      |
|  43|[0x80002160]<br>0x0000000008000000|- rs1_val == 34359738368<br>                                                                                                                                 |[0x800005d0]:srli a1, a0, 8<br> [0x800005d4]:sd a1, 176(sp)<br>      |
|  44|[0x80002168]<br>0x0000001000000000|- rs1_val == 68719476736<br>                                                                                                                                 |[0x800005e0]:srli a1, a0, 0<br> [0x800005e4]:sd a1, 184(sp)<br>      |
|  45|[0x80002170]<br>0x0000004000000000|- rs1_val == 274877906944<br>                                                                                                                                |[0x800005f0]:srli a1, a0, 0<br> [0x800005f4]:sd a1, 192(sp)<br>      |
|  46|[0x80002178]<br>0x0000000000100000|- rs1_val == 549755813888<br>                                                                                                                                |[0x80000600]:srli a1, a0, 19<br> [0x80000604]:sd a1, 200(sp)<br>     |
|  47|[0x80002180]<br>0x0000000010000000|- rs1_val == 1099511627776<br>                                                                                                                               |[0x80000610]:srli a1, a0, 12<br> [0x80000614]:sd a1, 208(sp)<br>     |
|  48|[0x80002188]<br>0x0000000000000000|- rs1_val == 2199023255552<br> - imm_val == 62<br>                                                                                                           |[0x80000620]:srli a1, a0, 62<br> [0x80000624]:sd a1, 216(sp)<br>     |
|  49|[0x80002190]<br>0x0000000004000000|- rs1_val == 4398046511104<br>                                                                                                                               |[0x80000630]:srli a1, a0, 16<br> [0x80000634]:sd a1, 224(sp)<br>     |
|  50|[0x80002198]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                               |[0x80000640]:srli a1, a0, 61<br> [0x80000644]:sd a1, 232(sp)<br>     |
|  51|[0x800021a0]<br>0x0000100000000000|- rs1_val == 17592186044416<br>                                                                                                                              |[0x80000650]:srli a1, a0, 0<br> [0x80000654]:sd a1, 240(sp)<br>      |
|  52|[0x800021a8]<br>0x0000000100000000|- rs1_val == 35184372088832<br>                                                                                                                              |[0x80000660]:srli a1, a0, 13<br> [0x80000664]:sd a1, 248(sp)<br>     |
|  53|[0x800021b0]<br>0x0000000020000000|- rs1_val == 70368744177664<br>                                                                                                                              |[0x80000670]:srli a1, a0, 17<br> [0x80000674]:sd a1, 256(sp)<br>     |
|  54|[0x800021b8]<br>0x0000000200000000|- rs1_val == 140737488355328<br>                                                                                                                             |[0x80000680]:srli a1, a0, 14<br> [0x80000684]:sd a1, 264(sp)<br>     |
|  55|[0x800021c0]<br>0x0000000008000000|- rs1_val == 281474976710656<br>                                                                                                                             |[0x80000690]:srli a1, a0, 21<br> [0x80000694]:sd a1, 272(sp)<br>     |
|  56|[0x800021c8]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                             |[0x800006a0]:srli a1, a0, 62<br> [0x800006a4]:sd a1, 280(sp)<br>     |
|  57|[0x800021d0]<br>0x0000000000040000|- rs1_val == 1125899906842624<br> - imm_val == 32<br>                                                                                                        |[0x800006b0]:srli a1, a0, 32<br> [0x800006b4]:sd a1, 288(sp)<br>     |
|  58|[0x800021d8]<br>0x0000000000080000|- rs1_val == 2251799813685248<br>                                                                                                                            |[0x800006c0]:srli a1, a0, 32<br> [0x800006c4]:sd a1, 296(sp)<br>     |
|  59|[0x800021e0]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                            |[0x800006d0]:srli a1, a0, 59<br> [0x800006d4]:sd a1, 304(sp)<br>     |
|  60|[0x800021e8]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                            |[0x800006e0]:srli a1, a0, 61<br> [0x800006e4]:sd a1, 312(sp)<br>     |
|  61|[0x800021f0]<br>0x0000010000000000|- rs1_val == 18014398509481984<br>                                                                                                                           |[0x800006f0]:srli a1, a0, 14<br> [0x800006f4]:sd a1, 320(sp)<br>     |
|  62|[0x800021f8]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                           |[0x80000700]:srli a1, a0, 62<br> [0x80000704]:sd a1, 328(sp)<br>     |
|  63|[0x80002200]<br>0x0000000000000002|- rs1_val == 72057594037927936<br>                                                                                                                           |[0x80000710]:srli a1, a0, 55<br> [0x80000714]:sd a1, 336(sp)<br>     |
|  64|[0x80002208]<br>0x0000008000000000|- rs1_val == 144115188075855872<br>                                                                                                                          |[0x80000720]:srli a1, a0, 18<br> [0x80000724]:sd a1, 344(sp)<br>     |
|  65|[0x80002210]<br>0x0200000000000000|- rs1_val == 288230376151711744<br>                                                                                                                          |[0x80000730]:srli a1, a0, 1<br> [0x80000734]:sd a1, 352(sp)<br>      |
|  66|[0x80002218]<br>0x0000000000000001|- rs1_val == 576460752303423488<br>                                                                                                                          |[0x80000740]:srli a1, a0, 59<br> [0x80000744]:sd a1, 360(sp)<br>     |
|  67|[0x80002220]<br>0x0000000000000002|- rs1_val == 1152921504606846976<br>                                                                                                                         |[0x80000750]:srli a1, a0, 59<br> [0x80000754]:sd a1, 368(sp)<br>     |
|  68|[0x80002228]<br>0x0000200000000000|- rs1_val == 2305843009213693952<br>                                                                                                                         |[0x80000760]:srli a1, a0, 16<br> [0x80000764]:sd a1, 376(sp)<br>     |
|  69|[0x80002230]<br>0x0000200000000000|- rs1_val == 4611686018427387904<br>                                                                                                                         |[0x80000770]:srli a1, a0, 17<br> [0x80000774]:sd a1, 384(sp)<br>     |
|  70|[0x80002238]<br>0x000FFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                          |[0x8000077c]:srli a1, a0, 12<br> [0x80000780]:sd a1, 392(sp)<br>     |
|  71|[0x80002240]<br>0x00003FFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                          |[0x80000788]:srli a1, a0, 18<br> [0x8000078c]:sd a1, 400(sp)<br>     |
|  72|[0x80002248]<br>0x003FFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                          |[0x80000794]:srli a1, a0, 10<br> [0x80000798]:sd a1, 408(sp)<br>     |
|  73|[0x80002250]<br>0x000000000001FFFF|- rs1_val == -17<br>                                                                                                                                         |[0x800007a0]:srli a1, a0, 47<br> [0x800007a4]:sd a1, 416(sp)<br>     |
|  74|[0x80002258]<br>0x0003FFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                         |[0x800007ac]:srli a1, a0, 14<br> [0x800007b0]:sd a1, 424(sp)<br>     |
|  75|[0x80002260]<br>0x03FFFFFFFFFFFFFE|- rs1_val == -65<br>                                                                                                                                         |[0x800007b8]:srli a1, a0, 6<br> [0x800007bc]:sd a1, 432(sp)<br>      |
|  76|[0x80002268]<br>0x3FFFFFFFFFFFFFDF|- rs1_val == -129<br>                                                                                                                                        |[0x800007c4]:srli a1, a0, 2<br> [0x800007c8]:sd a1, 440(sp)<br>      |
|  77|[0x80002270]<br>0x0007FFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                                                        |[0x800007d0]:srli a1, a0, 13<br> [0x800007d4]:sd a1, 448(sp)<br>     |
|  78|[0x80002278]<br>0x00FFFFFFFFFFFFFD|- rs1_val == -513<br>                                                                                                                                        |[0x800007dc]:srli a1, a0, 8<br> [0x800007e0]:sd a1, 456(sp)<br>      |
|  79|[0x80002280]<br>0x00000001FFFFFFFF|- rs1_val == -1025<br> - imm_val == 31<br>                                                                                                                   |[0x800007e8]:srli a1, a0, 31<br> [0x800007ec]:sd a1, 464(sp)<br>     |
|  80|[0x80002288]<br>0x0007FFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                       |[0x800007f8]:srli a1, a0, 13<br> [0x800007fc]:sd a1, 472(sp)<br>     |
|  81|[0x80002290]<br>0x01FFFFFFFFFFFFDF|- rs1_val == -4097<br>                                                                                                                                       |[0x80000808]:srli a1, a0, 7<br> [0x8000080c]:sd a1, 480(sp)<br>      |
|  82|[0x80002298]<br>0x3FFFFFFFFFFFF7FF|- rs1_val == -8193<br>                                                                                                                                       |[0x80000818]:srli a1, a0, 2<br> [0x8000081c]:sd a1, 488(sp)<br>      |
|  83|[0x800022a0]<br>0x00007FFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                      |[0x80000828]:srli a1, a0, 17<br> [0x8000082c]:sd a1, 496(sp)<br>     |
|  84|[0x800022a8]<br>0x00007FFFFFFFFFFF|- rs1_val == -32769<br>                                                                                                                                      |[0x80000838]:srli a1, a0, 17<br> [0x8000083c]:sd a1, 504(sp)<br>     |
|  85|[0x800022b0]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -65537<br>                                                                                                                                      |[0x80000848]:srli a1, a0, 0<br> [0x8000084c]:sd a1, 512(sp)<br>      |
|  86|[0x800022b8]<br>0x000FFFFFFFFFFFDF|- rs1_val == -131073<br>                                                                                                                                     |[0x80000858]:srli a1, a0, 12<br> [0x8000085c]:sd a1, 520(sp)<br>     |
|  87|[0x800022c0]<br>0x00000000003FFFFF|- rs1_val == -262145<br>                                                                                                                                     |[0x80000868]:srli a1, a0, 42<br> [0x8000086c]:sd a1, 528(sp)<br>     |
|  88|[0x800022c8]<br>0x0000000000000001|- rs1_val == -9007199254740993<br>                                                                                                                           |[0x8000087c]:srli a1, a0, 63<br> [0x80000880]:sd a1, 536(sp)<br>     |
|  89|[0x800022d0]<br>0x00000001FF7FFFFF|- rs1_val == -18014398509481985<br>                                                                                                                          |[0x80000890]:srli a1, a0, 31<br> [0x80000894]:sd a1, 544(sp)<br>     |
|  90|[0x800022d8]<br>0x00000000000001FE|- rs1_val == -36028797018963969<br>                                                                                                                          |[0x800008a4]:srli a1, a0, 55<br> [0x800008a8]:sd a1, 552(sp)<br>     |
|  91|[0x800022e0]<br>0x00000000003F7FFF|- rs1_val == -144115188075855873<br>                                                                                                                         |[0x800008b8]:srli a1, a0, 42<br> [0x800008bc]:sd a1, 560(sp)<br>     |
|  92|[0x800022e8]<br>0x3EFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                         |[0x800008cc]:srli a1, a0, 2<br> [0x800008d0]:sd a1, 568(sp)<br>      |
|  93|[0x800022f0]<br>0x0007BFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                         |[0x800008e0]:srli a1, a0, 13<br> [0x800008e4]:sd a1, 576(sp)<br>     |
|  94|[0x800022f8]<br>0x0000000000000001|- rs1_val == -1152921504606846977<br>                                                                                                                        |[0x800008f4]:srli a1, a0, 63<br> [0x800008f8]:sd a1, 584(sp)<br>     |
|  95|[0x80002300]<br>0x00001BFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                        |[0x80000908]:srli a1, a0, 19<br> [0x8000090c]:sd a1, 592(sp)<br>     |
|  96|[0x80002308]<br>0x00005FFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                        |[0x8000091c]:srli a1, a0, 17<br> [0x80000920]:sd a1, 600(sp)<br>     |
|  97|[0x80002310]<br>0x0555555555555555|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                      |[0x80000944]:srli a1, a0, 4<br> [0x80000948]:sd a1, 608(sp)<br>      |
|  98|[0x80002318]<br>0x0000000155555555|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                                    |[0x8000096c]:srli a1, a0, 31<br> [0x80000970]:sd a1, 616(sp)<br>     |
|  99|[0x80002320]<br>0x0000000000000000|- rs1_val==3<br>                                                                                                                                             |[0x80000978]:srli a1, a0, 59<br> [0x8000097c]:sd a1, 624(sp)<br>     |
| 100|[0x80002328]<br>0x0000000000000000|- rs1_val==5<br>                                                                                                                                             |[0x80000984]:srli a1, a0, 42<br> [0x80000988]:sd a1, 632(sp)<br>     |
| 101|[0x80002330]<br>0x0000666666666666|- rs1_val==3689348814741910323<br>                                                                                                                           |[0x800009ac]:srli a1, a0, 15<br> [0x800009b0]:sd a1, 640(sp)<br>     |
| 102|[0x80002338]<br>0x0000000000000001|- rs1_val==7378697629483820646<br>                                                                                                                           |[0x800009d4]:srli a1, a0, 62<br> [0x800009d8]:sd a1, 648(sp)<br>     |
| 103|[0x80002340]<br>0x00000000000001FF|- rs1_val==-3037000499<br>                                                                                                                                   |[0x800009ec]:srli a1, a0, 55<br> [0x800009f0]:sd a1, 656(sp)<br>     |
| 104|[0x80002348]<br>0x0000000002D413CC|- rs1_val==3037000499<br>                                                                                                                                    |[0x80000a04]:srli a1, a0, 6<br> [0x80000a08]:sd a1, 664(sp)<br>      |
| 105|[0x80002350]<br>0x0000AAAAAAAAAAAA|- rs1_val==6148914691236517204<br>                                                                                                                           |[0x80000a2c]:srli a1, a0, 15<br> [0x80000a30]:sd a1, 672(sp)<br>     |
| 106|[0x80002358]<br>0x0333333333333333|- rs1_val==3689348814741910322<br>                                                                                                                           |[0x80000a54]:srli a1, a0, 4<br> [0x80000a58]:sd a1, 680(sp)<br>      |
| 107|[0x80002360]<br>0x0000000000000000|- rs1_val==7378697629483820645<br>                                                                                                                           |[0x80000a7c]:srli a1, a0, 63<br> [0x80000a80]:sd a1, 688(sp)<br>     |
| 108|[0x80002368]<br>0x0000000000B504F3|- rs1_val==3037000498<br>                                                                                                                                    |[0x80000a94]:srli a1, a0, 8<br> [0x80000a98]:sd a1, 696(sp)<br>      |
| 109|[0x80002370]<br>0x0000000000000001|- rs1_val==6148914691236517206<br>                                                                                                                           |[0x80000abc]:srli a1, a0, 62<br> [0x80000ac0]:sd a1, 704(sp)<br>     |
| 110|[0x80002378]<br>0x0015555555555555|- rs1_val==-6148914691236517205<br>                                                                                                                          |[0x80000ae4]:srli a1, a0, 11<br> [0x80000ae8]:sd a1, 712(sp)<br>     |
| 111|[0x80002380]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                                             |[0x80000af0]:srli a1, a0, 32<br> [0x80000af4]:sd a1, 720(sp)<br>     |
| 112|[0x80002388]<br>0x0000000000000066|- rs1_val==3689348814741910324<br>                                                                                                                           |[0x80000b18]:srli a1, a0, 55<br> [0x80000b1c]:sd a1, 728(sp)<br>     |
| 113|[0x80002390]<br>0x00000CCCCCCCCCCC|- rs1_val==7378697629483820647<br>                                                                                                                           |[0x80000b40]:srli a1, a0, 19<br> [0x80000b44]:sd a1, 736(sp)<br>     |
| 114|[0x80002398]<br>0x0000000000000007|- rs1_val==-3037000498<br>                                                                                                                                   |[0x80000b58]:srli a1, a0, 61<br> [0x80000b5c]:sd a1, 744(sp)<br>     |
| 115|[0x800023a0]<br>0x0000000000000000|- rs1_val==3037000500<br>                                                                                                                                    |[0x80000b70]:srli a1, a0, 63<br> [0x80000b74]:sd a1, 752(sp)<br>     |
| 116|[0x800023a8]<br>0x0000000000000001|- rs1_val == -524289<br>                                                                                                                                     |[0x80000b80]:srli a1, a0, 63<br> [0x80000b84]:sd a1, 760(sp)<br>     |
| 117|[0x800023b0]<br>0x00000000FFFFFFFF|- rs1_val == -1048577<br>                                                                                                                                    |[0x80000b90]:srli a1, a0, 32<br> [0x80000b94]:sd a1, 768(sp)<br>     |
| 118|[0x800023b8]<br>0x00000000003FFFFF|- rs1_val == -2097153<br>                                                                                                                                    |[0x80000ba0]:srli a1, a0, 42<br> [0x80000ba4]:sd a1, 776(sp)<br>     |
| 119|[0x800023c0]<br>0x000FFFFFFFFFFBFF|- rs1_val == -4194305<br>                                                                                                                                    |[0x80000bb0]:srli a1, a0, 12<br> [0x80000bb4]:sd a1, 784(sp)<br>     |
| 120|[0x800023c8]<br>0x00FFFFFFFFFF7FFF|- rs1_val == -8388609<br>                                                                                                                                    |[0x80000bc0]:srli a1, a0, 8<br> [0x80000bc4]:sd a1, 792(sp)<br>      |
| 121|[0x800023d0]<br>0x00000000003FFFFF|- rs1_val == -16777217<br>                                                                                                                                   |[0x80000bd0]:srli a1, a0, 42<br> [0x80000bd4]:sd a1, 800(sp)<br>     |
| 122|[0x800023d8]<br>0x001FFFFFFFFF7FFF|- rs1_val == -67108865<br>                                                                                                                                   |[0x80000be0]:srli a1, a0, 11<br> [0x80000be4]:sd a1, 808(sp)<br>     |
| 123|[0x800023e0]<br>0x007FFFFFFFFBFFFF|- rs1_val == -134217729<br>                                                                                                                                  |[0x80000bf0]:srli a1, a0, 9<br> [0x80000bf4]:sd a1, 816(sp)<br>      |
| 124|[0x800023e8]<br>0x0000000000000007|- rs1_val == -268435457<br>                                                                                                                                  |[0x80000c00]:srli a1, a0, 61<br> [0x80000c04]:sd a1, 824(sp)<br>     |
| 125|[0x800023f0]<br>0x000000000000001F|- rs1_val == -536870913<br>                                                                                                                                  |[0x80000c10]:srli a1, a0, 59<br> [0x80000c14]:sd a1, 832(sp)<br>     |
| 126|[0x800023f8]<br>0x000000000000001F|- rs1_val == -1073741825<br>                                                                                                                                 |[0x80000c20]:srli a1, a0, 59<br> [0x80000c24]:sd a1, 840(sp)<br>     |
| 127|[0x80002400]<br>0x7FFFFFFFBFFFFFFF|- rs1_val == -2147483649<br>                                                                                                                                 |[0x80000c34]:srli a1, a0, 1<br> [0x80000c38]:sd a1, 848(sp)<br>      |
| 128|[0x80002408]<br>0x07FFFFFFF7FFFFFF|- rs1_val == -4294967297<br>                                                                                                                                 |[0x80000c48]:srli a1, a0, 5<br> [0x80000c4c]:sd a1, 856(sp)<br>      |
| 129|[0x80002410]<br>0x000007FFFFFFEFFF|- rs1_val == -8589934593<br>                                                                                                                                 |[0x80000c5c]:srli a1, a0, 21<br> [0x80000c60]:sd a1, 864(sp)<br>     |
| 130|[0x80002418]<br>0x00001FFFFFFF7FFF|- rs1_val == -17179869185<br>                                                                                                                                |[0x80000c70]:srli a1, a0, 19<br> [0x80000c74]:sd a1, 872(sp)<br>     |
| 131|[0x80002420]<br>0x0FFFFFFF7FFFFFFF|- rs1_val == -34359738369<br>                                                                                                                                |[0x80000c84]:srli a1, a0, 4<br> [0x80000c88]:sd a1, 880(sp)<br>      |
| 132|[0x80002428]<br>0x00003FFFFFFBFFFF|- rs1_val == -68719476737<br>                                                                                                                                |[0x80000c98]:srli a1, a0, 18<br> [0x80000c9c]:sd a1, 888(sp)<br>     |
| 133|[0x80002430]<br>0x003FFFFFF7FFFFFF|- rs1_val == -137438953473<br>                                                                                                                               |[0x80000cac]:srli a1, a0, 10<br> [0x80000cb0]:sd a1, 896(sp)<br>     |
| 134|[0x80002438]<br>0x7FFFFFDFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                               |[0x80000cc0]:srli a1, a0, 1<br> [0x80000cc4]:sd a1, 904(sp)<br>      |
| 135|[0x80002440]<br>0x00001FFFFFEFFFFF|- rs1_val == -549755813889<br>                                                                                                                               |[0x80000cd4]:srli a1, a0, 19<br> [0x80000cd8]:sd a1, 912(sp)<br>     |
| 136|[0x80002448]<br>0x00000000000001FF|- rs1_val == -1099511627777<br>                                                                                                                              |[0x80000ce8]:srli a1, a0, 55<br> [0x80000cec]:sd a1, 920(sp)<br>     |
| 137|[0x80002450]<br>0x0000000000000007|- rs1_val == -2199023255553<br>                                                                                                                              |[0x80000cfc]:srli a1, a0, 61<br> [0x80000d00]:sd a1, 928(sp)<br>     |
| 138|[0x80002458]<br>0x00001FFFFF7FFFFF|- rs1_val == -4398046511105<br>                                                                                                                              |[0x80000d10]:srli a1, a0, 19<br> [0x80000d14]:sd a1, 936(sp)<br>     |
| 139|[0x80002460]<br>0x07FFFFBFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                              |[0x80000d24]:srli a1, a0, 5<br> [0x80000d28]:sd a1, 944(sp)<br>      |
| 140|[0x80002468]<br>0x003FFFFBFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                             |[0x80000d38]:srli a1, a0, 10<br> [0x80000d3c]:sd a1, 952(sp)<br>     |
| 141|[0x80002470]<br>0x0003FFFF7FFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                             |[0x80000d4c]:srli a1, a0, 14<br> [0x80000d50]:sd a1, 960(sp)<br>     |
| 142|[0x80002478]<br>0x0000000000000003|- rs1_val == -70368744177665<br>                                                                                                                             |[0x80000d60]:srli a1, a0, 62<br> [0x80000d64]:sd a1, 968(sp)<br>     |
| 143|[0x80002480]<br>0x000000000001FFFE|- rs1_val == -140737488355329<br>                                                                                                                            |[0x80000d74]:srli a1, a0, 47<br> [0x80000d78]:sd a1, 976(sp)<br>     |
| 144|[0x80002488]<br>0xFFFEFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                            |[0x80000d88]:srli a1, a0, 0<br> [0x80000d8c]:sd a1, 984(sp)<br>      |
| 145|[0x80002490]<br>0x000000000001FFFB|- rs1_val == -562949953421313<br>                                                                                                                            |[0x80000d9c]:srli a1, a0, 47<br> [0x80000da0]:sd a1, 992(sp)<br>     |
| 146|[0x80002498]<br>0x0007FFDFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                           |[0x80000db0]:srli a1, a0, 13<br> [0x80000db4]:sd a1, 1000(sp)<br>    |
| 147|[0x800024a0]<br>0x07FFBFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                           |[0x80000dc4]:srli a1, a0, 5<br> [0x80000dc8]:sd a1, 1008(sp)<br>     |
| 148|[0x800024a8]<br>0x00FFEFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                           |[0x80000dd8]:srli a1, a0, 8<br> [0x80000ddc]:sd a1, 1016(sp)<br>     |
| 149|[0x800024b0]<br>0x0000000001000000|- rs1_val == 137438953472<br>                                                                                                                                |[0x80000de8]:srli a1, a0, 13<br> [0x80000dec]:sd a1, 1024(sp)<br>    |
