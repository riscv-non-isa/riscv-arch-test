
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001790')]      |
| SIG_REGION                | [('0x80003210', '0x80003660', '138 dwords')]      |
| COV_LABELS                | raddw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/raddw-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 138      |
| STAT1                     | 136      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001008]:RADDW t6, t5, t4
      [0x8000100c]:sd t6, 456(gp)
 -- Signature Address: 0x800034b8 Data: 0xFFFFFFFFE2000000
 -- Redundant Coverpoints hit by the op
      - opcode : raddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 2097152
      - rs1_w1_val == -8388609
      - rs1_w0_val == 67108864




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001318]:RADDW t6, t5, t4
      [0x8000131c]:sd t6, 624(gp)
 -- Signature Address: 0x80003560 Data: 0xFFFFFFFFFBFF7FFF
 -- Redundant Coverpoints hit by the op
      - opcode : raddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 2147483647
      - rs2_w0_val == -65537
      - rs1_w1_val == 16777216
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

|s.no|            signature             |                                                                                                    coverpoints                                                                                                    |                                  code                                  |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFF7FFFFFF|- opcode : raddw<br> - rs1 : x24<br> - rs2 : x24<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == -134217729<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == -134217729<br> |[0x800003b4]:RADDW a0, s8, s8<br> [0x800003b8]:sd a0, 0(tp)<br>         |
|   2|[0x80003218]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x0<br> - rd : x0<br> - rs1 == rs2 == rd<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                         |[0x800003e0]:RADDW zero, zero, zero<br> [0x800003e4]:sd zero, 8(tp)<br> |
|   3|[0x80003220]<br>0xFFFFFFFFEFFEFFFF|- rs1 : x8<br> - rs2 : x11<br> - rd : x5<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -131073<br> - rs1_w1_val == 2<br> - rs1_w0_val == -536870913<br>         |[0x8000040c]:RADDW t0, fp, a1<br> [0x80000410]:sd t0, 16(tp)<br>        |
|   4|[0x80003228]<br>0xFFFFFFFFFFEFFFFF|- rs1 : x12<br> - rs2 : x13<br> - rd : x12<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == 8<br> - rs1_w0_val == 2097152<br>                                |[0x80000434]:RADDW a2, a2, a3<br> [0x80000438]:sd a2, 24(tp)<br>        |
|   5|[0x80003230]<br>0xFFFFFFFFFFBFFFFB|- rs1 : x16<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs2_w1_val == -1073741825<br> - rs1_w1_val == -257<br> - rs1_w0_val == -8388609<br>                                                        |[0x80000458]:RADDW t4, a6, t4<br> [0x8000045c]:sd t4, 32(tp)<br>        |
|   6|[0x80003238]<br>0xFFFFFFFFF8001FFF|- rs1 : x28<br> - rs2 : x12<br> - rd : x6<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == -268435457<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == 16384<br>                                                 |[0x80000488]:RADDW t1, t3, a2<br> [0x8000048c]:sd t1, 40(tp)<br>        |
|   7|[0x80003240]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x22<br> - rs2 : x28<br> - rd : x19<br> - rs2_w1_val == -268435457<br> - rs1_w1_val == -67108865<br>                                                                                                        |[0x800004ac]:RADDW s3, s6, t3<br> [0x800004b0]:sd s3, 48(tp)<br>        |
|   8|[0x80003248]<br>0x0000000000000009|- rs1 : x31<br> - rs2 : x18<br> - rd : x3<br> - rs2_w1_val == -134217729<br> - rs1_w1_val == -129<br>                                                                                                              |[0x800004d0]:RADDW gp, t6, s2<br> [0x800004d4]:sd gp, 56(tp)<br>        |
|   9|[0x80003250]<br>0xFFFFFFFFE0000000|- rs1 : x20<br> - rs2 : x16<br> - rd : x23<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == -1073741825<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 2<br>                                                      |[0x800004f4]:RADDW s7, s4, a6<br> [0x800004f8]:sd s7, 64(tp)<br>        |
|  10|[0x80003258]<br>0xFFFFFFFFE0400000|- rs1 : x17<br> - rs2 : x6<br> - rd : x11<br> - rs2_w1_val == -33554433<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 8388608<br>                                                                                 |[0x80000514]:RADDW a1, a7, t1<br> [0x80000518]:sd a1, 72(tp)<br>        |
|  11|[0x80003260]<br>0x0000000000000014|- rs1 : x19<br> - rs2 : x17<br> - rd : x20<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == 8<br> - rs1_w1_val == -17<br> - rs1_w0_val == 32<br>                                                                  |[0x80000538]:RADDW s4, s3, a7<br> [0x8000053c]:sd s4, 80(tp)<br>        |
|  12|[0x80003268]<br>0xFFFFFFFFFFFDFFFF|- rs1 : x30<br> - rs2 : x14<br> - rd : x13<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -1<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == -262145<br>                                                     |[0x80000560]:RADDW a3, t5, a4<br> [0x80000564]:sd a3, 88(tp)<br>        |
|  13|[0x80003270]<br>0xFFFFFFFFD5555551|- rs1 : x7<br> - rs2 : x1<br> - rd : x27<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == -1431655766<br>                                                                                                          |[0x8000058c]:RADDW s11, t2, ra<br> [0x80000590]:sd s11, 96(tp)<br>      |
|  14|[0x80003278]<br>0x000000003FFFFFFC|- rs1 : x2<br> - rs2 : x10<br> - rd : x21<br> - rs2_w1_val == -1048577<br> - rs1_w1_val == -2<br> - rs1_w0_val == 2147483647<br>                                                                                   |[0x800005ac]:RADDW s5, sp, a0<br> [0x800005b0]:sd s5, 104(tp)<br>       |
|  15|[0x80003280]<br>0xFFFFFFFFD4D55554|- rs1 : x15<br> - rs2 : x20<br> - rd : x18<br> - rs2_w1_val == -524289<br> - rs2_w0_val == -16777217<br> - rs1_w1_val == -3<br> - rs1_w0_val == -1431655766<br>                                                    |[0x800005d4]:RADDW s2, a5, s4<br> [0x800005d8]:sd s2, 112(tp)<br>       |
|  16|[0x80003288]<br>0x0000000000001FDF|- rs1 : x4<br> - rs2 : x23<br> - rd : x9<br> - rs2_w1_val == -262145<br> - rs2_w0_val == -65<br>                                                                                                                   |[0x80000600]:RADDW s1, tp, s7<br> [0x80000604]:sd s1, 0(a0)<br>         |
|  17|[0x80003290]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x3<br> - rs2 : x7<br> - rd : x8<br> - rs2_w1_val == -131073<br> - rs2_w0_val == -129<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 128<br>                                                               |[0x80000620]:RADDW fp, gp, t2<br> [0x80000624]:sd fp, 8(a0)<br>         |
|  18|[0x80003298]<br>0x0000000000000200|- rs1 : x29<br> - rs2 : x22<br> - rd : x7<br> - rs2_w1_val == -65537<br> - rs1_w0_val == 1024<br>                                                                                                                  |[0x80000644]:RADDW t2, t4, s6<br> [0x80000648]:sd t2, 16(a0)<br>        |
|  19|[0x800032a0]<br>0xFFFFFFFFFFDFFFFB|- rs1 : x11<br> - rs2 : x26<br> - rd : x17<br> - rs2_w1_val == -32769<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -9<br>                                                                                         |[0x80000668]:RADDW a7, a1, s10<br> [0x8000066c]:sd a7, 24(a0)<br>       |
|  20|[0x800032a8]<br>0x000000004000FFFF|- rs1 : x26<br> - rs2 : x8<br> - rd : x24<br> - rs2_w1_val == -16385<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == 131072<br>                                                 |[0x80000690]:RADDW s8, s10, fp<br> [0x80000694]:sd s8, 32(a0)<br>       |
|  21|[0x800032b0]<br>0xFFFFFFFFFFFFFF03|- rs1 : x18<br> - rs2 : x19<br> - rd : x28<br> - rs2_w1_val == -8193<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == -513<br>                                                                                   |[0x800006b8]:RADDW t3, s2, s3<br> [0x800006bc]:sd t3, 40(a0)<br>        |
|  22|[0x800032b8]<br>0xFFFFFFFFFFEFFFFF|- rs1 : x1<br> - rs2 : x25<br> - rd : x22<br> - rs2_w1_val == -4097<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == -2097153<br>                                                                                |[0x800006e0]:RADDW s6, ra, s9<br> [0x800006e4]:sd s6, 48(a0)<br>        |
|  23|[0x800032c0]<br>0xFFFFFFFFFE000000|- rs1 : x21<br> - rs2 : x3<br> - rd : x31<br> - rs2_w1_val == -2049<br> - rs2_w0_val == 2<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == -67108865<br>                                                         |[0x8000070c]:RADDW t6, s5, gp<br> [0x80000710]:sd t6, 56(a0)<br>        |
|  24|[0x800032c8]<br>0x00000000001FF7FF|- rs1 : x5<br> - rs2 : x21<br> - rd : x14<br> - rs2_w1_val == -1025<br> - rs2_w0_val == -4097<br> - rs1_w0_val == 4194304<br>                                                                                      |[0x80000734]:RADDW a4, t0, s5<br> [0x80000738]:sd a4, 64(a0)<br>        |
|  25|[0x800032d0]<br>0x000000000001DFFF|- rs1 : x27<br> - rs2 : x2<br> - rd : x15<br> - rs2_w1_val == -513<br> - rs2_w0_val == -16385<br> - rs1_w1_val == -4097<br> - rs1_w0_val == 262144<br>                                                             |[0x80000758]:RADDW a5, s11, sp<br> [0x8000075c]:sd a5, 72(a0)<br>       |
|  26|[0x800032d8]<br>0xFFFFFFFFFFFFF800|- rs1 : x13<br> - rs2 : x30<br> - rd : x26<br> - rs2_w1_val == -257<br> - rs2_w0_val == 1<br> - rs1_w1_val == 16384<br> - rs1_w0_val == -4097<br>                                                                  |[0x80000784]:RADDW s10, a3, t5<br> [0x80000788]:sd s10, 80(a0)<br>      |
|  27|[0x800032e0]<br>0x0000000000200002|- rs1 : x14<br> - rs2 : x31<br> - rd : x4<br> - rs2_w1_val == -129<br> - rs1_w1_val == 67108864<br>                                                                                                                |[0x800007a8]:RADDW tp, a4, t6<br> [0x800007ac]:sd tp, 88(a0)<br>        |
|  28|[0x800032e8]<br>0xFFFFFFFFFFFFF800|- rs1 : x6<br> - rs2 : x9<br> - rd : x16<br> - rs2_w1_val == -65<br> - rs1_w1_val == -513<br> - rs1_w0_val == 1<br>                                                                                                |[0x800007cc]:RADDW a6, t1, s1<br> [0x800007d0]:sd a6, 96(a0)<br>        |
|  29|[0x800032f0]<br>0x000000000FFFFFFD|- rs1 : x9<br> - rs2 : x4<br> - rd : x1<br> - rs2_w1_val == -33<br> - rs2_w0_val == 536870912<br>                                                                                                                  |[0x800007f0]:RADDW ra, s1, tp<br> [0x800007f4]:sd ra, 0(gp)<br>         |
|  30|[0x800032f8]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x25<br> - rs2 : x15<br> - rd : x2<br> - rs2_w1_val == -17<br> - rs1_w0_val == -2<br>                                                                                                                       |[0x80000810]:RADDW sp, s9, a5<br> [0x80000814]:sd sp, 8(gp)<br>         |
|  31|[0x80003300]<br>0x00000000007FFFFF|- rs1 : x10<br> - rs2 : x5<br> - rd : x30<br> - rs2_w1_val == -9<br> - rs2_w0_val == 33554432<br> - rs1_w0_val == -16777217<br>                                                                                    |[0x8000082c]:RADDW t5, a0, t0<br> [0x80000830]:sd t5, 16(gp)<br>        |
|  32|[0x80003308]<br>0xFFFFFFFFFBF7FFFF|- rs1 : x23<br> - rs2 : x27<br> - rd : x25<br> - rs2_w1_val == -5<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == -1048577<br>                                                                                   |[0x80000854]:RADDW s9, s7, s11<br> [0x80000858]:sd s9, 24(gp)<br>       |
|  33|[0x80003310]<br>0xFFFFFFFFF5555555|- rs2_w1_val == -3<br> - rs2_w0_val == 1073741824<br> - rs1_w1_val == -131073<br>                                                                                                                                  |[0x8000087c]:RADDW t6, t5, t4<br> [0x80000880]:sd t6, 32(gp)<br>        |
|  34|[0x80003318]<br>0xFFFFFFFFD5555552|- rs2_w1_val == -2<br> - rs1_w1_val == -1025<br> - rs1_w0_val == -5<br>                                                                                                                                            |[0x800008a0]:RADDW t6, t5, t4<br> [0x800008a4]:sd t6, 40(gp)<br>        |
|  35|[0x80003320]<br>0x0000000000001003|- rs2_w1_val == -2147483648<br> - rs2_w0_val == 8192<br>                                                                                                                                                           |[0x800008c4]:RADDW t6, t5, t4<br> [0x800008c8]:sd t6, 48(gp)<br>        |
|  36|[0x80003328]<br>0xFFFFFFFFFFFFFF7A|- rs2_w1_val == 1073741824<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -257<br>                                                                                                                              |[0x800008ec]:RADDW t6, t5, t4<br> [0x800008f0]:sd t6, 56(gp)<br>        |
|  37|[0x80003330]<br>0x000000002CAAAAAA|- rs2_w1_val == 536870912<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 67108864<br>                                                                                                                          |[0x80000918]:RADDW t6, t5, t4<br> [0x8000091c]:sd t6, 64(gp)<br>        |
|  38|[0x80003338]<br>0x000000003FFFEFFF|- rs2_w1_val == 268435456<br> - rs2_w0_val == -8193<br>                                                                                                                                                            |[0x80000948]:RADDW t6, t5, t4<br> [0x8000094c]:sd t6, 72(gp)<br>        |
|  39|[0x80003340]<br>0xFFFFFFFFD5555559|- rs2_w1_val == 134217728<br>                                                                                                                                                                                      |[0x8000096c]:RADDW t6, t5, t4<br> [0x80000970]:sd t6, 80(gp)<br>        |
|  40|[0x80003348]<br>0xFFFFFFFFDFFF7FFF|- rs2_w1_val == 67108864<br> - rs2_w0_val == -65537<br> - rs1_w1_val == -524289<br>                                                                                                                                |[0x80000998]:RADDW t6, t5, t4<br> [0x8000099c]:sd t6, 88(gp)<br>        |
|  41|[0x80003350]<br>0xFFFFFFFFFFFFF9FF|- rs2_w1_val == 33554432<br> - rs2_w0_val == -1025<br> - rs1_w1_val == 32<br> - rs1_w0_val == -2049<br>                                                                                                            |[0x800009c0]:RADDW t6, t5, t4<br> [0x800009c4]:sd t6, 96(gp)<br>        |
|  42|[0x80003358]<br>0xFFFFFFFFFFFFFFFB|- rs2_w1_val == 16777216<br> - rs2_w0_val == -9<br> - rs1_w0_val == -1<br>                                                                                                                                         |[0x800009e8]:RADDW t6, t5, t4<br> [0x800009ec]:sd t6, 104(gp)<br>       |
|  43|[0x80003360]<br>0xFFFFFFFFE8000000|- rs2_w1_val == 8388608<br> - rs1_w0_val == 268435456<br>                                                                                                                                                          |[0x80000a08]:RADDW t6, t5, t4<br> [0x80000a0c]:sd t6, 112(gp)<br>       |
|  44|[0x80003368]<br>0x0000000000000080|- rs2_w1_val == 4194304<br> - rs2_w0_val == 256<br> - rs1_w1_val == 33554432<br>                                                                                                                                   |[0x80000a28]:RADDW t6, t5, t4<br> [0x80000a2c]:sd t6, 120(gp)<br>       |
|  45|[0x80003370]<br>0xFFFFFFFFFE01FFFF|- rs2_w1_val == 2097152<br> - rs2_w0_val == -67108865<br>                                                                                                                                                          |[0x80000a4c]:RADDW t6, t5, t4<br> [0x80000a50]:sd t6, 128(gp)<br>       |
|  46|[0x80003378]<br>0x000000000000003B|- rs2_w1_val == 1048576<br> - rs2_w0_val == 128<br> - rs1_w1_val == -134217729<br>                                                                                                                                 |[0x80000a6c]:RADDW t6, t5, t4<br> [0x80000a70]:sd t6, 136(gp)<br>       |
|  47|[0x80003380]<br>0xFFFFFFFFC1000000|- rs2_w1_val == 524288<br> - rs2_w0_val == -2147483648<br> - rs1_w0_val == 33554432<br>                                                                                                                            |[0x80000a8c]:RADDW t6, t5, t4<br> [0x80000a90]:sd t6, 144(gp)<br>       |
|  48|[0x80003388]<br>0x000000004003FFFF|- rs2_w1_val == 262144<br> - rs2_w0_val == 524288<br> - rs1_w1_val == 65536<br>                                                                                                                                    |[0x80000ab4]:RADDW t6, t5, t4<br> [0x80000ab8]:sd t6, 152(gp)<br>       |
|  49|[0x80003390]<br>0xFFFFFFFFFFFF807F|- rs2_w1_val == 131072<br> - rs1_w0_val == 256<br>                                                                                                                                                                 |[0x80000ae0]:RADDW t6, t5, t4<br> [0x80000ae4]:sd t6, 160(gp)<br>       |
|  50|[0x80003398]<br>0x0000000000001400|- rs2_w0_val == 2048<br> - rs1_w1_val == 16<br> - rs1_w0_val == 8192<br>                                                                                                                                           |[0x80000b08]:RADDW t6, t5, t4<br> [0x80000b0c]:sd t6, 168(gp)<br>       |
|  51|[0x800033a0]<br>0x0000000000001000|- rs2_w0_val == 4096<br> - rs1_w0_val == 4096<br>                                                                                                                                                                  |[0x80000b34]:RADDW t6, t5, t4<br> [0x80000b38]:sd t6, 176(gp)<br>       |
|  52|[0x800033a8]<br>0x0000000000000402|- rs2_w0_val == 4<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 2048<br>                                                                                                                                            |[0x80000b5c]:RADDW t6, t5, t4<br> [0x80000b60]:sd t6, 184(gp)<br>       |
|  53|[0x800033b0]<br>0x0000000000000101|- rs1_w0_val == 512<br>                                                                                                                                                                                            |[0x80000b7c]:RADDW t6, t5, t4<br> [0x80000b80]:sd t6, 192(gp)<br>       |
|  54|[0x800033b8]<br>0x0000000000000028|- rs2_w0_val == 64<br> - rs1_w1_val == 4<br> - rs1_w0_val == 16<br>                                                                                                                                                |[0x80000b9c]:RADDW t6, t5, t4<br> [0x80000ba0]:sd t6, 200(gp)<br>       |
|  55|[0x800033c0]<br>0x0000000010000004|- rs2_w1_val == 512<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 8<br>                                                                                                                                             |[0x80000bbc]:RADDW t6, t5, t4<br> [0x80000bc0]:sd t6, 208(gp)<br>       |
|  56|[0x800033c8]<br>0x0000000000000000|- rs2_w1_val == 16384<br> - rs1_w0_val == 4<br>                                                                                                                                                                    |[0x80000be0]:RADDW t6, t5, t4<br> [0x80000be4]:sd t6, 216(gp)<br>       |
|  57|[0x800033d0]<br>0x0000000000000002|- rs1_w1_val == -4194305<br>                                                                                                                                                                                       |[0x80000c04]:RADDW t6, t5, t4<br> [0x80000c08]:sd t6, 224(gp)<br>       |
|  58|[0x800033d8]<br>0xFFFFFFFFF800FFFF|- rs2_w1_val == 65536<br> - rs2_w0_val == 131072<br> - rs1_w0_val == -268435457<br>                                                                                                                                |[0x80000c28]:RADDW t6, t5, t4<br> [0x80000c2c]:sd t6, 232(gp)<br>       |
|  59|[0x800033e0]<br>0xFFFFFFFFFE000FFF|- rs2_w1_val == 32768<br>                                                                                                                                                                                          |[0x80000c50]:RADDW t6, t5, t4<br> [0x80000c54]:sd t6, 240(gp)<br>       |
|  60|[0x800033e8]<br>0xFFFFFFFFFDFFFFFC|- rs2_w1_val == 8192<br> - rs1_w1_val == 512<br>                                                                                                                                                                   |[0x80000c74]:RADDW t6, t5, t4<br> [0x80000c78]:sd t6, 248(gp)<br>       |
|  61|[0x800033f0]<br>0x0000000000010003|- rs2_w1_val == 4096<br> - rs1_w1_val == 256<br>                                                                                                                                                                   |[0x80000c94]:RADDW t6, t5, t4<br> [0x80000c98]:sd t6, 256(gp)<br>       |
|  62|[0x800033f8]<br>0x0000000004000003|- rs2_w1_val == 2048<br> - rs2_w0_val == 134217728<br>                                                                                                                                                             |[0x80000cb4]:RADDW t6, t5, t4<br> [0x80000cb8]:sd t6, 264(gp)<br>       |
|  63|[0x80003400]<br>0xFFFFFFFFFFF80004|- rs2_w1_val == 1024<br> - rs2_w0_val == -1048577<br>                                                                                                                                                              |[0x80000cd8]:RADDW t6, t5, t4<br> [0x80000cdc]:sd t6, 272(gp)<br>       |
|  64|[0x80003408]<br>0xFFFFFFFFD554D554|- rs2_w1_val == 256<br>                                                                                                                                                                                            |[0x80000d0c]:RADDW t6, t5, t4<br> [0x80000d10]:sd t6, 280(gp)<br>       |
|  65|[0x80003410]<br>0xFFFFFFFFFFC000FF|- rs2_w1_val == 128<br> - rs2_w0_val == 512<br> - rs1_w1_val == -32769<br>                                                                                                                                         |[0x80000d30]:RADDW t6, t5, t4<br> [0x80000d34]:sd t6, 288(gp)<br>       |
|  66|[0x80003418]<br>0xFFFFFFFFEFFFFFFB|- rs2_w1_val == 64<br> - rs1_w1_val == 268435456<br>                                                                                                                                                               |[0x80000d58]:RADDW t6, t5, t4<br> [0x80000d5c]:sd t6, 296(gp)<br>       |
|  67|[0x80003420]<br>0xFFFFFFFFE000FFFF|- rs2_w1_val == 32<br>                                                                                                                                                                                             |[0x80000d78]:RADDW t6, t5, t4<br> [0x80000d7c]:sd t6, 304(gp)<br>       |
|  68|[0x80003428]<br>0x0000000001000003|- rs2_w1_val == 16<br>                                                                                                                                                                                             |[0x80000d9c]:RADDW t6, t5, t4<br> [0x80000da0]:sd t6, 312(gp)<br>       |
|  69|[0x80003430]<br>0xFFFFFFFFFBFFFDFF|- rs2_w1_val == 8<br> - rs1_w0_val == -1025<br>                                                                                                                                                                    |[0x80000dbc]:RADDW t6, t5, t4<br> [0x80000dc0]:sd t6, 320(gp)<br>       |
|  70|[0x80003438]<br>0x000000000FFFFFEF|- rs2_w1_val == 4<br> - rs1_w1_val == -65537<br> - rs1_w0_val == -33<br>                                                                                                                                           |[0x80000dd8]:RADDW t6, t5, t4<br> [0x80000ddc]:sd t6, 328(gp)<br>       |
|  71|[0x80003440]<br>0xFFFFFFFFFFFF8002|- rs2_w1_val == 2<br> - rs1_w0_val == -65537<br>                                                                                                                                                                   |[0x80000dfc]:RADDW t6, t5, t4<br> [0x80000e00]:sd t6, 336(gp)<br>       |
|  72|[0x80003448]<br>0x000000003FFFFFF7|- rs2_w1_val == 1<br> - rs2_w0_val == -17<br>                                                                                                                                                                      |[0x80000e18]:RADDW t6, t5, t4<br> [0x80000e1c]:sd t6, 344(gp)<br>       |
|  73|[0x80003450]<br>0xFFFFFFFFD5555559|- rs1_w1_val == -5<br>                                                                                                                                                                                             |[0x80000e34]:RADDW t6, t5, t4<br> [0x80000e38]:sd t6, 352(gp)<br>       |
|  74|[0x80003458]<br>0x00000000000001FD|- rs2_w1_val == -1<br> - rs2_w0_val == -5<br>                                                                                                                                                                      |[0x80000e4c]:RADDW t6, t5, t4<br> [0x80000e50]:sd t6, 360(gp)<br>       |
|  75|[0x80003460]<br>0xFFFFFFFFE7FFFFFF|- rs2_w0_val == -536870913<br>                                                                                                                                                                                     |[0x80000e70]:RADDW t6, t5, t4<br> [0x80000e74]:sd t6, 368(gp)<br>       |
|  76|[0x80003468]<br>0x0000000029AAAAAA|- rs2_w0_val == -33554433<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                       |[0x80000e98]:RADDW t6, t5, t4<br> [0x80000e9c]:sd t6, 376(gp)<br>       |
|  77|[0x80003470]<br>0xFFFFFFFFFFC1FFFF|- rs2_w0_val == -8388609<br>                                                                                                                                                                                       |[0x80000ebc]:RADDW t6, t5, t4<br> [0x80000ec0]:sd t6, 384(gp)<br>       |
|  78|[0x80003478]<br>0xFFFFFFFFFFF7FFFF|- rs2_w0_val == -2097153<br> - rs1_w1_val == -2049<br> - rs1_w0_val == 1048576<br>                                                                                                                                 |[0x80000ee0]:RADDW t6, t5, t4<br> [0x80000ee4]:sd t6, 392(gp)<br>       |
|  79|[0x80003480]<br>0x0000000007FBFFFF|- rs2_w0_val == -524289<br>                                                                                                                                                                                        |[0x80000f04]:RADDW t6, t5, t4<br> [0x80000f08]:sd t6, 400(gp)<br>       |
|  80|[0x80003488]<br>0x000000003FFDFFFF|- rs2_w0_val == -262145<br>                                                                                                                                                                                        |[0x80000f30]:RADDW t6, t5, t4<br> [0x80000f34]:sd t6, 408(gp)<br>       |
|  81|[0x80003490]<br>0xFFFFFFFFFFFFC007|- rs2_w0_val == -32769<br>                                                                                                                                                                                         |[0x80000f4c]:RADDW t6, t5, t4<br> [0x80000f50]:sd t6, 416(gp)<br>       |
|  82|[0x80003498]<br>0xFFFFFFFFFFFFF80F|- rs2_w0_val == 32<br> - rs1_w1_val == -268435457<br>                                                                                                                                                              |[0x80000f6c]:RADDW t6, t5, t4<br> [0x80000f70]:sd t6, 424(gp)<br>       |
|  83|[0x800034a0]<br>0xFFFFFFFFF0000007|- rs2_w0_val == 16<br>                                                                                                                                                                                             |[0x80000f98]:RADDW t6, t5, t4<br> [0x80000f9c]:sd t6, 432(gp)<br>       |
|  84|[0x800034a8]<br>0xFFFFFFFFFFFFF83F|- rs1_w1_val == -1431655766<br>                                                                                                                                                                                    |[0x80000fc0]:RADDW t6, t5, t4<br> [0x80000fc4]:sd t6, 440(gp)<br>       |
|  85|[0x800034b0]<br>0xFFFFFFFFFF01FFFF|- rs2_w0_val == 262144<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == -33554433<br>                                                                                                                             |[0x80000fe8]:RADDW t6, t5, t4<br> [0x80000fec]:sd t6, 448(gp)<br>       |
|  86|[0x800034c0]<br>0xFFFFFFFFFF7FFFFF|- rs1_w1_val == -1048577<br>                                                                                                                                                                                       |[0x8000102c]:RADDW t6, t5, t4<br> [0x80001030]:sd t6, 464(gp)<br>       |
|  87|[0x800034c8]<br>0x000000004FFFFFFF|- rs1_w1_val == -262145<br>                                                                                                                                                                                        |[0x80001050]:RADDW t6, t5, t4<br> [0x80001054]:sd t6, 472(gp)<br>       |
|  88|[0x800034d0]<br>0xFFFFFFFFFFFFFEFB|- rs1_w1_val == -16385<br>                                                                                                                                                                                         |[0x80001074]:RADDW t6, t5, t4<br> [0x80001078]:sd t6, 480(gp)<br>       |
|  89|[0x800034d8]<br>0xFFFFFFFFD5555454|- rs2_w0_val == -513<br> - rs1_w1_val == -65<br>                                                                                                                                                                   |[0x8000109c]:RADDW t6, t5, t4<br> [0x800010a0]:sd t6, 488(gp)<br>       |
|  90|[0x800034e0]<br>0xFFFFFFFFFFFFFFC2|- rs1_w1_val == -33<br>                                                                                                                                                                                            |[0x800010bc]:RADDW t6, t5, t4<br> [0x800010c0]:sd t6, 496(gp)<br>       |
|  91|[0x800034e8]<br>0x0000000003FFFFFF|- rs1_w1_val == -9<br>                                                                                                                                                                                             |[0x800010dc]:RADDW t6, t5, t4<br> [0x800010e0]:sd t6, 504(gp)<br>       |
|  92|[0x800034f0]<br>0xFFFFFFFFFFFF8002|- rs1_w1_val == 536870912<br>                                                                                                                                                                                      |[0x80001108]:RADDW t6, t5, t4<br> [0x8000110c]:sd t6, 512(gp)<br>       |
|  93|[0x800034f8]<br>0xFFFFFFFFFFF7FFF7|- rs1_w1_val == 16777216<br> - rs1_w0_val == -17<br>                                                                                                                                                               |[0x80001130]:RADDW t6, t5, t4<br> [0x80001134]:sd t6, 520(gp)<br>       |
|  94|[0x80003500]<br>0x000000000000003D|- rs1_w1_val == 8388608<br>                                                                                                                                                                                        |[0x80001154]:RADDW t6, t5, t4<br> [0x80001158]:sd t6, 528(gp)<br>       |
|  95|[0x80003508]<br>0x0000000000420000|- rs1_w1_val == 4194304<br>                                                                                                                                                                                        |[0x80001178]:RADDW t6, t5, t4<br> [0x8000117c]:sd t6, 536(gp)<br>       |
|  96|[0x80003510]<br>0x000000002A2AAAAA|- rs1_w1_val == 1048576<br>                                                                                                                                                                                        |[0x800011a8]:RADDW t6, t5, t4<br> [0x800011ac]:sd t6, 544(gp)<br>       |
|  97|[0x80003518]<br>0xFFFFFFFFFF07FFFF|- rs2_w0_val == 1048576<br> - rs1_w1_val == 262144<br>                                                                                                                                                             |[0x800011d0]:RADDW t6, t5, t4<br> [0x800011d4]:sd t6, 552(gp)<br>       |
|  98|[0x80003520]<br>0x0000000000000C00|- rs1_w1_val == 32768<br>                                                                                                                                                                                          |[0x800011f8]:RADDW t6, t5, t4<br> [0x800011fc]:sd t6, 560(gp)<br>       |
|  99|[0x80003528]<br>0x0000000000FFFFF7|- rs1_w1_val == 8192<br>                                                                                                                                                                                           |[0x80001218]:RADDW t6, t5, t4<br> [0x8000121c]:sd t6, 568(gp)<br>       |
| 100|[0x80003530]<br>0x0000000010000001|- rs1_w1_val == 1024<br> - rs1_w0_val == 536870912<br>                                                                                                                                                             |[0x8000123c]:RADDW t6, t5, t4<br> [0x80001240]:sd t6, 576(gp)<br>       |
| 101|[0x80003538]<br>0x00000000000001FF|- rs1_w1_val == 128<br>                                                                                                                                                                                            |[0x80001260]:RADDW t6, t5, t4<br> [0x80001264]:sd t6, 584(gp)<br>       |
| 102|[0x80003540]<br>0xFFFFFFFFFFF7FDFF|- rs1_w1_val == 64<br>                                                                                                                                                                                             |[0x80001288]:RADDW t6, t5, t4<br> [0x8000128c]:sd t6, 592(gp)<br>       |
| 103|[0x80003548]<br>0x00000000000001FD|- rs1_w1_val == 1<br>                                                                                                                                                                                              |[0x800012a8]:RADDW t6, t5, t4<br> [0x800012ac]:sd t6, 600(gp)<br>       |
| 104|[0x80003550]<br>0x0000000000000006|- rs1_w1_val == -1<br>                                                                                                                                                                                             |[0x800012c8]:RADDW t6, t5, t4<br> [0x800012cc]:sd t6, 608(gp)<br>       |
| 105|[0x80003558]<br>0xFFFFFFFFDFFFFFDF|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                    |[0x800012ec]:RADDW t6, t5, t4<br> [0x800012f0]:sd t6, 616(gp)<br>       |
| 106|[0x80003568]<br>0xFFFFFFFFFFDFFFFD|- rs1_w0_val == -4194305<br>                                                                                                                                                                                       |[0x8000133c]:RADDW t6, t5, t4<br> [0x80001340]:sd t6, 632(gp)<br>       |
| 107|[0x80003570]<br>0x0000000001FFFBFF|- rs2_w0_val == -2049<br>                                                                                                                                                                                          |[0x8000135c]:RADDW t6, t5, t4<br> [0x80001360]:sd t6, 640(gp)<br>       |
| 108|[0x80003578]<br>0xFFFFFFFFFFFC0007|- rs1_w0_val == -524289<br>                                                                                                                                                                                        |[0x80001380]:RADDW t6, t5, t4<br> [0x80001384]:sd t6, 648(gp)<br>       |
| 109|[0x80003580]<br>0xFFFFFFFFFFFEFFFA|- rs1_w0_val == -131073<br>                                                                                                                                                                                        |[0x800013a4]:RADDW t6, t5, t4<br> [0x800013a8]:sd t6, 656(gp)<br>       |
| 110|[0x80003588]<br>0xFFFFFFFFFFFFFF7F|- rs2_w0_val == -257<br>                                                                                                                                                                                           |[0x800013c0]:RADDW t6, t5, t4<br> [0x800013c4]:sd t6, 664(gp)<br>       |
| 111|[0x80003590]<br>0xFFFFFFFFFFFFC07F|- rs1_w0_val == -32769<br>                                                                                                                                                                                         |[0x800013ec]:RADDW t6, t5, t4<br> [0x800013f0]:sd t6, 672(gp)<br>       |
| 112|[0x80003598]<br>0x000000000FFFDFFF|- rs1_w0_val == -16385<br>                                                                                                                                                                                         |[0x80001414]:RADDW t6, t5, t4<br> [0x80001418]:sd t6, 680(gp)<br>       |
| 113|[0x800035a0]<br>0xFFFFFFFFFEFFFFEF|- rs2_w0_val == -33<br>                                                                                                                                                                                            |[0x80001434]:RADDW t6, t5, t4<br> [0x80001438]:sd t6, 688(gp)<br>       |
| 114|[0x800035a8]<br>0xFFFFFFFFFFFFF000|- rs1_w0_val == -8193<br>                                                                                                                                                                                          |[0x80001458]:RADDW t6, t5, t4<br> [0x8000145c]:sd t6, 696(gp)<br>       |
| 115|[0x800035b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == -3<br>                                                                                                                                                                                             |[0x8000147c]:RADDW t6, t5, t4<br> [0x80001480]:sd t6, 704(gp)<br>       |
| 116|[0x800035b8]<br>0xFFFFFFFFFFFF7FFE|- rs2_w0_val == -2<br>                                                                                                                                                                                             |[0x800014a4]:RADDW t6, t5, t4<br> [0x800014a8]:sd t6, 712(gp)<br>       |
| 117|[0x800035c0]<br>0x00000000000000BF|- rs1_w0_val == -129<br>                                                                                                                                                                                           |[0x800014cc]:RADDW t6, t5, t4<br> [0x800014d0]:sd t6, 720(gp)<br>       |
| 118|[0x800035c8]<br>0xFFFFFFFFFFFEFFDF|- rs1_w0_val == -65<br>                                                                                                                                                                                            |[0x800014fc]:RADDW t6, t5, t4<br> [0x80001500]:sd t6, 728(gp)<br>       |
| 119|[0x800035d0]<br>0x0000000007FFFF7F|- rs2_w0_val == 268435456<br>                                                                                                                                                                                      |[0x80001520]:RADDW t6, t5, t4<br> [0x80001524]:sd t6, 736(gp)<br>       |
| 120|[0x800035d8]<br>0x0000000002000040|- rs2_w0_val == 67108864<br>                                                                                                                                                                                       |[0x80001540]:RADDW t6, t5, t4<br> [0x80001544]:sd t6, 744(gp)<br>       |
| 121|[0x800035e0]<br>0xFFFFFFFFFFFFFFDE|- rs1_w0_val == -3<br>                                                                                                                                                                                             |[0x80001564]:RADDW t6, t5, t4<br> [0x80001568]:sd t6, 752(gp)<br>       |
| 122|[0x800035e8]<br>0x00000000005FFFFF|- rs2_w0_val == 16777216<br>                                                                                                                                                                                       |[0x80001588]:RADDW t6, t5, t4<br> [0x8000158c]:sd t6, 760(gp)<br>       |
| 123|[0x800035f0]<br>0x0000000000400000|- rs2_w0_val == 8388608<br>                                                                                                                                                                                        |[0x800015a8]:RADDW t6, t5, t4<br> [0x800015ac]:sd t6, 768(gp)<br>       |
| 124|[0x800035f8]<br>0x0000000020000002|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                     |[0x800015d0]:RADDW t6, t5, t4<br> [0x800015d4]:sd t6, 776(gp)<br>       |
| 125|[0x80003600]<br>0x0000000000240000|- rs2_w0_val == 4194304<br> - rs1_w0_val == 524288<br>                                                                                                                                                             |[0x800015f4]:RADDW t6, t5, t4<br> [0x800015f8]:sd t6, 784(gp)<br>       |
| 126|[0x80003608]<br>0x00000000000FFFFB|- rs2_w0_val == 2097152<br>                                                                                                                                                                                        |[0x80001618]:RADDW t6, t5, t4<br> [0x8000161c]:sd t6, 792(gp)<br>       |
| 127|[0x80003610]<br>0x0000000004200000|- rs1_w0_val == 134217728<br>                                                                                                                                                                                      |[0x80001638]:RADDW t6, t5, t4<br> [0x8000163c]:sd t6, 800(gp)<br>       |
| 128|[0x80003618]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 16777216<br>                                                                                                                                                                                       |[0x80001658]:RADDW t6, t5, t4<br> [0x8000165c]:sd t6, 808(gp)<br>       |
| 129|[0x80003620]<br>0x0000000010008000|- rs2_w0_val == 65536<br>                                                                                                                                                                                          |[0x80001678]:RADDW t6, t5, t4<br> [0x8000167c]:sd t6, 816(gp)<br>       |
| 130|[0x80003628]<br>0xFFFFFFFFFF003FFF|- rs2_w0_val == 32768<br>                                                                                                                                                                                          |[0x800016a4]:RADDW t6, t5, t4<br> [0x800016a8]:sd t6, 824(gp)<br>       |
| 131|[0x80003630]<br>0x00000000000017FF|- rs2_w0_val == 16384<br>                                                                                                                                                                                          |[0x800016cc]:RADDW t6, t5, t4<br> [0x800016d0]:sd t6, 832(gp)<br>       |
| 132|[0x80003638]<br>0xFFFFFFFFD5555755|- rs2_w0_val == 1024<br>                                                                                                                                                                                           |[0x800016f0]:RADDW t6, t5, t4<br> [0x800016f4]:sd t6, 840(gp)<br>       |
| 133|[0x80003640]<br>0x0000000000008003|- rs1_w0_val == 65536<br>                                                                                                                                                                                          |[0x80001710]:RADDW t6, t5, t4<br> [0x80001714]:sd t6, 848(gp)<br>       |
| 134|[0x80003648]<br>0x0000000000004000|- rs1_w0_val == 32768<br>                                                                                                                                                                                          |[0x80001738]:RADDW t6, t5, t4<br> [0x8000173c]:sd t6, 856(gp)<br>       |
| 135|[0x80003650]<br>0xFFFFFFFFBBFFFFFF|- rs1_w0_val == -2147483648<br>                                                                                                                                                                                    |[0x8000175c]:RADDW t6, t5, t4<br> [0x80001760]:sd t6, 864(gp)<br>       |
| 136|[0x80003658]<br>0x0000000010000020|- rs2_w1_val == -1431655766<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 64<br>                                                                                                                              |[0x80001788]:RADDW t6, t5, t4<br> [0x8000178c]:sd t6, 872(gp)<br>       |
