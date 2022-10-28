
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001640')]      |
| SIG_REGION                | [('0x80003210', '0x80003a20', '258 dwords')]      |
| COV_LABELS                | mulsr64      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/mulsr64-01.S    |
| Total Number of coverpoints| 363     |
| Total Coverpoints Hit     | 357      |
| Total Signature Updates   | 129      |
| STAT1                     | 126      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f04]:MULSR64 t6, t5, t4
      [0x80000f08]:sd t6, 960(ra)
 -- Signature Address: 0x800036f0 Data: 0xF7FFFFFFC0000000
 -- Redundant Coverpoints hit by the op
      - opcode : mulsr64
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -2049
      - rs2_w0_val == 1073741824
      - rs1_w1_val == -1431655766
      - rs1_w0_val == -536870913




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000129c]:MULSR64 t6, t5, t4
      [0x800012a0]:sd t6, 1360(ra)
 -- Signature Address: 0x80003880 Data: 0xFFFFFFFFBFFFFFC0
 -- Redundant Coverpoints hit by the op
      - opcode : mulsr64
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 8192
      - rs2_w0_val == -16777217
      - rs1_w1_val == 0
      - rs1_w0_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015ec]:MULSR64 t6, t5, t4
      [0x800015f0]:sd t6, 1728(ra)
 -- Signature Address: 0x800039f0 Data: 0x0000000001010101
 -- Redundant Coverpoints hit by the op
      - opcode : mulsr64
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == -1431655766
      - rs2_w0_val == -65537
      - rs1_w1_val == 33554432
      - rs1_w0_val == -257






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
|   1|[0x80003210]<br>0x0000000010008001|- opcode : mulsr64<br> - rs1 : x2<br> - rs2 : x2<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs2_w1_val == 134217728<br> - rs2_w0_val == -16385<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -16385<br> |[0x800003b8]:MULSR64 s2, sp, sp<br> [0x800003bc]:sd s2, 0(t2)<br>     |
|   2|[0x80003220]<br>0x0000000100020001|- rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == -65537<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -65537<br>                  |[0x800003e8]:MULSR64 s6, s6, s6<br> [0x800003ec]:sd s6, 16(t2)<br>    |
|   3|[0x80003230]<br>0x0000000001010101|- rs1 : x18<br> - rs2 : x26<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -257<br>                                                          |[0x80000410]:MULSR64 t1, s2, s10<br> [0x80000414]:sd t1, 32(t2)<br>   |
|   4|[0x80003240]<br>0xFFFFFFFFFBFFFFFE|- rs1 : x10<br> - rs2 : x5<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 2<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == -33554433<br>                        |[0x8000043c]:MULSR64 a0, a0, t0<br> [0x80000440]:sd a0, 48(t2)<br>    |
|   5|[0x80003250]<br>0xFFFFFFFFFFFDFC00|- rs1 : x12<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == -129<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 1024<br>                        |[0x8000045c]:MULSR64 t3, a2, t3<br> [0x80000460]:sd t3, 64(t2)<br>    |
|   6|[0x80003260]<br>0xFFFFFFF7FF800000|- rs1 : x26<br> - rs2 : x1<br> - rd : x16<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == -4097<br>                                              |[0x80000488]:MULSR64 a6, s10, ra<br> [0x8000048c]:sd a6, 80(t2)<br>   |
|   7|[0x80003270]<br>0x0000000100000000|- rs1 : x27<br> - rs2 : x29<br> - rd : x14<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == 524288<br> - rs1_w1_val == -65<br> - rs1_w0_val == 8192<br>                                                    |[0x800004b0]:MULSR64 a4, s11, t4<br> [0x800004b4]:sd a4, 96(t2)<br>   |
|   8|[0x80003280]<br>0x0000000080800101|- rs1 : x4<br> - rs2 : x11<br> - rd : x24<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -8388609<br> - rs1_w1_val == 64<br> - rs1_w0_val == -257<br>                                                    |[0x800004d8]:MULSR64 s8, tp, a1<br> [0x800004dc]:sd s8, 112(t2)<br>   |
|   9|[0x80003290]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x0<br> - rd : x30<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 8192<br> - rs1_w0_val == -5<br>                                                                     |[0x80000500]:MULSR64 t5, fp, zero<br> [0x80000504]:sd t5, 128(t2)<br> |
|  10|[0x800032a0]<br>0x0000000010000000|- rs1 : x11<br> - rs2 : x12<br> - rd : x8<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == 32<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 8388608<br>                                                  |[0x80000528]:MULSR64 fp, a1, a2<br> [0x8000052c]:sd fp, 144(t2)<br>   |
|  11|[0x800032b0]<br>0x0000000404000101|- rs1 : x30<br> - rs2 : x18<br> - rd : x12<br> - rs2_w1_val == -16777217<br> - rs1_w0_val == -67108865<br>                                                                                                   |[0x80000550]:MULSR64 a2, t5, s2<br> [0x80000554]:sd a2, 160(t2)<br>   |
|  12|[0x800032c0]<br>0xFFFFFFFEFFFFFF80|- rs1 : x15<br> - rs2 : x13<br> - rd : x2<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == -33554433<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 128<br>                                                  |[0x80000574]:MULSR64 sp, a5, a3<br> [0x80000578]:sd sp, 176(t2)<br>   |
|  13|[0x800032d0]<br>0x0000001000000000|- rs1 : x21<br> - rs2 : x6<br> - rd : x4<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == 16777216<br> - rs1_w0_val == 4096<br>                                                                              |[0x80000594]:MULSR64 tp, s5, t1<br> [0x80000598]:sd tp, 192(t2)<br>   |
|  14|[0x800032e0]<br>0x0200000000000000|- rs1 : x6<br> - rs2 : x21<br> - rd : x20<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 268435456<br>                                        |[0x800005b8]:MULSR64 s4, t1, s5<br> [0x800005bc]:sd s4, 208(t2)<br>   |
|  15|[0x800032f0]<br>0x0000000000010002|- rs1 : x23<br> - rs2 : x30<br> - rd : x26<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == -2<br> - rs1_w1_val == -65537<br> - rs1_w0_val == -32769<br>                                                     |[0x800005e0]:MULSR64 s10, s7, t5<br> [0x800005e4]:sd s10, 224(t2)<br> |
|  16|[0x80003300]<br>0xFFFFFFFFFFFFCFFA|- rs1 : x28<br> - rs2 : x3<br> - rs2_w1_val == -524289<br> - rs2_w0_val == -2049<br> - rs1_w1_val == -33554433<br>                                                                                           |[0x8000060c]:MULSR64 sp, t3, gp<br> [0x80000610]:sd sp, 240(t2)<br>   |
|  17|[0x80003310]<br>0x0000000000000064|- rs1 : x1<br> - rs2 : x19<br> - rs2_w1_val == -262145<br> - rs1_w1_val == 8388608<br>                                                                                                                       |[0x80000630]:MULSR64 s6, ra, s3<br> [0x80000634]:sd s6, 256(t2)<br>   |
|  18|[0x80003320]<br>0xFFF0000000000000|- rs1 : x5<br> - rs2 : x27<br> - rs2_w1_val == -131073<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == -1<br>                                                                                                |[0x80000648]:MULSR64 t6, t0, s11<br> [0x8000064c]:sd t6, 272(t2)<br>  |
|  19|[0x80003330]<br>0xFFFFFFFFFFFFC000|- rs1 : x3<br> - rs2 : x14<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 4096<br>                                                                                                                           |[0x80000678]:MULSR64 s7, gp, a4<br> [0x8000067c]:sd s7, 0(ra)<br>     |
|  20|[0x80003340]<br>0xFFFFFD5555555000|- rs1 : x17<br> - rs2 : x9<br> - rs2_w1_val == -32769<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == 2048<br>                                                                                           |[0x800006ac]:MULSR64 t6, a7, s1<br> [0x800006b0]:sd t6, 16(ra)<br>    |
|  21|[0x80003350]<br>0x00000000C0000000|- rs1 : x24<br> - rs2 : x4<br> - rs2_w1_val == -16385<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == -3<br>                                                                                              |[0x800006d0]:MULSR64 s9, s8, tp<br> [0x800006d4]:sd s9, 32(ra)<br>    |
|  22|[0x80003360]<br>0x0000000000100002|- rs1 : x16<br> - rs2 : x8<br> - rs2_w1_val == -8193<br> - rs2_w0_val == -524289<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == -2<br>                                                                     |[0x800006f8]:MULSR64 t2, a6, fp<br> [0x800006fc]:sd t2, 48(ra)<br>    |
|  23|[0x80003370]<br>0xFFFFFFFFFFFFFF3A|- rs1 : x14<br> - rs2 : x23<br> - rs2_w1_val == -4097<br> - rs1_w1_val == -33<br> - rs1_w0_val == -33<br>                                                                                                    |[0x8000071c]:MULSR64 t5, a4, s7<br> [0x80000720]:sd t5, 64(ra)<br>    |
|  24|[0x80003380]<br>0x00000002FFFFFFFD|- rs1 : x20<br> - rs2 : x17<br> - rs2_w1_val == -2049<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 1431655765<br>                                                                                            |[0x8000074c]:MULSR64 s2, s4, a7<br> [0x80000750]:sd s2, 80(ra)<br>    |
|  25|[0x80003390]<br>0x0000000000080000|- rs1 : x19<br> - rs2 : x31<br> - rs2_w1_val == -1025<br> - rs2_w0_val == 16<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 32768<br>                                                                        |[0x80000770]:MULSR64 t0, s3, t6<br> [0x80000774]:sd t0, 96(ra)<br>    |
|  26|[0x800033a0]<br>0x0000000000000808|- rs1 : x29<br> - rs2 : x7<br> - rs2_w1_val == -513<br> - rs1_w1_val == 32768<br>                                                                                                                            |[0x80000794]:MULSR64 s7, t4, t2<br> [0x80000798]:sd s7, 112(ra)<br>   |
|  27|[0x800033b0]<br>0x0000002000000000|- rs1 : x9<br> - rs2 : x15<br> - rs2_w1_val == -257<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 256<br>                                                                                                  |[0x800007b4]:MULSR64 s10, s1, a5<br> [0x800007b8]:sd s10, 128(ra)<br> |
|  28|[0x800033c0]<br>0x0000000000000600|- rs1 : x25<br> - rs2 : x16<br> - rs2_w1_val == -129<br> - rs1_w1_val == -2049<br>                                                                                                                           |[0x800007d8]:MULSR64 s10, s9, a6<br> [0x800007dc]:sd s10, 144(ra)<br> |
|  29|[0x800033d0]<br>0xFFFFFFEFFFF80000|- rs1 : x31<br> - rs2 : x24<br> - rs2_w1_val == -65<br> - rs2_w0_val == -131073<br> - rs1_w1_val == 1<br> - rs1_w0_val == 524288<br>                                                                         |[0x800007fc]:MULSR64 sp, t6, s8<br> [0x80000800]:sd sp, 160(ra)<br>   |
|  30|[0x800033e0]<br>0x0000007FFFFFFF00|- rs1 : x13<br> - rs2 : x25<br> - rs2_w1_val == -33<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == 65536<br>                                                                                             |[0x8000081c]:MULSR64 s2, a3, s9<br> [0x80000820]:sd s2, 176(ra)<br>   |
|  31|[0x800033f0]<br>0xFFFFFFFFFFF7F000|- rs1 : x7<br> - rs2 : x20<br> - rs2_w1_val == -17<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == -129<br>                                                                                                 |[0x8000083c]:MULSR64 s2, t2, s4<br> [0x80000840]:sd s2, 192(ra)<br>   |
|  32|[0x80003400]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x10<br> - rs2_w1_val == -9<br> - rs2_w0_val == 64<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                                     |[0x80000860]:MULSR64 gp, zero, a0<br> [0x80000864]:sd gp, 208(ra)<br> |
|  33|[0x80003410]<br>0x0000000001020081|- rs2_w1_val == -5<br>                                                                                                                                                                                       |[0x80000888]:MULSR64 t6, t5, t4<br> [0x8000088c]:sd t6, 224(ra)<br>   |
|  34|[0x80003420]<br>0xFFFFFFFFFFFFFFD8|- rs2_w1_val == -3<br>                                                                                                                                                                                       |[0x800008a8]:MULSR64 t6, t5, t4<br> [0x800008ac]:sd t6, 240(ra)<br>   |
|  35|[0x80003430]<br>0x0008000000000000|- rs2_w1_val == -2<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == 128<br>                                                                                                                                 |[0x800008c4]:MULSR64 t6, t5, t4<br> [0x800008c8]:sd t6, 256(ra)<br>   |
|  36|[0x80003440]<br>0x0020000021000001|- rs2_w1_val == -2147483648<br> - rs2_w0_val == -16777217<br> - rs1_w0_val == -536870913<br>                                                                                                                 |[0x800008f4]:MULSR64 t6, t5, t4<br> [0x800008f8]:sd t6, 272(ra)<br>   |
|  37|[0x80003450]<br>0xFFFFFFF7F0000000|- rs2_w1_val == 1073741824<br>                                                                                                                                                                               |[0x80000918]:MULSR64 t6, t5, t4<br> [0x8000091c]:sd t6, 288(ra)<br>   |
|  38|[0x80003460]<br>0x00000000000000C3|- rs2_w1_val == 536870912<br> - rs2_w0_val == -65<br> - rs1_w1_val == -5<br>                                                                                                                                 |[0x8000093c]:MULSR64 t6, t5, t4<br> [0x80000940]:sd t6, 304(ra)<br>   |
|  39|[0x80003470]<br>0xFFFBFFFFFF000000|- rs2_w1_val == 268435456<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == 16777216<br>                                                                                                                     |[0x80000960]:MULSR64 t6, t5, t4<br> [0x80000964]:sd t6, 320(ra)<br>   |
|  40|[0x80003480]<br>0x000000000000000E|- rs2_w1_val == 67108864<br> - rs1_w1_val == -131073<br>                                                                                                                                                     |[0x80000984]:MULSR64 t6, t5, t4<br> [0x80000988]:sd t6, 336(ra)<br>   |
|  41|[0x80003490]<br>0x0002000040080001|- rs2_w1_val == 33554432<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                 |[0x800009b4]:MULSR64 t6, t5, t4<br> [0x800009b8]:sd t6, 352(ra)<br>   |
|  42|[0x800034a0]<br>0x0000000000000100|- rs2_w1_val == 16777216<br> - rs2_w0_val == 8<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 32<br>                                                                                                         |[0x800009d4]:MULSR64 t6, t5, t4<br> [0x800009d8]:sd t6, 368(ra)<br>   |
|  43|[0x800034b0]<br>0x0000000000000021|- rs2_w1_val == 8388608<br> - rs2_w0_val == -1<br> - rs1_w1_val == -4194305<br>                                                                                                                              |[0x800009f8]:MULSR64 t6, t5, t4<br> [0x800009fc]:sd t6, 384(ra)<br>   |
|  44|[0x800034c0]<br>0xFFFFFFFFF9FFFFFA|- rs2_w1_val == 4194304<br> - rs1_w1_val == -3<br> - rs1_w0_val == -16777217<br>                                                                                                                             |[0x80000a18]:MULSR64 t6, t5, t4<br> [0x80000a1c]:sd t6, 400(ra)<br>   |
|  45|[0x800034d0]<br>0xFFFFFFFFFBFFFFC0|- rs2_w1_val == 2097152<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 64<br>                                                                                                  |[0x80000a44]:MULSR64 t6, t5, t4<br> [0x80000a48]:sd t6, 416(ra)<br>   |
|  46|[0x800034e0]<br>0x0000000000004000|- rs2_w1_val == 1048576<br> - rs2_w0_val == 4<br>                                                                                                                                                            |[0x80000a64]:MULSR64 t6, t5, t4<br> [0x80000a68]:sd t6, 432(ra)<br>   |
|  47|[0x800034f0]<br>0x0000001000000000|- rs2_w1_val == 524288<br> - rs2_w0_val == 1073741824<br>                                                                                                                                                    |[0x80000a84]:MULSR64 t6, t5, t4<br> [0x80000a88]:sd t6, 448(ra)<br>   |
|  48|[0x80003500]<br>0x0000000000420021|- rs2_w1_val == 262144<br> - rs2_w0_val == -33<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == -131073<br>                                                                                                   |[0x80000ab4]:MULSR64 t6, t5, t4<br> [0x80000ab8]:sd t6, 464(ra)<br>   |
|  49|[0x80003510]<br>0xFFFFFFF7FFFFFE00|- rs2_w1_val == 131072<br> - rs1_w0_val == 512<br>                                                                                                                                                           |[0x80000ad8]:MULSR64 t6, t5, t4<br> [0x80000adc]:sd t6, 480(ra)<br>   |
|  50|[0x80003520]<br>0xFFFFFFFFFFFEFFF0|- rs2_w1_val == -1<br> - rs2_w0_val == -4097<br> - rs1_w0_val == 16<br>                                                                                                                                      |[0x80000af4]:MULSR64 t6, t5, t4<br> [0x80000af8]:sd t6, 496(ra)<br>   |
|  51|[0x80003530]<br>0x0000000000000008|- rs2_w1_val == 256<br> - rs2_w0_val == 1<br> - rs1_w1_val == 2<br> - rs1_w0_val == 8<br>                                                                                                                    |[0x80000b14]:MULSR64 t6, t5, t4<br> [0x80000b18]:sd t6, 512(ra)<br>   |
|  52|[0x80003540]<br>0xFFFFFFFFFFFFDFFC|- rs2_w1_val == 32768<br> - rs1_w0_val == 4<br>                                                                                                                                                              |[0x80000b44]:MULSR64 t6, t5, t4<br> [0x80000b48]:sd t6, 528(ra)<br>   |
|  53|[0x80003550]<br>0xFFFFFFFFFDFFFFFE|- rs1_w1_val == 33554432<br> - rs1_w0_val == 2<br>                                                                                                                                                           |[0x80000b68]:MULSR64 t6, t5, t4<br> [0x80000b6c]:sd t6, 544(ra)<br>   |
|  54|[0x80003560]<br>0xFFFFFFFFFFFFFFFC|- rs1_w0_val == 1<br>                                                                                                                                                                                        |[0x80000b88]:MULSR64 t6, t5, t4<br> [0x80000b8c]:sd t6, 560(ra)<br>   |
|  55|[0x80003570]<br>0x0000000000000000|- rs2_w0_val == 131072<br> - rs1_w1_val == 256<br>                                                                                                                                                           |[0x80000ba8]:MULSR64 t6, t5, t4<br> [0x80000bac]:sd t6, 576(ra)<br>   |
|  56|[0x80003580]<br>0xFFFFFFFFFFFFFF80|- rs2_w0_val == 128<br> - rs1_w0_val == -1<br>                                                                                                                                                               |[0x80000bc8]:MULSR64 t6, t5, t4<br> [0x80000bcc]:sd t6, 592(ra)<br>   |
|  57|[0x80003590]<br>0xFFFFFFFFFFFFFDE0|- rs2_w1_val == 65536<br> - rs2_w0_val == -17<br>                                                                                                                                                            |[0x80000bec]:MULSR64 t6, t5, t4<br> [0x80000bf0]:sd t6, 608(ra)<br>   |
|  58|[0x800035a0]<br>0x0000000000001200|- rs2_w1_val == 16384<br> - rs1_w1_val == 32<br>                                                                                                                                                             |[0x80000c0c]:MULSR64 t6, t5, t4<br> [0x80000c10]:sd t6, 624(ra)<br>   |
|  59|[0x800035b0]<br>0x0000000080000000|- rs2_w1_val == 8192<br> - rs2_w0_val == 256<br> - rs1_w1_val == 16384<br>                                                                                                                                   |[0x80000c2c]:MULSR64 t6, t5, t4<br> [0x80000c30]:sd t6, 640(ra)<br>   |
|  60|[0x800035c0]<br>0x0000000040000000|- rs2_w1_val == 4096<br> - rs1_w0_val == 536870912<br>                                                                                                                                                       |[0x80000c48]:MULSR64 t6, t5, t4<br> [0x80000c4c]:sd t6, 656(ra)<br>   |
|  61|[0x800035d0]<br>0xFFFFFFFFFFFFEFF8|- rs2_w1_val == 2048<br> - rs1_w1_val == 4<br> - rs1_w0_val == -513<br>                                                                                                                                      |[0x80000c68]:MULSR64 t6, t5, t4<br> [0x80000c6c]:sd t6, 672(ra)<br>   |
|  62|[0x800035e0]<br>0x0000000000001803|- rs2_w1_val == 1024<br> - rs2_w0_val == -3<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == -2049<br>                                                                                                     |[0x80000c94]:MULSR64 t6, t5, t4<br> [0x80000c98]:sd t6, 688(ra)<br>   |
|  63|[0x800035f0]<br>0x0000000000000000|- rs2_w1_val == 512<br>                                                                                                                                                                                      |[0x80000cb4]:MULSR64 t6, t5, t4<br> [0x80000cb8]:sd t6, 704(ra)<br>   |
|  64|[0x80003600]<br>0x000000000000000C|- rs2_w1_val == 128<br>                                                                                                                                                                                      |[0x80000cd4]:MULSR64 t6, t5, t4<br> [0x80000cd8]:sd t6, 720(ra)<br>   |
|  65|[0x80003610]<br>0xFFFFFFFFFFB00000|- rs2_w1_val == 64<br> - rs2_w0_val == 1048576<br>                                                                                                                                                           |[0x80000cf8]:MULSR64 t6, t5, t4<br> [0x80000cfc]:sd t6, 736(ra)<br>   |
|  66|[0x80003620]<br>0x0000000002000000|- rs2_w1_val == 32<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 8<br>                                                                                                                                        |[0x80000d18]:MULSR64 t6, t5, t4<br> [0x80000d1c]:sd t6, 752(ra)<br>   |
|  67|[0x80003630]<br>0x0000000000000100|- rs2_w1_val == 16<br>                                                                                                                                                                                       |[0x80000d38]:MULSR64 t6, t5, t4<br> [0x80000d3c]:sd t6, 768(ra)<br>   |
|  68|[0x80003640]<br>0xFDFFFFFFC8000001|- rs2_w1_val == 8<br> - rs2_w0_val == -134217729<br>                                                                                                                                                         |[0x80000d58]:MULSR64 t6, t5, t4<br> [0x80000d5c]:sd t6, 784(ra)<br>   |
|  69|[0x80003650]<br>0xFFFFFFFEFFFE0000|- rs2_w1_val == 4<br> - rs2_w0_val == -32769<br> - rs1_w0_val == 131072<br>                                                                                                                                  |[0x80000d7c]:MULSR64 t6, t5, t4<br> [0x80000d80]:sd t6, 800(ra)<br>   |
|  70|[0x80003660]<br>0x0000000110000011|- rs2_w1_val == 2<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == -17<br>                                                                                                                                 |[0x80000da0]:MULSR64 t6, t5, t4<br> [0x80000da4]:sd t6, 816(ra)<br>   |
|  71|[0x80003670]<br>0x0000000204000081|- rs2_w1_val == 1<br>                                                                                                                                                                                        |[0x80000dc0]:MULSR64 t6, t5, t4<br> [0x80000dc4]:sd t6, 832(ra)<br>   |
|  72|[0x80003680]<br>0x0000000000800004|- rs2_w0_val == -2097153<br>                                                                                                                                                                                 |[0x80000de0]:MULSR64 t6, t5, t4<br> [0x80000de4]:sd t6, 848(ra)<br>   |
|  73|[0x80003690]<br>0xFFFD55550002AAAB|- rs2_w0_val == 1431655765<br> - rs1_w0_val == -524289<br>                                                                                                                                                   |[0x80000e18]:MULSR64 t6, t5, t4<br> [0x80000e1c]:sd t6, 864(ra)<br>   |
|  74|[0x800036a0]<br>0x0000100040004001|- rs2_w0_val == -1073741825<br>                                                                                                                                                                              |[0x80000e48]:MULSR64 t6, t5, t4<br> [0x80000e4c]:sd t6, 880(ra)<br>   |
|  75|[0x800036b0]<br>0x0000004020000201|- rs2_w0_val == -536870913<br>                                                                                                                                                                               |[0x80000e68]:MULSR64 t6, t5, t4<br> [0x80000e6c]:sd t6, 896(ra)<br>   |
|  76|[0x800036c0]<br>0xFFFEFFFFFC000000|- rs2_w0_val == -4194305<br> - rs1_w1_val == -129<br> - rs1_w0_val == 67108864<br>                                                                                                                           |[0x80000e8c]:MULSR64 t6, t5, t4<br> [0x80000e90]:sd t6, 912(ra)<br>   |
|  77|[0x800036d0]<br>0xFFFFFFFFFFEFFFFC|- rs2_w0_val == -262145<br> - rs1_w1_val == 2147483647<br>                                                                                                                                                   |[0x80000eb4]:MULSR64 t6, t5, t4<br> [0x80000eb8]:sd t6, 928(ra)<br>   |
|  78|[0x800036e0]<br>0xFFFFFFFFFFFF1FF9|- rs2_w0_val == -8193<br>                                                                                                                                                                                    |[0x80000ed8]:MULSR64 t6, t5, t4<br> [0x80000edc]:sd t6, 944(ra)<br>   |
|  79|[0x80003700]<br>0xFFFFFFE000000000|- rs2_w0_val == -2147483648<br> - rs1_w1_val == -1073741825<br>                                                                                                                                              |[0x80000f24]:MULSR64 t6, t5, t4<br> [0x80000f28]:sd t6, 976(ra)<br>   |
|  80|[0x80003710]<br>0xFFFFFFFFFFFFFF70|- rs1_w1_val == -268435457<br> - rs1_w0_val == -9<br>                                                                                                                                                        |[0x80000f48]:MULSR64 t6, t5, t4<br> [0x80000f4c]:sd t6, 992(ra)<br>   |
|  81|[0x80003720]<br>0xFFFFFFFFFFFFB000|- rs1_w1_val == -134217729<br>                                                                                                                                                                               |[0x80000f74]:MULSR64 t6, t5, t4<br> [0x80000f78]:sd t6, 1008(ra)<br>  |
|  82|[0x80003730]<br>0x0000000400104001|- rs1_w1_val == -67108865<br> - rs1_w0_val == -1048577<br>                                                                                                                                                   |[0x80000fa8]:MULSR64 t6, t5, t4<br> [0x80000fac]:sd t6, 1024(ra)<br>  |
|  83|[0x80003740]<br>0x0000000000000012|- rs2_w0_val == -9<br> - rs1_w1_val == -16777217<br>                                                                                                                                                         |[0x80000fcc]:MULSR64 t6, t5, t4<br> [0x80000fd0]:sd t6, 1040(ra)<br>  |
|  84|[0x80003750]<br>0x0000000000800004|- rs1_w1_val == -1048577<br>                                                                                                                                                                                 |[0x80000ff0]:MULSR64 t6, t5, t4<br> [0x80000ff4]:sd t6, 1056(ra)<br>  |
|  85|[0x80003760]<br>0x0000000400800801|- rs1_w1_val == -524289<br>                                                                                                                                                                                  |[0x8000101c]:MULSR64 t6, t5, t4<br> [0x80001020]:sd t6, 1072(ra)<br>  |
|  86|[0x80003770]<br>0x0000000000600000|- rs1_w1_val == -262145<br> - rs1_w0_val == 1048576<br>                                                                                                                                                      |[0x8000103c]:MULSR64 t6, t5, t4<br> [0x80001040]:sd t6, 1088(ra)<br>  |
|  87|[0x80003780]<br>0x02AAAAAAA8000000|- rs1_w1_val == -32769<br> - rs1_w0_val == 134217728<br>                                                                                                                                                     |[0x80001060]:MULSR64 t6, t5, t4<br> [0x80001064]:sd t6, 1104(ra)<br>  |
|  88|[0x80003790]<br>0x0000008008001001|- rs1_w1_val == -16385<br>                                                                                                                                                                                   |[0x8000108c]:MULSR64 t6, t5, t4<br> [0x80001090]:sd t6, 1120(ra)<br>  |
|  89|[0x800037a0]<br>0xFFFFFFFFF7E00000|- rs1_w1_val == -8193<br> - rs1_w0_val == 2097152<br>                                                                                                                                                        |[0x800010ac]:MULSR64 t6, t5, t4<br> [0x800010b0]:sd t6, 1136(ra)<br>  |
|  90|[0x800037b0]<br>0xFFFFFFFFFFFBFFC0|- rs1_w1_val == -4097<br>                                                                                                                                                                                    |[0x800010d4]:MULSR64 t6, t5, t4<br> [0x800010d8]:sd t6, 1152(ra)<br>  |
|  91|[0x800037c0]<br>0x0000001555555540|- rs1_w1_val == -1025<br>                                                                                                                                                                                    |[0x800010f8]:MULSR64 t6, t5, t4<br> [0x800010fc]:sd t6, 1168(ra)<br>  |
|  92|[0x800037d0]<br>0xFFFFFFFFFFFF6000|- rs1_w1_val == -513<br>                                                                                                                                                                                     |[0x8000111c]:MULSR64 t6, t5, t4<br> [0x80001120]:sd t6, 1184(ra)<br>  |
|  93|[0x800037e0]<br>0x0000000008200041|- rs1_w1_val == -257<br> - rs1_w0_val == -2097153<br>                                                                                                                                                        |[0x80001140]:MULSR64 t6, t5, t4<br> [0x80001144]:sd t6, 1200(ra)<br>  |
|  94|[0x800037f0]<br>0x0000000000000048|- rs1_w1_val == -17<br>                                                                                                                                                                                      |[0x80001164]:MULSR64 t6, t5, t4<br> [0x80001168]:sd t6, 1216(ra)<br>  |
|  95|[0x80003800]<br>0x000000000000000A|- rs1_w1_val == -9<br>                                                                                                                                                                                       |[0x80001184]:MULSR64 t6, t5, t4<br> [0x80001188]:sd t6, 1232(ra)<br>  |
|  96|[0x80003810]<br>0xFFFFFFFFCFFFFFFD|- rs1_w1_val == -2<br>                                                                                                                                                                                       |[0x800011a8]:MULSR64 t6, t5, t4<br> [0x800011ac]:sd t6, 1248(ra)<br>  |
|  97|[0x80003820]<br>0x0000040004010001|- rs1_w1_val == -2147483648<br>                                                                                                                                                                              |[0x800011dc]:MULSR64 t6, t5, t4<br> [0x800011e0]:sd t6, 1264(ra)<br>  |
|  98|[0x80003830]<br>0x0000000000802401|- rs1_w0_val == -1025<br>                                                                                                                                                                                    |[0x80001204]:MULSR64 t6, t5, t4<br> [0x80001208]:sd t6, 1280(ra)<br>  |
|  99|[0x80003840]<br>0x0000080000000000|- rs1_w1_val == 2048<br> - rs1_w0_val == 16384<br>                                                                                                                                                           |[0x80001224]:MULSR64 t6, t5, t4<br> [0x80001228]:sd t6, 1296(ra)<br>  |
| 100|[0x80003850]<br>0xFFFFFFFFFF6FFFF7|- rs1_w1_val == 1024<br>                                                                                                                                                                                     |[0x80001240]:MULSR64 t6, t5, t4<br> [0x80001244]:sd t6, 1312(ra)<br>  |
| 101|[0x80003860]<br>0xFFFFBFFFE0000000|- rs1_w1_val == 512<br>                                                                                                                                                                                      |[0x80001260]:MULSR64 t6, t5, t4<br> [0x80001264]:sd t6, 1328(ra)<br>  |
| 102|[0x80003870]<br>0xFFFFDFFFFFC00000|- rs1_w1_val == 16<br> - rs1_w0_val == 4194304<br>                                                                                                                                                           |[0x80001280]:MULSR64 t6, t5, t4<br> [0x80001284]:sd t6, 1344(ra)<br>  |
| 103|[0x80003890]<br>0xFFFFFFFAAAAAAAA0|- rs1_w0_val == -1431655766<br>                                                                                                                                                                              |[0x800012c8]:MULSR64 t6, t5, t4<br> [0x800012cc]:sd t6, 1376(ra)<br>  |
| 104|[0x800038a0]<br>0x1FFFFFFF40000001|- rs1_w0_val == 2147483647<br>                                                                                                                                                                               |[0x800012ec]:MULSR64 t6, t5, t4<br> [0x800012f0]:sd t6, 1392(ra)<br>  |
| 105|[0x800038b0]<br>0xFEFFFFFFE0000000|- rs1_w0_val == -134217729<br>                                                                                                                                                                               |[0x8000130c]:MULSR64 t6, t5, t4<br> [0x80001310]:sd t6, 1408(ra)<br>  |
| 106|[0x800038c0]<br>0x0000010000820001|- rs1_w0_val == -8388609<br>                                                                                                                                                                                 |[0x80001334]:MULSR64 t6, t5, t4<br> [0x80001338]:sd t6, 1424(ra)<br>  |
| 107|[0x800038d0]<br>0xFFFFFFFFFE7FFFFA|- rs1_w0_val == -4194305<br>                                                                                                                                                                                 |[0x80001358]:MULSR64 t6, t5, t4<br> [0x8000135c]:sd t6, 1440(ra)<br>  |
| 108|[0x800038e0]<br>0xFFFFFEFFC0000000|- rs2_w0_val == -1025<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                     |[0x8000137c]:MULSR64 t6, t5, t4<br> [0x80001380]:sd t6, 1456(ra)<br>  |
| 109|[0x800038f0]<br>0x0000040001040001|- rs1_w0_val == -262145<br>                                                                                                                                                                                  |[0x800013a4]:MULSR64 t6, t5, t4<br> [0x800013a8]:sd t6, 1472(ra)<br>  |
| 110|[0x80003900]<br>0xFFFFFFFEFF800000|- rs2_w0_val == -513<br>                                                                                                                                                                                     |[0x800013c4]:MULSR64 t6, t5, t4<br> [0x800013c8]:sd t6, 1488(ra)<br>  |
| 111|[0x80003910]<br>0xFFFFFFFFFFFB0000|- rs2_w0_val == -5<br> - rs1_w0_val == 65536<br>                                                                                                                                                             |[0x800013e4]:MULSR64 t6, t5, t4<br> [0x800013e8]:sd t6, 1504(ra)<br>  |
| 112|[0x80003920]<br>0xFFFFFFFFDFFF0000|- rs2_w0_val == 65536<br> - rs1_w0_val == -8193<br>                                                                                                                                                          |[0x80001414]:MULSR64 t6, t5, t4<br> [0x80001418]:sd t6, 1520(ra)<br>  |
| 113|[0x80003930]<br>0xFFFFFFFFFFFF7E00|- rs2_w0_val == 512<br> - rs1_w0_val == -65<br>                                                                                                                                                              |[0x80001438]:MULSR64 t6, t5, t4<br> [0x8000143c]:sd t6, 1536(ra)<br>  |
| 114|[0x80003940]<br>0x0000000038000000|- rs2_w0_val == 134217728<br>                                                                                                                                                                                |[0x80001454]:MULSR64 t6, t5, t4<br> [0x80001458]:sd t6, 1552(ra)<br>  |
| 115|[0x80003950]<br>0xFFFFFFFFE0000000|- rs2_w0_val == 67108864<br>                                                                                                                                                                                 |[0x80001470]:MULSR64 t6, t5, t4<br> [0x80001474]:sd t6, 1568(ra)<br>  |
| 116|[0x80003960]<br>0xFFFFFFFFEFFFF800|- rs2_w0_val == 2048<br>                                                                                                                                                                                     |[0x80001498]:MULSR64 t6, t5, t4<br> [0x8000149c]:sd t6, 1584(ra)<br>  |
| 117|[0x80003970]<br>0x0004000000000000|- rs2_w0_val == 33554432<br> - rs1_w0_val == 33554432<br>                                                                                                                                                    |[0x800014b4]:MULSR64 t6, t5, t4<br> [0x800014b8]:sd t6, 1600(ra)<br>  |
| 118|[0x80003980]<br>0x0000000000E00000|- rs2_w0_val == 2097152<br>                                                                                                                                                                                  |[0x800014d8]:MULSR64 t6, t5, t4<br> [0x800014dc]:sd t6, 1616(ra)<br>  |
| 119|[0x80003990]<br>0x0000008000000000|- rs2_w0_val == 262144<br>                                                                                                                                                                                   |[0x800014f8]:MULSR64 t6, t5, t4<br> [0x800014fc]:sd t6, 1632(ra)<br>  |
| 120|[0x800039a0]<br>0xFFFFFFFFFFFBC000|- rs2_w0_val == 16384<br>                                                                                                                                                                                    |[0x80001520]:MULSR64 t6, t5, t4<br> [0x80001524]:sd t6, 1648(ra)<br>  |
| 121|[0x800039b0]<br>0x0000080000000000|- rs2_w0_val == 8192<br>                                                                                                                                                                                     |[0x80001544]:MULSR64 t6, t5, t4<br> [0x80001548]:sd t6, 1664(ra)<br>  |
| 122|[0x800039c0]<br>0xFFFFFFFFFF7C0000|- rs1_w0_val == 262144<br>                                                                                                                                                                                   |[0x80001568]:MULSR64 t6, t5, t4<br> [0x8000156c]:sd t6, 1680(ra)<br>  |
| 123|[0x800039d0]<br>0x0000000004000000|- rs2_w0_val == 32768<br>                                                                                                                                                                                    |[0x80001594]:MULSR64 t6, t5, t4<br> [0x80001598]:sd t6, 1696(ra)<br>  |
| 124|[0x800039e0]<br>0x0000200080000000|- rs1_w0_val == -2147483648<br>                                                                                                                                                                              |[0x800015bc]:MULSR64 t6, t5, t4<br> [0x800015c0]:sd t6, 1712(ra)<br>  |
| 125|[0x80003a00]<br>0xFFFFFFFFFFFFFEC0|- rs2_w1_val == -67108865<br>                                                                                                                                                                                |[0x80001614]:MULSR64 t6, t5, t4<br> [0x80001618]:sd t6, 1744(ra)<br>  |
| 126|[0x80003a10]<br>0xFFFFFFFBFFFFFFC0|- rs1_w0_val == -268435457<br>                                                                                                                                                                               |[0x80001638]:MULSR64 t6, t5, t4<br> [0x8000163c]:sd t6, 1760(ra)<br>  |
