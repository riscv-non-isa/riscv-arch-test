
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000b00')]      |
| SIG_REGION                | [('0x80002210', '0x800023d0', '56 dwords')]      |
| COV_LABELS                | sunpkd830      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sunpkd830-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 225      |
| Total Signature Updates   | 55      |
| STAT1                     | 53      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000964]:SUNPKD830 t6, t5
      [0x80000968]:sd t6, 168(ra)
 -- Signature Address: 0x80002368 Data: 0x0005000300000006
 -- Redundant Coverpoints hit by the op
      - opcode : sunpkd830
      - rs1 : x30
      - rd : x31
      - rs1_b6_val == -1
      - rs1_b3_val == 0
      - rs1_b2_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000acc]:SUNPKD830 t6, t5
      [0x80000ad0]:sd t6, 248(ra)
 -- Signature Address: 0x800023b8 Data: 0x0040FFEFFFF8FFF6
 -- Redundant Coverpoints hit by the op
      - opcode : sunpkd830
      - rs1 : x30
      - rd : x31
      - rs1_b7_val == 64
      - rs1_b6_val == -86
      - rs1_b5_val == -33
      - rs1_b4_val == -17






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

|s.no|            signature             |                                                                                coverpoints                                                                                 |                                code                                 |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0001FFC0FFFAFF80|- opcode : sunpkd830<br> - rs1 : x26<br> - rd : x16<br> - rs1_b0_val == -128<br> - rs1_b7_val == 1<br> - rs1_b6_val == 8<br> - rs1_b5_val == 0<br> - rs1_b2_val == -86<br>  |[0x800003b0]:SUNPKD830 a6, s10<br> [0x800003b4]:sd a6, 0(t0)<br>     |
|   2|[0x80002218]<br>0xFFAAFF80FFF90020|- rs1 : x3<br> - rd : x27<br> - rs1_b7_val == -86<br> - rs1_b6_val == -33<br> - rs1_b4_val == -128<br> - rs1_b2_val == 4<br> - rs1_b1_val == -65<br> - rs1_b0_val == 32<br> |[0x800003d8]:SUNPKD830 s11, gp<br> [0x800003dc]:sd s11, 8(t0)<br>    |
|   3|[0x80002220]<br>0x0055FFFC00030009|- rs1 : x29<br> - rd : x9<br> - rs1_b7_val == 85<br> - rs1_b6_val == -65<br> - rs1_b5_val == 2<br> - rs1_b2_val == -2<br> - rs1_b1_val == -9<br>                            |[0x80000400]:SUNPKD830 s1, t4<br> [0x80000404]:sd s1, 16(t0)<br>     |
|   4|[0x80002228]<br>0x007F00090055FFC0|- rs1 : x15<br> - rd : x28<br> - rs1_b7_val == 127<br> - rs1_b6_val == 1<br> - rs1_b5_val == 4<br> - rs1_b3_val == 85<br> - rs1_b1_val == -1<br>                            |[0x80000428]:SUNPKD830 t3, a5<br> [0x8000042c]:sd t3, 24(t0)<br>     |
|   5|[0x80002230]<br>0xFFBFFFFF00010009|- rs1 : x19<br> - rd : x23<br> - rs1_b7_val == -65<br> - rs1_b6_val == 0<br> - rs1_b4_val == -1<br> - rs1_b3_val == 1<br> - rs1_b2_val == 32<br> - rs1_b1_val == -5<br>     |[0x80000448]:SUNPKD830 s7, s3<br> [0x8000044c]:sd s7, 32(t0)<br>     |
|   6|[0x80002238]<br>0xFFDF0002FFFFFFEF|- rs1 : x22<br> - rd : x7<br> - rs1_b7_val == -33<br> - rs1_b6_val == 85<br> - rs1_b4_val == 2<br> - rs1_b3_val == -1<br> - rs1_b0_val == -17<br>                           |[0x80000468]:SUNPKD830 t2, s6<br> [0x8000046c]:sd t2, 40(t0)<br>     |
|   7|[0x80002240]<br>0xFFEFFFF8FF80FFFD|- rs1 : x30<br> - rd : x26<br> - rs1_b7_val == -17<br> - rs1_b5_val == 64<br> - rs1_b3_val == -128<br> - rs1_b1_val == -17<br> - rs1_b0_val == -3<br>                       |[0x80000488]:SUNPKD830 s10, t5<br> [0x8000048c]:sd s10, 48(t0)<br>   |
|   8|[0x80002248]<br>0xFFF7FFF800200002|- rs1 : x10<br> - rd : x15<br> - rs1_b7_val == -9<br> - rs1_b3_val == 32<br> - rs1_b1_val == 32<br> - rs1_b0_val == 2<br>                                                   |[0x800004a8]:SUNPKD830 a5, a0<br> [0x800004ac]:sd a5, 56(t0)<br>     |
|   9|[0x80002250]<br>0xFFFBFF80FFC00004|- rs1 : x14<br> - rd : x11<br> - rs1_b7_val == -5<br> - rs1_b6_val == -3<br> - rs1_b2_val == -1<br> - rs1_b1_val == 4<br> - rs1_b0_val == 4<br>                             |[0x800004c8]:SUNPKD830 a1, a4<br> [0x800004cc]:sd a1, 64(t0)<br>     |
|  10|[0x80002258]<br>0xFFFD0006003F0007|- rs1 : x11<br> - rd : x18<br> - rs1_b7_val == -3<br> - rs1_b6_val == -86<br> - rs1_b5_val == 16<br> - rs1_b2_val == 127<br> - rs1_b1_val == 1<br>                          |[0x800004e8]:SUNPKD830 s2, a1<br> [0x800004ec]:sd s2, 72(t0)<br>     |
|  11|[0x80002260]<br>0xFFFEFFF70008FFC0|- rs1 : x21<br> - rd : x30<br> - rs1_b7_val == -2<br> - rs1_b4_val == -9<br> - rs1_b3_val == 8<br> - rs1_b1_val == -3<br>                                                   |[0x80000508]:SUNPKD830 t5, s5<br> [0x8000050c]:sd t5, 80(t0)<br>     |
|  12|[0x80002268]<br>0xFF80000400030020|- rs1 : x16<br> - rd : x2<br> - rs1_b7_val == -128<br> - rs1_b6_val == -5<br> - rs1_b5_val == -17<br> - rs1_b4_val == 4<br>                                                 |[0x80000528]:SUNPKD830 sp, a6<br> [0x8000052c]:sd sp, 88(t0)<br>     |
|  13|[0x80002270]<br>0x0000000000000000|- rs1 : x1<br> - rd : x0<br> - rs1_b7_val == 64<br> - rs1_b5_val == -33<br> - rs1_b4_val == -17<br>                                                                         |[0x80000548]:SUNPKD830 zero, ra<br> [0x8000054c]:sd zero, 96(t0)<br> |
|  14|[0x80002278]<br>0x0020FFFF00040010|- rs1 : x6<br> - rd : x1<br> - rs1_b7_val == 32<br> - rs1_b3_val == 4<br> - rs1_b2_val == 16<br> - rs1_b0_val == 16<br>                                                     |[0x80000568]:SUNPKD830 ra, t1<br> [0x8000056c]:sd ra, 104(t0)<br>    |
|  15|[0x80002280]<br>0x0010FFDF00030008|- rs1 : x4<br> - rd : x3<br> - rs1_b7_val == 16<br> - rs1_b6_val == 16<br> - rs1_b4_val == -33<br> - rs1_b2_val == -17<br> - rs1_b0_val == 8<br>                            |[0x80000590]:SUNPKD830 gp, tp<br> [0x80000594]:sd gp, 112(t0)<br>    |
|  16|[0x80002288]<br>0x0008FFFCFFFF0009|- rs1 : x31<br> - rd : x20<br> - rs1_b7_val == 8<br> - rs1_b6_val == 64<br> - rs1_b5_val == 8<br>                                                                           |[0x800005b0]:SUNPKD830 s4, t6<br> [0x800005b4]:sd s4, 120(t0)<br>    |
|  17|[0x80002290]<br>0x0000000000000000|- rs1 : x0<br> - rd : x10<br> - rs1_b7_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>           |[0x800005d0]:SUNPKD830 a0, zero<br> [0x800005d4]:sd a0, 128(t0)<br>  |
|  18|[0x80002298]<br>0x0002FFDFFFFE0000|- rs1 : x20<br> - rd : x31<br> - rs1_b7_val == 2<br> - rs1_b3_val == -2<br> - rs1_b1_val == 85<br>                                                                          |[0x800005f8]:SUNPKD830 t6, s4<br> [0x800005fc]:sd t6, 136(t0)<br>    |
|  19|[0x800022a0]<br>0x00000005FFFD0002|- rs1 : x17<br> - rd : x21<br> - rs1_b3_val == -3<br> - rs1_b1_val == 8<br>                                                                                                 |[0x80000620]:SUNPKD830 s5, a7<br> [0x80000624]:sd s5, 144(t0)<br>    |
|  20|[0x800022a8]<br>0xFFFF0001007FFFF6|- rs1 : x23<br> - rd : x12<br> - rs1_b7_val == -1<br> - rs1_b5_val == -128<br> - rs1_b4_val == 1<br> - rs1_b3_val == 127<br> - rs1_b2_val == -65<br>                        |[0x80000638]:SUNPKD830 a2, s7<br> [0x8000063c]:sd a2, 152(t0)<br>    |
|  21|[0x800022b0]<br>0x00070000FFFC0009|- rs1 : x13<br> - rd : x14<br> - rs1_b6_val == 127<br> - rs1_b5_val == 1<br>                                                                                                |[0x80000658]:SUNPKD830 a4, a3<br> [0x8000065c]:sd a4, 160(t0)<br>    |
|  22|[0x800022b8]<br>0x00040020FFFA0009|- rs1 : x8<br> - rd : x17<br> - rs1_b7_val == 4<br> - rs1_b6_val == -17<br> - rs1_b4_val == 32<br> - rs1_b1_val == -128<br>                                                 |[0x80000680]:SUNPKD830 a7, fp<br> [0x80000684]:sd a7, 168(t0)<br>    |
|  23|[0x800022c0]<br>0x0040000800020004|- rs1 : x18<br> - rd : x22<br> - rs1_b6_val == -9<br> - rs1_b4_val == 8<br> - rs1_b3_val == 2<br>                                                                           |[0x800006a8]:SUNPKD830 s6, s2<br> [0x800006ac]:sd s6, 0(ra)<br>      |
|  24|[0x800022c8]<br>0xFFFF0000FFFC0001|- rs1 : x28<br> - rd : x6<br> - rs1_b1_val == 64<br> - rs1_b0_val == 1<br>                                                                                                  |[0x800006c8]:SUNPKD830 t1, t3<br> [0x800006cc]:sd t1, 8(ra)<br>      |
|  25|[0x800022d0]<br>0xFFF7000300060009|- rs1 : x12<br> - rd : x5<br> - rs1_b5_val == -2<br> - rs1_b2_val == -128<br> - rs1_b1_val == 16<br>                                                                        |[0x800006f0]:SUNPKD830 t0, a2<br> [0x800006f4]:sd t0, 16(ra)<br>     |
|  26|[0x800022d8]<br>0xFFC0FFBF00060010|- rs1 : x7<br> - rd : x24<br> - rs1_b4_val == -65<br> - rs1_b2_val == 1<br> - rs1_b1_val == 2<br>                                                                           |[0x80000710]:SUNPKD830 s8, t2<br> [0x80000714]:sd s8, 24(ra)<br>     |
|  27|[0x800022e0]<br>0xFFFA0040FFFDFFF7|- rs1 : x9<br> - rd : x25<br> - rs1_b5_val == 127<br> - rs1_b4_val == 64<br> - rs1_b0_val == -9<br>                                                                         |[0x80000730]:SUNPKD830 s9, s1<br> [0x80000734]:sd s9, 32(ra)<br>     |
|  28|[0x800022e8]<br>0xFFFF004000050055|- rs1 : x5<br> - rd : x13<br> - rs1_b6_val == 32<br> - rs1_b1_val == 127<br> - rs1_b0_val == 85<br>                                                                         |[0x80000750]:SUNPKD830 a3, t0<br> [0x80000754]:sd a3, 40(ra)<br>     |
|  29|[0x800022f0]<br>0x000200400040007F|- rs1 : x2<br> - rd : x29<br> - rs1_b6_val == 2<br> - rs1_b3_val == 64<br> - rs1_b0_val == 127<br>                                                                          |[0x80000770]:SUNPKD830 t4, sp<br> [0x80000774]:sd t4, 48(ra)<br>     |
|  30|[0x800022f8]<br>0x0008007FFFFAFFBF|- rs1 : x24<br> - rd : x8<br> - rs1_b4_val == 127<br> - rs1_b0_val == -65<br>                                                                                               |[0x80000790]:SUNPKD830 fp, s8<br> [0x80000794]:sd fp, 56(ra)<br>     |
|  31|[0x80002300]<br>0xFFEFFFFDFF80FFDF|- rs1 : x27<br> - rd : x4<br> - rs1_b5_val == 85<br> - rs1_b4_val == -3<br> - rs1_b0_val == -33<br>                                                                         |[0x800007b0]:SUNPKD830 tp, s11<br> [0x800007b4]:sd tp, 64(ra)<br>    |
|  32|[0x80002308]<br>0x0000FFFBFFDFFFFB|- rs1 : x25<br> - rd : x19<br> - rs1_b5_val == -5<br> - rs1_b4_val == -5<br> - rs1_b3_val == -33<br> - rs1_b0_val == -5<br>                                                 |[0x800007d0]:SUNPKD830 s3, s9<br> [0x800007d4]:sd s3, 72(ra)<br>     |
|  33|[0x80002310]<br>0x00060009FFAAFFFE|- rs1_b3_val == -86<br> - rs1_b2_val == 85<br> - rs1_b0_val == -2<br>                                                                                                       |[0x800007f0]:SUNPKD830 t6, t5<br> [0x800007f4]:sd t6, 80(ra)<br>     |
|  34|[0x80002318]<br>0x0001FFAA007F0040|- rs1_b5_val == -9<br> - rs1_b4_val == -86<br> - rs1_b2_val == -5<br> - rs1_b0_val == 64<br>                                                                                |[0x80000810]:SUNPKD830 t6, t5<br> [0x80000814]:sd t6, 88(ra)<br>     |
|  35|[0x80002320]<br>0x0008FFFE0010FFFC|- rs1_b4_val == -2<br> - rs1_b3_val == 16<br>                                                                                                                               |[0x80000830]:SUNPKD830 t6, t5<br> [0x80000834]:sd t6, 96(ra)<br>     |
|  36|[0x80002328]<br>0xFFFE0010007F0000|- rs1_b4_val == 16<br>                                                                                                                                                      |[0x80000854]:SUNPKD830 t6, t5<br> [0x80000858]:sd t6, 104(ra)<br>    |
|  37|[0x80002330]<br>0xFFFDFFFEFFBF003F|- rs1_b3_val == -65<br>                                                                                                                                                     |[0x80000874]:SUNPKD830 t6, t5<br> [0x80000878]:sd t6, 112(ra)<br>    |
|  38|[0x80002338]<br>0x0001003FFFEF0008|- rs1_b3_val == -17<br>                                                                                                                                                     |[0x80000894]:SUNPKD830 t6, t5<br> [0x80000898]:sd t6, 120(ra)<br>    |
|  39|[0x80002340]<br>0x003FFFF7FFF7FFDF|- rs1_b3_val == -9<br> - rs1_b2_val == 8<br>                                                                                                                                |[0x800008b4]:SUNPKD830 t6, t5<br> [0x800008b8]:sd t6, 128(ra)<br>    |
|  40|[0x80002348]<br>0xFFDFFFFAFFFBFFEF|- rs1_b3_val == -5<br>                                                                                                                                                      |[0x800008d4]:SUNPKD830 t6, t5<br> [0x800008d8]:sd t6, 136(ra)<br>    |
|  41|[0x80002350]<br>0xFFFDFFDFFFFA0040|- rs1_b6_val == -2<br> - rs1_b2_val == -9<br>                                                                                                                               |[0x800008fc]:SUNPKD830 t6, t5<br> [0x80000900]:sd t6, 144(ra)<br>    |
|  42|[0x80002358]<br>0xFF8000000002FFDF|- rs1_b6_val == -128<br>                                                                                                                                                    |[0x8000091c]:SUNPKD830 t6, t5<br> [0x80000920]:sd t6, 152(ra)<br>    |
|  43|[0x80002360]<br>0xFFC00000FFF9FFFF|- rs1_b6_val == -1<br> - rs1_b5_val == -86<br> - rs1_b0_val == -1<br>                                                                                                       |[0x80000944]:SUNPKD830 t6, t5<br> [0x80000948]:sd t6, 160(ra)<br>    |
|  44|[0x80002370]<br>0x0020FFF8FFF7FFAA|- rs1_b6_val == 4<br> - rs1_b0_val == -86<br>                                                                                                                               |[0x8000098c]:SUNPKD830 t6, t5<br> [0x80000990]:sd t6, 176(ra)<br>    |
|  45|[0x80002378]<br>0x0001FFF6FFF6FFF6|- rs1_b2_val == -33<br>                                                                                                                                                     |[0x800009ac]:SUNPKD830 t6, t5<br> [0x800009b0]:sd t6, 184(ra)<br>    |
|  46|[0x80002380]<br>0xFFBFFFC0FFFA0002|- rs1_b5_val == -65<br>                                                                                                                                                     |[0x800009d4]:SUNPKD830 t6, t5<br> [0x800009d8]:sd t6, 192(ra)<br>    |
|  47|[0x80002388]<br>0xFFC0FFAA00550005|- rs1_b2_val == -3<br>                                                                                                                                                      |[0x800009fc]:SUNPKD830 t6, t5<br> [0x80000a00]:sd t6, 200(ra)<br>    |
|  48|[0x80002390]<br>0xFFF70055FF800001|- rs1_b4_val == 85<br> - rs1_b2_val == 64<br>                                                                                                                               |[0x80000a1c]:SUNPKD830 t6, t5<br> [0x80000a20]:sd t6, 208(ra)<br>    |
|  49|[0x80002398]<br>0xFFAAFFC0FFC00007|- rs1_b5_val == -3<br> - rs1_b1_val == -33<br>                                                                                                                              |[0x80000a44]:SUNPKD830 t6, t5<br> [0x80000a48]:sd t6, 216(ra)<br>    |
|  50|[0x800023a0]<br>0xFFFF0010FFAA0020|- rs1_b1_val == -86<br>                                                                                                                                                     |[0x80000a6c]:SUNPKD830 t6, t5<br> [0x80000a70]:sd t6, 224(ra)<br>    |
|  51|[0x800023a8]<br>0x0006FFFB00200006|- rs1_b5_val == -1<br> - rs1_b2_val == 2<br>                                                                                                                                |[0x80000a8c]:SUNPKD830 t6, t5<br> [0x80000a90]:sd t6, 232(ra)<br>    |
|  52|[0x800023b0]<br>0x00060003FFBFFFFC|- rs1_b5_val == 32<br>                                                                                                                                                      |[0x80000aac]:SUNPKD830 t6, t5<br> [0x80000ab0]:sd t6, 240(ra)<br>    |
|  53|[0x800023c0]<br>0x000400050003FFAA|- rs1_b1_val == -2<br>                                                                                                                                                      |[0x80000aec]:SUNPKD830 t6, t5<br> [0x80000af0]:sd t6, 256(ra)<br>    |
