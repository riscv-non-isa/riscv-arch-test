
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800017b0')]      |
| SIG_REGION                | [('0x80003210', '0x80003680', '142 dwords')]      |
| COV_LABELS                | rcrsa32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/rcrsa32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 141      |
| STAT1                     | 136      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d54]:RCRSA32 t6, t5, t4
      [0x80000d58]:sd t6, 384(fp)
 -- Signature Address: 0x80003418 Data: 0xB800000000000003
 -- Redundant Coverpoints hit by the op
      - opcode : rcrsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs2_w0_val == 268435456
      - rs1_w1_val == -2147483648
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001158]:RCRSA32 t6, t5, t4
      [0x8000115c]:sd t6, 632(fp)
 -- Signature Address: 0x80003510 Data: 0x000000030000000B
 -- Redundant Coverpoints hit by the op
      - opcode : rcrsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs2_w0_val == 0
      - rs1_w0_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001498]:RCRSA32 t6, t5, t4
      [0x8000149c]:sd t6, 816(fp)
 -- Signature Address: 0x800035c8 Data: 0xFFFFFFF8E0007FFF
 -- Redundant Coverpoints hit by the op
      - opcode : rcrsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == -1073741825
      - rs2_w0_val == 16
      - rs1_w1_val == 0
      - rs1_w0_val == 65536




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001760]:RCRSA32 t6, t5, t4
      [0x80001764]:sd t6, 968(fp)
 -- Signature Address: 0x80003660 Data: 0x400100004000007F
 -- Redundant Coverpoints hit by the op
      - opcode : rcrsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val < 0
      - rs2_w1_val == 2147483647
      - rs2_w0_val == -131073
      - rs1_w1_val == 2147483647
      - rs1_w0_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800017a8]:RCRSA32 t6, t5, t4
      [0x800017ac]:sd t6, 984(fp)
 -- Signature Address: 0x80003670 Data: 0xFFFB7FFFFBFFDFFF
 -- Redundant Coverpoints hit by the op
      - opcode : rcrsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == -16385
      - rs2_w0_val == 524288
      - rs1_w1_val == -65537
      - rs1_w0_val == -134217729






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

