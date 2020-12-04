
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
| COV_LABELS                | sraiw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sraiw-01.S/sraiw-01.S    |
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
      [0x80000df0]:srai a1, a0, 7
      [0x80000df4]:sd a1, 1024(ra)
 -- Signature Address: 0x800024b8 Data: 0x0000000000000008
 -- Redundant Coverpoints hit by the op
      - opcode : sraiw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < 32
      - rs1_val == 1024






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

|s.no|            signature             |                                                                              coverpoints                                                                               |                                code                                |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFFFFFFFFFF|- opcode : sraiw<br> - rs1 : x4<br> - rd : x4<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == -549755813889<br> - imm_val == 30<br> |[0x800003a4]:srai tp, tp, 30<br> [0x800003a8]:sd tp, 0(gp)<br>      |
|   2|[0x80002018]<br>0x0000000000000000|- rs1 : x22<br> - rd : x6<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == 32<br>                                                    |[0x800003b0]:srai t1, s6, 17<br> [0x800003b4]:sd t1, 8(gp)<br>      |
|   3|[0x80002020]<br>0xFFFFFFFFAAAAAAAA|- rs1 : x28<br> - rd : x22<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                             |[0x800003d8]:srai s6, t3, 0<br> [0x800003dc]:sd s6, 16(gp)<br>      |
|   4|[0x80002028]<br>0xFFFFFFFFB504F334|- rs1 : x8<br> - rd : x14<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val==3037000500<br>                                                                              |[0x800003f0]:srai a4, fp, 0<br> [0x800003f4]:sd a4, 24(gp)<br>      |
|   5|[0x80002030]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x6<br> - rd : x15<br> - rs1_val < 0 and imm_val == 31<br> - rs1_val == -34359738369<br>                                                                         |[0x80000404]:srai a5, t1, 31<br> [0x80000408]:sd a5, 32(gp)<br>     |
|   6|[0x80002038]<br>0x0000000000000000|- rs1 : x20<br> - rd : x19<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == 144115188075855872<br>                                                                  |[0x80000414]:srai s3, s4, 31<br> [0x80000418]:sd s3, 40(gp)<br>     |
|   7|[0x80002040]<br>0x0000000000000000|- rs1 : x24<br> - rd : x5<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br> - rs1_val == 4<br> - rs1_val==4<br> - imm_val == 4<br>                          |[0x80000420]:srai t0, s8, 4<br> [0x80000424]:sd t0, 48(gp)<br>      |
|   8|[0x80002048]<br>0x0000000000000000|- rs1 : x9<br> - rd : x1<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br>                                    |[0x80000430]:srai ra, s1, 13<br> [0x80000434]:sd ra, 56(gp)<br>     |
|   9|[0x80002050]<br>0x0000000000000000|- rs1 : x5<br> - rd : x8<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br> - rs1_val==0<br> - imm_val == 29<br>                                                  |[0x8000043c]:srai fp, t0, 29<br> [0x80000440]:sd fp, 64(gp)<br>     |
|  10|[0x80002058]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x21<br> - rd : x9<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br>                                   |[0x80000450]:srai s1, s5, 14<br> [0x80000454]:sd s1, 72(gp)<br>     |
|  11|[0x80002060]<br>0x0000000000000000|- rs1 : x10<br> - rd : x12<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br> - imm_val == 10<br>                                              |[0x8000045c]:srai a2, a0, 10<br> [0x80000460]:sd a2, 80(gp)<br>     |
|  12|[0x80002068]<br>0x0000000000000000|- rs1 : x0<br> - rd : x16<br>                                                                                                                                           |[0x80000468]:srai a6, zero, 17<br> [0x8000046c]:sd a6, 88(gp)<br>   |
|  13|[0x80002070]<br>0x0000000000000004|- rs1 : x1<br> - rd : x31<br> - rs1_val == 8<br> - imm_val == 1<br>                                                                                                     |[0x80000474]:srai t6, ra, 1<br> [0x80000478]:sd t6, 96(gp)<br>      |
|  14|[0x80002078]<br>0x0000000000000004|- rs1 : x23<br> - rd : x2<br> - rs1_val == 16<br> - imm_val == 2<br>                                                                                                    |[0x80000480]:srai sp, s7, 2<br> [0x80000484]:sd sp, 104(gp)<br>     |
|  15|[0x80002080]<br>0x0000000000000000|- rs1 : x31<br> - rd : x18<br> - rs1_val == 64<br>                                                                                                                      |[0x8000048c]:srai s2, t6, 18<br> [0x80000490]:sd s2, 112(gp)<br>    |
|  16|[0x80002088]<br>0x0000000000000000|- rs1 : x18<br> - rd : x7<br> - rs1_val == 128<br> - imm_val == 16<br>                                                                                                  |[0x80000498]:srai t2, s2, 16<br> [0x8000049c]:sd t2, 120(gp)<br>    |
|  17|[0x80002090]<br>0x0000000000000000|- rs1 : x26<br> - rd : x27<br> - rs1_val == 256<br>                                                                                                                     |[0x800004a4]:srai s11, s10, 14<br> [0x800004a8]:sd s11, 128(gp)<br> |
|  18|[0x80002098]<br>0x0000000000000000|- rs1 : x30<br> - rd : x29<br> - rs1_val == 512<br>                                                                                                                     |[0x800004b0]:srai t4, t5, 19<br> [0x800004b4]:sd t4, 136(gp)<br>    |
|  19|[0x800020a0]<br>0x0000000000000000|- rs1 : x25<br> - rd : x0<br> - rs1_val == 1024<br>                                                                                                                     |[0x800004bc]:srai zero, s9, 7<br> [0x800004c0]:sd zero, 144(gp)<br> |
|  20|[0x800020a8]<br>0x0000000000000000|- rs1 : x19<br> - rd : x21<br> - rs1_val == 2048<br>                                                                                                                    |[0x800004cc]:srai s5, s3, 14<br> [0x800004d0]:sd s5, 152(gp)<br>    |
|  21|[0x800020b0]<br>0x0000000000000800|- rs1 : x13<br> - rd : x10<br> - rs1_val == 4096<br>                                                                                                                    |[0x800004d8]:srai a0, a3, 1<br> [0x800004dc]:sd a0, 160(gp)<br>     |
|  22|[0x800020b8]<br>0x0000000000000000|- rs1 : x27<br> - rd : x24<br> - rs1_val == 8192<br> - imm_val == 23<br>                                                                                                |[0x800004ec]:srai s8, s11, 23<br> [0x800004f0]:sd s8, 0(ra)<br>     |
|  23|[0x800020c0]<br>0x0000000000000008|- rs1 : x2<br> - rd : x3<br> - rs1_val == 16384<br>                                                                                                                     |[0x800004f8]:srai gp, sp, 11<br> [0x800004fc]:sd gp, 8(ra)<br>      |
|  24|[0x800020c8]<br>0x0000000000000000|- rs1 : x14<br> - rd : x30<br> - rs1_val == 32768<br>                                                                                                                   |[0x80000504]:srai t5, a4, 30<br> [0x80000508]:sd t5, 16(ra)<br>     |
|  25|[0x800020d0]<br>0x0000000000000000|- rs1 : x15<br> - rd : x17<br> - rs1_val == 65536<br>                                                                                                                   |[0x80000510]:srai a7, a5, 18<br> [0x80000514]:sd a7, 24(ra)<br>     |
|  26|[0x800020d8]<br>0x0000000000001000|- rs1 : x3<br> - rd : x23<br> - rs1_val == 131072<br>                                                                                                                   |[0x8000051c]:srai s7, gp, 5<br> [0x80000520]:sd s7, 32(ra)<br>      |
|  27|[0x800020e0]<br>0x0000000000002000|- rs1 : x29<br> - rd : x28<br> - rs1_val == 262144<br>                                                                                                                  |[0x80000528]:srai t3, t4, 5<br> [0x8000052c]:sd t3, 40(ra)<br>      |
|  28|[0x800020e8]<br>0x0000000000000000|- rs1 : x17<br> - rd : x26<br> - rs1_val == 524288<br> - imm_val == 27<br>                                                                                              |[0x80000534]:srai s10, a7, 27<br> [0x80000538]:sd s10, 48(ra)<br>   |
|  29|[0x800020f0]<br>0x0000000000000040|- rs1 : x12<br> - rd : x20<br> - rs1_val == 1048576<br>                                                                                                                 |[0x80000540]:srai s4, a2, 14<br> [0x80000544]:sd s4, 56(ra)<br>     |
|  30|[0x800020f8]<br>0x0000000000000001|- rs1 : x7<br> - rd : x13<br> - rs1_val == 2097152<br> - imm_val == 21<br>                                                                                              |[0x8000054c]:srai a3, t2, 21<br> [0x80000550]:sd a3, 64(ra)<br>     |
|  31|[0x80002100]<br>0x0000000000000040|- rs1 : x11<br> - rd : x25<br> - rs1_val == 4194304<br>                                                                                                                 |[0x80000558]:srai s9, a1, 16<br> [0x8000055c]:sd s9, 72(ra)<br>     |
|  32|[0x80002108]<br>0x0000000000100000|- rs1 : x16<br> - rd : x11<br> - rs1_val == 8388608<br>                                                                                                                 |[0x80000564]:srai a1, a6, 3<br> [0x80000568]:sd a1, 80(ra)<br>      |
|  33|[0x80002110]<br>0x0000000000040000|- rs1_val == 16777216<br>                                                                                                                                               |[0x80000570]:srai a1, a0, 6<br> [0x80000574]:sd a1, 88(ra)<br>      |
|  34|[0x80002118]<br>0x0000000000000004|- rs1_val == 33554432<br>                                                                                                                                               |[0x8000057c]:srai a1, a0, 23<br> [0x80000580]:sd a1, 96(ra)<br>     |
|  35|[0x80002120]<br>0x0000000000040000|- rs1_val == 67108864<br> - imm_val == 8<br>                                                                                                                            |[0x80000588]:srai a1, a0, 8<br> [0x8000058c]:sd a1, 104(ra)<br>     |
|  36|[0x80002128]<br>0x0000000000000040|- rs1_val == 134217728<br>                                                                                                                                              |[0x80000594]:srai a1, a0, 21<br> [0x80000598]:sd a1, 112(ra)<br>    |
|  37|[0x80002130]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                                                                                                              |[0x800005a0]:srai a1, a0, 29<br> [0x800005a4]:sd a1, 120(ra)<br>    |
|  38|[0x80002138]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                                              |[0x800005ac]:srai a1, a0, 30<br> [0x800005b0]:sd a1, 128(ra)<br>    |
|  39|[0x80002140]<br>0x0000000000008000|- rs1_val == 1073741824<br> - imm_val == 15<br>                                                                                                                         |[0x800005b8]:srai a1, a0, 15<br> [0x800005bc]:sd a1, 136(ra)<br>    |
|  40|[0x80002148]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 2147483648<br>                                                                                                                                             |[0x800005c8]:srai a1, a0, 29<br> [0x800005cc]:sd a1, 144(ra)<br>    |
|  41|[0x80002150]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                             |[0x800005d8]:srai a1, a0, 17<br> [0x800005dc]:sd a1, 152(ra)<br>    |
|  42|[0x80002158]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                             |[0x800005e8]:srai a1, a0, 6<br> [0x800005ec]:sd a1, 160(ra)<br>     |
|  43|[0x80002160]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                            |[0x800005f8]:srai a1, a0, 1<br> [0x800005fc]:sd a1, 168(ra)<br>     |
|  44|[0x80002168]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                            |[0x80000608]:srai a1, a0, 5<br> [0x8000060c]:sd a1, 176(ra)<br>     |
|  45|[0x80002170]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                            |[0x80000618]:srai a1, a0, 3<br> [0x8000061c]:sd a1, 184(ra)<br>     |
|  46|[0x80002178]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                           |[0x80000628]:srai a1, a0, 3<br> [0x8000062c]:sd a1, 192(ra)<br>     |
|  47|[0x80002180]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                           |[0x80000638]:srai a1, a0, 15<br> [0x8000063c]:sd a1, 200(ra)<br>    |
|  48|[0x80002188]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                           |[0x80000648]:srai a1, a0, 12<br> [0x8000064c]:sd a1, 208(ra)<br>    |
|  49|[0x80002190]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                          |[0x80000658]:srai a1, a0, 6<br> [0x8000065c]:sd a1, 216(ra)<br>     |
|  50|[0x80002198]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                          |[0x80000668]:srai a1, a0, 14<br> [0x8000066c]:sd a1, 224(ra)<br>    |
|  51|[0x800021a0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                          |[0x80000678]:srai a1, a0, 29<br> [0x8000067c]:sd a1, 232(ra)<br>    |
|  52|[0x800021a8]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                                          |[0x80000688]:srai a1, a0, 9<br> [0x8000068c]:sd a1, 240(ra)<br>     |
|  53|[0x800021b0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                         |[0x80000698]:srai a1, a0, 10<br> [0x8000069c]:sd a1, 248(ra)<br>    |
|  54|[0x800021b8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                         |[0x800006a8]:srai a1, a0, 1<br> [0x800006ac]:sd a1, 256(ra)<br>     |
|  55|[0x800021c0]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                         |[0x800006b8]:srai a1, a0, 12<br> [0x800006bc]:sd a1, 264(ra)<br>    |
|  56|[0x800021c8]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                        |[0x800006c8]:srai a1, a0, 10<br> [0x800006cc]:sd a1, 272(ra)<br>    |
|  57|[0x800021d0]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                        |[0x800006d8]:srai a1, a0, 0<br> [0x800006dc]:sd a1, 280(ra)<br>     |
|  58|[0x800021d8]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                        |[0x800006e8]:srai a1, a0, 8<br> [0x800006ec]:sd a1, 288(ra)<br>     |
|  59|[0x800021e0]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                       |[0x800006f8]:srai a1, a0, 29<br> [0x800006fc]:sd a1, 296(ra)<br>    |
|  60|[0x800021e8]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                       |[0x80000708]:srai a1, a0, 18<br> [0x8000070c]:sd a1, 304(ra)<br>    |
|  61|[0x800021f0]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                       |[0x80000718]:srai a1, a0, 1<br> [0x8000071c]:sd a1, 312(ra)<br>     |
|  62|[0x800021f8]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                       |[0x80000728]:srai a1, a0, 23<br> [0x8000072c]:sd a1, 320(ra)<br>    |
|  63|[0x80002200]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                      |[0x80000738]:srai a1, a0, 19<br> [0x8000073c]:sd a1, 328(ra)<br>    |
|  64|[0x80002208]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                      |[0x80000748]:srai a1, a0, 27<br> [0x8000074c]:sd a1, 336(ra)<br>    |
|  65|[0x80002210]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                      |[0x80000758]:srai a1, a0, 30<br> [0x8000075c]:sd a1, 344(ra)<br>    |
|  66|[0x80002218]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                     |[0x80000768]:srai a1, a0, 30<br> [0x8000076c]:sd a1, 352(ra)<br>    |
|  67|[0x80002220]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                     |[0x80000778]:srai a1, a0, 15<br> [0x8000077c]:sd a1, 360(ra)<br>    |
|  68|[0x80002228]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                    |[0x80000788]:srai a1, a0, 0<br> [0x8000078c]:sd a1, 368(ra)<br>     |
|  69|[0x80002230]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                    |[0x80000798]:srai a1, a0, 1<br> [0x8000079c]:sd a1, 376(ra)<br>     |
|  70|[0x80002238]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                    |[0x800007a8]:srai a1, a0, 10<br> [0x800007ac]:sd a1, 384(ra)<br>    |
|  71|[0x80002240]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -2<br>                                                                                                                                                     |[0x800007b4]:srai a1, a0, 0<br> [0x800007b8]:sd a1, 392(ra)<br>     |
|  72|[0x80002248]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                     |[0x800007c0]:srai a1, a0, 17<br> [0x800007c4]:sd a1, 400(ra)<br>    |
|  73|[0x80002250]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                     |[0x800007cc]:srai a1, a0, 7<br> [0x800007d0]:sd a1, 408(ra)<br>     |
|  74|[0x80002258]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -9<br>                                                                                                                                                     |[0x800007d8]:srai a1, a0, 0<br> [0x800007dc]:sd a1, 416(ra)<br>     |
|  75|[0x80002260]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                    |[0x800007e4]:srai a1, a0, 31<br> [0x800007e8]:sd a1, 424(ra)<br>    |
|  76|[0x80002268]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                    |[0x800007f0]:srai a1, a0, 18<br> [0x800007f4]:sd a1, 432(ra)<br>    |
|  77|[0x80002270]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                    |[0x800007fc]:srai a1, a0, 27<br> [0x80000800]:sd a1, 440(ra)<br>    |
|  78|[0x80002278]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                   |[0x80000808]:srai a1, a0, 30<br> [0x8000080c]:sd a1, 448(ra)<br>    |
|  79|[0x80002280]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -257<br>                                                                                                                                                   |[0x80000814]:srai a1, a0, 8<br> [0x80000818]:sd a1, 456(ra)<br>     |
|  80|[0x80002288]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                   |[0x80000820]:srai a1, a0, 15<br> [0x80000824]:sd a1, 464(ra)<br>    |
|  81|[0x80002290]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                                                                                  |[0x8000082c]:srai a1, a0, 0<br> [0x80000830]:sd a1, 472(ra)<br>     |
|  82|[0x80002298]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                                  |[0x8000083c]:srai a1, a0, 27<br> [0x80000840]:sd a1, 480(ra)<br>    |
|  83|[0x800022a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                                  |[0x8000084c]:srai a1, a0, 30<br> [0x80000850]:sd a1, 488(ra)<br>    |
|  84|[0x800022a8]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -8193<br>                                                                                                                                                  |[0x8000085c]:srai a1, a0, 10<br> [0x80000860]:sd a1, 496(ra)<br>    |
|  85|[0x800022b0]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                                 |[0x8000086c]:srai a1, a0, 0<br> [0x80000870]:sd a1, 504(ra)<br>     |
|  86|[0x800022b8]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == -32769<br>                                                                                                                                                 |[0x8000087c]:srai a1, a0, 2<br> [0x80000880]:sd a1, 512(ra)<br>     |
|  87|[0x800022c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                      |[0x80000890]:srai a1, a0, 4<br> [0x80000894]:sd a1, 520(ra)<br>     |
|  88|[0x800022c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                     |[0x800008a4]:srai a1, a0, 9<br> [0x800008a8]:sd a1, 528(ra)<br>     |
|  89|[0x800022d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                     |[0x800008b8]:srai a1, a0, 3<br> [0x800008bc]:sd a1, 536(ra)<br>     |
|  90|[0x800022d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                     |[0x800008cc]:srai a1, a0, 29<br> [0x800008d0]:sd a1, 544(ra)<br>    |
|  91|[0x800022e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                    |[0x800008e0]:srai a1, a0, 29<br> [0x800008e4]:sd a1, 552(ra)<br>    |
|  92|[0x800022e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                    |[0x800008f4]:srai a1, a0, 8<br> [0x800008f8]:sd a1, 560(ra)<br>     |
|  93|[0x800022f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                    |[0x80000908]:srai a1, a0, 0<br> [0x8000090c]:sd a1, 568(ra)<br>     |
|  94|[0x800022f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                   |[0x8000091c]:srai a1, a0, 31<br> [0x80000920]:sd a1, 576(ra)<br>    |
|  95|[0x80002300]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                   |[0x80000930]:srai a1, a0, 4<br> [0x80000934]:sd a1, 584(ra)<br>     |
|  96|[0x80002308]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                   |[0x80000944]:srai a1, a0, 23<br> [0x80000948]:sd a1, 592(ra)<br>    |
|  97|[0x80002310]<br>0x000000000000000A|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                                 |[0x8000096c]:srai a1, a0, 27<br> [0x80000970]:sd a1, 600(ra)<br>    |
|  98|[0x80002318]<br>0x0000000000000000|- rs1_val==3<br>                                                                                                                                                        |[0x80000978]:srai a1, a0, 9<br> [0x8000097c]:sd a1, 608(ra)<br>     |
|  99|[0x80002320]<br>0x0000000000000000|- rs1_val==5<br>                                                                                                                                                        |[0x80000984]:srai a1, a0, 31<br> [0x80000988]:sd a1, 616(ra)<br>    |
| 100|[0x80002328]<br>0x000000000000CCCC|- rs1_val==3689348814741910323<br>                                                                                                                                      |[0x800009ac]:srai a1, a0, 14<br> [0x800009b0]:sd a1, 624(ra)<br>    |
| 101|[0x80002330]<br>0x0000000000019999|- rs1_val==7378697629483820646<br>                                                                                                                                      |[0x800009d4]:srai a1, a0, 14<br> [0x800009d8]:sd a1, 632(ra)<br>    |
| 102|[0x80002338]<br>0x0000000000000095|- rs1_val==-3037000499<br>                                                                                                                                              |[0x800009ec]:srai a1, a0, 23<br> [0x800009f0]:sd a1, 640(ra)<br>    |
| 103|[0x80002340]<br>0xFFFFFFFFFFFFFFFD|- rs1_val==3037000499<br>                                                                                                                                               |[0x80000a04]:srai a1, a0, 29<br> [0x80000a08]:sd a1, 648(ra)<br>    |
| 104|[0x80002348]<br>0x0000000000000002|- rs1_val==6148914691236517204<br>                                                                                                                                      |[0x80000a2c]:srai a1, a0, 29<br> [0x80000a30]:sd a1, 656(ra)<br>    |
| 105|[0x80002350]<br>0x0000000000001999|- rs1_val==3689348814741910322<br>                                                                                                                                      |[0x80000a54]:srai a1, a0, 17<br> [0x80000a58]:sd a1, 664(ra)<br>    |
| 106|[0x80002358]<br>0x0000000000CCCCCC|- rs1_val==7378697629483820645<br>                                                                                                                                      |[0x80000a7c]:srai a1, a0, 7<br> [0x80000a80]:sd a1, 672(ra)<br>     |
| 107|[0x80002360]<br>0xFFFFFFFFFFFFFFFE|- rs1_val==3037000498<br>                                                                                                                                               |[0x80000a94]:srai a1, a0, 30<br> [0x80000a98]:sd a1, 680(ra)<br>    |
| 108|[0x80002368]<br>0x0000000000000002|- rs1_val==6148914691236517206<br>                                                                                                                                      |[0x80000abc]:srai a1, a0, 29<br> [0x80000ac0]:sd a1, 688(ra)<br>    |
| 109|[0x80002370]<br>0xFFFFFFFFF5555555|- rs1_val==-6148914691236517205<br>                                                                                                                                     |[0x80000ae4]:srai a1, a0, 3<br> [0x80000ae8]:sd a1, 696(ra)<br>     |
| 110|[0x80002378]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                                                        |[0x80000af0]:srai a1, a0, 15<br> [0x80000af4]:sd a1, 704(ra)<br>    |
| 111|[0x80002380]<br>0x0000000000000001|- rs1_val==3689348814741910324<br>                                                                                                                                      |[0x80000b18]:srai a1, a0, 29<br> [0x80000b1c]:sd a1, 712(ra)<br>    |
| 112|[0x80002388]<br>0x0000000000000003|- rs1_val==7378697629483820647<br>                                                                                                                                      |[0x80000b40]:srai a1, a0, 29<br> [0x80000b44]:sd a1, 720(ra)<br>    |
| 113|[0x80002390]<br>0x00000000095F6199|- rs1_val==-3037000498<br>                                                                                                                                              |[0x80000b58]:srai a1, a0, 3<br> [0x80000b5c]:sd a1, 728(ra)<br>     |
| 114|[0x80002398]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -65537<br>                                                                                                                                                 |[0x80000b68]:srai a1, a0, 2<br> [0x80000b6c]:sd a1, 736(ra)<br>     |
| 115|[0x800023a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -131073<br>                                                                                                                                                |[0x80000b78]:srai a1, a0, 31<br> [0x80000b7c]:sd a1, 744(ra)<br>    |
| 116|[0x800023a8]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -262145<br>                                                                                                                                                |[0x80000b88]:srai a1, a0, 4<br> [0x80000b8c]:sd a1, 752(ra)<br>     |
| 117|[0x800023b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -524289<br>                                                                                                                                                |[0x80000b98]:srai a1, a0, 31<br> [0x80000b9c]:sd a1, 760(ra)<br>    |
| 118|[0x800023b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1048577<br>                                                                                                                                               |[0x80000ba8]:srai a1, a0, 21<br> [0x80000bac]:sd a1, 768(ra)<br>    |
| 119|[0x800023c0]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -2097153<br>                                                                                                                                               |[0x80000bb8]:srai a1, a0, 4<br> [0x80000bbc]:sd a1, 776(ra)<br>     |
| 120|[0x800023c8]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == -4194305<br>                                                                                                                                               |[0x80000bc8]:srai a1, a0, 13<br> [0x80000bcc]:sd a1, 784(ra)<br>    |
| 121|[0x800023d0]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -8388609<br>                                                                                                                                               |[0x80000bd8]:srai a1, a0, 5<br> [0x80000bdc]:sd a1, 792(ra)<br>     |
| 122|[0x800023d8]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -16777217<br>                                                                                                                                              |[0x80000be8]:srai a1, a0, 13<br> [0x80000bec]:sd a1, 800(ra)<br>    |
| 123|[0x800023e0]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -33554433<br>                                                                                                                                              |[0x80000bf8]:srai a1, a0, 21<br> [0x80000bfc]:sd a1, 808(ra)<br>    |
| 124|[0x800023e8]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -67108865<br>                                                                                                                                              |[0x80000c08]:srai a1, a0, 16<br> [0x80000c0c]:sd a1, 816(ra)<br>    |
| 125|[0x800023f0]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -134217729<br>                                                                                                                                             |[0x80000c18]:srai a1, a0, 23<br> [0x80000c1c]:sd a1, 824(ra)<br>    |
| 126|[0x800023f8]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -268435457<br>                                                                                                                                             |[0x80000c28]:srai a1, a0, 16<br> [0x80000c2c]:sd a1, 832(ra)<br>    |
| 127|[0x80002400]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -536870913<br>                                                                                                                                             |[0x80000c38]:srai a1, a0, 19<br> [0x80000c3c]:sd a1, 840(ra)<br>    |
| 128|[0x80002408]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                            |[0x80000c48]:srai a1, a0, 5<br> [0x80000c4c]:sd a1, 848(ra)<br>     |
| 129|[0x80002410]<br>0x00000000000000FF|- rs1_val == -2147483649<br>                                                                                                                                            |[0x80000c5c]:srai a1, a0, 23<br> [0x80000c60]:sd a1, 856(ra)<br>    |
| 130|[0x80002418]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                                            |[0x80000c70]:srai a1, a0, 15<br> [0x80000c74]:sd a1, 864(ra)<br>    |
| 131|[0x80002420]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                            |[0x80000c84]:srai a1, a0, 16<br> [0x80000c88]:sd a1, 872(ra)<br>    |
| 132|[0x80002428]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                           |[0x80000c98]:srai a1, a0, 17<br> [0x80000c9c]:sd a1, 880(ra)<br>    |
| 133|[0x80002430]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                                           |[0x80000cac]:srai a1, a0, 23<br> [0x80000cb0]:sd a1, 888(ra)<br>    |
| 134|[0x80002438]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                          |[0x80000cc0]:srai a1, a0, 31<br> [0x80000cc4]:sd a1, 896(ra)<br>    |
| 135|[0x80002440]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                                          |[0x80000cd4]:srai a1, a0, 11<br> [0x80000cd8]:sd a1, 904(ra)<br>    |
| 136|[0x80002448]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                         |[0x80000ce8]:srai a1, a0, 15<br> [0x80000cec]:sd a1, 912(ra)<br>    |
| 137|[0x80002450]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                         |[0x80000cfc]:srai a1, a0, 17<br> [0x80000d00]:sd a1, 920(ra)<br>    |
| 138|[0x80002458]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                         |[0x80000d10]:srai a1, a0, 5<br> [0x80000d14]:sd a1, 928(ra)<br>     |
| 139|[0x80002460]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                         |[0x80000d24]:srai a1, a0, 4<br> [0x80000d28]:sd a1, 936(ra)<br>     |
| 140|[0x80002468]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                        |[0x80000d38]:srai a1, a0, 9<br> [0x80000d3c]:sd a1, 944(ra)<br>     |
| 141|[0x80002470]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                        |[0x80000d4c]:srai a1, a0, 5<br> [0x80000d50]:sd a1, 952(ra)<br>     |
| 142|[0x80002478]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                        |[0x80000d60]:srai a1, a0, 27<br> [0x80000d64]:sd a1, 960(ra)<br>    |
| 143|[0x80002480]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                       |[0x80000d74]:srai a1, a0, 3<br> [0x80000d78]:sd a1, 968(ra)<br>     |
| 144|[0x80002488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                       |[0x80000d88]:srai a1, a0, 27<br> [0x80000d8c]:sd a1, 976(ra)<br>    |
| 145|[0x80002490]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                       |[0x80000d9c]:srai a1, a0, 4<br> [0x80000da0]:sd a1, 984(ra)<br>     |
| 146|[0x80002498]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                      |[0x80000db0]:srai a1, a0, 10<br> [0x80000db4]:sd a1, 992(ra)<br>    |
| 147|[0x800024a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                      |[0x80000dc4]:srai a1, a0, 6<br> [0x80000dc8]:sd a1, 1000(ra)<br>    |
| 148|[0x800024a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                      |[0x80000dd8]:srai a1, a0, 6<br> [0x80000ddc]:sd a1, 1008(ra)<br>    |
| 149|[0x800024b0]<br>0x0000000000000000|- rs1_val == 2<br> - rs1_val==2<br>                                                                                                                                     |[0x80000de4]:srai a1, a0, 17<br> [0x80000de8]:sd a1, 1016(ra)<br>   |
