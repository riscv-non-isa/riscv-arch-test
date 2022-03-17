
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c20')]      |
| SIG_REGION                | [('0x80002210', '0x80002650', '136 dwords')]      |
| COV_LABELS                | srai.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srai.u-01.S    |
| Total Number of coverpoints| 216     |
| Total Coverpoints Hit     | 211      |
| Total Signature Updates   | 135      |
| STAT1                     | 134      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c0c]:SRAI_U t6, t5, 38
      [0x80000c10]:sd t6, 896(ra)
 -- Signature Address: 0x80002640 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : srai.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - rs1_val == -137438953473






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

|s.no|            signature             |                                              coverpoints                                              |                                 code                                 |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : srai.u<br> - rs1 : x3<br> - rd : x3<br> - rs1 == rd<br> - imm_val == 21<br>                 |[0x8000039c]:SRAI_U gp, gp, 21<br> [0x800003a0]:sd gp, 0(tp)<br>      |
|   2|[0x80002218]<br>0x4000000000000000|- rs1 : x11<br> - rd : x23<br> - rs1 != rd<br> - rs1_val == 9223372036854775807<br> - imm_val == 1<br> |[0x800003b0]:SRAI_U s7, a1, 1<br> [0x800003b4]:sd s7, 8(tp)<br>       |
|   3|[0x80002220]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x30<br> - rd : x29<br> - rs1_val == -4611686018427387905<br> - imm_val == 62<br>               |[0x800003c4]:SRAI_U t4, t5, 62<br> [0x800003c8]:sd t4, 16(tp)<br>     |
|   4|[0x80002228]<br>0xFFFFFFFFFFFE0000|- rs1 : x13<br> - rd : x7<br> - rs1_val == -2305843009213693953<br>                                    |[0x800003d8]:SRAI_U t2, a3, 44<br> [0x800003dc]:sd t2, 24(tp)<br>     |
|   5|[0x80002230]<br>0xFFFFFFFFFFFF8000|- rs1 : x14<br> - rd : x25<br> - rs1_val == -1152921504606846977<br>                                   |[0x800003ec]:SRAI_U s9, a4, 45<br> [0x800003f0]:sd s9, 32(tp)<br>     |
|   6|[0x80002238]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x5<br> - rd : x18<br> - rs1_val == -576460752303423489<br>                                     |[0x80000400]:SRAI_U s2, t0, 60<br> [0x80000404]:sd s2, 40(tp)<br>     |
|   7|[0x80002240]<br>0xFFFFFFFFFFE00000|- rs1 : x26<br> - rd : x21<br> - rs1_val == -288230376151711745<br>                                    |[0x80000414]:SRAI_U s5, s10, 37<br> [0x80000418]:sd s5, 48(tp)<br>    |
|   8|[0x80002248]<br>0xFFFF000000000000|- rs1 : x22<br> - rd : x31<br> - rs1_val == -144115188075855873<br>                                    |[0x80000428]:SRAI_U t6, s6, 9<br> [0x8000042c]:sd t6, 56(tp)<br>      |
|   9|[0x80002250]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x17<br> - rd : x11<br> - rs1_val == -72057594037927937<br>                                     |[0x8000043c]:SRAI_U a1, a7, 56<br> [0x80000440]:sd a1, 64(tp)<br>     |
|  10|[0x80002258]<br>0xFFFF800000000000|- rs1 : x29<br> - rd : x5<br> - rs1_val == -36028797018963969<br> - imm_val == 8<br>                   |[0x80000450]:SRAI_U t0, t4, 8<br> [0x80000454]:sd t0, 72(tp)<br>      |
|  11|[0x80002260]<br>0xFFFFE00000000000|- rs1 : x1<br> - rd : x13<br> - rs1_val == -18014398509481985<br>                                      |[0x80000464]:SRAI_U a3, ra, 9<br> [0x80000468]:sd a3, 80(tp)<br>      |
|  12|[0x80002268]<br>0xFFFFFFFFFC000000|- rs1 : x27<br> - rd : x1<br> - rs1_val == -9007199254740993<br>                                       |[0x80000478]:SRAI_U ra, s11, 27<br> [0x8000047c]:sd ra, 88(tp)<br>    |
|  13|[0x80002270]<br>0xFFFFFE0000000000|- rs1 : x24<br> - rd : x17<br> - rs1_val == -4503599627370497<br>                                      |[0x8000048c]:SRAI_U a7, s8, 11<br> [0x80000490]:sd a7, 96(tp)<br>     |
|  14|[0x80002278]<br>0xFFFFFFFFFFFFFFF8|- rs1 : x21<br> - rd : x24<br> - rs1_val == -2251799813685249<br>                                      |[0x800004a0]:SRAI_U s8, s5, 48<br> [0x800004a4]:sd s8, 104(tp)<br>    |
|  15|[0x80002280]<br>0xFFFFFFFFFC000000|- rs1 : x7<br> - rd : x15<br> - rs1_val == -1125899906842625<br>                                       |[0x800004b4]:SRAI_U a5, t2, 24<br> [0x800004b8]:sd a5, 112(tp)<br>    |
|  16|[0x80002288]<br>0xFFFFFFE000000000|- rs1 : x16<br> - rd : x12<br> - rs1_val == -562949953421313<br>                                       |[0x800004c8]:SRAI_U a2, a6, 12<br> [0x800004cc]:sd a2, 120(tp)<br>    |
|  17|[0x80002290]<br>0x0000000000000000|- rs1 : x28<br> - rd : x26<br> - rs1_val == -281474976710657<br>                                       |[0x800004dc]:SRAI_U s10, t3, 51<br> [0x800004e0]:sd s10, 128(tp)<br>  |
|  18|[0x80002298]<br>0x0000000000000000|- rs1 : x15<br> - rd : x8<br> - rs1_val == -140737488355329<br>                                        |[0x800004f0]:SRAI_U fp, a5, 58<br> [0x800004f4]:sd fp, 136(tp)<br>    |
|  19|[0x800022a0]<br>0xFFFFFFFFFE000000|- rs1 : x9<br> - rd : x20<br> - rs1_val == -70368744177665<br>                                         |[0x80000504]:SRAI_U s4, s1, 21<br> [0x80000508]:sd s4, 144(tp)<br>    |
|  20|[0x800022a8]<br>0xFFFFFFFFFC000000|- rs1 : x23<br> - rd : x10<br> - rs1_val == -35184372088833<br>                                        |[0x80000518]:SRAI_U a0, s7, 19<br> [0x8000051c]:sd a0, 152(tp)<br>    |
|  21|[0x800022b0]<br>0x0000000000000000|- rs1 : x25<br> - rd : x30<br> - rs1_val == -17592186044417<br>                                        |[0x8000052c]:SRAI_U t5, s9, 53<br> [0x80000530]:sd t5, 160(tp)<br>    |
|  22|[0x800022b8]<br>0x0000000000000000|- rs1 : x0<br> - rd : x2<br>                                                                           |[0x80000538]:SRAI_U sp, zero, 18<br> [0x8000053c]:sd sp, 168(tp)<br>  |
|  23|[0x800022c0]<br>0xFFFFFFFFFE000000|- rs1 : x2<br> - rd : x9<br> - rs1_val == -4398046511105<br>                                           |[0x80000554]:SRAI_U s1, sp, 17<br> [0x80000558]:sd s1, 0(ra)<br>      |
|  24|[0x800022c8]<br>0xFFFFFFFFFFFE0000|- rs1 : x4<br> - rd : x19<br> - rs1_val == -2199023255553<br>                                          |[0x80000568]:SRAI_U s3, tp, 24<br> [0x8000056c]:sd s3, 8(ra)<br>      |
|  25|[0x800022d0]<br>0xFFFFFFFFFFFFFFF0|- rs1 : x19<br> - rd : x28<br> - rs1_val == -1099511627777<br>                                         |[0x8000057c]:SRAI_U t3, s3, 36<br> [0x80000580]:sd t3, 16(ra)<br>     |
|  26|[0x800022d8]<br>0xFFFFFFF800000000|- rs1 : x20<br> - rd : x4<br> - rs1_val == -549755813889<br> - imm_val == 4<br>                        |[0x80000590]:SRAI_U tp, s4, 4<br> [0x80000594]:sd tp, 24(ra)<br>      |
|  27|[0x800022e0]<br>0xFFFFFFFFF8000000|- rs1 : x18<br> - rd : x14<br> - rs1_val == -274877906945<br>                                          |[0x800005a4]:SRAI_U a4, s2, 11<br> [0x800005a8]:sd a4, 32(ra)<br>     |
|  28|[0x800022e8]<br>0x0000000000000000|- rs1 : x31<br> - rd : x0<br> - rs1_val == -137438953473<br>                                           |[0x800005b8]:SRAI_U zero, t6, 38<br> [0x800005bc]:sd zero, 40(ra)<br> |
|  29|[0x800022f0]<br>0x0000000000000000|- rs1 : x6<br> - rd : x16<br> - rs1_val == -68719476737<br> - imm_val == 61<br>                        |[0x800005cc]:SRAI_U a6, t1, 61<br> [0x800005d0]:sd a6, 48(ra)<br>     |
|  30|[0x800022f8]<br>0xFFFFFFFFFFFFF800|- rs1 : x8<br> - rd : x27<br> - rs1_val == -34359738369<br>                                            |[0x800005e0]:SRAI_U s11, fp, 24<br> [0x800005e4]:sd s11, 56(ra)<br>   |
|  31|[0x80002300]<br>0x0000000000000000|- rs1 : x12<br> - rd : x6<br> - rs1_val == -17179869185<br>                                            |[0x800005f4]:SRAI_U t1, a2, 48<br> [0x800005f8]:sd t1, 64(ra)<br>     |
|  32|[0x80002308]<br>0xFFFFFFFFF0000000|- rs1 : x10<br> - rd : x22<br> - rs1_val == -8589934593<br>                                            |[0x80000608]:SRAI_U s6, a0, 5<br> [0x8000060c]:sd s6, 72(ra)<br>      |
|  33|[0x80002310]<br>0xFFFFFFFFFFFFFE00|- rs1_val == -4294967297<br>                                                                           |[0x8000061c]:SRAI_U t6, t5, 23<br> [0x80000620]:sd t6, 80(ra)<br>     |
|  34|[0x80002318]<br>0x0000000000000000|- rs1_val == -2147483649<br>                                                                           |[0x80000630]:SRAI_U t6, t5, 39<br> [0x80000634]:sd t6, 88(ra)<br>     |
|  35|[0x80002320]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1073741825<br>                                                                           |[0x80000640]:SRAI_U t6, t5, 30<br> [0x80000644]:sd t6, 96(ra)<br>     |
|  36|[0x80002328]<br>0xFFFFFFFFFFFFE000|- rs1_val == -536870913<br> - imm_val == 16<br>                                                        |[0x80000650]:SRAI_U t6, t5, 16<br> [0x80000654]:sd t6, 104(ra)<br>    |
|  37|[0x80002330]<br>0x0000000000000000|- rs1_val == -268435457<br>                                                                            |[0x80000660]:SRAI_U t6, t5, 62<br> [0x80000664]:sd t6, 112(ra)<br>    |
|  38|[0x80002338]<br>0x0000000000000000|- rs1_val == -134217729<br>                                                                            |[0x80000670]:SRAI_U t6, t5, 52<br> [0x80000674]:sd t6, 120(ra)<br>    |
|  39|[0x80002340]<br>0xFFFFFFFFFFFF0000|- rs1_val == -67108865<br>                                                                             |[0x80000680]:SRAI_U t6, t5, 10<br> [0x80000684]:sd t6, 128(ra)<br>    |
|  40|[0x80002348]<br>0x0000000000000000|- rs1_val == -33554433<br>                                                                             |[0x80000690]:SRAI_U t6, t5, 40<br> [0x80000694]:sd t6, 136(ra)<br>    |
|  41|[0x80002350]<br>0x0000000000000000|- rs1_val == -16777217<br>                                                                             |[0x800006a0]:SRAI_U t6, t5, 41<br> [0x800006a4]:sd t6, 144(ra)<br>    |
|  42|[0x80002358]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == -8388609<br>                                                                              |[0x800006b0]:SRAI_U t6, t5, 18<br> [0x800006b4]:sd t6, 152(ra)<br>    |
|  43|[0x80002360]<br>0x0000000000000000|- rs1_val == -4194305<br>                                                                              |[0x800006c0]:SRAI_U t6, t5, 48<br> [0x800006c4]:sd t6, 160(ra)<br>    |
|  44|[0x80002368]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2097153<br>                                                                              |[0x800006d0]:SRAI_U t6, t5, 22<br> [0x800006d4]:sd t6, 168(ra)<br>    |
|  45|[0x80002370]<br>0xFFFFFFFFFFFF8000|- rs1_val == -1048577<br>                                                                              |[0x800006e0]:SRAI_U t6, t5, 5<br> [0x800006e4]:sd t6, 176(ra)<br>     |
|  46|[0x80002378]<br>0x0000000000000000|- rs1_val == -524289<br>                                                                               |[0x800006f0]:SRAI_U t6, t5, 63<br> [0x800006f4]:sd t6, 184(ra)<br>    |
|  47|[0x80002380]<br>0x0000000000000000|- rs1_val == -262145<br> - imm_val == 55<br>                                                           |[0x80000700]:SRAI_U t6, t5, 55<br> [0x80000704]:sd t6, 192(ra)<br>    |
|  48|[0x80002388]<br>0x0000000000000000|- rs1_val == -131073<br>                                                                               |[0x80000710]:SRAI_U t6, t5, 20<br> [0x80000714]:sd t6, 200(ra)<br>    |
|  49|[0x80002390]<br>0x0000000000000000|- rs1_val == -65537<br>                                                                                |[0x80000720]:SRAI_U t6, t5, 35<br> [0x80000724]:sd t6, 208(ra)<br>    |
|  50|[0x80002398]<br>0xFFFFFFFFFFFFFF00|- rs1_val == -32769<br>                                                                                |[0x80000730]:SRAI_U t6, t5, 7<br> [0x80000734]:sd t6, 216(ra)<br>     |
|  51|[0x800023a0]<br>0x0000000000000000|- rs1_val == -16385<br>                                                                                |[0x80000740]:SRAI_U t6, t5, 54<br> [0x80000744]:sd t6, 224(ra)<br>    |
|  52|[0x800023a8]<br>0x0000000000000000|- rs1_val == -8193<br>                                                                                 |[0x80000750]:SRAI_U t6, t5, 51<br> [0x80000754]:sd t6, 232(ra)<br>    |
|  53|[0x800023b0]<br>0x0000000000000000|- rs1_val == -4097<br>                                                                                 |[0x80000760]:SRAI_U t6, t5, 44<br> [0x80000764]:sd t6, 240(ra)<br>    |
|  54|[0x800023b8]<br>0x0000000000000000|- rs1_val == -2049<br> - imm_val == 47<br>                                                             |[0x80000770]:SRAI_U t6, t5, 47<br> [0x80000774]:sd t6, 248(ra)<br>    |
|  55|[0x800023c0]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -1025<br>                                                                                 |[0x8000077c]:SRAI_U t6, t5, 9<br> [0x80000780]:sd t6, 256(ra)<br>     |
|  56|[0x800023c8]<br>0x0000000000000000|- rs1_val == -513<br>                                                                                  |[0x80000788]:SRAI_U t6, t5, 13<br> [0x8000078c]:sd t6, 264(ra)<br>    |
|  57|[0x800023d0]<br>0x0000000000000000|- rs1_val == -257<br> - imm_val == 42<br>                                                              |[0x80000794]:SRAI_U t6, t5, 42<br> [0x80000798]:sd t6, 272(ra)<br>    |
|  58|[0x800023d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -129<br>                                                                                  |[0x800007a0]:SRAI_U t6, t5, 8<br> [0x800007a4]:sd t6, 280(ra)<br>     |
|  59|[0x800023e0]<br>0x0000000000000000|- rs1_val == -65<br>                                                                                   |[0x800007ac]:SRAI_U t6, t5, 61<br> [0x800007b0]:sd t6, 288(ra)<br>    |
|  60|[0x800023e8]<br>0x0000000000000000|- rs1_val == -33<br>                                                                                   |[0x800007b8]:SRAI_U t6, t5, 12<br> [0x800007bc]:sd t6, 296(ra)<br>    |
|  61|[0x800023f0]<br>0x0000000000000000|- rs1_val == -17<br> - imm_val == 59<br>                                                               |[0x800007c4]:SRAI_U t6, t5, 59<br> [0x800007c8]:sd t6, 304(ra)<br>    |
|  62|[0x800023f8]<br>0x0000000000000000|- rs1_val == -9<br>                                                                                    |[0x800007d0]:SRAI_U t6, t5, 13<br> [0x800007d4]:sd t6, 312(ra)<br>    |
|  63|[0x80002400]<br>0x0000000000000000|- rs1_val == -5<br>                                                                                    |[0x800007dc]:SRAI_U t6, t5, 47<br> [0x800007e0]:sd t6, 320(ra)<br>    |
|  64|[0x80002408]<br>0x0000000000000000|- rs1_val == -3<br>                                                                                    |[0x800007e8]:SRAI_U t6, t5, 13<br> [0x800007ec]:sd t6, 328(ra)<br>    |
|  65|[0x80002410]<br>0x0000000000000000|- rs1_val == -2<br>                                                                                    |[0x800007f4]:SRAI_U t6, t5, 9<br> [0x800007f8]:sd t6, 336(ra)<br>     |
|  66|[0x80002418]<br>0x0000000000000000|- imm_val == 31<br>                                                                                    |[0x80000800]:SRAI_U t6, t5, 31<br> [0x80000804]:sd t6, 344(ra)<br>    |
|  67|[0x80002420]<br>0xFFFFE00000000000|- rs1_val == -9223372036854775808<br>                                                                  |[0x80000810]:SRAI_U t6, t5, 18<br> [0x80000814]:sd t6, 352(ra)<br>    |
|  68|[0x80002428]<br>0x0000000000040000|- rs1_val == 4611686018427387904<br>                                                                   |[0x80000820]:SRAI_U t6, t5, 44<br> [0x80000824]:sd t6, 360(ra)<br>    |
|  69|[0x80002430]<br>0x0000000000800000|- rs1_val == 2305843009213693952<br>                                                                   |[0x80000830]:SRAI_U t6, t5, 38<br> [0x80000834]:sd t6, 368(ra)<br>    |
|  70|[0x80002438]<br>0x0000000000800000|- rs1_val == 1152921504606846976<br>                                                                   |[0x80000840]:SRAI_U t6, t5, 37<br> [0x80000844]:sd t6, 376(ra)<br>    |
|  71|[0x80002440]<br>0x0010000000000000|- rs1_val == 576460752303423488<br>                                                                    |[0x80000850]:SRAI_U t6, t5, 7<br> [0x80000854]:sd t6, 384(ra)<br>     |
|  72|[0x80002448]<br>0x0000000000000000|- rs1_val == 64<br>                                                                                    |[0x8000085c]:SRAI_U t6, t5, 55<br> [0x80000860]:sd t6, 392(ra)<br>    |
|  73|[0x80002450]<br>0x0000000000000000|- rs1_val == 32<br>                                                                                    |[0x80000868]:SRAI_U t6, t5, 16<br> [0x8000086c]:sd t6, 400(ra)<br>    |
|  74|[0x80002458]<br>0x0000000000000000|- rs1_val == 16<br>                                                                                    |[0x80000874]:SRAI_U t6, t5, 6<br> [0x80000878]:sd t6, 408(ra)<br>     |
|  75|[0x80002460]<br>0x0000000000000000|- rs1_val == 8<br> - imm_val == 32<br>                                                                 |[0x80000880]:SRAI_U t6, t5, 32<br> [0x80000884]:sd t6, 416(ra)<br>    |
|  76|[0x80002468]<br>0x0000000000000000|- rs1_val == 4<br>                                                                                     |[0x8000088c]:SRAI_U t6, t5, 17<br> [0x80000890]:sd t6, 424(ra)<br>    |
|  77|[0x80002470]<br>0x0000000000000000|- rs1_val == 2<br>                                                                                     |[0x80000898]:SRAI_U t6, t5, 62<br> [0x8000089c]:sd t6, 432(ra)<br>    |
|  78|[0x80002478]<br>0x0000000000000000|- rs1_val == 1<br>                                                                                     |[0x800008a4]:SRAI_U t6, t5, 21<br> [0x800008a8]:sd t6, 440(ra)<br>    |
|  79|[0x80002480]<br>0xFFFFFFFFFFFFFFFF|- imm_val == 2<br>                                                                                     |[0x800008b0]:SRAI_U t6, t5, 2<br> [0x800008b4]:sd t6, 448(ra)<br>     |
|  80|[0x80002488]<br>0xFFFFFFF555555555|- rs1_val == -6148914691236517206<br>                                                                  |[0x800008d8]:SRAI_U t6, t5, 27<br> [0x800008dc]:sd t6, 456(ra)<br>    |
|  81|[0x80002490]<br>0x0000055555555555|- rs1_val == 6148914691236517205<br>                                                                   |[0x80000900]:SRAI_U t6, t5, 20<br> [0x80000904]:sd t6, 464(ra)<br>    |
|  82|[0x80002498]<br>0x0000000000020000|- rs1_val == 288230376151711744<br>                                                                    |[0x80000910]:SRAI_U t6, t5, 41<br> [0x80000914]:sd t6, 472(ra)<br>    |
|  83|[0x800024a0]<br>0x0001000000000000|- rs1_val == 144115188075855872<br>                                                                    |[0x80000920]:SRAI_U t6, t5, 9<br> [0x80000924]:sd t6, 480(ra)<br>     |
|  84|[0x800024a8]<br>0x0000000000000010|- rs1_val == 72057594037927936<br>                                                                     |[0x80000930]:SRAI_U t6, t5, 52<br> [0x80000934]:sd t6, 488(ra)<br>    |
|  85|[0x800024b0]<br>0x0000000100000000|- rs1_val == 36028797018963968<br>                                                                     |[0x80000940]:SRAI_U t6, t5, 23<br> [0x80000944]:sd t6, 496(ra)<br>    |
|  86|[0x800024b8]<br>0x0000008000000000|- rs1_val == 18014398509481984<br>                                                                     |[0x80000950]:SRAI_U t6, t5, 15<br> [0x80000954]:sd t6, 504(ra)<br>    |
|  87|[0x800024c0]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                      |[0x80000960]:SRAI_U t6, t5, 56<br> [0x80000964]:sd t6, 512(ra)<br>    |
|  88|[0x800024c8]<br>0x0000000004000000|- rs1_val == 4503599627370496<br>                                                                      |[0x80000970]:SRAI_U t6, t5, 26<br> [0x80000974]:sd t6, 520(ra)<br>    |
|  89|[0x800024d0]<br>0x0008000000000000|- rs1_val == 2251799813685248<br>                                                                      |[0x80000980]:SRAI_U t6, t5, 0<br> [0x80000984]:sd t6, 528(ra)<br>     |
|  90|[0x800024d8]<br>0x0000000000200000|- rs1_val == 1125899906842624<br>                                                                      |[0x80000990]:SRAI_U t6, t5, 29<br> [0x80000994]:sd t6, 536(ra)<br>    |
|  91|[0x800024e0]<br>0x0000000000000001|- rs1_val == 562949953421312<br>                                                                       |[0x800009a0]:SRAI_U t6, t5, 50<br> [0x800009a4]:sd t6, 544(ra)<br>    |
|  92|[0x800024e8]<br>0x0000000000200000|- rs1_val == 281474976710656<br>                                                                       |[0x800009b0]:SRAI_U t6, t5, 27<br> [0x800009b4]:sd t6, 552(ra)<br>    |
|  93|[0x800024f0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                       |[0x800009c0]:SRAI_U t6, t5, 55<br> [0x800009c4]:sd t6, 560(ra)<br>    |
|  94|[0x800024f8]<br>0x0000000000000100|- rs1_val == 70368744177664<br>                                                                        |[0x800009d0]:SRAI_U t6, t5, 38<br> [0x800009d4]:sd t6, 568(ra)<br>    |
|  95|[0x80002500]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                        |[0x800009e0]:SRAI_U t6, t5, 47<br> [0x800009e4]:sd t6, 576(ra)<br>    |
|  96|[0x80002508]<br>0x0000000000000001|- rs1_val == 17592186044416<br>                                                                        |[0x800009f0]:SRAI_U t6, t5, 45<br> [0x800009f4]:sd t6, 584(ra)<br>    |
|  97|[0x80002510]<br>0x0000000000100000|- rs1_val == 8796093022208<br>                                                                         |[0x80000a00]:SRAI_U t6, t5, 23<br> [0x80000a04]:sd t6, 592(ra)<br>    |
|  98|[0x80002518]<br>0x0000000000000020|- rs1_val == 4398046511104<br>                                                                         |[0x80000a10]:SRAI_U t6, t5, 37<br> [0x80000a14]:sd t6, 600(ra)<br>    |
|  99|[0x80002520]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                         |[0x80000a20]:SRAI_U t6, t5, 47<br> [0x80000a24]:sd t6, 608(ra)<br>    |
| 100|[0x80002528]<br>0x0000001000000000|- rs1_val == 1099511627776<br>                                                                         |[0x80000a30]:SRAI_U t6, t5, 4<br> [0x80000a34]:sd t6, 616(ra)<br>     |
| 101|[0x80002530]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                          |[0x80000a40]:SRAI_U t6, t5, 48<br> [0x80000a44]:sd t6, 624(ra)<br>    |
| 102|[0x80002538]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                          |[0x80000a50]:SRAI_U t6, t5, 62<br> [0x80000a54]:sd t6, 632(ra)<br>    |
| 103|[0x80002540]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                          |[0x80000a60]:SRAI_U t6, t5, 58<br> [0x80000a64]:sd t6, 640(ra)<br>    |
| 104|[0x80002548]<br>0x0000000000020000|- rs1_val == 68719476736<br>                                                                           |[0x80000a70]:SRAI_U t6, t5, 19<br> [0x80000a74]:sd t6, 648(ra)<br>    |
| 105|[0x80002550]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                           |[0x80000a80]:SRAI_U t6, t5, 44<br> [0x80000a84]:sd t6, 656(ra)<br>    |
| 106|[0x80002558]<br>0x0000000000000400|- rs1_val == 17179869184<br>                                                                           |[0x80000a90]:SRAI_U t6, t5, 24<br> [0x80000a94]:sd t6, 664(ra)<br>    |
| 107|[0x80002560]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                            |[0x80000aa0]:SRAI_U t6, t5, 39<br> [0x80000aa4]:sd t6, 672(ra)<br>    |
| 108|[0x80002568]<br>0x0000000000008000|- rs1_val == 4294967296<br>                                                                            |[0x80000ab0]:SRAI_U t6, t5, 17<br> [0x80000ab4]:sd t6, 680(ra)<br>    |
| 109|[0x80002570]<br>0x0000000000000002|- rs1_val == 2147483648<br>                                                                            |[0x80000ac0]:SRAI_U t6, t5, 30<br> [0x80000ac4]:sd t6, 688(ra)<br>    |
| 110|[0x80002578]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                                            |[0x80000acc]:SRAI_U t6, t5, 39<br> [0x80000ad0]:sd t6, 696(ra)<br>    |
| 111|[0x80002580]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                             |[0x80000ad8]:SRAI_U t6, t5, 33<br> [0x80000adc]:sd t6, 704(ra)<br>    |
| 112|[0x80002588]<br>0x0000000000000020|- rs1_val == 268435456<br>                                                                             |[0x80000ae4]:SRAI_U t6, t5, 23<br> [0x80000ae8]:sd t6, 712(ra)<br>    |
| 113|[0x80002590]<br>0x0000000000000100|- rs1_val == 134217728<br>                                                                             |[0x80000af0]:SRAI_U t6, t5, 19<br> [0x80000af4]:sd t6, 720(ra)<br>    |
| 114|[0x80002598]<br>0x0000000000000000|- rs1_val == 67108864<br>                                                                              |[0x80000afc]:SRAI_U t6, t5, 32<br> [0x80000b00]:sd t6, 728(ra)<br>    |
| 115|[0x800025a0]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                              |[0x80000b08]:SRAI_U t6, t5, 58<br> [0x80000b0c]:sd t6, 736(ra)<br>    |
| 116|[0x800025a8]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                              |[0x80000b14]:SRAI_U t6, t5, 55<br> [0x80000b18]:sd t6, 744(ra)<br>    |
| 117|[0x800025b0]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                               |[0x80000b20]:SRAI_U t6, t5, 41<br> [0x80000b24]:sd t6, 752(ra)<br>    |
| 118|[0x800025b8]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                               |[0x80000b2c]:SRAI_U t6, t5, 55<br> [0x80000b30]:sd t6, 760(ra)<br>    |
| 119|[0x800025c0]<br>0x0000000000040000|- rs1_val == 2097152<br>                                                                               |[0x80000b38]:SRAI_U t6, t5, 3<br> [0x80000b3c]:sd t6, 768(ra)<br>     |
| 120|[0x800025c8]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                               |[0x80000b44]:SRAI_U t6, t5, 31<br> [0x80000b48]:sd t6, 776(ra)<br>    |
| 121|[0x800025d0]<br>0x0000000000000000|- rs1_val == 524288<br>                                                                                |[0x80000b50]:SRAI_U t6, t5, 28<br> [0x80000b54]:sd t6, 784(ra)<br>    |
| 122|[0x800025d8]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                |[0x80000b5c]:SRAI_U t6, t5, 31<br> [0x80000b60]:sd t6, 792(ra)<br>    |
| 123|[0x800025e0]<br>0x0000000000000000|- rs1_val == 131072<br>                                                                                |[0x80000b68]:SRAI_U t6, t5, 34<br> [0x80000b6c]:sd t6, 800(ra)<br>    |
| 124|[0x800025e8]<br>0x0000000000000008|- rs1_val == 65536<br>                                                                                 |[0x80000b74]:SRAI_U t6, t5, 13<br> [0x80000b78]:sd t6, 808(ra)<br>    |
| 125|[0x800025f0]<br>0x0000000000000000|- rs1_val == 32768<br>                                                                                 |[0x80000b80]:SRAI_U t6, t5, 48<br> [0x80000b84]:sd t6, 816(ra)<br>    |
| 126|[0x800025f8]<br>0x0000000000000001|- rs1_val == 16384<br>                                                                                 |[0x80000b8c]:SRAI_U t6, t5, 15<br> [0x80000b90]:sd t6, 824(ra)<br>    |
| 127|[0x80002600]<br>0x0000000000000000|- rs1_val == 8192<br>                                                                                  |[0x80000b98]:SRAI_U t6, t5, 15<br> [0x80000b9c]:sd t6, 832(ra)<br>    |
| 128|[0x80002608]<br>0x0000000000000000|- rs1_val == 4096<br>                                                                                  |[0x80000ba4]:SRAI_U t6, t5, 35<br> [0x80000ba8]:sd t6, 840(ra)<br>    |
| 129|[0x80002610]<br>0x0000000000000000|- rs1_val == 2048<br>                                                                                  |[0x80000bb4]:SRAI_U t6, t5, 34<br> [0x80000bb8]:sd t6, 848(ra)<br>    |
| 130|[0x80002618]<br>0x0000000000000000|- rs1_val == 1024<br>                                                                                  |[0x80000bc0]:SRAI_U t6, t5, 25<br> [0x80000bc4]:sd t6, 856(ra)<br>    |
| 131|[0x80002620]<br>0x0000000000000000|- rs1_val == 512<br>                                                                                   |[0x80000bcc]:SRAI_U t6, t5, 38<br> [0x80000bd0]:sd t6, 864(ra)<br>    |
| 132|[0x80002628]<br>0x0000000000000000|- rs1_val == 256<br>                                                                                   |[0x80000bd8]:SRAI_U t6, t5, 62<br> [0x80000bdc]:sd t6, 872(ra)<br>    |
| 133|[0x80002630]<br>0x0000000000000000|- rs1_val == 128<br>                                                                                   |[0x80000be4]:SRAI_U t6, t5, 32<br> [0x80000be8]:sd t6, 880(ra)<br>    |
| 134|[0x80002638]<br>0xFFFFFFFFFE000000|- rs1_val == -8796093022209<br>                                                                        |[0x80000bf8]:SRAI_U t6, t5, 18<br> [0x80000bfc]:sd t6, 888(ra)<br>    |
