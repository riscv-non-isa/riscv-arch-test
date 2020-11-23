
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
| COV_LABELS                | srliw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srliw-01.S/srliw-01.S    |
| Total Number of coverpoints| 242     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 151      |
| STAT1                     | 149      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000df0]:srli a1, a0, 23
      [0x80000df4]:sd a1, 992(ra)
 -- Signature Address: 0x800024b8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srliw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0 and imm_val >= 0 and imm_val < 32
      - rs1_val==0
      - imm_val == 23




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dfc]:srli a1, a0, 30
      [0x80000e00]:sd a1, 1000(ra)
 -- Signature Address: 0x800024c0 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srliw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < 32
      - rs1_val == 1048576
      - imm_val == 30






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

|s.no|            signature             |                                                                            coverpoints                                                                            |                                code                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002010]<br>0x0000000000000003|- opcode : srliw<br> - rs1 : x27<br> - rd : x27<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == -32769<br> - imm_val == 30<br> |[0x800003a0]:srli s11, s11, 30<br> [0x800003a4]:sd s11, 0(a3)<br>   |
|   2|[0x80002018]<br>0x0000000000000000|- rs1 : x8<br> - rd : x16<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == 576460752303423488<br>                               |[0x800003b0]:srli a6, fp, 17<br> [0x800003b4]:sd a6, 8(a3)<br>      |
|   3|[0x80002020]<br>0x000000004AFB0CCD|- rs1 : x5<br> - rd : x6<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val==-3037000499<br>                                                                         |[0x800003c8]:srli t1, t0, 0<br> [0x800003cc]:sd t1, 16(a3)<br>      |
|   4|[0x80002028]<br>0x0000000000000007|- rs1 : x2<br> - rd : x9<br> - rs1_val > 0 and imm_val == 0<br>                                                                                                    |[0x800003d4]:srli s1, sp, 0<br> [0x800003d8]:sd s1, 24(a3)<br>      |
|   5|[0x80002030]<br>0x0000000000000001|- rs1 : x6<br> - rd : x23<br> - rs1_val < 0 and imm_val == 31<br> - rs1_val == -1125899906842625<br>                                                               |[0x800003e8]:srli s7, t1, 31<br> [0x800003ec]:sd s7, 32(a3)<br>     |
|   6|[0x80002038]<br>0x0000000000000000|- rs1 : x19<br> - rd : x3<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == 34359738368<br>                                                                     |[0x800003f8]:srli gp, s3, 31<br> [0x800003fc]:sd gp, 40(a3)<br>     |
|   7|[0x80002040]<br>0x0000000000000000|- rs1 : x7<br> - rd : x24<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br> - rs1_val==5<br>                                                           |[0x80000404]:srli s8, t2, 5<br> [0x80000408]:sd s8, 48(a3)<br>      |
|   8|[0x80002048]<br>0x0000000000000000|- rs1 : x17<br> - rd : x14<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br>                             |[0x80000414]:srli a4, a7, 19<br> [0x80000418]:sd a4, 56(a3)<br>     |
|   9|[0x80002050]<br>0x0000000000000000|- rs1 : x0<br> - rd : x4<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br> - rs1_val==0<br> - imm_val == 23<br>                                             |[0x80000420]:srli tp, zero, 23<br> [0x80000424]:sd tp, 64(a3)<br>   |
|  10|[0x80002058]<br>0x000000000FFFFFFF|- rs1 : x3<br> - rd : x21<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br> - imm_val == 4<br>           |[0x80000434]:srli s5, gp, 4<br> [0x80000438]:sd s5, 72(a3)<br>      |
|  11|[0x80002060]<br>0x0000000000000000|- rs1 : x28<br> - rd : x18<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br> - imm_val == 8<br>                                          |[0x80000440]:srli s2, t3, 8<br> [0x80000444]:sd s2, 80(a3)<br>      |
|  12|[0x80002068]<br>0x0000000000000000|- rs1 : x15<br> - rd : x31<br> - rs1_val == 2<br> - rs1_val==2<br> - imm_val == 21<br>                                                                             |[0x8000044c]:srli t6, a5, 21<br> [0x80000450]:sd t6, 88(a3)<br>     |
|  13|[0x80002070]<br>0x0000000000000000|- rs1 : x18<br> - rd : x17<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                 |[0x80000458]:srli a7, s2, 6<br> [0x8000045c]:sd a7, 96(a3)<br>      |
|  14|[0x80002078]<br>0x0000000000000000|- rs1 : x20<br> - rd : x10<br> - rs1_val == 8<br>                                                                                                                  |[0x80000464]:srli a0, s4, 7<br> [0x80000468]:sd a0, 104(a3)<br>     |
|  15|[0x80002080]<br>0x0000000000000010|- rs1 : x21<br> - rd : x7<br> - rs1_val == 16<br>                                                                                                                  |[0x80000470]:srli t2, s5, 0<br> [0x80000474]:sd t2, 112(a3)<br>     |
|  16|[0x80002088]<br>0x0000000000000000|- rs1 : x9<br> - rd : x5<br> - rs1_val == 32<br>                                                                                                                   |[0x8000047c]:srli t0, s1, 23<br> [0x80000480]:sd t0, 120(a3)<br>    |
|  17|[0x80002090]<br>0x0000000000000000|- rs1 : x1<br> - rd : x15<br> - rs1_val == 64<br>                                                                                                                  |[0x80000488]:srli a5, ra, 9<br> [0x8000048c]:sd a5, 128(a3)<br>     |
|  18|[0x80002098]<br>0x0000000000000000|- rs1 : x23<br> - rd : x30<br> - rs1_val == 128<br> - imm_val == 29<br>                                                                                            |[0x80000494]:srli t5, s7, 29<br> [0x80000498]:sd t5, 136(a3)<br>    |
|  19|[0x800020a0]<br>0x0000000000000100|- rs1 : x25<br> - rd : x2<br> - rs1_val == 256<br>                                                                                                                 |[0x800004a0]:srli sp, s9, 0<br> [0x800004a4]:sd sp, 144(a3)<br>     |
|  20|[0x800020a8]<br>0x0000000000000004|- rs1 : x30<br> - rd : x12<br> - rs1_val == 512<br>                                                                                                                |[0x800004ac]:srli a2, t5, 7<br> [0x800004b0]:sd a2, 152(a3)<br>     |
|  21|[0x800020b0]<br>0x0000000000000000|- rs1 : x14<br> - rd : x19<br> - rs1_val == 1024<br>                                                                                                               |[0x800004b8]:srli s3, a4, 31<br> [0x800004bc]:sd s3, 160(a3)<br>    |
|  22|[0x800020b8]<br>0x0000000000000000|- rs1 : x10<br> - rd : x1<br> - rs1_val == 2048<br> - imm_val == 16<br>                                                                                            |[0x800004c8]:srli ra, a0, 16<br> [0x800004cc]:sd ra, 168(a3)<br>    |
|  23|[0x800020c0]<br>0x0000000000000040|- rs1 : x24<br> - rd : x28<br> - rs1_val == 4096<br>                                                                                                               |[0x800004d4]:srli t3, s8, 6<br> [0x800004d8]:sd t3, 176(a3)<br>     |
|  24|[0x800020c8]<br>0x0000000000000000|- rs1 : x22<br> - rd : x8<br> - rs1_val == 8192<br>                                                                                                                |[0x800004e0]:srli fp, s6, 14<br> [0x800004e4]:sd fp, 184(a3)<br>    |
|  25|[0x800020d0]<br>0x0000000000000008|- rs1 : x11<br> - rd : x29<br> - rs1_val == 16384<br>                                                                                                              |[0x800004ec]:srli t4, a1, 11<br> [0x800004f0]:sd t4, 192(a3)<br>    |
|  26|[0x800020d8]<br>0x0000000000004000|- rs1 : x12<br> - rd : x26<br> - rs1_val == 32768<br> - imm_val == 1<br>                                                                                           |[0x80000500]:srli s10, a2, 1<br> [0x80000504]:sd s10, 0(ra)<br>     |
|  27|[0x800020e0]<br>0x0000000000000100|- rs1 : x4<br> - rd : x11<br> - rs1_val == 65536<br>                                                                                                               |[0x8000050c]:srli a1, tp, 8<br> [0x80000510]:sd a1, 8(ra)<br>       |
|  28|[0x800020e8]<br>0x0000000000000020|- rs1 : x29<br> - rd : x13<br> - rs1_val == 131072<br>                                                                                                             |[0x80000518]:srli a3, t4, 12<br> [0x8000051c]:sd a3, 16(ra)<br>     |
|  29|[0x800020f0]<br>0x0000000000000000|- rs1 : x26<br> - rd : x25<br> - rs1_val == 262144<br>                                                                                                             |[0x80000524]:srli s9, s10, 29<br> [0x80000528]:sd s9, 24(ra)<br>    |
|  30|[0x800020f8]<br>0x0000000000000080|- rs1 : x13<br> - rd : x20<br> - rs1_val == 524288<br>                                                                                                             |[0x80000530]:srli s4, a3, 12<br> [0x80000534]:sd s4, 32(ra)<br>     |
|  31|[0x80002100]<br>0x0000000000000000|- rs1 : x31<br> - rd : x0<br> - rs1_val == 1048576<br>                                                                                                             |[0x8000053c]:srli zero, t6, 30<br> [0x80000540]:sd zero, 40(ra)<br> |
|  32|[0x80002108]<br>0x0000000000040000|- rs1 : x16<br> - rd : x22<br> - rs1_val == 2097152<br>                                                                                                            |[0x80000548]:srli s6, a6, 3<br> [0x8000054c]:sd s6, 48(ra)<br>      |
|  33|[0x80002110]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                                                                                           |[0x80000554]:srli a1, a0, 23<br> [0x80000558]:sd a1, 56(ra)<br>     |
|  34|[0x80002118]<br>0x0000000000400000|- rs1_val == 8388608<br>                                                                                                                                           |[0x80000560]:srli a1, a0, 1<br> [0x80000564]:sd a1, 64(ra)<br>      |
|  35|[0x80002120]<br>0x0000000000800000|- rs1_val == 16777216<br>                                                                                                                                          |[0x8000056c]:srli a1, a0, 1<br> [0x80000570]:sd a1, 72(ra)<br>      |
|  36|[0x80002128]<br>0x0000000000010000|- rs1_val == 33554432<br>                                                                                                                                          |[0x80000578]:srli a1, a0, 9<br> [0x8000057c]:sd a1, 80(ra)<br>      |
|  37|[0x80002130]<br>0x0000000001000000|- rs1_val == 67108864<br> - imm_val == 2<br>                                                                                                                       |[0x80000584]:srli a1, a0, 2<br> [0x80000588]:sd a1, 88(ra)<br>      |
|  38|[0x80002138]<br>0x0000000000010000|- rs1_val == 134217728<br>                                                                                                                                         |[0x80000590]:srli a1, a0, 11<br> [0x80000594]:sd a1, 96(ra)<br>     |
|  39|[0x80002140]<br>0x0000000000001000|- rs1_val == 268435456<br>                                                                                                                                         |[0x8000059c]:srli a1, a0, 16<br> [0x800005a0]:sd a1, 104(ra)<br>    |
|  40|[0x80002148]<br>0x0000000010000000|- rs1_val == 536870912<br>                                                                                                                                         |[0x800005a8]:srli a1, a0, 1<br> [0x800005ac]:sd a1, 112(ra)<br>     |
|  41|[0x80002150]<br>0x0000000000040000|- rs1_val == 1073741824<br>                                                                                                                                        |[0x800005b4]:srli a1, a0, 12<br> [0x800005b8]:sd a1, 120(ra)<br>    |
|  42|[0x80002158]<br>0x0000000000010000|- rs1_val == 2147483648<br> - imm_val == 15<br>                                                                                                                    |[0x800005c4]:srli a1, a0, 15<br> [0x800005c8]:sd a1, 128(ra)<br>    |
|  43|[0x80002160]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                        |[0x800005d4]:srli a1, a0, 0<br> [0x800005d8]:sd a1, 136(ra)<br>     |
|  44|[0x80002168]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                        |[0x800005e4]:srli a1, a0, 0<br> [0x800005e8]:sd a1, 144(ra)<br>     |
|  45|[0x80002170]<br>0x0000000000000000|- rs1_val == 17179869184<br> - imm_val == 10<br>                                                                                                                   |[0x800005f4]:srli a1, a0, 10<br> [0x800005f8]:sd a1, 152(ra)<br>    |
|  46|[0x80002178]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                       |[0x80000604]:srli a1, a0, 11<br> [0x80000608]:sd a1, 160(ra)<br>    |
|  47|[0x80002180]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                      |[0x80000614]:srli a1, a0, 15<br> [0x80000618]:sd a1, 168(ra)<br>    |
|  48|[0x80002188]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                      |[0x80000624]:srli a1, a0, 1<br> [0x80000628]:sd a1, 176(ra)<br>     |
|  49|[0x80002190]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                      |[0x80000634]:srli a1, a0, 30<br> [0x80000638]:sd a1, 184(ra)<br>    |
|  50|[0x80002198]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                     |[0x80000644]:srli a1, a0, 8<br> [0x80000648]:sd a1, 192(ra)<br>     |
|  51|[0x800021a0]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                     |[0x80000654]:srli a1, a0, 30<br> [0x80000658]:sd a1, 200(ra)<br>    |
|  52|[0x800021a8]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                     |[0x80000664]:srli a1, a0, 15<br> [0x80000668]:sd a1, 208(ra)<br>    |
|  53|[0x800021b0]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                                     |[0x80000674]:srli a1, a0, 7<br> [0x80000678]:sd a1, 216(ra)<br>     |
|  54|[0x800021b8]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                    |[0x80000684]:srli a1, a0, 12<br> [0x80000688]:sd a1, 224(ra)<br>    |
|  55|[0x800021c0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                    |[0x80000694]:srli a1, a0, 5<br> [0x80000698]:sd a1, 232(ra)<br>     |
|  56|[0x800021c8]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                    |[0x800006a4]:srli a1, a0, 15<br> [0x800006a8]:sd a1, 240(ra)<br>    |
|  57|[0x800021d0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                   |[0x800006b4]:srli a1, a0, 14<br> [0x800006b8]:sd a1, 248(ra)<br>    |
|  58|[0x800021d8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                   |[0x800006c4]:srli a1, a0, 10<br> [0x800006c8]:sd a1, 256(ra)<br>    |
|  59|[0x800021e0]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                   |[0x800006d4]:srli a1, a0, 8<br> [0x800006d8]:sd a1, 264(ra)<br>     |
|  60|[0x800021e8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                  |[0x800006e4]:srli a1, a0, 6<br> [0x800006e8]:sd a1, 272(ra)<br>     |
|  61|[0x800021f0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                  |[0x800006f4]:srli a1, a0, 0<br> [0x800006f8]:sd a1, 280(ra)<br>     |
|  62|[0x800021f8]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                  |[0x80000704]:srli a1, a0, 15<br> [0x80000708]:sd a1, 288(ra)<br>    |
|  63|[0x80002200]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                  |[0x80000714]:srli a1, a0, 29<br> [0x80000718]:sd a1, 296(ra)<br>    |
|  64|[0x80002208]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                 |[0x80000724]:srli a1, a0, 8<br> [0x80000728]:sd a1, 304(ra)<br>     |
|  65|[0x80002210]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                 |[0x80000734]:srli a1, a0, 0<br> [0x80000738]:sd a1, 312(ra)<br>     |
|  66|[0x80002218]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                 |[0x80000744]:srli a1, a0, 13<br> [0x80000748]:sd a1, 320(ra)<br>    |
|  67|[0x80002220]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                |[0x80000754]:srli a1, a0, 0<br> [0x80000758]:sd a1, 328(ra)<br>     |
|  68|[0x80002228]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                |[0x80000764]:srli a1, a0, 13<br> [0x80000768]:sd a1, 336(ra)<br>    |
|  69|[0x80002230]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                               |[0x80000774]:srli a1, a0, 12<br> [0x80000778]:sd a1, 344(ra)<br>    |
|  70|[0x80002238]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                               |[0x80000784]:srli a1, a0, 29<br> [0x80000788]:sd a1, 352(ra)<br>    |
|  71|[0x80002240]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                               |[0x80000794]:srli a1, a0, 10<br> [0x80000798]:sd a1, 360(ra)<br>    |
|  72|[0x80002248]<br>0x0000000000001FFF|- rs1_val == -2<br>                                                                                                                                                |[0x800007a0]:srli a1, a0, 19<br> [0x800007a4]:sd a1, 368(ra)<br>    |
|  73|[0x80002250]<br>0x0000000000000001|- rs1_val == -3<br>                                                                                                                                                |[0x800007ac]:srli a1, a0, 31<br> [0x800007b0]:sd a1, 376(ra)<br>    |
|  74|[0x80002258]<br>0x00000000003FFFFF|- rs1_val == -5<br>                                                                                                                                                |[0x800007b8]:srli a1, a0, 10<br> [0x800007bc]:sd a1, 384(ra)<br>    |
|  75|[0x80002260]<br>0x00000000000FFFFF|- rs1_val == -9<br>                                                                                                                                                |[0x800007c4]:srli a1, a0, 12<br> [0x800007c8]:sd a1, 392(ra)<br>    |
|  76|[0x80002268]<br>0x000000003FFFFFFB|- rs1_val == -17<br>                                                                                                                                               |[0x800007d0]:srli a1, a0, 2<br> [0x800007d4]:sd a1, 400(ra)<br>     |
|  77|[0x80002270]<br>0x0000000000003FFF|- rs1_val == -33<br>                                                                                                                                               |[0x800007dc]:srli a1, a0, 18<br> [0x800007e0]:sd a1, 408(ra)<br>    |
|  78|[0x80002278]<br>0x0000000000000003|- rs1_val == -65<br>                                                                                                                                               |[0x800007e8]:srli a1, a0, 30<br> [0x800007ec]:sd a1, 416(ra)<br>    |
|  79|[0x80002280]<br>0x00000000001FFFFF|- rs1_val == -129<br>                                                                                                                                              |[0x800007f4]:srli a1, a0, 11<br> [0x800007f8]:sd a1, 424(ra)<br>    |
|  80|[0x80002288]<br>0x000000000000001F|- rs1_val == -257<br> - imm_val == 27<br>                                                                                                                          |[0x80000800]:srli a1, a0, 27<br> [0x80000804]:sd a1, 432(ra)<br>    |
|  81|[0x80002290]<br>0x000000000000001F|- rs1_val == -513<br>                                                                                                                                              |[0x8000080c]:srli a1, a0, 27<br> [0x80000810]:sd a1, 440(ra)<br>    |
|  82|[0x80002298]<br>0x0000000003FFFFEF|- rs1_val == -1025<br>                                                                                                                                             |[0x80000818]:srli a1, a0, 6<br> [0x8000081c]:sd a1, 448(ra)<br>     |
|  83|[0x800022a0]<br>0x0000000000000003|- rs1_val == -2049<br>                                                                                                                                             |[0x80000828]:srli a1, a0, 30<br> [0x8000082c]:sd a1, 456(ra)<br>    |
|  84|[0x800022a8]<br>0x0000000007FFFF7F|- rs1_val == -4097<br>                                                                                                                                             |[0x80000838]:srli a1, a0, 5<br> [0x8000083c]:sd a1, 464(ra)<br>     |
|  85|[0x800022b0]<br>0x000000000000FFFF|- rs1_val == -8193<br>                                                                                                                                             |[0x80000848]:srli a1, a0, 16<br> [0x8000084c]:sd a1, 472(ra)<br>    |
|  86|[0x800022b8]<br>0x000000000003FFFE|- rs1_val == -16385<br>                                                                                                                                            |[0x80000858]:srli a1, a0, 14<br> [0x8000085c]:sd a1, 480(ra)<br>    |
|  87|[0x800022c0]<br>0x0000000000007FFF|- rs1_val == -65537<br>                                                                                                                                            |[0x80000868]:srli a1, a0, 17<br> [0x8000086c]:sd a1, 488(ra)<br>    |
|  88|[0x800022c8]<br>0x0000000000000003|- rs1_val == -131073<br>                                                                                                                                           |[0x80000878]:srli a1, a0, 30<br> [0x8000087c]:sd a1, 496(ra)<br>    |
|  89|[0x800022d0]<br>0x0000000000000003|- rs1_val == -9007199254740993<br>                                                                                                                                 |[0x8000088c]:srli a1, a0, 30<br> [0x80000890]:sd a1, 504(ra)<br>    |
|  90|[0x800022d8]<br>0x000000000000001F|- rs1_val == -18014398509481985<br>                                                                                                                                |[0x800008a0]:srli a1, a0, 27<br> [0x800008a4]:sd a1, 512(ra)<br>    |
|  91|[0x800022e0]<br>0x000000000003FFFF|- rs1_val == -36028797018963969<br>                                                                                                                                |[0x800008b4]:srli a1, a0, 14<br> [0x800008b8]:sd a1, 520(ra)<br>    |
|  92|[0x800022e8]<br>0x0000000000001FFF|- rs1_val == -72057594037927937<br>                                                                                                                                |[0x800008c8]:srli a1, a0, 19<br> [0x800008cc]:sd a1, 528(ra)<br>    |
|  93|[0x800022f0]<br>0x00000000001FFFFF|- rs1_val == -144115188075855873<br>                                                                                                                               |[0x800008dc]:srli a1, a0, 11<br> [0x800008e0]:sd a1, 536(ra)<br>    |
|  94|[0x800022f8]<br>0x00000000000FFFFF|- rs1_val == -288230376151711745<br>                                                                                                                               |[0x800008f0]:srli a1, a0, 12<br> [0x800008f4]:sd a1, 544(ra)<br>    |
|  95|[0x80002300]<br>0x000000000FFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                               |[0x80000904]:srli a1, a0, 4<br> [0x80000908]:sd a1, 552(ra)<br>     |
|  96|[0x80002308]<br>0x0000000001FFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                              |[0x80000918]:srli a1, a0, 7<br> [0x8000091c]:sd a1, 560(ra)<br>     |
|  97|[0x80002310]<br>0x000000000007FFFF|- rs1_val == -2305843009213693953<br>                                                                                                                              |[0x8000092c]:srli a1, a0, 13<br> [0x80000930]:sd a1, 568(ra)<br>    |
|  98|[0x80002318]<br>0x0000000003FFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                              |[0x80000940]:srli a1, a0, 6<br> [0x80000944]:sd a1, 576(ra)<br>     |
|  99|[0x80002320]<br>0x000000000000AAAA|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                            |[0x80000968]:srli a1, a0, 15<br> [0x8000096c]:sd a1, 584(ra)<br>    |
| 100|[0x80002328]<br>0x0000000000000155|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                                          |[0x80000990]:srli a1, a0, 23<br> [0x80000994]:sd a1, 592(ra)<br>    |
| 101|[0x80002330]<br>0x0000000000000000|- rs1_val==3<br>                                                                                                                                                   |[0x8000099c]:srli a1, a0, 19<br> [0x800009a0]:sd a1, 600(ra)<br>    |
| 102|[0x80002338]<br>0x0000000003333333|- rs1_val==3689348814741910323<br>                                                                                                                                 |[0x800009c4]:srli a1, a0, 4<br> [0x800009c8]:sd a1, 608(ra)<br>     |
| 103|[0x80002340]<br>0x0000000033333333|- rs1_val==7378697629483820646<br>                                                                                                                                 |[0x800009ec]:srli a1, a0, 1<br> [0x800009f0]:sd a1, 616(ra)<br>     |
| 104|[0x80002348]<br>0x000000000B504F33|- rs1_val==3037000499<br>                                                                                                                                          |[0x80000a04]:srli a1, a0, 4<br> [0x80000a08]:sd a1, 624(ra)<br>     |
| 105|[0x80002350]<br>0x0000000055555554|- rs1_val==6148914691236517204<br>                                                                                                                                 |[0x80000a2c]:srli a1, a0, 0<br> [0x80000a30]:sd a1, 632(ra)<br>     |
| 106|[0x80002358]<br>0x0000000006666666|- rs1_val==3689348814741910322<br>                                                                                                                                 |[0x80000a54]:srli a1, a0, 3<br> [0x80000a58]:sd a1, 640(ra)<br>     |
| 107|[0x80002360]<br>0x0000000000000003|- rs1_val==7378697629483820645<br>                                                                                                                                 |[0x80000a7c]:srli a1, a0, 29<br> [0x80000a80]:sd a1, 648(ra)<br>    |
| 108|[0x80002368]<br>0x0000000000005A82|- rs1_val==3037000498<br>                                                                                                                                          |[0x80000a94]:srli a1, a0, 17<br> [0x80000a98]:sd a1, 656(ra)<br>    |
| 109|[0x80002370]<br>0x00000000002AAAAA|- rs1_val==6148914691236517206<br>                                                                                                                                 |[0x80000abc]:srli a1, a0, 9<br> [0x80000ac0]:sd a1, 664(ra)<br>     |
| 110|[0x80002378]<br>0x0000000000055555|- rs1_val==-6148914691236517205<br>                                                                                                                                |[0x80000ae4]:srli a1, a0, 13<br> [0x80000ae8]:sd a1, 672(ra)<br>    |
| 111|[0x80002380]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                                                   |[0x80000af0]:srli a1, a0, 14<br> [0x80000af4]:sd a1, 680(ra)<br>    |
| 112|[0x80002388]<br>0x0000000000000000|- rs1_val==3689348814741910324<br>                                                                                                                                 |[0x80000b18]:srli a1, a0, 31<br> [0x80000b1c]:sd a1, 688(ra)<br>    |
| 113|[0x80002390]<br>0x0000000000000000|- rs1_val==7378697629483820647<br>                                                                                                                                 |[0x80000b40]:srli a1, a0, 31<br> [0x80000b44]:sd a1, 696(ra)<br>    |
| 114|[0x80002398]<br>0x000000000000257D|- rs1_val==-3037000498<br>                                                                                                                                         |[0x80000b58]:srli a1, a0, 17<br> [0x80000b5c]:sd a1, 704(ra)<br>    |
| 115|[0x800023a0]<br>0x00000000000005A8|- rs1_val==3037000500<br>                                                                                                                                          |[0x80000b70]:srli a1, a0, 21<br> [0x80000b74]:sd a1, 712(ra)<br>    |
| 116|[0x800023a8]<br>0x00000000000007FF|- rs1_val == -262145<br>                                                                                                                                           |[0x80000b80]:srli a1, a0, 21<br> [0x80000b84]:sd a1, 720(ra)<br>    |
| 117|[0x800023b0]<br>0x0000000000000007|- rs1_val == -524289<br>                                                                                                                                           |[0x80000b90]:srli a1, a0, 29<br> [0x80000b94]:sd a1, 728(ra)<br>    |
| 118|[0x800023b8]<br>0x0000000003FFBFFF|- rs1_val == -1048577<br>                                                                                                                                          |[0x80000ba0]:srli a1, a0, 6<br> [0x80000ba4]:sd a1, 736(ra)<br>     |
| 119|[0x800023c0]<br>0x00000000000FFDFF|- rs1_val == -2097153<br>                                                                                                                                          |[0x80000bb0]:srli a1, a0, 12<br> [0x80000bb4]:sd a1, 744(ra)<br>    |
| 120|[0x800023c8]<br>0x00000000003FEFFF|- rs1_val == -4194305<br>                                                                                                                                          |[0x80000bc0]:srli a1, a0, 10<br> [0x80000bc4]:sd a1, 752(ra)<br>    |
| 121|[0x800023d0]<br>0x00000000001FEFFF|- rs1_val == -8388609<br>                                                                                                                                          |[0x80000bd0]:srli a1, a0, 11<br> [0x80000bd4]:sd a1, 760(ra)<br>    |
| 122|[0x800023d8]<br>0x0000000000000001|- rs1_val == -16777217<br>                                                                                                                                         |[0x80000be0]:srli a1, a0, 31<br> [0x80000be4]:sd a1, 768(ra)<br>    |
| 123|[0x800023e0]<br>0x0000000000000007|- rs1_val == -33554433<br>                                                                                                                                         |[0x80000bf0]:srli a1, a0, 29<br> [0x80000bf4]:sd a1, 776(ra)<br>    |
| 124|[0x800023e8]<br>0x000000000000FBFF|- rs1_val == -67108865<br>                                                                                                                                         |[0x80000c00]:srli a1, a0, 16<br> [0x80000c04]:sd a1, 784(ra)<br>    |
| 125|[0x800023f0]<br>0x000000000000F7FF|- rs1_val == -134217729<br>                                                                                                                                        |[0x80000c10]:srli a1, a0, 16<br> [0x80000c14]:sd a1, 792(ra)<br>    |
| 126|[0x800023f8]<br>0x0000000000000003|- rs1_val == -268435457<br>                                                                                                                                        |[0x80000c20]:srli a1, a0, 30<br> [0x80000c24]:sd a1, 800(ra)<br>    |
| 127|[0x80002400]<br>0x000000000000DFFF|- rs1_val == -536870913<br>                                                                                                                                        |[0x80000c30]:srli a1, a0, 16<br> [0x80000c34]:sd a1, 808(ra)<br>    |
| 128|[0x80002408]<br>0x000000000000017F|- rs1_val == -1073741825<br>                                                                                                                                       |[0x80000c40]:srli a1, a0, 23<br> [0x80000c44]:sd a1, 816(ra)<br>    |
| 129|[0x80002410]<br>0x0000000000FFFFFF|- rs1_val == -2147483649<br>                                                                                                                                       |[0x80000c54]:srli a1, a0, 7<br> [0x80000c58]:sd a1, 824(ra)<br>     |
| 130|[0x80002418]<br>0x000000003FFFFFFF|- rs1_val == -4294967297<br>                                                                                                                                       |[0x80000c68]:srli a1, a0, 2<br> [0x80000c6c]:sd a1, 832(ra)<br>     |
| 131|[0x80002420]<br>0x0000000007FFFFFF|- rs1_val == -8589934593<br>                                                                                                                                       |[0x80000c7c]:srli a1, a0, 5<br> [0x80000c80]:sd a1, 840(ra)<br>     |
| 132|[0x80002428]<br>0x0000000003FFFFFF|- rs1_val == -17179869185<br>                                                                                                                                      |[0x80000c90]:srli a1, a0, 6<br> [0x80000c94]:sd a1, 848(ra)<br>     |
| 133|[0x80002430]<br>0x00000000007FFFFF|- rs1_val == -34359738369<br>                                                                                                                                      |[0x80000ca4]:srli a1, a0, 9<br> [0x80000ca8]:sd a1, 856(ra)<br>     |
| 134|[0x80002438]<br>0x00000000000001FF|- rs1_val == -68719476737<br>                                                                                                                                      |[0x80000cb8]:srli a1, a0, 23<br> [0x80000cbc]:sd a1, 864(ra)<br>    |
| 135|[0x80002440]<br>0x0000000000000001|- rs1_val == -137438953473<br>                                                                                                                                     |[0x80000ccc]:srli a1, a0, 31<br> [0x80000cd0]:sd a1, 872(ra)<br>    |
| 136|[0x80002448]<br>0x0000000000000007|- rs1_val == -274877906945<br>                                                                                                                                     |[0x80000ce0]:srli a1, a0, 29<br> [0x80000ce4]:sd a1, 880(ra)<br>    |
| 137|[0x80002450]<br>0x000000007FFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                     |[0x80000cf4]:srli a1, a0, 1<br> [0x80000cf8]:sd a1, 888(ra)<br>     |
| 138|[0x80002458]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                    |[0x80000d08]:srli a1, a0, 0<br> [0x80000d0c]:sd a1, 896(ra)<br>     |
| 139|[0x80002460]<br>0x000000000000FFFF|- rs1_val == -2199023255553<br>                                                                                                                                    |[0x80000d1c]:srli a1, a0, 16<br> [0x80000d20]:sd a1, 904(ra)<br>    |
| 140|[0x80002468]<br>0x0000000001FFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                    |[0x80000d30]:srli a1, a0, 7<br> [0x80000d34]:sd a1, 912(ra)<br>     |
| 141|[0x80002470]<br>0x00000000000001FF|- rs1_val == -8796093022209<br>                                                                                                                                    |[0x80000d44]:srli a1, a0, 23<br> [0x80000d48]:sd a1, 920(ra)<br>    |
| 142|[0x80002478]<br>0x000000000001FFFF|- rs1_val == -17592186044417<br>                                                                                                                                   |[0x80000d58]:srli a1, a0, 15<br> [0x80000d5c]:sd a1, 928(ra)<br>    |
| 143|[0x80002480]<br>0x0000000003FFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                   |[0x80000d6c]:srli a1, a0, 6<br> [0x80000d70]:sd a1, 936(ra)<br>     |
| 144|[0x80002488]<br>0x000000000000001F|- rs1_val == -70368744177665<br>                                                                                                                                   |[0x80000d80]:srli a1, a0, 27<br> [0x80000d84]:sd a1, 944(ra)<br>    |
| 145|[0x80002490]<br>0x000000001FFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                  |[0x80000d94]:srli a1, a0, 3<br> [0x80000d98]:sd a1, 952(ra)<br>     |
| 146|[0x80002498]<br>0x00000000001FFFFF|- rs1_val == -281474976710657<br>                                                                                                                                  |[0x80000da8]:srli a1, a0, 11<br> [0x80000dac]:sd a1, 960(ra)<br>    |
| 147|[0x800024a0]<br>0x0000000000001FFF|- rs1_val == -562949953421313<br>                                                                                                                                  |[0x80000dbc]:srli a1, a0, 19<br> [0x80000dc0]:sd a1, 968(ra)<br>    |
| 148|[0x800024a8]<br>0x0000000000000003|- rs1_val == -2251799813685249<br>                                                                                                                                 |[0x80000dd0]:srli a1, a0, 30<br> [0x80000dd4]:sd a1, 976(ra)<br>    |
| 149|[0x800024b0]<br>0x0000000000001FFF|- rs1_val == -4503599627370497<br>                                                                                                                                 |[0x80000de4]:srli a1, a0, 19<br> [0x80000de8]:sd a1, 984(ra)<br>    |
