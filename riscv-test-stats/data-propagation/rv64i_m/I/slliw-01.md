
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
| COV_LABELS                | slliw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slliw-01.S/slliw-01.S    |
| Total Number of coverpoints| 242     |
| Total Coverpoints Hit     | 242      |
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
      [0x80000df4]:slli a1, a0, 2
      [0x80000df8]:sd a1, 1008(gp)
 -- Signature Address: 0x800024b8 Data: 0x0000000000008000
 -- Redundant Coverpoints hit by the op
      - opcode : slliw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < 32
      - rs1_val == 8192
      - imm_val == 2






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

|s.no|            signature             |                                                                             coverpoints                                                                              |                                code                                |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFFFFFFFC00|- opcode : slliw<br> - rs1 : x29<br> - rd : x29<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == -33554433<br> - imm_val == 10<br> |[0x800003a0]:slli t4, t4, 10<br> [0x800003a4]:sd t4, 0(t2)<br>      |
|   2|[0x80002018]<br>0x0000000000000000|- rs1 : x14<br> - rd : x28<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == 562949953421312<br>                                    |[0x800003b0]:slli t3, a4, 11<br> [0x800003b4]:sd t3, 8(t2)<br>      |
|   3|[0x80002020]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x19<br> - rd : x22<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -35184372088833<br>                                                                    |[0x800003c4]:slli s6, s3, 0<br> [0x800003c8]:sd s6, 16(t2)<br>      |
|   4|[0x80002028]<br>0x0000000000000000|- rs1 : x10<br> - rd : x23<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 137438953472<br>                                                                       |[0x800003d4]:slli s7, a0, 0<br> [0x800003d8]:sd s7, 24(t2)<br>      |
|   5|[0x80002030]<br>0xFFFFFFFF80000000|- rs1 : x13<br> - rd : x20<br> - rs1_val < 0 and imm_val == 31<br> - rs1_val == -8193<br>                                                                             |[0x800003e4]:slli s4, a3, 31<br> [0x800003e8]:sd s4, 32(t2)<br>     |
|   6|[0x80002038]<br>0x0000000000000000|- rs1 : x6<br> - rd : x12<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                 |[0x800003f0]:slli a2, t1, 31<br> [0x800003f4]:sd a2, 40(t2)<br>     |
|   7|[0x80002040]<br>0x0000000000000380|- rs1 : x31<br> - rd : x19<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br>                                                                              |[0x800003fc]:slli s3, t6, 7<br> [0x80000400]:sd s3, 48(t2)<br>      |
|   8|[0x80002048]<br>0x0000000000000000|- rs1 : x24<br> - rd : x4<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br>                                 |[0x8000040c]:slli tp, s8, 10<br> [0x80000410]:sd tp, 56(t2)<br>     |
|   9|[0x80002050]<br>0x0000000000000000|- rs1 : x9<br> - rd : x27<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br> - rs1_val==0<br>                                                                   |[0x80000418]:slli s11, s1, 3<br> [0x8000041c]:sd s11, 64(t2)<br>    |
|  10|[0x80002058]<br>0xFFFFFFFFFFF80000|- rs1 : x17<br> - rd : x25<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br>                                |[0x8000042c]:slli s9, a7, 19<br> [0x80000430]:sd s9, 72(t2)<br>     |
|  11|[0x80002060]<br>0x0000000000000080|- rs1 : x28<br> - rd : x3<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br>                                                                 |[0x80000438]:slli gp, t3, 7<br> [0x8000043c]:sd gp, 80(t2)<br>      |
|  12|[0x80002068]<br>0x0000000020000000|- rs1 : x3<br> - rd : x14<br> - rs1_val == 4<br> - rs1_val==4<br> - imm_val == 27<br>                                                                                 |[0x80000444]:slli a4, gp, 27<br> [0x80000448]:sd a4, 88(t2)<br>     |
|  13|[0x80002070]<br>0x0000000000400000|- rs1 : x11<br> - rd : x17<br> - rs1_val == 8<br>                                                                                                                     |[0x80000450]:slli a7, a1, 19<br> [0x80000454]:sd a7, 96(t2)<br>     |
|  14|[0x80002078]<br>0x0000000002000000|- rs1 : x18<br> - rd : x9<br> - rs1_val == 16<br> - imm_val == 21<br>                                                                                                 |[0x8000045c]:slli s1, s2, 21<br> [0x80000460]:sd s1, 104(t2)<br>    |
|  15|[0x80002080]<br>0x0000000000800000|- rs1 : x16<br> - rd : x18<br> - rs1_val == 32<br>                                                                                                                    |[0x80000468]:slli s2, a6, 18<br> [0x8000046c]:sd s2, 112(t2)<br>    |
|  16|[0x80002088]<br>0x0000000000000400|- rs1 : x21<br> - rd : x16<br> - rs1_val == 64<br> - imm_val == 4<br>                                                                                                 |[0x80000474]:slli a6, s5, 4<br> [0x80000478]:sd a6, 120(t2)<br>     |
|  17|[0x80002090]<br>0x0000000000000000|- rs1 : x4<br> - rd : x8<br> - rs1_val == 128<br>                                                                                                                     |[0x80000480]:slli fp, tp, 27<br> [0x80000484]:sd fp, 128(t2)<br>    |
|  18|[0x80002098]<br>0x0000000008000000|- rs1 : x5<br> - rd : x24<br> - rs1_val == 256<br>                                                                                                                    |[0x8000048c]:slli s8, t0, 19<br> [0x80000490]:sd s8, 136(t2)<br>    |
|  19|[0x800020a0]<br>0x0000000000000000|- rs1 : x15<br> - rd : x10<br> - rs1_val == 512<br> - imm_val == 23<br>                                                                                               |[0x80000498]:slli a0, a5, 23<br> [0x8000049c]:sd a0, 144(t2)<br>    |
|  20|[0x800020a8]<br>0x0000000000000000|- rs1 : x23<br> - rd : x31<br> - rs1_val == 1024<br> - imm_val == 29<br>                                                                                              |[0x800004a4]:slli t6, s7, 29<br> [0x800004a8]:sd t6, 152(t2)<br>    |
|  21|[0x800020b0]<br>0x0000000020000000|- rs1 : x8<br> - rd : x2<br> - rs1_val == 2048<br>                                                                                                                    |[0x800004b4]:slli sp, fp, 18<br> [0x800004b8]:sd sp, 160(t2)<br>    |
|  22|[0x800020b8]<br>0x0000000000002000|- rs1 : x12<br> - rd : x21<br> - rs1_val == 4096<br> - imm_val == 1<br>                                                                                               |[0x800004c0]:slli s5, a2, 1<br> [0x800004c4]:sd s5, 168(t2)<br>     |
|  23|[0x800020c0]<br>0x0000000000000000|- rs1 : x1<br> - rd : x0<br> - rs1_val == 8192<br> - imm_val == 2<br>                                                                                                 |[0x800004cc]:slli zero, ra, 2<br> [0x800004d0]:sd zero, 176(t2)<br> |
|  24|[0x800020c8]<br>0x0000000000200000|- rs1 : x25<br> - rd : x5<br> - rs1_val == 16384<br>                                                                                                                  |[0x800004e0]:slli t0, s9, 7<br> [0x800004e4]:sd t0, 0(gp)<br>       |
|  25|[0x800020d0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x1<br>                                                                                                                                          |[0x800004f0]:slli ra, zero, 9<br> [0x800004f4]:sd ra, 8(gp)<br>     |
|  26|[0x800020d8]<br>0x0000000000800000|- rs1 : x22<br> - rd : x26<br> - rs1_val == 65536<br>                                                                                                                 |[0x800004fc]:slli s10, s6, 7<br> [0x80000500]:sd s10, 16(gp)<br>    |
|  27|[0x800020e0]<br>0x0000000000020000|- rs1 : x26<br> - rd : x7<br> - rs1_val == 131072<br>                                                                                                                 |[0x80000508]:slli t2, s10, 0<br> [0x8000050c]:sd t2, 24(gp)<br>     |
|  28|[0x800020e8]<br>0x0000000002000000|- rs1 : x20<br> - rd : x11<br> - rs1_val == 262144<br>                                                                                                                |[0x80000514]:slli a1, s4, 7<br> [0x80000518]:sd a1, 32(gp)<br>      |
|  29|[0x800020f0]<br>0x0000000000000000|- rs1 : x27<br> - rd : x30<br> - rs1_val == 524288<br>                                                                                                                |[0x80000520]:slli t5, s11, 19<br> [0x80000524]:sd t5, 40(gp)<br>    |
|  30|[0x800020f8]<br>0x0000000000000000|- rs1 : x30<br> - rd : x15<br> - rs1_val == 1048576<br>                                                                                                               |[0x8000052c]:slli a5, t5, 14<br> [0x80000530]:sd a5, 48(gp)<br>     |
|  31|[0x80002100]<br>0x0000000000000000|- rs1 : x2<br> - rd : x13<br> - rs1_val == 2097152<br>                                                                                                                |[0x80000538]:slli a3, sp, 11<br> [0x8000053c]:sd a3, 56(gp)<br>     |
|  32|[0x80002108]<br>0x0000000000000000|- rs1 : x7<br> - rd : x6<br> - rs1_val == 4194304<br>                                                                                                                 |[0x80000544]:slli t1, t2, 14<br> [0x80000548]:sd t1, 64(gp)<br>     |
|  33|[0x80002110]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                                                                                              |[0x80000550]:slli a1, a0, 29<br> [0x80000554]:sd a1, 72(gp)<br>     |
|  34|[0x80002118]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                                                                                             |[0x8000055c]:slli a1, a0, 17<br> [0x80000560]:sd a1, 80(gp)<br>     |
|  35|[0x80002120]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                                             |[0x80000568]:slli a1, a0, 31<br> [0x8000056c]:sd a1, 88(gp)<br>     |
|  36|[0x80002128]<br>0x0000000000000000|- rs1_val == 67108864<br>                                                                                                                                             |[0x80000574]:slli a1, a0, 13<br> [0x80000578]:sd a1, 96(gp)<br>     |
|  37|[0x80002130]<br>0x0000000008000000|- rs1_val == 134217728<br>                                                                                                                                            |[0x80000580]:slli a1, a0, 0<br> [0x80000584]:sd a1, 104(gp)<br>     |
|  38|[0x80002138]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                                                                                                            |[0x8000058c]:slli a1, a0, 13<br> [0x80000590]:sd a1, 112(gp)<br>    |
|  39|[0x80002140]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                                            |[0x80000598]:slli a1, a0, 5<br> [0x8000059c]:sd a1, 120(gp)<br>     |
|  40|[0x80002148]<br>0x0000000000000000|- rs1_val == 1073741824<br> - imm_val == 15<br>                                                                                                                       |[0x800005a4]:slli a1, a0, 15<br> [0x800005a8]:sd a1, 128(gp)<br>    |
|  41|[0x80002150]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                                           |[0x800005b4]:slli a1, a0, 9<br> [0x800005b8]:sd a1, 136(gp)<br>     |
|  42|[0x80002158]<br>0x0000000000000000|- rs1_val == 4294967296<br> - imm_val == 30<br>                                                                                                                       |[0x800005c4]:slli a1, a0, 30<br> [0x800005c8]:sd a1, 144(gp)<br>    |
|  43|[0x80002160]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                           |[0x800005d4]:slli a1, a0, 27<br> [0x800005d8]:sd a1, 152(gp)<br>    |
|  44|[0x80002168]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                          |[0x800005e4]:slli a1, a0, 14<br> [0x800005e8]:sd a1, 160(gp)<br>    |
|  45|[0x80002170]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                          |[0x800005f4]:slli a1, a0, 2<br> [0x800005f8]:sd a1, 168(gp)<br>     |
|  46|[0x80002178]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                          |[0x80000604]:slli a1, a0, 21<br> [0x80000608]:sd a1, 176(gp)<br>    |
|  47|[0x80002180]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                         |[0x80000614]:slli a1, a0, 1<br> [0x80000618]:sd a1, 184(gp)<br>     |
|  48|[0x80002188]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                         |[0x80000624]:slli a1, a0, 12<br> [0x80000628]:sd a1, 192(gp)<br>    |
|  49|[0x80002190]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                        |[0x80000634]:slli a1, a0, 19<br> [0x80000638]:sd a1, 200(gp)<br>    |
|  50|[0x80002198]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                        |[0x80000644]:slli a1, a0, 10<br> [0x80000648]:sd a1, 208(gp)<br>    |
|  51|[0x800021a0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                        |[0x80000654]:slli a1, a0, 6<br> [0x80000658]:sd a1, 216(gp)<br>     |
|  52|[0x800021a8]<br>0x0000000000000000|- rs1_val == 8796093022208<br> - imm_val == 8<br>                                                                                                                     |[0x80000664]:slli a1, a0, 8<br> [0x80000668]:sd a1, 224(gp)<br>     |
|  53|[0x800021b0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                       |[0x80000674]:slli a1, a0, 1<br> [0x80000678]:sd a1, 232(gp)<br>     |
|  54|[0x800021b8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                       |[0x80000684]:slli a1, a0, 12<br> [0x80000688]:sd a1, 240(gp)<br>    |
|  55|[0x800021c0]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                       |[0x80000694]:slli a1, a0, 21<br> [0x80000698]:sd a1, 248(gp)<br>    |
|  56|[0x800021c8]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                      |[0x800006a4]:slli a1, a0, 11<br> [0x800006a8]:sd a1, 256(gp)<br>    |
|  57|[0x800021d0]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                      |[0x800006b4]:slli a1, a0, 12<br> [0x800006b8]:sd a1, 264(gp)<br>    |
|  58|[0x800021d8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                     |[0x800006c4]:slli a1, a0, 9<br> [0x800006c8]:sd a1, 272(gp)<br>     |
|  59|[0x800021e0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                     |[0x800006d4]:slli a1, a0, 12<br> [0x800006d8]:sd a1, 280(gp)<br>    |
|  60|[0x800021e8]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                     |[0x800006e4]:slli a1, a0, 10<br> [0x800006e8]:sd a1, 288(gp)<br>    |
|  61|[0x800021f0]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                     |[0x800006f4]:slli a1, a0, 4<br> [0x800006f8]:sd a1, 296(gp)<br>     |
|  62|[0x800021f8]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                    |[0x80000704]:slli a1, a0, 15<br> [0x80000708]:sd a1, 304(gp)<br>    |
|  63|[0x80002200]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                    |[0x80000714]:slli a1, a0, 0<br> [0x80000718]:sd a1, 312(gp)<br>     |
|  64|[0x80002208]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                    |[0x80000724]:slli a1, a0, 8<br> [0x80000728]:sd a1, 320(gp)<br>     |
|  65|[0x80002210]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                   |[0x80000734]:slli a1, a0, 9<br> [0x80000738]:sd a1, 328(gp)<br>     |
|  66|[0x80002218]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                   |[0x80000744]:slli a1, a0, 5<br> [0x80000748]:sd a1, 336(gp)<br>     |
|  67|[0x80002220]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                   |[0x80000754]:slli a1, a0, 0<br> [0x80000758]:sd a1, 344(gp)<br>     |
|  68|[0x80002228]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                  |[0x80000764]:slli a1, a0, 12<br> [0x80000768]:sd a1, 352(gp)<br>    |
|  69|[0x80002230]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br> - imm_val == 16<br>                                                                                                              |[0x80000774]:slli a1, a0, 16<br> [0x80000778]:sd a1, 360(gp)<br>    |
|  70|[0x80002238]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                  |[0x80000784]:slli a1, a0, 21<br> [0x80000788]:sd a1, 368(gp)<br>    |
|  71|[0x80002240]<br>0x0000000000000000|- rs1_val == -2<br>                                                                                                                                                   |[0x80000790]:slli a1, a0, 31<br> [0x80000794]:sd a1, 376(gp)<br>    |
|  72|[0x80002248]<br>0xFFFFFFFFFFA00000|- rs1_val == -3<br>                                                                                                                                                   |[0x8000079c]:slli a1, a0, 21<br> [0x800007a0]:sd a1, 384(gp)<br>    |
|  73|[0x80002250]<br>0xFFFFFFFFFFFFFB00|- rs1_val == -5<br>                                                                                                                                                   |[0x800007a8]:slli a1, a0, 8<br> [0x800007ac]:sd a1, 392(gp)<br>     |
|  74|[0x80002258]<br>0xFFFFFFFFFFFFFB80|- rs1_val == -9<br>                                                                                                                                                   |[0x800007b4]:slli a1, a0, 7<br> [0x800007b8]:sd a1, 400(gp)<br>     |
|  75|[0x80002260]<br>0xFFFFFFFFFFFBC000|- rs1_val == -17<br>                                                                                                                                                  |[0x800007c0]:slli a1, a0, 14<br> [0x800007c4]:sd a1, 408(gp)<br>    |
|  76|[0x80002268]<br>0xFFFFFFFFFBE00000|- rs1_val == -33<br>                                                                                                                                                  |[0x800007cc]:slli a1, a0, 21<br> [0x800007d0]:sd a1, 416(gp)<br>    |
|  77|[0x80002270]<br>0xFFFFFFFFFFFFFDF8|- rs1_val == -65<br>                                                                                                                                                  |[0x800007d8]:slli a1, a0, 3<br> [0x800007dc]:sd a1, 424(gp)<br>     |
|  78|[0x80002278]<br>0xFFFFFFFFFFEFE000|- rs1_val == -129<br>                                                                                                                                                 |[0x800007e4]:slli a1, a0, 13<br> [0x800007e8]:sd a1, 432(gp)<br>    |
|  79|[0x80002280]<br>0xFFFFFFFFC0000000|- rs1_val == -257<br>                                                                                                                                                 |[0x800007f0]:slli a1, a0, 30<br> [0x800007f4]:sd a1, 440(gp)<br>    |
|  80|[0x80002288]<br>0xFFFFFFFFFFF7FC00|- rs1_val == -513<br>                                                                                                                                                 |[0x800007fc]:slli a1, a0, 10<br> [0x80000800]:sd a1, 448(gp)<br>    |
|  81|[0x80002290]<br>0x000000007FE00000|- rs1_val == -1025<br>                                                                                                                                                |[0x80000808]:slli a1, a0, 21<br> [0x8000080c]:sd a1, 456(gp)<br>    |
|  82|[0x80002298]<br>0xFFFFFFFFE0000000|- rs1_val == -2049<br>                                                                                                                                                |[0x80000818]:slli a1, a0, 29<br> [0x8000081c]:sd a1, 464(gp)<br>    |
|  83|[0x800022a0]<br>0xFFFFFFFFFFF7FF80|- rs1_val == -4097<br>                                                                                                                                                |[0x80000828]:slli a1, a0, 7<br> [0x8000082c]:sd a1, 472(gp)<br>     |
|  84|[0x800022a8]<br>0xFFFFFFFF80000000|- rs1_val == -16385<br>                                                                                                                                               |[0x80000838]:slli a1, a0, 31<br> [0x8000083c]:sd a1, 480(gp)<br>    |
|  85|[0x800022b0]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -32769<br>                                                                                                                                               |[0x80000848]:slli a1, a0, 0<br> [0x8000084c]:sd a1, 488(gp)<br>     |
|  86|[0x800022b8]<br>0xFFFFFFFFFFFC0000|- rs1_val == -65537<br>                                                                                                                                               |[0x80000858]:slli a1, a0, 18<br> [0x8000085c]:sd a1, 496(gp)<br>    |
|  87|[0x800022c0]<br>0xFFFFFFFFFFDFFFF0|- rs1_val == -131073<br>                                                                                                                                              |[0x80000868]:slli a1, a0, 4<br> [0x8000086c]:sd a1, 504(gp)<br>     |
|  88|[0x800022c8]<br>0xFFFFFFFFFEFFFFC0|- rs1_val == -262145<br>                                                                                                                                              |[0x80000878]:slli a1, a0, 6<br> [0x8000087c]:sd a1, 512(gp)<br>     |
|  89|[0x800022d0]<br>0xFFFFFFFFFFFF8000|- rs1_val == -9007199254740993<br>                                                                                                                                    |[0x8000088c]:slli a1, a0, 15<br> [0x80000890]:sd a1, 520(gp)<br>    |
|  90|[0x800022d8]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -18014398509481985<br>                                                                                                                                   |[0x800008a0]:slli a1, a0, 6<br> [0x800008a4]:sd a1, 528(gp)<br>     |
|  91|[0x800022e0]<br>0xFFFFFFFFFFFC0000|- rs1_val == -36028797018963969<br>                                                                                                                                   |[0x800008b4]:slli a1, a0, 18<br> [0x800008b8]:sd a1, 536(gp)<br>    |
|  92|[0x800022e8]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == -72057594037927937<br>                                                                                                                                   |[0x800008c8]:slli a1, a0, 5<br> [0x800008cc]:sd a1, 544(gp)<br>     |
|  93|[0x800022f0]<br>0xFFFFFFFFFFF80000|- rs1_val == -144115188075855873<br>                                                                                                                                  |[0x800008dc]:slli a1, a0, 19<br> [0x800008e0]:sd a1, 552(gp)<br>    |
|  94|[0x800022f8]<br>0xFFFFFFFFFFFE0000|- rs1_val == -288230376151711745<br>                                                                                                                                  |[0x800008f0]:slli a1, a0, 17<br> [0x800008f4]:sd a1, 560(gp)<br>    |
|  95|[0x80002300]<br>0xFFFFFFFFFFFFE000|- rs1_val == -576460752303423489<br>                                                                                                                                  |[0x80000904]:slli a1, a0, 13<br> [0x80000908]:sd a1, 568(gp)<br>    |
|  96|[0x80002308]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == -1152921504606846977<br>                                                                                                                                 |[0x80000918]:slli a1, a0, 3<br> [0x8000091c]:sd a1, 576(gp)<br>     |
|  97|[0x80002310]<br>0xFFFFFFFFF8000000|- rs1_val == -2305843009213693953<br>                                                                                                                                 |[0x8000092c]:slli a1, a0, 27<br> [0x80000930]:sd a1, 584(gp)<br>    |
|  98|[0x80002318]<br>0xFFFFFFFFFFFF0000|- rs1_val == -4611686018427387905<br>                                                                                                                                 |[0x80000940]:slli a1, a0, 16<br> [0x80000944]:sd a1, 592(gp)<br>    |
|  99|[0x80002320]<br>0x0000000055555554|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                               |[0x80000968]:slli a1, a0, 2<br> [0x8000096c]:sd a1, 600(gp)<br>     |
| 100|[0x80002328]<br>0x0000000055500000|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                                             |[0x80000990]:slli a1, a0, 19<br> [0x80000994]:sd a1, 608(gp)<br>    |
| 101|[0x80002330]<br>0x00000000000000C0|- rs1_val==3<br>                                                                                                                                                      |[0x8000099c]:slli a1, a0, 6<br> [0x800009a0]:sd a1, 616(gp)<br>     |
| 102|[0x80002338]<br>0x0000000000014000|- rs1_val==5<br>                                                                                                                                                      |[0x800009a8]:slli a1, a0, 14<br> [0x800009ac]:sd a1, 624(gp)<br>    |
| 103|[0x80002340]<br>0xFFFFFFFFCCCCCCCC|- rs1_val==3689348814741910323<br>                                                                                                                                    |[0x800009d0]:slli a1, a0, 2<br> [0x800009d4]:sd a1, 632(gp)<br>     |
| 104|[0x80002348]<br>0x0000000066666000|- rs1_val==7378697629483820646<br>                                                                                                                                    |[0x800009f8]:slli a1, a0, 12<br> [0x800009fc]:sd a1, 640(gp)<br>    |
| 105|[0x80002350]<br>0xFFFFFFFFD8666800|- rs1_val==-3037000499<br>                                                                                                                                            |[0x80000a10]:slli a1, a0, 11<br> [0x80000a14]:sd a1, 648(gp)<br>    |
| 106|[0x80002358]<br>0x000000003CCCC000|- rs1_val==3037000499<br>                                                                                                                                             |[0x80000a28]:slli a1, a0, 14<br> [0x80000a2c]:sd a1, 656(gp)<br>    |
| 107|[0x80002360]<br>0xFFFFFFFFAAAAA000|- rs1_val==6148914691236517204<br>                                                                                                                                    |[0x80000a50]:slli a1, a0, 11<br> [0x80000a54]:sd a1, 664(gp)<br>    |
| 108|[0x80002368]<br>0x0000000033333320|- rs1_val==3689348814741910322<br>                                                                                                                                    |[0x80000a78]:slli a1, a0, 4<br> [0x80000a7c]:sd a1, 672(gp)<br>     |
| 109|[0x80002370]<br>0x0000000033333328|- rs1_val==7378697629483820645<br>                                                                                                                                    |[0x80000aa0]:slli a1, a0, 3<br> [0x80000aa4]:sd a1, 680(gp)<br>     |
| 110|[0x80002378]<br>0x0000000079990000|- rs1_val==3037000498<br>                                                                                                                                             |[0x80000ab8]:slli a1, a0, 15<br> [0x80000abc]:sd a1, 688(gp)<br>    |
| 111|[0x80002380]<br>0xFFFFFFFFAAAAAC00|- rs1_val==6148914691236517206<br>                                                                                                                                    |[0x80000ae0]:slli a1, a0, 9<br> [0x80000ae4]:sd a1, 696(gp)<br>     |
| 112|[0x80002388]<br>0x0000000055560000|- rs1_val==-6148914691236517205<br>                                                                                                                                   |[0x80000b08]:slli a1, a0, 17<br> [0x80000b0c]:sd a1, 704(gp)<br>    |
| 113|[0x80002390]<br>0x0000000000180000|- rs1_val==6<br>                                                                                                                                                      |[0x80000b14]:slli a1, a0, 18<br> [0x80000b18]:sd a1, 712(gp)<br>    |
| 114|[0x80002398]<br>0x0000000066800000|- rs1_val==3689348814741910324<br>                                                                                                                                    |[0x80000b3c]:slli a1, a0, 21<br> [0x80000b40]:sd a1, 720(gp)<br>    |
| 115|[0x800023a0]<br>0xFFFFFFFFCCCCCE00|- rs1_val==7378697629483820647<br>                                                                                                                                    |[0x80000b64]:slli a1, a0, 9<br> [0x80000b68]:sd a1, 728(gp)<br>     |
| 116|[0x800023a8]<br>0x0000000067000000|- rs1_val==-3037000498<br>                                                                                                                                            |[0x80000b7c]:slli a1, a0, 23<br> [0x80000b80]:sd a1, 736(gp)<br>    |
| 117|[0x800023b0]<br>0x0000000013CCD000|- rs1_val==3037000500<br>                                                                                                                                             |[0x80000b94]:slli a1, a0, 10<br> [0x80000b98]:sd a1, 744(gp)<br>    |
| 118|[0x800023b8]<br>0xFFFFFFFFC0000000|- rs1_val == -524289<br>                                                                                                                                              |[0x80000ba4]:slli a1, a0, 30<br> [0x80000ba8]:sd a1, 752(gp)<br>    |
| 119|[0x800023c0]<br>0xFFFFFFFFF7FFFF80|- rs1_val == -1048577<br>                                                                                                                                             |[0x80000bb4]:slli a1, a0, 7<br> [0x80000bb8]:sd a1, 760(gp)<br>     |
| 120|[0x800023c8]<br>0xFFFFFFFFFFFFE000|- rs1_val == -2097153<br>                                                                                                                                             |[0x80000bc4]:slli a1, a0, 13<br> [0x80000bc8]:sd a1, 768(gp)<br>    |
| 121|[0x800023d0]<br>0xFFFFFFFFFFE00000|- rs1_val == -4194305<br>                                                                                                                                             |[0x80000bd4]:slli a1, a0, 21<br> [0x80000bd8]:sd a1, 776(gp)<br>    |
| 122|[0x800023d8]<br>0xFFFFFFFFFBFFFFF8|- rs1_val == -8388609<br>                                                                                                                                             |[0x80000be4]:slli a1, a0, 3<br> [0x80000be8]:sd a1, 784(gp)<br>     |
| 123|[0x800023e0]<br>0xFFFFFFFFFBFFFFFC|- rs1_val == -16777217<br>                                                                                                                                            |[0x80000bf4]:slli a1, a0, 2<br> [0x80000bf8]:sd a1, 792(gp)<br>     |
| 124|[0x800023e8]<br>0xFFFFFFFFFFFFC000|- rs1_val == -67108865<br>                                                                                                                                            |[0x80000c04]:slli a1, a0, 14<br> [0x80000c08]:sd a1, 800(gp)<br>    |
| 125|[0x800023f0]<br>0xFFFFFFFFBFFFFFF8|- rs1_val == -134217729<br>                                                                                                                                           |[0x80000c14]:slli a1, a0, 3<br> [0x80000c18]:sd a1, 808(gp)<br>     |
| 126|[0x800023f8]<br>0xFFFFFFFFFFFF8000|- rs1_val == -268435457<br>                                                                                                                                           |[0x80000c24]:slli a1, a0, 15<br> [0x80000c28]:sd a1, 816(gp)<br>    |
| 127|[0x80002400]<br>0xFFFFFFFFFFFFF800|- rs1_val == -536870913<br>                                                                                                                                           |[0x80000c34]:slli a1, a0, 11<br> [0x80000c38]:sd a1, 824(gp)<br>    |
| 128|[0x80002408]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == -1073741825<br>                                                                                                                                          |[0x80000c44]:slli a1, a0, 5<br> [0x80000c48]:sd a1, 832(gp)<br>     |
| 129|[0x80002410]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -2147483649<br>                                                                                                                                          |[0x80000c58]:slli a1, a0, 10<br> [0x80000c5c]:sd a1, 840(gp)<br>    |
| 130|[0x80002418]<br>0xFFFFFFFFFFE00000|- rs1_val == -4294967297<br>                                                                                                                                          |[0x80000c6c]:slli a1, a0, 21<br> [0x80000c70]:sd a1, 848(gp)<br>    |
| 131|[0x80002420]<br>0xFFFFFFFF80000000|- rs1_val == -8589934593<br>                                                                                                                                          |[0x80000c80]:slli a1, a0, 31<br> [0x80000c84]:sd a1, 856(gp)<br>    |
| 132|[0x80002428]<br>0xFFFFFFFFF8000000|- rs1_val == -17179869185<br>                                                                                                                                         |[0x80000c94]:slli a1, a0, 27<br> [0x80000c98]:sd a1, 864(gp)<br>    |
| 133|[0x80002430]<br>0xFFFFFFFFE0000000|- rs1_val == -34359738369<br>                                                                                                                                         |[0x80000ca8]:slli a1, a0, 29<br> [0x80000cac]:sd a1, 872(gp)<br>    |
| 134|[0x80002438]<br>0xFFFFFFFF80000000|- rs1_val == -68719476737<br>                                                                                                                                         |[0x80000cbc]:slli a1, a0, 31<br> [0x80000cc0]:sd a1, 880(gp)<br>    |
| 135|[0x80002440]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                        |[0x80000cd0]:slli a1, a0, 0<br> [0x80000cd4]:sd a1, 888(gp)<br>     |
| 136|[0x80002448]<br>0xFFFFFFFFFFFF0000|- rs1_val == -274877906945<br>                                                                                                                                        |[0x80000ce4]:slli a1, a0, 16<br> [0x80000ce8]:sd a1, 896(gp)<br>    |
| 137|[0x80002450]<br>0xFFFFFFFFFFF80000|- rs1_val == -549755813889<br>                                                                                                                                        |[0x80000cf8]:slli a1, a0, 19<br> [0x80000cfc]:sd a1, 904(gp)<br>    |
| 138|[0x80002458]<br>0xFFFFFFFFC0000000|- rs1_val == -1099511627777<br>                                                                                                                                       |[0x80000d0c]:slli a1, a0, 30<br> [0x80000d10]:sd a1, 912(gp)<br>    |
| 139|[0x80002460]<br>0xFFFFFFFFFFFFF800|- rs1_val == -2199023255553<br>                                                                                                                                       |[0x80000d20]:slli a1, a0, 11<br> [0x80000d24]:sd a1, 920(gp)<br>    |
| 140|[0x80002468]<br>0xFFFFFFFFFFFFFE00|- rs1_val == -4398046511105<br>                                                                                                                                       |[0x80000d34]:slli a1, a0, 9<br> [0x80000d38]:sd a1, 928(gp)<br>     |
| 141|[0x80002470]<br>0xFFFFFFFFFFFFC000|- rs1_val == -8796093022209<br>                                                                                                                                       |[0x80000d48]:slli a1, a0, 14<br> [0x80000d4c]:sd a1, 936(gp)<br>    |
| 142|[0x80002478]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -17592186044417<br>                                                                                                                                      |[0x80000d5c]:slli a1, a0, 6<br> [0x80000d60]:sd a1, 944(gp)<br>     |
| 143|[0x80002480]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -70368744177665<br>                                                                                                                                      |[0x80000d70]:slli a1, a0, 2<br> [0x80000d74]:sd a1, 952(gp)<br>     |
| 144|[0x80002488]<br>0xFFFFFFFFE0000000|- rs1_val == -140737488355329<br>                                                                                                                                     |[0x80000d84]:slli a1, a0, 29<br> [0x80000d88]:sd a1, 960(gp)<br>    |
| 145|[0x80002490]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == -281474976710657<br>                                                                                                                                     |[0x80000d98]:slli a1, a0, 4<br> [0x80000d9c]:sd a1, 968(gp)<br>     |
| 146|[0x80002498]<br>0xFFFFFFFFFFFFF800|- rs1_val == -562949953421313<br>                                                                                                                                     |[0x80000dac]:slli a1, a0, 11<br> [0x80000db0]:sd a1, 976(gp)<br>    |
| 147|[0x800024a0]<br>0xFFFFFFFFFFFFC000|- rs1_val == -1125899906842625<br>                                                                                                                                    |[0x80000dc0]:slli a1, a0, 14<br> [0x80000dc4]:sd a1, 984(gp)<br>    |
| 148|[0x800024a8]<br>0xFFFFFFFFFFFC0000|- rs1_val == -2251799813685249<br>                                                                                                                                    |[0x80000dd4]:slli a1, a0, 18<br> [0x80000dd8]:sd a1, 992(gp)<br>    |
| 149|[0x800024b0]<br>0xFFFFFFFFFFFE0000|- rs1_val == -4503599627370497<br>                                                                                                                                    |[0x80000de8]:slli a1, a0, 17<br> [0x80000dec]:sd a1, 1000(gp)<br>   |
| 150|[0x800024c0]<br>0x0000000001000000|- rs1_val == 32768<br>                                                                                                                                                |[0x80000e00]:slli a1, a0, 9<br> [0x80000e04]:sd a1, 1016(gp)<br>    |
