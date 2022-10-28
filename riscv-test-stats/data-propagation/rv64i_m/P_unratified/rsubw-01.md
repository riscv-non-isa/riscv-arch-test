
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001750')]      |
| SIG_REGION                | [('0x80003210', '0x80003650', '136 dwords')]      |
| COV_LABELS                | rsubw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/rsubw-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 135      |
| STAT1                     | 132      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000116c]:RSUBW t6, t5, t4
      [0x80001170]:sd t6, 488(ra)
 -- Signature Address: 0x800034f8 Data: 0xFFFFFFFFFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - opcode : rsubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 256
      - rs2_w0_val == 0
      - rs1_w1_val == -8193
      - rs1_w0_val == -5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000163c]:RSUBW t6, t5, t4
      [0x80001640]:sd t6, 760(ra)
 -- Signature Address: 0x80003608 Data: 0x0000000002000010
 -- Redundant Coverpoints hit by the op
      - opcode : rsubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 1024
      - rs2_w0_val == -33
      - rs1_w0_val == 67108864




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001744]:RSUBW t6, t5, t4
      [0x80001748]:sd t6, 816(ra)
 -- Signature Address: 0x80003640 Data: 0xFFFFFFFFFFFFF7FD
 -- Redundant Coverpoints hit by the op
      - opcode : rsubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -16777217
      - rs2_w0_val == 4096
      - rs1_w1_val == 512






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

