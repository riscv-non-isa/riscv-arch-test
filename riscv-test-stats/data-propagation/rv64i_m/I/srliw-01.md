
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
| SIG_REGION                | [('0x80002010', '0x800024d0', '152 dwords')]      |
| COV_LABELS                | srliw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srliw-01.S/srliw-01.S    |
| Total Number of coverpoints| 242     |
| Total Coverpoints Hit     | 242      |
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
      [0x80000e1c]:srli a1, a0, 27
      [0x80000e20]:sd a1, 1032(sp)
 -- Signature Address: 0x800024c0 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srliw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val < 0 and imm_val > 0 and imm_val < 32
      - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32
      - rs1_val == -9223372036854775808
      - imm_val == 27






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

|s.no|            signature             |                                                                               coverpoints                                                                               |                                code                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002010]<br>0x000000000001FFFF|- opcode : srliw<br> - rs1 : x21<br> - rd : x21<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == -68719476737<br> - imm_val == 15<br> |[0x800003a4]:srli s5, s5, 15<br> [0x800003a8]:sd s5, 0(a2)<br>      |
|   2|[0x80002018]<br>0x0000000000666666|- rs1 : x22<br> - rd : x3<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br> - rs1_val==7378697629483820646<br> - imm_val == 8<br>                   |[0x800003cc]:srli gp, s6, 8<br> [0x800003d0]:sd gp, 8(a2)<br>       |
|   3|[0x80002020]<br>0xFFFFFFFFFEFFFFFF|- rs1 : x11<br> - rd : x4<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -16777217<br>                                                                              |[0x800003dc]:srli tp, a1, 0<br> [0x800003e0]:sd tp, 16(a2)<br>      |
|   4|[0x80002028]<br>0x0000000066666666|- rs1 : x7<br> - rd : x23<br> - rs1_val > 0 and imm_val == 0<br>                                                                                                         |[0x80000404]:srli s7, t2, 0<br> [0x80000408]:sd s7, 24(a2)<br>      |
|   5|[0x80002030]<br>0x0000000000000001|- rs1 : x31<br> - rd : x17<br> - rs1_val < 0 and imm_val == 31<br> - rs1_val == -36028797018963969<br>                                                                   |[0x80000418]:srli a7, t6, 31<br> [0x8000041c]:sd a7, 32(a2)<br>     |
|   6|[0x80002038]<br>0x0000000000000000|- rs1 : x10<br> - rd : x28<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == 1099511627776<br>                                                                        |[0x80000428]:srli t3, a0, 31<br> [0x8000042c]:sd t3, 40(a2)<br>     |
|   7|[0x80002040]<br>0x0000000000000000|- rs1 : x24<br> - rd : x9<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br>                                                                                  |[0x80000434]:srli s1, s8, 9<br> [0x80000438]:sd s1, 48(a2)<br>      |
|   8|[0x80002048]<br>0x0000000000000000|- rs1 : x20<br> - rd : x0<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br> - imm_val == 27<br>                |[0x80000444]:srli zero, s4, 27<br> [0x80000448]:sd zero, 56(a2)<br> |
|   9|[0x80002050]<br>0x0000000000000000|- rs1 : x15<br> - rd : x8<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br> - rs1_val==0<br> - imm_val == 1<br>                                                   |[0x80000450]:srli fp, a5, 1<br> [0x80000454]:sd fp, 64(a2)<br>      |
|  10|[0x80002058]<br>0x00000000001FFFFF|- rs1 : x28<br> - rd : x20<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br>                                   |[0x80000464]:srli s4, t3, 11<br> [0x80000468]:sd s4, 72(a2)<br>     |
|  11|[0x80002060]<br>0x0000000000000000|- rs1 : x23<br> - rd : x19<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br> - imm_val == 10<br>                                               |[0x80000470]:srli s3, s7, 10<br> [0x80000474]:sd s3, 80(a2)<br>     |
|  12|[0x80002068]<br>0x0000000000000000|- rs1 : x13<br> - rd : x15<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                       |[0x8000047c]:srli a5, a3, 17<br> [0x80000480]:sd a5, 88(a2)<br>     |
|  13|[0x80002070]<br>0x0000000000000000|- rs1 : x8<br> - rd : x16<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                        |[0x80000488]:srli a6, fp, 18<br> [0x8000048c]:sd a6, 96(a2)<br>     |
|  14|[0x80002078]<br>0x0000000000000000|- rs1 : x4<br> - rd : x26<br> - rs1_val == 8<br>                                                                                                                         |[0x80000494]:srli s10, tp, 18<br> [0x80000498]:sd s10, 104(a2)<br>  |
|  15|[0x80002080]<br>0x0000000000000000|- rs1 : x2<br> - rd : x29<br> - rs1_val == 16<br>                                                                                                                        |[0x800004a0]:srli t4, sp, 17<br> [0x800004a4]:sd t4, 112(a2)<br>    |
|  16|[0x80002088]<br>0x0000000000000000|- rs1 : x5<br> - rd : x27<br> - rs1_val == 32<br>                                                                                                                        |[0x800004ac]:srli s11, t0, 6<br> [0x800004b0]:sd s11, 120(a2)<br>   |
|  17|[0x80002090]<br>0x0000000000000000|- rs1 : x3<br> - rd : x13<br> - rs1_val == 64<br>                                                                                                                        |[0x800004b8]:srli a3, gp, 12<br> [0x800004bc]:sd a3, 128(a2)<br>    |
|  18|[0x80002098]<br>0x0000000000000000|- rs1 : x9<br> - rd : x31<br> - rs1_val == 128<br>                                                                                                                       |[0x800004c4]:srli t6, s1, 18<br> [0x800004c8]:sd t6, 136(a2)<br>    |
|  19|[0x800020a0]<br>0x0000000000000008|- rs1 : x6<br> - rd : x1<br> - rs1_val == 256<br>                                                                                                                        |[0x800004d0]:srli ra, t1, 5<br> [0x800004d4]:sd ra, 144(a2)<br>     |
|  20|[0x800020a8]<br>0x0000000000000000|- rs1 : x19<br> - rd : x25<br> - rs1_val == 512<br>                                                                                                                      |[0x800004dc]:srli s9, s3, 27<br> [0x800004e0]:sd s9, 152(a2)<br>    |
|  21|[0x800020b0]<br>0x0000000000000002|- rs1 : x18<br> - rd : x2<br> - rs1_val == 1024<br>                                                                                                                      |[0x800004e8]:srli sp, s2, 9<br> [0x800004ec]:sd sp, 160(a2)<br>     |
|  22|[0x800020b8]<br>0x0000000000000400|- rs1 : x14<br> - rd : x7<br> - rs1_val == 2048<br>                                                                                                                      |[0x80000500]:srli t2, a4, 1<br> [0x80000504]:sd t2, 0(sp)<br>       |
|  23|[0x800020c0]<br>0x0000000000000000|- rs1 : x30<br> - rd : x22<br> - rs1_val == 4096<br>                                                                                                                     |[0x8000050c]:srli s6, t5, 15<br> [0x80000510]:sd s6, 8(sp)<br>      |
|  24|[0x800020c8]<br>0x0000000000000000|- rs1 : x26<br> - rd : x24<br> - rs1_val == 8192<br>                                                                                                                     |[0x80000518]:srli s8, s10, 19<br> [0x8000051c]:sd s8, 16(sp)<br>    |
|  25|[0x800020d0]<br>0x0000000000000000|- rs1 : x27<br> - rd : x18<br> - rs1_val == 16384<br> - imm_val == 23<br>                                                                                                |[0x80000524]:srli s2, s11, 23<br> [0x80000528]:sd s2, 24(sp)<br>    |
|  26|[0x800020d8]<br>0x0000000000000008|- rs1 : x12<br> - rd : x14<br> - rs1_val == 32768<br>                                                                                                                    |[0x80000530]:srli a4, a2, 12<br> [0x80000534]:sd a4, 32(sp)<br>     |
|  27|[0x800020e0]<br>0x0000000000002000|- rs1 : x17<br> - rd : x30<br> - rs1_val == 65536<br>                                                                                                                    |[0x8000053c]:srli t5, a7, 3<br> [0x80000540]:sd t5, 40(sp)<br>      |
|  28|[0x800020e8]<br>0x0000000000001000|- rs1 : x16<br> - rd : x12<br> - rs1_val == 131072<br>                                                                                                                   |[0x80000548]:srli a2, a6, 5<br> [0x8000054c]:sd a2, 48(sp)<br>      |
|  29|[0x800020f0]<br>0x0000000000000000|- rs1 : x29<br> - rd : x6<br> - rs1_val == 262144<br> - imm_val == 29<br>                                                                                                |[0x80000554]:srli t1, t4, 29<br> [0x80000558]:sd t1, 56(sp)<br>     |
|  30|[0x800020f8]<br>0x0000000000000000|- rs1 : x0<br> - rd : x10<br>                                                                                                                                            |[0x80000560]:srli a0, zero, 1<br> [0x80000564]:sd a0, 64(sp)<br>    |
|  31|[0x80002100]<br>0x0000000000004000|- rs1 : x25<br> - rd : x11<br> - rs1_val == 1048576<br>                                                                                                                  |[0x8000056c]:srli a1, s9, 6<br> [0x80000570]:sd a1, 72(sp)<br>      |
|  32|[0x80002108]<br>0x0000000000008000|- rs1 : x1<br> - rd : x5<br> - rs1_val == 2097152<br>                                                                                                                    |[0x80000578]:srli t0, ra, 6<br> [0x8000057c]:sd t0, 80(sp)<br>      |
|  33|[0x80002110]<br>0x0000000000008000|- rs1_val == 4194304<br>                                                                                                                                                 |[0x80000584]:srli a1, a0, 7<br> [0x80000588]:sd a1, 88(sp)<br>      |
|  34|[0x80002118]<br>0x0000000000000004|- rs1_val == 8388608<br> - imm_val == 21<br>                                                                                                                             |[0x80000590]:srli a1, a0, 21<br> [0x80000594]:sd a1, 96(sp)<br>     |
|  35|[0x80002120]<br>0x0000000000004000|- rs1_val == 16777216<br>                                                                                                                                                |[0x8000059c]:srli a1, a0, 10<br> [0x800005a0]:sd a1, 104(sp)<br>    |
|  36|[0x80002128]<br>0x0000000000008000|- rs1_val == 33554432<br>                                                                                                                                                |[0x800005a8]:srli a1, a0, 10<br> [0x800005ac]:sd a1, 112(sp)<br>    |
|  37|[0x80002130]<br>0x0000000004000000|- rs1_val == 67108864<br>                                                                                                                                                |[0x800005b4]:srli a1, a0, 0<br> [0x800005b8]:sd a1, 120(sp)<br>     |
|  38|[0x80002138]<br>0x0000000000000040|- rs1_val == 134217728<br>                                                                                                                                               |[0x800005c0]:srli a1, a0, 21<br> [0x800005c4]:sd a1, 128(sp)<br>    |
|  39|[0x80002140]<br>0x0000000000000080|- rs1_val == 268435456<br>                                                                                                                                               |[0x800005cc]:srli a1, a0, 21<br> [0x800005d0]:sd a1, 136(sp)<br>    |
|  40|[0x80002148]<br>0x0000000000200000|- rs1_val == 536870912<br>                                                                                                                                               |[0x800005d8]:srli a1, a0, 8<br> [0x800005dc]:sd a1, 144(sp)<br>     |
|  41|[0x80002150]<br>0x0000000000200000|- rs1_val == 1073741824<br>                                                                                                                                              |[0x800005e4]:srli a1, a0, 9<br> [0x800005e8]:sd a1, 152(sp)<br>     |
|  42|[0x80002158]<br>0x0000000000010000|- rs1_val == 2147483648<br>                                                                                                                                              |[0x800005f4]:srli a1, a0, 15<br> [0x800005f8]:sd a1, 160(sp)<br>    |
|  43|[0x80002160]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                              |[0x80000604]:srli a1, a0, 17<br> [0x80000608]:sd a1, 168(sp)<br>    |
|  44|[0x80002168]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                              |[0x80000614]:srli a1, a0, 10<br> [0x80000618]:sd a1, 176(sp)<br>    |
|  45|[0x80002170]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                             |[0x80000624]:srli a1, a0, 6<br> [0x80000628]:sd a1, 184(sp)<br>     |
|  46|[0x80002178]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                             |[0x80000634]:srli a1, a0, 31<br> [0x80000638]:sd a1, 192(sp)<br>    |
|  47|[0x80002180]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                             |[0x80000644]:srli a1, a0, 8<br> [0x80000648]:sd a1, 200(sp)<br>     |
|  48|[0x80002188]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                            |[0x80000654]:srli a1, a0, 9<br> [0x80000658]:sd a1, 208(sp)<br>     |
|  49|[0x80002190]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                            |[0x80000664]:srli a1, a0, 3<br> [0x80000668]:sd a1, 216(sp)<br>     |
|  50|[0x80002198]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                            |[0x80000674]:srli a1, a0, 21<br> [0x80000678]:sd a1, 224(sp)<br>    |
|  51|[0x800021a0]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                           |[0x80000684]:srli a1, a0, 31<br> [0x80000688]:sd a1, 232(sp)<br>    |
|  52|[0x800021a8]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                           |[0x80000694]:srli a1, a0, 7<br> [0x80000698]:sd a1, 240(sp)<br>     |
|  53|[0x800021b0]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                                           |[0x800006a4]:srli a1, a0, 1<br> [0x800006a8]:sd a1, 248(sp)<br>     |
|  54|[0x800021b8]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                          |[0x800006b4]:srli a1, a0, 8<br> [0x800006b8]:sd a1, 256(sp)<br>     |
|  55|[0x800021c0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                          |[0x800006c4]:srli a1, a0, 6<br> [0x800006c8]:sd a1, 264(sp)<br>     |
|  56|[0x800021c8]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                          |[0x800006d4]:srli a1, a0, 15<br> [0x800006d8]:sd a1, 272(sp)<br>    |
|  57|[0x800021d0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                         |[0x800006e4]:srli a1, a0, 17<br> [0x800006e8]:sd a1, 280(sp)<br>    |
|  58|[0x800021d8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                         |[0x800006f4]:srli a1, a0, 21<br> [0x800006f8]:sd a1, 288(sp)<br>    |
|  59|[0x800021e0]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                         |[0x80000704]:srli a1, a0, 17<br> [0x80000708]:sd a1, 296(sp)<br>    |
|  60|[0x800021e8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                        |[0x80000714]:srli a1, a0, 17<br> [0x80000718]:sd a1, 304(sp)<br>    |
|  61|[0x800021f0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br> - imm_val == 16<br>                                                                                                                    |[0x80000724]:srli a1, a0, 16<br> [0x80000728]:sd a1, 312(sp)<br>    |
|  62|[0x800021f8]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                        |[0x80000734]:srli a1, a0, 17<br> [0x80000738]:sd a1, 320(sp)<br>    |
|  63|[0x80002200]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                        |[0x80000744]:srli a1, a0, 21<br> [0x80000748]:sd a1, 328(sp)<br>    |
|  64|[0x80002208]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                       |[0x80000754]:srli a1, a0, 1<br> [0x80000758]:sd a1, 336(sp)<br>     |
|  65|[0x80002210]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                       |[0x80000764]:srli a1, a0, 31<br> [0x80000768]:sd a1, 344(sp)<br>    |
|  66|[0x80002218]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                       |[0x80000774]:srli a1, a0, 19<br> [0x80000778]:sd a1, 352(sp)<br>    |
|  67|[0x80002220]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                      |[0x80000784]:srli a1, a0, 31<br> [0x80000788]:sd a1, 360(sp)<br>    |
|  68|[0x80002228]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                      |[0x80000794]:srli a1, a0, 15<br> [0x80000798]:sd a1, 368(sp)<br>    |
|  69|[0x80002230]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                      |[0x800007a4]:srli a1, a0, 1<br> [0x800007a8]:sd a1, 376(sp)<br>     |
|  70|[0x80002238]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                     |[0x800007b4]:srli a1, a0, 18<br> [0x800007b8]:sd a1, 384(sp)<br>    |
|  71|[0x80002240]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                     |[0x800007c4]:srli a1, a0, 16<br> [0x800007c8]:sd a1, 392(sp)<br>    |
|  72|[0x80002248]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                     |[0x800007d4]:srli a1, a0, 3<br> [0x800007d8]:sd a1, 400(sp)<br>     |
|  73|[0x80002250]<br>0x0000000001FFFFFF|- rs1_val == -2<br>                                                                                                                                                      |[0x800007e0]:srli a1, a0, 7<br> [0x800007e4]:sd a1, 408(sp)<br>     |
|  74|[0x80002258]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -3<br>                                                                                                                                                      |[0x800007ec]:srli a1, a0, 0<br> [0x800007f0]:sd a1, 416(sp)<br>     |
|  75|[0x80002260]<br>0x00000000003FFFFF|- rs1_val == -5<br>                                                                                                                                                      |[0x800007f8]:srli a1, a0, 10<br> [0x800007fc]:sd a1, 424(sp)<br>    |
|  76|[0x80002268]<br>0x00000000003FFFFF|- rs1_val == -9<br>                                                                                                                                                      |[0x80000804]:srli a1, a0, 10<br> [0x80000808]:sd a1, 432(sp)<br>    |
|  77|[0x80002270]<br>0x0000000001FFFFFF|- rs1_val == -17<br>                                                                                                                                                     |[0x80000810]:srli a1, a0, 7<br> [0x80000814]:sd a1, 440(sp)<br>     |
|  78|[0x80002278]<br>0x00000000000FFFFF|- rs1_val == -33<br>                                                                                                                                                     |[0x8000081c]:srli a1, a0, 12<br> [0x80000820]:sd a1, 448(sp)<br>    |
|  79|[0x80002280]<br>0x0000000000007FFF|- rs1_val == -65<br>                                                                                                                                                     |[0x80000828]:srli a1, a0, 17<br> [0x8000082c]:sd a1, 456(sp)<br>    |
|  80|[0x80002288]<br>0x0000000007FFFFFB|- rs1_val == -129<br>                                                                                                                                                    |[0x80000834]:srli a1, a0, 5<br> [0x80000838]:sd a1, 464(sp)<br>     |
|  81|[0x80002290]<br>0x000000000000001F|- rs1_val == -257<br>                                                                                                                                                    |[0x80000840]:srli a1, a0, 27<br> [0x80000844]:sd a1, 472(sp)<br>    |
|  82|[0x80002298]<br>0x000000003FFFFF7F|- rs1_val == -513<br> - imm_val == 2<br>                                                                                                                                 |[0x8000084c]:srli a1, a0, 2<br> [0x80000850]:sd a1, 480(sp)<br>     |
|  83|[0x800022a0]<br>0x000000000007FFFF|- rs1_val == -1025<br>                                                                                                                                                   |[0x80000858]:srli a1, a0, 13<br> [0x8000085c]:sd a1, 488(sp)<br>    |
|  84|[0x800022a8]<br>0x0000000000000007|- rs1_val == -2049<br>                                                                                                                                                   |[0x80000868]:srli a1, a0, 29<br> [0x8000086c]:sd a1, 496(sp)<br>    |
|  85|[0x800022b0]<br>0x000000000000001F|- rs1_val == -4097<br>                                                                                                                                                   |[0x80000878]:srli a1, a0, 27<br> [0x8000087c]:sd a1, 504(sp)<br>    |
|  86|[0x800022b8]<br>0x0000000000003FFF|- rs1_val == -8193<br>                                                                                                                                                   |[0x80000888]:srli a1, a0, 18<br> [0x8000088c]:sd a1, 512(sp)<br>    |
|  87|[0x800022c0]<br>0x0000000001FFFF7F|- rs1_val == -16385<br>                                                                                                                                                  |[0x80000898]:srli a1, a0, 7<br> [0x8000089c]:sd a1, 520(sp)<br>     |
|  88|[0x800022c8]<br>0x0000000000003FFF|- rs1_val == -32769<br>                                                                                                                                                  |[0x800008a8]:srli a1, a0, 18<br> [0x800008ac]:sd a1, 528(sp)<br>    |
|  89|[0x800022d0]<br>0x000000000003FFFB|- rs1_val == -65537<br>                                                                                                                                                  |[0x800008b8]:srli a1, a0, 14<br> [0x800008bc]:sd a1, 536(sp)<br>    |
|  90|[0x800022d8]<br>0x0000000000000003|- rs1_val == -131073<br> - imm_val == 30<br>                                                                                                                             |[0x800008c8]:srli a1, a0, 30<br> [0x800008cc]:sd a1, 544(sp)<br>    |
|  91|[0x800022e0]<br>0x0000000007FFDFFF|- rs1_val == -262145<br>                                                                                                                                                 |[0x800008d8]:srli a1, a0, 5<br> [0x800008dc]:sd a1, 552(sp)<br>     |
|  92|[0x800022e8]<br>0x0000000000000001|- rs1_val == -9007199254740993<br>                                                                                                                                       |[0x800008ec]:srli a1, a0, 31<br> [0x800008f0]:sd a1, 560(sp)<br>    |
|  93|[0x800022f0]<br>0x000000001FFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                      |[0x80000900]:srli a1, a0, 3<br> [0x80000904]:sd a1, 568(sp)<br>     |
|  94|[0x800022f8]<br>0x0000000003FFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                      |[0x80000914]:srli a1, a0, 6<br> [0x80000918]:sd a1, 576(sp)<br>     |
|  95|[0x80002300]<br>0x000000007FFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                     |[0x80000928]:srli a1, a0, 1<br> [0x8000092c]:sd a1, 584(sp)<br>     |
|  96|[0x80002308]<br>0x0000000000003FFF|- rs1_val == -288230376151711745<br>                                                                                                                                     |[0x8000093c]:srli a1, a0, 18<br> [0x80000940]:sd a1, 592(sp)<br>    |
|  97|[0x80002310]<br>0x00000000007FFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                     |[0x80000950]:srli a1, a0, 9<br> [0x80000954]:sd a1, 600(sp)<br>     |
|  98|[0x80002318]<br>0x000000000000001F|- rs1_val == -1152921504606846977<br>                                                                                                                                    |[0x80000964]:srli a1, a0, 27<br> [0x80000968]:sd a1, 608(sp)<br>    |
|  99|[0x80002320]<br>0x0000000007FFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                    |[0x80000978]:srli a1, a0, 5<br> [0x8000097c]:sd a1, 616(sp)<br>     |
| 100|[0x80002328]<br>0x0000000000000001|- rs1_val == -4611686018427387905<br>                                                                                                                                    |[0x8000098c]:srli a1, a0, 31<br> [0x80000990]:sd a1, 624(sp)<br>    |
| 101|[0x80002330]<br>0x000000000000AAAA|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                                  |[0x800009b4]:srli a1, a0, 15<br> [0x800009b8]:sd a1, 632(sp)<br>    |
| 102|[0x80002338]<br>0x000000000AAAAAAA|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br> - imm_val == 4<br>                                                                             |[0x800009dc]:srli a1, a0, 4<br> [0x800009e0]:sd a1, 640(sp)<br>     |
| 103|[0x80002340]<br>0x0000000000000001|- rs1_val==3<br>                                                                                                                                                         |[0x800009e8]:srli a1, a0, 1<br> [0x800009ec]:sd a1, 648(sp)<br>     |
| 104|[0x80002348]<br>0x0000000000000000|- rs1_val==5<br>                                                                                                                                                         |[0x800009f4]:srli a1, a0, 18<br> [0x800009f8]:sd a1, 656(sp)<br>    |
| 105|[0x80002350]<br>0x0000000000000000|- rs1_val==3689348814741910323<br>                                                                                                                                       |[0x80000a1c]:srli a1, a0, 31<br> [0x80000a20]:sd a1, 664(sp)<br>    |
| 106|[0x80002358]<br>0x00000000012BEC33|- rs1_val==-3037000499<br>                                                                                                                                               |[0x80000a34]:srli a1, a0, 6<br> [0x80000a38]:sd a1, 672(sp)<br>     |
| 107|[0x80002360]<br>0x000000005A827999|- rs1_val==3037000499<br>                                                                                                                                                |[0x80000a4c]:srli a1, a0, 1<br> [0x80000a50]:sd a1, 680(sp)<br>     |
| 108|[0x80002368]<br>0x0000000000000002|- rs1_val==6148914691236517204<br>                                                                                                                                       |[0x80000a74]:srli a1, a0, 29<br> [0x80000a78]:sd a1, 688(sp)<br>    |
| 109|[0x80002370]<br>0x0000000000019999|- rs1_val==3689348814741910322<br>                                                                                                                                       |[0x80000a9c]:srli a1, a0, 13<br> [0x80000aa0]:sd a1, 696(sp)<br>    |
| 110|[0x80002378]<br>0x0000000033333332|- rs1_val==7378697629483820645<br>                                                                                                                                       |[0x80000ac4]:srli a1, a0, 1<br> [0x80000ac8]:sd a1, 704(sp)<br>     |
| 111|[0x80002380]<br>0x000000002D413CCC|- rs1_val==3037000498<br>                                                                                                                                                |[0x80000adc]:srli a1, a0, 2<br> [0x80000ae0]:sd a1, 712(sp)<br>     |
| 112|[0x80002388]<br>0x0000000000AAAAAA|- rs1_val==6148914691236517206<br>                                                                                                                                       |[0x80000b04]:srli a1, a0, 7<br> [0x80000b08]:sd a1, 720(sp)<br>     |
| 113|[0x80002390]<br>0x0000000000555555|- rs1_val==-6148914691236517205<br>                                                                                                                                      |[0x80000b2c]:srli a1, a0, 9<br> [0x80000b30]:sd a1, 728(sp)<br>     |
| 114|[0x80002398]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                                                         |[0x80000b38]:srli a1, a0, 13<br> [0x80000b3c]:sd a1, 736(sp)<br>    |
| 115|[0x800023a0]<br>0x0000000000006666|- rs1_val==3689348814741910324<br>                                                                                                                                       |[0x80000b60]:srli a1, a0, 15<br> [0x80000b64]:sd a1, 744(sp)<br>    |
| 116|[0x800023a8]<br>0x00000000000CCCCC|- rs1_val==7378697629483820647<br>                                                                                                                                       |[0x80000b88]:srli a1, a0, 11<br> [0x80000b8c]:sd a1, 752(sp)<br>    |
| 117|[0x800023b0]<br>0x0000000004AFB0CC|- rs1_val==-3037000498<br>                                                                                                                                               |[0x80000ba0]:srli a1, a0, 4<br> [0x80000ba4]:sd a1, 760(sp)<br>     |
| 118|[0x800023b8]<br>0x0000000000000005|- rs1_val==3037000500<br>                                                                                                                                                |[0x80000bb8]:srli a1, a0, 29<br> [0x80000bbc]:sd a1, 768(sp)<br>    |
| 119|[0x800023c0]<br>0x000000000003FFDF|- rs1_val == -524289<br>                                                                                                                                                 |[0x80000bc8]:srli a1, a0, 14<br> [0x80000bcc]:sd a1, 776(sp)<br>    |
| 120|[0x800023c8]<br>0x0000000000003FFB|- rs1_val == -1048577<br>                                                                                                                                                |[0x80000bd8]:srli a1, a0, 18<br> [0x80000bdc]:sd a1, 784(sp)<br>    |
| 121|[0x800023d0]<br>0x00000000001FFBFF|- rs1_val == -2097153<br>                                                                                                                                                |[0x80000be8]:srli a1, a0, 11<br> [0x80000bec]:sd a1, 792(sp)<br>    |
| 122|[0x800023d8]<br>0x0000000000000007|- rs1_val == -4194305<br>                                                                                                                                                |[0x80000bf8]:srli a1, a0, 29<br> [0x80000bfc]:sd a1, 800(sp)<br>    |
| 123|[0x800023e0]<br>0x000000003FDFFFFF|- rs1_val == -8388609<br>                                                                                                                                                |[0x80000c08]:srli a1, a0, 2<br> [0x80000c0c]:sd a1, 808(sp)<br>     |
| 124|[0x800023e8]<br>0x0000000000FDFFFF|- rs1_val == -33554433<br>                                                                                                                                               |[0x80000c18]:srli a1, a0, 8<br> [0x80000c1c]:sd a1, 816(sp)<br>     |
| 125|[0x800023f0]<br>0x0000000000001F7F|- rs1_val == -67108865<br>                                                                                                                                               |[0x80000c28]:srli a1, a0, 19<br> [0x80000c2c]:sd a1, 824(sp)<br>    |
| 126|[0x800023f8]<br>0x00000000003DFFFF|- rs1_val == -134217729<br>                                                                                                                                              |[0x80000c38]:srli a1, a0, 10<br> [0x80000c3c]:sd a1, 832(sp)<br>    |
| 127|[0x80002400]<br>0x000000000001DFFF|- rs1_val == -268435457<br>                                                                                                                                              |[0x80000c48]:srli a1, a0, 15<br> [0x80000c4c]:sd a1, 840(sp)<br>    |
| 128|[0x80002408]<br>0x0000000000001BFF|- rs1_val == -536870913<br>                                                                                                                                              |[0x80000c58]:srli a1, a0, 19<br> [0x80000c5c]:sd a1, 848(sp)<br>    |
| 129|[0x80002410]<br>0x000000000017FFFF|- rs1_val == -1073741825<br>                                                                                                                                             |[0x80000c68]:srli a1, a0, 11<br> [0x80000c6c]:sd a1, 856(sp)<br>    |
| 130|[0x80002418]<br>0x00000000000000FF|- rs1_val == -2147483649<br>                                                                                                                                             |[0x80000c7c]:srli a1, a0, 23<br> [0x80000c80]:sd a1, 864(sp)<br>    |
| 131|[0x80002420]<br>0x00000000007FFFFF|- rs1_val == -4294967297<br>                                                                                                                                             |[0x80000c90]:srli a1, a0, 9<br> [0x80000c94]:sd a1, 872(sp)<br>     |
| 132|[0x80002428]<br>0x000000003FFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                             |[0x80000ca4]:srli a1, a0, 2<br> [0x80000ca8]:sd a1, 880(sp)<br>     |
| 133|[0x80002430]<br>0x000000000FFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                            |[0x80000cb8]:srli a1, a0, 4<br> [0x80000cbc]:sd a1, 888(sp)<br>     |
| 134|[0x80002438]<br>0x0000000000007FFF|- rs1_val == -34359738369<br>                                                                                                                                            |[0x80000ccc]:srli a1, a0, 17<br> [0x80000cd0]:sd a1, 896(sp)<br>    |
| 135|[0x80002440]<br>0x000000000000001F|- rs1_val == -137438953473<br>                                                                                                                                           |[0x80000ce0]:srli a1, a0, 27<br> [0x80000ce4]:sd a1, 904(sp)<br>    |
| 136|[0x80002448]<br>0x0000000000001FFF|- rs1_val == -274877906945<br>                                                                                                                                           |[0x80000cf4]:srli a1, a0, 19<br> [0x80000cf8]:sd a1, 912(sp)<br>    |
| 137|[0x80002450]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                           |[0x80000d08]:srli a1, a0, 0<br> [0x80000d0c]:sd a1, 920(sp)<br>     |
| 138|[0x80002458]<br>0x0000000003FFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                          |[0x80000d1c]:srli a1, a0, 6<br> [0x80000d20]:sd a1, 928(sp)<br>     |
| 139|[0x80002460]<br>0x0000000000FFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                          |[0x80000d30]:srli a1, a0, 8<br> [0x80000d34]:sd a1, 936(sp)<br>     |
| 140|[0x80002468]<br>0x0000000000000001|- rs1_val == -4398046511105<br>                                                                                                                                          |[0x80000d44]:srli a1, a0, 31<br> [0x80000d48]:sd a1, 944(sp)<br>    |
| 141|[0x80002470]<br>0x0000000000003FFF|- rs1_val == -8796093022209<br>                                                                                                                                          |[0x80000d58]:srli a1, a0, 18<br> [0x80000d5c]:sd a1, 952(sp)<br>    |
| 142|[0x80002478]<br>0x0000000000000007|- rs1_val == -17592186044417<br>                                                                                                                                         |[0x80000d6c]:srli a1, a0, 29<br> [0x80000d70]:sd a1, 960(sp)<br>    |
| 143|[0x80002480]<br>0x0000000000003FFF|- rs1_val == -35184372088833<br>                                                                                                                                         |[0x80000d80]:srli a1, a0, 18<br> [0x80000d84]:sd a1, 968(sp)<br>    |
| 144|[0x80002488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                         |[0x80000d94]:srli a1, a0, 0<br> [0x80000d98]:sd a1, 976(sp)<br>     |
| 145|[0x80002490]<br>0x000000000001FFFF|- rs1_val == -140737488355329<br>                                                                                                                                        |[0x80000da8]:srli a1, a0, 15<br> [0x80000dac]:sd a1, 984(sp)<br>    |
| 146|[0x80002498]<br>0x000000001FFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                        |[0x80000dbc]:srli a1, a0, 3<br> [0x80000dc0]:sd a1, 992(sp)<br>     |
| 147|[0x800024a0]<br>0x000000003FFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                        |[0x80000dd0]:srli a1, a0, 2<br> [0x80000dd4]:sd a1, 1000(sp)<br>    |
| 148|[0x800024a8]<br>0x00000000001FFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                       |[0x80000de4]:srli a1, a0, 11<br> [0x80000de8]:sd a1, 1008(sp)<br>   |
| 149|[0x800024b0]<br>0x00000000001FFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                       |[0x80000df8]:srli a1, a0, 11<br> [0x80000dfc]:sd a1, 1016(sp)<br>   |
| 150|[0x800024b8]<br>0x0000000000001FFF|- rs1_val == -4503599627370497<br>                                                                                                                                       |[0x80000e0c]:srli a1, a0, 19<br> [0x80000e10]:sd a1, 1024(sp)<br>   |
| 151|[0x800024c8]<br>0x0000000000040000|- rs1_val == 524288<br>                                                                                                                                                  |[0x80000e28]:srli a1, a0, 1<br> [0x80000e2c]:sd a1, 1040(sp)<br>    |