|s.no|            signature             |                                                                                                                                       coverpoints                                                                                                                                       |                                 code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFBD0000003D|- opcode : rcrsa32<br> - rs1 : x8<br> - rs2 : x8<br> - rd : x26<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 128<br> - rs1_w0_val == 128<br> |[0x800003b0]:RCRSA32 s10, fp, fp<br> [0x800003b4]:sd s10, 0(gp)<br>    |
|   2|[0x80003218]<br>0x1FFFFFFE20000001|- rs1 : x10<br> - rs2 : x10<br> - rd : x10<br> - rs1 == rs2 == rd<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 1073741824<br> - rs1_w1_val == 1073741824<br>                                                                                                              |[0x800003d4]:RCRSA32 a0, a0, a0<br> [0x800003d8]:sd a0, 8(gp)<br>      |
|   3|[0x80003220]<br>0xFFEFFFFB00040800|- rs1 : x17<br> - rs2 : x7<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val != rs2_w0_val<br> - rs2_w1_val == 4096<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == 524288<br>       |[0x800003fc]:RCRSA32 s11, a7, t2<br> [0x80000400]:sd s11, 16(gp)<br>   |
|   4|[0x80003228]<br>0xFFFFFE40FF000004|- rs1 : x15<br> - rs2 : x19<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 128<br>                                                                                             |[0x80000420]:RCRSA32 a5, a5, s3<br> [0x80000424]:sd a5, 24(gp)<br>     |
|   5|[0x80003230]<br>0xFFFFEEFF00000FFC|- rs1 : x19<br> - rs2 : x24<br> - rd : x24<br> - rs2 == rd != rs1<br> - rs2_w0_val == 8192<br> - rs1_w1_val == -513<br> - rs1_w0_val == 8192<br>                                                                                                                                         |[0x80000440]:RCRSA32 s8, s3, s8<br> [0x80000444]:sd s8, 32(gp)<br>     |
|   6|[0x80003238]<br>0x000080030000FFEF|- rs1 : x22<br> - rs2 : x14<br> - rd : x1<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w1_val == 131072<br> - rs2_w0_val == -65537<br> - rs1_w0_val == -33<br>                                                                                                                      |[0x8000046c]:RCRSA32 ra, s6, a4<br> [0x80000470]:sd ra, 40(gp)<br>     |
|   7|[0x80003240]<br>0x00007FF0FC000002|- rs1 : x13<br> - rs2 : x20<br> - rd : x8<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == -134217729<br> - rs1_w1_val == -33<br>                                                                                                                                             |[0x80000494]:RCRSA32 fp, a3, s4<br> [0x80000498]:sd fp, 48(gp)<br>     |
|   8|[0x80003248]<br>0xFFFFFFF9D5555575|- rs1 : x7<br> - rs2 : x22<br> - rd : x19<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == 16<br> - rs1_w1_val == 2<br> - rs1_w0_val == 64<br>                                                                                                                                        |[0x800004b8]:RCRSA32 s3, t2, s6<br> [0x800004bc]:sd s3, 56(gp)<br>     |
|   9|[0x80003250]<br>0xFFFFE1002AA6AAAA|- rs1 : x4<br> - rs2 : x2<br> - rd : x14<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -513<br> - rs1_w1_val == -16385<br> - rs1_w0_val == -524289<br>                                                                                                                              |[0x800004e0]:RCRSA32 a4, tp, sp<br> [0x800004e4]:sd a4, 64(gp)<br>     |
|  10|[0x80003258]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x11<br> - rd : x0<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -131073<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 256<br>                                                                                                                          |[0x8000050c]:RCRSA32 zero, t5, a1<br> [0x80000510]:sd zero, 72(gp)<br> |
|  11|[0x80003260]<br>0xFFF00002E007FFFF|- rs1 : x25<br> - rs2 : x17<br> - rd : x22<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 2097152<br> - rs1_w1_val == 4<br> - rs1_w0_val == 1048576<br>                                                                                                                             |[0x80000530]:RCRSA32 s6, s9, a7<br> [0x80000534]:sd s6, 80(gp)<br>     |
|  12|[0x80003268]<br>0xD5555955EFFFFF7F|- rs1 : x9<br> - rs2 : x16<br> - rd : x20<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == 2048<br> - rs1_w0_val == -257<br>                                                                                    |[0x80000564]:RCRSA32 s4, s1, a6<br> [0x80000568]:sd s4, 88(gp)<br>     |
|  13|[0x80003270]<br>0xFFFFFFFFF807FFFF|- rs1 : x1<br> - rs2 : x5<br> - rd : x9<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == 2<br> - rs1_w1_val == 1<br>                                                                                                                                                                   |[0x80000588]:RCRSA32 s1, ra, t0<br> [0x8000058c]:sd s1, 96(gp)<br>     |
|  14|[0x80003278]<br>0xDFFFDFFFFDFFFFFE|- rs1 : x18<br> - rs2 : x31<br> - rd : x11<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == 1073741824<br> - rs1_w0_val == -3<br>                                                                                                                                                       |[0x800005a8]:RCRSA32 a1, s2, t6<br> [0x800005ac]:sd a1, 104(gp)<br>    |
|  15|[0x80003280]<br>0x20000001FF8000FF|- rs1 : x23<br> - rs2 : x25<br> - rd : x4<br> - rs2_w1_val == -16777217<br> - rs1_w0_val == 512<br>                                                                                                                                                                                      |[0x800005c8]:RCRSA32 tp, s7, s9<br> [0x800005cc]:sd tp, 112(gp)<br>    |
|  16|[0x80003288]<br>0xFFFFFFC1FDBFFFFF|- rs1 : x27<br> - rs2 : x12<br> - rd : x23<br> - rs2_w1_val == -8388609<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                                |[0x800005ec]:RCRSA32 s7, s11, a2<br> [0x800005f0]:sd s7, 120(gp)<br>   |
|  17|[0x80003290]<br>0x01FFFFC0FFCFFFFF|- rs1 : x6<br> - rs2 : x27<br> - rd : x18<br> - rs2_w1_val == -4194305<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == -2097153<br>                                                                                                                                                     |[0x80000618]:RCRSA32 s2, t1, s11<br> [0x8000061c]:sd s2, 128(gp)<br>   |
|  18|[0x80003298]<br>0x2AB2AAABFFEFFFFC|- rs1 : x16<br> - rs2 : x4<br> - rd : x31<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == 1431655765<br>                                                                                                                                                   |[0x8000064c]:RCRSA32 t6, a6, tp<br> [0x80000650]:sd t6, 0(fp)<br>      |
|  19|[0x800032a0]<br>0x000010050007FFFF|- rs1 : x28<br> - rs2 : x1<br> - rd : x16<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == -8193<br> - rs1_w0_val == 2097152<br>                                                                                                                                                         |[0x80000674]:RCRSA32 a6, t3, ra<br> [0x80000678]:sd a6, 8(fp)<br>      |
|  20|[0x800032a8]<br>0x00000082FFFBFFEF|- rs1 : x2<br> - rs2 : x29<br> - rd : x25<br> - rs2_w1_val == -524289<br> - rs2_w0_val == -5<br> - rs1_w1_val == 256<br>                                                                                                                                                                 |[0x80000694]:RCRSA32 s9, sp, t4<br> [0x80000698]:sd s9, 16(fp)<br>     |
|  21|[0x800032b0]<br>0x26AAAAAAFFFE0000|- rs1 : x20<br> - rs2 : x3<br> - rd : x7<br> - rs2_w1_val == -262145<br> - rs2_w0_val == 134217728<br> - rs1_w0_val == 2<br>                                                                                                                                                             |[0x800006b8]:RCRSA32 t2, s4, gp<br> [0x800006bc]:sd t2, 24(fp)<br>     |
|  22|[0x800032b8]<br>0xFFC00010FFFF3FFF|- rs1 : x24<br> - rs2 : x26<br> - rd : x29<br> - rs2_w1_val == -131073<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == 32<br> - rs1_w0_val == 32768<br>                                                                                                                                  |[0x800006d8]:RCRSA32 t4, s8, s10<br> [0x800006dc]:sd t4, 32(fp)<br>    |
|  23|[0x800032c0]<br>0x00000200FFFFFDFF|- rs1 : x26<br> - rs2 : x0<br> - rd : x17<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 1024<br> - rs1_w0_val == -1025<br>                                                                                                                                             |[0x800006fc]:RCRSA32 a7, s10, zero<br> [0x80000700]:sd a7, 40(fp)<br>  |
|  24|[0x800032c8]<br>0x00000804FFFFB7FF|- rs1 : x12<br> - rs2 : x15<br> - rd : x13<br> - rs2_w1_val == -32769<br> - rs2_w0_val == -4097<br> - rs1_w0_val == -4097<br>                                                                                                                                                            |[0x80000728]:RCRSA32 a3, a2, a5<br> [0x8000072c]:sd a3, 48(fp)<br>     |
|  25|[0x800032d0]<br>0xFFFC0000FFFFDFFF|- rs1 : x0<br> - rs2 : x30<br> - rd : x2<br> - rs2_w1_val == -16385<br> - rs2_w0_val == 524288<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                                                                                           |[0x8000074c]:RCRSA32 sp, zero, t5<br> [0x80000750]:sd sp, 56(fp)<br>   |
|  26|[0x800032d8]<br>0x000A0000F7FFEFFF|- rs1 : x21<br> - rs2 : x6<br> - rd : x5<br> - rs2_w1_val == -8193<br> - rs1_w1_val == 262144<br> - rs1_w0_val == -268435457<br>                                                                                                                                                         |[0x80000774]:RCRSA32 t0, s5, t1<br> [0x80000778]:sd t0, 64(fp)<br>     |
|  27|[0x800032e0]<br>0x00200040FDFFF7FF|- rs1 : x29<br> - rs2 : x28<br> - rd : x3<br> - rs2_w1_val == -4097<br> - rs2_w0_val == -129<br> - rs1_w1_val == 4194304<br>                                                                                                                                                             |[0x80000798]:RCRSA32 gp, t4, t3<br> [0x8000079c]:sd gp, 72(fp)<br>     |
|  28|[0x800032e8]<br>0xD5554555FEFFFBFF|- rs1 : x3<br> - rs2 : x9<br> - rd : x6<br> - rs2_w1_val == -2049<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -33554433<br>                                                                                                                                                      |[0x800007c4]:RCRSA32 t1, gp, s1<br> [0x800007c8]:sd t1, 80(fp)<br>     |
|  29|[0x800032f0]<br>0x00FFF800001FFDFF|- rs1 : x5<br> - rs2 : x18<br> - rd : x28<br> - rs2_w1_val == -1025<br> - rs2_w0_val == -33554433<br> - rs1_w1_val == -4097<br> - rs1_w0_val == 4194304<br>                                                                                                                              |[0x800007e8]:RCRSA32 t3, t0, s2<br> [0x800007ec]:sd t3, 88(fp)<br>     |
|  30|[0x800032f8]<br>0xFFFFFF021FFFFEFF|- rs1 : x11<br> - rs2 : x23<br> - rd : x30<br> - rs2_w1_val == -513<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                   |[0x80000808]:RCRSA32 t5, a1, s7<br> [0x8000080c]:sd t5, 96(fp)<br>     |
|  31|[0x80003300]<br>0x40000002FFFFBF7F|- rs1 : x14<br> - rs2 : x13<br> - rd : x21<br> - rs2_w1_val == -257<br> - rs2_w0_val == -2147483648<br> - rs1_w0_val == -32769<br>                                                                                                                                                       |[0x80000828]:RCRSA32 s5, a4, a3<br> [0x8000082c]:sd s5, 104(fp)<br>    |
|  32|[0x80003308]<br>0xF7FFFFEFFFFFBFBF|- rs1 : x31<br> - rs2 : x21<br> - rd : x12<br> - rs2_w1_val == -129<br> - rs2_w0_val == 268435456<br>                                                                                                                                                                                    |[0x8000084c]:RCRSA32 a2, t6, s5<br> [0x80000850]:sd a2, 112(fp)<br>    |
|  33|[0x80003310]<br>0x001FF000000003DF|- rs2_w1_val == -65<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == -8193<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                  |[0x8000087c]:RCRSA32 t6, t5, t4<br> [0x80000880]:sd t6, 120(fp)<br>    |
|  34|[0x80003318]<br>0x00000103FFFFFFF4|- rs2_w1_val == -33<br> - rs1_w1_val == 512<br>                                                                                                                                                                                                                                          |[0x8000089c]:RCRSA32 t6, t5, t4<br> [0x800008a0]:sd t6, 128(fp)<br>    |
|  35|[0x80003320]<br>0xDFFF8000DFFFFFF7|- rs2_w1_val == -17<br> - rs2_w0_val == 65536<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                                                                        |[0x800008c4]:RCRSA32 t6, t5, t4<br> [0x800008c8]:sd t6, 136(fp)<br>    |
|  36|[0x80003328]<br>0xFFFFFC200000FFFB|- rs2_w1_val == -9<br> - rs2_w0_val == -65<br> - rs1_w1_val == -2049<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                      |[0x800008e4]:RCRSA32 t6, t5, t4<br> [0x800008e8]:sd t6, 144(fp)<br>    |
|  37|[0x80003330]<br>0xC0200000FFFBFFFD|- rs2_w1_val == -5<br> - rs2_w0_val == 2147483647<br>                                                                                                                                                                                                                                    |[0x80000910]:RCRSA32 t6, t5, t4<br> [0x80000914]:sd t6, 152(fp)<br>    |
|  38|[0x80003338]<br>0x00000004FFFFFFDE|- rs2_w1_val == -3<br> - rs2_w0_val == -3<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                                    |[0x80000930]:RCRSA32 t6, t5, t4<br> [0x80000934]:sd t6, 160(fp)<br>    |
|  39|[0x80003340]<br>0x000003F0FBFFFFFE|- rs2_w1_val == -2<br> - rs2_w0_val == 32<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                                             |[0x80000954]:RCRSA32 t6, t5, t4<br> [0x80000958]:sd t6, 168(fp)<br>    |
|  40|[0x80003348]<br>0x000000F0A0000000|- rs2_w1_val == -2147483648<br>                                                                                                                                                                                                                                                          |[0x80000974]:RCRSA32 t6, t5, t4<br> [0x80000978]:sd t6, 176(fp)<br>    |
|  41|[0x80003350]<br>0xD555515510000004|- rs2_w1_val == 536870912<br>                                                                                                                                                                                                                                                            |[0x800009a8]:RCRSA32 t6, t5, t4<br> [0x800009ac]:sd t6, 184(fp)<br>    |
|  42|[0x80003358]<br>0x0010200008010000|- rs2_w1_val == 268435456<br> - rs2_w0_val == -16385<br> - rs1_w1_val == 2097152<br>                                                                                                                                                                                                     |[0x800009d8]:RCRSA32 t6, t5, t4<br> [0x800009dc]:sd t6, 192(fp)<br>    |
|  43|[0x80003360]<br>0x2AAA9AAAD9555555|- rs2_w1_val == 134217728<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>                                                                                                                                                                                            |[0x80000a14]:RCRSA32 t6, t5, t4<br> [0x80000a18]:sd t6, 200(fp)<br>    |
|  44|[0x80003368]<br>0x000001FC01FFBFFF|- rs2_w1_val == 67108864<br> - rs2_w0_val == -1025<br>                                                                                                                                                                                                                                   |[0x80000a3c]:RCRSA32 t6, t5, t4<br> [0x80000a40]:sd t6, 208(fp)<br>    |
|  45|[0x80003370]<br>0x00084000FCFFFFFF|- rs2_w1_val == 33554432<br> - rs1_w1_val == 32768<br>                                                                                                                                                                                                                                   |[0x80000a6c]:RCRSA32 t6, t5, t4<br> [0x80000a70]:sd t6, 216(fp)<br>    |
|  46|[0x80003378]<br>0xFFFBFFFC007EFFFF|- rs2_w1_val == 16777216<br> - rs1_w0_val == -131073<br>                                                                                                                                                                                                                                 |[0x80000a94]:RCRSA32 t6, t5, t4<br> [0x80000a98]:sd t6, 224(fp)<br>    |
|  47|[0x80003380]<br>0xFFC80000003FFFFB|- rs2_w1_val == 8388608<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == -9<br>                                                                                                                                                                                                           |[0x80000abc]:RCRSA32 t6, t5, t4<br> [0x80000ac0]:sd t6, 232(fp)<br>    |
|  48|[0x80003388]<br>0x00000001D5755555|- rs2_w1_val == 4194304<br> - rs1_w1_val == 8<br>                                                                                                                                                                                                                                        |[0x80000ae0]:RCRSA32 t6, t5, t4<br> [0x80000ae4]:sd t6, 240(fp)<br>    |
|  49|[0x80003390]<br>0xC0000003200FFFFF|- rs2_w1_val == 2097152<br>                                                                                                                                                                                                                                                              |[0x80000b04]:RCRSA32 t6, t5, t4<br> [0x80000b08]:sd t6, 248(fp)<br>    |
|  50|[0x80003398]<br>0xFFE02000FC07FFFF|- rs2_w1_val == 1048576<br> - rs1_w1_val == -4194305<br>                                                                                                                                                                                                                                 |[0x80000b34]:RCRSA32 t6, t5, t4<br> [0x80000b38]:sd t6, 256(fp)<br>    |
|  51|[0x800033a0]<br>0x1FFFFFFE00040200|- rs2_w1_val == 524288<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                      |[0x80000b58]:RCRSA32 t6, t5, t4<br> [0x80000b5c]:sd t6, 264(fp)<br>    |
|  52|[0x800033a8]<br>0x000020030001FFFB|- rs2_w1_val == 262144<br>                                                                                                                                                                                                                                                               |[0x80000b84]:RCRSA32 t6, t5, t4<br> [0x80000b88]:sd t6, 272(fp)<br>    |
|  53|[0x800033b0]<br>0x0810000000FFFFDF|- rs2_w0_val == -268435457<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                              |[0x80000ba4]:RCRSA32 t6, t5, t4<br> [0x80000ba8]:sd t6, 280(fp)<br>    |
|  54|[0x800033b8]<br>0x00100001407FFFFF|- rs2_w0_val == -2<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                      |[0x80000bc4]:RCRSA32 t6, t5, t4<br> [0x80000bc8]:sd t6, 288(fp)<br>    |
|  55|[0x800033c0]<br>0xFFFFDFFB003FFFFE|- rs2_w0_val == 16384<br> - rs1_w1_val == -9<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                             |[0x80000be4]:RCRSA32 t6, t5, t4<br> [0x80000be8]:sd t6, 296(fp)<br>    |
|  56|[0x800033c8]<br>0x3FBFFFFF2001FFFF|- rs1_w1_val == -8388609<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                                  |[0x80000c0c]:RCRSA32 t6, t5, t4<br> [0x80000c10]:sd t6, 304(fp)<br>    |
|  57|[0x800033d0]<br>0x00000023FFFE7FFF|- rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                                |[0x80000c2c]:RCRSA32 t6, t5, t4<br> [0x80000c30]:sd t6, 312(fp)<br>    |
|  58|[0x800033d8]<br>0x1FFFFFFEFFF01FFF|- rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                                |[0x80000c58]:RCRSA32 t6, t5, t4<br> [0x80000c5c]:sd t6, 320(fp)<br>    |
|  59|[0x800033e0]<br>0x0000000101000800|- rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                 |[0x80000c78]:RCRSA32 t6, t5, t4<br> [0x80000c7c]:sd t6, 328(fp)<br>    |
|  60|[0x800033e8]<br>0xBFFFFFFDFFFFFFBF|- rs1_w1_val == -2147483648<br>                                                                                                                                                                                                                                                          |[0x80000c98]:RCRSA32 t6, t5, t4<br> [0x80000c9c]:sd t6, 336(fp)<br>    |
|  61|[0x800033f0]<br>0xFBFFFFFBFFFFF80F|- rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                   |[0x80000cb8]:RCRSA32 t6, t5, t4<br> [0x80000cbc]:sd t6, 344(fp)<br>    |
|  62|[0x800033f8]<br>0xFFF7FFFF00000008|- rs2_w1_val == 1<br> - rs2_w0_val == 1048576<br> - rs1_w1_val == -1<br> - rs1_w0_val == 16<br>                                                                                                                                                                                          |[0x80000cd8]:RCRSA32 t6, t5, t4<br> [0x80000cdc]:sd t6, 352(fp)<br>    |
|  63|[0x80003400]<br>0xFFFC010000000002|- rs1_w1_val == -524289<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                        |[0x80000cfc]:RCRSA32 t6, t5, t4<br> [0x80000d00]:sd t6, 360(fp)<br>    |
|  64|[0x80003408]<br>0xFDFF7FFFFFFFFFFD|- rs2_w0_val == 67108864<br> - rs1_w1_val == -65537<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                            |[0x80000d1c]:RCRSA32 t6, t5, t4<br> [0x80000d20]:sd t6, 368(fp)<br>    |
|  65|[0x80003410]<br>0xFFFFDFBF00000003|- rs1_w1_val == -129<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                           |[0x80000d3c]:RCRSA32 t6, t5, t4<br> [0x80000d40]:sd t6, 376(fp)<br>    |
|  66|[0x80003420]<br>0x00000000FFBFFFFF|- rs1_w1_val == -1025<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                                                         |[0x80000d74]:RCRSA32 t6, t5, t4<br> [0x80000d78]:sd t6, 392(fp)<br>    |
|  67|[0x80003428]<br>0xFFF7FFDF00008200|- rs2_w1_val == 65536<br> - rs1_w1_val == -65<br>                                                                                                                                                                                                                                        |[0x80000d94]:RCRSA32 t6, t5, t4<br> [0x80000d98]:sd t6, 400(fp)<br>    |
|  68|[0x80003430]<br>0x0000080100003FFD|- rs2_w1_val == 32768<br> - rs1_w1_val == 4096<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                                |[0x80000dbc]:RCRSA32 t6, t5, t4<br> [0x80000dc0]:sd t6, 408(fp)<br>    |
|  69|[0x80003438]<br>0x00003FF8000017FF|- rs2_w1_val == 16384<br>                                                                                                                                                                                                                                                                |[0x80000de8]:RCRSA32 t6, t5, t4<br> [0x80000dec]:sd t6, 416(fp)<br>    |
|  70|[0x80003440]<br>0xFFFFFDFE20001000|- rs2_w1_val == 8192<br>                                                                                                                                                                                                                                                                 |[0x80000e08]:RCRSA32 t6, t5, t4<br> [0x80000e0c]:sd t6, 424(fp)<br>    |
|  71|[0x80003448]<br>0xFFFFFE7F00000401|- rs2_w1_val == 2048<br> - rs2_w0_val == 512<br> - rs1_w1_val == -257<br>                                                                                                                                                                                                                |[0x80000e28]:RCRSA32 t6, t5, t4<br> [0x80000e2c]:sd t6, 432(fp)<br>    |
|  72|[0x80003450]<br>0xFFF0040004000200|- rs2_w1_val == 1024<br> - rs2_w0_val == -2049<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                                         |[0x80000e4c]:RCRSA32 t6, t5, t4<br> [0x80000e50]:sd t6, 440(fp)<br>    |
|  73|[0x80003458]<br>0x0001F800000000FC|- rs2_w1_val == 512<br> - rs2_w0_val == 4096<br>                                                                                                                                                                                                                                         |[0x80000e70]:RCRSA32 t6, t5, t4<br> [0x80000e74]:sd t6, 448(fp)<br>    |
|  74|[0x80003460]<br>0xFF7FFBFF0000006F|- rs2_w1_val == 256<br> - rs2_w0_val == 16777216<br>                                                                                                                                                                                                                                     |[0x80000e90]:RCRSA32 t6, t5, t4<br> [0x80000e94]:sd t6, 456(fp)<br>    |
|  75|[0x80003468]<br>0xFFFF000008000040|- rs2_w1_val == 128<br> - rs2_w0_val == 131072<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                         |[0x80000eac]:RCRSA32 t6, t5, t4<br> [0x80000eb0]:sd t6, 464(fp)<br>    |
|  76|[0x80003470]<br>0x4000008004000020|- rs2_w1_val == 64<br>                                                                                                                                                                                                                                                                   |[0x80000ec8]:RCRSA32 t6, t5, t4<br> [0x80000ecc]:sd t6, 472(fp)<br>    |
|  77|[0x80003478]<br>0xE000000100800010|- rs2_w1_val == 32<br>                                                                                                                                                                                                                                                                   |[0x80000ee0]:RCRSA32 t6, t5, t4<br> [0x80000ee4]:sd t6, 480(fp)<br>    |
|  78|[0x80003480]<br>0x1FFF800000008008|- rs2_w1_val == 16<br>                                                                                                                                                                                                                                                                   |[0x80000f04]:RCRSA32 t6, t5, t4<br> [0x80000f08]:sd t6, 488(fp)<br>    |
|  79|[0x80003488]<br>0xFFDFFFF7FFF80003|- rs2_w1_val == 8<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == -17<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                   |[0x80000f28]:RCRSA32 t6, t5, t4<br> [0x80000f2c]:sd t6, 496(fp)<br>    |
|  80|[0x80003490]<br>0x1F7FFFFF00800002|- rs2_w1_val == 4<br>                                                                                                                                                                                                                                                                    |[0x80000f48]:RCRSA32 t6, t5, t4<br> [0x80000f4c]:sd t6, 504(fp)<br>    |
|  81|[0x80003498]<br>0xFFFE010000000000|- rs2_w1_val == 2<br> - rs1_w1_val == -262145<br>                                                                                                                                                                                                                                        |[0x80000f68]:RCRSA32 t6, t5, t4<br> [0x80000f6c]:sd t6, 512(fp)<br>    |
|  82|[0x800034a0]<br>0xFDFFFFFD00000000|- rs1_w1_val == -5<br>                                                                                                                                                                                                                                                                   |[0x80000f7c]:RCRSA32 t6, t5, t4<br> [0x80000f80]:sd t6, 520(fp)<br>    |
|  83|[0x800034a8]<br>0xFFFFE002FBFFFFFF|- rs2_w1_val == -1<br>                                                                                                                                                                                                                                                                   |[0x80000f98]:RCRSA32 t6, t5, t4<br> [0x80000f9c]:sd t6, 528(fp)<br>    |
|  84|[0x800034b0]<br>0x040000050007BFFF|- rs2_w0_val == -134217729<br>                                                                                                                                                                                                                                                           |[0x80000fc0]:RCRSA32 t6, t5, t4<br> [0x80000fc4]:sd t6, 536(fp)<br>    |
|  85|[0x800034b8]<br>0x01FFFFE008000020|- rs2_w0_val == -67108865<br>                                                                                                                                                                                                                                                            |[0x80000fe0]:RCRSA32 t6, t5, t4<br> [0x80000fe4]:sd t6, 544(fp)<br>    |
|  86|[0x800034c0]<br>0x0080000500002004|- rs2_w0_val == -16777217<br>                                                                                                                                                                                                                                                            |[0x80001004]:RCRSA32 t6, t5, t4<br> [0x80001008]:sd t6, 552(fp)<br>    |
|  87|[0x800034c8]<br>0x003FFFF0FFFFFF03|- rs2_w0_val == -8388609<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                                                    |[0x80001028]:RCRSA32 t6, t5, t4<br> [0x8000102c]:sd t6, 560(fp)<br>    |
|  88|[0x800034d0]<br>0xFFFDFFBFDFFFFFFD|- rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                               |[0x8000104c]:RCRSA32 t6, t5, t4<br> [0x80001050]:sd t6, 568(fp)<br>    |
|  89|[0x800034d8]<br>0xBFFFC000D55555D5|- rs2_w0_val == 32768<br>                                                                                                                                                                                                                                                                |[0x80001074]:RCRSA32 t6, t5, t4<br> [0x80001078]:sd t6, 576(fp)<br>    |
|  90|[0x800034e0]<br>0xFEFFFBFF00000006|- rs2_w0_val == 2048<br> - rs1_w1_val == -33554433<br>                                                                                                                                                                                                                                   |[0x8000109c]:RCRSA32 t6, t5, t4<br> [0x800010a0]:sd t6, 584(fp)<br>    |
|  91|[0x800034e8]<br>0xEFFFFF7FFE000004|- rs2_w0_val == 256<br> - rs1_w1_val == -536870913<br>                                                                                                                                                                                                                                   |[0x800010c4]:RCRSA32 t6, t5, t4<br> [0x800010c8]:sd t6, 592(fp)<br>    |
|  92|[0x800034f0]<br>0xFFFFFFF004000002|- rs2_w0_val == 64<br>                                                                                                                                                                                                                                                                   |[0x800010e0]:RCRSA32 t6, t5, t4<br> [0x800010e4]:sd t6, 600(fp)<br>    |
|  93|[0x800034f8]<br>0xFFFFFFFFFFFFFFF5|- rs2_w0_val == 8<br>                                                                                                                                                                                                                                                                    |[0x80001100]:RCRSA32 t6, t5, t4<br> [0x80001104]:sd t6, 608(fp)<br>    |
|  94|[0x80003500]<br>0xFFFFFFF500001001|- rs2_w0_val == 4<br>                                                                                                                                                                                                                                                                    |[0x80001120]:RCRSA32 t6, t5, t4<br> [0x80001124]:sd t6, 616(fp)<br>    |
|  95|[0x80003508]<br>0xFFFFFFFC00800003|- rs2_w0_val == 1<br>                                                                                                                                                                                                                                                                    |[0x8000113c]:RCRSA32 t6, t5, t4<br> [0x80001140]:sd t6, 624(fp)<br>    |
|  96|[0x80003518]<br>0xFFFF000000000082|- rs2_w0_val == -1<br> - rs1_w1_val == -131073<br>                                                                                                                                                                                                                                       |[0x8000117c]:RCRSA32 t6, t5, t4<br> [0x80001180]:sd t6, 640(fp)<br>    |
|  97|[0x80003520]<br>0xE0000008FFFF7FFB|- rs2_w1_val == -65537<br> - rs2_w0_val == -17<br> - rs1_w1_val == -1073741825<br>                                                                                                                                                                                                       |[0x8000119c]:RCRSA32 t6, t5, t4<br> [0x800011a0]:sd t6, 648(fp)<br>    |
|  98|[0x80003528]<br>0xF8008000FFFFFDFC|- rs1_w1_val == -268435457<br>                                                                                                                                                                                                                                                           |[0x800011c0]:RCRSA32 t6, t5, t4<br> [0x800011c4]:sd t6, 656(fp)<br>    |
|  99|[0x80003530]<br>0xFBFFFFF700002000|- rs1_w1_val == -134217729<br>                                                                                                                                                                                                                                                           |[0x800011e0]:RCRSA32 t6, t5, t4<br> [0x800011e4]:sd t6, 664(fp)<br>    |
| 100|[0x80003538]<br>0xD35555552AAAAAAD|- rs1_w1_val == -67108865<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                             |[0x80001214]:RCRSA32 t6, t5, t4<br> [0x80001218]:sd t6, 672(fp)<br>    |
| 101|[0x80003540]<br>0xFF7FFFFB00000028|- rs1_w1_val == -16777217<br>                                                                                                                                                                                                                                                            |[0x80001238]:RCRSA32 t6, t5, t4<br> [0x8000123c]:sd t6, 680(fp)<br>    |
| 102|[0x80003548]<br>0xEFF7FFFFFFFFF007|- rs2_w0_val == 536870912<br> - rs1_w1_val == -1048577<br>                                                                                                                                                                                                                               |[0x8000125c]:RCRSA32 t6, t5, t4<br> [0x80001260]:sd t6, 688(fp)<br>    |
| 103|[0x80003550]<br>0xFFFFBFFE2A6AAAAA|- rs1_w1_val == -32769<br>                                                                                                                                                                                                                                                               |[0x8000128c]:RCRSA32 t6, t5, t4<br> [0x80001290]:sd t6, 696(fp)<br>    |
| 104|[0x80003558]<br>0xEFFFFFFEFFE007FF|- rs1_w1_val == -3<br>                                                                                                                                                                                                                                                                   |[0x800012ac]:RCRSA32 t6, t5, t4<br> [0x800012b0]:sd t6, 704(fp)<br>    |
| 105|[0x80003560]<br>0x00001FFF0FFFEFFF|- rs1_w1_val == -2<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                     |[0x800012d0]:RCRSA32 t6, t5, t4<br> [0x800012d4]:sd t6, 712(fp)<br>    |
| 106|[0x80003568]<br>0x300000000A000000|- rs1_w1_val == 536870912<br>                                                                                                                                                                                                                                                            |[0x800012f8]:RCRSA32 t6, t5, t4<br> [0x800012fc]:sd t6, 720(fp)<br>    |
| 107|[0x80003570]<br>0x08000020000001FF|- rs1_w1_val == 268435456<br> - rs1_w0_val == -2<br>                                                                                                                                                                                                                                     |[0x8000131c]:RCRSA32 t6, t5, t4<br> [0x80001320]:sd t6, 728(fp)<br>    |
| 108|[0x80003578]<br>0x0400000400000022|- rs2_w0_val == -9<br> - rs1_w1_val == 134217728<br>                                                                                                                                                                                                                                     |[0x8000133c]:RCRSA32 t6, t5, t4<br> [0x80001340]:sd t6, 736(fp)<br>    |
| 109|[0x80003580]<br>0x0100008000020000|- rs2_w0_val == -257<br> - rs1_w1_val == 33554432<br>                                                                                                                                                                                                                                    |[0x80001364]:RCRSA32 t6, t5, t4<br> [0x80001368]:sd t6, 744(fp)<br>    |
| 110|[0x80003588]<br>0xFFF4000000020010|- rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                               |[0x80001388]:RCRSA32 t6, t5, t4<br> [0x8000138c]:sd t6, 752(fp)<br>    |
| 111|[0x80003590]<br>0x0040000400002001|- rs1_w1_val == 8388608<br>                                                                                                                                                                                                                                                              |[0x800013ac]:RCRSA32 t6, t5, t4<br> [0x800013b0]:sd t6, 760(fp)<br>    |
| 112|[0x80003598]<br>0x0000FFFEFFFFFFF9|- rs1_w1_val == 131072<br>                                                                                                                                                                                                                                                               |[0x800013d0]:RCRSA32 t6, t5, t4<br> [0x800013d4]:sd t6, 768(fp)<br>    |
| 113|[0x800035a0]<br>0x00010000FEFFFFBF|- rs1_w1_val == 65536<br> - rs1_w0_val == -129<br>                                                                                                                                                                                                                                       |[0x800013fc]:RCRSA32 t6, t5, t4<br> [0x80001400]:sd t6, 776(fp)<br>    |
| 114|[0x800035a8]<br>0xFFF82000FFFFF802|- rs1_w1_val == 16384<br>                                                                                                                                                                                                                                                                |[0x8000141c]:RCRSA32 t6, t5, t4<br> [0x80001420]:sd t6, 784(fp)<br>    |
| 115|[0x800035b0]<br>0xC00010000000FFFF|- rs1_w1_val == 8192<br>                                                                                                                                                                                                                                                                 |[0x8000143c]:RCRSA32 t6, t5, t4<br> [0x80001440]:sd t6, 792(fp)<br>    |
| 116|[0x800035b8]<br>0xFFF00020FFFFFF3F|- rs1_w1_val == 64<br>                                                                                                                                                                                                                                                                   |[0x8000145c]:RCRSA32 t6, t5, t4<br> [0x80001460]:sd t6, 800(fp)<br>    |
| 117|[0x800035c0]<br>0x00000048F000001F|- rs1_w1_val == 16<br>                                                                                                                                                                                                                                                                   |[0x8000147c]:RCRSA32 t6, t5, t4<br> [0x80001480]:sd t6, 808(fp)<br>    |
| 118|[0x800035d0]<br>0x0002000440000000|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                           |[0x800014bc]:RCRSA32 t6, t5, t4<br> [0x800014c0]:sd t6, 824(fp)<br>    |
| 119|[0x800035d8]<br>0x000FFFFFFFF80003|- rs2_w0_val == -2097153<br>                                                                                                                                                                                                                                                             |[0x800014e4]:RCRSA32 t6, t5, t4<br> [0x800014e8]:sd t6, 832(fp)<br>    |
| 120|[0x800035e0]<br>0xFFF7FFFC0FFFFFFF|- rs1_w0_val == -536870913<br>                                                                                                                                                                                                                                                           |[0x80001508]:RCRSA32 t6, t5, t4<br> [0x8000150c]:sd t6, 840(fp)<br>    |
| 121|[0x800035e8]<br>0x0003FFFEC0000010|- rs1_w0_val == -2147483648<br> - rs2_w0_val == -524289<br>                                                                                                                                                                                                                              |[0x80001528]:RCRSA32 t6, t5, t4<br> [0x8000152c]:sd t6, 848(fp)<br>    |
| 122|[0x800035f0]<br>0x0022000000000103|- rs2_w0_val == -262145<br>                                                                                                                                                                                                                                                              |[0x8000154c]:RCRSA32 t6, t5, t4<br> [0x80001550]:sd t6, 856(fp)<br>    |
| 123|[0x800035f8]<br>0xFFFFFFE4007FFFFF|- rs1_w0_val == -16777217<br>                                                                                                                                                                                                                                                            |[0x80001570]:RCRSA32 t6, t5, t4<br> [0x80001574]:sd t6, 864(fp)<br>    |
| 124|[0x80003600]<br>0x0000410002020000|- rs2_w0_val == -32769<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                  |[0x8000159c]:RCRSA32 t6, t5, t4<br> [0x800015a0]:sd t6, 872(fp)<br>    |
| 125|[0x80003608]<br>0xE00000020FBFFFFF|- rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                                             |[0x800015c4]:RCRSA32 t6, t5, t4<br> [0x800015c8]:sd t6, 880(fp)<br>    |
| 126|[0x80003610]<br>0xFFFFFFFAFFDFFFFF|- rs1_w0_val == -4194305<br>                                                                                                                                                                                                                                                             |[0x800015e0]:RCRSA32 t6, t5, t4<br> [0x800015e4]:sd t6, 888(fp)<br>    |
| 127|[0x80003618]<br>0xFFC00080FFFE0007|- rs1_w0_val == -262145<br>                                                                                                                                                                                                                                                              |[0x80001608]:RCRSA32 t6, t5, t4<br> [0x8000160c]:sd t6, 896(fp)<br>    |
| 128|[0x80003620]<br>0x000000FFFDFF7FFF|- rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                               |[0x80001630]:RCRSA32 t6, t5, t4<br> [0x80001634]:sd t6, 904(fp)<br>    |
| 129|[0x80003628]<br>0xFEFFFFFE00C00000|- rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                                             |[0x8000164c]:RCRSA32 t6, t5, t4<br> [0x80001650]:sd t6, 912(fp)<br>    |
| 130|[0x80003630]<br>0xFFC0001001400000|- rs2_w0_val == -33<br>                                                                                                                                                                                                                                                                  |[0x80001674]:RCRSA32 t6, t5, t4<br> [0x80001678]:sd t6, 920(fp)<br>    |
| 131|[0x80003638]<br>0xDFFFFFE000000FF7|- rs1_w0_val == -17<br>                                                                                                                                                                                                                                                                  |[0x80001698]:RCRSA32 t6, t5, t4<br> [0x8000169c]:sd t6, 928(fp)<br>    |
| 132|[0x80003640]<br>0x3FFFFFFE0001DFFF|- rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                               |[0x800016bc]:RCRSA32 t6, t5, t4<br> [0x800016c0]:sd t6, 936(fp)<br>    |
| 133|[0x80003648]<br>0x000000FC000FEFFF|- rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                                |[0x800016e4]:RCRSA32 t6, t5, t4<br> [0x800016e8]:sd t6, 944(fp)<br>    |
| 134|[0x80003650]<br>0x00C00000FE000003|- rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                             |[0x8000170c]:RCRSA32 t6, t5, t4<br> [0x80001710]:sd t6, 952(fp)<br>    |
| 135|[0x80003658]<br>0xFC000001FFF7FBFF|- rs1_w0_val == -2049<br>                                                                                                                                                                                                                                                                |[0x80001734]:RCRSA32 t6, t5, t4<br> [0x80001738]:sd t6, 960(fp)<br>    |
| 136|[0x80003668]<br>0x10000200FFFF7DFF|- rs2_w0_val == -536870913<br>                                                                                                                                                                                                                                                           |[0x80001784]:RCRSA32 t6, t5, t4<br> [0x80001788]:sd t6, 976(fp)<br>    |