|s.no|            signature             |                                                                                                 coverpoints                                                                                                 |                                 code                                 |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : rsubw<br> - rs1 : x6<br> - rs2 : x6<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs2_w1_val == -3<br> - rs2_w0_val == -5<br> - rs1_w1_val == -3<br> - rs1_w0_val == -5<br>                         |[0x800003b0]:RSUBW s3, t1, t1<br> [0x800003b4]:sd s3, 0(ra)<br>       |
|   2|[0x80003218]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x3<br> - rd : x3<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == 67108864<br>                 |[0x800003d8]:RSUBW gp, gp, gp<br> [0x800003dc]:sd gp, 8(ra)<br>       |
|   3|[0x80003220]<br>0xFFFFFFFFFE000001|- rs1 : x9<br> - rs2 : x4<br> - rd : x21<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -3<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -67108865<br> |[0x80000404]:RSUBW s5, s1, tp<br> [0x80000408]:sd s5, 16(ra)<br>      |
|   4|[0x80003228]<br>0x0000000040000400|- rs1 : x12<br> - rs2 : x26<br> - rd : x12<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -2147483648<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 2048<br>                      |[0x80000430]:RSUBW a2, a2, s10<br> [0x80000434]:sd a2, 24(ra)<br>     |
|   5|[0x80003230]<br>0x0000000000000801|- rs1 : x24<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br> - rs1_w1_val == -32769<br> - rs1_w0_val == 4096<br>                                                    |[0x80000458]:RSUBW s11, s8, s11<br> [0x8000045c]:sd s11, 32(ra)<br>   |
|   6|[0x80003238]<br>0x0000000000000400|- rs1 : x13<br> - rs2 : x0<br> - rd : x26<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == -2097153<br>                                                                                       |[0x80000484]:RSUBW s10, a3, zero<br> [0x80000488]:sd s10, 40(ra)<br>  |
|   7|[0x80003240]<br>0x000000000003FFFD|- rs1 : x10<br> - rs2 : x29<br> - rd : x16<br> - rs2_w1_val == -268435457<br> - rs1_w0_val == 524288<br>                                                                                                     |[0x800004ac]:RSUBW a6, a0, t4<br> [0x800004b0]:sd a6, 48(ra)<br>      |
|   8|[0x80003248]<br>0x0000000004400000|- rs1 : x29<br> - rs2 : x24<br> - rd : x23<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -134217729<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 8388608<br>                                      |[0x800004dc]:RSUBW s7, t4, s8<br> [0x800004e0]:sd s7, 56(ra)<br>      |
|   9|[0x80003250]<br>0xFFFFFFFFFC010000|- rs1 : x2<br> - rs2 : x10<br> - rd : x22<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == -131073<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == -134217729<br>                                       |[0x8000050c]:RSUBW s6, sp, a0<br> [0x80000510]:sd s6, 64(ra)<br>      |
|  10|[0x80003258]<br>0xFFFFFFFFFF000000|- rs1 : x23<br> - rs2 : x11<br> - rd : x2<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == 256<br> - rs1_w0_val == 0<br>                                                       |[0x8000052c]:RSUBW sp, s7, a1<br> [0x80000530]:sd sp, 72(ra)<br>      |
|  11|[0x80003260]<br>0xFFFFFFFFFFFFF800|- rs1 : x0<br> - rs2 : x19<br> - rd : x24<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 4096<br> - rs1_w1_val == 0<br>                                                                                   |[0x80000554]:RSUBW s8, zero, s3<br> [0x80000558]:sd s8, 80(ra)<br>    |
|  12|[0x80003268]<br>0xFFFFFFFFFFFFFF7B|- rs1 : x8<br> - rs2 : x7<br> - rd : x20<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == 256<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == -9<br>                                                       |[0x80000578]:RSUBW s4, fp, t2<br> [0x8000057c]:sd s4, 88(ra)<br>      |
|  13|[0x80003270]<br>0x000000002AACAAAB|- rs1 : x27<br> - rs2 : x25<br> - rd : x14<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -262145<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 1431655765<br>                                          |[0x800005b0]:RSUBW a4, s11, s9<br> [0x800005b4]:sd a4, 96(ra)<br>     |
|  14|[0x80003278]<br>0xFFFFFFFFEFFFFFFE|- rs1 : x22<br> - rs2 : x23<br> - rd : x31<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == -3<br>                                              |[0x800005d0]:RSUBW t6, s6, s7<br> [0x800005d4]:sd t6, 104(ra)<br>     |
|  15|[0x80003280]<br>0xFFFFFFFFFE000001|- rs1 : x18<br> - rs2 : x28<br> - rd : x7<br> - rs2_w1_val == -1048577<br> - rs1_w1_val == 4<br> - rs1_w0_val == 2<br>                                                                                       |[0x800005f0]:RSUBW t2, s2, t3<br> [0x800005f4]:sd t2, 112(ra)<br>     |
|  16|[0x80003288]<br>0x0000000000000011|- rs1 : x5<br> - rs2 : x17<br> - rd : x9<br> - rs2_w1_val == -524289<br> - rs1_w0_val == 32<br>                                                                                                              |[0x80000610]:RSUBW s1, t0, a7<br> [0x80000614]:sd s1, 120(ra)<br>     |
|  17|[0x80003290]<br>0x00000000003FFFF0|- rs1 : x17<br> - rs2 : x21<br> - rd : x30<br> - rs2_w1_val == -262145<br> - rs2_w0_val == -8388609<br> - rs1_w1_val == 2<br> - rs1_w0_val == -33<br>                                                        |[0x8000063c]:RSUBW t5, a7, s5<br> [0x80000640]:sd t5, 0(gp)<br>       |
|  18|[0x80003298]<br>0xFFFFFFFFFFE00001|- rs1 : x7<br> - rs2 : x30<br> - rd : x13<br> - rs2_w1_val == -131073<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == -4194305<br>                                                                        |[0x80000664]:RSUBW a3, t2, t5<br> [0x80000668]:sd a3, 8(gp)<br>       |
|  19|[0x800032a0]<br>0x0000000000008004|- rs1 : x20<br> - rs2 : x5<br> - rd : x18<br> - rs2_w1_val == -65537<br> - rs2_w0_val == -65537<br> - rs1_w1_val == 128<br>                                                                                  |[0x8000068c]:RSUBW s2, s4, t0<br> [0x80000690]:sd s2, 16(gp)<br>      |
|  20|[0x800032a8]<br>0x0000000040040000|- rs1 : x21<br> - rs2 : x16<br> - rd : x4<br> - rs2_w1_val == -32769<br>                                                                                                                                     |[0x800006b0]:RSUBW tp, s5, a6<br> [0x800006b4]:sd tp, 24(gp)<br>      |
|  21|[0x800032b0]<br>0xFFFFFFFFFDFFFEFF|- rs1 : x14<br> - rs2 : x9<br> - rd : x25<br> - rs2_w1_val == -16385<br> - rs2_w0_val == 512<br> - rs1_w1_val == 268435456<br>                                                                               |[0x800006dc]:RSUBW s9, a4, s1<br> [0x800006e0]:sd s9, 32(gp)<br>      |
|  22|[0x800032b8]<br>0x00000000000000F8|- rs1 : x26<br> - rs2 : x15<br> - rd : x6<br> - rs2_w1_val == -8193<br> - rs2_w0_val == -513<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == -17<br>                                                        |[0x80000700]:RSUBW t1, s10, a5<br> [0x80000704]:sd t1, 40(gp)<br>     |
|  23|[0x800032c0]<br>0x0000000000000180|- rs1 : x30<br> - rs2 : x13<br> - rd : x5<br> - rs2_w1_val == -4097<br> - rs1_w0_val == 256<br>                                                                                                              |[0x80000720]:RSUBW t0, t5, a3<br> [0x80000724]:sd t0, 48(gp)<br>      |
|  24|[0x800032c8]<br>0x0000000000200000|- rs1 : x1<br> - rs2 : x20<br> - rd : x8<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -1<br> - rs1_w1_val == -131073<br> - rs1_w0_val == 4194304<br>                                                        |[0x80000740]:RSUBW fp, ra, s4<br> [0x80000744]:sd fp, 56(gp)<br>      |
|  25|[0x800032d0]<br>0x000000000000000D|- rs1 : x15<br> - rs2 : x22<br> - rd : x28<br> - rs2_w1_val == -1025<br> - rs2_w0_val == -33<br> - rs1_w1_val == 1048576<br>                                                                                 |[0x80000764]:RSUBW t3, a5, s6<br> [0x80000768]:sd t3, 64(gp)<br>      |
|  26|[0x800032d8]<br>0x0000000003FFFFFF|- rs1 : x16<br> - rs2 : x31<br> - rd : x29<br> - rs2_w1_val == -513<br> - rs1_w1_val == 64<br> - rs1_w0_val == -2<br>                                                                                        |[0x80000788]:RSUBW t4, a6, t6<br> [0x8000078c]:sd t4, 72(gp)<br>      |
|  27|[0x800032e0]<br>0xFFFFFFFFFFDFFFFB|- rs1 : x25<br> - rs2 : x18<br> - rd : x10<br> - rs2_w1_val == -257<br> - rs2_w0_val == 4194304<br>                                                                                                          |[0x800007a8]:RSUBW a0, s9, s2<br> [0x800007ac]:sd a0, 80(gp)<br>      |
|  28|[0x800032e8]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x31<br> - rs2 : x1<br> - rd : x11<br> - rs2_w1_val == -129<br> - rs1_w1_val == -2049<br>                                                                                                             |[0x800007c8]:RSUBW a1, t6, ra<br> [0x800007cc]:sd a1, 88(gp)<br>      |
|  29|[0x800032f0]<br>0xFFFFFFFFFFE00400|- rs1 : x28<br> - rs2 : x12<br> - rd : x15<br> - rs2_w1_val == -65<br> - rs1_w1_val == 524288<br>                                                                                                            |[0x800007f0]:RSUBW a5, t3, a2<br> [0x800007f4]:sd a5, 96(gp)<br>      |
|  30|[0x800032f8]<br>0x0000000001000020|- rs1 : x11<br> - rs2 : x8<br> - rd : x1<br> - rs2_w1_val == -33<br> - rs2_w0_val == -65<br> - rs1_w0_val == 33554432<br>                                                                                    |[0x80000810]:RSUBW ra, a1, fp<br> [0x80000814]:sd ra, 104(gp)<br>     |
|  31|[0x80003300]<br>0x0000000000040002|- rs1 : x4<br> - rs2 : x2<br> - rd : x17<br> - rs2_w1_val == -17<br> - rs1_w1_val == 131072<br>                                                                                                              |[0x80000830]:RSUBW a7, tp, sp<br> [0x80000834]:sd a7, 112(gp)<br>     |
|  32|[0x80003308]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x14<br> - rd : x0<br> - rs2_w1_val == -9<br> - rs2_w0_val == 16<br> - rs1_w1_val == -8193<br>                                                                                        |[0x80000850]:RSUBW zero, s3, a4<br> [0x80000854]:sd zero, 120(gp)<br> |
|  33|[0x80003310]<br>0xFFFFFFFFE0400000|- rs2_w1_val == -5<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                       |[0x80000880]:RSUBW t6, t5, t4<br> [0x80000884]:sd t6, 0(ra)<br>       |
|  34|[0x80003318]<br>0x0000000000000042|- rs2_w1_val == -2<br> - rs1_w0_val == 128<br>                                                                                                                                                               |[0x800008a0]:RSUBW t6, t5, t4<br> [0x800008a4]:sd t6, 8(ra)<br>       |
|  35|[0x80003320]<br>0xFFFFFFFFFFFFBFFF|- rs2_w1_val == -2147483648<br> - rs2_w0_val == 32768<br>                                                                                                                                                    |[0x800008c8]:RSUBW t6, t5, t4<br> [0x800008cc]:sd t6, 16(ra)<br>      |
|  36|[0x80003328]<br>0x000000000001FFFB|- rs2_w1_val == 1073741824<br> - rs1_w1_val == -2<br>                                                                                                                                                        |[0x800008f4]:RSUBW t6, t5, t4<br> [0x800008f8]:sd t6, 24(ra)<br>      |
|  37|[0x80003330]<br>0x0000000003800000|- rs2_w1_val == 536870912<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == -16777217<br>                                                                                                                    |[0x80000924]:RSUBW t6, t5, t4<br> [0x80000928]:sd t6, 32(ra)<br>      |
|  38|[0x80003338]<br>0xFFFFFFFFFF800002|- rs2_w1_val == 268435456<br> - rs2_w0_val == 16777216<br> - rs1_w0_val == 4<br>                                                                                                                             |[0x80000948]:RSUBW t6, t5, t4<br> [0x8000094c]:sd t6, 40(ra)<br>      |
|  39|[0x80003340]<br>0xFFFFFFFFFFFFFF00|- rs2_w1_val == 134217728<br> - rs1_w0_val == -513<br>                                                                                                                                                       |[0x8000096c]:RSUBW t6, t5, t4<br> [0x80000970]:sd t6, 48(ra)<br>      |
|  40|[0x80003348]<br>0x0000000000000018|- rs2_w1_val == 67108864<br> - rs1_w1_val == -129<br>                                                                                                                                                        |[0x80000990]:RSUBW t6, t5, t4<br> [0x80000994]:sd t6, 56(ra)<br>      |
|  41|[0x80003350]<br>0xFFFFFFFFFFBFFDFF|- rs2_w1_val == 33554432<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 32768<br> - rs1_w0_val == -8388609<br>                                                                                                 |[0x800009b4]:RSUBW t6, t5, t4<br> [0x800009b8]:sd t6, 64(ra)<br>      |
|  42|[0x80003358]<br>0xFFFFFFFFFFFB7FFF|- rs2_w1_val == 16777216<br> - rs2_w0_val == 65536<br> - rs1_w1_val == 2048<br> - rs1_w0_val == -524289<br>                                                                                                  |[0x800009dc]:RSUBW t6, t5, t4<br> [0x800009e0]:sd t6, 72(ra)<br>      |
|  43|[0x80003360]<br>0xFFFFFFFFFEFFFFEF|- rs2_w1_val == 8388608<br>                                                                                                                                                                                  |[0x800009fc]:RSUBW t6, t5, t4<br> [0x80000a00]:sd t6, 80(ra)<br>      |
|  44|[0x80003368]<br>0xFFFFFFFFFFF7FFFD|- rs2_w1_val == 4194304<br> - rs2_w0_val == 1048576<br>                                                                                                                                                      |[0x80000a20]:RSUBW t6, t5, t4<br> [0x80000a24]:sd t6, 88(ra)<br>      |
|  45|[0x80003370]<br>0x000000001FFFDFFF|- rs2_w1_val == 2097152<br> - rs2_w0_val == 16384<br> - rs1_w1_val == -4097<br>                                                                                                                              |[0x80000a48]:RSUBW t6, t5, t4<br> [0x80000a4c]:sd t6, 96(ra)<br>      |
|  46|[0x80003378]<br>0x0000000000007FFD|- rs2_w1_val == 1048576<br> - rs1_w0_val == 65536<br>                                                                                                                                                        |[0x80000a68]:RSUBW t6, t5, t4<br> [0x80000a6c]:sd t6, 104(ra)<br>     |
|  47|[0x80003380]<br>0xFFFFFFFFFAFFFFFF|- rs2_w1_val == 524288<br> - rs1_w1_val == 4096<br>                                                                                                                                                          |[0x80000a8c]:RSUBW t6, t5, t4<br> [0x80000a90]:sd t6, 112(ra)<br>     |
|  48|[0x80003388]<br>0xFFFFFFFFFEFFF7FF|- rs2_w1_val == 262144<br> - rs1_w1_val == -17<br> - rs1_w0_val == -4097<br>                                                                                                                                 |[0x80000ab0]:RSUBW t6, t5, t4<br> [0x80000ab4]:sd t6, 120(ra)<br>     |
|  49|[0x80003390]<br>0x000000002ACAAAAB|- rs2_w1_val == 131072<br> - rs2_w0_val == -4194305<br>                                                                                                                                                      |[0x80000ad8]:RSUBW t6, t5, t4<br> [0x80000adc]:sd t6, 128(ra)<br>     |
|  50|[0x80003398]<br>0xFFFFFFFFE0002000|- rs2_w1_val == 65536<br> - rs2_w0_val == -16385<br> - rs1_w1_val == 8192<br>                                                                                                                                |[0x80000b08]:RSUBW t6, t5, t4<br> [0x80000b0c]:sd t6, 136(ra)<br>     |
|  51|[0x800033a0]<br>0xFFFFFFFFFFFFFFFA|- rs2_w1_val == 32768<br>                                                                                                                                                                                    |[0x80000b28]:RSUBW t6, t5, t4<br> [0x80000b2c]:sd t6, 144(ra)<br>     |
|  52|[0x800033a8]<br>0x0000000000000003|- rs2_w1_val == 16384<br> - rs1_w1_val == 2147483647<br>                                                                                                                                                     |[0x80000b50]:RSUBW t6, t5, t4<br> [0x80000b54]:sd t6, 152(ra)<br>     |
|  53|[0x800033b0]<br>0xFFFFFFFFFFFFFFFE|- rs2_w1_val == 8192<br>                                                                                                                                                                                     |[0x80000b74]:RSUBW t6, t5, t4<br> [0x80000b78]:sd t6, 160(ra)<br>     |
|  54|[0x800033b8]<br>0xFFFFFFFFFFFFF000|- rs1_w1_val == 8<br> - rs1_w0_val == 8192<br>                                                                                                                                                               |[0x80000b9c]:RSUBW t6, t5, t4<br> [0x80000ba0]:sd t6, 168(ra)<br>     |
|  55|[0x800033c0]<br>0xFFFFFFFFFFFC0200|- rs2_w1_val == 1024<br> - rs2_w0_val == 524288<br> - rs1_w0_val == 1024<br>                                                                                                                                 |[0x80000bbc]:RSUBW t6, t5, t4<br> [0x80000bc0]:sd t6, 176(ra)<br>     |
|  56|[0x800033c8]<br>0x0000000040000100|- rs1_w0_val == 512<br>                                                                                                                                                                                      |[0x80000be0]:RSUBW t6, t5, t4<br> [0x80000be4]:sd t6, 184(ra)<br>     |
|  57|[0x800033d0]<br>0x0000000000000023|- rs1_w0_val == 64<br>                                                                                                                                                                                       |[0x80000c04]:RSUBW t6, t5, t4<br> [0x80000c08]:sd t6, 192(ra)<br>     |
|  58|[0x800033d8]<br>0xFFFFFFFFFFFFF008|- rs2_w0_val == 8192<br> - rs1_w0_val == 16<br>                                                                                                                                                              |[0x80000c2c]:RSUBW t6, t5, t4<br> [0x80000c30]:sd t6, 200(ra)<br>     |
|  59|[0x800033e0]<br>0x0000000000040004|- rs2_w1_val == -536870913<br> - rs2_w0_val == -524289<br> - rs1_w1_val == 512<br> - rs1_w0_val == 8<br>                                                                                                     |[0x80000c54]:RSUBW t6, t5, t4<br> [0x80000c58]:sd t6, 208(ra)<br>     |
|  60|[0x800033e8]<br>0xFFFFFFFFFC000000|- rs2_w0_val == 134217728<br> - rs1_w0_val == 1<br>                                                                                                                                                          |[0x80000c74]:RSUBW t6, t5, t4<br> [0x80000c78]:sd t6, 216(ra)<br>     |
|  61|[0x800033f0]<br>0x0000000000008000|- rs1_w1_val == 1073741824<br> - rs1_w0_val == -1<br>                                                                                                                                                        |[0x80000ca4]:RSUBW t6, t5, t4<br> [0x80000ca8]:sd t6, 224(ra)<br>     |
|  62|[0x800033f8]<br>0xFFFFFFFFD0000000|- rs1_w0_val == -2147483648<br> - rs2_w1_val == 4096<br> - rs2_w0_val == -536870913<br>                                                                                                                      |[0x80000cc8]:RSUBW t6, t5, t4<br> [0x80000ccc]:sd t6, 232(ra)<br>     |
|  63|[0x80003400]<br>0xFFFFFFFFD5555552|- rs2_w1_val == 2048<br> - rs2_w0_val == 1431655765<br>                                                                                                                                                      |[0x80000cf4]:RSUBW t6, t5, t4<br> [0x80000cf8]:sd t6, 240(ra)<br>     |
|  64|[0x80003408]<br>0xFFFFFFFFFFFFF200|- rs2_w1_val == 512<br>                                                                                                                                                                                      |[0x80000d14]:RSUBW t6, t5, t4<br> [0x80000d18]:sd t6, 248(ra)<br>     |
|  65|[0x80003410]<br>0xFFFFFFFFFFFFFEFC|- rs2_w1_val == 256<br> - rs1_w1_val == -513<br>                                                                                                                                                             |[0x80000d34]:RSUBW t6, t5, t4<br> [0x80000d38]:sd t6, 256(ra)<br>     |
|  66|[0x80003418]<br>0x0000000000000000|- rs2_w1_val == 128<br>                                                                                                                                                                                      |[0x80000d54]:RSUBW t6, t5, t4<br> [0x80000d58]:sd t6, 264(ra)<br>     |
|  67|[0x80003420]<br>0x000000001BFFFFFF|- rs2_w1_val == 64<br>                                                                                                                                                                                       |[0x80000d74]:RSUBW t6, t5, t4<br> [0x80000d78]:sd t6, 272(ra)<br>     |
|  68|[0x80003428]<br>0x0000000000000400|- rs2_w1_val == 32<br> - rs2_w0_val == -4097<br> - rs1_w0_val == -2049<br>                                                                                                                                   |[0x80000d9c]:RSUBW t6, t5, t4<br> [0x80000da0]:sd t6, 280(ra)<br>     |
|  69|[0x80003430]<br>0x0000000000200010|- rs2_w1_val == 16<br>                                                                                                                                                                                       |[0x80000dc0]:RSUBW t6, t5, t4<br> [0x80000dc4]:sd t6, 288(ra)<br>     |
|  70|[0x80003438]<br>0x0000000000200004|- rs2_w1_val == 8<br> - rs2_w0_val == -9<br>                                                                                                                                                                 |[0x80000de0]:RSUBW t6, t5, t4<br> [0x80000de4]:sd t6, 296(ra)<br>     |
|  71|[0x80003440]<br>0x0000000020080000|- rs2_w1_val == 4<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 1048576<br>                                                                                                                            |[0x80000e00]:RSUBW t6, t5, t4<br> [0x80000e04]:sd t6, 304(ra)<br>     |
|  72|[0x80003448]<br>0x0000000000000038|- rs2_w1_val == 2<br>                                                                                                                                                                                        |[0x80000e20]:RSUBW t6, t5, t4<br> [0x80000e24]:sd t6, 312(ra)<br>     |
|  73|[0x80003450]<br>0xFFFFFFFFE0020000|- rs2_w1_val == 1<br> - rs2_w0_val == 1073741824<br> - rs1_w0_val == 262144<br>                                                                                                                              |[0x80000e44]:RSUBW t6, t5, t4<br> [0x80000e48]:sd t6, 320(ra)<br>     |
|  74|[0x80003458]<br>0x0000000000007FFE|- rs1_w1_val == 536870912<br>                                                                                                                                                                                |[0x80000e6c]:RSUBW t6, t5, t4<br> [0x80000e70]:sd t6, 328(ra)<br>     |
|  75|[0x80003460]<br>0x0000000008000000|- rs2_w1_val == -1<br> - rs1_w0_val == -268435457<br>                                                                                                                                                        |[0x80000e88]:RSUBW t6, t5, t4<br> [0x80000e8c]:sd t6, 336(ra)<br>     |
|  76|[0x80003468]<br>0x000000003AAAAAAB|- rs2_w0_val == -1431655766<br> - rs1_w0_val == 536870912<br>                                                                                                                                                |[0x80000eb4]:RSUBW t6, t5, t4<br> [0x80000eb8]:sd t6, 344(ra)<br>     |
|  77|[0x80003470]<br>0xFFFFFFFFEAAAAAAB|- rs2_w0_val == 2147483647<br> - rs1_w1_val == -524289<br>                                                                                                                                                   |[0x80000edc]:RSUBW t6, t5, t4<br> [0x80000ee0]:sd t6, 352(ra)<br>     |
|  78|[0x80003478]<br>0x0000000008200000|- rs2_w0_val == -268435457<br> - rs1_w1_val == -65<br>                                                                                                                                                       |[0x80000efc]:RSUBW t6, t5, t4<br> [0x80000f00]:sd t6, 360(ra)<br>     |
|  79|[0x80003480]<br>0x0000000002000100|- rs2_w0_val == -67108865<br>                                                                                                                                                                                |[0x80000f24]:RSUBW t6, t5, t4<br> [0x80000f28]:sd t6, 368(ra)<br>     |
|  80|[0x80003488]<br>0x0000000000FFFF80|- rs2_w0_val == -33554433<br> - rs1_w0_val == -257<br>                                                                                                                                                       |[0x80000f4c]:RSUBW t6, t5, t4<br> [0x80000f50]:sd t6, 376(ra)<br>     |
|  81|[0x80003490]<br>0x00000000007FFFE0|- rs2_w0_val == -16777217<br> - rs1_w1_val == 1024<br> - rs1_w0_val == -65<br>                                                                                                                               |[0x80000f70]:RSUBW t6, t5, t4<br> [0x80000f74]:sd t6, 384(ra)<br>     |
|  82|[0x80003498]<br>0x0000000020100000|- rs2_w0_val == -2097153<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 1073741824<br>                                                                                                                     |[0x80000f94]:RSUBW t6, t5, t4<br> [0x80000f98]:sd t6, 392(ra)<br>     |
|  83|[0x800034a0]<br>0x0000000000080004|- rs2_w0_val == -1048577<br>                                                                                                                                                                                 |[0x80000fbc]:RSUBW t6, t5, t4<br> [0x80000fc0]:sd t6, 400(ra)<br>     |
|  84|[0x800034a8]<br>0xFFFFFFFFFFE04000|- rs2_w0_val == -32769<br>                                                                                                                                                                                   |[0x80000ff4]:RSUBW t6, t5, t4<br> [0x80000ff8]:sd t6, 408(ra)<br>     |
|  85|[0x800034b0]<br>0x0000000000021000|- rs2_w0_val == -8193<br>                                                                                                                                                                                    |[0x80001020]:RSUBW t6, t5, t4<br> [0x80001024]:sd t6, 416(ra)<br>     |
|  86|[0x800034b8]<br>0x00000000000003F0|- rs2_w0_val == -2049<br> - rs1_w1_val == 8388608<br>                                                                                                                                                        |[0x80001048]:RSUBW t6, t5, t4<br> [0x8000104c]:sd t6, 424(ra)<br>     |
|  87|[0x800034c0]<br>0x00000000000001C0|- rs2_w0_val == -1025<br> - rs1_w0_val == -129<br>                                                                                                                                                           |[0x8000106c]:RSUBW t6, t5, t4<br> [0x80001070]:sd t6, 432(ra)<br>     |
|  88|[0x800034c8]<br>0x0000000000007FE0|- rs2_w0_val == 64<br>                                                                                                                                                                                       |[0x80001098]:RSUBW t6, t5, t4<br> [0x8000109c]:sd t6, 440(ra)<br>     |
|  89|[0x800034d0]<br>0x0000000000001FF0|- rs2_w0_val == 32<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 16384<br>                                                                                                                                 |[0x800010bc]:RSUBW t6, t5, t4<br> [0x800010c0]:sd t6, 448(ra)<br>     |
|  90|[0x800034d8]<br>0xFFFFFFFFFFFFDFFB|- rs2_w0_val == 8<br> - rs1_w0_val == -16385<br>                                                                                                                                                             |[0x800010e4]:RSUBW t6, t5, t4<br> [0x800010e8]:sd t6, 456(ra)<br>     |
|  91|[0x800034e0]<br>0xFFFFFFFFFFFFFFFB|- rs2_w0_val == 4<br>                                                                                                                                                                                        |[0x80001104]:RSUBW t6, t5, t4<br> [0x80001108]:sd t6, 464(ra)<br>     |
|  92|[0x800034e8]<br>0x0000000000000003|- rs2_w0_val == 2<br>                                                                                                                                                                                        |[0x80001124]:RSUBW t6, t5, t4<br> [0x80001128]:sd t6, 472(ra)<br>     |
|  93|[0x800034f0]<br>0x000000002AAAAAAA|- rs2_w0_val == 1<br>                                                                                                                                                                                        |[0x80001150]:RSUBW t6, t5, t4<br> [0x80001154]:sd t6, 480(ra)<br>     |
|  94|[0x80003500]<br>0xFFFFFFFFFFFFFBFD|- rs2_w0_val == 2048<br>                                                                                                                                                                                     |[0x80001194]:RSUBW t6, t5, t4<br> [0x80001198]:sd t6, 496(ra)<br>     |
|  95|[0x80003508]<br>0xFFFFFFFFFFFFFFF3|- rs1_w1_val == -1073741825<br>                                                                                                                                                                              |[0x800011b8]:RSUBW t6, t5, t4<br> [0x800011bc]:sd t6, 504(ra)<br>     |
|  96|[0x80003510]<br>0xFFFFFFFFEFF7FFFF|- rs1_w1_val == -536870913<br> - rs1_w0_val == -1048577<br>                                                                                                                                                  |[0x800011e0]:RSUBW t6, t5, t4<br> [0x800011e4]:sd t6, 512(ra)<br>     |
|  97|[0x80003518]<br>0x0000000000007000|- rs1_w1_val == -33554433<br> - rs1_w0_val == -8193<br>                                                                                                                                                      |[0x80001210]:RSUBW t6, t5, t4<br> [0x80001214]:sd t6, 520(ra)<br>     |
|  98|[0x80003520]<br>0x0000000000001F80|- rs1_w1_val == -8388609<br>                                                                                                                                                                                 |[0x8000123c]:RSUBW t6, t5, t4<br> [0x80001240]:sd t6, 528(ra)<br>     |
|  99|[0x80003528]<br>0xFFFFFFFFFFFE0020|- rs2_w0_val == 262144<br> - rs1_w1_val == -4194305<br>                                                                                                                                                      |[0x80001260]:RSUBW t6, t5, t4<br> [0x80001264]:sd t6, 536(ra)<br>     |
| 100|[0x80003530]<br>0x0000000000040080|- rs2_w0_val == -257<br> - rs1_w1_val == -1048577<br>                                                                                                                                                        |[0x80001288]:RSUBW t6, t5, t4<br> [0x8000128c]:sd t6, 544(ra)<br>     |
| 101|[0x80003538]<br>0x0000000000000004|- rs1_w1_val == -262145<br>                                                                                                                                                                                  |[0x800012ac]:RSUBW t6, t5, t4<br> [0x800012b0]:sd t6, 552(ra)<br>     |
| 102|[0x80003540]<br>0x0000000000001010|- rs1_w1_val == -65537<br>                                                                                                                                                                                   |[0x800012d4]:RSUBW t6, t5, t4<br> [0x800012d8]:sd t6, 560(ra)<br>     |
| 103|[0x80003548]<br>0x0000000000080080|- rs1_w1_val == -16385<br>                                                                                                                                                                                   |[0x800012f8]:RSUBW t6, t5, t4<br> [0x800012fc]:sd t6, 568(ra)<br>     |
| 104|[0x80003550]<br>0xFFFFFFFFD5515555|- rs1_w1_val == -1025<br> - rs1_w0_val == -1431655766<br>                                                                                                                                                    |[0x8000131c]:RSUBW t6, t5, t4<br> [0x80001320]:sd t6, 576(ra)<br>     |
| 105|[0x80003558]<br>0x0000000000001FF8|- rs1_w1_val == -257<br>                                                                                                                                                                                     |[0x80001340]:RSUBW t6, t5, t4<br> [0x80001344]:sd t6, 584(ra)<br>     |
| 106|[0x80003560]<br>0x000000000003FFFD|- rs1_w1_val == -33<br>                                                                                                                                                                                      |[0x8000136c]:RSUBW t6, t5, t4<br> [0x80001370]:sd t6, 592(ra)<br>     |
| 107|[0x80003568]<br>0xFFFFFFFFDFFDFFFF|- rs1_w1_val == -9<br> - rs1_w0_val == -262145<br>                                                                                                                                                           |[0x80001390]:RSUBW t6, t5, t4<br> [0x80001394]:sd t6, 600(ra)<br>     |
| 108|[0x80003570]<br>0xFFFFFFFFFFFFF808|- rs1_w1_val == -5<br>                                                                                                                                                                                       |[0x800013b0]:RSUBW t6, t5, t4<br> [0x800013b4]:sd t6, 608(ra)<br>     |
| 109|[0x80003578]<br>0x000000000000001D|- rs1_w1_val == 32<br>                                                                                                                                                                                       |[0x800013d0]:RSUBW t6, t5, t4<br> [0x800013d4]:sd t6, 616(ra)<br>     |
| 110|[0x80003580]<br>0xFFFFFFFFFBFFFF7F|- rs1_w1_val == 16<br>                                                                                                                                                                                       |[0x800013f4]:RSUBW t6, t5, t4<br> [0x800013f8]:sd t6, 624(ra)<br>     |
| 111|[0x80003588]<br>0x000000002ABAAAAB|- rs1_w1_val == 1<br> - rs1_w0_val == 2097152<br>                                                                                                                                                            |[0x80001424]:RSUBW t6, t5, t4<br> [0x80001428]:sd t6, 632(ra)<br>     |
| 112|[0x80003590]<br>0xFFFFFFFFFFFFFC04|- rs1_w1_val == -1<br>                                                                                                                                                                                       |[0x80001440]:RSUBW t6, t5, t4<br> [0x80001444]:sd t6, 640(ra)<br>     |
| 113|[0x80003598]<br>0x000000003FFFFFFB|- rs1_w0_val == 2147483647<br>                                                                                                                                                                               |[0x80001464]:RSUBW t6, t5, t4<br> [0x80001468]:sd t6, 648(ra)<br>     |
| 114|[0x800035a0]<br>0xFFFFFFFFEDFFFFFF|- rs1_w0_val == -536870913<br>                                                                                                                                                                               |[0x80001484]:RSUBW t6, t5, t4<br> [0x80001488]:sd t6, 656(ra)<br>     |
| 115|[0x800035a8]<br>0xFFFFFFFFFF000003|- rs1_w0_val == -33554433<br>                                                                                                                                                                                |[0x800014a8]:RSUBW t6, t5, t4<br> [0x800014ac]:sd t6, 664(ra)<br>     |
| 116|[0x800035b0]<br>0xFFFFFFFFFFF04000|- rs1_w0_val == -2097153<br>                                                                                                                                                                                 |[0x800014d4]:RSUBW t6, t5, t4<br> [0x800014d8]:sd t6, 672(ra)<br>     |
| 117|[0x800035b8]<br>0xFFFFFFFFFFFF0040|- rs2_w0_val == -129<br> - rs1_w0_val == -131073<br>                                                                                                                                                         |[0x800014f8]:RSUBW t6, t5, t4<br> [0x800014fc]:sd t6, 680(ra)<br>     |
| 118|[0x800035c0]<br>0xFFFFFFFFFFFF3FFF|- rs1_w0_val == -65537<br>                                                                                                                                                                                   |[0x80001524]:RSUBW t6, t5, t4<br> [0x80001528]:sd t6, 688(ra)<br>     |
| 119|[0x800035c8]<br>0xFFFFFFFFFFFFC000|- rs2_w0_val == -2<br> - rs1_w0_val == -32769<br>                                                                                                                                                            |[0x80001548]:RSUBW t6, t5, t4<br> [0x8000154c]:sd t6, 696(ra)<br>     |
| 120|[0x800035d0]<br>0xFFFFFFFFC0000008|- rs2_w0_val == -17<br>                                                                                                                                                                                      |[0x80001568]:RSUBW t6, t5, t4<br> [0x8000156c]:sd t6, 704(ra)<br>     |
| 121|[0x800035d8]<br>0xFFFFFFFFFFFFDDFF|- rs1_w0_val == -1025<br>                                                                                                                                                                                    |[0x80001588]:RSUBW t6, t5, t4<br> [0x8000158c]:sd t6, 712(ra)<br>     |
| 122|[0x800035e0]<br>0xFFFFFFFFF7FFFFFB|- rs2_w0_val == 268435456<br>                                                                                                                                                                                |[0x800015a8]:RSUBW t6, t5, t4<br> [0x800015ac]:sd t6, 720(ra)<br>     |
| 123|[0x800035e8]<br>0xFFFFFFFFFFC10000|- rs2_w0_val == 8388608<br> - rs1_w0_val == 131072<br>                                                                                                                                                       |[0x800015cc]:RSUBW t6, t5, t4<br> [0x800015d0]:sd t6, 728(ra)<br>     |
| 124|[0x800035f0]<br>0x0000000000300000|- rs2_w0_val == 2097152<br>                                                                                                                                                                                  |[0x800015e4]:RSUBW t6, t5, t4<br> [0x800015e8]:sd t6, 736(ra)<br>     |
| 125|[0x800035f8]<br>0x0000000007FF0000|- rs2_w0_val == 131072<br> - rs1_w0_val == 268435456<br>                                                                                                                                                     |[0x80001604]:RSUBW t6, t5, t4<br> [0x80001608]:sd t6, 744(ra)<br>     |
| 126|[0x80003600]<br>0x0000000003FFFFFE|- rs1_w0_val == 134217728<br>                                                                                                                                                                                |[0x80001620]:RSUBW t6, t5, t4<br> [0x80001624]:sd t6, 752(ra)<br>     |
| 127|[0x80003610]<br>0xFFFFFFFFFFFF8200|- rs1_w1_val == 4194304<br>                                                                                                                                                                                  |[0x80001668]:RSUBW t6, t5, t4<br> [0x8000166c]:sd t6, 768(ra)<br>     |
| 128|[0x80003618]<br>0x0000000000800020|- rs1_w0_val == 16777216<br>                                                                                                                                                                                 |[0x8000168c]:RSUBW t6, t5, t4<br> [0x80001690]:sd t6, 776(ra)<br>     |
| 129|[0x80003620]<br>0xFFFFFFFFF3FFFFFF|- rs1_w1_val == 262144<br>                                                                                                                                                                                   |[0x800016b0]:RSUBW t6, t5, t4<br> [0x800016b4]:sd t6, 784(ra)<br>     |
| 130|[0x80003628]<br>0xFFFFFFFFFFCFFFFF|- rs1_w1_val == 16384<br>                                                                                                                                                                                    |[0x800016d4]:RSUBW t6, t5, t4<br> [0x800016d8]:sd t6, 792(ra)<br>     |
| 131|[0x80003630]<br>0xFFFFFFFFFFE04000|- rs1_w0_val == 32768<br>                                                                                                                                                                                    |[0x800016f8]:RSUBW t6, t5, t4<br> [0x800016fc]:sd t6, 800(ra)<br>     |
| 132|[0x80003638]<br>0xFFFFFFFFFFFFFFD0|- rs2_w0_val == 128<br>                                                                                                                                                                                      |[0x8000171c]:RSUBW t6, t5, t4<br> [0x80001720]:sd t6, 808(ra)<br>     |
